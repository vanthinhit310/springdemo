<%--
  Created by IntelliJ IDEA.
  User: vanth
  Date: 09-Mar-19
  Time: 05:44
  To change this template use File | Settings | File Templates.
--%>
<%@include file="layout.jsp" %>
<style>
    #login_form {
        padding-top: 50px;
    }

    input {
        margin: 7px;
    }
</style>
<script>
    $(document).ready(function () {
        $("#loginButton").on('click', function () {
            var username = $('#email').val();
            var password = $('#password').val();
            var checkForm = true;
            if (username === '') {
                $('#error').html('Email not null.');
                return false;
            }
            if (password === '') {
                $('#error').html('Password not null.');
                return false;
            }
            return true;
        });
        $('#login_form').on('keyup', function () {
            var username = $('#email').val();
            var password = $('#password').val();
            if (username !== '') {
                $('#error').html('');
            }
            if (password !== '') {
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
        <form id="login_form" action="" method="post" role="form">
            <legend style="text-align: center">Login</legend>

            <div class="form-group">
                <label for="email"><i class="fa fa-envelope"></i> Email: </label>
                <input type="text" class="form-control" name="email" id="email" placeholder="Your email">
            </div>
            <div class="form-group">
                <label for="password"><i class="fa fa-lock"></i> Password: </label>
                <input type="password" class="form-control" name="password" id="password" placeholder="Your password">
            </div>
            <p style="color: red" id="error"></p>
            <div align="center">
                <button id="loginButton" type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i> Login
                    now
                </button>
            </div>
        </form>
    </div>
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">

    </div>
</div>
<%@include file="footer.jsp" %>
