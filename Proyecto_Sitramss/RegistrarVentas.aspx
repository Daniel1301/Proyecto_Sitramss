<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrarVentas.aspx.cs" Inherits="RegistrarVentas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Formulario - Ventas</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js" type="text/javascript"></script> 
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css"rel="stylesheet" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="SweetAlert.js"></script>
<script src="alert.js"></script>
</head>
<body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
              <a class="navbar-brand" href="#">APP-SITRAMSS</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">

                  <li class="nav-item">
                    <a class="nav-link" href="#">Inicio</a>
                  </li>

                  <li class="nav-item">
                    <a class="nav-link" href="#">Buses</a>
                  </li>

                  <li class="nav-item">
                    <a class="nav-link" href="#">Empleados</a>
                  </li>

                  <li class="nav-item">
                    <a class="nav-link" href="Ventas.aspx">Ventas</a>
                  </li>
                </ul>
              </div>
            </nav>



    <asp:Label ID="Label1" runat="server" Text="" CssClass="text-danger"></asp:Label>
    <form id="form1" runat="server" class="mt-5">
         <div class="row">
             <div class="col-md-6 m-auto">
                          <div class="form-group row">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">Nombre</label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="TextBox1" runat="server" name="txtNombre"  CssClass="form-control" required></asp:TextBox>
                            </div>
                          </div>

                          <div class="form-group row">
                            <label for="inputPassword3" class="col-sm-2 col-form-label">Apellido</label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="TextBox2" runat="server" name="txtApellido" CssClass="form-control" required></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="inputPassword3" class="col-sm-2 col-form-label">Servicio</label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="TextBox3" runat="server" name="txtServicio" CssClass="form-control" required ></asp:TextBox>
                            </div>
                          </div>
                        <div class="form-group row">
                            <label for="inputPassword3" class="col-sm-2 col-form-label">Destino</label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="TextBox4" runat="server" name="txtDestino" CssClass="form-control" required ></asp:TextBox>
                            </div>
                          </div>
                    
                        <div class="form-group row">
                            <label for="inputPassword3" class="col-sm-2 col-form-label">Fecha del viaje</label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="TextBox7" runat="server" name="txtFechaViaja" CssClass="form-control"  ></asp:TextBox>
                            </div>
                          </div>

                           <div class="form-group row">
                            <label for="inputPassword3" class="col-sm-2 col-form-label">Precio</label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="TextBox5" runat="server" name="txtPrecio" CssClass="form-control" required ></asp:TextBox>
                            </div>
                          </div>
                            <div class="form-group row">
                            <label for="inputPassword3" class="col-sm-2 col-form-label">Cantidad</label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="TextBox6" runat="server" name="txtCantidad" CssClass="form-control" required ></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group row">
                            <div class="col-sm-10">
                                <asp:Button ID="Button1" runat="server" Text="Registrar Venta" CssClass="btn btn-primary mt-3" OnClick="Button1_Click" />
                                <br />
                                <br />
                                <br />
                    <asp:Button ID="btnRegresar" runat="server" CssClass="btn btn-primary mb-2" Height="34px" Text="Regresar" Width="129px" ForeColor="Black" OnClick="btnRegresar_Click" style="margin-left: 69"  />
                            </div>
                        </div>
              </div>
         </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
