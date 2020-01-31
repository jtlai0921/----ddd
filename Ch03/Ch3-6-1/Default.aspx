<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    // 顯示重複訊息文字
    void ShowRepeatMessage(string msg, int times)
    {
        int i;
        for (i = 1; i <= times; i++)
        {
            lblOutput.Text += msg + "<br/>";
        }
    }
    // 轉換溫度
    float ConvertTemperature(int C)
    {
        float F;
        F = (9.0F * C) / 5.0F + 32.0F;
        return F;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {   // 呼叫C#函數
        ShowRepeatMessage("擁有參數的函數", 2);
        float temp;
        temp = ConvertTemperature(100);
        lblOutput.Text += "攝氏100轉換成華氏: " + temp;
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
