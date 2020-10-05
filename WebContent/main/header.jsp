<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
<title>Insert title here</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<script type ="text/javascript" src="javascript.js" defer> </script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="../bootstrap/bootstrap.min.js"></script>
	<link rel="stylesheet" href="../bootstrap/bootstrap.min.css"/>
	<script src="https://kit.fontawesome.com/9db93bd103.js" crossorigin="anonymous"></script>
	<style>
		.navbar{
			background-color:#585858;
			width:100%;
			position:relative;
			margin:0;
			padding:0;
			padding-top:20px;
		}
		.navbtn{
			color: #fff;
		}
		.text-right{
			width:100%;
		}
		.btn{
			margin-top:10px;
		}
		.navbtn:hover{
			color:#808080;
		}
	</style>
</head>
<body>
<nav class="navbar">
<!--Modal: Login Form-->
<div class="modal fade" id="modalLRForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog cascading-modal" role="document">
    <!--Content-->
    <div class="modal-content">
     <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold">Member</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3">
          <div class="tab-pane fade in show active">
			<!-- ******************************** 회원 로그인 *************************************** -->
            <!--Body-->
            <div class="modal-body mb-1">
              <div class="md-form mb-5">
              	<form method="post" action="main/login.jsp"><!-- 로그인 폼 -->
                <i class="fas fa-user-circle"></i>
                <label data-error="wrong" data-success="right" for="modalLRInput10">Your ID</label><br>
                <input type="text" class="form-control form-control-sm validate" 
                			name="id" placeholder="아이디">
               
                <i class="fas fa-lock prefix"></i>
                <label data-error="wrong" data-success="right" for="modalLRInput11">Your password</label><br>
                <input type="password" class="form-control form-control-sm validate" 
                			name="password" placeholder="비밀번호">
                
                <input type="submit"  class="btn btn-dark" value="Login" ><i class="fas fa-sign-in ml-1"></i>
                </form>
              </div>
            </div>
            <!--Footer-->
            <div class="modal-footer">
              <div class="options text-center text-md-right mt-1">
                <p>Not a member? <a href="" class="blue-text">Sign Up</a></p>
                <p>Forgot <a href="#" class="blue-text">Password?</a></p>
              </div>
              <button type="button" class="btn btn-outline-dark waves-effect ml-auto" data-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
    </div>
    <!--/.Content-->
  </div>
</div>
<!-- ******************************** 회원 가입 *************************************** -->
<div class="modal fade" id="modalRegisterForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold">Sign up</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3">
        <div class="md-form mb-5">
        <form action="register.jsp" method="post" name="rf">
        
          <i class="fas fa-users"></i>
          <label data-error="wrong" data-success="right" for="orangeForm-name">Your name</label>
          <input type="text" class="form-control validate" 
          			name="name" placeholder="이름" required>
        
          <i class="fas fa-envelope"></i>
          <label data-error="wrong" data-success="right" for="orangeForm-email">Your email</label>
          <input type="email" class="form-control validate" 
          			name="email" placeholder="이메일" required>
          
          <i class="fas fa-user-circle"></i>
          <label data-error="wrong" data-success="right" for="orangeForm-pass" >Your ID</label>
          <input type="text" class="form-control validate" 
          			name="id" placeholder="아이디" required>
     
          <i class="fas fa-lock prefix grey-text"></i>
          <label data-error="wrong" data-success="right" for="orangeForm-pass" >Your password</label>
          <input type="password" id="pwd1" class="form-control validate" 
          			name="password" placeholder="비밀번호" required>
          
          <i class="fas fa-lock prefix grey-text"></i>
          <label data-error="wrong" data-success="right" for="orangeForm-pass" >Check password</label><br>
          <input type="password" id="pwd2" class="form-control validate" 
          			name="password2" placeholder="비밀번호 확인 ">
          			
          <div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
          <div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>
			
		  <i class="fas fa-mobile-alt"></i>	
          <label data-error="wrong" data-success="right" for="orangeForm-pass">Your phone number</label><br>
          <input type="text" class="form-control validate phone" 
          			name="phone" maxlength=13 placeholder="휴대번호">
       	  <input type="submit" value="Sign Up" class="btn btn-dark" id="submit">
        </form>
      </div>
    </div>
  </div>
</div>
</div><!-- fade -->
<div class="text-right">
<% 
	String userid = (String)session.getAttribute("userid");
    
   	if(session.getAttribute("userid")!=null){
   		if(userid.equals("admin")){
%>
	<a href="main/logout.jsp" class="btn btn-default btn-rounded mb-4 navbtn">Logout</a>	
<%    			
   		}else{
 %>
 	<a href="main/logout.jsp" class="btn btn-default btn-rounded mb-4 navbtn">Logout</a>
	<a href="">Account</a>
 <%  			
   		}
   	}else{
%>
	<a href="" class="btn btn-default btn-rounded mb-4 navbtn" data-toggle="modal" data-target="#modalLRForm">
    Login</a>
  	<a href="" class="btn btn-default btn-rounded mb-4 navbtn" data-toggle="modal" data-target="#modalRegisterForm">
    Register</a>
<%    		
   	}
%>	
</div>
</nav>
</body>

</html>