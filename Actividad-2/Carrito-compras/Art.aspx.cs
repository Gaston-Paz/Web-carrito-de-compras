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
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio neg = new ArticuloNegocio();
            MarcaNegocio negocioMarca = new MarcaNegocio();
            id = int.Parse(Request.QueryString["id"]);
            try
            {
                listado = neg.listar();
                lista = negocioMarca.listar();
                //dgvArticulos.DataSource = neg.listar();
                //dgvArticulos.DataBind();

            }
            catch (Exception ex)
            {

                Response.Redirect("Error.aspx");
            }
        }
    }
}

