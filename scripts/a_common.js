window.onload = function(){
        nav();
       

};
/*滑动的导航栏菜单*/
function nav(){
    var oNav = document.getElementById('nav');
    var oLi = oNav.getElementsByTagName('li');
    var oCur = oLi[oLi.length-1];
    var i = 0;

    for(i=0;i<oLi.length-1;i++){
        oLi[i].onmouseover = function(){
            startMove(oCur,this.offsetLeft);
        };
        oLi[i].onmouseout = function(){
            startMove(oCur,0);
        };
    }
    var iSpeed = 0;
    var left = 0;
    function startMove(obj,iTarget){
        clearInterval(obj.timer);
        obj.timer = setInterval(function(){
            iSpeed = (iTarget - obj.offsetLeft)/5;
            iSpeed *= 0.5;
            left += iSpeed;

            if(Math.abs(iSpeed)<1 && Math.abs(left-iTarget)<1){
                clearInterval(obj.timer);
                obj.style.left = iTarget + 'px';
            } else
            {
                obj.style.left = left + 'px';
            }
        },30);
    }
}

/*弹出层*/       
function openNew(){
    //获取页面的高度和宽度
    var sWidth=document.body.scrollWidth;
    var sHeight=document.body.scrollHeight;
    
    //获取页面的可视区域高度和宽度
    var wHeight=document.documentElement.clientHeight;
    
    var oMask=document.createElement("div");
        oMask.id="mask";
        oMask.style.height=sHeight+"px";
        oMask.style.width=sWidth+"px";
        document.body.appendChild(oMask);
    /*var oLogin=document.createElement("div");
        oLogin.id="login";
        oLogin.innerHTML="<div class='loginCon'><div id='close'>点击关闭</div><form method='post' action=''><label>用户名:</label><input type='text' id='username' class='username' required /><br/><label>&nbsp;密码:</label><input type='password' id='password' class='password' required /><br/><button type='submit' id='submit' class='submit' onclick='fun()'>登录</button><button type='reset' id='reset' class='reset'>重置</button></form></div>";
        document.body.appendChild(oLogin);*/
    var oLogin = document.getElementById('login');
        oLogin.style.display = "block";

    //获取登陆框的宽和高
    var dHeight=oLogin.offsetHeight;
    var dWidth=oLogin.offsetWidth;
        //设置登陆框的left和top
        oLogin.style.left=sWidth/2-dWidth/2+"px";
        oLogin.style.top=wHeight/2-dHeight/2+"px";
    //点击关闭按钮
    var oClose=document.getElementById("close");
    
        //点击登陆框以外的区域也可以关闭登陆框
        oClose.onclick=oMask.onclick=function(){
                    /*document.body.removeChild(oLogin);
                    document.body.removeChild(oMask);*/
                    oMask.style.display = "none";
                    oLogin.style.display = "none";
                    };
};

$(function(){
    $('#navbar-user').click(function(){
        $('#avatar').css('display','block');
    });
    $('#content').click(function(){
        $('#avatar').css('display','none');
     });
});