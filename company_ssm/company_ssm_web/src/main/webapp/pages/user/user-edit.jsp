<!--_meta 作为公共模版分离出去-->
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <!--[if lt IE 9]>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/html5shiv.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui.admin/css/style.css" />
    <![endif]-->
    <!--/meta 作为公共模版分离出去-->
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>
    <script>
        $(function(){
            var sex = "${user.sex}";
            if (sex == "男"){
                $("#sex-1").prop("checked",true);
            }else {
                $("#sex-2").prop("checked",true);
            }
        });
    </script>
    <title>编辑用户</title>
</head>
<body>
<br>
<h2 style="text-align: center">个人基本信息</h2>
<article class="page-container">
    <form:form action="#" method="post" modelAttribute="user" class="form form-horizontal" id="form-member-add">
        <form:hidden path="id" id="ID"/>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户名：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <form:input type="text" class="input-text" cssStyle="width: 50%" path="userName" placeholder="1" id="username" name="username"/>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>密码：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <form:input type="text" class="input-text" cssStyle="width: 50%" path="passWord" placeholder="" id="password" name="password"/>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>性别：</label>
            <div class="formControls col-xs-8 col-sm-9 skin-minimal">
                <div class="radio-box">
                    <input name="sex" type="radio" id="sex-1" value="男"/>
                    <label for="sex-1">男</label>
                </div>
                <div class="radio-box">
                    <input name="sex" type="radio"  id="sex-2" value="女"/>
                    <label for="sex-2">女</label>
                </div>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>出生日期：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <form:input type="date" class="input-text" cssStyle="width: 50%" path="birth" placeholder="" id="birth" name="birth"/>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>手机：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <form:input type="text" class="input-text" cssStyle="width: 50%" path="phoneNumber" placeholder="" id="phoneNumber" name="mobile"/>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>邮箱：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <form:input type="text" class="input-text" cssStyle="width: 50%" path="email" placeholder="@" name="email" id="email"/>
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                <input id="submit" class="btn btn-primary radius" type="button" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
            </div>
        </div>
    </form:form>
</article>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript">
    $(function(){
        $('.skin-minimal input').iCheck({
            checkboxClass: 'icheckbox-blue',
            radioClass: 'iradio-blue',
            increaseArea: '20%'
        });

        $("#form-member-add").validate({
            rules:{
                username:{
                    required:true,
                    minlength:2,
                    maxlength:16
                },
                sex:{
                    required:true,
                },
                mobile:{
                    required:true,
                    isMobile:true,
                },
                email:{
                    required:true,
                    email:true,
                },
                uploadfile:{
                    required:true,
                },

            },
            onkeyup:false,
            focusCleanup:true,
            success:"valid",
            submitHandler:function(form){
                //$(form).ajaxSubmit();
                var index = parent.layer.getFrameIndex(window.name);
                //parent.$('.btn-refresh').click();
                parent.layer.close(index);
            }
        });
    });
</script>
<script>
    /*用户-编辑*/
    $("#submit").click(function () {
        $.ajax({
            type: 'POST',
            url: '${pageContext.request.contextPath}/Admin/editor.do',
            dataType: "json",
            contentType: "application/json;charset=UTF-8",
            <!-- 向后端传输的数据 -->
            data: JSON.stringify({
                id: $("#ID").val(),
                userName: $("#username").val(),
                passWord: $("#password").val(),
                sex: $("input[name='sex']:checked").val(),
                birth: $("#birth").val(),
                phoneNumber: $("#phoneNumber").val(),
                email: $("#email").val()
            }),
            success: function(data){
                layer.msg('更新成功!',{icon:1,time:1000},
                function(){
                    setTimeout('parent.layer.close(parent.layer.getFrameIndex(window.name));',1000);
                    parent.location.reload();
                });

            },
            error:function(data) {
                layer.msg('更新失败!',{icon:2,time:1000});
            }
        });
    })
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>