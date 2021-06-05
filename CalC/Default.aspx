<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CalC._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Material Able bootstrap admin template by Codedthemes</title>
    <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 10]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="keywords" content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
    <meta name="author" content="Codedthemes" />
    <!-- Favicon icon -->

    <link rel="icon" href="tasarim/assets/images/favicon.ico" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="tasarim/assets/css/bootstrap/css/bootstrap.min.css">
    <!-- waves.css -->
    <link rel="stylesheet" href="tasarim/assets/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- themify-icons line icon -->
    <link rel="stylesheet" type="text/css" href="tasarim/assets/icon/themify-icons/themify-icons.css">
    <!-- ico font -->
    <link rel="stylesheet" type="text/css" href="tasarim/assets/icon/icofont/css/icofont.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" type="text/css" href="tasarim/assets/icon/font-awesome/css/font-awesome.min.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="tasarim/assets/css/style.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>

        <div class="container">
            <div class="row mt-3 mb-3">
                <div class="col-12">
                    <h1>Online Calori Calculating Program</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="row">
                        <div class="col-12 px-3 mx-3 card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-8">
                                        <div class="input-group mb-3" style="left: 0px; top: 0px">
                                            <span class="input-group-text" id="basic-addon1">Food Name:</span>
                                            <asp:DropDownList ID="DropDownList1" CssClass=" form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name"></asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cal.dbConnectionString %>" SelectCommand="SELECT [name] FROM [foods]"></asp:SqlDataSource>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-8">
                                        <div class="input-group mb-3">
                                            <span class="input-group-text pl-3" id="basic-addon1">Serving</span>
                                            <input type="number" class="form-control" placeholder="Gr" aria-label="Gr" aria-describedby="basic-addon1">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-8">
                                        <div class="input-group mb-3">
                                            <span class="input-group-text pl-3" id="basic-addon1">Calories </span>
                                            <input type="number" class="form-control" placeholder="243" aria-label="" aria-describedby="basic-addon1">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-8">
                                        <div class="input-group mb-3">
                                            <span class="input-group-text pl-3" id="basic-addon1">Meal: </span>
                                            <style>
                                                td {
                                                    display: flex;
                                                    align-items: center
                                                }

                                                    td > label {
                                                        margin-bottom: 0;
                                                    }
                                            </style>
                                            <asp:RadioButtonList ID="rblist1" CssClass="d-flex align-item-center flex-row" runat="server" CellPadding="10" CellSpacing="1" RepeatDirection="Horizontal">

                                                <asp:ListItem Text="Breakfast" Value="1" />
                                                <asp:ListItem Text="Lunch" Value="2" />
                                                <asp:ListItem Text="Dinner" Value="3" />


                                            </asp:RadioButtonList>

                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="d-flex justify-content-end">
                                            <asp:Button runat="server" ID="Save" Text="Save" class="btn btn-success" OnClick="save_Click" />

                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 px-3 mx-3 card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="card bg-warning text-dark">
                                            <div class="card-header ">Breakfast</div>
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-md-4">Food</div>
                                                    <div class="col-md-4">Serving (gr)</div>
                                                    <div class="col-md-4">Calori</div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">tomato</div>
                                                    <div class="col-md-4">80</div>
                                                    <div class="col-md-4">14</div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">meat</div>
                                                    <div class="col-md-4">240</div>
                                                    <div class="col-md-4">243</div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">milk</div>
                                                    <div class="col-md-4">200</div>
                                                    <div class="col-md-4">85</div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card bg-danger text-light">
                                            <div class="card-header ">Lunch</div>
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-md-4">Food</div>
                                                    <div class="col-md-4">Serving (gr)</div>
                                                    <div class="col-md-4">Calori</div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">cheese</div>
                                                    <div class="col-md-4">45</div>
                                                    <div class="col-md-4">201</div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">egg</div>
                                                    <div class="col-md-4">85</div>
                                                    <div class="col-md-4">138</div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card bg-primary text-light">
                                            <div class="card-header ">Dinner</div>
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-md-4">Food</div>
                                                    <div class="col-md-4">Serving (gr)</div>
                                                    <div class="col-md-4">Calori</div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">olive</div>
                                                    <div class="col-md-4">25</div>
                                                    <div class="col-md-4">17</div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="card bg-success text-liğ">
                                            <div class="card-header h2">Total Calories</div>
                                            <div class="card-body">698</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="d-flex justify-content-end">
                                            <button class="btn btn-danger">
                                                Clear
                                            </button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </form>


    <script type="text/javascript" src="tasarim/assets/js/jquery/jquery.min.js "></script>
    <script type="text/javascript" src="tasarim/assets/js/jquery-ui/jquery-ui.min.js "></script>
    <script type="text/javascript" src="tasarim/assets/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="tasarim/assets/js/bootstrap/js/bootstrap.min.js "></script>
    <!-- waves js -->
    <script src="tasarim/assets/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="tasarim/assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>
    <script type="text/javascript" src="tasarim/assets/js/common-pages.js"></script>
</body>
</html>
