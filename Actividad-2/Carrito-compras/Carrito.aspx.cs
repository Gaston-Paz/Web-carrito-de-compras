using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;

namespace Carrito_compras
{
    public partial class Carrito : System.Web.UI.Page
    {
        public List<Articulo> listaCarrito;

        protected void Page_Load(object sender, EventArgs e)
        {
            listaCarrito = (List<Articulo>)Session["listaCarrito"];

            if (listaCarrito == null)
            {
                listaCarrito = new List<Articulo>();
            }

            if (!IsPostBack)
            {
                if (Request.QueryString["Id"] != null)
                {
                    if (listaCarrito.Find(x => x.Id.ToString() == Request.QueryString["Id"]) == null)
                    {
                        List<Articulo> listaActual = (List<Articulo>)Session["Articulos"];
                        listaCarrito.Add(listaActual.Find(x => x.Id.ToString() == Request.QueryString["Id"]));
                    }
                }

                repetidor.DataSource = listaCarrito;
                repetidor.DataBind();
            }

            Session.Add("listaCarrito", listaCarrito);
        }


    }
}