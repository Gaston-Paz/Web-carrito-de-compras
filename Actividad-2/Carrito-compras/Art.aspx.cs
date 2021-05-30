using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace Carrito_compras
{
    public partial class Art : System.Web.UI.Page
    {
        public List<Articulo> listado;
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio neg = new ArticuloNegocio();
            try
            {
                listado = neg.listar();
            }
            catch (Exception ex)
            {

                Response.Redirect("Error.aspx");
            }
        }
    }
}

