<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="logi" runat="server">
            <table>
        
        <tr><td><label>Корисничко име:</label></td><td><asp:TextBox ID="user" runat="server" CausesValidation="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="user" Display="None" ErrorMessage="Внеси корисничко име!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="user" Display="None" ErrorMessage="Ви недостасува специјален знак!" ForeColor="Red" ValidationExpression="\w*[!\^-]+\w*"></asp:RegularExpressionValidator>
            </td></tr> 
        <tr><td><label>Лозинка:</label></td><td><asp:TextBox ID="TextBox1" runat="server" CausesValidation="True" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" Display="None" ErrorMessage="Внеси лозинка!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td></tr> 
        <tr><td><label>Email:</label></td><td><asp:TextBox ID="TextBox2" runat="server" CausesValidation="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" Display="None" ErrorMessage="Внеси email!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" Display="None" ErrorMessage="Неправилен формат на email!" ForeColor="Red" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
            </td></tr> 
        <tr><td></td><td><asp:Button runat="server" OnClick="login" Text="Најави се"/></td></tr> 
        </table><br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
             </div>
            <div id="moviepage" runat="server">
                  <asp:ListBox ID="list" runat="server" OnSelectedIndexChanged="Change" AutoPostBack="True">
                    <asp:ListItem>Драма</asp:ListItem>
                    <asp:ListItem>Комедија</asp:ListItem>
                    <asp:ListItem>Акција</asp:ListItem>
                </asp:ListBox>
                <asp:Image runat="server" ImageUrl="~/123.gif" Height="200" Width="200" />
                <div id="divv" runat="server">
                    <table>
                        <tr><td class="auto-style1"><asp:CheckBox ID="C1" runat="server" OnCheckedChanged="C1_CheckedChanged" AutoPostBack="True" /></td><td class="auto-style1"><asp:TextBox runat="server" ID="T1" CausesValidation="True" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="R1" runat="server" ControlToValidate="T1" ErrorMessage="Внеси количина!" ForeColor="Red" Enabled="False"></asp:RequiredFieldValidator>
                            </td></tr>
                        <tr><td><asp:CheckBox ID="C2" runat="server" OnCheckedChanged="C1_CheckedChanged" AutoPostBack="True" /></td><td><asp:TextBox runat="server" ID="T2" Height="18px" TextMode="Number" CausesValidation="True"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="R2" runat="server" ControlToValidate="T2" ErrorMessage="Внеси количина!" ForeColor="Red" Enabled="False"></asp:RequiredFieldValidator>
                            </td></tr>
                        <tr><td class="auto-style1"><asp:CheckBox ID="C3" runat="server" OnCheckedChanged="C1_CheckedChanged" AutoPostBack="True" /></td><td class="auto-style1"><asp:TextBox runat="server" ID="T3" TextMode="Number" CausesValidation="True"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="R3" runat="server" ControlToValidate="T3" ErrorMessage="Внеси количина!" ForeColor="Red" Enabled="False"></asp:RequiredFieldValidator>
                            </td></tr>
                       <tr><td><asp:Button runat="server" OnClick="buy" Text="Купи" /></td></tr>
                      <tr><td><asp:Label ID="sum" runat="server"></asp:Label></td></tr>  
                    </table>
                </div>
              
            </div>
       </div>
    </form>
</body>
</html>
