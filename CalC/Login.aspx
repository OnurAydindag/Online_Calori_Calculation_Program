<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CalC.Login1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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

        <div>
        </div>
      <div class="theme-loader">
      <div class="loader-track">
          <div class="preloader-wrapper">
              <div class="spinner-layer spinner-blue">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>
              <div class="spinner-layer spinner-red">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>

              <div class="spinner-layer spinner-yellow">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>

              <div class="spinner-layer spinner-green">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>
          </div>
      </div>
          
  </div>
    </form>
  <!-- Pre-loader end -->

    <section class="login-block">
        <!-- Container-fluid starts -->
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <!-- Authentication card start -->

                        <form class="md-float-material form-material" runat="server">
                            <div class="text-center">
                               <h2>Online Calori Calculating Program</h2>
                            </div>
                            <div class="auth-box card">
                                <div class="card-block">
                                    <div class="row m-b-20">
                                        <div class="col-md-12">
                                            <h3 class="text-center">User Login</h3>
                                        </div>
                                    </div>
                                    <div class="form-group form-primary">
                                        <span class="form-bar"></span>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label2" runat="server" Text="mail"></asp:Label>

                                       
                                    </div>
                                    <div class="form-group form-primary">
                                            <span class="form-bar"></span>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label1" runat="server" Text="password"></asp:Label>
                                        
                                    </div>
                                    
                                    <div class="row m-t-30">
                                        <div class="col-md-12">
                                            <button type="button" class="btn girisBtn btn-md btn-block waves-effect waves-light text-center m-b-20">Login</button>
                                            
                                            
                                             <div class>
                                             <asp:Label ID="Label6" runat="server" Text="Mail:user1@gmail.com"></asp:Label>
                                            </div>
                                             <div class>
                                             <asp:Label ID="Label7" runat="server" Text="Password:123456"></asp:Label>
                                            </div>
                                       
                                            <div class>
                                             <asp:Label ID="Label4" runat="server" Text="label"></asp:Label>
                                            </div>

                                            
                                        </div>
                                    </div>
                                  
                                    
                                </div>
                            </div>
                        </form>
                        <!-- end of form -->
                </div>
                <!-- end of col-sm-12 -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container-fluid -->
    </section>
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

