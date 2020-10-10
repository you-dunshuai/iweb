/*iWeb在线课堂项目必须的数据结构*/
/*SQL语句不区分大小写，习惯上：关键字都大写，非关键字都小写*/

#删除数据库iweb，如果它存在的话
DROP DATABASE IF EXISTS iweb;
#重新创建数据库iweb
CREATE DATABASE iweb CHARSET=UTF8;
#进入数据库iweb
USE iweb;


#创建校区表
CREATE TABLE iweb_school(
         sid INT PRIMARY KEY AUTO_INCREMENT, #校区编号
		 sname VARCHAR(32),  #名称
		 pic VARCHAR(128),  #图片
		 address VARCHAR(64), #地址
		 phone VARCHAR(32),  #电话
		 postcode CHAR(6), #邮编
		 longitude DECIMAL(9,6), #经度
		 latitude DECIMAL(8,6)  #纬度
		 )
		 
		 INSERT INTO iweb_school VALUES
		 (NULL, '北京中关村中心','img/school/bjzgc.jpg','北京市海淀区北三环西路甲18号（大钟寺附近）中鼎大厦B座7层','010-62130963','100098',116.347518,39.972519);
		 INSERT INTO iweb_school VALUES
		 (NULL, '北京天坛中心','img/school/bjtt.jpg','北京市崇文区珠市口东大街6号珍贝大厦西侧3层达内科技','010-67028668','100050',116.417541,39.898668);
		 INSERT INTO iweb_school VALUES
		 (NULL, '北京广渠门中心','img/school/bjgqm.jpg','北京市东城区广渠门东广渠家园25号楼启达大厦一层','15321130620','100010',116.457035,39.897665);
		 INSERT INTO iweb_school VALUES
		 (NULL, '北京清华园中心','img/school/bjqhy.jpg','北京市海淀区花园路小关街120号万盛商务会馆A区三层','010-82761288','100081',116.300873,39.915905);
		 INSERT INTO iweb_school VALUES
		 (NULL, '北京万寿路中心','img/school/bjwsl.jpg','北京市海淀区万寿路西街2号文博大厦二层达内科技','15321130620','100010',116.457035,39.897665);
		 INSERT INTO iweb_school VALUES
		 (NULL, '睢宁红叶南洋中心','img/school/snhyny.jpg','江苏省徐州市睢宁县睢城镇红叶南路南洋小区','15321137589','221200',117.951491,33.904101);
		 INSERT INTO iweb_school VALUES
		 (NULL, '徐州万达广场(云龙店)','img/school/bjgqm.jpg','徐州市云龙区和平大道58号','15321145620','221183',117.252729,34.259712);
		 INSERT INTO iweb_school VALUES
		 (NULL, '徐州市新城区市民广场','img/school/bjgqm.jpg','徐州市昆仑大道1号','15321130620','100010',117.290627,34.208807);
		 INSERT INTO iweb_school VALUES
		 (NULL, '徐州东站东广场','img/school/bjgqm.jpg','江苏省徐州市鼓楼区中央大道徐州东站东侧','15321130620','100010',117.315287,34.274278);
		 INSERT INTO iweb_school VALUES
		 
		 (NULL, '徐州颐和汇邻湾广场','img/school/bjzgc.jpg','徐州市泉山区三环南路39号','010-62130963','100098',117.188948,34.217805);
		 INSERT INTO iweb_school VALUES
		 (NULL, '无锡百联奥特莱斯广场','img/school/bjtt.jpg','江苏省无锡市新吴区锡勤路18号','010-67028668','100050',120.452422,31.526774);
		 INSERT INTO iweb_school VALUES
		 (NULL, '无锡八佰伴生活广场(中山路店)','img/school/bjgqm.jpg','江苏省无锡市中山路168号','15321130620','100010',120.309128,31.577797);
		 INSERT INTO iweb_school VALUES
		 (NULL, '无锡光华时代广场','img/school/bjqhy.jpg','江苏省无锡市梁溪区人民东路335号','010-82761288','100081',120.326663,31.591056);
		 INSERT INTO iweb_school VALUES
		 (NULL, '新百业广场(文化西路店)','img/school/bjwsl.jpg','江苏省无锡市江阴市文化西路4号','15321130620','100010',120.275364,31.920019);
		 INSERT INTO iweb_school VALUES
		 (NULL, '卡巴莱广场','img/school/snhyny.jpg','江苏省无锡市滨湖区博大摩登1930街区','15321137589','221200',120.281473,31.49904);
		 INSERT INTO iweb_school VALUES
		 (NULL, '杨墅园广场','img/school/bjgqm.jpg','江苏省无锡市惠山区杨市园大街106号','15321145620','221183',120.145051,31.633489);
		 INSERT INTO iweb_school VALUES
		 (NULL, '苏宁广场','img/school/bjgqm.jpg','南京市鼓楼区江东北路88号','83203188','100010',118.747624,32.050254);
		 INSERT INTO iweb_school VALUES
		 (NULL, '先锋广场','img/school/bjgqm.jpg','江苏省南京市鼓楼区中央路417号','15321130620','100010',118.789609,32.093884);
		 
		 INSERT INTO iweb_school VALUES
		 (NULL, '君临国际广场','img/school/snhyny.jpg','江苏省南京市鼓楼区广州路5号','15321137589','221200',118.788857,32.055886);
		 INSERT INTO iweb_school VALUES
		 (NULL, '金轮国际广场','img/school/bjgqm.jpg','南京市鼓楼区汉中路8号','15321145620','221183',118.786523,32.04906);
		 INSERT INTO iweb_school VALUES
		 (NULL, '世纪广场','img/school/bjgqm.jpg','江苏省南京市雨花台区明匙路','83206583188','100010',118.801541,32.00113);
		 INSERT INTO iweb_school VALUES
		 (NULL, '尧新广场','img/school/bjgqm.jpg','江苏省南京市江宁区东山镇金箔路999号','15321867620','100010',118.842973,31.956311);
