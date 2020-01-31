<%@ Page Language="C#" MasterPageFile="~/Member.master" Title="Member/Default" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            txtID.Text = Profile.Student.StudentId.ToString();
            txtName.Text = Profile.Student.Name;
            txtScore.Text = Profile.Student.Score.ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtID.Text != "")
        {
            Profile.Student.StudentId = Convert.ToInt32(txtID.Text);
        }
        if (txtName.Text != "")
        {
            Profile.Student.Name = txtName.Text;
        }
        if (txtScore.Text != "")
        {
            Profile.Student.Score = Convert.ToInt32(txtScore.Text);
        }
        Response.Redirect("Ch13-5-3.aspx");
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p style="width: 209px">
        歡迎進入會員首頁</p>
<table style="width: 100%">
    <tr>
        <td>
            <span lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">
            <span style="font-size:13.0pt;mso-bidi-font-size:10.0pt;
font-family:全真中明體;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">學號</span>:</span></td>
        <td>
            <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <span style="font-size:13.0pt;mso-bidi-font-size:10.0pt;
font-family:全真中明體;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">姓名</span><span lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">: </span></td>
        <td>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <span style="font-size:13.0pt;mso-bidi-font-size:10.0pt;
font-family:全真中明體;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">成績</span><span lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">: </span></td>
        <td>
            <asp:TextBox ID="txtScore" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="更改Profile物件" 
                onclick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>

