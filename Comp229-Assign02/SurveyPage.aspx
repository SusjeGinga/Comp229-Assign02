<%@ Page Title="Survey Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SurveyPage.aspx.cs" Inherits="Comp229_Assign02.SurveyPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Table ID="Table1" runat="server" Height="123px" Width="567px">
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">What program are you study?</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox ID="programTxt" Width="500" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="programTxtReq" ControlToValidate="programTxt" runat="server" 
                    ErrorMessage="Required Field"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow runat="server">
            <asp:TableCell runat="server">What semester are you in?</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>6+</asp:ListItem>
                </asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Are you international student?</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:RadioButton GroupName="student" ID="RadioButton1" Text="Yes" runat="server" />
                <asp:RadioButton GroupName="student" ID="RadioButton2" Text="No" runat="server" />
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Your email</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox ID="emailTxt" Width="500" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="emailTxtReq" runat="server"                 
                    ErrorMessage="Email format is not correct" ControlToValidate="emailTxt"
                    ValidationExpression="^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,6}$">
                </asp:RegularExpressionValidator>
            </asp:TableCell>
        </asp:TableRow>

    </asp:Table>

</asp:Content>
