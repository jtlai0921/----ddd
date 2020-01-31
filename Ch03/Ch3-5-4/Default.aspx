<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        int i = 1;
        int total = 0;
        while (i <= 15)  // while迴圈
        {
            lblOutput.Text += i + " ";
            total += i;
            i += 1;
        }
        lblOutput.Text += "<br/>1加到15的總和: " + total + "<br/>";
        i = 1; total = 0;
        do  // do/while迴圈
        {
            lblOutput.Text += i + " ";
            total += i;
            i += 1;
        } while (i <= 15);
        lblOutput.Text += "<br/>1加到15的總和: " + total + "<br/>";
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
