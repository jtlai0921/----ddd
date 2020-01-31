<%@ Page Language="C#" %>
<%@ Import Namespace="System.IO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("Output.txt");
        // 建立FileInfo物件
        FileInfo fileInfo = new FileInfo(path);
        // 建立新檔案
        StreamWriter sw = fileInfo.CreateText();
        sw.Write(txtInput.Text + "\r\n");  // 寫入
        sw.Flush();  // 將緩衝區資料寫入檔案
        sw.Close();  // 關閉檔案
        lblOutput.Text = "已經寫入：" + txtInput.Text;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("Output.txt");
        // 開啟檔案
        StreamWriter sw = new StreamWriter(path);
        sw.WriteLine(txtInput.Text); // 寫入
        sw.Flush();  // 將緩衝區資料寫入檔案
        sw.Close();  // 關閉檔案
        lblOutput.Text = "已經覆寫：" + txtInput.Text;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("Output.txt");
        // 建立FileInfo物件
        FileInfo fileInfo = new FileInfo(path);
        // 開啟檔案新增至最後
        StreamWriter sw = fileInfo.AppendText();
        sw.Write(txtInput.Text + "\r\n");// 寫入
        sw.Flush();  // 將緩衝區資料寫入檔案
        sw.Close();  // 關閉檔案
        lblOutput.Text = "已經新增：" + txtInput.Text;
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
                <td colspan="3">
                    寫入字串:
                    <asp:TextBox ID="txtInput" runat="server" Width="197px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="寫入" Width="80px" 
                        onclick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="覆寫" Width="80px" 
                        onclick="Button2_Click" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="新增" Width="80px" 
                        onclick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
