<%@ Page Language="C#" MasterPageFile="CLogin.master" AutoEventWireup="true" CodeFile="ViewPostedJob.aspx.cs" Inherits="HRM_ViewJob" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 413px;
            height: 212px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                View job </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList3" runat="server" RepeatColumns="1" CssClass="tbl">
                    <ItemTemplate>
                        <table class="style7" 
                            style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #800000">
                            <tr>
                                <td colspan="4" class="lblleft" 
                                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #000066">
                                    <asp:Label ID="lblCategory" runat="server" Text='<%# Eval("JobCategory") %>'></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="lblleft">
                                    Required Skill </td>
                                <td class="lblleft">
                                    ::</td>
                                <td class="lblleft">
                                    &nbsp; &nbsp;</td>
                                <td align="left">
                                    <asp:Label ID="lblSkill" runat="server" Text='<%# Eval("RequiredSkill") %>'></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="lblleft">
                                    Qualification </td>
                                <td class="lblleft">
                                    ::</td>
                                <td class="lblleft">
                                    &nbsp;</td>
                                <td align="left">
                                    <asp:Label ID="lblQuali" runat="server" Text='<%# Eval("Min_Qualification") %>'></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="lblleft">
                                    Salary </td>
                                <td class="lblleft">
                                    ::</td>
                                <td class="lblleft">
                                    &nbsp;</td>
                                <td align="left">
                                    <asp:Label ID="lblsalary" runat="server" Text='<%# Eval("ExpectedSalary") %>'></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="lblleft">
                                    Job Location </td>
                                <td class="lblleft">
                                    ::</td>
                                <td class="lblleft">
                                    &nbsp;</td>
                                <td align="left">
                                    <asp:Label ID="lblJobLocation" runat="server" 
                                        Text='<%# Eval("JobLocaton") %>'></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="lblleft">
                                    Last Apply Date </td>
                                <td class="lblleft">
                                    ::</td>
                                <td class="lblleft">
                                    &nbsp;</td>
                                <td align="left">
                                    <asp:Label ID="lbllastapplydate" runat="server" 
                                        Text='<%# Eval("Last_ApplyDate") %>'></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="lblleft">
                                    Date of Posted </td>
                                <td class="lblleft">
                                    ::</td>
                                <td class="lblleft">
                                    &nbsp;</td>
                                <td align="left">
                                    <asp:Label ID="lblpostdate" runat="server" Text='<%# Eval("EntryDate") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:LinkButton ID="lnkbtnviewMore" runat="server" CssClass="tbl">View More</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>

