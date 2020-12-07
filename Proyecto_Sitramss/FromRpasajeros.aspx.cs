using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FromRpasajeros : System.Web.UI.Page
{
    SqlConnection Conexion;
    protected void Page_Load(object sender, EventArgs e)
    {
        Conexion = new SqlConnection(@"Data Source=DESKTOP-HU8EM4D;Initial Catalog=SITRAMSS;Integrated Security=True");
        MostrarDatos();
    }

    public void MostrarDatos()
    {
        Conexion.Open();
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand("Select * from usuarios where tipo=@tipo", Conexion);
        cmd.Parameters.Add("tipo", SqlDbType.VarChar, 50).Value = "Pasajero";
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GvPasajero.DataSource = dt;
        GvPasajero.DataBind();
        Conexion.Close();
    }
    public void Insertar()
    {

        
        Conexion.Open();
       
        SqlCommand cmd = new SqlCommand("Insert into usuarios (usuario, contraseña, nombres,direccion,dui,telefono,email,tipo) Values ( @usuario,@contraseña, @nombres, @direccion,@dui,@telefono,@email,@tipo)", Conexion);
        
        cmd.Parameters.Add("tipo", SqlDbType.VarChar, 50).Value = "Pasajero";
        cmd.Parameters.Add("usuario", SqlDbType.VarChar, 50).Value = txtuser.Text;
        cmd.Parameters.Add("contraseña", SqlDbType.VarChar, 50).Value = "";
        cmd.Parameters.Add("nombres", SqlDbType.VarChar, 50).Value = txtnombrePasajero.Text;
        cmd.Parameters.Add("direccion", SqlDbType.VarChar, 50).Value = txtdireccionPasajero.Text;
        cmd.Parameters.Add("email", SqlDbType.VarChar, 50).Value = txtemailPasajero.Text;
        cmd.Parameters.Add("dui", SqlDbType.Float, 15).Value = txtduiPasajero.Text;
        cmd.Parameters.Add("telefono", SqlDbType.Float, 15).Value = txttelefonoPasajero.Text;
        
        cmd.ExecuteNonQuery();
  
        Conexion.Close();
        txtuser.Text = "";
        txtnombrePasajero.Text = "";
        txtdireccionPasajero.Text = "";
        txtemailPasajero.Text = "";

        txttelefonoPasajero.Text = "";
        txtduiPasajero.Text = "";
        ClientScript.RegisterClientScriptBlock(this.GetType(), "ramdomtext", "alert()", true);
        MostrarDatos();
    }

    protected void btnBuscarPasajero_Click(object sender, EventArgs e)
    {
        string busqueda = txtBuscarPas.Text;
        Conexion.Open();
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand("Select * from usuarios where usuario=@usuario", Conexion);
        cmd.Parameters.Add("usuario", SqlDbType.VarChar, 50).Value = txtBuscarPas.Text;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GvPasajero.DataSource = dt;
        GvPasajero.DataBind();
        Conexion.Close();

    }

    protected void btnInsertar_Click(object sender, EventArgs e)
    {
        Insertar();
    }

    protected void GvPasajero_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtId.Text = GvPasajero.SelectedRow.Cells[0].Text.ToString();
        txtuser.Text = GvPasajero.SelectedRow.Cells[2].Text.ToString();
        txtnombrePasajero.Text = GvPasajero.SelectedRow.Cells[1].Text.ToString();
        txtdireccionPasajero.Text = GvPasajero.SelectedRow.Cells[3].Text.ToString();
        txtduiPasajero.Text = GvPasajero.SelectedRow.Cells[4].Text.ToString();
        txtemailPasajero.Text = GvPasajero.SelectedRow.Cells[6].Text.ToString();
        txttelefonoPasajero.Text = GvPasajero.SelectedRow.Cells[5].Text.ToString();
    }


    protected void btnModificar_Click(object sender, EventArgs e)
    {
        
        Conexion.Open();
        
        SqlCommand cmd = new SqlCommand("Update usuarios set usuario=@usuario, contraseña=@contraseña, nombres=@nombres,direccion=@direccion,dui=@dui,telefono=@telefono,email=@email,tipo=@tipo where id_user=@id_user", Conexion);
       
        cmd.Parameters.Add("id_user", SqlDbType.VarChar, 50).Value = txtId.Text;
        cmd.Parameters.Add("tipo", SqlDbType.VarChar, 50).Value = "Pasajero";
        cmd.Parameters.Add("contraseña", SqlDbType.VarChar, 50).Value = "No Requerida";
        cmd.Parameters.Add("usuario", SqlDbType.VarChar, 50).Value = txtuser.Text;
        cmd.Parameters.Add("nombres", SqlDbType.VarChar, 50).Value = txtnombrePasajero.Text;
        cmd.Parameters.Add("direccion", SqlDbType.VarChar, 50).Value = txtdireccionPasajero.Text;
        cmd.Parameters.Add("email", SqlDbType.VarChar, 50).Value = txtemailPasajero.Text;
        cmd.Parameters.Add("dui", SqlDbType.Float, 15).Value = txtduiPasajero.Text;
        cmd.Parameters.Add("telefono", SqlDbType.Float, 15).Value = txttelefonoPasajero.Text;
        //insertando los datos
        cmd.ExecuteNonQuery();
        //cerrando la peticion
        Conexion.Close();
        txtuser.Text = "";
        txtnombrePasajero.Text = "";
        txtdireccionPasajero.Text = "";
        txtemailPasajero.Text = "";
        txttelefonoPasajero.Text = "";
        txtduiPasajero.Text = "";
        MostrarDatos();
    }

    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        try
        {
            Conexion.Open();
            SqlCommand cmd = new SqlCommand("Delete from usuarios where id_user = @id_user", Conexion);
            cmd.Parameters.Add("id_user", SqlDbType.Int, 20).Value = txtId.Text;
            cmd.ExecuteNonQuery();
            Conexion.Close();
            MostrarDatos();
            txtuser.Text = "";
            txtnombrePasajero.Text = "";
            txtdireccionPasajero.Text = "";
            txtemailPasajero.Text = "";
            txttelefonoPasajero.Text = "";
            txtduiPasajero.Text = "";


        }
        catch (Exception)
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "ramdomtext", "msj3()", true);
        }
    }

    protected void imgbuscado_Click(object sender, ImageClickEventArgs e)
    {
        
            string busqueda = txtBuscarPas.Text;
            Conexion.Open();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("Select * from usuarios where usuario=@usuario", Conexion);
            cmd.Parameters.Add("usuario", SqlDbType.VarChar, 50).Value = txtBuscarPas.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GvPasajero.DataSource = dt;
            GvPasajero.DataBind();
            Conexion.Close();
       

    }

    protected void txtBuscarPas_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btnRegresar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Administrador.aspx");
    }
}
