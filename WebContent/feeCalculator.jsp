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
	String sumStr = request.getParameter("sum");
	int sum = Integer.parseInt(sumStr);
	String ndStr = request.getParameter("number_director");
	int number_director = Integer.parseInt(ndStr);
	String rdStr = request.getParameter("rate_director");
	int rate_director = Integer.parseInt(rdStr);
	String nmStr = request.getParameter("number_manager");
	int number_manager = Integer.parseInt(nmStr);
	String rmStr = request.getParameter("rate_manager");
	int rate_manager = Integer.parseInt(rmStr);
	String nsStr = request.getParameter("number_sx");
	int number_sx = Integer.parseInt(nsStr);
	String rsStr = request.getParameter("rate_sx");
	int rate_sx = Integer.parseInt(rsStr);
	String nhStr = request.getParameter("number_hira");
	int number_hira = Integer.parseInt(nhStr);
	String rhStr = request.getParameter("rate_hira");
	int rate_hira = Integer.parseInt(rhStr);
	String nbStr = request.getParameter("number_bp");
	int number_bp = Integer.parseInt(nbStr);
	String rbStr = request.getParameter("rate_bp");
	int rate_bp = Integer.parseInt(rbStr);
	
	int rate_sum = number_director * rate_director + number_manager * rate_manager + number_sx *rate_sx + number_hira * rate_hira + number_bp * rate_bp;
	double refVal = ((double)sum / (double)rate_sum );
%>
�Z���^���͂P�l������<%=(int)(refVal * rate_director)%>�~<br>
�ے��͂P�l������<%=(int)(refVal * rate_manager)%>�~<br>
SX�͂P�l������<%=(int)(refVal * rate_sx)%>�~<br>
�Ј��͂P�l������<%=(int)(refVal * rate_hira)%>�~<br>
BP����͂P�l������<%=(int)(refVal * rate_bp)%>�~<br>

</body>
</html>