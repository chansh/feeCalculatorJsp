<%@ page language="java" contentType="text/html; charset=Shift_JIS" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Windows-31J">
<title>���݉�̊��芨�v�Z�v���O����</title>
</head>
<body>
<h1>�v�Z���ʂ�\�����܂�</h1><br>
<%
	request.setCharacterEncoding("SHIFT_JIS");
	String[] sumStr = request.getParameterValues("sum");
	int sum = Integer.parseInt(sumStr[0]);
	String[] nStr = request.getParameterValues("n");
	int n = Integer.parseInt(nStr[0]);
%>
<%=sum %>�~��<%=n %>�Ŋ����<%=sum/n %>�~�ł��B
</body>
</html>