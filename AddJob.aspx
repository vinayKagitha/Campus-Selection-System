<%@ Page Language="C#" MasterPageFile="~/CLogin.master" AutoEventWireup="true" CodeFile="AddJob.aspx.cs" Inherits="AAddJob" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                --:::&nbsp;&nbsp;
                Add&nbsp; New job&nbsp; :::--</td>
        </tr>
        <tr>
            <td>
                <table align="center" cellspacing="5" class="tbl">
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td class="lbl">
                            Company Name :</td>
                        <td class="style3" style="margin-left: 80px" colspan="3">
                            <asp:TextBox ID="txtCname" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td class="lbl">
                            Category :
                        </td>
                        <td class="style3" style="margin-left: 80px" colspan="3">
                            <asp:DropDownList ID="DrpCategory" runat="server" CssClass="txtt">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Comp Eng</asp:ListItem>
                                <asp:ListItem>Comp Sci</asp:ListItem>
                                <asp:ListItem>IT</asp:ListItem>
                                <asp:ListItem>EC</asp:ListItem>
                                <asp:ListItem>IC</asp:ListItem>
                                <asp:ListItem>Civil</asp:ListItem>
                                <asp:ListItem>Auto</asp:ListItem>
                                <asp:ListItem>Electrical</asp:ListItem>
                                <asp:ListItem>Mechanical</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="lblCategory" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td class="lbl">
                            Role :
                        </td>
                        <td class="style3" colspan="3">
                            <asp:DropDownList ID="DrpRole" runat="server" CssClass="txtt">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>Programmer</asp:ListItem>
                                <asp:ListItem>Designer</asp:ListItem>
                                <asp:ListItem>Database Operater</asp:ListItem>
                                <asp:ListItem>Developer</asp:ListItem>
                                <asp:ListItem>Software Developer</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="lblRole" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td class="lbl">
                            Min Qualification :
                        </td>
                        <td class="style3" style="margin-left: 80px" colspan="3">
                            <asp:DropDownList ID="drpQlf" runat="server" CssClass="txtt">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>Diploma</asp:ListItem>
                                <asp:ListItem>BE/BTech</asp:ListItem>
                                <asp:ListItem>ME/MTech</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="lblMinQualification" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td class="lbl">
                            Required Skill :
                        </td>
                        <td class="style3" style="margin-left: 40px" colspan="3">
                                                   <asp:DropDownList ID="drpreqskill" runat="server" CssClass="txt" 
                                                       Width="140px">
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
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr class="lbl">
                        <td>
                            &nbsp;</td>
                        <td>
                            Extra Skill :
                        </td>
                        <td class="style3" style="margin-left: 40px; text-align:center;" colspan="3">
                            <asp:TextBox ID="txtOtherSkill" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td class="lbl">
                            Max. Age :</td>
                        <td class="style3" style="margin-left: 40px" colspan="3">
                            <asp:DropDownList ID="drpmaxage" runat="server" CssClass="txtt">
                                <asp:ListItem>YEAR</asp:ListItem>
<asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td class="lbl">
                            Job Location :
                        </td>
                        <td class="style3" colspan="3">
                            <asp:DropDownList ID="drpjobLoc" runat="server" CssClass="txtt">
                                <asp:ListItem>Select Location</asp:ListItem>
                                <asp:ListItem>Modasa</asp:ListItem>
                                <asp:ListItem>Vadodara</asp:ListItem>
                                <asp:ListItem>Ahemdabad</asp:ListItem>
                                <asp:ListItem>Surat</asp:ListItem>
                                <asp:ListItem>Rajkot</asp:ListItem>
                                <asp:ListItem>Mumbai</asp:ListItem>
                                <asp:ListItem>Pune</asp:ListItem>
                                <asp:ListItem>Banglure</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="lblJobLocation" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td class="lbl">
                            Salary :
                        </td>
                        <td colspan="3">
                            <asp:DropDownList ID="DrpMinSalary" runat="server" CssClass="txtt">
                                <asp:ListItem>In Thousand</asp:ListItem>
                                <asp:ListItem> 5000-10000</asp:ListItem>
                                <asp:ListItem>10000-15000</asp:ListItem>
                                <asp:ListItem>15000-20000</asp:ListItem>
                                <asp:ListItem>20000-25000</asp:ListItem>
                                <asp:ListItem>25000-30000</asp:ListItem>
                                <asp:ListItem>30000-35000</asp:ListItem>
                                <asp:ListItem>35000-40000</asp:ListItem>
                                <asp:ListItem>40000-45000</asp:ListItem>
                                <asp:ListItem>45000-50000</asp:ListItem>
                                <asp:ListItem>50000</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="lblMinSalary" runat="server"></asp:Label>
                            <asp:Label ID="lblMaxSalary" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td class="lbl">
                            Working Hour&nbsp; :</td>
                        <td class="style3" colspan="3">
                            <asp:TextBox ID="txtworkinghour" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td class="lbl">
                            Desription :
                        </td>
                        <td class="style3" colspan="3">
                            <asp:TextBox ID="txtDescr" runat="server" CssClass="txtt" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td class="lbl">
                            Last Apply Date ::</td>
                        <td class="style3" align="left" >
                            <asp:DropDownList ID="DrpDD" runat="server" Width="40px" CssClass="txtt" >
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
                        </td>
                        <td class="style3" align="left" >
                            <asp:DropDownList ID="DrpMM" runat="server" Width="40px" CssClass="txtt" >
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
                        </td>
                        <td class="style3" align="left" >
                            <asp:DropDownList ID="DrpYY" runat="server" Width="60px" CssClass="txtt" >
                                <asp:ListItem>YYYY</asp:ListItem>
                                <asp:ListItem>2013</asp:ListItem>
                                <asp:ListItem>2014</asp:ListItem>
                                <asp:ListItem>2015</asp:ListItem>
                                <asp:ListItem>2016</asp:ListItem>
                                
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style3" colspan="3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                        </td>
                        <td class="style5" colspan="3">
                            <asp:Button ID="btnPostJOb" runat="server" CssClass="btn" 
                                onclick="btnPostJOb_Click" Text="PostJob" />
                        </td>
                        <td class="style4">
                            <asp:Label ID="lblJmsg" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

