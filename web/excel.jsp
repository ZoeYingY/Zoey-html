<%@ page import="java.util.ArrayList" %>
<%@ page import="com.oracle.tool.DataTool.DataTool" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.oracle.tool.DataTool.ExcelTool" %>

<%
    @SuppressWarnings("all")
    ArrayList<HashMap> users = (ArrayList<HashMap>) application.getAttribute("users");

    HashMap<String,Object> hashMap = new HashMap<>();
    hashMap.put("users",users);
    hashMap.put("title","users' info");

    //
    ExcelTool excelTool = new ExcelTool(request,response);
    excelTool.download("/excel/excelTemplate.xls","users.xls",hashMap);









%>