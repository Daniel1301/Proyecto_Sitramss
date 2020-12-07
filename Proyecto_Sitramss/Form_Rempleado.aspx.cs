using System;
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
        string a;
        bool s= false;

        string USUARIO = Convert.ToString(Session["USUARIO"]);
        string TIPO = Convert.ToString(Session["TIPO"]);
        if (TIPO == "admi")
        {
            a = "Administrador";
        }
        else
        {
            a = "Empleado";
        }
        if (a == "Administrador")
        {

        }
        else
        {

            s = true;
            Response.Redirect("Administrador.aspx");
            Session["P"] = "1";
        }
        //cadena de conexion
        Conexion = new SqlConnection(@"Data Source=DESKTOP-HU8EM4D;Initial Catalog=SITRAMSS;Integrated Security=True");
        MostrarDatos();
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
        SqlCommand cmd = new SqlCommand("Select * from usuarios where tipo=@tipo", Conexion);
        cmd.Parameters.Add("tipo", SqlDbType.VarChar, 50).Value = "Empleado";
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
            ClientScript.RegisterClientScriptBlock(this.GetType(), "ramdomtext", "alert()", true);
            MostrarDatos();
        
       
    }





    protected void btnregistrar_Click(object sender, EventArgs e)
    {

        try
        {
            Insertar();
        }catch (Exception ex)
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "ramdomtext", "msj4()", true);
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
       
        }

    protected void Gv_SelectedIndexChanged(object sender, EventArgs e)
    {
        //
        TextBox1.Text = Gv.SelectedRow.Cells[0].Text.ToString();
        txtusuario.Text = Gv.SelectedRow.Cells[1].Text.ToString();
        txtnombre.Text = Gv.SelectedRow.Cells[2].Text.ToString();
        txtdireccion.Text = Gv.SelectedRow.Cells[3].Text.ToString();
        txtdui.Text = Gv.SelectedRow.Cells[4].Text.ToString();
        txtemail.Text = Gv.SelectedRow.Cells[5].Text.ToString();
        txttelefono.Text = Gv.SelectedRow.Cells[6].Text.ToString();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            //abriendo conexion
            Conexion.Open();
            //consulta
            SqlCommand cmd = new SqlCommand("Update usuarios set usuario=@usuario, contraseña=@contraseña, nombres=@nombres,direccion=@direccion,dui=@dui,telefono=@telefono,email=@email,tipo=@tipo where id_user=@id_user", Conexion);
            //asignando datos de los textbox a los parametros de la consulta
            cmd.Parameters.Add("id_user", SqlDbType.VarChar, 50).Value = TextBox1.Text;
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
        }catch(Exception ex)
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "ramdomtext", "msj3()", true);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //buscar
        txtusuario.Text = "-";
        txtcontraseña1.Text = "-";
        txtcontrasena2.Text = "-";
        txtnombre.Text = "-";
        txtdireccion.Text = "-";
        txtemail.Text = "-";

        txttelefono.Text = "0";
        txtdui.Text = "0";
        string busqueda = txtbuscar.Text;
        Conexion.Open();
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand("Select * from usuarios where usuario=@usuario and tipo=@tipo", Conexion);
        cmd.Parameters.Add("usuario", SqlDbType.VarChar, 50).Value = txtbuscar.Text;
        cmd.Parameters.Add("usuario", SqlDbType.VarChar, 50).Value = "admi";
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        Gv.DataSource = dt;
        Gv.DataBind();
        Conexion.Close();

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            Conexion.Open();
            SqlCommand cmd = new SqlCommand("Delete from usuarios where id_user = @id_user", Conexion);
            cmd.Parameters.Add("id_user", SqlDbType.Int, 20).Value = TextBox1.Text;
            cmd.ExecuteNonQuery();
            Conexion.Close();
            MostrarDatos();
            txtusuario.Text = "";
            txtcontraseña1.Text = "";
            txtcontrasena2.Text = "";
            txtnombre.Text = "";
            txtdireccion.Text = "";
            txtemail.Text = "";

            txttelefono.Text = "";
            txtdui.Text = "";

           
        }
        catch (Exception ex)
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "ramdomtext", "msj3()", true);
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        //buscar
        txtusuario.Text = "-";
        txtcontraseña1.Text = "-";
        txtcontrasena2.Text = "-";
        txtnombre.Text = "-";
        txtdireccion.Text = "-";
        txtemail.Text = "-";

        txttelefono.Text = "0";
        txtdui.Text = "0";
        string busqueda = txtbuscar.Text;
        Conexion.Open();
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand("Select * from usuarios where usuario=@usuario and tipo=@tipo", Conexion);
        cmd.Parameters.Add("usuario", SqlDbType.VarChar, 50).Value = txtbuscar.Text;
        cmd.Parameters.Add("tipo", SqlDbType.VarChar, 50).Value = "Empleado";
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        Gv.DataSource = dt;
        Gv.DataBind();
        Conexion.Close();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        txtusuario.Text = "";
        txtcontraseña1.Text = "";
        txtcontrasena2.Text = "";
        txtnombre.Text = "";
        txtdireccion.Text = "";
        txtemail.Text = "";

        txttelefono.Text = "";
        txtdui.Text = "";
    }

    protected void btnRegresar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Administrador.aspx");
    }
}