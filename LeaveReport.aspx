<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeaveReport.aspx.cs" Inherits="PayRoll.LeaveReport" %>

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
            <div class="container">
                <div class="row">
                    <asp:GridView ID="gdvleave" runat="server" PageSize="10" AutoGenerateColumns="False" CellPadding="3" Style="width: 100%; height: 30px; border: 0px" AllowPaging="True">
                        <Columns>
                            
                            <asp:TemplateField HeaderText="Leave Id">                 
                   <ItemTemplate>
                       <asp:Label ID="lbllid" runat="server" Text='<%#Eval("LeaveId") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Employee Id">
                   <EditItemTemplate>
                       <asp:TextBox ID="txtname" runat="server" Text='<%#Eval("EmpId") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="lblname" runat="server" Text='<%#Eval("EmpId") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
                   <asp:TemplateField HeaderText="Date Of Leave">
                   <EditItemTemplate>
                       <asp:TextBox ID="txtdol" runat="server" Text='<%#Eval("DateOfLeave") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="lbldol" runat="server" Text='<%#Eval("DateOfLeave") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
                   <asp:TemplateField HeaderText="Reason">
                   <EditItemTemplate>
                       <asp:TextBox ID="txtrsn" runat="server" Text='<%#Eval("Reason") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="lblrsn" runat="server" Text='<%#Eval("Reason") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
                   <asp:TemplateField HeaderText="Leave Status">
                   <EditItemTemplate>
                       <asp:TextBox ID="txtsts" runat="server" Text='<%#Eval("LeaveStatus") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="lblsts" runat="server" Text='<%#Eval("LeaveStatus") %>'></asp:Label>
                   </ItemTemplate>
              
              
               </asp:TemplateField>    
              

               <asp:TemplateField HeaderText="Approval">                 
                   <ItemTemplate>
                     <asp:Button ID="btnapproval" runat="server"  Text="Approval" OnClick="btnapproval_Click" />
                   </ItemTemplate>
               </asp:TemplateField>
                            
                        </Columns>
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#F6C53C" Font-Bold="True" ForeColor="White" Font-Size="20px" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle BackColor="#e8eaae" ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                </div>
            </div>

        </div>
    </form>
</body>
</html>

