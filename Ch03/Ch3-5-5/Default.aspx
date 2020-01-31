<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        int i, total = 0, j = 10;
        for (i = 1; i <= 100; i++)
        {
            if (i > j)   break;
            if (i % 2 == 0) continue;
            total += i;
        }
        lblOutput.Text = "1加至10的奇數和: " + total + "<br/>";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="執行" Width="153px" 
            onclick="Button1_Click" />
        <br />
        <asp:Label ID="lblOutput" runat="server" EnableViewState="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
