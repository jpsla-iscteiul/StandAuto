using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExStandAuto
{
    public partial class financiamento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Calcular_Click(object sender, EventArgs e)
        {
            decimal principal = Convert.ToDecimal(Txt_Valor.Text);
            decimal juros = Convert.ToDecimal(Txt_Juros.Text);
            decimal valorPagar = principal * (juros / 100);
            decimal totalPJ = (principal + valorPagar);
            decimal valormes = (totalPJ / 60);

            Lbl_Dados.Visible = true;
            Lbl_Valor.Visible = true;
            Lbl_Valor.Text = "O valor mensal é : " + valormes.ToString("0.00") + " €";

            Lbl_Juros.Visible = true;

            Lbl_Juros.Text = ("<br> Valor Empréstimo (€) = " + principal
                + "<br> Taxa de Juros = " + juros + "%"
                + "<br> Juros Pagos (€) " + valorPagar
                + "<br> Valor Final (€) = " + totalPJ);
        }
    }
}