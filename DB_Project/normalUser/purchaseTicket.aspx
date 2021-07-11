<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="purchaseTicket.aspx.cs" Inherits="DB_Project.normalUser.purchaseTicket" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <!-- Load an icon library to show a hamburger menu (bars) on small screens -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Normal User Tickets | CBMS</title>
    <link rel="stylesheet" href="../../css/polls.css">
    <style>
        #customers tr th {
            text-align: center;
        }

        #customers tr th a {
            text-decoration: none;
            font-weight: bold;
            color: white;
        }
    </style>
</head>

<body>
    <div id="mySidepanel" class="sidepanel">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
        <a href="home.aspx">Home</a>
        <a href="tickets.aspx">Tickets</a>
        <a href="polls.aspx">Polls</a>
    </div>
    <button class="openbtn" onclick="openNav()">☰</button>
    <!-- Logo Holder -->
    <div class="rca-column-12">
        <div class="rca-logo">
            <h2>
                <div style="display: flex;justify-content: center;text-align: center;">
                    <span><img src="../../images/log.svg"
                            style="width: 50px; font-weight: 300;"></span><span>CBMS</span>

                </div>
                <hr>
                <span style="display: flex;justify-content: center;text-align: center;">Normal User</span>
                <div style="display: flex;justify-content: center;text-align: center;">
                    <span>
                        <div class="dropdown">
                            <a href="../index.aspx"><i class="fas fa-sign-out-alt"></i></a>
                    </span>
                    <div class="dropdown-content">
                        <p>Signout</p>
                    </div>
                </div>
            </h2>
        </div>
    </div>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="home.aspx">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="tickets.aspx">Tickets</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="polls.aspx">Polls</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search matches" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
    <br />
    <div class="container-fluid">
        <h3>Ticket Details</h3>
        <br>
        <div class="container-fluid">
            <table id="customers">
                <tr>
                    <th>
                        MATCH
                    </th>
                    <td>
                        PAK VS SL
                    </td>
                </tr>
                <tr>
                    <th>
                        DATE
                    </th>
                    <td>
                        25 - June - 2021
                    </td>
                </tr>
                <tr>
                    <th>
                        TIME
                    </th>
                    <td>
                        3:00 pm
                    </td>
                </tr>
                <tr>
                    <th>
                        STADIUM
                    </th>
                    <td>
                        National Stadium, Karachi
                    </td>
                </tr>
                <tr>
                    <th>
                        TICKET PRICE
                    </th>
                    <td>
                        Rs. 500/-
                    </td>
                </tr>
            </table>
        </div>
        <div class="container"
            style="display:flex;flex-direction:  center;align-items:center;margin:5%;padding-left: 20%;">
            <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal"
                style="padding:1.25%;margin:2%;">Submit</button>
            <button type="reset" class="btn btn-secondary" style="padding:1.25%">Reset</button>
        </div>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Do you want to purchase the ticket
                        </h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <!-- <div class="modal-body">
                        ...
                    </div> -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <form action="">
                            <button type="submit" class="btn btn-secondary">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
            crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>

</body>
<script>
    function openNav() {
        document.getElementById("mySidepanel").style.width = "250px";

    }

    function closeNav() {
        document.getElementById("mySidepanel").style.width = "0";
    }
</script>

</html>