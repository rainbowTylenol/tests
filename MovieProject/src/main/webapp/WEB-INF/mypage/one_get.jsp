<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
/**
* @Class Name : one_get.jsp
* @Description : 1:1문의 상세
* @Modification Information
* @
* @  수정일     		     수정자            		수정내용
* @ ---------   ---------   -------------------------------
* @ 2019.07.06         황진석      		 	최초생성
* @author bit 2조
* @since 2019. 07.01
* @version 1.0
* @see
*
*  Copyright (C) by Bit All right reserved.
*/
-->
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="<c:url value="/resources/css/hjs.css" />">
</head>

<div class="hero user-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-ct">
					<h1>Edward kennedy’s profile</h1>
					<ul class="breadcumb">
						<li class="active"><a href="#">Home</a></li>
						<li> <span class="ion-ios-arrow-right"></span>Rated movies</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="buster-light">
	<div class="page-single">
		<div class="container">
			<div class="row ipad-width2">
				<div class="col-md-3 col-sm-12 col-xs-12">
					<div class="info">
						<h2> <strong>황진석 님</strong> </h2>
						<h3> <strong>h10046245h@naver.com</strong></h3>
					</div>
					<div class="user-information-hjs">
						<div class="user-fav">
							<ul>
								<li><a href="mypage.do">마이페이지</a></li>
							</ul>
										
							<ul>
								<li>회원 정보</li>
								<li><a href="pw_confirm.do">&nbsp;&nbsp;&nbsp;&nbsp;회원정보수정</a></li>
								<li><a href="member_out.do">&nbsp;&nbsp;&nbsp;&nbsp;회원탈퇴</a></li>
							</ul>
					
							<ul>
								<li>고객센터</li>
								<li><a href="one_list.do">&nbsp;&nbsp;&nbsp;&nbsp;1:1 문의내역</a></li>
								<li><a href="faq.do">&nbsp;&nbsp;&nbsp;&nbsp;FAQ</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div>
				<div class="col-md-9 col-sm-12 col-xs-12">
				<div class="info_update">
					<h1><strong>1:1 상세보기</strong></h1>
				</div>
					
				<div>
					<form>
						<ul>
							<li class="tb_line">
								<div class="tb_th1"> 상담구분 </div>
								<div class="tb_td1"> 
									<label for="">
										<label class="fancy-radio custom-color-coral">
											<input name="one" type="radio" checked><span><i></i><b>영화 문의</b></span>
										</label>
										<label class="fancy-radio custom-color-coral">
											<input  name="one" type="radio"><span><i></i><b>예매 문의</b> </span>
										</label> 
										<label class="fancy-radio custom-color-coral">
											<input name="one" type="radio"><span><i></i><b>이벤트 문의</b></span>
										</label>
										<label class="fancy-radio custom-color-coral">
											<input name="one" type="radio"><span><i></i><b>회원정보 문의</b></span>
										</label>
										<label class="fancy-radio custom-color-coral">
											<input name="one" type="radio"><span><i></i><b>기타 문의</b></span>
										</label>
									</label>
								</div>
							</li>

							<li class="tb_line">
								<div class="tb_th1"> 닉네임 </div>
								<div class="tb_td1"> 비트코인 </div>
							</li>

							<li class="tb_line">
								<div class="tb_th1"> 제목 </div>
									<div class="tb_td1"> 
										제목입니다제목입니다제목입니다제목입니다제목입니다제목입니다제목입니다.
									</div>
							</li>
	
							<li class="tb_line">
								<div style="display: inline-block">
									<div class="tb_th1"> 내용 </div>
									<div class="tb_td1">
										내용입니다.내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다
										내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다
										내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다
										내용입니다내용입니다내용입니다내용입니다내용입니다
									</div>
								</div>
							</li>
						</ul>
							<br>
							<div class="btn_m">
								<input type="submit" class="btn-check-hjs" value="수정"> &nbsp;
								<input type="reset" class="btn-check-hjs" value="취소">
							</div>
						</form>
					</div>
				</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- footer section-->
<%@ include file="../footer.jsp" %>
</body>
</html>