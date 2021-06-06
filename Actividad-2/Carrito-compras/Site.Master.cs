using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;

namespace Carrito_compras
{
    public partial class SiteMaster : MasterPage
    {
        public List<ItemCarrito> ListaItem;
        public int cantidadCarrito;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ListaItem = (List<ItemCarrito>)Session["items"];
                if (ListaItem == null)
                {
                    cantidadCarrito = 0;
                }
                else
                {
                    foreach (ItemCarrito item in ListaItem)
                    {
                        cantidadCarrito += item.Cantidad;
                    }
                    
                }
                Session.Add("CantidadCarrito", cantidadCarrito);
            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }
}