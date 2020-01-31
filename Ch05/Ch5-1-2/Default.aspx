<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    // 取代字串函數
    string strReplace(string input, string search, string replace)
    {
        int pos, len;
        string output, left, right;
        pos = input.IndexOf(search);
        len = search.Length;
        output = input;
        while (pos != -1)  // 找到
        { 
            // 取得搜尋字串左邊的字串
            left = output.Substring(0, pos);
            // 取得搜尋字串右邊的字串
            right = output.Substring(pos + len);
            output = left + replace + right;
            pos = output.IndexOf(search); // 再次搜尋
        }
        return output;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        lblOutput.Text = "<hr/>" + DateTime.Now + "<br/>" +
              txtName.Text + "說:" + 
              strReplace(txtMessage.Text, "\r\n", "<br/>") + 
              lblOutput.Text;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtMessage.Text = "";
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
            width: 101px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" defaultbutton="Button1" 
    defaultfocus="txtMessage">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    留言：</td>
                <td>
                    <asp:TextBox ID="txtMessage" runat="server" Height="71px" 
                        style="margin-left: 0px" TextMode="MultiLine" Width="145px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    姓名：</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Text="輸入" Width="106px" 
                        onclick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="清除" Width="128px" 
                        onclick="Button2_Click" />
                </td>
            </tr>
        </table>
        <asp:Label ID="lblOutput" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
