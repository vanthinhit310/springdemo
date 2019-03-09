<%--
  Created by IntelliJ IDEA.
  User: vanth
  Date: 09-Mar-19
  Time: 07:53
  To change this template use File | Settings | File Templates.
--%>
<%@include file="layout.jsp" %>
<style>
    #change_form {
        padding-top: 50px;
    }

    input {
        margin: 7px;
    }
</style>
<script>
    $(document).ready(function () {
        $("#changeButton").on('click', function () {
            var old = $('#old').val();
            var password = $('#password').val();
            var checkForm = true;
            if (old === '') {
                $('#error').html('Old password not null.');
                return false;
            }
            if (password === '') {
                $('#error').html('Password not null.');
                return false;
            }
            return true;
        });
        $('#change_form').on('keyup', function () {
            var old = $('#old').val();
            var password = $('#password').val();
            if (old !== '') {
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
        <form id="change_form" action="" method="post" role="form">
            <legend style="text-align: center">Change password</legend>

            <div class="form-group">
                <label for="old"><i class="fa fa-lock"></i> Old password: </label>
                <input type="password" class="form-control" name="old" id="old" placeholder="Old password">
            </div>
            <div class="form-group">
                <label for="password"><i class="fa fa-lock"></i> Password: </label>
                <input type="password" class="form-control" name="password" id="password" placeholder="New password">
            </div>
            <p style="color: red" id="error"></p>
            <div align="center">
                <button id="changeButton" type="submit" class="btn btn-primary"><i class="fas fa-edit"></i> Change
                    now
                </button>
            </div>
        </form>
    </div>
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">

    </div>
</div>
<%@include file="footer.jsp" %>
