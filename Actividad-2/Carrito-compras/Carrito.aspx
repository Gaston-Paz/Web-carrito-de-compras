<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Carrito_compras.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row d-flex justify-content-center">
            <h1 class="mt-5 mb-5">Mi carrito</h1>

        </div>

      <table class="table">
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Nombre</th>
                    <th>Cantidad</th>
                    <th>Precio Unitario</th>
                    <th>SubTotal</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>

                <asp:Repeater runat="server" ID="repetidor" >
                    <ItemTemplate>
                        <tr>
                            <th scope="row"><%#Eval("Codigo")%></th>
                            <td><%#Eval("Nombre")%></td>
                            <td>  </td>
                            <td>$<%#Eval("Precio")%></td>
                            <td>Otto</td>
                           <td><a href="Carrito.aspx?id=<%#Eval("Id")%>&a=d"><btn>Eliminar</btn></a>
                            </td>
                       </tr>
                    </ItemTemplate>
                </asp:Repeater>
        
           </tbody>
        </table>

        

    </div>

    <div class="container d-flex justify-content-center">

        <a href="Carrito.aspx" class="btn btn-primary btn-lg mb-5">Finalizar compra</a>
    </div>


</asp:Content>
