<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="test" class="ch09.SimpleBean" scope="page" />
<jsp:setProperty name="test" property="message" value="���� ���� ��������!" />
<html>
<body>
<h1>������ �� ���α׷���</h1>
<br/>
message : <jsp:getProperty name="test" property="message" />
</body>
</html>