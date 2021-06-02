<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSalaryReport.aspx.cs" Inherits="PayRoll.WebForm1" %>

<%@ Register Src="~/WebUserControl/header.ascx" TagPrefix="uc1" TagName="header" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
      <style type="text/css">
        .auto-style1 {
            width: 185px;
        }
        .auto-style2 {
            width: 107px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        
        <div>
            <uc1:header runat="server" ID="header" />
            <div class="container">
                <div class="row">
                    <div style="margin: auto; color:brown; text-align: center">
                        <asp:DropDownList ID="ddlname" runat="server" CssClass="form-control">
                        </asp:DropDownList>
                       <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-success" Text="Submit"   OnClick="btnSubmit_Click" />

                    </div>
                    <div style="margin-left:50px;color:red;font-size:larger;">
                        <table>
                            <tr>
                                <td class="auto-style1"> Employee Name:</td>
                                <td>  <asp:Label runat="server" ID="lblname"></asp:Label></td>
                            </tr>
                            <tr>
                                <td class="auto-style1"> Gender:</td>
                                <td> <asp:Label runat="server" ID="lblgender"></asp:Label></td>
                            </tr>
                            <tr>
                                <td class="auto-style1"> Employee Salary Month: </td>
                                <td>  <asp:Label runat="server" ID="lblsalmnth"></asp:Label>
                                      <asp:Label runat="server" ID="lblsalyear"></asp:Label>
                                </td>
                            </tr>
                            
                            <tr>
                                <td  class="auto-style1"> Location :</td>
                                <td><asp:Label runat="server" ID="lblloc"></asp:Label></td>
                            </tr>
                            <tr>
                                <td  class="auto-style1"> Designation :</td>
                                <td>  <asp:Label runat="server" ID="lbldesig"></asp:Label></td>
                            </tr>
                        </table>
              
                        <hr />
                        <table>
                            <tr>                               
                                <td class="auto-style1">Earnings</td>
                                <td class="auto-style2">Regular</td>
                                <td colspan="2">Deductions</td>
                               
                            </tr>
                           <tr>
                              <td colspan="4"> <hr /></td>
                           </tr>
                            <tr>
                                <td class="auto-style1">Basic :</td>
                                <td class="auto-style2">
                                    <asp:Label runat="server" ID="lblbasic"></asp:Label></td>
                                <td>Proffesional Tax : </td>
                                <td>
                                    <asp:Label runat="server" ID="lblpt"></asp:Label></td>
                            </tr>
                            
                            <tr>
                                
                                <td>
                                    <asp:Label runat="server" ID="lblpf"></asp:Label></td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Medical Allowances :</td>
                                <td class="auto-style2">
                                    <asp:Label runat="server" ID="lblmedical"></asp:Label></td>
                            </tr>
                             <tr>
                              <td colspan="4"> <hr /></td>
                           </tr>
                            <tr>
                                <td class="auto-style1">Gross Salary : </td>
                                <td class="auto-style2">
                                    <asp:Label runat="server" ID="lblgross"></asp:Label></td>
                                <td>Total Deductions :</td>
                                <td>
                                    <asp:Label runat="server" ID="lbltd"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
