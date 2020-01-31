<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void txtInput_TextChanged(object sender, EventArgs e)
    {
        lblOutput.Text = txtInput.Text;
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
        .style3
        {
            height: 26px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style3">
                    <asp:TextBox ID="txtInput" runat="server" Width="264px" AutoPostBack="True" 
                        ontextchanged="txtInput_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblOutput" runat="server" BorderStyle="Ridge" Font-Size="Larger" 
                        Width="260px" ForeColor="Red"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
