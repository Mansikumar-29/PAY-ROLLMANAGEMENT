 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PayRoll.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <style>
      body{
             background-image:url("PayRoll.jpg");
             background-repeat:no-repeat;
             background-size:cover;
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
                                                <p style="color: white; text-align: center; font-size: 30px">Login</p>
                                            </div>
                                            <div class="panel-body">
                                                <div class="form-group">
                                                    <div class="col-sm-12">
                                                        <p style="font-size: 14px">
                                                            <br />
                                                            Welcome! Sign in to Access the PayRoll Management</p>

                                                        <br />
                                                        <asp:DropDownList runat="server" ID="ddluser" CssClass="form-control">
                                                            <asp:ListItem Value="Select User">Select User</asp:ListItem>
                                                            <asp:ListItem Value="Administrator">Administrator</asp:ListItem>
                                                            <asp:ListItem Value="Employee">Employee</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <br />
                                                        <br />
                                                        <asp:TextBox type="text" id="txtuname" runat="server" placeholder="Username" class="form-control" />
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <br />
                                                    <br />
                                                    <div class="col-sm-12">
                                                        <br />

                                                        <asp:TextBox type="text" id="txtpwd" runat="server" placeholder="Password" class="form-control" /><br />
                                                    </div>
                                                    <br />
                                                </div>
                                                <br />
                                                <br />
                                                <div class="text-left" style="padding: 0px 0px 0px 10px">
                                                    <asp:Button ID="btnsignin" runat="server" Text="Sign In" OnClick="btnsignin_Click" class="btn btn-primary w-xs m-b-5" />
                                               <a href="forgetpassword.aspx" style="">forget password</a>
                                                    </div>
                                                <br />
                                                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                                <a href="Registration.aspx" style=""><u>click here to register</u></a>

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
