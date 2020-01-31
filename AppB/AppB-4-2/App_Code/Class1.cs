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
public interface IArea
{
    double Area();
}
public interface IInfo
{
    string Info();
}
public class Rectangle : IArea, IInfo
{
    public int height;
    public int width;
    public Rectangle(int h, int w)
    {
        height = h;
        width = w;
    }
    public double Area()
    {
        return (height * width);
    }
    public string Info()
    {
        return "長方形的長：" + height + "<br/>" +
               "長方形的寬：" + width + "<br/>";
    }
}
