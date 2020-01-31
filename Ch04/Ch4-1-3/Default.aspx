<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        int[] card = new int[2];
        Random rd = new Random();
        card[0] = rd.Next(1, 13);   // 取得亂數值
        card[1] = rd.Next(1, 13);
        Button btnButton = (Button)sender;
        if (btnButton.ID == "Button1")
        {
            Button1.Text = "* " + card[0] + "點";
            Button2.Text = card[1] + "點";
        }
        if (btnButton.ID == "Button2")
        {
            Button1.Text = card[0] + "點";
            Button2.Text = "* " + card[1] + "點";
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="107px" Text="樸克牌1" 
            Width="73px" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="107px" Text="樸克牌2" 
            Width="73px" />
    
    </div>
    </form>
</body>
</html>
