<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Art.aspx.cs" Inherits="Carrito_compras.Art" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <%--Mostramos las marcas y la cantidad de artículos de esta categoria para cada marca--%>

    <div class="row">
        <div class="col pad px-1">
            <h1>Marcas</h1>
            <ul>
                <% foreach (Dominio.Marca item in (List<Dominio.Marca>)Session["Marcas"])
                    {
                        int contador = 0;
                        foreach (Dominio.Articulo items in (List<Dominio.Articulo>)Session["Articulos"])
                        {
                            if (items.TipoCategoria.Id == id)
                            {
                                if (item.Id == items.TipoMarca.Id)
                                {
                                    contador++;
                                }

                            }

                        } %>

                <li><% = item.Nombre %> (<% = contador %>)</li>

                <%} %>
            </ul>
        </div>


        <div class="col card-columns">

            <%-- Encolumnamos los articulos de la categoria --%>

            <% foreach (Dominio.Articulo iten in (List<Dominio.Articulo>)Session["Articulos"])
                    {
                    if (iten.TipoCategoria.Id == id)
                    { %>
                    <div class="card text-center mr-3 mt-3" style="width: 18rem;">
                        <div class="card-body">
                            <img class="img-fluid" src=" <% = iten.UrlImagen %>" alt="alternate text" />
                            <h5 class="card-title"><%  = iten.Nombre  %> </h5>
                            <h6 class="card-title">$<% = iten.Precio %></h6>
                            <a href="#" class="btn btn-primary align-content-center">Detalle</a>
                            <a href="#" class="btn btn-primary align-content-center"><i class="fas fa-shopping-cart"></i></a>
                        </div>
                    </div>
            <% }} %>
               
        </div>

    </div>



</asp:Content>
