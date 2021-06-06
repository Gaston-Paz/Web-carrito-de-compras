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
                   listaCarrito = new List<Articulo>();
                

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

                if(Request.QueryString["a"] == "d")
                {
                    Articulo elim = listaCarrito.Find(x => x.Id.ToString() == Request.QueryString["Id"]);
                    listaCarrito.Remove(elim);
                    Session.Add("listaCarrito", listaCarrito);
                }


                repetidor.DataSource = listaCarrito;
                repetidor.DataBind();
            }

            Session.Add("listaCarrito", listaCarrito);
        }

        protected void DropDownListCantidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            float subtotal;
            var argument = ((DropDownList)sender);
            Label = (int.Parse(((DropDownList)sender).Text) * int.Parse(argument.Text)).ToString();
        }

    }
}