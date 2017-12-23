<%@ Page Title="THANK YOU" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ThankYouPage.aspx.cs" Inherits="Comp229_Assign02.ThankYouPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="center">
        <asp:PlaceHolder ID="PlaceHolder3" runat="server">
            <b>Here are all the information that you have entered</b>
        </asp:PlaceHolder>

        <br />
        <asp:PlaceHolder ID="PlaceHolder1" runat="server">
            <h4>Student Information</h4>
        </asp:PlaceHolder>
        <br />

        <%--Student Information--%>
        <asp:Table ID="Table1" runat="server" Height="123px" Width="567px">

            <asp:TableRow runat="server">
                <asp:TableCell Width="500" runat="server">What program are you study?</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="program" runat="server" Enabled="false"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell Width="500" runat="server">Are you fulltime or parttime student?</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="fulltime" runat="server" Enabled="false"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>


            <asp:TableRow runat="server">
                <asp:TableCell Width="500" runat="server">Which semester are you in?</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="semester" Width="50" runat="server" Enabled="false"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell Width="500" runat="server">Are you international student?</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="student" Width="200" runat="server" Enabled="false"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell Width="500" runat="server">Your email</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="email" Width="500" runat="server" Enabled="false"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        <%--Student's experience--%>
        <br />
        <asp:PlaceHolder ID="PlaceHolder2" runat="server">
            <h4>Student's experience</h4>
        </asp:PlaceHolder>

        <asp:Table ID="Table2" runat="server" Height="123px" Width="567px">
            <asp:TableRow runat="server">
                <asp:TableCell Width="500" runat="server">How do you feel about the college?</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="comment" TextMode="MultiLine" Width="500" Height="300" runat="server" Enabled="false"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br /><br />
        <asp:PlaceHolder runat="server">
            <b>Go to </b>
        </asp:PlaceHolder>
        <asp:HyperLink NavigateUrl="http://www.centennialcollege.ca" runat="server"
            ImageHeight="200" ImageWidth="200"> CENTENNIAL 
        </asp:HyperLink>
    </div>
</asp:Content>
