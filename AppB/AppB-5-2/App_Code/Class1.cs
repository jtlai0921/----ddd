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
public class Circle : IArea
{
    public int r = 10;
    public double Area()
    {
        return (3.1415 * r * r);
    }
}
public class Rectangle : IArea
{
    public int height = 15;
    public int width = 30;
    public double Area()
    {
        return (height * width);
    }
}
