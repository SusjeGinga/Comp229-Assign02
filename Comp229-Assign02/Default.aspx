<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign02._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%--body of the page--%>
    <div class="banner">
        <asp:Image runat="server" ImageUrl="~/Assets/brand.jpg" />
    </div>

    <div class="center">
        
        <br />
        <asp:PlaceHolder ID="welcomePL" runat="server">
            <h3>Welcome to Centennial Survey Page</h3>
        </asp:PlaceHolder>
        <asp:PlaceHolder ID="purposePL" runat="server"><br />Purpose of this survey is to get student's experience about the college<br />
        </asp:PlaceHolder>
        <asp:Literal ID="privacyLit" runat="server">Our Privacy and Disclaimers are similar with</asp:Literal>
        <asp:HyperLink ID="privacyLink" href="https://www.amazon.com/gp/help/customer/display.html?nodeId=468496"
            runat="server">Amazon's Privacy and Disclaimers</asp:HyperLink>
        <br />
        <asp:HyperLink ID="surveyLink" href="SurveyPage.aspx"
            runat="server">Go to Survey Page</asp:HyperLink>
    </div>

</asp:Content>
