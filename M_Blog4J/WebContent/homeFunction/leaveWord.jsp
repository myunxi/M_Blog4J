<%@ page language="java" import="com.blog.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	SessionUserObject suo = (SessionUserObject) session
			.getAttribute("UserBean");
	
	String youId = request.getParameter("youId");
	String youUserName = request.getParameter("userName");
%>
<html>
<head>
<base href="<%=basePath%>">
<title>M_Blog4J</title>
<meta name="description" content="Place your description here">
<meta name="keywords" content="put, your, keyword, here">
<meta name="author" content="Templates.com - website templates provider">
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="stylesheet" type="text/css" href="miaov_style.css" />

<script type="text/javascript" src="js/maxheight.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="miaov.js"></script>
<script type="text/javascript" src="js/log.js"></script>
<!--[if lt IE 7]>
		<link rel="stylesheet" href="css/ie6.css" type="text/css" media="screen">
		<script type="text/javascript" src="js/ie_png.js"></script>
		<script type="text/javascript">
			ie_png.fix('.png');
		</script>
	<![endif]-->
<!--[if lt IE 9]>
		<script type="text/javascript" src="js/html5.js"></script>
	<![endif]-->
</head>
<body id="page1">
	<div class="tail-bottom">
		<div id="main">
			<!-- header -->
			<header>
				<div class="nav-box">
					<nav>
						<ul class="fright">
							<li class="current"><a href="blogAction!showHomeCenter.action"><img
									src="images/pic-home-act.gif" title="空间">我的空间</a></li>
							<li class="current"><a href="javascript:void(0);"><%=suo.getUserName()%></a></li>
							<li class="current"><a href="userAction!logoutUser.action">注销</a></li>
						</ul>
						<ul>
							<li class="current"><a
								href="blogAction.action?currentPage=1">首页</a></li>
							<li class="current"><a
								href="hotArticleAction!showHotArticle.action">热门文章</a></li>
							<!-- <li class="current"><a href="index.jsp">博客专家</a></li> -->
							<li class="current"><a
								href="columnAction.action?currentPage=1">博客专栏</a></li>
						</ul>
					</nav>
				</div>
				<h1>
					<a class="log" href="index.html">logo</a>
				</h1>
				<form action="" id="search-form">
					<fieldset>
						<input type="text"> <a href="#"
							onclick="document.getElementById('search-form').submit()"><img
							src="images/button-search.gif"></a>
					</fieldset>
				</form>
			</header>
			<div class="wrapper indent">
				<!-- content -->
				<div class="side">
					<div class="head_id">
						<dl>
							<dt>
								<a href="#"><img src="images/photo.jpg" height="100px"></a>
							</dt>
							<dd>
								<a href="#" class="u_name"><%=suo.getUserName() %></a>
							</dd>
						</dl>
					</div>
					<div class="menu">
						<ul>
							<li><a
								href="articleAction!viewAllArticle.action?currentPage=1"
								class="article">文章</a></li>
							<!-- <li><a href="homeFunction/albumCenter.jsp" class="album">相册</a></li> -->
							<li><a href="favouriteAction!showAllFavourites.action"
								class="favourite">收藏</a></li>
							<li><a href="relationshipAction" class="relationship">关系</a></li>
							<li><a href="messageAction!viewAllMessage.action"
								class="leavewordnote">留言</a></li>
						</ul>
					</div>
				</div>
				<!--blank to fill-->







				<h1 class="tit_1">发私信</h1>
				<form class="sendMessage" action="messageAction!saveMessage.action" method="post">
				
				<input type="hidden" value="<%=youId%>" name="message.toUser.userId">
				
					<table class="table_1" border="0" cellpadding="0" cellspacing="0">
						<colgroup>
							<col width="70">
							<col>
						</colgroup>
					
						<tbody>
							 <tr>
								<th>收信人：</th>
								<td><input name="message.toUser.userName" class="input_2" id="toUserName"
									value="<%=youUserName %>" type="text" readonly="readonly"><span id="user_error"
									class="obli"></span></td>
							</tr>  
							
							
							<tr>
								<th>标题：</th>
								<td><input name="message.title" class="input_1" value=""
									type="text"></td>
							</tr>
							<tr>
								<th>内容：</th>
								<td><textarea name="message.content" cols="" rows="" class="text_2"></textarea></td>
							</tr>
							<tr>
								<td colspan="2" class="tc"><input name="button" onclick="sendMessage();"
									class="btn_2" value="发送" type="button"></td>
							</tr>
							<input name="token" class="access_token"
								value="d211fee9-7537-4292-b800-6b34ec0fff9b" type="hidden">
						</tbody>
						
					</table>
				</form>







			</div>
			<!-- footer -->
			<footer>
				<div class="inside">
				<a rel="nofollow" href="#" class="new_window">邮箱</a>mc90716@163.com<br /> <a
					href="#" class="new_window">联系方式</a>15169170743
			</div>
			</footer>

		</div>
</body>
</html>