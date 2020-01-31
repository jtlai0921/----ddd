<%@ Page Language="C#" %>
<%@ Import Namespace = "System.IO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        string path = Server.MapPath("Test");
        int i = 0;
        DirectoryInfo dirInfo = new DirectoryInfo(path);
        try
        { // 取得資料夾清單
            DirectoryInfo[] subDirs = dirInfo.GetDirectories();
            for (i = 0; i < subDirs.Length; i++)
            {
                lblOutput.Text += subDirs[i].Name + "<br/>";
            }
        }
        catch (DirectoryNotFoundException ex)
        {
            lblOutput.Text += ex.Message + "<br/>";
        }
        lblOutput.Text += "<hr/>";
        try
        { // 取得檔案清單
            FileInfo[] subFiles = dirInfo.GetFiles();
            foreach (FileInfo subFile in subFiles)
            {
                lblOutput.Text += subFile.Name + "<br/>";
            }
        }
        catch (DirectoryNotFoundException ex)
        {
            lblOutput.Text += ex.Message + "<br/>";
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
    
        <asp:Label ID="lblOutput" runat="server" EnableViewState="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
