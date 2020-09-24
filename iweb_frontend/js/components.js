/* 响应式导航条：点击汉堡包按钮时导航菜单从左侧进入：点击关闭按钮时导航菜单隐藏到左侧 */
//根据属性选择器查找一个元素
document.querySelector('[data-toggle="nav"]').onclick=function(){
	// alert(123)
	// 将导航条从左侧移出来--给navbar添加active类
	document.querySelector('[data-target="nav"]').classList.add('active')
}
document.querySelector('[data-close="nav"]').onclick=function(){
	document.querySelector('[data-target="nav"]').classList.remove('active')
}

// 2轮播广告
let currentCarousel=0   //当前正在显示哪个广告
let totalCarousel=4    //轮播广告的总数
// 点击"下一张"按钮，自动切换到广告的下一张
setInterval(document.querySelector('[data-carousel="next"]').onclick=function(){
	currentCarousel++
	if(currentCarousel>=totalCarousel){
		currentCarousel=0   //如果已经切换到最后一张之后，必须重回到0
	}
	//显示新的轮播广告项：
	  //首先隐藏当前显示的广告项——li删除active类
	  document.querySelector('.carousel>.items>li.active').classList.remove('active')
	  //然后再让目标广告项显示出来——li添加active类
	  let list = document.querySelectorAll('.carousel>.items>li')
	  list[currentCarousel].classList.add('active')
	  
	  document.querySelector('.carousel>.indicators>li.active').classList.remove('active')
	  list = document.querySelectorAll('.carousel>.indicators>li')
	  list[currentCarousel].classList.add('active')
	  
	  
},3000)
document.querySelector('[data-carousel="prev"]').onclick=function(){
	currentCarousel--
	if(currentCarousel<0){
		currentCarousel=totalCarousel-1   //如果已经切换到最后一张之后，必须重回到0
	}
	//显示新的轮播广告项：
	  //首先隐藏当前显示的广告项——li删除active类
	  document.querySelector('.carousel>.items>li.active').classList.remove('active')
	  //然后再让目标广告项显示出来——li添加active类
	  let list = document.querySelectorAll('.carousel>.items>li')
	  list[currentCarousel].classList.add('active')
	  
	  document.querySelector('.carousel>.indicators>li.active').classList.remove('active')
	  list = document.querySelectorAll('.carousel>.indicators>li')
	  list[currentCarousel].classList.add('active')
	  
}
