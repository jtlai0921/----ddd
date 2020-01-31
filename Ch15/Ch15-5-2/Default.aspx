<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void GridView1_PageIndexChanged(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(3000);
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
                    <span style="font-size:13.0pt;font-family:全真中明體;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">如果我們將</span><span lang="EN-US" style="font-size:
13.0pt;font-family:&quot;Times New Roman&quot;;mso-fareast-font-family:全真中明體;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">GridView</span><span style="font-size:13.0pt;font-family:全真中明體;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">控制項置於</span><span 
                        lang="EN-US" style="font-size:13.0pt;font-family:&quot;Times New Roman&quot;;mso-fareast-font-family:
全真中明體;mso-ansi-language:EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:
AR-SA">UpdatePanel</span><span style="font-size:13.0pt;font-family:全真中明體;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">控制項中，當切換顯示不同分頁的記錄資料時，就只會更新</span><span lang="EN-US" style="font-size:13.0pt;font-family:&quot;Times New Roman&quot;;mso-fareast-font-family:
全真中明體;mso-ansi-language:EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:
AR-SA">GridView</span><span style="font-size:13.0pt;font-family:全真中明體;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">控制項的部分網頁內容，而不會更新網頁其他部分的內容。</span></td>
            </tr>
            <tr>
                <td>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" 
                                BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
                                GridLines="None" AllowPaging="True" AllowSorting="True" 
                                AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1" 
                                PageSize="3" OnPageIndexChanged="GridView1_PageIndexChanged">
                                <FooterStyle BackColor="Tan" />
                                <Columns>
                                    <asp:BoundField DataField="BookID" HeaderText="BookID" ReadOnly="True" 
                                        SortExpression="BookID" />
                                    <asp:BoundField DataField="BookCatalog" HeaderText="BookCatalog" 
                                        SortExpression="BookCatalog" />
                                    <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" 
                                        SortExpression="BookTitle" />
                                    <asp:BoundField DataField="BookAuthor" HeaderText="BookAuthor" 
                                        SortExpression="BookAuthor" />
                                    <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" 
                                        SortExpression="BookPrice" />
                                    <asp:BoundField DataField="BookPubDate" HeaderText="BookPubDate" 
                                        SortExpression="BookPubDate" />
                                </Columns>
                                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                    HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            </asp:GridView>
                            <asp:UpdateProgress ID="UpdateProgress1" runat="server" 
                                AssociatedUpdatePanelID="UpdatePanel1">
                                <ProgressTemplate>
                                    <span style="font-size:13.0pt;font-family:全真中明體;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">請稍等</span><span lang="EN-US" style="font-size:
13.0pt;font-family:&quot;Times New Roman&quot;;mso-fareast-font-family:全真中明體;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">…</span>
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
