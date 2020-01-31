<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        // 宣告Hashtable物件
        Hashtable accounts = new Hashtable();
        int i = 0;
        // 新增元素
        accounts.Add("hueyan", "1234");
        accounts.Add("jane", "5678");
        accounts.Add("mary", "1345");
        accounts.Add("tom", "8978");
        // 使用foreach/in迴圈
        foreach (string user in accounts.Keys)
        {
            lblOutput.Text += "[" + user + ":" + accounts[user] + "]";
        }
        // 搜尋jane後刪除
        if (accounts.ContainsKey("jane"))
        {
            lblOutput.Text += "<br/>找到jane準備刪除....<br/>";
            accounts.Remove("jane");
            lblOutput.Text += "刪除結果: ";
            foreach (string user in accounts.Keys)
            {
                lblOutput.Text += "[" + user + ":" + accounts[user] + "]";
            }
        }
        accounts.Clear(); // 清除Hashtable
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
