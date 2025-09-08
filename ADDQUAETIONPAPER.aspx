<%@ Page Language="C#" MasterPageFile="~/CLogin.master" AutoEventWireup="true" CodeFile="ADDQUAETIONPAPER.aspx.cs" Inherits="ADDQUAETIONPAPER" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td style="width: 254px">
                <asp:Button ID="btnQpaper" runat="server" CssClass="lnk" 
                    onclick="btnQpaper_Click" Text="QPaper" />
            </td>
                                                       <td align="left">
                                                           <asp:Button ID="btnQstion" runat="server" CssClass="lnk" Text="Add Question" 
                                                               onclick="btnQstion_Click" />
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
        <tr>
            <td style="width: 254px">
                &nbsp;</td>
                                                       <td colspan="2">
                                                           &nbsp;</td>
                                                   </tr>
        <tr>
            <td style="width: 254px">
                &nbsp;</td>
                                                       <td colspan="2">
                                                           &nbsp;</td>
                                                   </tr>
        <tr>
            <td style="width: 254px" class="lbll">
                Question Paper&nbsp;&nbsp; :</td>
                                                       <td align="left" colspan="2">
                                                           <asp:TextBox ID="txtqpaper" runat="server" CssClass="txtt"></asp:TextBox>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td style="width: 254px" class="lbll">
                                                           Company Name :</td>
            <td align="left" colspan="2">
                                                           <asp:TextBox ID="txtCmpName" 
                    runat="server" CssClass="txtt" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 254px" class="lbll">
                Toatal Marks&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txttatalmarks" runat="server" CssClass="txtt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 254px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="btnADDQppr" runat="server" CssClass="btn" 
                    onclick="btnADDQppr_Click" Text="ADD QUAETIONPAPER" Width="191px" 
                    CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:GridView ID="GridViewADDQPAPER" runat="server" AutoGenerateColumns="False" 
                    onrowcommand="GridViewADDQPAPER_RowCommand" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:BoundField DataField="CompanyName" HeaderText="Comany Name" />
                        <asp:BoundField DataField="QPaperName" HeaderText="Question Paper" />
                        <asp:BoundField Datafield="TotalMarks" HeaderText="Total Marks" />
                        <asp:TemplateField HeaderText="delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="mkdelete" runat="server" 
                                    CommandArgument='<%#Eval("CID") %>' CommandName="del" Text="DELETE"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

