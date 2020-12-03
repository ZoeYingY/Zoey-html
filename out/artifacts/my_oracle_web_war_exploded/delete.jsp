<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    //接值id
    String id = request.getParameter("id");

    //接受服务器数据
    ArrayList<HashMap> users=(ArrayList<HashMap>) application.getAttribute("users");

    //比对id
    for(HashMap e:users){
        String idFromMap =(String) e.get("id");
        if (idFromMap.equals(id)){
            users.remove(e);
            break;
        }
    }



    //返回服务器

    application.setAttribute("users",users);
    response.sendRedirect("retrieve.jsp");
%>


<%--<%--%>
<%--    //从请求中获取id--%>
<%--    String id=request.getParameter("id");--%>

<%--    //从application中获取所有用户--%>
<%--    @SuppressWarnings("all")--%>
<%--    ArrayList<HashMap> users = (ArrayList<HashMap>) application.getAttribute("users");--%>

<%--    for(HashMap e : users){--%>

<%--        String idFromMap =(String) e.get("id");--%>
<%--        if (idFromMap.equals(id)){--%>
<%--            users.remove(e);--%>
<%--            break;--%>
<%--        }--%>
<%--    }--%>

<%--    //更新application--%>
<%--    application.setAttribute("users",users);--%>
<%--    //跳回查询用户界面--%>
<%--    response.sendRedirect("retrieve.jsp");--%>
<%--%>--%>






