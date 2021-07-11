<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="choose.aspx.cs" Inherits="DB_Project.choose" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/choose.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <!-- Load an icon library to show a hamburger menu (bars) on small screens -->
</head>

<body>
    <div class="rca-column-12">
        <div class="rca-logo">
            <h2>
                <div style="display: flex;justify-content: center;text-align: center;">
                    <span><img src="../images/log.svg" style="width: 50px; font-weight: 300;"></span><span>CBMS</span>
                    
                </div>
                <hr>
                <span style="display: flex;justify-content: center;text-align: center;">Login Page</span>

            </h2>
        </div>
    </div>
    <!-- <div class="header"> Login/Signup </div> -->

    <div class="container">
        <a href="userChoice.aspx">
            <button class="btn transparent" id="sign-up-btn">
                User
            </button>
        </a>
        <a href="admin/login.aspx">
            <button class="btn transparent" id="Button1">
                Administrator
            </button>
        </a>
    </div>
</body>

</html>