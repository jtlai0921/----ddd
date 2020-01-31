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
public abstract class Shape
{
    public int x;
    public int y;
    // 建構子
    public Shape()
    {
        x = 10;
        y = 10;
    }
    public Shape(int x, int y)
    {
        this.x = x;
        this.y = y;
    }
    public abstract double Area(); // 抽象方法
}
// 繼承抽象類別的子類別
public class Circle : Shape
{
    public int r;
    public Circle(int x, int y, int r)
        : base(x, y)
    {
        this.r = r;
    }
    public override double Area()
    {
        return (3.1415 * r * r);
    }
}
