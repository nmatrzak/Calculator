<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!Double value1;%>
<%!Double vaule2;%>
<%-- to jest komentarz--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
<meta name="viewport" content="width=device-width, innital-scale=1.0">
</head>
<body>
	<form action="index.jsp">
		<fieldset>
			<legend>Calc in JSP</legend>
			<h1>Kalkulator</h1>
			<input type="number" name="number1" placeholder="podaj liczbe"
				required="required"> <select name="sign">
				<option value="select">wybierz dzialanie</option>
				<option value="+">+</option>
				<option value="-">-</option>
				<option value="*">*</option>
				<option value="/">/</option>
			</select> <input type="number" name="number2" placeholder="podaj liczbe"
				required="required"> <input type="submit" value="Oblicz"><br>

			<%
				try {
					value1 = Double.parseDouble(request.getParameter("number1"));
					vaule2 = Double.parseDouble(request.getParameter("number2"));
					String choice = request.getParameter("sign");
					if (choice.equals("+")) {
			%>
			<p>
				<b>Wynik: </b>
			</p>
			<%
				out.print(value1 + vaule2);
					} else if (choice.equals("-")) {
			%>
			<p>
				<b>Wynik: </b>
			</p>
			<%
				out.print(value1 - vaule2);
					} else if (choice.equals("*")) {
			%>
			<p>
				<b>Wynik: </b>
			</p>
			<%
				out.print(value1 * vaule2);
					} else if (choice.equals("/")) {
			%>
			<p>
				<b>Wynik: </b>
			</p>
			<%
				out.print(value1 / vaule2);
					} else
						out.print("Użyj opcji: wybierz dzialanie");

				} catch (Exception ex) {
				}
			%>
		</fieldset>
	</form>
</body>
</html>