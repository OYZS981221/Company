<%--
  Created by IntelliJ IDEA.
  User: 欧阳忠森
  Date: 2020/4/26
  Time: 18:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <script src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>
    <script src="${pageContext.request.contextPath}/js/pagination.js"></script>
    <link href="${pageContext.request.contextPath}/css/pages/pagination.css"/>
</head>

<body>
<table width="1052" border=0 align=center cellpadding=2 cellspacing=1
       bordercolor="#799AE1" class=tableBorder>
    <tbody>
    <tr>
        <th align=center colspan=16 style="height: 23px">商品显示</th>
    </tr>

    <tr align="center" bgcolor="#799AE1" style="height:28px">
        <td width="10%" align="center" class=txlHeaderBackgroundAlternate>商品编号</td>
        <td width="10%" align="center" class=txlHeaderBackgroundAlternate>商品大类</td>
        <td width="10%" align="center" class=txlHeaderBackgroundAlternate>商品名称</td>
        <td width="10%" align="center" class=txlHeaderBackgroundAlternate>商品规格</td>
        <td width="10%" align="center" class=txlHeaderBackgroundAlternate>加权进价</td>
        <td width="10%" align="center" class=txlHeaderBackgroundAlternate>当前售价</td>
        <td width="10%" align="center" class=txlHeaderBackgroundAlternate>操作</td>

    </tr>


    <c:forEach items="${goodsS}" var="goods">
        <tr bgcolor="#DEE5FA">
            <td align="center" id="goodsId" class="txlrow"><c:out
                    value="${goods.goodsId}"></c:out></td>
            <td align=center id="goodsType" class=txlrow><c:out
                    value="${goods.goodsType}"></c:out></td>
            <td align=center id="goodsName" class=txlrow><c:out
                    value="${goods.goodsName}"></c:out></td>
            <td align=center id="goodsContent" class=txlrow><c:out
                    value="${goods.goodsContent}"></c:out></td>
            <td align=center id="goodsPrice" class=txlrow><c:out
                    value="${goods.goodsPrice}"></c:out></td>
            <td align=center id="goodsSell" class=txlrow><c:out
                    value="${goods.goodsSell}"></c:out></td>
            <td align=center class=txlrow> <input type="button" value="编辑"></td>
        </tr>
    </c:forEach>
    <c:forEach items="${goodsS}" var="goods">
        <tr bgcolor="#DEE5FA">
            <td align="center" id="goodsId" class="txlrow"><c:out
                    value="${goods.goodsId}"></c:out></td>
            <td align=center id="goodsType" class=txlrow><c:out
                    value="${goods.goodsType}"></c:out></td>
            <td align=center id="goodsName" class=txlrow><c:out
                    value="${goods.goodsName}"></c:out></td>
            <td align=center id="goodsContent" class=txlrow><c:out
                    value="${goods.goodsContent}"></c:out></td>
            <td align=center id="goodsPrice" class=txlrow><c:out
                    value="${goods.goodsPrice}"></c:out></td>
            <td align=center id="goodsSell" class=txlrow><c:out
                    value="${goods.goodsSell}"></c:out></td>
            <td align=center class=txlrow> <input type="button" value="编辑"></td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<!--分页显示-->
<div id="Pagination"></div>

<script type="text/javascript">
    var limit=<%=request.getAttribute("limit")%>;//每页显示多少 条数据
    var count=<%=request.getAttribute("count")%>//共多少条数据
    var index=<%=request.getAttribute("index")%>;//当前记录数
    $(function(){
        $("#Pagination").pagination(count, {
            items_per_page:limit, // 每页显示多少条记录
            current_page: Math.ceil(index/limit), //当前页
            num_display_entries:4, // 分页显示的条目数
            next_text:"下一页",
            prev_text:"上一页",
            num_edge_entries:2, // 连接分页主体，显示的条目数
            callback:handlePaginationClick
        });
    });


    function handlePaginationClick(new_page_index, pagination_container) {
        var path="<%=path%>/goodsManager/searchGoodsBylimit/" + new_page_index*limit;
        $("#goodsForm").attr("action",path );
        $("#goodsForm").submit();
        return false;

    }

</script>
</body>
</html>
