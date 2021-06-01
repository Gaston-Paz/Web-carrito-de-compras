<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Art.aspx.cs" Inherits="Carrito_compras.Art" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    


    <div class="row">
        <div class="col">
            <h1>marcas</h1>
            <ul>
                <% foreach (Dominio.Marca item in lista)
                    {%>
                        <li> <% = item.Nombre %> </li>
                    <%} %>
            </ul>
        </div>
        <div class="col card-columns">

            <%--Foreach--%>
  <%         foreach (Dominio.Articulo item in listado)
                if(item.TipoCategoria.Id == id) { 
                { %>
            <div class="card text-center mr-3 mt-3" style="width: 18rem;">
                <div class="card-body">
                    <img class="img-fluid" src=" <% = item.UrlImagen %>" alt="alternate text" />
                    <h5 class="card-title"> <%  = item.Nombre  %> </h5>
                    <h6 class="card-title"> $<% = item.Precio %></h6>
                    <p class="card-text"> <% = item.Descripcion %> </p>
                    <a href="#" class="btn btn-primary align-content-center">Agregar</a>
                </div>
            </div>
            <% } 
                }%>
            
        </div>

    </div>      
    


</asp:Content>
