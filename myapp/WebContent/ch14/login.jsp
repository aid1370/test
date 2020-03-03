<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
	String id = (String)session.getAttribute("idKey");
%>
<html>
<head>
<title>로그인</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function loginCheck(){
		if(document.loginFrm.id.value==""){
			alert("아이디를 입력해 주세요.");
			document.loginFrm.id.focus();
			return;
		}
		if(document.loginFrm.pwd.value==""){
			alert("비밀번호를 입력해 주세요.");
			document.loginFrm.pwd.focus();
			return;
		}
		document.loginFrm.submit();
	}
</script>
</head>
<body bgcolor="#ffffcc">
<div align="center"><br/><br/>
<%if (id != null) {%>
<b><%=id %></b>님 환영 합니다.
<p>제한된 기능을 사용 할 수가 있습니다.</p>
<a href="logout.jsp">로그아웃</a>
<%} else{ %>
<form name="loginFrm" method="post" action="loginProc.jsp">
<table>
	<tr>
		<td align="center" colspan="2"><h4>로그인</h4></td>
	</tr>
	<tr>
		<td>아이디</td>
		<td><input name="id"></td>
	</tr>
	<tr>
</table>
</form>
</div>
</body>
</html>
