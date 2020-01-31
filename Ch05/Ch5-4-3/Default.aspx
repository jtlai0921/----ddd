<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        int i, total = 0, count = 0;
        double rate;
        // 計算總價
        for (i = 0; i <= chkiPods.Items.Count - 1; i++)
        {
            if (chkiPods.Items[i].Selected)
            {
                total += Convert.ToInt32(chkiPods.Items[i].Value);
                count += 1;
            }
        }
        // 計算手續費
        if (rdbShipment.SelectedIndex > -1)
        {
            rate = Convert.ToInt32(rdbShipment.SelectedItem.Value) / 100;
            lblOutput.Text = "總價： $" + (total * (1 + rate)) + "<br/>";
            lblOutput.Text += "項目數: " + count;
        }
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    <asp:Panel ID="Panel1" runat="server" GroupingText="iPod產品" Width="357px">
                        <asp:CheckBoxList ID="chkiPods" runat="server">
                            <asp:ListItem Value="12500">iPod Video $12500</asp:ListItem>
                            <asp:ListItem Value="8000">iPod Nano $8000</asp:ListItem>
                            <asp:ListItem Value="5500">iPod Mini $5500</asp:ListItem>
                            <asp:ListItem Value="3500">iPod Shuffle $3500</asp:ListItem>
                        </asp:CheckBoxList>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel2" runat="server" GroupingText="運送手續費" Width="357px">
                        <asp:RadioButtonList ID="rdbShipment" runat="server" 
                            RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="5">自取 5%</asp:ListItem>
                            <asp:ListItem Value="10">郵寄 10%</asp:ListItem>
                        </asp:RadioButtonList>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblOutput" runat="server" Font-Size="Larger" 
                        Width="260px" ForeColor="Red"></asp:Label>
                    　　<asp:Button ID="Button1" runat="server" Text="計算" Height="32px" 
                        Width="63px" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
