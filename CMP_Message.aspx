<%@ Page Language="C#" MasterPageFile="~/CLogin.master" AutoEventWireup="true" CodeFile="CMP_Message.aspx.cs" Inherits="STD_Message" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="5" class="tbl">
        <tr>
            <td class="style4">
                            &nbsp;</td>
            <td class="style4">
                            &nbsp;</td>
            <td class="style5">
                            &nbsp;</td>
        </tr>
        <tr>
            <td class="tblhead" colspan="3">
                            Send Message To Student&nbsp; ::<asp:Label ID="Label1" runat="server" 
                                Text="Label"></asp:Label>
                                                       </td>
        </tr>
        <tr>
            <td class="lbl">
                        Name/Email Id :</td>
            <td>
                <asp:TextBox ID="txtName" runat="server" CssClass="txtt"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <span style="font-size: 10pt">
            <td class="lbl">
                        Message :</td>
            </span><span style="font-size: 10pt">
            <td>
                <asp:TextBox ID="txtmessage" runat="server" TextMode="MultiLine" Rows="4" 
                                Width="230px" style="margin-left: 6px"></asp:TextBox>
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
                <span style="font-size: 10pt">
                <asp:Button ID="btnsend" runat="server" onclick="btnsend_Click" Text="Send" 
                                CssClass="btn" Width="76px" />
                </span>
            </td>
            </span>
        </tr>
        <tr>
            <span style="font-size: 10pt">
            <td style="width: 84px">
                            &nbsp;</td>
            </span><span style="font-size: 10pt">
            <td>
                <span style="font-size: 10pt">
                <asp:Label ID="lblsendmsg" runat="server" CssClass="lblError"></asp:Label>
                </span>
            </td>
            </span><span style="font-size: 10pt">
            <td>
                            &nbsp;</td>
            </span>
        </tr>
    </table>
</asp:Content>

