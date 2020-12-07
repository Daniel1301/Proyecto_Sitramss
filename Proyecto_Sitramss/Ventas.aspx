<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.master" AutoEventWireup="true" CodeFile="Ventas.aspx.cs" Inherits="Ventas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <asp:Button ID="Button1" runat="server" Text="Nueva Venta" CssClass="btn btn-primary mt-t mb-5 mx-auto" OnClick="Button1_Click" />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="n_venta" DataSourceID="SqlDataSource1"  CssClass="table table-bordered table-hover w-50 mx-auto">
        <Columns>
            <asp:BoundField DataField="n_venta" HeaderText="n_venta" InsertVisible="False" ReadOnly="True" SortExpression="n_venta"  />
            <asp:BoundField DataField="fecha_viaje" HeaderText="fecha_viaje" SortExpression="fecha_viaje" />
            <asp:BoundField DataField="nombres" HeaderText="nombres" SortExpression="nombres" />
            <asp:BoundField DataField="apellidos" HeaderText="apellidos" SortExpression="apellidos" />
            <asp:BoundField DataField="servicio" HeaderText="servicio" SortExpression="servicio" />
            <asp:BoundField DataField="destino" HeaderText="destino" SortExpression="destino" />
            <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
            <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
            <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
            
        </Columns>

    </asp:GridView>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SITRAMSSConnectionString5 %>" SelectCommand="SELECT [n_venta], [fecha_viaje], [nombres], [apellidos], [servicio], [destino], [cantidad], [fecha], [total], [precio] FROM [ventas]"></asp:SqlDataSource>

</asp:Content>

