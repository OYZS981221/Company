<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/html5shiv.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/h-ui.admin/css/H-ui.admin.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/lib/Hui-iconfont/1.0.8/iconfont.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/h-ui.admin/skin/default/skin.css" id="skin"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui.admin/css/style.css"/>
    <!--[if IE 6]>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/DD_belatedPNG_0.0.8a-min.js"></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <!--/meta 作为公共模版分离出去-->
    <title>用户管理</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i>
    首页 <span class="c-gray en">&gt;</span>
    用户管理 <span class="c-gray en">&gt;</span>
    用户列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px"
            href="javascript:location.replace(location.href);" title="刷新">
        <i class="Hui-iconfont">&#xe68f;</i>
    </a>
</nav>
<div class="page-container">
    <div class="text-c">
        <table>
            <td>
            <form action="${pageContext.request.contextPath}/User/searchByName.do" method="post">
                <input type="text" class="input-text" style="width:250px"
                             placeholder="输入用户名" id="userName"
                             name="userName">
                <button type="submit" class="btn btn-success radius" id="search2" name="">
                    <i class="Hui-iconfont">&#xe665;</i> 搜用户名</button>
            </form></td>
            <td>
                <form action="${pageContext.request.contextPath}/User/searchFuzzy.do" method="post">
                    <input type="text" class="input-text" style="width:250px"
                                 placeholder="输入关键词" id="keyWords"
                                 name="keyWords">
                   <select name="sex" id="sex"  class="input-text"
                               style="width:80px;vertical-align:middle;">
                    <option value="">性别</option>
                    <option value="男">男</option>
                    <option value="女">女</option>
                </select>
                    <button type="submit" class="btn btn-success radius" id="search3" name="">
                        <i class="Hui-iconfont">&#xe665;</i> 搜关键词</button>
                </form></td>
        </table>


    </div>
    <div class="cl pd-5 bg-1 bk-gray mt-20"><span class="l"><a href="javascript:;" onclick="del()"
                                                               class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> <a
            href="javascript:;" onclick="user_add('添加用户','${pageContext.request.contextPath}/User/addJsp.do','','510')"
            class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加用户</a></span></div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-hover table-bg table-sort">
            <thead>
            <tr class="text-c">
                <th width="25"><input type="checkbox" id="all" name="all" value=""></th>
                <th width="80">ID</th>
                <th width="100">用户名</th>
                <th width="100">密码</th>
                <th width="40">性别</th>
                <th width="90">出生日期</th>
                <th width="90">手机</th>
                <th width="150">邮箱</th>
                <th width="100">操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${user}" var="item">
                <tr class="text-c">
                    <td><input type="checkbox" value="${item.id}" name="id"></td>
                    <td>${item.id}</td>
                    <td><u style="cursor:pointer" class="text-primary"
                           onclick="user_edit('编辑','${pageContext.request.contextPath}/Admin/user.do?id=${item.id}','${item.id}','','510')">${item.userName}</u>
                    </td>
                    <td>${item.passWord}</td>
                    <td>${item.sex}</td>
                    <td><fmt:formatDate value="${item.birth}" pattern="yyyy-MM-dd"/></td>
                    <td class="text-l">${item.phoneNumber}</td>
                    <td>${item.email}</td>
                    <td class="td-manage">
                        <a title="编辑" href="javascript:;"
                           onclick="user_edit('编辑','${pageContext.request.contextPath}/Admin/user.do?id=${item.id}','${item.id}','','510')"
                           class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>
                        <a title="删除" href="javascript:;" onclick="user_del(this,'${item.id}')" class="ml-5"
                           style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/h-ui.admin/js/H-ui.admin.js"></script>
<!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
    $(function () {
        $('.table-sort').dataTable({
            "aaSorting": [[1, "asc"]],//默认第几个排序
            "bStateSave": true,//状态保存
            "aoColumnDefs": [
                //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
                {"orderable": false, "aTargets": [0, 8]}// 制定列不参与排序
            ]
        });

    });

    /*用户-添加*/
    function user_add(title, url, w, h) {
        layer_show(title, url, w, h);
    }

    /*用户-编辑*/
    function user_edit(title, url, id, w, h) {
        layer_show(title, url, w, h);
    }

    /*用户-删除*/
    function user_del(obj, id) {
        layer.confirm('确认要删除吗？', function (index) {
            $.ajax({
                type: 'POST',
                url: '${pageContext.request.contextPath}/Admin/delete.do',
                dataType: 'json',
                contentType: "application/json;charset=UTF-8",
                <!-- 向后端传输的数据 -->
                data: JSON.stringify({
                    id: id
                }),
                success: function (data) {
                    layer.msg('删除失败!', {icon: 2, time: 1000});
                },
                error: function (data) {
                    layer.msg('删除成功!', {icon: 1, time: 1000});
                    window.location.reload();
                }
            });
        });
    }
</script>
<script type="text/javascript">
    //全选
    var oall = document.getElementById("all");
    var oid = document.getElementsByName("id");
    oall.onclick = function () {//勾选全选时
        for (var i = 0; i < oid.length; i++) {
            //所有的选择框和全选一致
            oid[i].checked = oall.checked;
        }
    };
    //点击复选框
    for (var i = 0; i < oid.length; i++) {
        oid[i].onclick = function () {
            //判断是否全部选中,遍历集合
            for (var j = 0; j < oid.length; j++) {
                if (oid[j].checked == false) {
                    oall.checked = false;
                    break;
                } else {
                    oall.checked = true;
                }
            }
        };
    }

    /*用户-批量删除*/
    function del() {
        var Checkbox = false;//默认复选框为空
        $("input[name='id']").each(function () {//获取复选框节点id
            if (this.checked == true) {
                Checkbox = true;    //已勾选
            }
        });
        if (Checkbox) {//boolean值为true
            var r = confirm("是否确认删除？");
            if (r == true) {
                //确认删除
                var ids = "";
                var n = 0;
                for (var i = 0; i < oid.length; i++) {
                    if (oid[i].checked == true) {//选中为true
                        var id = oid[i].value;
                        if (n == 0) {
                            ids += "ids=" + id;
                        } else {
                            ids += "&ids=" + id;
                        }
                        n++;
                    }

                }
                var z = ids[1];
                var m = z.toString();
                //上面会拼接出一个名为ids的数组ids=1&ids=2&ids=3&ids=4……
                $.get("${pageContext.request.contextPath}/User/deleteByIds.do", ids, function (data) {
                    if (data == "ok") {
                        layer.msg('删除成功!', {icon: 1, time: 1000});
                        //删除成功后，调用action方法刷新页面信息
                        location.reload();
                        $("input[name=id]").removeAttr("checked");
                    } else {
                        alert("请选中行!");
                    }
                });
                return true;
            } else {
                //不删除
                return false;
            }
        } else {
            alert("请选择您要删除的内容!");//不勾选不提交，弹出警告框。
        }
    }
</script>


</body>
</html>