<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        int x = Convert.ToInt32(txtOp1.Text);
        int y = Convert.ToInt32(txtOp2.Text);
        try
        {
            x = x / y; // 測試的錯誤程式碼
        }
        catch (Exception ex)
        {
            // 錯誤處理的程式碼
            lblOutput.Text += "程式錯誤: " + ex.ToString();
        }
        finally
        {
            // 顯示測試值
            lblOutput.Text += "<hr>測試值 x = " + x + "<br/>";
            lblOutput.Text += "測試值 y = " + y + "<br/>";
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
                    <asp:TextBox ID="txtOp1" runat="server" Width="99px"></asp:TextBox>
&nbsp;/&nbsp;
                    <asp:TextBox ID="txtOp2" runat="server" Width="100px"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="計算" Width="72px" 
                        onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblOutput" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
