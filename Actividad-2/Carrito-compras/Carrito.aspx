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
                            <td>
                                <asp:DropDownList ID="DropDownListCantidad" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListCantidad_SelectedIndexChanged" CommandArgument='<%#Eval("Id")%>'>
                                    <asp:ListItem Selected="True" Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                    <asp:ListItem Value="5">5</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>$<%#Eval("Precio")%></td>
                            <td>
                                <asp:Label ID="LabelSubtotal" runat="server" Text="Label"></asp:Label>Otto
                            </td>
                           <td><a href="Carrito.aspx?id=<%#Eval("Id")%>&a=d" class="btn btn-danger">Eliminar</a>
                            </td>
                       </tr>
                    </ItemTemplate>
                </asp:Repeater>
        
           </tbody>
        </table>

        

    </div>

    <div class="container d-flex justify-content-center">

        <%--<a href="Carrito.aspx" class="btn btn-primary btn-lg mb-5" id="btnFinalizara">Finalizar compra</a>--%>
        <button type="button" class="btn btn-primary btn-lg mb-5" data-toggle="modal" data-target="#exampleModal">
            Finalizar Compra</button>
    </div>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Web-Carrito</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <p>Proyecto hecho para UTN-FRGP Programación III</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal">Ok</button>
      </div>
    </div>
  </div>
</div>

</asp:Content>
