<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            // 表單欄位處理
            if (txtName.Text != "")
                lblOutput.Text = txtName.Text + "歡迎進入網頁!";
        }
        else
        {  // 第一次載入網頁 - 設定欄位初值
            txtName.Text = "江小魚";
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
        .style2
        {
        }
        .style3
        {
            width: 154px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" defaultbutton="Button1" defaultfocus="txtName">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style3">
                    使用者姓名:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" style="margin-left: 0px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    使用者密碼:</td>
                <td>
                    <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="登入" Width="147px" />
                </td>
            </tr>
        </table>
    
    </div>
    <p>
        <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
    </p>
    </form>
</body>
</html>
