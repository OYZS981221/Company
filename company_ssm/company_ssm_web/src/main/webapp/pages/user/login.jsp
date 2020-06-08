<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>登录</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
<%--    <meta charset="UTF-8"/>--%>
    <meta name="keywords"
          content="Validate Login & Register Forms Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"/>

    <!-- Meta tag Keywords -->

    <!-- css files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style1.css" type="text/css" media="all"/>
    <!-- Style-CSS -->
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet">
    <!-- Font-Awesome-Icons-CSS -->
    <!-- //css files -->
    <!-- web-fonts -->
    <link href="//fonts.googleapis.com/css?family=Magra:400,700&amp;subset=latin-ext" rel="stylesheet">
    <!-- //web-fonts -->
</head>

<body>
<!-- title -->
<h1>企 业 档 案 中 心 系 统
</h1>
<!-- //title -->

<!-- content -->
<div class="container-agille">
    <div class="formBox level-login">
        <div class="box boxShaddow"></div>
        <!-- 用户登录窗口 -->
        <div class="box loginBox">
            <h3>登录</h3>
            <span id="msg"></span><br/>
            <form id="userForm" class="form" action="#" method="post">
                <div class="f_row-2">
                    <label>用户名</label>
                    <input type="text" id="UserNameL" class="input-field" placeholder="Username" name="userName"
                           required>
                </div>
                <div class="f_row-2 last">
                    <label>密码</label><span id="word"></span>
                    <input type="password" id="PassWordL" name="passWord" placeholder="Password" class="input-field"
                           required>
                </div>
                <input class="submit-w3" id="button" type="button" value="Login">
                <div class="f_link">
                    <a href="" class="resetTag">管理员登录?</a>
                </div>
            </form>
        </div>
        <!-- 管理员登录窗口 -->
        <div class="box forgetbox agile">
            <a href="#" class="back icon-back">
                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
                     y="0px"
                     viewBox="0 0 199.404 199.404" style="enable-background:new 0 0 199.404 199.404;"
                     xml:space="preserve">
						<polygon points="199.404,81.529 74.742,81.529 127.987,28.285 99.701,0 0,99.702 99.701,199.404 127.987,171.119 74.742,117.876
			  199.404,117.876 "/>
					</svg>
            </a>
            <h3>管理员登录</h3>
            <form id="AdminForm" class="form" action="#" method="post">
                <!-- <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p> -->
                <div class="f_row last">
                    <label>管理员账号</label>
                    <input type="name" id="AdminUserName" name="userName" placeholder="UserName" class="input-field"
                           required>
                    <u></u>
                </div>
                <br/>
                <div class="f_row last">
                    <label>管理员密码</label>
                    <input type="password" id="AdminPassWord" name="passWord" placeholder="passWord" class="input-field"
                           required>
                    <u></u>
                </div>
                <button id="button1" type="button" class="btn button submit-w3">
                    <span>登录</span>
                </button>
            </form>
        </div>
        <!-- 注册窗口 -->
        <div class="box registerBox wthree">
            <span class="reg_bg"></span>
            <h3>Register</h3>
            <form id="registerForm" class="form" action="#" method="post">
                <div class="f_row-2">
                    <label>用户名</label><span id="user"></span>
                    <input type="text" id="userName" class="input-field" placeholder="Username" name="name" required>
                </div>
                <div class="f_row-2 last">
                    <label>密码</label>
                    <input type="password" id="passWord" name="password" placeholder="Password" class="input-field"
                           required>
                </div>
                <div class="f_row-2 last">
                    <label>确认密码</label>
                    <input type="password" id="password2" name="password" placeholder="Confirm Password"
                           class="input-field" required>
                </div>
                <div class="f_row-2">
                    <label>性别</label>
                    <input type="sex" id="sex" class="input-field" placeholder="男  /  女" name="sex" required>
                </div>
                <div class="f_row-2">
                    <label>出生日期</label>
                    <input type="date" id="birth" class="input-field" placeholder="Birth" name="birth" required>
                </div>
                <div class="f_row-2">
                    <label>电话号码</label>
                    <input type="text" id="phoneNumber" class="input-field" placeholder="PhoneNumber" name="phonenumber"
                           required>
                </div>
                <div class="f_row-2">
                    <label>邮箱</label>
                    <input type="text" id="email" class="input-field" placeholder="E-mail" name="email" required>
                </div>
                <input class="submit-w3" type="submit" value="Register">
            </form>
        </div>
        <a href="#" class="regTag icon-add">
            <i class="fa fa-repeat" aria-hidden="true"></i>

        </a>
    </div>
</div>
<!-- //content -->

