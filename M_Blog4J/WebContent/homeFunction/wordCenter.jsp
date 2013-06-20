<%@ page language="java" import="com.blog.*,java.util.*,com.blog.entity.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	SessionUserObject suo = (SessionUserObject)session.getAttribute("UserBean");
	
	ArrayList<Message> messages = (ArrayList<Message>)request.getAttribute("messages");
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
							<li class="current">
							<a href="javascript:void(0);"><%=suo.getUserName() %></a></li>
							<li class="current">
							<a href="userAction!logoutUser.action">注销</a></li>
						</ul>
						<ul>
					<li class="current"><a href="blogAction.action?currentPage=1">首页</a></li>
					<li class="current"><a href="hotArticleAction!showHotArticle.action">热门文章</a></li>
					<!-- <li class="current"><a href="index.jsp">博客专家</a></li> -->
					<li class="current"><a href="columnAction.action?currentPage=1">博客专栏</a></li>
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
							<li><a href="articleAction!viewAllArticle.action?currentPage=1" class="article">文章</a></li>
							<!-- <li><a href="homeFunction/albumCenter.jsp" class="album">相册</a></li> -->
							<li><a href="favouriteAction!showAllFavourites.action" class="favourite">收藏</a></li>
							<li><a href="relationshipAction" class="relationship">关系</a></li>
							<li><a href="messageAction!viewAllMessage.action" class="leavewordnote">留言</a></li>
						</ul>
					</div>
				</div>
				<!--blank to fill-->

				<div class="leaveWordCenter">
					<div class="leaveWordHead">
						<h2>留言板</h2>
					</div>


					<% for(Message message : messages) {%>
					<dl class="leaveWord">
						<dt>
							<a href="#"><img src="images/myphoto.jpg"></a>
						</dt>
						<dd>
							<ul>
								<li><span class="leaveWordEdit"><a href="messageAction!replyMessageView.action?messageId=<%=message.getMsgId() %>"
										style="margin-right: 15px;">回复</a><a href="messageAction!deleteMessage.action?messageId=<%= message.getMsgId()%>">删除</a></span> <a
									href="#"><%= message.getFromUser().getUserName() %> </a> <span>&nbsp;&nbsp;&nbsp;&nbsp; <%= message.getSendTime() %></span></li>
								<li class="leaveWordContent"><%= message.getTitle() %></li>
							</ul>
						</dd>
					</dl>
				<%} %>
					
					
				</div>


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