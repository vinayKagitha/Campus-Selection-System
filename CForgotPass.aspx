<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="CForgotPass.aspx.cs" Inherits="CForgotPass" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style8
        {
            text-align: right;
            font-family: Calibri;
            font-size: 14px;
            font-weight: bold;
            color: #002D00;
            width: 117px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            Company Forgot Password&nbsp; ::-</td>
    </tr>
    <tr>
        <td>
<table align="center">
        <tr>
            <td>
                &nbsp;</td>
            <td class="lbl">
                E-mail Id&nbsp;&nbsp;&nbsp;&nbsp; ::</td>
            <td>
                <asp:TextBox ID="txtFEid" runat="server" CssClass="txtt"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblFeid" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="lbl">
                Mobile No&nbsp; ::</td>
            <td>
                <asp:TextBox ID="txtFMobno" runat="server" CssClass="txtt"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblFMobno" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnviewpass" runat="server" CssClass="btn" 
                    Text="View Password" onclick="btnviewpass_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblDippass" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
        </td>
    </tr>
</table>
</asp:Content>

