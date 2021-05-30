<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Art.aspx.cs" Inherits="Carrito_compras.Art" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">




    <div class="row">
        <div class="col">
            <h1>marcas</h1>
            <ul>
                <li>Sony</li>
                <li>Sony</li>
                <li>Sony</li>
            </ul>
        </div>
        <div class="col card-columns">

            <%--Foreach--%>
            <% foreach (Dominio.Articulo item in listado)
                {%>

                
                 
            <div class="card text-center mr-3 mt-3" style="width: 18rem;">
                <div class="card-body">
                    <img src="https://images.fravega.com/s250/efbb3a2a38f64f141a84626f3bebacf3.jpg" alt="alternate text" />
                    <h5 class="card-title"> <% = item.Nombre %> </h5>
                    <h6 class="card-title">$29999</h6>
                    <p class="card-text">Con una pantalla de 6,5”, resolución HD+ y un sistema multi cámara, el celular Motorola G9 Play se presenta como una de las mejores opciones a la hora de elegir un smartphone. </p>
                    <a href="#" class="btn btn-primary align-content-center">Agregar</a>
                </div>
            </div>
            <% } %>
            
        </div>

    </div>
        
    


</asp:Content>
