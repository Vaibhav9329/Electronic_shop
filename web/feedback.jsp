<%-- 
    Document   : feedback
    Created on : 15 Feb, 2023, 11:15:14 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
	<title>Feedback</title>
	<style type="text/css">
		body
		{
			background: #FFEEEE;  /* fallback for old browsers */
                background: -webkit-linear-gradient(to right, #DDEFBB, #FFEEEE);  /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to right, #DDEFBB, #FFEEEE); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

		}
		#siz
		{
			padding:25px;
			margin-top: 50px;
			border: 2px solid white;
			border-radius: 14px;
		}
	</style>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
         <br>
        <script src="validation.js"></script>
        <form action="Feedback" method="post"> 
	<div class="container">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8  bg-light" id="siz">
				<div class="row" id="bx2">
				<div class="col-sm-4"></div>
				<div class="col-sm-4" id="bx">
					<h3 class=" display-6 text-danger fw-bold"><center>Feedback</center></h3>
				</div>
				<div class="col-sm-4"></div>
				</div>
				<div class="row mt-4">
				<div class="col-sm-6">
					<label>Feedback Type:<span style="color: red">*</span></label>
                                        <select name="feedType" class="form-control" required="required">
						<option selected disabled value="">-select-</option>
						<option value="Shopping Experience">Shopping Experience</option>
						<option value="Pricing">Pricing</option>
                                                <option value="Other">Other</option>
					</select>
				</div>
				<div class="col-sm-6">
					<label>Full Name:<span style="color: red">*</span></label>
					<input type="text" name="txt_fullname" placeholder="Enter Full Name" value="<%=session.getAttribute("full_name")%>" onkeypress="javascript:return isString(event)" maxlength="40" class="form-control" required>
				</div>
				</div>
				<div class="row mt-3">
				<div class="col-sm-6 mt-1">
					<label>Describe Feedback:<span style="color: red">*</span></label>
                                        <textarea name="txt_descfeedback" rows="2" class="form-control" placeholder="Describe Your Feedback" maxlength="200" required></textarea>
				</div>
				<div class="col-sm-6 mt-1">
					<label>Email:<span style="color: red">*</span></label>
					<input type="email" name="txt_email" placeholder="Enter Email" value="<%=session.getAttribute("email")%>" maxlength="30" class="form-control" required>
				</div>
				</div>
				<div class="row mt-5">
					<div class="col-sm-3">
					</div>
					<div class="col-sm-3">
						<input type="submit" name="btn_Send" value="Send" class="btn btn-primary form-control">
					</div>
					<div class="col-sm-3">
						<input type="reset" name="btn_Cancel" value="Cancel" class="btn btn-danger form-control">
					</div>
					<div class="col-sm-3">
					</div>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
	</form>
    </body>
</html>
