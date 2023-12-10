<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skins and Theme</title>
</head>
<body>
    <form id="form1" runat="server">
        <table width="950px" align="center" border="2">
            <tr>
                <td class="header">P.Yar.B Complex
                </td>
            </tr>
            <tr>
                <td align="center" class="menubg">
                    <asp:LinkButton ID="lnkHome" runat="server" Text="Home" CssClass="menu"></asp:LinkButton>
                    <asp:LinkButton ID="lnkAbout" runat="server" Text="About" CssClass="menu"></asp:LinkButton>
                    <asp:LinkButton ID="lnkProfile" runat="server" Text="Profile" CssClass="menu"></asp:LinkButton>
                    <asp:LinkButton ID="lnkContact" runat="server" Text="Contact" CssClass="menu"></asp:LinkButton>

                </td>
            </tr>
            <tr>
                <td class="body">
                    <div align="center">
                        Choose Theme : 
                        <asp:DropDownList ID="ddlTheme" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTheme_SelectedIndexChanged">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                            <asp:ListItem Value="1">Default</asp:ListItem>
                            <asp:ListItem Value="2">myTheme</asp:ListItem>
                        </asp:DropDownList>

                        <h1>Customer Search</h1>
                        Name :
            <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                        <br />
                        <h3>Customers</h3>
                        <asp:GridView ID="GridView1" runat="server" Width="447px" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                                <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
                                <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" SortExpression="ContactTitle" />
                                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                                <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT * FROM [Customers] WHERE ([ContactName] LIKE '%' + @ContactName + '%')">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txt1" Name="ContactName" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>

                </td>
            </tr>
            <tr>
                <td class="footer">All Rights reserved. Copyright 2012 , P.Yar.B Complex
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
