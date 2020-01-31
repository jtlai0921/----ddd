<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (rdbRare.Checked)
            lblOutput.Text = "三分熟";
        if (rdbMedium.Checked)
            lblOutput.Text = "五分熟";
        if (rdbMedWell.Checked)
            lblOutput.Text = "七分熟";
        if (rdbWellDone.Checked)
            lblOutput.Text = "全熟";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
    <style type="text/css">
        .style1
        {
            width: 200px;
        }
        .style2
        {
            width: 200px;
        }
        .style3
        {
            width: 200px;
        }
        .style4
        {
            width: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:RadioButton ID="rdbRare" runat="server" GroupName="Beef" Text="三分熟" />
                </td>
                <td class="style4">
                    <asp:RadioButton ID="rdbMedium" runat="server" GroupName="Beef" Text="五分熟" />
                </td>
                <td class="style3">
                    <asp:RadioButton ID="rdbMedWell" runat="server" GroupName="Beef" Text="七分熟" />
                </td>
                <td class="style3">
                    <asp:RadioButton ID="rdbWellDone" runat="server" GroupName="Beef" Text="全熟" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="選擇" Width="150px" 
                        onclick="Button1_Click" />
                </td>
                <td colspan="2">
                    <asp:Label ID="lblOutput" runat="server" BorderStyle="Ridge" 
                        Width="142px" BackColor="Black" Font-Bold="True" Font-Size="Larger" 
                        ForeColor="White"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
