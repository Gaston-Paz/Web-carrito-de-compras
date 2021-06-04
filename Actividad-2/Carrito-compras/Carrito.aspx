<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Carrito_compras.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row d-flex justify-content-center">
            <h1 class="mt-5 mb-5">Mi carrito</h1>
            
        </div>
        <table class="table table-hover table-primary mb-5">
            <thead class="thead-dark">
                <tr>
                    <th>#</th>
                    <th>Imagen</th>
                    <th>Nombre</th>
                    <th>Descripcion</th>
                    <th>Precio Unitario</th>
                    <th>Cantidad</th>
                    <th>Subtotal</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td><img style = "width: 40px; height: 40px; " src="https://images.fravega.com/s500/b62862d39ce664ae4535f871211360ac.jpg" alt=""></td>
                    <td>Camara</td>
                    <td>La más piola</td>
                    <td>$5999</td>

                   

                    <td><asp:DropDownList ID="DropDownList2" runat="server" Width="50px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>$<%=subtotal %><asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    
                    <td><a href="#">Eliminar</a></td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td><img style = "width: 40px; height: 40px; " src="https://images.fravega.com/s500/b62862d39ce664ae4535f871211360ac.jpg" alt=""></td>
                    <td>Camara</td>
                    <td>La más piola</td>
                    <td>$5999</td>
                    <td>1</td>
                    <td>$5999</td>
                    <td><a href="#">Eliminar</a></td>
                </tr>
                    <th scope="row">3</th>
                    <td><img style = "width: 40px; height: 40px; " src="https://images.fravega.com/s500/b62862d39ce664ae4535f871211360ac.jpg" alt=""></td>
                    <td>Camara</td>
                    <td>La más piola</td>
                    <td>$5999</td>
                    <td>1</td>
                    <td>$5999</td>
                    <td><a href="#">Eliminar</a></td>
                </tr>
            </tbody>
        </table>
        
        
    </div>
    
    <div class="container d-flex justify-content-center">

        <a href="#!" class="btn btn-primary btn-lg mb-5">Finalizar compra</a>
    </div>


</asp:Content>
