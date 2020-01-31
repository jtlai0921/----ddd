<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        int i;
        string str = "";
        for (i = 0; i <= lstGifts.Items.Count - 1; i++)
        {
            if (lstGifts.Items[i].Selected)
                str = str + lstGifts.Items[i].Text + "<br/>";
        }
        lblOutput.Text = str;
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
                    <span style="font-size:13.0pt;mso-bidi-font-size:10.0pt;
font-family:全真中明體;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">選擇免費的禮物</span><span lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">(</span>複<span style="font-size:13.0pt;
mso-bidi-font-size:10.0pt;font-family:全真中明體;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">選</span><span 
                        lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">):</span></td>
            </tr>
            <tr>
                <td>
                    <asp:ListBox ID="lstGifts" runat="server" Height="82px" Width="159px" 
                        SelectionMode="Multiple">
                        <asp:ListItem Value="1">滑鼠</asp:ListItem>
                        <asp:ListItem Value="2">鍵盤</asp:ListItem>
                        <asp:ListItem Value="3">喇叭</asp:ListItem>
                        <asp:ListItem Value="4">麥克風</asp:ListItem>
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblOutput" runat="server" Font-Size="Larger" 
                        Width="260px" ForeColor="Red"></asp:Label>
                    　　<asp:Button ID="Button1" runat="server" Text="選擇" Height="32px" 
                        Width="63px" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
