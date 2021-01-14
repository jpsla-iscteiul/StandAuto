using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExStandAuto
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["marca"] != null)
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();
            }
        }

        protected void TodasMarcas_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["marca"] != null)
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource1;
                DataList1.DataBind();
            }
        }

        protected void Avalon_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx?marca=Avalon");
        }

        protected void BMW_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx?marca=BMW");
        }

        protected void Chevy_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx?marca=Chevy");
        }

        protected void Ford_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx?marca=Ford");
        }

        protected void Honda_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx?marca=Honda");
        }

        protected void Lexus_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx?marca=Lexus");
        }

        protected void Mercedes_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx?marca=Mercedes Benz");
        }

        protected void Nissan_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx?marca=Nissan");
        }

        protected void Tesla_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx?marca=Tesla");
        }

        protected void Toyota_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx?marca=Toyota");
        }
    }
}