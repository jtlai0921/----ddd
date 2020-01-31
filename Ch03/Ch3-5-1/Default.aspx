<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        int score = 75, length = 110, hour = 22;
        if (score >= 60)  // if條件敘述
        {
            lblOutput.Text += "成績及格! ";
            lblOutput.Text += "學生成績: " + score + "<br/>";
        }
        if (length > 120)  // if/else條件敘述
            lblOutput.Text += "購買全票!<br/>";
        else
            lblOutput.Text += "購買半票!<br/>";
        hour = (hour >= 12) ? hour - 12 : hour; // 條件運算子
        lblOutput.Text += "12小時制: " + hour;
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
