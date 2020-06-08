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

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/h-ui.admin/css/H-ui.admin.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/lib/Hui-iconfont/1.0.8/iconfont.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/h-ui.admin/skin/default/skin.css" id="skin"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui.admin/css/style.css"/>
    <!--[if IE 6]>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <style type="text/css">
        .distpicker {
            text-align: center;
            height: 31px;
            width: 100px;
            vertical-align: middle;
        }
    </style>
    <title>登录日志</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 登录日志 <span
        class="c-gray en">&gt;</span> 登录日志列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px"
                                              href="javascript:location.replace(location.href);" title="刷新"><i
        class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">

    <div class="text-c">
        <form action="${pageContext.request.contextPath}/History/selectFuzzy.do">
        <input type="hidden" name="userID" value="${sessionScope.user.id}"/>
        日期范围：
        <input type="text" onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'endTime\')||\'%y-%M-%d\'}' })" id="beginTime"
               name="beginTime" class="input-text Wdate" style="width:120px;">
        <input type="text" onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'beginTime\')}',maxDate:'%y-%M-%d' })"
               id="endTime" name="endTime" class="input-text Wdate" style="width:120px;">
        类型：<select name="type" id="type" class="input-text"
                   style="width:120px;vertical-align:middle;">
        <option value="">全部类型</option>
        <option value="科技">科技</option>
        <option value="服务业">服务业</option>
        <option value="体育">体育</option>
        <option value="生物">生物</option>
    </select>

        <input type="text" name="keyWords" id="keyWords" placeholder=" 关键字" style="width:200px" class="input-text">
        <button class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜历史</button>
    </form>
    </div>

    <div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="javascript:;" onclick="del()"
                                                                class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>
      </span></div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-bg table-hover table-sort">
            <thead>
            <tr class="text-c">
                <th width="40"><input id="all" name="all" type="checkbox" value=""></th>
                <th width="60">企业ID</th>
                <th width="80">企业名</th>
                <th width="80">经营类型</th>
                <th width="80">访问时间</th>
                <th width="60">操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${history}" var="item">
                <tr class="text-c">
                    <td><input type="checkbox" value="${item.id}" name="id"></td>
                    <td>${item.company.companyID}</td>
                    <td>${item.company.name}</td>
                    <td>${item.company.type}</td>
                    <td><fmt:formatDate value="${item.time}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                    <td class="td-manage">
                        <a style="text-decoration:none" class="ml-5" onClick="company_del(this,'${item.id}')"
                           href="javascript:;" title="删除">
                            <i class="Hui-iconfont">&#xe6e2;</i>
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/distpicker.js"></script>
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
                {"orderable": false, "aTargets": [0,5]}// 制定列不参与排序
            ]
        });

    });

    $(function () {
        $('#areapick').distpicker();
    });

    /*图片-添加*/
    function picture_add(title, url) {
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }


    /*图片-编辑*/
    function company_edit(title, url, id) {
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }

    /*用户-删除*/
    function company_del(obj, id) {
        layer.confirm('确认要删除吗？', function (index) {
            $.ajax({
                type: 'POST',
                url: '${pageContext.request.contextPath}/History/deleteHistory.do',
                dataType: 'json',
                contentType: "application/json;charset=UTF-8",
                <!-- 向后端传输的数据 -->
                data: JSON.stringify({
                    id: id
                }),
                success: function (data) {
                    if (data.state == 200) {
                        layer.msg(data.message, {icon: 1, time: 1000}, function () {
                            location.reload();
                        });
                    }
                    if (data.state == 300) {
                        layer.msg(data.message, {icon: 2, time: 1000});
                        return;
                    }
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
                $.get("${pageContext.request.contextPath}/History/deleteByIds.do", ids, function (data) {
                    if (data == "ok") {
                        layer.msg('删除成功!', {icon: 1, time: 1000}, function () {
                            window.location.reload();
                        });

                        $("input[name=id]").removeAttr("checked");
                    } else {
                        layer.msg('请选中行!', {icon: 2, time: 1000}, function () {
                           return;
                        });
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