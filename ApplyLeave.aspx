<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplyLeave.aspx.cs" Inherits="PayRoll.ApplyLeave" %>

<%@ Register Src="~/WebUserControl/header.ascx" TagPrefix="uc1" TagName="header" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
     
</head>
<body>
    <form id="form1" runat="server">
        
        <div>
            <uc1:header runat="server" ID="header" />
            <div class="wraper container-fluid">
                <div class="container">
                    <h1 style="text-align: center">PayRoll/Apply Leave Details</h1>
                    <br />
                    <br />
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <asp:Label ID="lblfname" runat="server">EmployeeId<span style="color:red">*</span></asp:Label>
                                <asp:DropDownList ID="ddlname" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server">Date Of Leave<span style="color:red">*</span></asp:Label>
                                <asp:TextBox ID="txtldt" runat="server" CssClass="form-control"></asp:TextBox>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <asp:Label ID="Label4" runat="server">Reason<span style="color:red">*</span></asp:Label>
                                <asp:TextBox ID="txtreason" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server">Leave Status<span style="color:red">*</span></asp:Label>
                                <asp:TextBox ID="txtlst" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>



                    <div style="margin: auto; text-align: center;">
                        <asp:Button ID="btnupdate" runat="server" CssClass="btn btn-success" OnClick="btnupdate_Click" Text="Update" />
                        <br />
                        <br />
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
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
