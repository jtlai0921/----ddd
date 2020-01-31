<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        // 顯示選取日期的範圍
        switch (Calendar1.SelectedDates.Count)
        {
            case 0: // None
                lblOutput.Text = "沒有選擇日期資料.....";
                break;
            case 1: // Day
                lblOutput.Text = "選擇的日期: " + Calendar1.SelectedDate.ToShortDateString();
                break;
            case 7: // Week
                lblOutput.Text = "選擇星期的開始: " + Calendar1.SelectedDate.ToShortDateString();
                break;
            default: // Month
                lblOutput.Text = "選擇月的開始: " + Calendar1.SelectedDate.ToShortDateString();
                break;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        // 取得選取模式
        Calendar1.SelectionMode = (CalendarSelectionMode)ddlMode.SelectedIndex;
        if (Calendar1.SelectionMode == CalendarSelectionMode.None)
        {
            Calendar1.SelectedDates.Clear(); // 清除選取
        } // 設定目前的月份
        Calendar1.VisibleDate = new System.DateTime(Calendar1.TodaysDate.Year, ddlMonth.SelectedIndex + 1, 1);
        lblOutput.Text = "VisibleDate屬性值: " + Calendar1.VisibleDate.ToShortDateString();
    }

    protected void Calendar1_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
    {
        if (e.NewDate.Month > e.PreviousDate.Month)
        {
            lblOutput.Text = "下一月";
        }
        else
        {
            lblOutput.Text = "前一月";
        }
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
                <td colspan="2">
    
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
            BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" Font-Names="Verdana" 
            Font-Size="8pt" ForeColor="#003399" Height="200px" NextMonthText=" 下一月" 
            PrevMonthText="上一月" ShowGridLines="True" Width="309px" 
                        onselectionchanged="Calendar1_SelectionChanged" SelectMonthText="選月份" 
                        SelectWeekText="選星期" OnVisibleMonthChanged="Calendar1_VisibleMonthChanged">
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <WeekendDayStyle BackColor="#CCCCFF" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        </asp:Calendar>
    
                </td>
            </tr>
            <tr>
                <td>
                    <span style="font-size:13.0pt;mso-bidi-font-size:10.0pt;
font-family:全真中明體;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">選擇選取模式</span><span lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">: </span>
                    <asp:DropDownList ID="ddlMode" runat="server" AutoPostBack="True">
                        <asp:ListItem>None</asp:ListItem>
                        <asp:ListItem Selected="True">Day</asp:ListItem>
                        <asp:ListItem>DayWeek</asp:ListItem>
                        <asp:ListItem>DayWeekMonth</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <span style="font-size:13.0pt;mso-bidi-font-size:10.0pt;
font-family:全真中明體;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">選擇顯示月份</span><span lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">: </span>
                    <asp:DropDownList ID="ddlMonth" runat="server" AutoPostBack="True">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
    
    </div>
    </form>
</body>
</html>
