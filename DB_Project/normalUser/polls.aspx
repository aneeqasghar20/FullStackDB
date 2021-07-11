<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="polls.aspx.cs" Inherits="DB_Project.normalUser.polls" %>

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
    <link rel="stylesheet" href="../../css/tabs.css">
    <title>Home Page | CBMS</title>
    <link rel="stylesheet" href="../../css/polls.css">
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
                        <a class="nav-link" aria-current="page" href="tickets.aspx">Tickets</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="polls.aspx">Polls</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search polls" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
    <!--  -->
    <!--  -->
    <!--  -->
    <br />
    <div class="container-fluid">
        <!-- Tab links -->
        <div class="tab">
            <button class="tablinks" onclick="openCity(event, 'createPolls')">Create Polls</button>
            <button class="tablinks" onclick="openCity(event, 'votePolls')">Vote on a Poll</button>
            <button class="tablinks" onclick="openCity(event, 'statsPolls')">Poll Statistics</button>
        </div>

        <!-- Tab content -->
        <div id="createPolls" class="tabcontent">
            <div class="container-fluid mt-4">
                <h3>Enter the Poll details</h3>
            </div>
            <form class=" mt-4 container-fluid" action="">

                <div class="mb-3">
                    <label for="exampleInputName" class="form-label">Enter the question of the poll</label>
                    <input type="text" class="form-control" id="exampleInputName" aria-describedby="emailHelp">
                    <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
                </div>
                <div class="mb-3">
                    <label for="exampleInputChoice_a" class="form-label">Enter the choice a of the selected poll</label>
                    <input type="text" class="form-control" id="exampleInputChoice_a" aria-describedby="emailHelp">
                    <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
                </div>
                <div class="mb-3">
                    <label for="exampleInputChoice_b" class="form-label">Enter the choice b of the selected poll</label>
                    <input type="text" class="form-control" id="exampleInputChoice_b" aria-describedby="emailHelp">
                    <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
                </div>
                <div class="mb-3">
                    <label for="exampleInputChoice_c" class="form-label">Enter the choice c of the selected poll</label>
                    <input type="text" class="form-control" id="exampleInputChoice_c" aria-describedby="emailHelp">
                    <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
                </div>
                <div class="mb-3">
                    <label for="exampleInputChoice_d" class="form-label">Enter the choice d of the selected poll</label>
                    <input type="text" class="form-control" id="exampleInputChoice_d" aria-describedby="emailHelp">
                    <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
                </div>

                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                    data-bs-target="#exampleModal">Submit</button>
                <button type="reset" class="btn btn-primary">Reset</button>

                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Do you want to save the poll in the
                                    database
                                </h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
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
            </form>

        </div>

        <div id="votePolls" class="tabcontent">
            <h3>Select the Poll to vote for</h3>
            <div class="container-fluid">
                <table id="customers">
                    <tr>
                        <th>
                            <form action="">

                                <label for="chkYes" id="question">
                                    <input type="radio" id="chkYes" name="matchType" onclick="ShowHideDiv()" />
                                    <bold>What is your favourite form of the game?</bold>
                                </label>
                                <!--  -->
                                <!-- <span class="form-label mb-3">Match Type</span>
                        <br>

                        <label for="chkNo">
                            <input type="radio" id="chkNo" name="matchType" onclick="ShowHideDiv()" />
                            Test Match
                        </label>
                        <label for="chkNo">
                            <input type="radio" id="chkNo" name="matchType" onclick="ShowHideDiv()" />
                            T20i
                        </label>
                        <br> -->
                                <br>
                                <div id="ticketType" style="display: none">
                                    <bold>What is your favourite form of the game?</bold>
                                    <br>
                                    <br>
                                    <label for="option_a">
                                        <input type="radio" id="option_a" name="matchType" />
                                        Test
                                    </label>
                                    <br />
                                    <label for="option_b">
                                        <input type="radio" id="option_b" name="matchType" />
                                        ODI
                                    </label>
                                    <br />
                                    <label for="option_c">
                                        <input type="radio" id="option_c" name="matchType" />
                                        T20
                                    </label>
                                    <br />
                                    <label for="option_d">
                                        <input type="radio" id="option_d" name="matchType" />
                                        T10
                                    </label>
                                    <br>
                                    <br>
                                    <button type="submit" class="btn btn-light">Submit</button>
                            </form>

            </div>
            </th>

            <!--  -->
            </tr>
            <tr>
                <th>
                    <form action="">

                        <label for="chkYes1" id="question1">
                            <input type="radio" id="chkYes1" name="matchType" onclick="ShowHideDiv1()" />
                            <bold>Should test cricket remain a 5 day contest?</bold>
                        </label>
                        <!--  -->
                        <!-- <span class="form-label mb-3">Match Type</span>
                        <br>

                        <label for="chkNo">
                            <input type="radio" id="chkNo" name="matchType" onclick="ShowHideDiv()" />
                            Test Match
                        </label>
                        <label for="chkNo">
                            <input type="radio" id="chkNo" name="matchType" onclick="ShowHideDiv()" />
                            T20i
                        </label>
                        <br> -->
                        <br>
                        <div id="ticketType1" style="display: none">
                            <bold>Should test cricket remain a 5 day contest?</bold>
                            <br>
                            <br>
                            <label for="option_a">
                                <input type="radio" id="Radio1" name="matchType" />
                                Keep test cricket at 5 days
                            </label>
                            <br />
                            <label for="option_b">
                                <input type="radio" id="Radio2" name="matchType" />
                                Reduce test cricket to 4 days
                            </label>
                            <br />
                            <label for="option_c">
                                <input type="radio" id="Radio3" name="matchType" />
                                Bring back timeless test cricket
                            </label>
                            <br />
                            <label for="option_d">
                                <input type="radio" id="Radio4" name="matchType" />
                                Keep test cricket at 2 days
                            </label>
                            <br>
                            <br>
                            <button type="submit" class="btn btn-light">Submit</button>
                    </form>

        </div>
        </th>

        <!--  -->
        </tr>
        <tr>
            <th>
                <form action="">

                    <label for="chkYes2" id="question2">
                        <input type="radio" id="chkYes2" name="matchType" onclick="ShowHideDiv2()" />
                        <bold>Who will win the ICC Cricket World Cup trophy 2021? </bold>
                    </label>
                    <br>
                    <div id="ticketType2" style="display: none">
                        <bold>Who will win the ICC Cricket World Cup trophy 2021? </bold>
                        <br>
                        <br>
                        <label for="option_a">
                            <input type="radio" id="Radio5" name="matchType" />
                            Australia

                        </label>
                        <br />
                        <label for="option_b">
                            <input type="radio" id="Radio6" name="matchType" />
                            England
                        </label>
                        <br />
                        <label for="option_c">
                            <input type="radio" id="Radio7" name="matchType" />
                            South Africa
                        </label>
                        <br />
                        <label for="option_d">
                            <input type="radio" id="Radio8" name="matchType" />
                            India
                        </label>
                        <br>
                        <br>
                        <button type="submit" class="btn btn-light">Submit</button>
                </form>

    </div>
    </th>

    <!--  -->
    </tr>

    </table>
    </div>
    </div>

    <div id="statsPolls" class="tabcontent">
        <div class="container-fluid">
            <h3>Select the Poll to see the stats for</h3>
            <div class="container-fluid">
                <table id="Table1">
                    <tr>
                        <th>
                            <form action="">

                                <label for="chk" id="question11">
                                    <input type="radio" id="chk" name="matchType" onclick="ShowHideStats()">
                                    What is your favourite form of the game?
                                    </input>

                                </label>
                            </form>

                            <br>

                            <div id="stats" style="display: none">
                                <bold>What is your favourite form of the game?</bold>
                                <pre>
    
                                </pre>
                                <div id="piechart"> </div>
                            </div>
                        </th>

                    </tr>
                
                    <tr>
                        <th>
                            <form action="">

                                <label for="chk1" id="question12">
                                    <input type="radio" id="chk1" name="matchType" onclick="ShowHideStats1()">
                                    Should test cricket remain a 5 day contest?
                                    </input>

                                </label>
                            </form>

                            <br>

                            <div id="stats1" style="display: none">
                                <bold>Should test cricket remain a 5 day contest?</bold>
                                <pre>

                                </pre>
                                <div id="piechart1"> </div>
                            </div>
                        </th>
                    </tr>
                </table>
            </div>


        </div>

    </div>


    <script src="../../js/tabs.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
    <script type="text/javascript"> //for poll voting
        function ShowHideDiv() {
            var chkYes = document.getElementById("chkYes");
            var ticketType = document.getElementById("ticketType");
            var question = document.getElementById("question");
            ticketType.style.display = chkYes.checked ? "block" : "none";
            question.style.display = "none";
        }
        function ShowHideDiv1() {
            var chkYes = document.getElementById("chkYes1");
            var ticketType = document.getElementById("ticketType1");
            var question = document.getElementById("question1");
            ticketType.style.display = chkYes.checked ? "block" : "none";
            question.style.display = "none";
        }
        function ShowHideDiv2() {
            var chkYes = document.getElementById("chkYes2");
            var ticketType = document.getElementById("ticketType2");
            var question = document.getElementById("question2");
            ticketType.style.display = chkYes.checked ? "block" : "none";
            question.style.display = "none";
        }
        function ShowHideStats() {
            var chkYes = document.getElementById("chk");
            var ticketType = document.getElementById("stats");
            var question = document.getElementById("question11");
            ticketType.style.display = chkYes.checked ? "flex" : "none";
            question.style.display = "none";
        }
        function ShowHideStats1() {
            var chkYes = document.getElementById("chk1");
            var ticketType = document.getElementById("stats1");
            var question = document.getElementById("question12");
            ticketType.style.display = chkYes.checked ? "flex" : "none";
            question.style.display = "none";
        }
    </script>


    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <script type="text/javascript">
        // Load google charts
        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawChart);

        // Draw the chart and set the chart values
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Polls', 'choices'],
                ['TEST', 7],
                ['ODI', 2],
                ['T20', 4],
                ['T10', 2]
            ]);

            // Optional; add a title and set the width and height of the chart
            var options = { 'title': 'Poll Stats', 'width': 500, 'height': 400 };

            // Display the chart inside the <div> element with id="piechart"
            var chart = new google.visualization.PieChart(document.getElementById('piechart'));
            chart.draw(data, options);

            var data1 = google.visualization.arrayToDataTable([
                ['Polls', 'choices'],
                ['Keep test cricket at 5 days', 3],
                ['Reduce test cricket to 4 days', 1],
                ['Bring back timeless test cricket', 4],
                ['Keep test cricket at 2 days', 2]
            ]);

            // Optional; add a title and set the width and height of the chart
            var options1 = { 'title': 'Poll Stats', 'width': 500, 'height': 400 };

            // Display the chart inside the <div> element with id="piechart"
            var chart1 = new google.visualization.PieChart(document.getElementById('piechart1'));
            chart1.draw(data1, options1);
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