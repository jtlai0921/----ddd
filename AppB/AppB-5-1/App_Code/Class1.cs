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
    public abstract double Area();
}
public class Circle : Shape
{
    public int r = 10;
    public override double Area()
    {
        return (3.1415 * r * r);
    }
}
public class Rectangle : Shape
{
    public int height = 15;
    public int width = 30;
    public override double Area()
    {
        return (height * width);
    }
}

