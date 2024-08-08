<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myreport.aspx.cs" Inherits="LoginPage.Student1.myreport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Report</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        
        #intro {
            background-image: url(https://www.pixel-studios.com/blog/wp-content/uploads/2018/12/012.jpg);
            background-size: cover;
            background-position: center;
            min-height: 100vh;
            padding-top: 100px; 
            padding-bottom: 50px;
    }
        @media (min-width: 992px) {
      #intro {
        margin-top: -58.59px;
      }
    }
        .inner{
            background-color:#f8f9fa;

            
        }

        
    </style>
</head>
<body>
    <nav class="navbar navbar-light navbar-expand-lg" style="background-color: #e3f2fd;">
  <div class="container-fluid">
    <a class="navbar-brand" href="StudentHomePage.aspx">
      <img src="https://www.svgrepo.com/show/487517/library.svg" alt="" width="50" height="35" class="d-inline-block align-text-top"/>
      LBMS
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" href="StudentHomePage.aspx">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="myaccount.aspx" >My Account</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="myreport.aspx">My Report </a>
        </li>
          <li class="nav-item">
          <a class="nav-link" href="penaltypage.aspx">Penalty </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="BookReport.aspx">Book Report </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="../Logout.aspx">LogOut </a>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"/>
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
    <form id="form1" runat="server">
     <div id="intro" class="bg-image shadow-2-strong center">
         <div class="text-center">
             <div class="inner d-inline-block rounded-3">
             <h1 class="px-2">Coming Soon......</h1>
         </div>
         </div>
         
         
         </div>
    </form>
</body>
</html>
