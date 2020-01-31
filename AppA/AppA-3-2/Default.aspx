<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        // 宣告ArrayList物件
        ArrayList products = new ArrayList();
        int i = 0;
        // 新增元素
        products.Add("MP3播放器");
        products.Add("數位相機");
        products.Add("筆記型電腦");
        // 使用for迴圈
        for (i = 0; i < products.Count; i++)
        {
            lblOutput.Text += "[" + i + ":" + products[i] + "]";
        }
        i = products.IndexOf("數位相機");
        lblOutput.Text += "<br/>搜尋[數位相機]的位置: " + i + "<br/>";
        products.Insert(1, "照像手機"); // 插入元素
        products.Insert(3, "液晶螢幕");
        products.Remove("筆記型電腦"); // 刪除元素
        products.RemoveAt(0);
        // 使用foreach/in迴圈
        foreach (string item in products)
        {
            lblOutput.Text += "[" + item + "]";
        }
        products.Clear(); // 清除ArrayList
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
