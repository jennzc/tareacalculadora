using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tareacalculadora
{
    public partial class inicio : System.Web.UI.Page
    {
        float num1 = 0;
        float num2 = 0;
        float resultado = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void radio() // checklist
        {
            num1 = float.Parse(tnum1.Text);
            num2 = float.Parse(tnum2.Text);

            if (rsuma.Checked)
            {
                resultado = num1 + num2;
            }
            else if (rresta.Checked)
            {
                resultado = num1 - num2;
            }
            else if (rmultiplicacion.Checked)
            {
                resultado = num1 * num2;
            }
            else if (rdivision.Checked)
            {
                resultado = num1 / num2;
            }
            lresultado.Text = resultado.ToString();
        }

        private void dropdown() // dropdownlist - menú desplegable
        {
            num1 = float.Parse(tnum1.Text);

            if (doperacion.SelectedValue == "2") // "cuadrado"
            {
                resultado = num1 * num1;
            }
            else if (doperacion.SelectedValue == "3") // "cubo"
            {
                resultado = num1 * num1 * num1;
            }
            else
            {
                resultado = 0;
            }
            lresultado.Text = resultado.ToString();
        }

        protected void bresultado_Click(object sender, EventArgs e)
        {
            if (rsuma.Checked || rresta.Checked || rmultiplicacion.Checked || rdivision.Checked)
            {
                radio();
            }
            else
            {
                dropdown();
            }
        }
    }
}