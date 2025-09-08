<%@ Page Language="C#" MasterPageFile="~/SLogin.master" AutoEventWireup="true" CodeFile="STDMessage.aspx.cs" Inherits="STDMessage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 486px; height: 219px;">
        <tr>
            <span style="font-size: 10pt">
            <td colspan="3">
                ::&nbsp;&nbsp; Send Message&nbsp; ::</td>
            </span>
        </tr>
        <tr>
            <span style="font-size: 10pt">
            <td class="lbl">
                        From Name :</td>
            </span><span style="font-size: 10pt">
            <td>
                <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
            </td>
            </span><span style="font-size: 10pt">
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtfname" ErrorMessage="Enter From Name"></asp:RequiredFieldValidator>
            </td>
            </span>
        </tr>
        <tr>
            <span style="font-size: 10pt">
            <td class="lbl">
                        Mobile No :</td>
            </span><span style="font-size: 10pt">
            <td>
                <asp:TextBox ID="txtmono" runat="server"></asp:TextBox>
            </td>
            </span><span style="font-size: 10pt">
            <td>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="txtmono" ErrorMessage="Invalid Mobile Number" 
                            MaximumValue="9999999999" MinimumValue="1111111111" Type="Double"></asp:RangeValidator>
            </td>
            </span>
        </tr>
        <tr>
            <span style="font-size: 10pt">
            <td class="lbl">
                        EmailId :</td>
            </span><span style="font-size: 10pt">
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
            </span><span style="font-size: 10pt">
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="Invalid EmailId" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            </span>
        </tr>
        <tr>
            <span style="font-size: 10pt">
            <td class="lbl">
                        Message :</td>
            </span><span style="font-size: 10pt">
            <td>
                <asp:TextBox ID="txtmessage" runat="server" TextMode="MultiLine" Rows="4" 
                    Width="230px"></asp:TextBox>
            </td>
            </span><span style="font-size: 10pt">
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtmessage" ErrorMessage="Enter Message"></asp:RequiredFieldValidator>
            </td>
            </span>
        </tr>
        <tr>
            <span style="font-size: 10pt">
            <td style="width: 84px">
                &nbsp;</td>
            </span><span style="font-size: 10pt">
            <td>
                &nbsp;</td>
            </span><span style="font-size: 10pt">
            <td>
                &nbsp;</td>
            </span>
        </tr>
        <tr>
            <span style="font-size: 10pt">
            <td style="width: 84px">
                &nbsp;</td>
            </span><span style="font-size: 10pt">
            <td>
                <asp:Button ID="btnsend" runat="server"  Text="Send" 
                    CssClass="btn" Width="76px" />
            </td>
            </span><span style="font-size: 10pt">
            <td>
                &nbsp;</td>
            </span>
        </tr>
    </table>
</asp:Content>

