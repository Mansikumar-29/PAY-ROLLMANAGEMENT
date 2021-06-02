<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="PayRoll.Registration" %>


<%@ Register Src="~/WebUserControl/header.ascx" TagPrefix="uc1" TagName="header" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
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
    <style> 
        body{
            background-image:url("images/PayRoll.jpg");
        }
    </style>


  
</head>
<body>
    <form id="form1" runat="server">
        
        <div>             
            <div class="wraper container-fluid">
                <div class="container">
                    <h1 style="text-align:center">PayRoll/Employee Details</h1>
                    <br />
                    <br />
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="lblfname" runat="server">Name<span style="color:red">*</span></asp:Label>
                                <asp:TextBox ID="txtfname" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server">Password<span style="color:red">*</span></asp:Label>
                                <asp:TextBox ID="txtpwd" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label4" runat="server">Date OF Birth<span style="color:red">*</span></asp:Label>
                                <asp:TextBox ID="txtdob" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
             
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label13" runat="server">Department<span style="color:red">*</span></asp:Label>
                                <asp:DropDownList runat="server" ID="DropDownList1" CssClass="form-control">
                                     <asp:ListItem Value="0">Selected Value</asp:ListItem>
                                    <asp:ListItem Value="Technical">Technical</asp:ListItem>
                                    <asp:ListItem Value="NonTechincal">NonTechnical</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>


                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server">Gender<span style="color:red">*</span></asp:Label>
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
                                <asp:Label ID="Label9" runat="server">State<span style="color:red">*</span></asp:Label>
                                <asp:DropDownList runat="server" ID="ddlstate" CssClass="form-control">
                                     
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label10" runat="server">City<span style="color:red">*</span></asp:Label>
                                <asp:TextBox ID="txtcity" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label5" runat="server">Email<span style="color:red">*</span></asp:Label>
                                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label6" runat="server">Mobile<span style="color:red">*</span></asp:Label>
                                <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label7" runat="server">Address<span style="color:red">*</span></asp:Label>
                                <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label8" runat="server">Designation<span style="color:red">*</span></asp:Label>
                                <asp:TextBox ID="txtdesig" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                      <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label11" runat="server">PanCardNo<span style="color:red">*</span></asp:Label>
                                <asp:TextBox ID="txtpancard" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>

                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <asp:Label ID="Label12" runat="server">Pincode<span style="color:red">*</span></asp:Label>
                                <asp:TextBox ID="txtpincode" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                   
                        </div>

                    <div style="margin:auto;text-align: center; ">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-danger" OnClick="btnSubmit_Click"  />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-danger" OnClick="btnClear_Click" />

                    </div>

                </div>
                <br />
                <br />
                <br />
                <br />
            </div>
       
    </form>
</body>
</html>
