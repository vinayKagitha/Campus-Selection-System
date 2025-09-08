<%@ Page Language="C#" MasterPageFile="~/SLogin.master" AutoEventWireup="true" CodeFile="ApplyExam.aspx.cs" Inherits="onlineExam" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblmsg" runat="server" CssClass="lblerrorBig"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:FormView ID="fvquestion" runat="server" AllowPaging="True" 
                    BackColor="White" BorderStyle="Double" BorderWidth="3px" 
                    CellPadding="4" GridLines="Horizontal" Height="177px" 
                    onpageindexchanging="fvquestion_PageIndexChanging" Width="513px" 
                    HorizontalAlign="Center">
                    <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="White" ForeColor="Black" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Question::
                        <asp:Label ID="lblserial" runat="server" Text='<%# Eval("SerialNO") %>'></asp:Label>
                        &nbsp;&nbsp; &nbsp; &nbsp;
                        <asp:Label ID="lblqustion" runat="server" Text='<%# Eval("Quations") %>'></asp:Label>
                        <br />
                        <br />
                        <asp:RadioButton ID="rda" runat="server" GroupName="ans" 
                            Text='<%#Eval("Ans_A") %>' />
               &nbsp; &nbsp; &nbsp;
                        <asp:RadioButton ID="rdb" runat="server" GroupName="ans" 
                            Text='<%#Eval("Ans_B") %>' />
               &nbsp; &nbsp; &nbsp;
                        <asp:RadioButton ID="rdc" runat="server" GroupName="ans" 
                            Text='<%#Eval("Ans_C") %>' />
               &nbsp; &nbsp; &nbsp;
                        <asp:RadioButton ID="rdd" runat="server" GroupName="ans" 
                            Text='<%#Eval("Ans_D") %>' />
               
                        <br />
                    </ItemTemplate>
                    <PagerSettings FirstPageText="start" LastPageText="finish" 
                        PreviousPageText="BACK" NextPageText="NEXT" Mode="NextPrevious" />
                    <PagerStyle BackColor="#00FFCC" ForeColor="#0033CC" HorizontalAlign="Center" 
                        BorderColor="#9933FF" />
                    <RowStyle BackColor="White" ForeColor="Black" Font-Bold="True" />
                </asp:FormView>
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
        </tr>
    </table>
</asp:Content>