<!-- copyright -->
<%--<div class="footer-w3ls">--%>
<%--    <h2>&copy; 2018 Validate Login & Register Forms. All rights reserved | Design by--%>
<%--        <a href="http://w3layouts.com">W3layouts</a>--%>
<%--    </h2>--%>
<%--</div>--%>
<!-- //copyright -->


<!-- js files -->
<!-- Jquery -->
<script src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layer/2.4/layer.js"></script>
<!-- //Jquery -->
<!-- input fields js -->
<script src="${pageContext.request.contextPath}/js/input-field.js"></script>
<!-- //input fields js -->
<!-- password-script -->
<script>

    //校验两次输入密码是否相同
    $(function () {
        document.getElementById("passWord").onchange = validatePassword;
        document.getElementById("password2").onchange = validatePassword;
    });

    function validatePassword() {
        var pass2 = document.getElementById("password2").value;
        var pass1 = document.getElementById("passWord").value;
        if (pass1 != pass2)
            document.getElementById("password2").setCustomValidity("Passwords Don't Match");
        else
            document.getElementById("password2").setCustomValidity('');
        //empty string means no validation error
    }

    /*
                    表单校验（注册操作）：
                        1.用户名：单词字符，长度4到10位
                        2.密码：单词字符，长度8到20位
                        3.email：邮件格式
                        4.sex: 男/女
                        5.手机号：手机号格式
                        6.出生日期：非空
                 */
    //校验用户名
    //单词字符，长度4到10位
    // 校验用户名是否存在
    function checkExitUsername() {
        $.ajax({
            url: "${pageContext.request.contextPath}/User/test.do",
            type: "POST",
            dataType: "json",
            contentType: "application/json;charset=UTF-8",
            <!-- 向后端传输的数据 -->
            data: JSON.stringify({
                userName: $("#userName").val()

            }),
            success: function (result) {
                $("#userName").css("border", "1px solid red");
                $("#user").html("用户名已被注册!");
                $("#user").css("color","red");
                flag = false;
                return flag;

            },
            error: function (result) {
                var message = result.userName;
                var name = eval("(" + message + ")");
                $("#user").html("");
                flag = true;
                return flag;
            }
        });
        return flag;
    }
    //校验用户名长度
    function checkUsername() {
        //1.获取用户名值
        var username = $("#userName").val();
        //2.定义正则
        var reg_username = /^\w{4,10}$/;

        //3.判断，给出提示信息
        var flag = reg_username.test(username);
        if (flag) {
            //用户名合法
            $("#userName").css("border", "");
        } else {
            //用户名非法,加一个红色边框
            $("#userName").css("border", "1px solid red");
        }
        return flag;
    }
    //校验密码
    function checkPassword() {
        //1.获取密码值
        var password = $("#passWord").val();
        //2.定义正则
        var reg_password = /^\w{8,20}$/;
        //3.判断，给出提示信息
        var flag = reg_password.test(password);
        if (flag) {
            //密码合法
            $("#passWord").css("border", "");
        } else {
            //密码非法,加一个红色边框
            $("#passWord").css("border", "1px solid red");
        }

        return flag;
    }
    //校验邮箱
    function checkEmail() {
        //1.获取邮箱
        var email = $("#email").val();
        //2.定义正则		itcast@163.com
        var reg_email = /^\w+@\w+\.\w+$/;

        //3.判断
        var flag = reg_email.test(email);
        if (flag) {
            $("#email").css("border", "");
        } else {
            $("#email").css("border", "1px solid red");
        }
        return flag;
    }
    //校验电话号码
    function checkPhone() {
        //1.获取电话号码
        var phone = $("#phoneNumber").val();
        //2.定义正则		itcast@163.com
        var reg_phone = /^1[3456789]\d{9}$/;
        //3.判断
        var flag = reg_phone.test(phone);
        if (flag) {
            $("#phoneNumber").css("border", "");
        } else {
            $("#phoneNumber").css("border", "1px solid red");
        }
        return flag;
    }
    //校验性别
    function checkSex() {
        //1.获取性别
        var sex = $("#sex").val();
        //2.定义正则		itcast@163.com
        var reg_sex = /^['男'|'女']$/;
        //3.判断
        var flag = reg_sex.test(sex);
        if (flag) {
            $("#sex").css("border", "");
        } else {
            $("#sex").css("border", "1px solid red");
        }
        return flag;
    }

    $("#userName").blur(checkUsername);
    $("#userName").blur(checkExitUsername);
    $("#passWord").blur(checkPassword);
    $("#email").blur(checkEmail);
    $("#phoneNumber").blur(checkPhone);
    $("#sex").blur(checkSex);

    /*
                   表单校验（用户登录操作）：
                       1.用户名：非空
                       2.密码：非空
     */
    // 校验用户名是否为空
    function checkuser(){
        var username = $("#UserNameL").val();
        var flag;
        if (username == ""){
            flag = false;
        }else{
            flag = true;
        }
        return flag;
    }
    // 校验密码是否为空
    function checkword(){
        var password = $("#PassWordL").val();
        var flag;
        if (password == ""){
            flag = false;
        }else{
            flag = true;
        }
        return flag;
    }
    $("#button").click(checkuser,checkword);

    /*
                   表单校验（管理员登录操作）：
                       1.用户名：非空
                       2.密码：非空
     */
    // 校验管理员用户名是否为空
    function checkAuser(){
        var username = $("#AdminUserName").val();
        var flag;
        if (username == ""){
            flag = false;
        }else{
            flag = true;
        }
        return flag;
    }
    // 校验密码是否为空
    function checkAword(){
        var password = $("#AdminPassWord").val();
        var flag;
        if (password == ""){
            flag = false;
        }else{
            flag = true;
        }
        return flag;
    }
    $("#button1").click(checkAuser,checkAword);

    //用户登录
    $("#button").click(function () {
        if (checkuser() && checkword()){
        $.ajax({
            url: "${pageContext.request.contextPath}/User/login.do",
            type: "POST",
            dataType: "json",
            contentType: "application/json;charset=UTF-8",
            <!-- 向后端传输的数据 -->
            data: JSON.stringify({
                userName: $("#UserNameL").val(),
                passWord: $("#PassWordL").val()
            }),
            success: function (result) {
                var name = result.userName;
                var id = result.id;
                layer.msg("登录成功，欢迎回来："+name,{icon:1,time:1000},function(){
                    location.href = "${pageContext.request.contextPath}/Company/index.do";
                });
            },
            error: function (result) {
                layer.msg("登录失败，请检查用户名或密码是否正确！",{icon:1,time:1000});
            }
        });
        } else {
            layer.msg("请完善登录信息！",{icon:1,time:1000});
        }
        return false;
    });
    //管理员登录
        $("#button1").click(function () {
            if (checkAuser() && checkAword()){
            $.ajax({
                url: "${pageContext.request.contextPath}/Admin/login.do",
                type: "POST",
                dataType: "json",
                contentType: "application/json;charset=UTF-8",
                <!-- 向后端传输的数据 -->
                data: JSON.stringify({
                    userName: $("#AdminUserName").val(),
                    passWord: $("#AdminPassWord").val()
                }),
                success: function (result) {
                    var name = result.userName;
                    layer.msg("登录成功，欢迎回来："+name,{icon:1,time:1000},function(){
                        location.href = "${pageContext.request.contextPath}/Admin/adminJsp.do";
                    });
                },
                error: function (result) {
                    layer.msg("登录失败，请检查用户名或密码是否正确！",{icon:1,time:1000});
                }
            });
            } else {
                alert("请完善登录信息!");
            }
            return false;
        });
    //用户注册
    // $(function () {
    //当表单提交时，调用所有的校验方法
    $("#registerForm").submit(function () {
        //1.发送数据到服务器
        if (checkUsername() && checkExitUsername() && checkPassword() && checkSex() && checkEmail() && checkPhone()) {
            //校验通过,发送ajax请求，提交表单的数据   username=zhangsan&password=123
            $.ajax({
                url: "${pageContext.request.contextPath}/User/regist.do",
                type: "POST",
                dataType: "json",
                contentType: "application/json;charset=UTF-8",
                <!-- 向后端传输的数据 -->
                data: JSON.stringify({
                    userName: $("#userName").val(),
                    passWord: $("#passWord").val(),
                    sex: $("#sex").val(),
                    birth: $("#birth").val(),
                    phoneNumber: $("#phoneNumber").val(),
                    email: $("#email").val()
                }),
                success: function (result) {
                    <!-- 处理后端返回的数据 -->
                    //将json转换为字符串
                    // var message = JSON.stringify(result);
                    //将字符串转换为json
                    // var name = eval("("+message+")");

                    if (result>=1){
                        layer.msg("注册成功!",{icon:1,time:1000},function(){
                            window.location.reload();
                        });

                }else {
                        layer.msg("注册失败，请检查注册信息是否正确！",{icon:2,time:1000});
                    }
                }

            });

        } else {
            layer.msg("请正确填写注册信息！",{icon:2,time:1000});
        }
        //2.不让页面跳转
        return false;
        //如果这个方法没有返回值，或者返回为true，则表单提交，如果返回为false，则表单不提交
    });
    //});




</script>
<!-- //password-script -->
<!-- //js files -->


</body>

</html>