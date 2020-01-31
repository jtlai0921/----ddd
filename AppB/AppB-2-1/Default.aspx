<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        // 物件變數宣告
        MyTime now, open, close;
        // 建立物件實例
        now = new MyTime();
        open = new MyTime();
        close = now;
        // 設定open物件的成員變數
        open.Hour = 10;
        open.Minute = 30;
        open.Second = 30;
        lblOutput.Text = "開張時間: " + open.GetTime() + "<br/>";
        // 設定close物件的成員變數
        close.SetTime(22, 30, 0);
        lblOutput.Text += "結束時間: " + close.GetTime() + "<br/>";
        lblOutput.Text += "現在時間: " + now.GetTime() + "<br/>";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblOutput" runat="server" EnableViewState="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
