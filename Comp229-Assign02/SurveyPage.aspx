<%@ Page Title="Survey Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SurveyPage.aspx.cs" Inherits="Comp229_Assign02.SurveyPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="center">
        <br />
        <asp:PlaceHolder ID="PlaceHolder1" runat="server">
            <h4>Student Information</h4>
        </asp:PlaceHolder>
        <br />

        <%--request information--%>
        <asp:Table ID="Table1" runat="server" Height="123px" Width="567px">

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">What program are you study?</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="programTxt" Width="500" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="programTxt" runat="server"
                        ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Are you fulltime or parttime student?</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:DropDownList ID="fulltimeTxt" runat="server">
                        <asp:ListItem>Full time</asp:ListItem>
                        <asp:ListItem>Part time</asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:RequiredFieldValidator ID="fulltimeTxtReq" ControlToValidate="fulltimeTxt"
                        runat="server"
                        ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>


            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Which semester are you in?</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="semesterTxt" TextMode="Number" Width="50" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:RangeValidator ID="RangeValidator1" runat="server"
                        ErrorMessage="Input should be between 1 to 10 only"
                        ControlToValidate="semesterTxt" MaximumValue="10"
                        MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Are you international student?</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:RadioButtonList ID="student" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:RequiredFieldValidator ID="studentReq" ControlToValidate="student"
                        runat="server"
                        ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Your email</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="emailTxt" Width="500" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ErrorMessage="Email format is not correct" ControlToValidate="emailTxt"
                        ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$">
                    </asp:RegularExpressionValidator>
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>

        <br />
        <asp:PlaceHolder ID="PlaceHolder2" runat="server">
            <h4>Student's experience</h4>
        </asp:PlaceHolder>

        <asp:Table ID="Table2" runat="server" Height="123px" Width="567px">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">How do you feel about the college?</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="commentTxt" TextMode="MultiLine" Width="500" Height="300" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:RequiredFieldValidator ID="commentTxtReq" ControlToValidate="commentTxt" runat="server"
                        ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                </asp:TableCell>
                <asp:TableCell runat="server">
                <asp:LinkButton class="btn btn-primary" OnClick="sendBtn_Click" runat="server">Send</asp:LinkButton>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
</asp:Content>
