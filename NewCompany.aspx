<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="NewCompany.aspx.cs" Inherits="NNewCompany" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style26
    {
        width: 183px;
    }
        .style27
        {
            text-align: left;
        }
        .style28
        {
            width: 160px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Register as Company</td>
        </tr>
        <tr>
            <td>
            <table class="lbl">
                <tr>
                    <td class="style26">
                        Company Name :
                    </td>
                    <td class="style28">
                        <asp:TextBox ID="txtCName" runat="server" CssClass="txtt" placeholder="enter company name"></asp:TextBox>
                    </td>
                    <td class="style27">
                        <asp:RequiredFieldValidator ID="RFCname" runat="server" 
                            ControlToValidate="txtCname" ErrorMessage="Enter Company Name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style26">
                        Address :
                    </td>
                    <td class="style28">
                        <asp:TextBox ID="txtcAdd" runat="server" CssClass="txtt" TextMode="MultiLine" placeholder="enter company address"></asp:TextBox>
                    </td>
                    <td class="style27">
                        <asp:RequiredFieldValidator ID="RFCadd" runat="server" 
                            ControlToValidate="txtcAdd" ErrorMessage="Enter Address"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style26">
                        City :
                    </td>
                    <td class="style28">
                        <asp:TextBox ID="txtCCity" runat="server" CssClass="txtt" placeholder="enter current city"></asp:TextBox>
                    </td>
                    <td class="style27">
                        <asp:RequiredFieldValidator ID="RFCCity" runat="server" 
                            ControlToValidate="txtCCity" ErrorMessage="Enter City"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style26">
                        State :
                    </td>
                    <td class="style28">
                        <asp:TextBox ID="txtCState" runat="server" CssClass="txtt" placeholder="enter current city"></asp:TextBox>
                    </td>
                    <td class="style27">
                        <asp:RequiredFieldValidator ID="RFCState" runat="server" 
                            ControlToValidate="txtCState" ErrorMessage="Enter state"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style26">
                        Pincode :
                    </td>
                    <td class="style28">
                        <asp:TextBox ID="txtCPincode" runat="server" CssClass="txtt" placeholder="enter zip-code"></asp:TextBox>
                    </td>
                    <td class="style27">
                        <asp:RequiredFieldValidator ID="RFCPincode" runat="server" 
                            ControlToValidate="txtCPincode" ErrorMessage="Enter Pincode"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" 
                            ControlToValidate="txtCPincode" ErrorMessage="Pin Out Of Range" 
                            MaximumValue="999999" MinimumValue="100000" SetFocusOnError="True"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style26">
                        Contact Person Name :
                    </td>
                    <td class="style28">
                        <asp:TextBox ID="txtCContperName" runat="server" CssClass="txtt"></asp:TextBox>
                    </td>
                    <td class="style27">
                        <asp:RequiredFieldValidator ID="RFCContPer" runat="server" 
                            ControlToValidate="txtCContperName" 
                            ErrorMessage="Enter Contact Person"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style26">
                        Mobile No :</td>
                    <td class="style28">
                        <asp:TextBox ID="txtCMoNo" runat="server" CssClass="txtt"></asp:TextBox>
                    </td>
                    <td class="style27">
                        <asp:RequiredFieldValidator ID="RFCMoNo" runat="server" 
                            ControlToValidate="txtCMoNo" ErrorMessage="Enter Mob No"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator3" runat="server" 
                            ControlToValidate="txtCMoNo" ErrorMessage="InValid" 
                            MaximumValue="9999999999" MinimumValue="1111111111" SetFocusOnError="True"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style26">
                        Contact No :
                    </td>
                    <td class="style28">
                        <asp:TextBox ID="txtCContNO" runat="server" CssClass="txtt"></asp:TextBox>
                    </td>
                    <td class="style27">
                        <asp:RequiredFieldValidator ID="RFCcontNO" runat="server" 
                            ControlToValidate="txtCContNO" ErrorMessage="Enter Contact No"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style26">
                        Email Id :
                    </td>
                    <td class="style28">
                        <asp:TextBox ID="txtCEmailid" runat="server" CssClass="txtt"></asp:TextBox>
                    </td>
                    <td class="style27">
                        <asp:RequiredFieldValidator ID="RFCEmailId" runat="server" 
                            ControlToValidate="txtCEmailid" ErrorMessage="Enter Email Id"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtCEmailid" ErrorMessage="InValid E-id" 
                            SetFocusOnError="True" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style26">
                        Company&#39;s Website :
                    </td>
                    <td class="style28">
                        <asp:TextBox ID="txtCWebsite" runat="server" CssClass="txtt"></asp:TextBox>
                    </td>
                    <td class="style27">
                        <asp:RequiredFieldValidator ID="RFCWbsite" runat="server" 
                            ControlToValidate="txtCWebsite" ErrorMessage="Enter Company's Wesite"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style26">
                        &nbsp;</td>
                    <td class="style28">
                        &nbsp;</td>
                    <td class="style27">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style26">
                        UserName :
                    </td>
                    <td class="style28">
                        <asp:TextBox ID="txtCUName" runat="server" CssClass="txtt"></asp:TextBox>
                    </td>
                    <td class="style27">
                        <asp:RequiredFieldValidator ID="RFCUname" runat="server" 
                            ControlToValidate="txtCUName" ErrorMessage="Enter UserName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style26">
                        Password :
                    </td>
                    <td class="style28">
                        <asp:TextBox ID="txtCPass" runat="server" CssClass="txtt" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="style27">
                        <asp:RequiredFieldValidator ID="RFCPass" runat="server" 
                            ControlToValidate="txtCPass" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style26">
                        Confo. Password :
                    </td>
                    <td class="style28">
                        <asp:TextBox ID="txtCConfpass" runat="server" CssClass="txtt" 
                            TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="style27">
                        <asp:RequiredFieldValidator ID="RFCConfopass" runat="server" 
                            ControlToValidate="txtCConfpass" ErrorMessage="Enter Confirm Password"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidatorCPass" runat="server" 
                            ControlToCompare="txtCPass" ControlToValidate="txtCConfpass" 
                            ErrorMessage="Enter Correct Password"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style26">
                        &nbsp;</td>
                    <td class="style28">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style26">
                        &nbsp;</td>
                    <td class="style28">
                        <asp:Button ID="btnCsubmit" runat="server" CssClass="btn" 
                            onclick="btnCsubmit_Click" Text="Submit" Width="77px" />
                    </td>
                    <td>
                        <asp:Button ID="btnCreset" runat="server" CausesValidation="False" 
                            CssClass="btn" onclick="btnCreset_Click" Text="Reset" Width="73px" />
                    </td>
                </tr>
                <tr>
                    <td class="style26">
                        &nbsp;</td>
                    <td class="style28">
                        <asp:Label ID="lblcmsg" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            </td>
        </tr>
    </table>
</asp:Content>

