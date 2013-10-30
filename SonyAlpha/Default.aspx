<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="SonyAlpha._Default" %>
<%@ OutputCache Duration="3000" Location="Client" VaryByParam="None" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="SHORTCUT ICON" href="logo.ico"/>
    <meta content="" name="copyright" />
    <meta name="Description" content=""/>
    <meta name="Keywords" content=""/>
    <meta name="distribution" content="global" />
    <meta name="robots" content="follow, all" />
    <meta name="language" content="en, sv" />
    <meta content="" name="author"/>
    <link rel="stylesheet" type="text/css" href="css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="css/header.css"/>
    <link rel="stylesheet" type="text/css" href="css/footer.css"/>
    <link rel="stylesheet" type="text/css" href="css/styles.css"/>
    <script type="text/javascript" src="js/libs/modernizr-2.5.3.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager" runat="server" ScriptMode="Release"/>
    <div id="header"></div>
    <div id="wrapper">
        <div id="container">
            <asp:UpdatePanel ID="UpdatePanelMain" runat="server">
                <ContentTemplate>
                    <asp:PlaceHolder runat="server" ID="plhMain"></asp:PlaceHolder>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
    <div id="footer"></div>
    </form>
    <script type="text/javascript" src="js/libs/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="js/libs/bootstrap.min.js"></script>
    <!--[if IE 8]>    
      <script src="js/libs/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="js/plugins/jquery.bxslider.min.js"></script>
</body>
</html>
