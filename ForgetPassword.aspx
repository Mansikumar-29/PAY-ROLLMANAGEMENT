<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="PayRoll.ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
<link rel="stylesheet" href="=" />
    <style>
      body{
             background-image:url("Images/PayRoll.jpg");

        }
   </style>
</head>
<body>
     <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <br />
        <section class="content" style="width: 130%">
            <div class="wraper container-fluid">
                <div class="container">
                    <table>
                        <tr style="width: 100%; height: 100%">
                            <td>
                                <div class="row">
                                    <div class="col-lg-4" style="width: 150%; height: 100%">
                                        <div class="panel panel-default">
                                            <div class="panel-heading" style="background-color: black; height: 100%; width: 100%">
                                                <p style="color: white; text-align: center; font-size: 30px">ForgetPassword</p>
                                            </div>
                                            <div class="panel-body">
                                                  <div class="form-group">
                                                    <div class="col-sm-12">
                                                        
                                                            
                                                        <asp:TextBox type="text" id="txtuname" runat="server" placeholder="UserName" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-12">
                                                        
                                                            
                                                        <asp:TextBox type="text" id="txtnewpwd" runat="server" placeholder="New Password" class="form-control" />
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <br />
                                                    <br />
                                                    <div class="col-sm-12">
                                                        <br />

                                                        <asp:TextBox type="text" id="txtcpwd" runat="server" placeholder="Confirm Password" class="form-control" /><br />
                                                    </div>
                                                    <br />
                                                </div>
                                                <br />
                                                <br />
                                                <div class="text-left" style="padding: 0px 0px 0px 10px">
                                                    <asp:Button ID="btnfgrt" runat="server" Text="Forgot Password"  OnClick="btnfgrt_Click" class="btn btn-primary w-xs m-b-5" />
                                                      <br />
                                                    <br />
                                                    <br />
                                                    <asp:Label ID="lblpwd" runat="server"  ></asp:Label>
                                                    </div>
                                                <br />
                                              

                                            </div>
                                           
                                        </div>
                                    </div>
                                </div>


                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
