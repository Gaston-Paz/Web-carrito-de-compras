using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Carrito_compras
{
    public partial class Carrito : System.Web.UI.Page
    {
        public int subtotal;
        public string subtotales;


        protected void Page_Load(object sender, EventArgs e)
        {
            int valor = int.Parse(DropDownList2.SelectedValue.ToString());
            subtotal = valor * 5999;
            subtotales = (valor * 5999).ToString();
            TextBox1.Text = subtotales;
        }


    }
}