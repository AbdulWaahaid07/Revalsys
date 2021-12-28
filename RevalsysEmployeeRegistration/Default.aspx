<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RevalsysEmployeeRegistration._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h4>EMPLOYEE REGISTRATION</h4>        
    </div>

    <div class="table">
        
      
   

        <table align="center" cellpadding="3" cellspacing="3" style="width: 100%">
            <tr>
                <td style="width: 349px">
                    <asp:Label ID="Label1" runat="server" Text="Employee ID" Font-Bold="False" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="id" runat="server" Height="25px" Width="300px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 349px">
                    <asp:Label ID="Label2" runat="server" Text="Employee Name" Font-Bold="False" Font-Size="Medium"></asp:Label>
                    <asp:Label ID="Label33" runat="server" Text="*"  Font-Size="Medium" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="name" runat="server" Height="25px" Width="300px"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" Display="Dynamic" ErrorMessage="Name Cannot be Empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 349px">
                    <asp:Label ID="Label3" runat="server" Text="Designation" Font-Bold="False" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="designation" runat="server" Height="25px" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 349px">
                    <asp:Label ID="Label4" runat="server" Text="Salary" Font-Bold="False" Font-Size="Medium"></asp:Label>
                    <asp:Label ID="Label10" runat="server" Text="*"  Font-Size="Medium" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="salary" runat="server" Height="25px" Width="300px"></asp:TextBox>
                    &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Data Entered in Invalid" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^\d+\.?\d+$" ControlToValidate="salary" Display="Dynamic"></asp:RegularExpressionValidator>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="salary" Display="Dynamic" ErrorMessage="This Feild cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 349px">
                    <asp:Label ID="Label5" runat="server" Text="Email" Font-Bold="False" Font-Size="Medium"></asp:Label>
                    <asp:Label ID="Label11" runat="server" Text="*"  Font-Size="Medium" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="email" runat="server" Height="25px" Width="300px"></asp:TextBox>
                    &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="Email entered in Invalid" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="Email Cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 349px">
                    <asp:Label ID="Label6" runat="server" Text="Mobile" Font-Bold="False" Font-Size="Medium"></asp:Label>
                    <asp:Label ID="Label12" runat="server" Text="*"  Font-Size="Medium" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="mobile" runat="server" Height="25px" Width="300px"></asp:TextBox>
                    &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="mobile" Display="Dynamic" ErrorMessage="Number Provided is Invalid" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[7-9]\d{9}$"></asp:RegularExpressionValidator>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Cannot be Empty" ControlToValidate="mobile" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 349px">
                    <asp:Label ID="Label7" runat="server" Text="Qualification" Font-Bold="False" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="qualification" runat="server" Height="25px" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 349px; height: 37px;">
                    <asp:Label ID="Label8" runat="server" Text="Manager" Font-Bold="False" Font-Size="Medium"></asp:Label>
                </td>
                <td style="height: 37px">
                    <asp:TextBox ID="manager" runat="server" Height="25px" Width="300px"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td style="width: 349px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 349px">&nbsp;</td>
                <td>
                    <asp:Button ID="addbtn" runat="server" Text="ADD" Width="100px" BackColor="#003399" ForeColor="White" OnClick="addbtn_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="rstbtn" runat="server" Text="RESET" Width="96px" BackColor="#003399" ForeColor="White" OnClick="rstbtn_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="dltbtn" runat="server" Text="DELETE" Width="96px" BackColor="#003399" ForeColor="White" OnClick="dltbtn_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="msg" runat="server" Text="" ForeColor="#009900"></asp:Label>
                </td>
            </tr>
            
        </table>
        
   

    </div>

    <div>
        <asp:Label ID="Label9" runat="server" Text="*SELECT the Employee ID tha you want to Edit / Delete"  ForeColor="#CC0000"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="emplistgrid" runat="server" Width="1200" HorizontalAlign="Center" AutoGenerateColumns="false"  ShowHeaderWhenEmpty="true"  OnSelectedIndexChanged="emplistgrid_SelectedIndexChanged"   AutoGenerateSelectButton="True" OnLoad="emplistgrid_Load">
            <HeaderStyle BackColor="#003399" ForeColor="White" />
            <Columns>
                <asp:BoundField Datafield="Employee_Id" HeaderText="ID" />
                <asp:BoundField Datafield="Employee_Name" HeaderText="Name" />
                <asp:BoundField Datafield="Employee_Designation" HeaderText="Designation" />
                <asp:BoundField Datafield="Employee_Salary" HeaderText="Income" />
                <asp:BoundField Datafield="Employee_Email" HeaderText="Email" />
                <asp:BoundField Datafield="Employee_Mobile" HeaderText="Mobile" />
                <asp:BoundField Datafield="Employee_Qualification" HeaderText="Qualification" />
                <asp:BoundField Datafield="Manager" HeaderText="Manager" />
                
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
