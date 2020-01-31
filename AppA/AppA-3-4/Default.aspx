<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        // 宣告ArrayList物件
        ArrayList products = new ArrayList();
        // 新增元素
        products.Add("MP3播放器");
        products.Add("數位相機");
        products.Add("筆記型電腦");
        // 取得IEnumerator物件
        IEnumerator enum1 = products.GetEnumerator();
        // 使用while迴圈顯示元素
        while (enum1.MoveNext())
        {
            lblOutput.Text += "[" + enum1.Current + "]";
        }
        lblOutput.Text += "<br/>";
        // 宣告Hashtable物件
        Hashtable accounts = new Hashtable();
        // 新增元素
        accounts.Add("hueyan", "1234");
        accounts.Add("jane", "5678");
        accounts.Add("mary", "1345");
        accounts.Add("tom", "8978");
        // 取得IDictionaryEnumerator物件
        IDictionaryEnumerator enum2 = accounts.GetEnumerator();
        // 使用while迴圈顯示元素
        while (enum2.MoveNext())
        {
            lblOutput.Text += "[" + enum2.Key + ":" + enum2.Value + "]";
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
    
        <asp:Label ID="lblOutput" runat="server" EnableViewState="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
