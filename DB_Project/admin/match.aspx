<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="match.aspx.cs" Inherits="DB_Project.admin.match" %>

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
    <title>Manage Matches| CBMS</title>
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

        .dropdown2 {
            border: 2px solid #4e4c4c;
            border-radius: 7px;
            color: black;
            background-color: white;
            margin: 4px;
            padding: 4px;
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
                    <span><img src="../../images/log.svg"
                            style="width: 50px; font-weight: 300;"></span><span>CBMS</span>

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
                        <a class="nav-link" aria-current="page" href="stadium.aspx">Stadium</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="enclosure.aspx">Enclosures</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="official.aspx">Cricket Board Official</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="match.aspx">Matches</a>
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
                <form class="d-flex" runat="server">
<asp:TextBox ID="TextBox1" runat="server" Width="247px" class="form-control me-2" placeholder="Search matches"
                        aria-label="Search" >

                    </asp:TextBox>&nbsp&nbsp
                    <asp:Button ID="Button1" runat="server" Text="Search" Width="119px" class="btn btn-outline-success" OnClick="Search_Button_Click" />
                    <br/> <br/>
                
            </div>
        </div>
    </nav>
    <div class="container-fluid mt-4">
        <div id="message" runat="server">


                <asp:GridView ID="ItemGrid" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" >

                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        <h3>Enter the Match details</h3>
    </div>
    <div class=" mt-4 container-fluid" >
        <div class="mb-3">
            <label for="exampleInputName" class="form-label">Enter the Playing Country 1</label>
            <br>
            <select class="dropdown2 ">
                <option value="">Pakistan</option>
                <option value="">England</option>
                <option value="">India</option>
                <option value="">Australia</option>
                <option value="">New Zealand</option>
                <option value="">Zimbabwe</option>
            </select>
            <!-- <input type="text" class="form-control" id="exampleInputName" aria-describedby="emailHelp"> -->
            <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
        </div>
        <div class="mb-3">
            <label for="exampleInputName" class="form-label">Enter the Playing Country 2</label>
            <br>
            <select class="dropdown2 ">
                <!-- <option value="">Pakistan</option> -->
                <option value="">England</option>
                <option value="">India</option>
                <option value="">Australia</option>
                <option value="">New Zealand</option>
                <option value="">Zimbabwe</option>
            </select>
            <!-- <input type="text" class="form-control" id="exampleInputName" aria-describedby="emailHelp"> -->
            <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
        </div>

        <div class="mb-3">
            <label for="exampleInputName" class="form-label">Enter the name of the Stadium in which match will take
                place</label>
            <br>
            <select class="dropdown2 ">
                <option value="">Qaddafi Stadium</option>
                <option value="">National Stadium</option>
                <option value="">India</option>
                <option value="">Australia</option>
                <option value="">New Zealand</option>
                <option value="">Zimbabwe</option>
            </select>
            <!-- <input type="text" class="form-control" id="exampleInputName" aria-describedby="emailHelp"> -->
            <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
        </div>
        <div class="mb-3">
            <label for="Status" class="form-label">Status</label>
            <div>
                <input type="radio" name="MyGender" id="Status"> Open
                <input type="radio" name="MyGender" id="Radio1"> Closed
                <!-- Other <input type="radio" name="MyGender" id="Status"> -->
            </div>
            <!-- <input type="number" class="form-control" id="exampleInputCapacity" aria-describedby="emailHelp"> -->
            <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
        </div>
        <div class="mb-3">
            <label for="exampleInputName" class="form-label">Enter the name of the Cricket Board Official</label>
            <input type="text" class="form-control" id="exampleInputName" aria-describedby="emailHelp">
            <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
        </div>
        <div class="mb-3">
            <label for="exampleInputCapacity" class="form-label">Date & Time of the match</label>
            <input type="datetime-local" class="form-control" id="exampleInputCapacity" aria-describedby="emailHelp">
            <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
        </div>
        <div class="mb-3">
            <span class="form-label mb-3">Match Type</span>
            <br>
            <label for="chkYes">
                <input type="radio" id="chkYes" name="matchType" onclick="ShowHideDiv()" />
                ODI
            </label>
            <label for="chkNo">
                <input type="radio" id="chkNo" name="matchType" onclick="ShowHideDiv()" />
                Test Match
            </label>
            <label for="chkNo">
                <input type="radio" id="Radio2" name="matchType" onclick="ShowHideDiv()" />
                T20i
            </label>
            <br>
            <br>
            <div id="ticketType" style="display: none">
                Ticket Type:
                <br>
                <!-- <input type="text" id="txtPassportNumber" /> -->
                <select class="dropdown2 ">
                    <option value="">Discounted</option>
                    <option value="">Pass</option>
                </select>


            </div>

            <!-- <button type="submit" class="btn btn-primary">Submit</button> -->
            <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                data-bs-target="#exampleModal">Submit</button>
            <button type="reset" class="btn btn-primary">Reset</button>

            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Do you want to save the match in the database
                            </h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <!-- <div class="modal-body">
                        ...
                    </div> -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </div>
                </div>
            </div>
    </div>
        </form>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
    <script type="text/javascript">
        function ShowHideDiv() {
            var chkYes = document.getElementById("chkYes");
            var ticketType = document.getElementById("ticketType");
            ticketType.style.display = chkYes.checked ? "block" : "none";
        }
    </script>
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