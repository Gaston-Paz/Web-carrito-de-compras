<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Carrito_compras.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row d-flex justify-content-center">
            <h1 class="mt-5 mb-5">Mi carrito</h1>

        </div>

        <table class="table">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nombre</th>
                    <th>Cantidad</th>
                    <th>Precio Unitario</th>
                    <th>SubTotal</th>
                </tr>
            </thead>
            <tbody>

                <asp:Repeater runat="server" ID="repetidor">
                    <ItemTemplate>
                        <tr>
                            <th scope="row">1</th>
                            <td><%#Eval("Nombre")%></td>
                            <td>Otto</td>
                            <td>Mark</td>
                            <td>Otto</td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>

            </tbody>
        </table>



    </div>

    <div class="container d-flex justify-content-center">

        <a href="#!" class="btn btn-primary btn-lg mb-5">Finalizar compra</a>
    </div>


</asp:Content>
