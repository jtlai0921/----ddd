<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        string[] name = new string[4]; // 宣告一維陣列
        string[] nickname = {"小安", "小魚", "小乖", 
                             "小楊"};
        name[0] = "陳會安";   name[1] = "江小魚";
        name[2] = "陳允傑";   name[3] = "楊過";
        // 顯示陣列元素值
        for (int i = 0; i < 4; i++)
            lblOutput.Text += "原始陣列：" + name[i] + "<br/>";
        // 宣告二維陣列
        string[,] students = new string[3,2];
        students[0,0] = "陳會安"; // 指定陣列值
        students[0,1] = "86";
        students[1,0] = "江小魚";
        students[1,1] = "90";
        students[2,0] = "張無忌";
        students[2,1] = "70";
        // 顯示陣列值
        lblOutput.Text += "學生姓名: " + students[2,0] + "<br/>";
        lblOutput.Text += "學生成績: " + students[2,1] + "<br/>";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="執行" Width="153px" 
            onclick="Button1_Click" />
        <br />
        <asp:Label ID="lblOutput" runat="server" EnableViewState="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
