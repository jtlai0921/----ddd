using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Class1 的摘要描述
/// </summary>
public class MyTime
{
    private int Hour;
    private int Minute;
    private int Second;
    // 建構子(1)
    public MyTime(int h, int m, int s)
    {
        Hour = h;
        Minute = m;
        Second = s;
    }
    // 建構子(2)
    public MyTime(int Hour, int Minute)
    {
        this.Hour = Hour;
        this.Minute = Minute;
        Second = 0;
    }
    // 物件方法: 取得時間字串
    public string GetTime()
    {
        string str;
        str = Hour + ":" + Minute + ":" + Second;
        return str;
    }
}
