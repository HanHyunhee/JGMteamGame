<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Rubik+Doodle+Shadow&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
      crossorigin="anonymous"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik+Doodle+Shadow&display=swap" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <style>
      body {
        width: 100%;
      }

      h1 {
        font-family: "Rubik Doodle Shadow", serif;
        color: rgb(0, 0, 0);
        font-size: 40px;
      }
      #menu{
        margin-left: 4.5%;
        width: 90%;
    
        
      }
      nav{
        margin-top: 1%;
        width: 89.5%;
       margin-left: 5%;
        font-weight:bolder ;
        font-size: large;
        border-bottom:solid 2px rgb(165, 163, 163);
       
      }
      article{
        margin-top: 2%;
       width: 90%;
        margin-left: 4.5%;
       
       
      }
    
      #title{
        margin-top: 1%;
        margin-left: 11%;
        display: inline-block;
        background-image: url("https://www.urbanbrush.net/web/wp-content/uploads/edd/2019/09/urbanbrush-20190903035333274348.png");
        
      }
      .search{
        padding-top: 10px;
        width: 25%;
        height: 50px;
        margin-left: 16%;
        display: inline-block;
        overflow: hidden;
       
      }
      #searchinput{
       
        width: 90%;
        height: 100%;
        border-radius: 25px;
      }
      .navbar-brand{
        
        margin-left: 16.5%;
      }
      .navbar-brand:hover{
        border-bottom: solid 3px;
      }
      #span{
        width: 20%;
        margin-left: 13%;
        display: inline-block;
        overflow: hidden;
        padding-bottom: 5px;
      }
      #table{
        width: 100%;
      }
      
   
      .tabletext{
        font-size: 15px;
        height: 40px;
        
        text-align: center;
      }
      .btn{
        width: 10%;
        margin-top: 10px;
        margin-bottom: 15px;
        margin-left: 1%;
        background-color: rgb(212, 207, 207);
      }
      #divbtn{
        text-align: center;
   
        width: 100%;
       
    
      }
      #maindiv{
        width: 100%;
        
         
      }
      .card{
        position: relative;
        width: 25%;
        margin-left: 6%;
        margin-top: 20px;
        display: inline-block;
        
      }
    
      #wdiv{
        text-align: right;
        margin-right: 2%;
        margin-top: 15px;
      }
      #wbtn{
        background-color: rgb(200, 200, 200);
        font-weight: bolder;
        border-radius: 7px;
      }
      .card-text{
        text-align: left;
        
      }
      .card-text{
        width: 100%;
      }
      #pagebtn{
      	margin-top:20px;
      	text-align: center;
      }
      footer{
        margin-top: 80px;
        background-color: rgb(243, 243, 243);
        text-align: center; 
        border: solid 1px  rgb(243, 243, 243);
      }
    
    </style>
  </head>
  <body>
    <div id="title" >
      <h1>Travel</h1>
    </div>
    <div class="search">
        <input type="text" placeholder="  Search" id="searchinput">
        <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"  width="25px"> 
    </div>
    <div id="span">
        <span>로그인</span>
        <span>회원가입</span>
        <span>마이페이지</span>
        <span>예약확인</span>
    </div>
    <nav >
        <div >
          <a class="navbar-brand" href="#">숙박시설</a>
          <a class="navbar-brand" href="#">주변볼거리</a>
          <a class="navbar-brand" href="#">리뷰 게시판</a>
          <a class="navbar-brand" href="#">갤러리</a>
        </div>
      </nav>
      <article>
        <section id="table">
          <h2>갤러리</h2>
          <div id="divbtn">
            <button class="btn" style="font-weight: bolder;">서울특별시</button>
            <button class="btn" style="font-weight: bolder;">인천광역시</button>
            <button class="btn" style="font-weight: bolder;">대전광역시</button>
            <button class="btn" style="font-weight: bolder;">대구광역시</button>
            <button class="btn" style="font-weight: bolder;">광주광역시</button>
            <button class="btn" style="font-weight: bolder;">울산광역시</button>
            <button class="btn" style="font-weight: bolder;">부산광역시</button>
            <button class="btn" style="font-weight: bolder; font-size: 15px;">제주도</button>
          </div>
          
          <div id="maindiv">
          <c:forEach items="${glist }" var="gallery">
            <div class="card" >
              <img src="<%=request.getContextPath() %>/resources/img/busan.jpg" class="card-img-top" alt="...">
              <p class="card-text" style="font-size: 13px; font-weight: bolder;">${gallery.gallery_num }</p>
              <p class="card-text" style="font-size: 21px; font-weight: bolder;">제목 :${gallery.gallery_title }</p>
              <p class="card-text"  style="font-size: 16px; font-weight: bolder;">지역 : ${gallery.gallery_region}</p>
              <p class="card-text"  style="font-size: 15px; font-weight: bolder;">작성자 :${gallery.userid}</p>
              <p class="card-text"  style="font-size: 14px; font-weight: bolder;">조회순 : ${gallery.gallery_cnt}</p>
            </div>
            </c:forEach>
           
            <div id="wdiv">
              <a href="gwrite"><button id="wbtn">글쓰기</button></a>
            </div>
             <div id="pagebtn">
            <c:forEach var="pagenum" begin="${page.startPage }" end="${page.endPage }">
            <a href="gallery?page=${pagenum }"><button>${pagenum }</button></a>
            </c:forEach>
            </div>
          </div>
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
