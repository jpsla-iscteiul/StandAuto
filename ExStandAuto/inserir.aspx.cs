using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExStandAuto
{
    public partial class inserir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void FormView1_uploading(object sender, SqlDataSourceCommandEventArgs e)
        {
            FileUpload fileUpload1 = (FileUpload)FormView1.FindControl("FileUpload1");

      
            string pasta = Server.MapPath("~/imagens");

            if (fileUpload1.HasFile)
            {
                fileUpload1.SaveAs(pasta + "/" + fileUpload1.FileName);
                
            }
            else
            {
                
                e.Cancel = true;
            }
        }
    }

}