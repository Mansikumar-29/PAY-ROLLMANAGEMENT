<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkSheet.aspx.cs" Inherits="PayRoll.WorkSheet1" %>


<%@ Register Src="~/WebUserControl/header.ascx" TagPrefix="uc1" TagName="header" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 153px;
        }

        .auto-style2 {
            width: 59px;
        }

        .auto-style2 {
            width: 59px;
        }
    </style>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
    <script type="text/javascript">
        $(function () {

            $("#txtdate").datepicker({
                changeYear: true,
                changeMonth: true,
                yearRange: '1980:2021',
                dateFormat: 'dd/mm/yy'
            });
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $('#txtst,#txtet').timepicker({
                timeFormat: 'h:mm p',
                interval: 60,
                minTime: '8',
                maxTime: '11:00pm',
                defaultTime: '9',
                startTime: '8:00',
                dynamic: false,
                dropdown: true,
                scrollbar: true
            });
        });
    </script>
    <style type="text/css">
        .ui-datepicker {
            font-size: 8pt !important
        }
        
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
        
        <div>           
            <uc1:header runat="server" ID="header" />
            <div>
                <div class="wraper container-fluid">
                    <div class="container">
                        <h1 style="text-align: center;color:red">Employee Work Sheet</h1>
                        <br />
                        <br />
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="lblfname" runat="server"><span style="color:red">EmpId</span></asp:Label>
                                    <asp:DropDownList runat="server" ID="ddlid" CssClass="form-control">
                                    </asp:DropDownList>
                                </div>
                            </div>
                           <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="Label2" runat="server"><span style="color:red">Department</span></asp:Label>
                                    <asp:DropDownList runat="server" ID="ddldept" CssClass="form-control">
                                    <asp:ListItem Value="Technical">Technical</asp:ListItem>
                                    <asp:ListItem Value="NonTechincal">NonTechnical</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>                      
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="Label1" runat="server"><span style="color:red" >Day</span></asp:Label>
                                    <asp:DropDownList runat="server" ID="ddlday" CssClass="form-control">
                                        <asp:ListItem Value="0">Selected Day</asp:ListItem>
                                        <asp:ListItem Value="Mon">Monday</asp:ListItem>
                                        <asp:ListItem Value="Mon">Tuesday</asp:ListItem>
                                        <asp:ListItem Value="Mon">Wednesday</asp:ListItem>
                                        <asp:ListItem Value="Mon">Thursday</asp:ListItem>
                                        <asp:ListItem Value="Mon">Friday</asp:ListItem>
                                        <asp:ListItem Value="Mon">Saturday</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="Label9" runat="server"><span style="color:red">Date</span></asp:Label>

                                    <asp:TextBox ID="txtdate" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                       
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <asp:Label ID="Label5" runat="server"><span style="color:red">StartTime</span></asp:Label>
                                    <asp:TextBox ID="txtst" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="Label6" runat="server"><span style="color:red">ProjectStatus</span></asp:Label>
                                    <asp:TextBox ID="txtps" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="Label7" runat="server"><span style="color:red">EndTime</span></asp:Label>
                                    <asp:TextBox ID="txtet" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="Label8" runat="server"><span style="color:red">OverTimeHours</span></asp:Label>
                                    <asp:TextBox ID="txtoth" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="Label11" runat="server"><span style="color:red">TotalWorkingHours</span></asp:Label>
                                    <asp:TextBox ID="txttwh" runat="server" CssClass="form-control"></asp:TextBox>
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
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
            </div>


       
    </form>
</body>
</html>
