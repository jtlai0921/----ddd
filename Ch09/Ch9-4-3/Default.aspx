<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data" %>
<%@ Import NameSpace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection objCon;
        SqlCommand objCmd;
        string strDbCon, strSQL;
        int count;
        // 資料庫連接字串
        strDbCon = "Data Source=.\\SQLEXPRESS;" + 
            "AttachDbFilename=" + 
            Server.MapPath("App_Data\\Products.mdf") + 
            ";Integrated Security=True;" +
            "TrustServerCertificate=False;" + 
            "User Instance=True;Context Connection=False";
        if (Page.IsPostBack)
        {
            // 建立SQL敘述新增一筆資料表記錄
            strSQL = "INSERT INTO Books (BookID, BookCatalog" + 
            " , BookTitle, BookAuthor, BookPrice, BookPubDate) ";
            strSQL += "VALUES ('" + txtID.Text + "','";
            strSQL += txtCatalog.Text + "','";
            strSQL += txtTitle.Text + "','";
            strSQL += txtAuthor.Text + "',";
            strSQL += txtPrice.Text + ",";
            strSQL += "'" + txtPubDate.Text + "')";
            // 建立Connection物件
            objCon = new SqlConnection(strDbCon);
            objCon.Open(); // 開啟資料庫連接
            // 建立Command物件的SQL指令
            objCmd = new SqlCommand(strSQL, objCon);
            // 執行SQL指令
            count = objCmd.ExecuteNonQuery();
            if (count == 1)
            {
                lblOutput.Text = "插入一筆記錄成功 :" + strSQL;
            }
            else
            {
                lblOutput.Text = "錯誤: 插入記錄失敗!";
            }
            objCon.Close(); // 關閉資料庫連接
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        書<span style="font-size:13.0pt;mso-bidi-font-size:
10.0pt;font-family:全真中明體;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">號</span><span lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">:</span>
        <asp:TextBox ID="txtID" runat="server" Width="72px">FT752</asp:TextBox>
        <br />
        分類:&nbsp;
        <asp:TextBox ID="txtCatalog" runat="server" Width="99px">程式設計</asp:TextBox>
        <br />
        <span style="font-size:13.0pt;mso-bidi-font-size:
10.0pt;font-family:全真中明體;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">書名</span><span lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">: </span>
        <asp:TextBox ID="txtTitle" runat="server" Width="253px">Visual Basic 2008程式設計範例教本</asp:TextBox>
        <br />
        作<span lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">者: </span>
        <asp:TextBox ID="txtAuthor" runat="server" Width="74px">陳會安</asp:TextBox>
        <br />
        <span style="font-size:13.0pt;mso-bidi-font-size:
10.0pt;font-family:全真中明體;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">書價</span><span lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">: </span>
        <asp:TextBox ID="txtPrice" runat="server" Width="74px">580</asp:TextBox>
        <br />
        <span style="font-size:13.0pt;mso-bidi-font-size:
10.0pt;font-family:全真中明體;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">出版日</span><span lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">:&nbsp; </span>
        <asp:TextBox ID="txtPubDate" runat="server" Width="92px">2008-4-01</asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="新增" 
            Width="62px" />
&nbsp;<br />
    
        <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
    
    </div>
    </form>
</body>
</html>
