<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewApplications.aspx.cs" Inherits="Bakery.ViewApplications" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
        <!--The login panel vanishes and makes the database visible when the correct login is entered-->
        <asp:Panel ID="pnlLogin" runat="server" Width="208px">
            <div class="login">
                <asp:Image runat="server" ImageUrl="~/bakerylogo.jpg" Height="172px" Width="205px" />
                <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox> <br /><br />
                <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblLoginError" runat="server" Text="The username or password is invalid" ForeColor="Red" Visible="false"></asp:Label>
                <br />
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login"/>
                <br /><br />
                Username: dave
                <br />
                Password: secret
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlDatabase" runat="server" Visible="false">

            <!--Table structure of DB-->
            <table border="1">
                <tr>
                    <td>First Name</td>
                    <td>Last Name</td>
                    <td>Phone Number</td>
                    <td>Total</td>
                    <td>Ylw Cake</td>
                    <td>Choc Cake</td>
                    <td>Slt Pretzel</td>
                    <td>Unslt Pretzel</td>
                    <td>Otml Cookie</td>
                    <td>Chochip Cookie</td>
                    <td>Rating</td>
                </tr>
                <asp:Literal ID="litRegistrants" runat="server"></asp:Literal>
            </table>

            <br /><br />

            <asp:HyperLink ID="Home" runat="server" Text="Back to Order Page" NavigateUrl="~/index.aspx"></asp:HyperLink>
        </asp:Panel>
    </form>
</body>
</html>
