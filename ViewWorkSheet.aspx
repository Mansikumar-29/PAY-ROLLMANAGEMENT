<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewWorkSheet.aspx.cs" Inherits="PayRoll.WorkSheet" %>
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
            <div class="container">
                <div class="row">  
                            <asp:GridView ID="gdvemp" runat="server" PageSize="10" AutoGenerateColumns="False" CellPadding="3" Style="width: 100%; height: 30px; border: 0px" AllowPaging="True">
                                <Columns>
                                    <asp:TemplateField HeaderText="S.No">
                                        <ItemTemplate>
                                            <span>
                                                <%#Container.DataItemIndex + 1%>
                                            </span>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField HeaderText="Employee Name" DataField="Name" />
                                    <asp:BoundField HeaderText="Department" DataField="Department" />
                                    <asp:BoundField HeaderText="Day" DataField="Day" />
                                    <asp:BoundField HeaderText="Date" DataField="Date" />
                                    <asp:BoundField HeaderText="Assaigned To" DataField="AssignedTo" />
                                    <asp:BoundField HeaderText="Start Time" DataField="StartTime" />
                                    <asp:BoundField HeaderText="Project Status" DataField="ProjectStatus" />
                                    <asp:BoundField HeaderText="End Time" DataField="EndTime" />
                                    <asp:BoundField HeaderText="Over Time Hours" DataField="OverTimeHours" />
                                    <asp:BoundField DataField="TotalWorkingHours" HeaderText="Total Working Hours" />
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
