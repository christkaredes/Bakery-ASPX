<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Bakery.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASPX Bakery</title>
    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />  
</head>
<body>
    <form id="form1" runat="server">
        <div class="content">
            <asp:Panel ID="pnlForm" runat="server">
                <h1>ASPX Bakery</h1>
                <!--FIRST NAME-->
                <asp:Label ID="lblFirstName" runat="server" Text="First Name: "></asp:Label>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator 
                    ID="valFirstName" 
                    runat="server" 
                    ControlToValidate="txtFirstName" 
                    EnableClientScript="true" 
                    ErrorMessage="First name required" 
                    Forecolor="Red">
                </asp:RequiredFieldValidator>

                <br /><br />

                <!--LAST NAME-->
                <asp:Label ID="lblLastName" runat="server" Text="Last Name: "></asp:Label>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator 
                    ID="valLastName" 
                    runat="server" 
                    ControlToValidate="txtLastName" 
                    EnableClientScript="true" 
                    ErrorMessage="Last name required" 
                    Forecolor="Red">
                </asp:RequiredFieldValidator>

                <br /><br />

                <!--PHONE NUMBER-->
                <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number: "></asp:Label>
                <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox> 

                <asp:RequiredFieldValidator 
                    ID="valPhoneNumber" 
                    runat="server" 
                    ControlToValidate="txtPhoneNumber" 
                    EnableClientScript="true" 
                    ErrorMessage="Please enter your phone number"
                    Forecolor="Red">
                </asp:RequiredFieldValidator>
                
                <asp:RegularExpressionValidator 
                    ID="valexprPhoneNumber" 
                    runat="server" 
                    ValidationExpression="^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$" 
                    EnableClientScript="true" 
                    ControlToValidate="txtPhoneNumber" 
                    ErrorMessage="Please enter a valid phone number" 
                    ForeColor="Red">
                </asp:RegularExpressionValidator>
                <br /><br />
                <asp:Label ID="lblBuyingInstructions" runat="server" Text="Select the quantity of each item you would like to purchase"></asp:Label>
                <br /><br />

                <div class="cakes">
                    <!--Yellow Cake-->
                    <asp:Label ID="lblYellowCake" runat="server" Text="Yellow Cake ($15):"></asp:Label>
                    <asp:DropDownList runat="server" ID="drpYellowCake">
                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>
                    <br /><br />

                    <!--Chocolate Cake-->
                    <asp:Label ID="lblChocolateCake" runat="server" Text="Chocolate Cake ($10):"></asp:Label>
                    <asp:DropDownList runat="server" ID="drpChocolateCake">
                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>

                    <br /><br />
                </div>

                <div class="pretzels">
                    <!--Salted Pretzel-->
                    <asp:Label ID="lblSaltedPretzel" runat="server" Text="Salted Pretzel ($5):"></asp:Label>
                    <asp:DropDownList runat="server" ID="drpSaltedPretzel">
                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>

                    <br /><br />
                
                    <!--Unsalted Pretzel-->
                    <asp:Label ID="lblUnsaltedPretzel" runat="server" Text="Unsalted Pretzel ($4.50):"></asp:Label>
                    <asp:DropDownList runat="server" ID="drpUnsaltedPretzel">
                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>

                    <br /><br />
                </div>

                <div class="cookies">
                    <!--Oatmeal Cookie-->
                    <asp:Label ID="lblOatmealCookie" runat="server" Text="Oatmeal Cookie ($1):"></asp:Label>
                    <asp:DropDownList runat="server" ID="drpOatmealCookie">
                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>

                    <br /><br />

                    <!--Chocolate Chip Cookie-->
                    <asp:Label ID="lblChocolateChipCookie" runat="server" Text="Chocolate Chip Cookie ($2):"></asp:Label>
                    <asp:DropDownList runat="server" ID="drpChocolateChipCookie">
                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>
                    
                    <br /><br />
                    
                </div>

                <br /><br /><br /><br /><br />

                <!--BAKERY RATING-->
                <asp:Label ID="lblRating" runat="server" Text="How would you rate our selection of goods?"></asp:Label>
                <asp:DropDownList runat="server" ID="drpRating">
                    <asp:ListItem Text="1 (Poor)" Value="1"></asp:ListItem>
                    <asp:ListItem Text="2" Value="2"></asp:ListItem>
                    <asp:ListItem Text="3" Value="3"></asp:ListItem>
                    <asp:ListItem Text="4" Value="4"></asp:ListItem>
                    <asp:ListItem Text="5" Value="5"></asp:ListItem>
                    <asp:ListItem Text="6" Value="6"></asp:ListItem>
                    <asp:ListItem Text="7" Value="7"></asp:ListItem>
                    <asp:ListItem Text="8" Value="8"></asp:ListItem>
                    <asp:ListItem Text="9" Value="9"></asp:ListItem>
                    <asp:ListItem Text="10 (Excellent)" Value="10"></asp:ListItem>
                </asp:DropDownList>

                <br /><br />

                <br /><br />

                <!--CALCULATE BUTTON-->
                <asp:Button ID="btnGetTotal" runat="server" Text="Get Total" OnClick="btnGetTotal_Click" />
                <br /><br />

                <asp:Label ID="lblYourTotalIs" runat="server" Visible="false" Text="Your total is: "></asp:Label><!---->
                <asp:Label ID="lblTotal" runat="server" Visible="false" Text=""></asp:Label>
                <br /><br />

                <!--SUBMIT BUTTON-->
                <asp:Button ID="btnSubmit" runat="server" Text="Submit Order" Visible="false" OnClick="btnSubmit_Click" />
                <br /><br />

                <asp:HyperLink ID="DbLink1" runat="server" Text="View Database" NavigateUrl="~/ViewApplications.aspx"></asp:HyperLink>
            </asp:Panel>

                <!--RESULTS-->
            <asp:Panel ID="pnlConfirm" runat="server" Visible="false">
                <h1>Thank you for your time!</h1>
                First Name: <asp:Label ID="lblFirstNameResults" runat="server"></asp:Label>                      <br /> <br />
                Last Name: <asp:Label ID="lblLastNameResults" runat="server"></asp:Label>                        <br /> <br />
                Phone Number: <asp:Label ID="lblPhoneNumberResults" runat="server"></asp:Label>                  <br /> <br />
                Yellow Cakes:<asp:Label ID="lblYellowCakeResults" runat="server"></asp:Label>                    <br /> <br />
                Chocolate Cakes:<asp:Label ID="lblChocolateCakeResults" runat="server"></asp:Label>              <br /> <br />
                Salted Pretzels:<asp:Label ID="lblSaltedPretzelResults" runat="server"></asp:Label>              <br /> <br />
                Unsalted Pretzels:<asp:Label ID="lblUnsaltedPretzelResults" runat="server"></asp:Label>          <br /> <br />
                Oatmeal Cookies<asp:Label ID="lblOatmealCookieResults" runat="server"></asp:Label>               <br /> <br />
                Chocolate Chip Cookies:<asp:Label ID="lblChocolateChipCookieResults" runat="server"></asp:Label> <br /> <br />
                
                <!--Some navigation so you don't get stuck-->
                <asp:HyperLink ID="DbLink2" runat="server" Text="View Database" NavigateUrl="~/ViewApplications.aspx"></asp:HyperLink>
            </asp:Panel>

        </div>
        
    </form>
</body>
</html>