#创建讲师表
CREATE TABLE iweb_teacher(
	tid INT PRIMARY KEY AUTO_INCREMENT,          #讲师编号
	tname VARCHAR(64),        #姓名
	pic VARCHAR(128),          #照片
	skills VARCHAR(32),       #擅长领域
	experience VARCHAR(1024),   #工作经历
	style VARCHAR(1024)        #授课风格
);

INSERT INTO iweb_teacher VALUES(NULL,'成亮','img/teacher/cl.jpg','WEB全栈开发','10年互联网开发经验， 精通HTML5，CSS3，js，vue，angualr 等网页前端技术及 php后端 开发；先后就职于多家 IT 互联网公司，曾任某网络公司技术主管，服务机构有首都师范大学、中国联通、中国石油、国家图书馆、中国摄影协会等。','
讲课诙谐幽默，深处浅出，深得学生喜爱。')
INSERT INTO iweb_teacher VALUES(NULL,'李然','img/teacher/lr.jpg','高级网页设计','从事前端开发多年，参与 及主导研发过多个省级政府项目及海 外项目，参与 NEC，福特等大型企业 CRM 系统的研发。项目涉及金融，汽 车，电子等多个领域。于文思海辉专 职负责前端产品线培训时，积累了大 量的教学经验。','
教学风格风趣幽默，细致严谨。善于以项目流程反推知识点讲解，深受学员好评。')
INSERT INTO iweb_teacher VALUES(NULL,'张东','img/teacher/zd.jpg','JS高级编程','美国PMP认证高级项目经理，微软认证解决方案开发专家。先后在中软国际、中国搜索、太极计算机担任高级开发工程师，架构师，项目经理。曾担任中央外汇管理中心、中国石油、二炮工程研究院、首都国际机场技术咨询顾问。','
一切从实际项目出发，快速入门，学以致用。讲课极富激情，语言表达精准，有感染力。案例丰富、直观，步骤细致，清晰。注重从学习到实际工作的快速转化。')
INSERT INTO iweb_teacher VALUES(NULL,'程涛','img/teacher/ct.jpg','移动APP开发','曾就职于北京塞博维尔信息咨询公司，具备多年的互联网应用经验，精通PHP框架技术。在Web3.0前沿技术方面有着深入的研究，曾参与Shop EX核心模块开发。','
感情充沛，富有激情，容易引起学生们的共鸣。授课时能旁征博引，使学生从诸多的材料中得出结论，并且启迪学生的想象能力。')
INSERT INTO iweb_teacher VALUES(NULL,'纪盈鑫','img/teacher/lr.jpg','前端框架开发','曾就职于东软集团。参与开发家乐福，津津会员卡等多款上线app。拥有外包和产品两种开发经历。已指导并帮助学员上架多个项目到AppStore。授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。','
授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。')

INSERT INTO iweb_teacher VALUES(NULL,'常雪亮','img/teacher/cl.jpg','WEB全栈开发','10年互联网开发经验， 精通HTML5，CSS3，js，vue，angualr 等网页前端技术及 php后端 开发；先后就职于多家 IT 互联网公司，曾任某网络公司技术主管，服务机构有首都师范大学、中国联通、中国石油、国家图书馆、中国摄影协会等。','
讲课诙谐幽默，深处浅出，深得学生喜爱。')
INSERT INTO iweb_teacher VALUES(NULL,'谢伟','img/teacher/lr.jpg','高级网页设计','从事前端开发多年，参与 及主导研发过多个省级政府项目及海 外项目，参与 NEC，福特等大型企业 CRM 系统的研发。项目涉及金融，汽 车，电子等多个领域。于文思海辉专 职负责前端产品线培训时，积累了大 量的教学经验。','
教学风格风趣幽默，细致严谨。善于以项目流程反推知识点讲解，深受学员好评。')
INSERT INTO iweb_teacher VALUES(NULL,'庄明科','img/teacher/zd.jpg','JS高级编程','美国PMP认证高级项目经理，微软认证解决方案开发专家。先后在中软国际、中国搜索、太极计算机担任高级开发工程师，架构师，项目经理。曾担任中央外汇管理中心、中国石油、二炮工程研究院、首都国际机场技术咨询顾问。','
一切从实际项目出发，快速入门，学以致用。讲课极富激情，语言表达精准，有感染力。案例丰富、直观，步骤细致，清晰。注重从学习到实际工作的快速转化。')
INSERT INTO iweb_teacher VALUES(NULL,'程冠琦','img/teacher/ct.jpg','移动APP开发','曾就职于北京塞博维尔信息咨询公司，具备多年的互联网应用经验，精通PHP框架技术。在Web3.0前沿技术方面有着深入的研究，曾参与Shop EX核心模块开发。','
感情充沛，富有激情，容易引起学生们的共鸣。授课时能旁征博引，使学生从诸多的材料中得出结论，并且启迪学生的想象能力。')
INSERT INTO iweb_teacher VALUES(NULL,'张成年','img/teacher/lr.jpg','前端框架开发','曾就职于东软集团。参与开发家乐福，津津会员卡等多款上线app。拥有外包和产品两种开发经历。已指导并帮助学员上架多个项目到AppStore。授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。','
授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。')
INSERT INTO iweb_teacher VALUES(NULL,'侯玉','img/teacher/cl.jpg','WEB全栈开发','10年互联网开发经验， 精通HTML5，CSS3，js，vue，angualr 等网页前端技术及 php后端 开发；先后就职于多家 IT 互联网公司，曾任某网络公司技术主管，服务机构有首都师范大学、中国联通、中国石油、国家图书馆、中国摄影协会等。','
讲课诙谐幽默，深处浅出，深得学生喜爱。')
INSERT INTO iweb_teacher VALUES(NULL,'童海峰','img/teacher/lr.jpg','高级网页设计','从事前端开发多年，参与 及主导研发过多个省级政府项目及海 外项目，参与 NEC，福特等大型企业 CRM 系统的研发。项目涉及金融，汽 车，电子等多个领域。于文思海辉专 职负责前端产品线培训时，积累了大 量的教学经验。','
教学风格风趣幽默，细致严谨。善于以项目流程反推知识点讲解，深受学员好评。')
INSERT INTO iweb_teacher VALUES(NULL,'赵晓峰','img/teacher/zd.jpg','JS高级编程','美国PMP认证高级项目经理，微软认证解决方案开发专家。先后在中软国际、中国搜索、太极计算机担任高级开发工程师，架构师，项目经理。曾担任中央外汇管理中心、中国石油、二炮工程研究院、首都国际机场技术咨询顾问。','
一切从实际项目出发，快速入门，学以致用。讲课极富激情，语言表达精准，有感染力。案例丰富、直观，步骤细致，清晰。注重从学习到实际工作的快速转化。')
INSERT INTO iweb_teacher VALUES(NULL,'杜海涛','img/teacher/ct.jpg','移动APP开发','曾就职于北京塞博维尔信息咨询公司，具备多年的互联网应用经验，精通PHP框架技术。在Web3.0前沿技术方面有着深入的研究，曾参与Shop EX核心模块开发。','
感情充沛，富有激情，容易引起学生们的共鸣。授课时能旁征博引，使学生从诸多的材料中得出结论，并且启迪学生的想象能力。')
INSERT INTO iweb_teacher VALUES(NULL,'潘珩','img/teacher/lr.jpg','前端框架开发','曾就职于东软集团。参与开发家乐福，津津会员卡等多款上线app。拥有外包和产品两种开发经历。已指导并帮助学员上架多个项目到AppStore。授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。','
授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。')
INSERT INTO iweb_teacher VALUES(NULL,'鹿璐','img/teacher/cl.jpg','WEB全栈开发','10年互联网开发经验， 精通HTML5，CSS3，js，vue，angualr 等网页前端技术及 php后端 开发；先后就职于多家 IT 互联网公司，曾任某网络公司技术主管，服务机构有首都师范大学、中国联通、中国石油、国家图书馆、中国摄影协会等。','
讲课诙谐幽默，深处浅出，深得学生喜爱。')
INSERT INTO iweb_teacher VALUES(NULL,'陈厚桥','img/teacher/lr.jpg','高级网页设计','从事前端开发多年，参与 及主导研发过多个省级政府项目及海 外项目，参与 NEC，福特等大型企业 CRM 系统的研发。项目涉及金融，汽 车，电子等多个领域。于文思海辉专 职负责前端产品线培训时，积累了大 量的教学经验。','
教学风格风趣幽默，细致严谨。善于以项目流程反推知识点讲解，深受学员好评。')
INSERT INTO iweb_teacher VALUES(NULL,'过馨露','img/teacher/zd.jpg','JS高级编程','美国PMP认证高级项目经理，微软认证解决方案开发专家。先后在中软国际、中国搜索、太极计算机担任高级开发工程师，架构师，项目经理。曾担任中央外汇管理中心、中国石油、二炮工程研究院、首都国际机场技术咨询顾问。','
一切从实际项目出发，快速入门，学以致用。讲课极富激情，语言表达精准，有感染力。案例丰富、直观，步骤细致，清晰。注重从学习到实际工作的快速转化。')
INSERT INTO iweb_teacher VALUES(NULL,'钱春英','img/teacher/ct.jpg','移动APP开发','曾就职于北京塞博维尔信息咨询公司，具备多年的互联网应用经验，精通PHP框架技术。在Web3.0前沿技术方面有着深入的研究，曾参与Shop EX核心模块开发。','
感情充沛，富有激情，容易引起学生们的共鸣。授课时能旁征博引，使学生从诸多的材料中得出结论，并且启迪学生的想象能力。')
INSERT INTO iweb_teacher VALUES(NULL,'丁明','img/teacher/lr.jpg','前端框架开发','曾就职于东软集团。参与开发家乐福，津津会员卡等多款上线app。拥有外包和产品两种开发经历。已指导并帮助学员上架多个项目到AppStore。授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。','
授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。')
#创建课程类别表

#创建课程表

#创建用户信息表

#创建购物车表

#创建订单表

#创建用户收藏夹表

#创建。。。

