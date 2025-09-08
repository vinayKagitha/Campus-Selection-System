<%@ Page Language="C#" MasterPageFile="~/CLogin.master" AutoEventWireup="true" CodeFile="ADDQuestion.aspx.cs" Inherits="ADDQuestion" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td style="width: 254px">
                <asp:Button ID="btnQpaper" runat="server" CssClass="lnk" Text="QPaper" 
                    onclick="btnQpaper_Click" CausesValidation="False" />
            </td>
            <td align="left">
                <asp:Button ID="btnQstion" runat="server" CssClass="lnk" Text="Add Question" 
                    onclick="btnQstion_Click" CausesValidation="False" />
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
            <td colspan="3">
                <table class="style1">
                    <tr>
                        <td style="width: 231px" class="lbll">
                            Question Paper&nbsp; :</td>
                        <td>
                            <asp:DropDownList ID="drpQpapername" runat="server" CssClass="txtt">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbll" style="width: 231px">
                            Exam Name&nbsp;&nbsp; :</td>
                        <td>
                            <asp:TextBox ID="txtEname" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbll" style="width: 231px">
                            Serial No.&nbsp;&nbsp; :</td>
                        <td>
                            <asp:TextBox ID="txtserial" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 231px" class="lbll">
                            Question&nbsp;&nbsp; :</td>
                        <td>
                            <asp:TextBox ID="txtquestion" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 231px" class="lbll">
                            Answer_a&nbsp; :</td>
                        <td>
                            <asp:TextBox ID="txta" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 231px" class="lbll">
                            Answer_b&nbsp; :</td>
                        <td>
                            <asp:TextBox ID="txtb" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 231px" class="lbll">
                            Answer_c&nbsp; :</td>
                        <td>
                            <asp:TextBox ID="txtc" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 231px" class="lbll">
                            Answer_d&nbsp; :</td>
                        <td>
                            <asp:TextBox ID="txtd" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 231px" class="lbll">
                            Ans&nbsp; :</td>
                        <td>
                            <asp:DropDownList ID="DropDownListkey" runat="server" CssClass="txtt">
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                                <asp:ListItem>D</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 231px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnaddquestion" runat="server" CssClass="btn" 
                                Text="ADD QUESTION" onclick="btnaddquestion_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:GridView ID="GridViewADDQuestion" runat="server" 
                                AutoGenerateColumns="False" onrowcommand="GridViewADDQuestion_RowCommand" 
                                BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                                CellPadding="4" GridLines="Horizontal">
                                <RowStyle BackColor="White" ForeColor="#333333" />
                                <Columns>
                                    <asp:BoundField DataField="QPaperName" HeaderText="QPaper" />
                                    <asp:BoundField DataField="ExamName" HeaderText="ExamName" />
                                    <asp:BoundField DataField="SerialNo" HeaderText="Serial No." />
                                    <asp:BoundField DataField="Quations" HeaderText="Question Name" />
                                    <asp:BoundField Datafield="Ans_A" HeaderText="Ans A" />
                                    <asp:BoundField DataField="Ans_B" HeaderText="Ans B" />
                                    <asp:BoundField DataField="Ans_C" HeaderText="Ans C" />
                                    <asp:BoundField DataField="Ans_D" HeaderText="Ans D" />
                                    <asp:BoundField Datafield="RightAns" HeaderText="Answer" />
                                    <asp:TemplateField HeaderText="Delete">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="mkdelete" runat="server" 
                                                CommandArgument='<%#Eval("QID") %>' CommandName="del" Text="DELETE"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

