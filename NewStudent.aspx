<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="NewStudent.aspx.cs" Inherits="NNewStudent" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

      

        .style8
        {
            width: 145px;
        }
        .style39
        {
            text-align: center;
        }
        .style40
        {
            text-align: left;
        }

      

        .style41
        {
            width: 143px;
        }

      

        .style42
        {
            width: 174px;
        }
        .style43
        {
            width: 179px;
            text-align: left;
        }
        .style44
        {
            width: 189px;
        }
        .style45
        {
            width: 189px;
            text-align: left;
        }

      

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Register as New Student</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="tbl">
                    <tr>
                        <td>
                            <table class="lbl">
                                <tr>
                                    <td class="style17" colspan="3">
                                        <div align="left">
                                            Please Fill All Information
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style41">
                                        Name :
                                    </td>
                                    <td class="style45">
                                        <asp:TextBox ID="txtSfname" runat="server" CssClass="txtt" placeholder="Enter your name"></asp:TextBox>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" 
                                            ControlToValidate="txtSfname" ErrorMessage="Please Enter Name"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style41">
                                        SurName :
                                    </td>
                                    <td style="margin-left: 120px" class="style45">
                                        <asp:TextBox ID="txtSLname" runat="server" CssClass="txtt" placeholder="Enter your SurName" ></asp:TextBox>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSurname" runat="server" 
                                            ControlToValidate="txtSLname" ErrorMessage="Please Enter SurName"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style41">
                                        Address :
                                    </td>
                                    <td style="margin-left: 80px" class="style45">
                                        <asp:TextBox ID="txtSadd" runat="server" CssClass="txtt" TextMode="MultiLine" placeholder="Enter your permenant address"></asp:TextBox>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAdd" runat="server" 
                                            ControlToValidate="txtSadd" ErrorMessage="Please Enter Address"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style41">
                                        City :
                                    </td>
                                    <td class="style45">
                                        <asp:TextBox ID="txtScity" runat="server" CssClass="txtt" placeholder="Enter current City"></asp:TextBox>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" 
                                            ControlToValidate="txtScity" ErrorMessage="Please Enter City"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style41">
                                        State :
                                    </td>
                                    <td class="style45">
                                        <asp:TextBox ID="txtSstate" runat="server" CssClass="txtt" placeholder="Enter Current State"></asp:TextBox>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorState" runat="server" 
                                            ControlToValidate="txtSstate" ErrorMessage="Please Enter State"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style41">
                                        Pincode :
                                    </td>
                                    <td class="style45">
                                        <asp:TextBox ID="txtSpin" runat="server" CssClass="txtt" placeholder="Enter zip-Code"></asp:TextBox>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPin" runat="server" 
                                            ControlToValidate="txtSpin" ErrorMessage="Please Enter Pincode"></asp:RequiredFieldValidator>
                                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                            ControlToValidate="txtSpin" ErrorMessage="Out Of Range" MaximumValue="999999" 
                                            MinimumValue="100000" SetFocusOnError="True"></asp:RangeValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style41">
                                        BirthDate</td>
                                    <td style="margin-left: 80px; text-align: left;" class="style44">
                                        <asp:DropDownList ID="DrpDD" runat="server">
                                            <asp:ListItem>DD</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                            <asp:ListItem>10</asp:ListItem>
                                            <asp:ListItem>11</asp:ListItem>
                                            <asp:ListItem>12</asp:ListItem>
                                            <asp:ListItem>13</asp:ListItem>
                                            <asp:ListItem>14</asp:ListItem>
                                            <asp:ListItem>15</asp:ListItem>
                                            <asp:ListItem>16</asp:ListItem>
                                            <asp:ListItem>17</asp:ListItem>
                                            <asp:ListItem>18</asp:ListItem>
                                            <asp:ListItem>19</asp:ListItem>
                                            <asp:ListItem>20</asp:ListItem>
                                            <asp:ListItem>21</asp:ListItem>
                                            <asp:ListItem>22</asp:ListItem>
                                            <asp:ListItem>23</asp:ListItem>
                                            <asp:ListItem>24</asp:ListItem>
                                            <asp:ListItem>25</asp:ListItem>
                                            <asp:ListItem>26</asp:ListItem>
                                            <asp:ListItem>27</asp:ListItem>
                                            <asp:ListItem>28</asp:ListItem>
                                            <asp:ListItem>29</asp:ListItem>
                                            <asp:ListItem>30</asp:ListItem>
                                            <asp:ListItem>31</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:DropDownList ID="DrpMM" runat="server">
                                            <asp:ListItem>MM</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                            <asp:ListItem>10</asp:ListItem>
                                            <asp:ListItem>11</asp:ListItem>
                                            <asp:ListItem>12</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:DropDownList ID="DrpYY" runat="server">
                                            <asp:ListItem>YYYY</asp:ListItem>
                                            <asp:ListItem>1985</asp:ListItem>
                                            <asp:ListItem>1986</asp:ListItem>
                                            <asp:ListItem>1987</asp:ListItem>
                                            <asp:ListItem>1988</asp:ListItem>
                                            <asp:ListItem>1989</asp:ListItem>
                                            <asp:ListItem>1990</asp:ListItem>
                                            <asp:ListItem>1991</asp:ListItem>
                                            <asp:ListItem>1992</asp:ListItem>
                                            <asp:ListItem>1993</asp:ListItem>
                                            <asp:ListItem>1994</asp:ListItem>
                                            <asp:ListItem>1995</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:Label ID="lblDOB" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style41">
                                        Gender :
                                    </td>
                                    <td class="style45">
                                        &nbsp;<asp:DropDownList ID="DrpGender" runat="server" Height="20px" CssClass="txtt">
                                            <asp:ListItem>SELECT</asp:ListItem>
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:Label ID="lblGender" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style41">
                                        Mobile No. :
                                    </td>
                                    <td class="style45">
                                        <asp:TextBox ID="txtSMoNo" runat="server" CssClass="txtt" placeholder="enter mobile no"></asp:TextBox>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMoNo" runat="server" 
                                            ControlToValidate="txtSMoNo" ErrorMessage="Please Enter Mobile No."></asp:RequiredFieldValidator>
                                        <asp:RangeValidator ID="RangeValidator2" runat="server" 
                                            ControlToValidate="txtSMoNo" ErrorMessage="Enter Only 10 Digit" 
                                            MaximumValue="9999999999" MinimumValue="1111111111" SetFocusOnError="True"></asp:RangeValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style41">
                                        Email Id :
                                    </td>
                                    <td class="style45">
                                        <asp:TextBox ID="txtSeid" runat="server" CssClass="txtt" placeholder="enter your email-id"></asp:TextBox>
                                    </td>
                                    <td style="text-align: left">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEid" runat="server" 
                                            ControlToValidate="txtSeid" ErrorMessage="Please Enter Email id"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                            ControlToValidate="txtSeid" ErrorMessage="Invalid E-Id" 
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                            SetFocusOnError="True"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style41">
                                        Enroll No :
                                    </td>
                                    <td class="style45">
                                        <asp:TextBox ID="txtSErNo" runat="server" CssClass="txtt" placeholder="enter your enroll no"></asp:TextBox>
                                    </td>
                                    <td class="style24" align="left">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorErNo" runat="server" 
                                            ControlToValidate="txtSErNo" ErrorMessage="Please Enter Enroll No"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style41">
                                        &nbsp;</td>
                                    <td class="style45">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="tbl">
                            <table align="left" class="lbl">
                                <tr>
                                    <td class="style8">
                                        Username :
                                    </td>
                                    <td class="style40">
                                        <asp:TextBox ID="txtSUname" runat="server" CssClass="txtt" placeholder="enter username"></asp:TextBox>
                                    </td>
                                    <td class="style32">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUname" runat="server" 
                                            ControlToValidate="txtSUname" ErrorMessage="Please Enter Username"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style8">
                                        Password :
                                    </td>
                                    <td class="style43">
                                        <asp:TextBox ID="txtSpass" runat="server" CssClass="txtt" TextMode="Password" placeholder="enter password"></asp:TextBox>
                                    </td>
                                    <td class="style42">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" 
                                            ControlToValidate="txtSpass" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style8">
                                        Conf Pass :
                                    </td>
                                    <td class="style45">
                                        <asp:TextBox ID="txtSconfPassword" runat="server" CssClass="txtt" 
                                            TextMode="Password" placeholder="enter confo. password"></asp:TextBox>
                                    </td>
                                    <td class="style45">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfPass" runat="server" 
                                            ControlToValidate="txtSconfPassword" ErrorMessage="Please Enter Conf Password"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                            ControlToCompare="txtSpass" ControlToValidate="txtSconfPassword" 
                                            ErrorMessage="Enter Correct Password"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style8">
                                    </td>
                                    <td class="style38">
                                        <asp:Button ID="btnRegister1" runat="server" CssClass="btn" 
                                            onclick="btnRegister1_Click" style="text-align: left" Text="Continue.." />
                                    </td>
                                    <td class="style39">
                                        <asp:Button ID="btnReset" runat="server" CausesValidation="False" 
                                            CssClass="btn" onclick="btnReset_Click" style="text-align: left" Text="Reset" 
                                            Width="81px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style8">
                                    </td>
                                    <td class="style40" colspan="2">
                                        &nbsp;<asp:Label ID="lblregmsg" runat="server"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                </td>
        </tr>
    </table>
</asp:Content>

