<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeUpdate.aspx.cs" Inherits="PayRoll.EmployeeUpdate" %>

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
              <div style="overflow: scroll">
                <center>
            <asp:GridView ID="gdvempupdate" runat="server" AutoGenerateColumns="false" OnPageIndexChanging="gdvempupdate_PageIndexChanging" AllowPaging="true"
                 PageSize="8" GridLines="None" EmptyDataText="NoRecordFound" EmptyDataRowStyle-ForeColor="Red"
                 Width="100%" CssClass="table table-bordered table-striped" OnRowCommand="gdvempupdate_RowCommand">
                     <Columns>
               <asp:TemplateField HeaderText="EmployeeId">                 
                   <ItemTemplate>
                       <asp:Label ID="lbleid" runat="server" Text='<%#Eval("EmpId") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Emplyee Name">
                   <EditItemTemplate>
                       <asp:TextBox ID="txtname" runat="server" Text='<%#Eval("Name") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="lblname" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
                   <asp:TemplateField HeaderText="Date Of Birth">
                   <EditItemTemplate>
                       <asp:TextBox ID="txtdob" runat="server" Text='<%#Eval("DateOfBirth") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="lbldob" runat="server" Text='<%#Eval("DateOfBirth") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
                   <asp:TemplateField HeaderText="Email">
                   <EditItemTemplate>
                       <asp:TextBox ID="txtemail" runat="server" Text='<%#Eval("Email") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="lblemail" runat="server" Text='<%#Eval("Email") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
                   <asp:TemplateField HeaderText="Mobile Number">
                   <EditItemTemplate>
                       <asp:TextBox ID="txtmoble" runat="server" Text='<%#Eval("MobileNumber") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="lblmobile" runat="server" Text='<%#Eval("MobileNumber") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
                   <asp:TemplateField HeaderText="Address">
                   <EditItemTemplate>
                       <asp:TextBox ID="txtadd" runat="server" Text='<%#Eval("Address") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="lbladd" runat="server" Text='<%#Eval("Address") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
                   <asp:TemplateField HeaderText="Designation">
                   <EditItemTemplate>
                       <asp:TextBox ID="txtdesig" runat="server" Text='<%#Eval("Designation") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="lbldesig" runat="server" Text='<%#Eval("Designation") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
                   <asp:TemplateField HeaderText="Department">
                   <EditItemTemplate>
                       <asp:TextBox ID="txtdept" runat="server" Text='<%#Eval("Department") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="lbldept" runat="server" Text='<%#Eval("Department") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>    
              

               <asp:TemplateField HeaderText="View">                 
                   <ItemTemplate>
                     <asp:LinkButton ID="lnkview" runat="server" CommandName="view" CommandArgument='<%#Eval("EmpId") %>' Text="View"></asp:LinkButton>
                   </ItemTemplate>
               </asp:TemplateField>
           </Columns>
                   <PagerStyle HorizontalAlign = "Center" CssClass = "GridPager"/>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="green" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
                    
        </center>
            </div>
        </div>
    </form>
</body>
</html>