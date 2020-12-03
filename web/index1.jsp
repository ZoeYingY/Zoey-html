<!DOCTYPE html>
<html lang="zh-CN">

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
  <title>Bootstrap 101 Template</title>

  <!-- Bootstrap -->
  <link href="bootstrap-3/css/bootstrap.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->






<head>

  <meta charset="UTF-8">

  <title>Zoey's Books List</title>

  <link rel="stylesheet" href="submit_exam_css.css">
</head>



  <h1 class="title">Welcome to Zoey's</h1>
  <div class="sign-div">

  <form action="login.jsp"  class="jiemian">
    <label class="input-group">
      <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
      <input type="text" class="form-control" placeholder="usersname">
    </label>

    <label class="input-group">
      <span class="input-group-addon"><span class=" glyphicon glyphicon-lock"></span></span>
      <input type="text" class="form-control"  placeholder="password">
    </label>
    <br>
    <div id="bt">
      <button class="btn btn-sm " >registered</button>&nbsp;&nbsp;
      <button class="btn btn-sm " ><a href="login.jsp">log in</a></button>
    </div>
  </form>


</div>

<div class="copy">&gt;This blog is used for recording my book list. </div>

</body>

</html>


--------------------------------

body{

    margin: 0 auto;
    background: #487eb0;

}


.title{
    color: white;
    width: 100%;

    text-align: center;

    margin-top: 20%;
    margin-left: 50%;
    transform: translate(-50%,-50%);

}

.jiemian{
    margin-top: 40%;
    margin-left: 10%;


}


.input-group{

    width: 300px;
}




.copy {
    color: white;
    font-size: 5px;
    position: fixed;
    bottom:0px;
    height: 50px;
    text-align: center;
    line-height: 25px;
    width: 100%;
}



