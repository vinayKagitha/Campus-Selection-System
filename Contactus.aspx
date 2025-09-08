<%@ Page Language="C#" MasterPageFile="Home.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="HRM_Contactus" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span style="font-size: 10pt">
<table class="tbl">
    <tr>
        <td class="tblhead">
            ContactUs Form</td>
    </tr>
    <tr>
        <td align="center">
            <table style="width: 456px">
                <tr>
                    <td colspan="3" 
                        style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: italic; color: #00CC66; text-align: left">
                        Online Campus Selection System<br />
                        </td>
                </tr>
                <tr>
                    <td colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        From Name :</td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtfname" runat="server" CssClass="txtt"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtfname" ErrorMessage="Enter From Name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Mobile No :</td>
                    <td>
                        <asp:TextBox ID="txtmono" runat="server" CssClass="txtt"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="txtmono" ErrorMessage="Invalid Mobile Number" 
                            MaximumValue="9999999999" MinimumValue="1111111111" Type="Double"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        EmailId :</td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server" CssClass="txtt"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="Invalid EmailId" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Message :</td>
                    <td>
                        <asp:TextBox ID="txtmessage" runat="server" TextMode="MultiLine" 
                            CssClass="txtt" Height="25px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtmessage" ErrorMessage="Enter Message"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 84px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 84px">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnsend" runat="server" onclick="btnsend_Click" Text="Send" 
                            CssClass="btn" Width="82px" />
                    </td>
                    <td>
                        <asp:Label ID="lblmsg" runat="server" CssClass="lbll"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</span>
</asp:Content>

