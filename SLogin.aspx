<%@ Page Language="C#" MasterPageFile="~/SLogin.master" AutoEventWireup="true" CodeFile="SLogin.aspx.cs" Inherits="HRM_CLogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .style7
        {
            width: 495px;
        }
        .style8
        {
            width: 480px;
            height: 67px;
        }
        
        .style10
        {
            text-align: left;
            font-family: Calibri;
            font-size: 14px;
            font-weight: bold;
            color: #660066;
            width: 126px;
        }
        .style11
        {
            text-align: right;
            font-family: Calibri;
            font-size: 14px;
            font-weight: bold;
            color: #002D00;
            width: 126px;
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
                <table class="style7" align="center">
                    <tr>
                        <td class="mnu">
                            &nbsp;</td>
                        <td class="mnu">
                            <asp:LinkButton ID="lnkviewprofile" runat="server" CssClass="mnu" 
                                onclick="lnkviewprofile_Click" CausesValidation="False">View Profile</asp:LinkButton>
                        </td>
                        <td class="mnu">
                            <asp:LinkButton ID="lnkEdu" runat="server" CssClass="mnu" 
                                onclick="lnkEdu_Click" CausesValidation="False">Education Details</asp:LinkButton>
                        </td>
                        <td class="mnu">
                            <asp:LinkButton ID="lnkcngpass" runat="server" CssClass="mnu" 
                                onclick="lnkcngpass_Click" CausesValidation="False">Change Password</asp:LinkButton>
                        </td>
                        <td class="mnu">
                            <asp:LinkButton ID="lnkremove" runat="server" CssClass="mnu" 
                                onclick="lnkremove_Click" CausesValidation="False">Remove Account</asp:LinkButton>
                        </td>
                        <td class="mnu">
                            &nbsp;</td>
                    </tr>
                    </table>
                <asp:Label ID="lblApply" runat="server" CssClass="lbll"></asp:Label>
                <br />
                <asp:Label ID="lblSPUpade" runat="server" CssClass="lbll"></asp:Label>
                <table align="center" class="style8">
                    <tr>
                        <td colspan="2">
                            <asp:MultiView ID="MultiView1" runat="server">
                                <asp:View ID="View1" runat="server">
                                    <table class="tbl">
                                        <tr>
                                            <td colspan="4" class="tblhead">
                                                Your Profile Details</td>
                                        </tr>
                                        <tr>
                                            <td class="lblleft">
                                                Name
                                            </td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblLName" runat="server" CssClass="lbll"></asp:Label>
                                                &nbsp;
                                                <asp:Label ID="lblFName" runat="server" CssClass="lbll"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lblleft">
                                                Address</td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblSadd" runat="server" CssClass="lbll"></asp:Label>
                                                &nbsp;<asp:Label ID="lblSCity" runat="server" CssClass="lbll"></asp:Label>
                                                &nbsp;<asp:Label ID="lblSState" runat="server" CssClass="lbll"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lblleft">
                                                Pincode</td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblSPin" runat="server" CssClass="lbll"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lblleft">
                                                Date of Birth</td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblSDOB" runat="server" CssClass="lbll"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lblleft">
                                                Gender</td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblSGender" runat="server" CssClass="lbll"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lblleft">
                                                Mo. No
                                            </td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblSMONO" runat="server" CssClass="lbll"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lblleft">
                                                Email Id</td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblSEid" runat="server" CssClass="lbll"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="btnSProfileEdit" runat="server" CssClass="btn" 
                                                    Text="Edit Profile" onclick="btnSProfileEdit_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="editProfile" runat="server">
                                    <table class="tbl">
                                        <tr>
                                            <td class="tblhead" colspan="3">
                                                Edit Your Profile
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lblleft">
                                                FName
                                            </td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;
                                                <asp:TextBox ID="txtSEName" runat="server"></asp:TextBox>
&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lblleft">
                                                Last Name</td>
                                            <td>
                                                ::</td>
                                            <td>
                                                <asp:TextBox ID="txtSELName" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lblleft">
                                                Address</td>
                                            <td>
                                                ::</td>
                                            <td>
                                                <asp:TextBox ID="txtSEAdd" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lblleft">
                                                City</td>
                                            <td>
                                                ::</td>
                                            <td>
                                                <asp:TextBox ID="txtSECity" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lblleft">
                                                State</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:TextBox ID="txtSEState" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lblleft">
                                                Pincode</td>
                                            <td>
                                                ::</td>
                                            <td>
                                                <asp:TextBox ID="txtSEPincode" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lblleft">
                                                Mo. No
                                            </td>
                                            <td>
                                                ::</td>
                                            <td>
                                                <asp:TextBox ID="txtSEMONO" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lblleft">
                                                Email Id</td>
                                            <td>
                                                ::</td>
                                            <td>
                                                <asp:TextBox ID="txtSEEId" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="btnSUpDate" runat="server" CssClass="btn" 
                                                    onclick="btnSUpDate_Click" Text="Update" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View5" runat="server">
                                    <asp:Label ID="lbltitle" runat="server" CssClass="lbll" 
                                        Text="Job match as per your Profile" Font-Underline="True"></asp:Label>
                                    <br />
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
                                                        Required Skill </td>
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
                                                        Job Location </td>
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
                                </asp:View>
                                <asp:View ID="View2" runat="server">
                                    <table class="tbl">
                                        <tr>
                                            <td class="tblhead" colspan="4">
                                                --::::::::&nbsp;&nbsp; Education&nbsp; Deatils&nbsp; :::::::--</td>
                                        </tr>
                                        <tr>
                                            <td class="style10">
                                                College Name </td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblCname" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style10">
                                                Enrl No </td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td style="margin-left: 40px" align="left">
                                                <asp:Label ID="lblEnrlNo2" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style10">
                                                Semester </td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblSem" runat="server"></asp:Label>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style10">
                                                Education </td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblEdu" runat="server"></asp:Label>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style10">
                                                Branch&nbsp; </td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblBrnnch" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style10">
                                                Passing year </td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblpassyr" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style10">
                                                CPI </td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblCPI" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style10">
                                                CGPA </td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblCGPA" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style10">
                                                Skill</td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblskill" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style10">
                                                Extra Skill </td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:Label ID="lblexskill" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style10">
                                                Resume </td>
                                            <td>
                                                ::</td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="left">
                                                <asp:LinkButton ID="lnkViewresume" runat="server" CssClass="lnk" 
                                                    onclick="lnkViewresume_Click">View Resume</asp:LinkButton>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style11">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style11">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="btnEDUEdit" runat="server" CssClass="btn" Text="Edit Details" 
                                                    onclick="btnEDUEdit_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style11">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View3" runat="server">
                                    <table class="tbl">
                                        <tr>
                                            <td class="tblhead" colspan="2">
                                                --:::&nbsp; Change Password&nbsp; :::--</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Current Password :
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtoldpass" runat="server" CssClass="txtt"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ControlToValidate="txtoldpass" ErrorMessage="!!!"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                New&nbsp; Password :</td>
                                            <td>
                                                <asp:TextBox ID="txtNpass" runat="server" CssClass="txtt"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                    ControlToValidate="txtNpass" ErrorMessage="!!!"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Confo&nbsp; Password :</td>
                                            <td>
                                                <asp:TextBox ID="txtCNpass" runat="server" CssClass="txtt"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                    ControlToValidate="txtCNpass" ErrorMessage="!!!"></asp:RequiredFieldValidator>
                                                <br />
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                                    ControlToCompare="txtNpass" ControlToValidate="txtCNpass" 
                                                    ErrorMessage="Password Not Match"></asp:CompareValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="btnCngpass" runat="server" CssClass="btn" Text="Change Password" 
                                                    onclick="btnCngpass_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="lblmsg" runat="server" CssClass="lblError"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View4" runat="server">
                                    <table class="tbl">
                                        <tr>
                                            <td class="tblhead" colspan="2">
                                                --:::&nbsp; Remove Account&nbsp; :::--</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Enrl No :
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtenrlno1" runat="server" CssClass="txtt"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                    ControlToValidate="txtenrlno1" ErrorMessage="!!!"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                User Name:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtuname" runat="server" CssClass="txtt"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                    ControlToValidate="txtuname" ErrorMessage="!!!"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                &nbsp;Password :</td>
                                            <td>
                                                <asp:TextBox ID="txtpass" runat="server" CssClass="txtt"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                    ControlToValidate="txtpass" ErrorMessage="!!!"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="btnremoveacnt" runat="server" CssClass="btn" Text="Remove" 
                                                    onclick="btnremoveacnt_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:View>
                               <asp:View ID="STDEDU" runat="server">
                                   <table class="tbl">
                                       <tr>
                                           <td class="tblhead" colspan="3">
                                               --::::::::&nbsp;&nbsp; Education&nbsp; Deatils&nbsp; :::::::--</td>
                                       </tr>
                                       <tr>
                                           <td class="lblleft">
                                               College Name</td>
                                           <td>
                                               ::</td>
                                           <td>
                                               <asp:TextBox ID="txtSECname" runat="server" CssClass="txtt"></asp:TextBox>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td class="lblleft">
                                               Semester </td>
                                           <td>
                                               ::</td>
                                           <td>
                                               &nbsp;<asp:DropDownList ID="drpSEsem" runat="server" CssClass="txtt">
                                                   <asp:ListItem>SELECT</asp:ListItem>
                                                   <asp:ListItem>4th Sem</asp:ListItem>
                                                   <asp:ListItem>5th Sem</asp:ListItem>
                                                   <asp:ListItem>6th Sem</asp:ListItem>
                                                   <asp:ListItem>7th Sem</asp:ListItem>
                                                   <asp:ListItem>8th Sem</asp:ListItem>
                                               </asp:DropDownList>
&nbsp;
                                           </td>
                                       </tr>
                                       <tr>
                                           <td class="lblleft">
                                               Education </td>
                                           <td>
                                               ::</td>
                                           <td>
                                               &nbsp;<asp:DropDownList ID="drpSEEdu" runat="server" CssClass="txtt">
                                                   <asp:ListItem>-SELECT-</asp:ListItem>
                                                   <asp:ListItem>Deploma</asp:ListItem>
                                                   <asp:ListItem>BE/BTech</asp:ListItem>
                                                   <asp:ListItem>ME/MTech</asp:ListItem>
                                               </asp:DropDownList>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td class="lblleft">
                                               Branch&nbsp; </td>
                                           <td>
                                               ::</td>
                                           <td>
                                               <asp:DropDownList ID="drpSEBranch" runat="server" CssClass="txtt">
                                                   <asp:ListItem>SELECT</asp:ListItem>
                                                   <asp:ListItem>IT</asp:ListItem>
                                                   <asp:ListItem>COMPUTER</asp:ListItem>
                                                   <asp:ListItem>MECHANICAL</asp:ListItem>
                                                   <asp:ListItem>EC</asp:ListItem>
                                                   <asp:ListItem>CIVIL</asp:ListItem>
                                                   <asp:ListItem>AUTOMOBILE</asp:ListItem>
                                                   <asp:ListItem>ELETRICAL</asp:ListItem>
                                               </asp:DropDownList>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td class="lblleft">
                                               Passing year
                                           </td>
                                           <td>
                                               ::</td>
                                           <td>
                                               <asp:DropDownList ID="drpSEPassyear" runat="server" CssClass="txtt">
                                                   <asp:ListItem>SELECT</asp:ListItem>
                                                   <asp:ListItem>2007</asp:ListItem>
                                                   <asp:ListItem>2008</asp:ListItem>
                                                   <asp:ListItem>2009</asp:ListItem>
                                                   <asp:ListItem>2010</asp:ListItem>
                                                   <asp:ListItem>2011</asp:ListItem>
                                                   <asp:ListItem>2012</asp:ListItem>
                                                   <asp:ListItem>2013</asp:ListItem>
                                                   <asp:ListItem>2014</asp:ListItem>
                                                   <asp:ListItem>2015</asp:ListItem>
                                               </asp:DropDownList>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td class="lblleft">
                                               CPI </td>
                                           <td>
                                               ::</td>
                                           <td>
                                               <asp:TextBox ID="txtSECPI" runat="server" CssClass="txtt"></asp:TextBox>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td class="lblleft">
                                               CGPA </td>
                                           <td>
                                               ::</td>
                                           <td>
                                               <asp:TextBox ID="txtSECGPA" runat="server" CssClass="txtt"></asp:TextBox>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td class="lblleft">
                                               Skill </td>
                                           <td>
                                               ::</td>
                                           <td>
                                               <asp:DropDownList ID="drpSEreqskill" runat="server" CssClass="txtt">
                                                   <asp:ListItem>SELECT</asp:ListItem>
                                                   <asp:ListItem>.NET</asp:ListItem>
                                                   <asp:ListItem>AJAX</asp:ListItem>
                                                   <asp:ListItem>ANDROID</asp:ListItem>
                                                   <asp:ListItem>PHP</asp:ListItem>
                                                   <asp:ListItem>JAVA</asp:ListItem>
                                                   <asp:ListItem>JAVASCRIPT</asp:ListItem>
                                                   <asp:ListItem>APPLE iOS</asp:ListItem>
                                                   <asp:ListItem>AUTO CAD</asp:ListItem>
                                                   <asp:ListItem>C</asp:ListItem>
                                                   <asp:ListItem>C#</asp:ListItem>
                                                   <asp:ListItem>c++</asp:ListItem>
                                                   <asp:ListItem>C# .NET</asp:ListItem>
                                                   <asp:ListItem>CAD/CAM</asp:ListItem>
                                                   <asp:ListItem>CSS</asp:ListItem>
                                                   <asp:ListItem>Dreamviewer</asp:ListItem>
                                                   <asp:ListItem>DBMS</asp:ListItem>
                                               </asp:DropDownList>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td class="lblleft">
                                               Extra Skill </td>
                                           <td>
                                               ::</td>
                                           <td>
                                               <asp:TextBox ID="txtSEExtraskill" runat="server" CssClass="txtt"></asp:TextBox>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td class="lblleft">
                                               Resume </td>
                                           <td>
                                               ::</td>
                                           <td>
                                               <asp:FileUpload ID="SEFUResume" runat="server" CssClass="txtt" Width="182px" />
                                           </td>
                                       </tr>
                                       <tr>
                                           <td class="lbl">
                                               &nbsp;</td>
                                           <td>
                                               &nbsp;</td>
                                           <td>
                                               &nbsp;</td>
                                       </tr>
                                       <tr>
                                           <td class="lbl">
                                               &nbsp;</td>
                                           <td>
                                               &nbsp;</td>
                                           <td>
                                               <asp:Button ID="btnSEEDU" runat="server" CssClass="btn" 
                                                   onclick="btnSEEDU_Click" Text="Update" />
                                           </td>
                                       </tr>
                                       <tr>
                                           <td class="lbl">
                                               &nbsp;</td>
                                           <td>
                                               &nbsp;</td>
                                           <td>
                                               <asp:Label ID="lblSEEDU" runat="server" CssClass="lblError"></asp:Label>
                                           </td>
                                       </tr>
                                   </table>
                                </asp:View>
                            </asp:MultiView>
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

