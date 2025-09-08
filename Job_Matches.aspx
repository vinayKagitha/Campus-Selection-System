<%@ Page Language="C#" MasterPageFile="~/SLogin.master" AutoEventWireup="true" CodeFile="Job_Matches.aspx.cs" Inherits="Job_Matches" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                -::&nbsp; Job Match as Per Profile&nbsp; ::-</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblApply" runat="server" CssClass="lbll" Font-Underline="True"></asp:Label>
                <br />
                <asp:DataList ID="DataList3" runat="server" 
                                        onitemcommand="DataList3_ItemCommand" CssClass="tbl">
                    <ItemTemplate>
                        <table class="tblviewjob">
                            <tr>
                                <td colspan="5" 
                                                        
                                                        
                                                        
                                    style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #800000">
                                    <asp:Label ID="lblVcname" runat="server" Text='<%#Eval("Company_Name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="lbllviewjob">
                                    Required Skill
                                </td>
                                <td class="lbllviewjob">
                                    ::</td>
                                <td class="lbllviewjob">
                                    &nbsp;</td>
                                <td class="lblviewjob">
                                    <asp:Label ID="lblVreqskill" runat="server" Text='<%#Eval("RequiredSkill") %>'></asp:Label>
                                </td>
                                <td>
                                                        &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="lbllviewjob">
                                    Job Location</td>
                                <td class="lbllviewjob">
                                    ::</td>
                                <td class="lbllviewjob">
                                    &nbsp;</td>
                                <td class="lblviewjob">
                                    <asp:Label ID="lblVjobloca" runat="server" Text='<%#Eval("JobLocaton") %>'></asp:Label>
                                </td>
                                <td>
                                                        &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="lbllviewjob">
                                    Salary
                                </td>
                                <td class="lbllviewjob">
                                    ::</td>
                                <td class="lbllviewjob">
                                    &nbsp;</td>
                                <td class="lblviewjob">
                                    <asp:Label ID="lblVsalary" runat="server" Text='<%#Eval("ExpectedSalary") %>'></asp:Label>
                                </td>
                                <td>
                                                        &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="lbllviewjob">
                                    Last Apply Date
                                </td>
                                <td class="lbllviewjob">
                                    ::</td>
                                <td class="lbllviewjob">
                                    &nbsp;</td>
                                <td class="lblviewjob">
                                    <asp:Label ID="lastaply" runat="server" Text='<%#Eval("Last_ApplyDate") %>'></asp:Label>
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
                                    <asp:LinkButton ID="lnkviewmore" runat="server" CssClass="lnk" CommandName="viewmore" CommandArgument='<%#Eval("JobId") %>'>View More..</asp:LinkButton>
                                </td>
                                <td>
                                    <asp:LinkButton ID="lnkApply" runat="server" CommandName="apply" 
                                                            CommandArgument='<%#Eval("JobId") %>' CssClass="lnk">Apply</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
        </asp:Content>

