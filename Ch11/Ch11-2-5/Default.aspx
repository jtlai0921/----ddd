<%@ Page Language="C#" Title="Default" %>

<script runat="server">

    protected void Page_PreInit(object sender, EventArgs e)
    {
        Page.MasterPageFile = "Frame.master";
        Page.Title = "動態載入主版頁面";
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="UpContent" Runat="Server">
    <p>
        <span style="font-size:13.0pt;mso-bidi-font-size:10.0pt;
font-family:全真中明體;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">上方導覽列</span></p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DownContent" Runat="Server">
    <p>
        <span style="font-size:13.0pt;mso-bidi-font-size:10.0pt;
font-family:全真中明體;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">歡迎進入網站</span><span 
            lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">....</span></p>
</asp:Content>

