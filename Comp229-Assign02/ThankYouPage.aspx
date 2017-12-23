<%@ Page Title="Thank You Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ThankYouPage.aspx.cs" Inherits="Comp229_Assign02.ThankYouPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Table ID="Table1" runat="server" Height="123px" Width="567px">
        <asp:TableRow runat="server">
            <asp:TableCell Width="500" runat="server">What program are you study?</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:Textbox ID="program"  runat="server" Enabled="false"></asp:Textbox>
            </asp:TableCell>           
        </asp:TableRow>

        <asp:TableRow runat="server">
            <asp:TableCell Width="500" runat="server">Are you fulltime or parttime student?</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:Textbox ID="fulltime" runat="server" Enabled="false"></asp:Textbox>
            </asp:TableCell> 
        </asp:TableRow>


        <asp:TableRow runat="server">
            <asp:TableCell Width="500" runat="server">Which semester are you in?</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:Textbox ID="semester" Width="50" runat="server" Enabled="false"></asp:Textbox>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow runat="server">
            <asp:TableCell Width="500" runat="server">Are you international student?</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:Textbox ID="student" Width="200" runat="server" Enabled="false"></asp:Textbox>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow runat="server">
            <asp:TableCell Width="500" runat="server">Your email</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:Textbox ID="email" Width="500" runat="server" Enabled="false"></asp:Textbox>
            </asp:TableCell>
        </asp:TableRow>

         <asp:TableRow runat="server">
            <asp:TableCell Width="500" runat="server">How do you feel about the college?</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:Textbox ID="comment" TextMode="MultiLine" Width="500" Height="300" runat="server" Enabled="false"></asp:Textbox>
            </asp:TableCell>
         </asp:TableRow>

        <asp:TableRow runat="server">
            <asp:TableCell Width="500" runat="server">
            </asp:TableCell>
            <asp:TableCell runat="server">
                <asp:LinkButton class="btn btn-primary" runat="server">Send</asp:LinkButton>
            </asp:TableCell>
        </asp:TableRow>

    </asp:Table>

</asp:Content>
