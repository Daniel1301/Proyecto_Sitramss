<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.master" AutoEventWireup="true" CodeFile="EditarVenta.aspx.cs" Inherits="EditarVenta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

         <div class="row mt-5">
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
                                <asp:Button ID="Button1" runat="server" Text="Registrar Venta" CssClass="btn btn-primary mt-3" OnClick="Button1_Click"/>
                            </div>
                        </div>
              </div>
         </div>
</asp:Content>

