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
    <!--[if IE 6]>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>图片列表</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 新闻管理 <span class="c-gray en">&gt;</span> 新闻列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
    <form action="${pageContext.request.contextPath}/News/NewsFuzzy.do" method="post">
    <div class="text-c">
        日期范围：
        <input type="text" onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'endTime\')||\'%y-%M-%d\'}' })" id="beginTime" name="beginTime" class="input-text Wdate" style="width:120px;">
        <input type="text" onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'beginTime\')}',maxDate:'%y-%M-%d' })" id="endTime" name="endTime" class="input-text Wdate" style="width:120px;">
        类型：<select name="type" id="type"  class="input-text"
                   style="width:120px;vertical-align:middle;">
        <option value="">类型</option>
        <option value="建筑业">建筑业</option>
        <option value="金融业">金融业</option>
        <option value="房地产业">房地产业</option>
        <option value="教育">教育</option>
        <option value="金融业">金融业</option>
        <option value="房地产业">房地产业</option>
        <option value="采矿业">采矿业</option>
        <option value="制造业">制造业</option>
        <option value="交通运输">交通运输</option>
        <option value="信息传输、软件和信息技术服务业">信息传输、软件和信息技术服务业</option>
        <option value="文化、体育和娱乐业">文化、体育和娱乐业</option>
        <option value="居民服务、修理和其他服务业">居民服务、修理和其他服务业</option>
        <option value="租赁和商务服务业">租赁和商务服务业</option>
        </select>
        <input type="text" name="keyWords" id="keyWords" placeholder=" 新闻关键字" style="width:250px" class="input-text">
        <button class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜新闻</button>
    </div>
    </form>
    <div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="javascript:;" onclick="del()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>
        <a class="btn btn-primary radius" onclick="picture_add('添加新闻','${pageContext.request.contextPath}/News/addJsp.do')" href="javascript:;"><i class="Hui-iconfont">&#xe600;</i> 添加新闻</a></span> </div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-bg table-hover table-sort">
            <thead>
            <tr class="text-c">
                <th width="40"><input id="all" name="all" type="checkbox" value=""></th>
                <th width="40">ID</th>
                <th width="60">新闻标题</th>
                <th width="60">类型</th>
                <th width="100">新闻内容</th>
                <th width="40">作者</th>
                <th width="100">新闻首页图片</th>
                <th width="80">发布时间</th>
                <th width="60">热度</th>
                <th width="60">操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${news}" var="item">
                <tr class="text-c">
                    <td><input type="checkbox"  value="${item.id}" name="id"></td>
                    <td>${item.id}</td>
                    <td><a class="maincolor" href="javascript:;" onClick="news_edit('新闻查看','${pageContext.request.contextPath}/News/newsB.do?id=${item.id}','${item.id}') "  href="javascript:;" title="查看">${item.title}</a></td>
                    <td>${item.type}</td>
                    <td class="text-l">${item.content.substring(0,30)}......</td>
                    <td class="text-c">${item.author}</td>
                    <td>
                        <img width="210" class="picture-thumb" src="${pageContext.request.contextPath}${item.indeximg}">
                    </td>
                    <td><fmt:formatDate value="${item.time}" pattern="yyyy-MM-dd"/></td>
                    <td>${item.popularity}</td>
                    <td class="td-manage">
                        <a style="text-decoration:none" class="ml-5" onClick="news_edit('新闻编辑','${pageContext.request.contextPath}/News/newsB.do?id=${item.id}','${item.id}') " href="javascript:;" title="编辑">
                            <i class="Hui-iconfont">&#xe6df;</i></a>
                        <a style="text-decoration:none" class="ml-5" onClick="news_del(this,'${item.id}')" href="javascript:;" title="删除">
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
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
    $(function(){
        $('.table-sort').dataTable({
            "aaSorting": [[ 1, "asc" ]],//默认第几个排序
            "bStateSave": true,//状态保存
            "aoColumnDefs": [
                //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
                {"orderable":false,"aTargets":[0,9]}// 制定列不参与排序
            ]
        });

    });

    /*图片-添加*/
    function picture_add(title,url){
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }

    /*图片-查看*/
    function picture_show(title,url,id){
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }

    /*图片-编辑*/
    function news_edit(title,url,id){
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }

    /*用户-删除*/
    function news_del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            $.ajax({
                type: 'POST',
                url: '${pageContext.request.contextPath}/News/deleteNews.do',
                dataType:'json',
                contentType: "application/json;charset=UTF-8",
                <!-- 向后端传输的数据 -->
                data: JSON.stringify({
                    id: id
                }),
                success: function(data) {
                    layer.msg('删除失败!', {icon: 2,time: 1000});
                },
                error:function(data) {
                    layer.msg('删除成功!',{icon:1,time:1000 });
                    window.location.reload();
                }
            });
        });
    }
</script>
<script type="text/javascript">
    //全选
    var oall=document.getElementById("all");
    var oid=document.getElementsByName("id");
    oall.onclick=function(){//勾选全选时
        for(var i=0;i<oid.length;i++){
            //所有的选择框和全选一致
            oid[i].checked=oall.checked;
        }
    };
    //点击复选框
    for(var i=0;i<oid.length;i++){
        oid[i].onclick=function(){
            //判断是否全部选中,遍历集合
            for(var j=0;j<oid.length;j++){
                if(oid[j].checked==false){
                    oall.checked=false;
                    break;
                }else{
                    oall.checked=true;
                }
            }
        };
    }
    /*用户-批量删除*/
    function del(){
        var Checkbox=false;//默认复选框为空
        $("input[name='id']").each(function(){//获取复选框节点id
            if (this.checked==true) {
                Checkbox=true;    //已勾选
            }
        });
        if (Checkbox){//boolean值为true
            var r=confirm("是否确认删除？");
            if(r==true){
                //确认删除
                var ids="";
                var n=0;
                for(var i=0;i<oid.length;i++){
                    if(oid[i].checked==true){//选中为true
                        var id=oid[i].value;
                        if(n==0){
                            ids+="ids="+id;
                        }else{
                            ids+="&ids="+id;
                        }
                        n++;
                    }

                }
                var z = ids[1];
                var  m = z.toString();
                //上面会拼接出一个名为ids的数组ids=1&ids=2&ids=3&ids=4……
                $.get("${pageContext.request.contextPath}/News/deleteByIds.do",ids,function(data){
                    if(data=="ok"){
                        layer.msg('删除成功!', {icon: 1,time: 1000});
                        //删除成功后，调用action方法刷新页面信息
                        location.reload();
                        $("input[name=id]").removeAttr("checked");
                    }else{
                        alert("请选中行!");
                    }
                });
                return true;
            }else{
                //不删除
                return false;
            }
        }else {
            alert("请选择您要删除的内容!");//不勾选不提交，弹出警告框。
        }
    }
</script>
</body>
</html>