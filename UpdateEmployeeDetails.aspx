<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateEmployeeDetails.aspx.cs" Inherits="PayRoll.UpdateEmployeeDetails" %>

<%@ Register Src="~/WebUserControl/header.ascx" TagPrefix="uc1" TagName="header" %>





<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
      <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
     <script type="text/javascript">
        $(function () {

            $("#txtdob,#txtdoj").datepicker({
                changeYear: true,
                changeMonth: true,
                yearRange: '1980:2021',
                dateFormat: 'dd/mm/yy'
            });
        });
     </script>
</head>
<body>
    <form id="form1" runat="server">
        
        <div>
            <uc1:header runat="server" ID="header" />
                        <div class="wraper container-fluid">
                <div class="container">
                    <h1 style="text-align:center">Employee Details</h1>
                    <br />
                    <br />
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="lblfname" runat="server"><span style="color:red">Name</span></asp:Label>
                                <asp:TextBox ID="txtfname" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server"><span style="color:red">Password</span></asp:Label>
                                <asp:TextBox ID="txtpwd" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label4" runat="server"><span style="color:red">Date Of Birth</span></asp:Label>
                                <asp:TextBox ID="txtdob" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                             </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server"><span style="color:red">Department</span></asp:Label>
                                  <asp:DropDownList runat="server" ID="ddldept"  CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                     
                          </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server"><span style="color:red">Gender</span></asp:Label>
                                <asp:RadioButtonList runat="server" ID="rdgender">
                                    <asp:ListItem Value="Male">Male</asp:ListItem>
                                    <asp:ListItem Value="Female">Female</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                    </div>
                      <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label9" runat="server"><span style="color:red">State</span></asp:Label>
                                <asp:DropDownList runat="server" ID="ddlstate"  CssClass="form-control">
                                      <asp:ListItem Value="Ap">AP</asp:ListItem>
                                    <asp:ListItem Value="TS">TS</asp:ListItem>
                                    <asp:ListItem Value="Maharastra">Maharastra</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label10" runat="server"><span style="color:red">City</span></asp:Label>
                                <asp:TextBox ID="txtcity" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label5" runat="server"><span style="color:red">Email</span></asp:Label>
                                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label6" runat="server"><span style="color:red">Mobile</span></asp:Label>
                                <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label7" runat="server"><span style="color:red">Address</span></asp:Label>
                                <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label8" runat="server"><span style="color:red">Designation</span></asp:Label>
                                <asp:TextBox ID="txtdesig" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                      <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label11" runat="server"><span style="color:red">PanCardNo</span></asp:Label>
                                <asp:TextBox ID="txtpancard" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                       
                    
                        </div>
                      
                    </div>

                    <div style="margin:auto;text-align: center; ">
                        <asp:Button ID="btnUpdate" runat="server" Text="Submit" CssClass="btn btn-danger" OnClick="btnUpdate_Click" OnClientClick="return validate();" />

                    </div>
                            </div>

               
                <br />
                <br />
                <br />
                <br />
            </div>

        </div>
            </div>
    </form>
</body>
</html>
