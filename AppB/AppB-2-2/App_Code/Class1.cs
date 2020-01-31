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
    public int Hour;
    private int Minute;
    private int Second;
    // 物件屬性
    public int MySecond
    {
        get
        {
            return Second;
        }
        set
        {
            Second = value;
        }
    }
    // 欄位的存取方法
    public void SetMinute(int value)
    {
        Minute = value;
    }
    public int GetMinute() { return Minute; }
    // 物件方法: 取得時間字串
    public string GetTime()
    {
        string str;
        str = Hour + ":" + Minute + ":" + Second;
        return str;
    }
    // 物件方法: 設定時間
    public void SetTime(int h, int m, int s)
    {
        if (ValidTime(h, m, s))
        {
            Hour = h;
            Minute = m;
            Second = s;
        }
    }
    // 物件方法: 檢查時間範圍
    private bool ValidTime(int h, int m, int s)
    {
        // 檢查時間資料是否在範圍內
        if (h < 0 || h > 23) return false;
        if (m < 0 || m > 59) return false;
        if (s < 0 || s > 59) return false;  // 不在範圍內
        return true;                   // 合法時間資料
    }
}

