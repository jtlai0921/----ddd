<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void rdbRare_CheckedChanged(object sender, EventArgs e)
    {
        lblOutput.Text = rdbRare.Text;
    }

    protected void rdbMedium_CheckedChanged(object sender, EventArgs e)
    {
        lblOutput.Text = rdbMedium.Text;
    }

    protected void rdbMedWell_CheckedChanged(object sender, EventArgs e)
    {
        lblOutput.Text = rdbMedWell.Text;
    }

    protected void rdbWellDone_CheckedChanged(object sender, EventArgs e)
    {
        lblOutput.Text = rdbWellDone.Text;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
    <style type="text/css">
        .style1
        {
            width: 354px;
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
                    <asp:RadioButton ID="rdbRare" runat="server" GroupName="Beef" Text="三分熟" 
                        AutoPostBack="True" oncheckedchanged="rdbRare_CheckedChanged" />
                </td>
                <td class="style4">
                    <asp:RadioButton ID="rdbMedium" runat="server" GroupName="Beef" Text="五分熟" 
                        AutoPostBack="True" oncheckedchanged="rdbMedium_CheckedChanged" />
                </td>
                <td class="style3">
                    <asp:RadioButton ID="rdbMedWell" runat="server" GroupName="Beef" Text="七分熟" 
                        AutoPostBack="True" oncheckedchanged="rdbMedWell_CheckedChanged" />
                </td>
                <td class="style3">
                    <asp:RadioButton ID="rdbWellDone" runat="server" GroupName="Beef" Text="全熟" 
                        AutoPostBack="True" oncheckedchanged="rdbWellDone_CheckedChanged" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="lblOutput" runat="server" BorderStyle="Ridge" 
                        Width="322px" BackColor="Black" Font-Bold="True" Font-Size="Larger" 
                        ForeColor="White"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
