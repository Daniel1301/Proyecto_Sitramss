<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MantenimientoHorarios.aspx.cs" Inherits="MantenimientoHorarios" %>

<!DOCTYPE html>
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="w5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous">
     <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js" type="text/javascript"></script> 
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css"rel="stylesheet" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Estilo.css" rel="stylesheet" />
    <script src="SweetAlert.js" type="text/javascript"></script>
    <script>
        function alert()
        {
            Swal.fire(
                'Bien Hecho!',
                'Datos Insertados correctamente!',
                'success'
            )
        }

        function alert2()
        {
            Swal.fire(
                'Bien Hecho!',
                'Datos Modificados correctamente!',
                'success'
            )
        }

        function alert3()
        {
            Swal.fire(
                 'Bien Hecho!',
                 'Datos Eliminados correctamente!',
                 'success'
             )
        }
    </script>
    <style type="text/css">
        .auto-style1 {
            color: #212529;
            border-collapse: collapse;
            margin-bottom: 1rem;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div class="container mt-4">
        <h2 class="text-center text-uppercase display-4">Horarios</h2>
      <asp:Label ID="LblResultado" runat="server" ForeColor="Red" Visible="False"></asp:Label>
      <asp:Label ID="LblMensaje" runat="server" Visible="False"></asp:Label>

          <br />

          <div class="form-horizontal">
              <div class="form-group row">
                    <div class="col mt-5">
                     <h2 class="col mt-5">Edite los campos correspondientes. La campos completos se mostraran en la tabla </h2>
                        <p class="col mt-5">&nbsp;</p>
                     </div>
                 <div class="col-lg-5">
                    <center><asp:Image ID="sitramss" runat="server" Height="200px" Width="200px" BorderColor="Blue" BorderStyle="Double" ImageUrl="~/Images/gyAhcedC_400x400.jpg" class="sitramss"/>
                        <br />
                     </center>
                 </div>
              </div>

              <asp:Label ID="Lblid" runat="server" Visible="false"></asp:Label>
               <br />
              <br />
               <div class="form-group row">
                   <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="White">Horario de Salida: </asp:Label>       
                    <div class="col-md-10">
                    <asp:TextBox ID="TxtHsalida" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                   </div>
   
                   <div class="form-group row"> 
                   <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="White">Horario de llegada: </asp:Label>
                   <div class="col">
                    <asp:TextBox ID="TxtHllegada" runat="server" CssClass="form-control" ></asp:TextBox>
                    </div>
                </div>
              <div class="form-group row"> 
                  <asp:Label ID="Label3" runat="server"  CssClass="col-md-2 control-label" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="White">Lugar de Salida :</asp:Label>
                  <div class="col-md-10">
                      <asp:TextBox ID="TxtLsalida" runat="server" CssClass="form-control"></asp:TextBox>
                      <br />
                      <asp:Label ID="Label4" runat="server" Text="Lugar de Destino" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="White"></asp:Label>
                      <br />
                      <asp:TextBox ID="TxtLdestino" runat="server"></asp:TextBox>
                  </div>
              </div>
                    <br /><br />
              <div class="form-group row">
                    <div class="col-lg-7 mt-3">                   
                     <asp:Button ID="BtnInsertar" runat="server" Text="Insertar"  CssClass=" btn btn-primary mb-10" Font-Bold="True" OnClick="BtnInsertar_Click" Width="259px" Height="47px" />                                        
                        <br />
                 </div>
                  </div>
              <div class="form-group row">
                 <div class="col-lg-7 mt-3"> 
                     <asp:Button ID="BtnModificar" runat="server" Text="Modificar" CssClass=" btn btn-block btn-success float-right" OnClick="BtnModificar_Click"  Visible="false"/>
                     <br />
                   </div>
              </div>
              <div class="form-group row">
               <div class="col-lg-7 mt-3"> 
                   <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" CssClass=" btn btn-block btn btn-danger float-right" OnClick="BtnCancelar_Click" Visible="false"/>
                    </div>
                  </div>
              <br /><br />
                    <div class="form-group row">


                       <center> <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                            OnRowDeleting="GridView1_RowDeleting"               
                            OnSelectedIndexChanging="GridView1_SelectedIndexChanging"
                             CssClass="auto-style1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="295px" Width="1436px"> 
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                               <asp:CommandField DeleteText="Borrar" ShowDeleteButton="True" />                              
                            </Columns>
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />

                        </asp:GridView> </center>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                        <br />
                        <br />
                    <asp:Button ID="btnRegresar" runat="server" CssClass="btn btn-primary mb-2" Height="34px" Text="Regresar" Width="129px" ForeColor="Black" OnClick="btnRegresar_Click" style="margin-left: 69"  />
        </div>
        </div>
    </div>
    </form>
</body>
</html>
