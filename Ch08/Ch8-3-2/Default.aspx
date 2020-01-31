<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data" %>
<%@ Import NameSpace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection objCon;
        SqlCommand objCmd;
        string strDbCon;
        // 資料庫連接字串
        strDbCon = "Data Source=.\\SQLEXPRESS;" +
            "AttachDbFilename=" +
            Server.MapPath("App_Data\\Products.mdf") +
            ";Integrated Security=True;" + 
            "TrustServerCertificate=False;" + 
            "User Instance=True;Context Connection=False";
        // 建立Connection物件
        objCon = new SqlConnection(strDbCon);
        objCon.Open(); // 開啟資料庫連接
        // 建立Command物件的SQL指令
        objCmd = new SqlCommand(txtSQL.Text, objCon);
        // 使用ExecuteScalar執行SQL指令
        lblOutput.Text = "查詢結果: " + objCmd.ExecuteScalar();
        objCon.Close(); // 關閉資料庫連接
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        SQL 指令:
        <asp:TextBox ID="txtSQL" runat="server" Width="230px">SELECT * FROM Books</asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="查詢單一欄位值" 
            onclick="Button1_Click" />
&nbsp;<br />
    
        <asp:Label ID="lblOutput" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
