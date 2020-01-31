<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        string title = txtTitle.Text;
        // 轉址且傳遞URL參數至Ch9-3-3.aspx
        Response.Redirect("Ch9-3-3.aspx?Title=" + title);
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
                    請輸入書名:</td>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server" Width="216px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="查詢" Width="113px" 
                        onclick="Button1_Click" />
&nbsp;&nbsp;
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
