<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="style.css" type="text/css" />
<style type="text/css">
.header {
	background-color: #10000;
	color: #fff;
	border-color: #080808;
	min-height: 30px;
	border: 1px solid transparent;
	position: fixed;
	top: 0px;
	width: 100%;
}

.button {
	color: #fff;
	background-color: #c9302c;
	border-color: #ac2925;
	box-shadow: inset 0 3px 5pxrgba(0, 0, 0, .125);
	padding: 10px 16px;
	font-size: 18px;
	border-radius: 6px;
	margin: 0% 40%
}
</style>
<%@include file="navbar.jsp"%>
</head>
<body>

	<div class="content">
		<div class="banner-image">
			<center>
				<div class="inner-banner-image">
					<div class="banner_content">
						<h2>We Provide Treveling Service</h2>
						<p>Flat 20% OFF on Cab Booking</p>
						<p class="button">
							<a href="login.jsp">Cab Book</a>
						</p>
					</div>
				</div>
			</center>
		</div>
		<div class="container">
			<div class="items">
				<a href="#"> <img src="image/a.jpg" alt="" class="thumbnail">
					<div class="caption">
						<h2 style="color: #4fb81f">Discount on a traveler booking</h2>
						<p>Look for promo codes: Keep an eye out for promo codes or
							coupons that can be applied during the booking process for
							additional savings.</p>
					</div>
				</a>
			</div>
			<div class="items">
				<a href="#"> <img
					src="image/beautiful-outdoor-nature-landscape-with-bed-deck-chair-around-swimming-pool-hotel-resort.jpg"
					alt="" class="thumbnail">
					<div class="caption">
						<h2 style="color: #4fb81f">Traveling for beach</h2>
						<p>Use travel websites and apps to compare prices for flights,
							accommodations, and packages to your desired beach destination.</p>
					</div>
				</a>
			</div>
			<div class="items">
				<a href="#"> <img src="image/car-road-trip-travel-thumbnail.jpg"
					alt="" class="thumbnail">
					<div class="caption">
						<h2 style="color: #4fb81f">Traveling for mountain</h2>
						<p>It sounds like you might be interested in finding massage
							services, perhaps as part of your mountain trip for relaxation or
							after outdoor activities. Many resorts and hotels in mountain
							destinations offer spa services, including massages, to help
							guests unwind and rejuvenate..</p>
					</div>
				</a>
			</div>
			<div class="items">
				<a href="#"> <img src="image/hyundai-alcazar-6_0.jpg" alt=""
					class="thumbnail">
					<div class="caption">
						<h2 style="color: #4fb81f">Enjoy the Journey</h2>
						<p>Road trips are a great way to see new places and enjoy the
							scenery along the way. Take time to appreciate the journey and
							make memories along the highway..</p>
					</div>
				</a>
			</div>
			<div class="items">
				<a href="#"> <img src="image/kpfx_b5y3_220506.jpg" alt=""
					class="thumbnail">
					<div class="caption">
						<h2 style="color: #4fb81f">Traveling to visit a lighthouse</h2>
						<p>Look into the history and significance of the lighthouses
							you're considering. Some may offer guided tours, museums, or
							other attractions, while others may be more remote and accessible
							only by hiking or boat.</p>
					</div>
				</a>
			</div>

			<div class="items">
				<a href="#"> <img
					src="image/san-diego-safari-park-rhinos-scaled.jpgw3.webp" alt=""
					class="thumbnail">
					<div class="caption">
						<h2 style="color: #4fb81f">National Park in South Africa</h2>
						<p>In the early to mid-20th century, several countries in
							Africa established national parks and game reserves to protect
							their natural heritage and promote wildlife tourism. These parks,
							such as Kruger National Park in South Africa, Serengeti National
							Park in Tanzania, and Maasai Mara National Reserve in Kenya,
							became iconic destinations for safari enthusiasts seeking to see
							Africa's famous wildlife, including rhinos..</p>
					</div>
				</a>
			</div>

		</div>
	</div>



	<%@include file="marqueapage.jsp"%>

	<%@include file="footer.jsp"%>

</body>
</html>