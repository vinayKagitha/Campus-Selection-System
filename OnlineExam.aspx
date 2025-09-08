<%@ Page Language="C#" MasterPageFile="~/SLogin.master" AutoEventWireup="true" CodeFile="OnlineExam.aspx.cs" Inherits="OnlineExam" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Select Question Paper
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataListSelectQppr" runat="server" 
                    onitemcommand="DataListSelectQppr_ItemCommand">
                    <ItemTemplate>
                        <table class="tbl">
                            <tr class="tblhead">
                                <td>
                                    QPaper Name</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    Company Name</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    Toatal Marks</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="lnkQpprname" runat="server" 
                                        CommandArgument='<%#Eval("QPID")%>' CommandName="qpaper" ForeColor="Red" 
                                        Text='<%#Eval("QPaperName")%>'></asp:LinkButton>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="lblCname" runat="server" CssClass="lbll" 
                                        Text='<%# Eval("CompanyName") %>'></asp:Label>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;&nbsp; &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="lblttlmrk" runat="server" CssClass="lbll" 
                                        Text='<%# Eval("TotalMarks") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>

