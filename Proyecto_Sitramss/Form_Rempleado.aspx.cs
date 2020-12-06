﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Form_Rempleado : System.Web.UI.Page
{
    SqlConnection Conexion;

    protected void Page_Load(object sender, EventArgs e)
    {
        //cadena de conexion
        Conexion = new SqlConnection(@"Data Source=DESKTOP-HU8EM4D;Initial Catalog=SITRAMSS;Integrated Security=True");
    }
    /// <summary>
    /// Metodo para ingresar
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    /// 


    /// <summary>
    /// El metodo "Insertar" es encargado de insertar datos a la tabla usuarios
    /// </summary>
    /// 

    public void MostrarDatos()
    {
        Conexion.Open();
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand("Select * from usuarios", Conexion);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        Gv.DataSource = dt;
        Gv.DataBind();
        Conexion.Close();
    }
    public void Insertar()
    {
        
        //abriendo conexion
        Conexion.Open();
        //consulta
        SqlCommand cmd = new SqlCommand("Insert into usuarios (usuario, contraseña, nombres,direccion,dui,telefono,email,tipo) Values ( @usuario,@contraseña, @nombres, @direccion,@dui,@telefono,@email,@tipo)", Conexion);
        //asignando datos de los textbox a los parametros de la consulta
        cmd.Parameters.Add("tipo", SqlDbType.VarChar, 50).Value = "Empleado";
        cmd.Parameters.Add("usuario", SqlDbType.VarChar, 50).Value = txtusuario.Text;
        cmd.Parameters.Add("contraseña", SqlDbType.VarChar, 50).Value = txtcontraseña1.Text;
        cmd.Parameters.Add("nombres", SqlDbType.VarChar, 50).Value = txtnombre.Text;
        cmd.Parameters.Add("direccion", SqlDbType.VarChar, 50).Value = txtdireccion.Text;
        cmd.Parameters.Add("email", SqlDbType.VarChar, 50).Value = txtemail.Text;
        cmd.Parameters.Add("dui", SqlDbType.Float, 15).Value = txtdui.Text;
        cmd.Parameters.Add("telefono", SqlDbType.Float, 15).Value = txttelefono.Text;
        //insertando los datos
        cmd.ExecuteNonQuery();
        //cerrando la peticion
        Conexion.Close();
        txtusuario.Text = "";
        txtcontraseña1.Text = "";
        txtcontrasena2.Text = "";
        txtnombre.Text = "";
        txtdireccion.Text = "";
        txtemail.Text = "";

        txttelefono.Text = "";
        txtdui.Text = "";
        MostrarDatos();
    }





    protected void btnregistrar_Click(object sender, EventArgs e)
    {
        Insertar();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
            TextBox1.Text = Gv.SelectedRow.Cells[1].Text.ToString();
            
        txtnombre.Text = Gv.SelectedRow.Cells[2].Text.ToString();
        txtusuario.Text = Gv.SelectedRow.Cells[3].Text.ToString();
        txtdireccion.Text = Gv.SelectedRow.Cells[4].Text.ToString();
        txtdui.Text = Gv.SelectedRow.Cells[5].Text.ToString();
        txtcontraseña1.Text = Gv.SelectedRow.Cells[6].Text.ToString();
        txtcontrasena2.Text = Gv.SelectedRow.Cells[6].Text.ToString();
        txtemail.Text = Gv.SelectedRow.Cells[7].Text.ToString();
        txttelefono.Text = Gv.SelectedRow.Cells[8].Text.ToString();
            
        }
}