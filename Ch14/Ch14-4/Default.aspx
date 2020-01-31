<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Wizard1.Visible = true;     // 顯示Wixard控制項
    }
    
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        lblOutput.Text = "使用者名稱: " + txtUser.Text + "<br/>";
        lblOutput.Text += "使用者姓名: " + txtName.Text + "<br/>";
        lblOutput.Text += "使用者密碼: " + txtPass.Text + "<br/>";
        Wizard1.Visible = false;  // 隱藏Wixard控制項
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
    <style type="text/css">
        .style1
        {
            width: 254px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Wizard ID="Wizard1" runat="server" Height="160px" Width="369px" 
            ActiveStepIndex="0" BackColor="#FFFBD6" BorderColor="#FFDFAD" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" HeaderText="輸入登入資訊" 
            onfinishbuttonclick="Wizard1_FinishButtonClick">
            <WizardSteps>
                <asp:WizardStep runat="server" title="Step 1">
                     <table class="style1">
                          <tr>
                             <td>
                                使用者名稱:</td>
                             <td>
                               <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                             </td>
                          </tr>
                     </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Step 2">
                     <table class="style1">
                          <tr>
                             <td>
                                姓名:</td>
                             <td>
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                             </td>
                          </tr>
                     </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Step 3">
                     <table class="style1">
                          <tr>
                             <td>
                                密碼:</td>
                             <td>
                                <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                             </td>
                          </tr>
                     </table>
                </asp:WizardStep>
            </WizardSteps>
            <SideBarButtonStyle ForeColor="White" />
            <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                ForeColor="#990000" />
            <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
            <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" 
                BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" 
                HorizontalAlign="Center" />
        </asp:Wizard>
        <asp:Label ID="lblOutput" runat="server"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
