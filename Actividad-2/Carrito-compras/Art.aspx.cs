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
        public List<Marca> lista;
        public int id;
        public int marca;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                id = int.Parse(Request.QueryString["id"]);
                marca = int.Parse(Request.QueryString["marca"]);
                    
            }
            catch (Exception ex)
            {

                Response.Redirect("Default.aspx");
            }
        }

 
    }
}

