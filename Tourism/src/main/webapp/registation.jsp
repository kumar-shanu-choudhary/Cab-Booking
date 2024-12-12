<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Regisration Form</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Quicksand', sans-serif;
}

body {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	background: #000;
}

section {
	position: absolute;
	width: 100vw;
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 2px;
	flex-wrap: wrap;
	overflow: hidden;
}

section::before {
	content: '';
	position: absolute;
	width: 100%;
	height: 100%;
	/* background: linear-gradient(#000, #0f0, #000); */
	background: linear-gradient(gold, red, blue);
	animation: animate 5s linear infinite;
}

@
keyframes animate { 0% {
	transform: translateY(-100%)
}

100






%
{
transform






:






translateY




(






100




%
)




;
}
}
section span {
	position: relative;
	display: block;
	width: calc(6.25vw - 2px);
	height: calc(6.25vw - 2px);
	background: #181818;
	z-index: 2;
	transition: 1.5s;
}

section span:hover {
	background: rgb(41, 58, 132);
	transition: 0s;
}

section .signin {
	position: absolute;
	width: 400px;
	background: #222;
	z-index: 1000;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 40px;
	border-radius: 4px;
	box-shadow: 0 15px 35px rgba(0, 0, 0, 9);
}

section .signin .content {
	position: relative;
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	gap: 40px;
}

section .signin .content h2 {
	font-size: 2em;
	color: #0f0;
	text-transform: uppercase;
}

section .signin .content .form {
	width: 100%;
	display: flex;
	flex-direction: column;
	gap: 25px;
}

section .signin .content .form .inputBox {
	position: relative;
	width: 100%;
}

section .signin .content .form .inputBox input {
	position: relative;
	width: 100%;
	background: #333;
	border: none;
	outline: none;
	padding: 25px 10px 7.5px;
	border-radius: 4px;
	color: #fff;
	font-weight: 500;
	font-size: 1em;
}

section .signin .content .form .inputBox i {
	position: absolute;
	left: 0;
	padding: 15px 10px;
	font-style: normal;
	color: #aaa;
	transition: 0.5s;
	pointer-events: none;
}

.signin .content .form .inputBox input:focus ~i, .signin .content .form .inputBox input:valid
	 ~i {
	transform: translateY(-7.5px);
	font-size: 0.8em;
	color: #fff;
}

.signin .content .form .links {
	position: relative;
	width: 100%;
	display: flex;
	justify-content: space-between;
}

.signin .content .form .links a {
	color: #fff;
	text-decoration: none;
}

.signin .content .form .links a:nth-child(2) {
	color: #0f0;
	font-weight: 600;
}

.signin .content .form .inputBox input[type="submit"] {
	padding: 10px;
	background: #0f0;
	color: #000;
	font-weight: 600;
	font-size: 1.35em;
	letter-spacing: 0.05em;
	cursor: pointer;
}

input[type="submit"]:active {
	opacity: 0.6;
}

@media ( max-width : 900px) {
	section span {
		width: calc(10vw - 2px);
		height: calc(10vw - 2px);
	}
}

@media ( max-width : 600px) {
	section span {
		width: calc(20vw - 2px);
		height: calc(20vw - 2px);
	}
}

@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	min-height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	background: #66614d;
}

.container {
	position: relative;
	max-width: 900px;
	width: 100%;
	border-radius: 6px;
	padding: 30px;
	margin: 0 15px;
	background-color: #fff;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
}

.container header {
	position: relative;
	font-size: 20px;
	font-weight: 600;
	color: #333;
}

.container header::before {
	content: "";
	position: absolute;
	left: 0;
	bottom: -2px;
	height: 3px;
	width: 27px;
	border-radius: 8px;
	background-color: #4070f4;
}

.container form {
	position: relative;
	margin-top: 16px;
	min-height: 490px;
	background-color: #fff;
	overflow: hidden;
}

.container form .form {
	position: absolute;
	background-color: #fff;
	transition: 0.3s ease;
}

.container form .form.second {
	opacity: 0;
	pointer-events: none;
	transform: translateX(100%);
}

form.secActive .form.second {
	opacity: 1;
	pointer-events: auto;
	transform: translateX(0);
}

form.secActive .form.first {
	opacity: 0;
	pointer-events: none;
	transform: translateX(-100%);
}

.container form .title {
	display: block;
	margin-bottom: 8px;
	font-size: 16px;
	font-weight: 500;
	margin: 6px 0;
	color: #333;
}

.container form .fields {
	display: flex;
	align-items: center;
	justify-content: space-between;
	flex-wrap: wrap;
}

