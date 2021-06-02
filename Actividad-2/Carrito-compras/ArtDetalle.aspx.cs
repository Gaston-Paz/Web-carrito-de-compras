using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Carrito_compras
{
    public partial class ArtDetalle : System.Web.UI.Page
    {
        public string codigo;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                codigo = Request.QueryString["codigo"];
                

            }
            catch (Exception ex)
            {

                Response.Redirect("Error.aspx");
            }
        }
    }
}