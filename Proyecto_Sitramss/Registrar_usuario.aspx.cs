using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registrar_usuario : System.Web.UI.Page
{
    SqlConnection Conexion;
    protected void Page_Load(object sender, EventArgs e)
    {

        //cadena de conexion
        Conexion = new SqlConnection(@"Data Source=BRYANELAZ\XPS;Initial Catalog=SITRAMSS;Integrated Security=True");
    }

    /// <summary>
    /// El metodo "Insertar" es encargado de insertar datos a la tabla usuarios
    /// </summary>
    public void Insertar()
    {
        //variable su funcion es llevar un valor a un campo de la base de datos
        string portador="";
        //Recuperando datos del cmb
        string tipo = txttipo.SelectedValue.ToString();
        //comparando decision
        if (tipo == "Empleado")
        {
            //asignando campo
            portador = "Empleado";
        }
        else if (tipo == "Administrador")
        {
            portador = "admi";
        }
        //abriendo conexion
        Conexion.Open();
        //consulta
        SqlCommand cmd = new SqlCommand("Insert into usuarios (usuario, contraseña, nombres,direccion,dui,telefono,email,tipo) Values ( @usuario,@contraseña, @nombres, @direccion,@dui,@telefono,@email,@tipo)", Conexion);
       //asignando datos de los textbox a los parametros de la consulta
        cmd.Parameters.Add("tipo", SqlDbType.VarChar, 50).Value =portador;
        cmd.Parameters.Add("usuario", SqlDbType.VarChar, 50).Value = txtusuario.Text;
        cmd.Parameters.Add("contraseña", SqlDbType.VarChar, 50).Value = txtcontraseña1.Text;
        cmd.Parameters.Add("nombres", SqlDbType.VarChar, 50).Value = txtnombre.Text;
        cmd.Parameters.Add("direccion", SqlDbType.VarChar, 50).Value =txtdireccion.Text;
        cmd.Parameters.Add("email", SqlDbType.VarChar, 50).Value = txtemail.Text;
        cmd.Parameters.Add("dui", SqlDbType.Float, 15).Value = txtdui.Text;
        cmd.Parameters.Add("telefono", SqlDbType.Float, 15).Value = txttelefono.Text;
        //insertando los datos
        cmd.ExecuteNonQuery();
        //cerrando la peticion
        Conexion.Close();

    }
    /// <summary>
    /// El siguiente metodo corresponde al boton Registrar
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Unnamed17_Click(object sender, EventArgs e)
    {
        //llamando metodo, leer comentarios
        Insertar();
    }
}