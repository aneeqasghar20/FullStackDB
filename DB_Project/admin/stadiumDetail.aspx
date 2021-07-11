<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stadiumDetail.aspx.cs" Inherits="DB_Project.admin.stadiumDetail" %>

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
    <title>Manage Stadiums| CBMS</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #E6E6E6;
        }

        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }


        .rca-column-12 {
            width: 100%;
        }

        .rca-logo h2 {
            margin: 0px;
            padding: 20px 0px;
            font-weight: normal;
        }

        .rca-logo h2 span {
            vertical-align: middle;
            display: inline-block;
        }

        .rca-logo h2 img {
            max-width: 100%;
            max-height: 50px;
            vertical-align: middle;
            padding: 5px;
        }

        @media only screen and (max-width:800px) {
            .sidepanel {
                width: 0;
                position: fixed;
                z-index: 1;
                height: 250px;
                top: 0;
                left: 0;
                background-color: #111;
                overflow-x: hidden;
                transition: 0.5s;
                padding-top: 60px;
                height: 100%;

            }

            .sidepanel a {
                padding: 8px 8px 8px 32px;
                text-decoration: none;
                font-size: 25px;
                color: #818181;
                display: block;
                transition: 0.3s;

            }

            .sidepanel a:hover {
                color: #f1f1f1;
            }

            .sidepanel .closebtn {
                position: absolute;
                top: 0;
                right: 25px;
                font-size: 36px;
            }

            .openbtn {
                font-size: 20px;
                cursor: pointer;
                background-color: #111;
                color: white;
                padding: 10px 15px;
                border: none;
            }

            .openbtn:hover {
                background-color: #444;
            }

            .navbar,
            navbar-expand-lg,
            navbar-light,
            bg-light {
                display: none;
            }

        }

        @media only screen and (min-width:800px) {
            .sidepanel {
                display: none;
            }

            #mySidepanel {
                display: none;
            }

            .openbtn {
                display: none;
            }
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            padding: 12px 16px;
            z-index: 1;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }
        #customers {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #customers td,
        #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #customers tr:hover {
            background-color: #ddd;
        }

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #4e4e4e;
            color: white;
        }
    </style>
</head>

<body>
    <div id="mySidepanel" class="sidepanel">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
        <a href="home.aspx">Home</a>
        <a href="stadium.aspx">Stadium</a>
        <a href="enclosure.aspx">Enclosures</a>
        <a href="official.aspx">Cricket Board Official</a>
        <a href="match.aspx">Matches</a>
        <a href="expenses.aspx">Expenses</a>
    </div>
    <button class="openbtn" onclick="openNav()">☰</button>
    <!-- Logo Holder -->
    <div class="rca-column-12">
        <div class="rca-logo">
            <h2>
                <div style="display: flex;justify-content: center;text-align: center;">
                    <span><img src="../../images/log.svg" style="width: 50px; font-weight: 300;"></span><span>CBMS</span>

                </div>
                <hr>
                <span style="display: flex;justify-content: center;text-align: center;">Admin Panel</span>
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
            <!-- <a class="navbar-brand" href="#">Home</a> -->
            <!-- <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button> -->
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="home.aspx">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="stadium.aspx">Stadium</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="enclosure.aspx">Enclosures</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="official.aspx">Cricket Board Official</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="match.aspx">Matches</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="expenses.aspx">Expenses</a>
                    </li>
                    <!-- <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            Dropdown
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Action</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li> -->

                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search stadium" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
    <div class="container-fluid mt-4">
        <h3>Stadium Details</h3>
        <div style="display: flex;flex-direction: column;align-items: center;">
            <img src="../../images/stadium.png" alt="stadium" style="width: 30%;">
        </div>
    </div>
    <div class="container-fluid">
        <table id="customers">
           
            <tr>
                <th>Stadium Name</th>
                <td>Darren Sammy International Cricket Ground</td>
            </tr>
            <tr>
                <th>Location</th>
                <td>Guyana, West Indies</td>
            </tr>
            <tr>
                <th>Capacity</th>
                <td>55000</td>
            </tr>
            <tr>
                <th>Flood Lights</th>
                <td>Yes</td>
            </tr>
            <tr>
                <th>Address</th>
                <td> Gulberg, Lahore</td>
            </tr>
        </table>
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