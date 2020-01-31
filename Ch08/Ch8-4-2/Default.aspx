<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data" %>
<%@ Import NameSpace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection objCon;
        SqlDataAdapter objDataAdapter;
        string strDbCon, strSQL;
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
        // 建立DataAdapter物件的SQL指令
        strSQL = "SELECT * FROM Books";
        objDataAdapter = new SqlDataAdapter(strSQL, objCon);
        // 填入DataSet物件
        DataSet objDataSet = new DataSet();
        objDataAdapter.Fill(objDataSet, "Books");
        lblOutput.Text = "資料表記錄: <hr/>";
        foreach (DataRow objRow in objDataSet.Tables["Books"].Rows)
        {
            lblOutput.Text += objRow["BookID"] + " - ";
            lblOutput.Text += objRow["BookTitle"] + " - ";
            lblOutput.Text += objRow["BookAuthor"] + " - ";
            lblOutput.Text += objRow["BookPrice"] + "<br/>";
        }
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
    
        <asp:Label ID="lblOutput" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
