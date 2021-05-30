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
    public partial class _Default : Page
    {
        public List<Articulo> lista;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ArticuloNegocio negocio = new ArticuloNegocio();
                lista = negocio.listar();

                Session.Add("Articulos", lista);
            }
            catch (Exception ex)
            {

                Response.Redirect("/Error.aspx");
            }
            
        }
    }
}