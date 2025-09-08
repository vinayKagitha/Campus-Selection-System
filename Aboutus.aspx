<%@ Page Language="C#" MasterPageFile="Home.master" AutoEventWireup="true" CodeFile="Aboutus.aspx.cs" Inherits="HRM_Aboutus" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                &nbsp; --::::::::&nbsp;&nbsp; About Us&nbsp;&nbsp; ::::::--</td>
        </tr>
        <tr>
            <td>
                <table class="tbl">
                    <tr>
                        <td rowspan="2">
                            <asp:Image ID="Image2" runat="server" CssClass="tbl" 
                                ImageUrl="~/Profile Img/apcr.png" Width="195px" />
                        </td>
                        <td colspan="2">
                            <asp:Label ID="Label1" runat="server" CssClass="lbl" Text="Alex ABC"></asp:Label>
&nbsp;
                            <asp:Label ID="Label2" runat="server" CssClass="lblError" Text="(111111107119)"></asp:Label>
                            <br />
                            <asp:Label ID="Label3" runat="server" CssClass="lbl" Text="MO :- 1212121212"></asp:Label>
                            <br />
                            <asp:Label ID="Label4" runat="server" CssClass="lnk" 
                                Text="Email :- alex@gmail.com"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
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
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <table class="tbl">
                                <tr>
                                    <td rowspan="2">
                                        <asp:Image ID="Image3" runat="server" CssClass="tbl" 
                                            ImageUrl="~/Profile Img/BD.jpg" Width="195px" />
                                    </td>
                                    <td colspan="2">
                                        <asp:Label ID="Label5" runat="server" CssClass="lbl" Text="Mark XYZ"></asp:Label>
&nbsp;
                                        <asp:Label ID="Label6" runat="server" CssClass="lblError" Text="(199999999062)"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label7" runat="server" CssClass="lbl" Text="MO :- 2323232323"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label8" runat="server" CssClass="lnk" 
                                            Text="Email :- mark@gmail.com"></asp:Label>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
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
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

