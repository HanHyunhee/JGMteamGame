<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Rubik+Doodle+Shadow&display=swap"
	rel="stylesheet">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<style>
body {
	width: 100%;
	height: 100%;
}

h1 {
	font-family: "Rubik Doodle Shadow", serif;
	color: rgb(0, 0, 0);
	font-size: 60px;
}

#menu {
	margin-left: 4.5%;
	width: 90%;
}

nav {
	margin-top: 1%;
	width: 89.5%;
	margin-left: 5%;
	font-weight: bolder;
	font-size: large;
	border-bottom: solid 2px rgb(165, 163, 163);
}

article {
	margin-top: 2%;
	width: 90%;
	margin-left: 4.5%;
}

section {
	margin-top: 2%;
	display: inline-block;
	width: 48.8%; /* 원하는 가로 길이에 맞게 조정 */
	/* 가로 길이와 동일한 비율의 세로 길이 설정 */
	position: relative;
}

.sub {
	margin-left: 10px;
	font-weight: bolder;
	font-size: x-large;
	text-align: center;
}

#title {
	margin-top: 1%;
	margin-left: 11%;
	display: inline-block;
	background-image:
		url("https://www.urbanbrush.net/web/wp-content/uploads/edd/2019/09/urbanbrush-20190903035333274348.png");
}

.search {
	width: 30%; /* 원하는 가로 길이에 맞게 조정 */
	padding-bottom: 1%; /* 가로 길이와 동일한 비율의 세로 길이 설정 */
	position: relative;
	margin-left: 9%;
	display: inline-block;
	/* padding-top: 10px;
        width: 25%;
        height: 50px;
        margin-left: 14%;
        display: inline-block;
        overflow: hidden; */
}

#searchinput {
	width: 70%;
	height: 40px;
	border-radius: 25px;
}

.navbar-brand {
	margin-left: 15.5%;
}

.navbar-brand:hover {
	border-bottom: solid 3px;
}

#span {
	width: 27%; /* 원하는 가로 길이에 맞게 조정 */
	padding-bottom: 0%; /* 가로 길이와 동일한 비율의 세로 길이 설정 */
	display: inline-block /* width: 20%;
        margin-left: 13%;
        display: inline-block;
        overflow: hidden;
        padding-bottom: 5px; */
}

div span {
	margin-left: 4%;
}

#video {
	margin-top: 100px;
	width: 100%;
}

.youtube {
	display: inline-block;
	margin-left: 0px;
	width: 33%; /* 원하는 가로 길이에 맞게 조정 */
	padding-bottom: 20%; /* 가로 길이와 동일한 비율의 세로 길이 설정 */
	position: relative;
}

.yvideo {
	position: absolute;
	width: 100%;
	height: 100%;
}

div iframe {
	border-radius: 50px;
}

footer {
	margin-top: 80px;
	background-color: rgb(243, 243, 243);
	text-align: center;
	border: solid 1px rgb(243, 243, 243);
}

.travel {
	/* width: 19.5%;
      height: 26vh;
      display: inline-block;
      text-align: center;
      border: solid 1px; */
	width: 19%; /* 원하는 가로 길이에 맞게 조정 */
	padding-bottom: 19%; /* 가로 길이와 동일한 비율의 세로 길이 설정 */
	position: relative;
	display: inline-block;
}

.travelimg {
	position: absolute;
	border-radius: 200px;
	width: 100%;
	height: 100%;
}

