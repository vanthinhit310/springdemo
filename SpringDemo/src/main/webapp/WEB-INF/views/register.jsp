<%--
  Created by IntelliJ IDEA.
  User: vanth
  Date: 09-Mar-19
  Time: 06:13
  To change this template use File | Settings | File Templates.
--%>
<%@include file="layout.jsp"%>
<style>
    #reg_form{
        padding-top: 50px;
    }
</style>
<script>
    $(document).ready(function () {
       $('#regButton').on('click', function () {
           var name = $('#name').val();
           var email = $('#email').val();
           var password = $('#password').val();
           var checkForm = true;
           if (name === ''){
               $('#error').html('Name not null.');
               checkForm = false;
           }
           if (email === ''){
               $('#error').html('Email not null.');
               checkForm = false;
           }
           if (password === ''){
               $('#error').html('Password not null.');
               checkForm = false;
           }
           if(checkForm){
               $.ajax({
                   url:'/account/registerProcess',
                   data:{
                       name: $('#name').val(),
                       email: $('#email').val(),
                       password: $('#password').val()
                   },
                   method:"POST",
                   success:function (data) {
                       if (data === 'ok'){
                           alert('dang ki thanh cong');
                       }
                   }
               })
           }
           return true;
       });
       $('#reg_form').on('keyup',function () {
           var name = $('#name').val();
           var email = $('#email').val();
           var password = $('#password').val();
           if (name !== ''){
               $('#error').html('');
           }
           if (email !== ''){
               $('#error').html('');
           }
           if (password !== ''){
               $('#error').html('');
           }
           return true;
       });
    });
</script>
<div class="container">
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">

    </div>
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
        <form action="" method="post" role="form" id="reg_form">
            <legend style="text-align: center">Register your account</legend>

            <div class="form-group">
                <label for="name"><i class="fa fa-user"></i> Name:</label>
                <input type="text" class="form-control" name="name" id="name" placeholder="Your name">
            </div>
            <div class="form-group">
                <label for="email"><i class="fa fa-envelope"></i> Email:</label>
                <input type="text" class="form-control" name="email" id="email" placeholder="Your email">
            </div>
            <div class="form-group">
                <label for="password"><i class="fa fa-lock"></i> Password:</label>
                <input type="password" class="form-control" name="password" id="password" placeholder="Your password">
            </div>

            <p style="color: red" id="error"></p>
            <div align="center">
                <button type="button" id="regButton" class="btn btn-primary"><i class="fas fa-user-plus"></i> Register now</button>
            </div>
        </form>
    </div>
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">

    </div>
</div>

<%@include file="footer.jsp"%>
