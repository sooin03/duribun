<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html;charset=UTF-8"); %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

</head>
<body>
<div id="header">
		<jsp:include page="../../resources/form/header.jsp" />
</div>

<form action="/semi_temp/taxi.do" method="post" onsubmit="return Chk();">
		<input type="hidden" name="command" value="insert">
			
				<table>
					<tr>
						<h3>�����/������ ����</h3>
					</tr>
					<tr>
						<th>�ּ� ���� ����</th>
						<th>���������� ����</th>
					</tr>
					<tr>
						<td >�����<input type="text" size="40" placeholder="�ּҼ��� Ŭ��!" onclick="goPopup1()" readonly="readonly" id="start" name="place1"
						     ></td>
						<td><input type="text" size="40" placeholder="���������� Ŭ��!" onclick="sitePopup1()" readonly="readonly" id="sitestart" name="place1"></td>
					</tr>
					<tr>
						<td>������<input type="text" size="40" placeholder="�ּҼ��� Ŭ��!" onclick="goPopup2()" readonly="readonly" id="end" name="place2"></td>
						<td><input type="text"  size="40" placeholder="���������� Ŭ��!" onclick="sitePopup2()" readonly="readonly" id="siteend" name="place2"></td>
											
					</tr>
				
				</table>
				
				<br>
				<br>
				<br>
				
				<table border="1" style="width:100%; margin:auto;">
					
					
						<tr >
							<td colspan="3">
							�����<input type="text" size="40" readonly="readonly" id="start1" name="start_addr"> 
							������<input type="text" size="40" readonly="readonly" id="end1" name="end_addr">
							</td>						
						
						</tr>
						
						<tr>
							<td ><input id="someDate" name="date" type="date" >
							<%System.out.println("date"); %>
								<input id="someTime" name="time" type="time" >
					        </td>
						</tr>
						<tr>
							<td colspan="3"><input type="submit" value="��û">
							<input type="button" value="���" onclick="location.href='/semi_temp/taxi.do?command=list'"></td><br>
						</tr>
					
				</table>
		
	</form>


<script type="text/javascript">
function goPopup1(){
	window.open("addr_start.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes");
}

function goPopup2(){
	window.open("addr_end.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes");
}

function sitePopup1(){
	window.open("/semi_temp/taxi.do?command=tourlist1","pop","width=800,height=550, scrollbars=yes, resizable=yes");
}

function sitePopup2(){
	window.open("/semi_temp/taxi.do?command=tourlist2","pop","width=800,height=550, scrollbars=yes, resizable=yes");
}

function Chk(){
	var t1 = document.getElementById("start1");
	var t2 = document.getElementById("end1");
	var t3 = document.getElementById("someDate");
	var t4 = document.getElementById("someTime");
	if(t1.value.trim()==""||t1.value==null){
		alert("������� �Է����ּ���.");
		return false;
	}else if(t2.value.trim()==""||t2.value==null){
		alert("�������� �Է����ּ���.");
		return false;
	}else if(t3.value.trim()==""||t3.value==null){
		alert("���� ��¥�� �Է����ּ���.")
		return false;
	}else if(t4.value.trim()==""||t4.value==null){
		alert("���� �ð��� �Է����ּ���.")
		return false;
	}else{
		location.href='/semi_temp/taxi.do?command=insert';
		return true;
	}
}



</script>
<jsp:include page="../../resources/form/footer.jsp" />
</body>
</html>