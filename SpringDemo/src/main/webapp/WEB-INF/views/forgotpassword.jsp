<%--
  Created by IntelliJ IDEA.
  User: vanth
  Date: 09-Mar-19
  Time: 08:01
  To change this template use File | Settings | File Templates.
--%>
<%@include file="layout.jsp" %>
<style>
    #verify_form {
        padding-top: 50px;
    }

    input {
        margin: 7px;
    }
</style>
<script>
    $(document).ready(function () {
        $("#continueButton").on('click', function () {
            var email = $('#email').val();
            var checkForm = true;
            if (email === '') {
                $('#error').html('Email not null.');
                return false;
            }
            return true;
        });
        $('#verify_form').on('keyup', function () {
            var email = $('#email').val();
            if (email !== '') {
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
        <form id="verify_form" action="" method="post" role="form">
            <legend style="text-align: center">Verify account</legend>

            <div class="form-group">
                <label for="email"><i class="fa fa-envelope"></i> Your Email: </label>
                <input type="text" class="form-control" name="email" id="email" placeholder="Email here">
            </div>

            <p style="color: red" id="error"></p>
            <div align="center">
                <button id="continueButton" type="submit" class="btn btn-primary"><i class="fa fa-paper-plane"></i> Send verify
                    code
                </button>
            </div>
        </form>
    </div>
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">

    </div>
</div>
<%@include file="footer.jsp" %>

