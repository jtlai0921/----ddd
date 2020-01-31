<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            MultiView1.ActiveViewIndex = -1;
        }
        else
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        lblOutput.Text = "使用者名稱: " + txtUser.Text + "<br/>";
        lblOutput.Text += "使用者姓名: " + txtName.Text + "<br/>";
        lblOutput.Text += "使用者密碼: " + txtPass.Text + "<br/>";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 380px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:MultiView ID="MultiView1" runat="server">
                        <table class="style1">
                            <tr>
                                <td>
                                    <asp:View ID="View1" runat="server">
                                        <table class="style1">
                                            <tr>
                                                <td>
                                                    使用者名稱:</td>
                                                <td>
                                                    <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="Button1" runat="server" Text="下一步" CommandArgument="View2" 
                                                        CommandName="SwitchViewByID" />
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:View ID="View2" runat="server">
                                        <table class="style1">
                                            <tr>
                                                <td>
                                                    姓名:</td>
                                                <td>
                                                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="Button2" runat="server" Text="前一步" CommandArgument="View1" 
                                                        CommandName="SwitchViewByID" />
                                                </td>
                                                <td>
                                                    <asp:Button ID="Button3" runat="server" Text="下一步" CommandArgument="View3" 
                                                        CommandName="SwitchViewByID" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:View ID="View3" runat="server">
                                        <table class="style1">
                                            <tr>
                                                <td>
                                                    密碼:</td>
                                                <td>
                                                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="Button4" runat="server" Text="前一步" CommandArgument="View3" 
                                                        CommandName="SwitchViewByID" />
                                                </td>
                                                <td>
                                                    <asp:Button ID="Button5" runat="server" Text="送出" Width="70px" 
                                                        onclick="Button5_Click" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                </td>
                            </tr>
                        </table>
                    </asp:MultiView>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblOutput" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
