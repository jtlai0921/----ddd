<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // 第一次載入網頁
            ArrayList names = new ArrayList();
            names.Add("陳會安");
            names.Add("江小魚");
            names.Add("張無忌");
            names.Add("陳允傑");
            // 指定資料來源
            lstNames.DataSource = names;
            lstNames.DataBind(); // 建立資料繫結
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (lstNames.SelectedIndex > -1)
        {
            lblOutput.Text = "選擇的姓名: " + lstNames.SelectedItem.Text;
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    <asp:ListBox ID="lstNames" runat="server" Height="79px" Width="132px">
                    </asp:ListBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="28px" Text="選擇" Width="71px" 
                        onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblOutput" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
