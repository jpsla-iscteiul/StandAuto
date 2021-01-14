using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace ExStandAuto
{
    public partial class Contactos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Lbl_status.Text = "";
        }

        protected void Btn_Send_Click(object sender, EventArgs e)
        {
            String connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\StandAuto.mdf;Integrated Security=True";

            SqlConnection sqlcon = new SqlConnection(connectionString);

            if (string.IsNullOrEmpty(Txt_Name.Text) || string.IsNullOrEmpty(Txt_Email.Text) || string.IsNullOrEmpty(Txt_Info.Text))
            {
                Lbl_status.Text = "Por favor, preenchea os campos com *";
                Lbl_status.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                String query = "Insert into Contactos(Nome,Local,Telemovel,Email,Info) values ('" + Txt_Name.Text + "','" + Txt_Local.Text + "','" + Txt_Telemovel.Text + "','" + Txt_Email.Text + "','" + Txt_Info.Text + "')";

                SqlCommand cmd = new SqlCommand(query, sqlcon);

                sqlcon.Open();

                cmd.ExecuteNonQuery();

                sqlcon.Close();

                Txt_Name.Text = "";
                Txt_Local.Text = "";
                Txt_Telemovel.Text = "";
                Txt_Email.Text = "";
                Txt_Info.Text = "";
                Lbl_status.Text = "Mensagem inserida com sucesso";
                Lbl_status.ForeColor = System.Drawing.Color.Green;
            }
 
        }
    }
}