.travelhot {
	position: absolute;
	left: 38%;
	top: 100%;
	text-align: center;
	font-size: 25px;
	margin-top: 15px;
}
</style>
</head>
<body>
	<div id="title">
		<h1>Travel</h1>
	</div>
	<div class="search">
		<input type="text" placeholder="  Search" id="searchinput"> <img
			src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"
			width="25px">
	</div>
	<div id="span">
		<span>로그인</span> <span>회원가입</span> <span>마이페이지</span> <span>예약확인</span>
	</div>
	<nav>
		<div>
			<a class="navbar-brand" href="./introduce.html">소개</a> <a
				class="navbar-brand" href="./accdation.html">숙박시설</a> <a
				class="navbar-brand" href="./destination.html">주변볼거리</a> <a
				class="navbar-brand" href="./gallery.html">갤러리</a>
		</div>
	</nav>
	<article>
		<section>
			<div>
				<p class="sub">인기 숙소 Top3</p>
			</div>
			<div id="carouselExampleAutoplaying" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="./img/pension.jpg" class="d-block w-100" alt="..."
							height="400px">

					</div>
					<div class="carousel-caption d-none d-md-block">
						<h5>First slide label</h5>
						<button type="button" class="btn btn-light">예약하기</button>
					</div>
					<div class="carousel-item">
						<img src="./img/pension1.jpg" class="d-block w-100" alt="..."
							height="400px">
					</div>
					<div class="carousel-caption d-none d-md-block">
						<h5>First slide label</h5>
						<button type="button" class="btn btn-light">예약하기</button>
					</div>
					<div class="carousel-item">
						<img src="./img/pension2.jpg" class="d-block w-100" alt="..."
							height="400px">
					</div>
					<div class="carousel-caption d-none d-md-block">
						<h5>First slide label</h5>
						<button type="button" class="btn btn-light">예약하기</button>
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</section>
		<section>
			<div>
				<p class="sub">인기 관광지 Top3</p>
			</div>
			<div id="carouselExampleAutoplaying" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="./img/img2.jpg" class="d-block w-100 " alt="..."
							height="400px">
					</div>
					<div class="carousel-caption d-none d-md-block">
						<h5>First slide label</h5>
						<button type="button" class="btn btn-light">주변정보 보기</button>
					</div>
					<div class="carousel-item">
						<img src="./img/Island.jpg" class="d-block w-100" alt="..."
							height="400px">
					</div>
					<div class="carousel-caption d-none d-md-block">
						<h5>First slide label</h5>
						<button type="button" class="btn btn-light">주변정보 보기</button>
					</div>
					<div class="carousel-item">
						<img src="./img/경주.jpg" class="d-block w-100" alt="..."
							height="400px">
					</div>
					<div class="carousel-caption d-none d-md-block">
						<h5>First slide label</h5>
						<button type="button" class="btn btn-light">주변정보 보기</button>
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</section>
		<section id="video">
			<div>
				<p class="sub">인기 여행지</p>
			</div>
			<div class="travel">
				<img src="./img/seuol.jpg" alt="" class="travelimg">
				<p class="travelhot">서울</p>
			</div>
			<div class="travel">
				<img src="./img/deajeon.jpg" alt="" class="travelimg">
				<p class="travelhot">대전</p>
			</div>
			<div class="travel">
				<img src="./img/busan.jpg" alt="" class="travelimg">
				<p class="travelhot">부산</p>
			</div>
			<div class="travel">
				<img src="./img/deagu.jpg" alt="" class="travelimg">
				<p class="travelhot">대구</p>
			</div>
			<div class="travel">
				<img src="./img/injeun.jpg" alt="" class="travelimg">
				<p class="travelhot">인천</p>
			</div>
		</section>
		<section id="video">
			<div>
				<p class="sub">추천 여행지 YouTube</p>
			</div>
			<div class="youtube">
				<iframe
					src="https://www.youtube.com/embed/l3XW6ZpF2wk?si=izuGIebtN7tooMkk"
					class="yvideo" title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					allowfullscreen></iframe>
			</div>
			<div class="youtube">
				<iframe
					src="https://www.youtube.com/embed/rRCfmGa4MJg?si=QfnUp1F7wX6n4b6x"
					class="yvideo" title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					allowfullscreen></iframe>
			</div>
			<div class="youtube">
				<iframe
					src="https://www.youtube.com/embed/8yjWvsaqFAE?si=vK9QB8hXhe1n2TcN"
					class="yvideo" title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					allowfullscreen></iframe>
			</div>
		</section>
	</article>
	<footer>
		<div>
			<p class="foot">Travel</p>
			<p class="foot">개발자 : 이영주</p>
			<p class="foot">주소 : 수원시 영통구</p>
		</div>
	</footer>
</body>
</html>
