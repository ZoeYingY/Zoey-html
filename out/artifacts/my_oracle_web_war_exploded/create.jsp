<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String name = request.getParameter("name");
    String age = request.getParameter("age");
    String gender = request.getParameter("gender");
    String info = request.getParameter("info");
    //用户从服务器取出
    @SuppressWarnings("all")

    ArrayList<HashMap> users = (ArrayList<HashMap>)application.getAttribute("users");
//    application.setAttribute("num", 12);
//    String numStr = application.getAttribute("num").toString();
//    int num = Integer.parseInt(numStr);
    //添加 --new
    HashMap<String,Object> hashMap = new HashMap<>();
    hashMap.put("name",name);
    hashMap.put("age",age);
    hashMap.put("gender",gender);
    hashMap.put("info",info);
    hashMap.put("id",users.size()+1+"");
//    hashMap.put("id", ++num+"");
    //放回服务器
    users.add(hashMap);
//    application.setAttribute("users",users);
//    application.setAttribute("num", num);
    response.sendRedirect("retrieve.jsp");




%>







