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
public class TextLine
{
    public string Line;
    // 建構子(1)
    public TextLine() { Line = ""; }
    // 建構子(2)
    public TextLine(string text) { Line = text; }
    // 物件方法
    public string GetWord()
    {
        string[] arrWords = Line.Split(' ');
        return (arrWords[0]);
    }
    // 可覆寫的方法
    public virtual string ShowText()
    {
        return Line.ToLower();
    }
}
public class MyLine : TextLine
{
    // 建構子
    public MyLine() : base() { }
    // 新增屬性
    public long Length
    {
        get
        {
            return base.Line.Length;
        }
    }
    // 新增方法
    public int InStr(string str)
    {
        string[] arrWords = base.Line.Split(' ');
        int i = 0;
        for (i = 0; i <= arrWords.GetUpperBound(0); i++)
        {
            if (arrWords[i] == str) break;
        }
        if (i < arrWords.GetUpperBound(0)) return i + 1;
        return -1;
    }
    // 隱藏方法
    public new string GetWord()
    {
        string[] arrWords = Line.Split(' ');
        return (arrWords[0].ToLower());
    }
    // 覆寫方法
    public override string ShowText()
    {
        return base.Line;
    }
}

