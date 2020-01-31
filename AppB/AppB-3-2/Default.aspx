<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        MyLine ml = new MyLine();
        TextLine tl = new TextLine("THIS IS A BOOK.");
        lblOutput.Text = "字串內容: " + tl.ShowText() + "<br/>";
        lblOutput.Text += "第1個字: " + tl.GetWord() + "<br/>";
        ml.Line = "That is a pen.";
        lblOutput.Text += "字串內容: " + ml.ShowText() + "<br/>";
        lblOutput.Text += "字串長度: " + ml.Length + "<br/>";
        lblOutput.Text += "第1個字: " + ml.GetWord() + "<br/>";
        lblOutput.Text += "找尋is: " + ml.InStr("is") + "<br/>";
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
