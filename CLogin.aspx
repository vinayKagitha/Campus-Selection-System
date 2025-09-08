<%@ Page Language="C#" MasterPageFile="~/CLogin.master" AutoEventWireup="true" CodeFile="CLogin.aspx.cs" Inherits="HRM_JLogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style8
        {
            width: 480px;
            height: 67px;
        }
        
        .style9
        {
            width: 321px;
            height: 262px;
        }
        
        .style7
        {
            width: 495px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Wel Come
                <asp:Label ID="lblSname" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table class="style7" align="center">
                    <tr>
                        <td class="mnu">
                            &nbsp;</td>
                        <td class="mnu">
                            <asp:LinkButton ID="lnkviewprofile" runat="server" CssClass="mnu" 
                                onclick="lnkviewprofile_Click" CausesValidation="False">View Profile</asp:LinkButton>
                        </td>
                        <td class="mnu">
                            <asp:LinkButton ID="lnkcngpass" runat="server" CssClass="mnu" 
                                onclick="lnkcngpass_Click" CausesValidation="False">Change Password</asp:LinkButton>
                        </td>
                        <td class="mnu">
                            <asp:LinkButton ID="lnkremove" runat="server" CssClass="mnu" 
                                onclick="lnkremove_Click" CausesValidation="False">Remove Account</asp:LinkButton>
                        </td>
                        <td class="mnu">
                            &nbsp;</td>
                    </tr>
                    </table>
                <asp:Label ID="lblApply" runat="server" CssClass="lbll"></asp:Label>
                <br />
                <asp:Label ID="lblSPUpade" runat="server" CssClass="lbll"></asp:Label>
                <table align="center" class="style8">
                    <tr>
                        <td colspan="2">
                            <asp:MultiView ID="MultiView1" runat="server">
                                <asp:View ID="View1" runat="server">
                                    <table class="tbl">
                                        <tr>
                                            <td colspan="5" class="tblhead">
                                                Your Profile Details</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                CompanyName
                                            </td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblCName" runat="server" CssClass="lbll"></asp:Label>
                                                &nbsp;
                                                </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Address</td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblCadd" runat="server" CssClass="lbll"></asp:Label>
                                                &nbsp;<asp:Label ID="lblCCity" runat="server" CssClass="lbll"></asp:Label>
                                                &nbsp;<asp:Label ID="lblCState" runat="server" CssClass="lbll"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Pincode</td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblCPin" runat="server" CssClass="lbll"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Email Id</td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblCEId" runat="server" CssClass="lbll"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Website</td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblCWebsite" runat="server" CssClass="lbll"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Contact No
                                            </td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblCContNO" runat="server" CssClass="lbll"></asp:Label>
                                            </td>
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
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View3" runat="server">
                                    <table class="tbl">
                                        <tr>
                                            <td class="tblhead" colspan="2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Current Password :
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtoldpass" runat="server" CssClass="txtt"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ControlToValidate="txtoldpass" ErrorMessage="!!!"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                New&nbsp; Password :</td>
                                            <td>
                                                <asp:TextBox ID="txtNpass" runat="server" CssClass="txtt"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                    ControlToValidate="txtNpass" ErrorMessage="!!!"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Confo&nbsp; Password :</td>
                                            <td>
                                                <asp:TextBox ID="txtCNpass" runat="server" CssClass="txtt"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                    ControlToValidate="txtCNpass" ErrorMessage="!!!"></asp:RequiredFieldValidator>
                                                <br />
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                                    ControlToCompare="txtNpass" ControlToValidate="txtCNpass" 
                                                    ErrorMessage="Password Not Match"></asp:CompareValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="btnCngpass" runat="server" CssClass="btn" Text="Change Password" 
                                                    onclick="btnCngpass_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View4" runat="server">
                                    <table class="tbl">
                                        <tr>
                                            <td class="tblhead" colspan="2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Enrl No :
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtenrlno1" runat="server" CssClass="txtt"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                    ControlToValidate="txtenrlno1" ErrorMessage="!!!"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                User Name:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtuname" runat="server" CssClass="txtt"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                    ControlToValidate="txtuname" ErrorMessage="!!!"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                &nbsp;Password :</td>
                                            <td>
                                                <asp:TextBox ID="txtpass" runat="server" CssClass="txtt"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                    ControlToValidate="txtpass" ErrorMessage="!!!"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="btnremoveacnt" runat="server" CssClass="btn" Text="Remove" 
                                                    onclick="btnremoveacnt_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:View>
                            </asp:MultiView>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

