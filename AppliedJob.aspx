<%@ Page Language="C#" MasterPageFile="~/SLogin.master" AutoEventWireup="true" CodeFile="AppliedJob.aspx.cs" Inherits="AppliedJob" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        
        .style8
        {
            width: 480px;
            height: 67px;
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
            <asp:Label ID="lblApplymsg" runat="server" CssClass="lbll"></asp:Label>
            <br />
            <table align="center" class="style8">
                <tr>
                    <td colspan="2">
        <asp:DataList ID="DataList3" runat="server" onitemcommand="DataList3_ItemCommand" 
                            CssClass="tbl">
            <ItemTemplate>
                <table class="tblviewjob">
                    <tr>
                        <td colspan="3" 
                                                        
                            
                            style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #800000">
                            <asp:Label ID="lblVcname" runat="server" Text='<%#Eval("Company_Name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbllviewjob">
                                                        Required Skill :</td>
                        <td class="lblviewjob">
                            <asp:Label ID="lblVreqskill" runat="server" Text='<%#Eval("RequiredSkill") %>'></asp:Label>
                        </td>
                        <td>
                                                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbllviewjob">
                                                        Job Location :</td>
                        <td class="lblviewjob">
                            <asp:Label ID="lblVjobloca" runat="server" Text='<%#Eval("JobLocaton") %>'></asp:Label>
                        </td>
                        <td>
                                                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbllviewjob">
                                                        Salary :
                                                    </td>
                        <td class="lblviewjob">
                            <asp:Label ID="lblVsalary" runat="server" Text='<%#Eval("ExpectedSalary") %>'></asp:Label>
                        </td>
                        <td>
                                                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbllviewjob">
                                                        Last Apply Date :
                                                    </td>
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
                            <asp:LinkButton ID="lnkviewmore" runat="server" CssClass="lnk" 
                                CommandName="viewmore">View More..</asp:LinkButton>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
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

