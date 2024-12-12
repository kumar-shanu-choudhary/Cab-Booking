<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact</title>
<style type="text/css">
main {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	width: 90%;
	margin: auto;
}

.title {
	font-size: 50px;
	font-weight: bold;
	padding: 1.5% 0;
}

.title-info {
	padding-bottom: 2%;
}

.form {
	display: flex;
	flex-direction: column;
	width: 60%;
	padding: 2%;
}

.input-group, .textarea-group {
	padding: 1% 0;
}

input, textarea {
	color: inherit;
	width: 100%;
	background-color: transparent;
	border: none;
	border-bottom: 1px solid #757575;
	padding: 1.5%;
	font-size: 20px;
}

input:focus, textarea:focus {
	background-color: transparent;
	outline: transparent;
	border-bottom: 2px solid #69f0ae;
}

input::placeholder, textarea::placeholder {
	color: transparent;
}

label {
	color: #757575;
	position: relative;
	left: 0.5em;
	top: -2em;
	cursor: auto;
	transition: 0.3s ease all;
}

input:focus ~ label, input:not(:placeholder-shown) ~ label {
	top: -4em;
	color: #d7420f;
	font-size: 15px;
}

textarea:focus ~ label, textarea:not(:placeholder-shown) ~ label {
	top: -10.5em;
	color: #69f0ae;
	font-size: 15px;
}

.button-div {
	display: flex;
	justify-content: center;
}

button {
	padding: 2%;
	width: 50%;
	border: 1px solid;
	border-color: #212121;
	border-radius: 5px;
	font-family: inherit;
	font-size: 18px;
	background-color: #79dd53;
	color: inherit;
	box-shadow: 0 0 10px #212121;
}

button:hover {
	background-color: #424242;
	color: #69f0ae;
	cursor: pointer;
}

/* Media queries */
@media screen and (max-width: 1200px) {
	.form {
		width: 70%;
	}
}

@media screen and (max-width: 680px) {
	.form {
		width: 90%;
	}
}

@media screen and (max-width: 500px) {
	.title {
		font-size: 40px;
		padding-top: 6%;
	}
	.title-info {
		font-size: 13px;
	}
	.form {
		padding: 6% 4%;
		padding-top: 15%;
	}
	.input-group, .textarea-group {
		padding: 3% 0;
	}
	input, textarea {
		font-size: 15px;
	}
	input:focus ~ label, input:not(:placeholder-shown) ~ label {
		top: -3.5em;
		left: 0.1em;
	}
	textarea:focus ~ label, textarea:not(:placeholder-shown) ~ label {
		top: -8.5em;
		left: 0.2em;
	}
	button {
		font-size: 15px;
	}
}
</style>
<%-- <%@include file="navbar.jsp"%> --%>
<%@include file="ticketid.jsp"%>

</head>
<body style="background-color: #b4b6c1;">
	<div style="margin: 15px 80px;">
		<a href="index.jsp" style="color: red"> <img alt=""
			src="image/green-check-mark-icon-on-transparent-background-free-png.png"
			width="40px" height="25px">
		</a>
	</div>


	<%
	HttpSession sn = request.getSession();
	String ticketnumber = String.valueOf(sn.getAttribute("tticketid"));
	%>
	<br>
	<br>
	<br>

	<center>
		<div>
			<div class="title">Contact us</div>
			<div class="title-info">
				I will try to contact you as soon as possible!
				<%
			String m = (String) request.getAttribute("msg");
			if (m != null) {
				out.println("<h2> " + m + ticketnumber + "</h2>");
			}
			%>
			</div>
			<form action="contact" method="post" class="form">

				<div class="input-group " style="display: none;">
					<input type="text" name="ticketid" id="first-name"
						readonly="readonly" value="<%=ticketid%>"
						style="text-align: center;"> <label for="first-name">Ticket
						Id</label>
				</div>
				<div class="input-group">
					<input type="text" name="firstname" id="first-name"
						placeholder="First name" required="required"> <label
						for="first-name">First name</label>
				</div>
				<div class="input-group">
					<input type="text" name="lastname" id="last-name"
						placeholder="Last Name" required="required"> <label
						for="last-name">Last name</label>
				</div>
				<div class="input-group">
					<input type="email" name="email" id="e-mail" placeholder="e-mail"
						required="required"> <label for="e-mail">e-mail</label>
				</div>
				<div class="textarea-group">
					<textarea name="message" id="message" rows="5"
						placeholder="Message" required="required"> </textarea>
					<label for="message">Message</label>
				</div>
				<div class="button-div">
					<button type="submit">Send</button>
				</div>
			</form>
			</main>
		</div>
	</center>
	<br>
	<br>
	<br>
	
	<br>
	
	<%@include file="footer.jsp"%>
</body>
</html>