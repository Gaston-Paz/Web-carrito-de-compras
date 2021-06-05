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

        <a href="Carrito.aspx" class="btn btn-primary btn-lg mb-5" id="btnFinalizara">Finalizar compra</a>
    </div>


    <button type="button" class="btn btn-primary" id="btnFinalizar">Show live toast</button>

<div class="position-fixed bottom-0 right-0 p-3" style="z-index: 5; right: 0; bottom: 0;">
  <div id="liveToast" class="toast fade hide" role="alert" aria-live="assertive" aria-atomic="true" data-delay="2000">
    <div class="toast-header">
      <img src="..." class="rounded mr-2" alt="...">
      <strong class="mr-auto">Bootstrap</strong>
      <small>11 mins ago</small>
      <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="toast-body">
      Hello, world! This is a toast message.
    </div>
  </div>
</div>


    <script>
        const btnFinalizar = document.getElementById("btnFinalizar");
        const liveToast = document.getElementById("liveToast")

        btnFinalizar.addEventListener("click", tiempo);

        function mostrar() {
            console.log("desde el dom");
            liveToast.classList.remove("hide");
            liveToast.classList.add("show");
        }

        function ocultar() {
            console.log("desde el dom ocultando");
            liveToast.classList.remove("show");
            liveToast.classList.add("hide");
        }

        function tiempo() {
            let timerId = setInterval(() => mostrar(), 1000);

            // después de 5 segundos parar
            setTimeout(() => { clearInterval(timerId); ocultar(); }, 4000);
        }

    </script>

</asp:Content>
