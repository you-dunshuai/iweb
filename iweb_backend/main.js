/* iweb项目的后台动态web服务器
功能：
	接受客户端提交的HTTP请求(requerst/req);
	读取请求中客户端提交来的数据；
	向数据库服务器提交SQL命令以操作底层数据；
	最后向客户端发送HTTP响应（response/res），说明执行成功还是失败
*/


//引入第三方提供的express模块
const express = require('express')

//使用第三方模块创建一个Web服务器，类似与ISS、Tomcat
let app = express()

//让Web服务器监听在8080端口上，及启动Web服务器
let port=5050		//提示：此处在为新浪云服务器做铺垫

app.listen(port,()=>{
	console.log('Server Listening on Port:',port)
})

/*
//让Web服务器可以接受一个特定的请求，并回复该请求
app.get('/index',(req,res)=>{
	res.send('Welcome to my Site Index!')
})
//让Web服务器可以接受一个特定的请求，并回复该请求
app.get('/login',(req,res)=>{
	res.send('Welcome to my Site Login!')
})
*/
/**
	API1.1:向客户端输出"排名前12位的最新课程"
	请求方法：GET
	请求地址：/course/newest
	请求参数：无
	响应数据：
	[
		{
			cid: 3,
			cname: '微信小程序开发',
			pic: 'img/course/03.jpg',
			tname:'程涛',
			tid: 5,
			price:599
		},
		{
			......
		},
		{
			......
		}
	]
	创建数据库连接池，其中包含10个连接，用于连接到数据库
*/
//导入第三方模块mysql
const mysql = require('mysql')
//使用第三方模块mysql创建数据库连接池
let pool = mysql.createPool({
	host:  '127.0.0.1',		//数据库服务器的地址
	port: '3306',		    //数据库服务器的端口号
	user: 'root',		    //数据库管理员的用户名
	password: '',		    //管理员登录密码
	database: 'iweb',		//数据库名称
	connectionLimit: 10,	//池中连接的最大数量
})

app.get('/course/newest', (req,res)=>{
	//向数据库服务器发送查询请求，获取必需的课程数据:前12条(即从第0行开始读取12行);且最新课程(及课程编号由大到小排序);同时还有跨表查询(同时查询课程表course和teacher两个表)
	let sql = 'SELECT  cid,cname,iweb_course.pic,price,tname,tid FROM iweb_course,iweb_teacher WHERE iweb_course.teacher_id=iweb_teacher.tid ORDER BY cid DESC LIMIT 0,12'
	pool.query(sql, (err,result)=>{
		if(err){		//数据局操作执行错误
			console.log('数据库查询成功！')
			throw err
		}
		//数据库操作执行完成，查询结果保存在result中
		console.log('数据库查询成功！')
		// console.log(result)
		
		//将数据库返回的课程输出发送给客户端
		res.send(result)
	})
	
	
})

//API1.2:  获取热门课程前12个   GET  /course/hottest

app.get('/course/hottest', (req,res)=>{
	//向数据库服务器发送查询请求，获取必需的课程数据:前12条(即从第0行开始读取12行);且最新课程(及课程编号由大到小排序);同时还有跨表查询(同时查询课程表course和teacher两个表)
	let sql = 'SELECT  cid,cname,iweb_course.pic,price,tname,tid FROM iweb_course, iweb_teacher WHERE iweb_course.teacher_id=iweb_teacher.tid, iweb_school_course.course_id=iweb_course.cid ORDER BY COUNT(iweb__school_course.course_id) DESC LIMIT 0,12'
	pool.query(sql, (err,result)=>{
		if(err){		//数据局操作执行错误
			console.log('数据库查询成功！')
			throw err
		}
		//数据库操作执行完成，查询结果保存在result中
		console.log('数据库查询成功！')
		// console.log(result)
		
		//将数据库返回的课程输出发送给客户端
		res.send(result)
	})
	
	
})

//API3.1:  获取讲师列表中的前5个   GET  /teacher/list
app.get('/teacher/list', (req,res)=>{
	//向数据库服务器发送查询请求，获取必需的课程数据:前12条(即从第0行开始读取12行);且最新课程(及课程编号由大到小排序);同时还有跨表查询(同时查询课程表course和teacher两个表)
	let sql = 'SELECT  iweb_teacher.pic,tname,cname FROM iweb_teacher,iweb_course WHERE iweb_teacher.tid=iweb_course.teacher_id LIMIT 0,5'
	pool.query(sql, (err,result)=>{
		if(err){		//数据局操作执行错误
			console.log('数据库查询成功！')
			throw err
		}
		//数据库操作执行完成，查询结果保存在result中
		console.log('数据库查询成功！')
		// console.log(result)
		
		//将数据库返回的课程输出发送给客户端
		res.send(result)
	})
	
	
})

//API2.1:  获取校区列表中的前5个   GET  /school/list
app.get('/school/list', (req,res)=>{
	//向数据库服务器发送查询请求，获取必需的课程数据:前12条(即从第0行开始读取12行);且最新课程(及课程编号由大到小排序);同时还有跨表查询(同时查询课程表course和teacher两个表)
	let sql = 'SELECT  sid,sname,pic,address,phone,postcode,longitude,latitude FROM iweb_school LIMIT 0,5'
	pool.query(sql, (err,result)=>{
		if(err){		//数据局操作执行错误
			console.log('数据库查询成功！')
			throw err
		}
		//数据库操作执行完成，查询结果保存在result中
		console.log('数据库查询成功！')
		// console.log(result)
		
		//将数据库返回的课程输出发送给客户端
		res.send(result)
	})
	
	
})