form .fields .input-field {
	display: flex;
	width: calc(100%/ 3 - 15px);
	flex-direction: column;
	margin: 4px 0;
}

.input-field label {
	font-size: 12px;
	font-weight: 500;
	color: #2e2e2e;
}

.input-field input, select {
	outline: none;
	font-size: 14px;
	font-weight: 400;
	color: #333;
	border-radius: 5px;
	border: 1px solid #aaa;
	padding: 0 15px;
	height: 42px;
	margin: 8px 0;
}

.input-field input :focus, .input-field select:focus {
	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.13);
}

.input-field select, .input-field input[type="date"] {
	color: #707070;
}

.input-field input[type="date"]:valid {
	color: #333;
}

.container form button, .backBtn {
	display: flex;
	align-items: center;
	justify-content: center;
	height: 45px;
	max-width: 200px;
	width: 100%;
	border: none;
	outline: none;
	color: #fff;
	border-radius: 5px;
	margin: 25px 0;
	background-color: #4070f4;
	transition: all 0.3s linear;
	cursor: pointer;
}

.container form .btnText {
	font-size: 14px;
	font-weight: 400;
}

form button:hover {
	background-color: #265df2;
}

form button i, form .backBtn i {
	margin: 0 6px;
}

form .backBtn i {
	transform: rotate(180deg);
}

form .buttons {
	display: flex;
	align-items: center;
}

form .buttons button, .backBtn {
	margin-right: 14px;
}

@media ( max-width : 750px) {
	.container form {
		overflow-y: scroll;
	}
	.container form::-webkit-scrollbar {
		display: none;
	}
	form .fields .input-field {
		width: calc(100%/ 2 - 15px);
	}
}

@media ( max-width : 550px) {
	form .fields .input-field {
		width: 100%;
	}
}
</style>
<%@include file="navbar.jsp"%>
</head>
<body style="background-color: #f5f8f5ad">


	<div class="container">
		<header style="color: #002349">Users should register with
			caution</header>

		<form action="userregister" method="post">
			<%
			String m = (String) request.getAttribute("msg");
			if (m != null) {
			%>

			<center>

				<h1 style="color: #002349">
					<b> <i><%=m%></i></b>
				</h1>
			</center>

			<%
			}
			%>

			<div class="form first">
				<div class="details personal">
					<span class="title"> <i>Enter your Personal Details</i></span>

					<div class="fields">
						<div class="input-field">
							<label>Full Name</label> <input type="text"
								placeholder="Enter your name" required name="name">
						</div>

						<div class="input-field">
							<label>Date of Birth</label> <input type="date"
								placeholder="Enter birth date" required name="date">
						</div>

						<div class="input-field">
							<label>Email</label> <input type="email"
								placeholder="Enter your email" required name="email">
						</div>

						<div class="input-field">
							<label>Mobile Number</label> <input type="tel"
								placeholder="Enter mobile number" required name="mobilenumber">
						</div>

						<div class="input-field">
							<label>Gender</label> <select required name="gender">
								<option disabled selected>Select gender</option>
								<option value="male">Male</option>
								<option value="Female">Female</option>
								<option value="Others">Others</option>
							</select>
						</div>

						<div class="input-field">
							<label>Home Number</label> <input type="tel"
								placeholder="Enter your Home Number" required name="homenumber">
						</div>
					</div>
				</div>

				<div class="details ID">
					<span class="title">Identity Details</span>

					<div class="fields">
						<div class="input-field">
							<label>ID Type</label> <input type="text"
								placeholder="Enter ID type" required name="idtype">
						</div>

						<div class="input-field">
							<label>ID Number</label> <input type="tel"
								placeholder="Enter ID number" required name="idnumber">
						</div>

						<div class="input-field">
							<label>Current Address</label> <input type="text"
								placeholder="Enter Current Address" required name="caddress">
						</div>

						<div class="input-field">
							<label>Permanent Address</label> <input type="text"
								placeholder="Enter Permanent  Address" required name="paddress">
						</div>

						<div class="input-field">
							<label>State</label> <input type="text"
								placeholder="Enter your State" required name="state">
						</div>

						<div class="input-field">
							<label>Country</label> <input type="text"
								placeholder="Enter your Country" required name="country">
						</div>

					</div>



					<button class="sumbit" style="background-color: #1D63FF">
						<span class="btnText" style="color: #002349">
							<h1>
								<i>Submit</i>
							</h1>
						</span> <i class="uil uil-navigator"></i>
					</button>

				</div>
			</div>
	</div>
	</form>
	</div>

	<%@include file="footer.jsp"%>

</body>

</html>