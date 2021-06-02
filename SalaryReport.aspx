<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SalaryReport.aspx.cs" Inherits="PayRoll.SalaryReport" %>

<%@ Register Src="~/WebUserControl/header.ascx" TagPrefix="uc1" TagName="header" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <uc1:header runat="server" ID="header" />
            <div style="background-color: lightblue;">
                <div class="wraper container-fluid">
                    <div class="container">
                        <h1 style="text-align: center">Employee Salary Report</h1>
                        <br />
                        <br />
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="lblfname" runat="server">EmployeeId<span style="color:red">*</span></asp:Label>
                                    <asp:DropDownList ID="ddlname" runat="server" CssClass="form-control">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="Label2" runat="server">Employee Salary Month<span style="color:red">*</span></asp:Label>
                                    <asp:DropDownList ID="ddlsalmnth" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">Select Month</asp:ListItem>
                                        <asp:ListItem Value="January">January</asp:ListItem>
                                        <asp:ListItem Value="February">February</asp:ListItem>
                                        <asp:ListItem Value="March">March</asp:ListItem>
                                        <asp:ListItem Value="April">April</asp:ListItem>
                                        <asp:ListItem Value="May">May</asp:ListItem>
                                        <asp:ListItem Value="June">June</asp:ListItem>
                                        <asp:ListItem Value="July">July</asp:ListItem>
                                        <asp:ListItem Value="August">August</asp:ListItem>
                                        <asp:ListItem Value="September">September</asp:ListItem>
                                        <asp:ListItem Value="November">November</asp:ListItem>
                                        <asp:ListItem Value="December">December</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="Label3" runat="server">Provident Fund<span style="color:red">*</span></asp:Label>
                                    <asp:TextBox ID="txtpf" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="Label13" runat="server">Net Salary<span style="color:red">*</span></asp:Label>
                                    <asp:TextBox ID="txtntsal" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="Label9" runat="server">Employee Salary Year<span style="color:red">*</span></asp:Label>
                                    <asp:DropDownList runat="server" ID="ddlsalyear" CssClass="form-control">
                                        <asp:ListItem Value="0">Selected Value</asp:ListItem>
                                        <asp:ListItem Value="2017">2017</asp:ListItem>
                                        <asp:ListItem Value="2018">2018</asp:ListItem>
                                        <asp:ListItem Value="2019">2019</asp:ListItem>
                                        <asp:ListItem Value="2020">2020</asp:ListItem>
                                        <asp:ListItem Value="2021">2021</asp:ListItem>
                                        <asp:ListItem Value="2022">2022</asp:ListItem>
                                        <asp:ListItem Value="2023">2023</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="Label10" runat="server">Basic<span style="color:red">*</span></asp:Label>
                                    <asp:TextBox ID="txtbasic" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="form-group">
                            <asp:Label ID="Label6" runat="server">Medical Allowances<span style="color:red">*</span></asp:Label>
                            <asp:TextBox ID="txtmedical" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <asp:Label ID="Label7" runat="server">Gross<span style="color:red">*</span></asp:Label>
                            <asp:TextBox ID="txtgross" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <asp:Label ID="Label8" runat="server">Proffesional Tax<span style="color:red">*</span></asp:Label>
                            <asp:TextBox ID="txtpt" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server">Department<span style="color:red">*</span></asp:Label>
                            <asp:DropDownList runat="server" ID="ddldept" CssClass="form-control">
                                <asp:ListItem Value="0">Selected Value</asp:ListItem>
                                <asp:ListItem Value="1">Technical</asp:ListItem>
                                <asp:ListItem Value="2">NonTechnical</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                    </div>
                </div>


                <div style="margin: auto; text-align: center;">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-danger" OnClick="btnSubmit_Click" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-danger" OnClick="btnClear_Click" />
                    <br />
                    <br />
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </div>

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
