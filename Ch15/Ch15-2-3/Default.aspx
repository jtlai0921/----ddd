<%@ Page Language="C#" %>
<%@ Import Namespace="System.IO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        int ch, i, count;
        // 取得實際路徑
        string path = Server.MapPath("Output.txt");
        count = Convert.ToInt32(txtCount.Text);
        // 開啟文字檔案
        StreamReader sr = new StreamReader(path);
        for (i = 1; i <= count; i++)
        {
            ch = sr.Read();  // 讀取字元
            txtOutput.Text += (char)(ch) + " ";
        }
        txtOutput.Text += "\r\n";
        sr.Close(); // 關閉檔案
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int i, count;
        string path, str;
        // 取得實際路徑
        path = Server.MapPath("Output.txt");
        count = Convert.ToInt32(txtCount.Text);
        // 開啟文字檔案
        StreamReader sr = new StreamReader(path);
        for (i = 1; i <= count; i++)
        {
            str = sr.ReadLine();  // 讀取一行
            txtOutput.Text += str + "\r\n";
        }
        sr.Close(); // 關閉檔案
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        // 取得實際路徑
        string path = Server.MapPath("Output.txt");
        // 開啟文字檔案
        StreamReader sr = new StreamReader(path);
        string str = sr.ReadToEnd();  // 讀至檔尾
        txtOutput.Text += str + "\r\n";
        sr.Close(); // 關閉檔案
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        int count = 0;
        string textLine, path;
        // 取得實際路徑  
        path = Server.MapPath("Output.txt");
        // 開啟文字檔案
        StreamReader sr = new StreamReader(path);
        do
        {
            textLine = sr.ReadLine();
            count += 1;
            txtOutput.Text += count + ": " + textLine + "\r\n";
        } while (!(sr.Peek() == -1));
        sr.Close(); // 關閉檔案
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
            width: 139px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    讀幾字元或幾行：</td>
                <td>
                    <asp:TextBox ID="txtCount" runat="server">2</asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="讀取字元" Width="80px" 
                        onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="Button2" runat="server" Text="讀取幾行" Width="80px" 
                        onclick="Button2_Click" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="讀取至檔尾" Width="80px" 
                        onclick="Button3_Click" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="讀取整個檔案" Width="80px" 
                        onclick="Button4_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:TextBox ID="txtOutput" runat="server" Width="397px" Height="107px" 
                        ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
