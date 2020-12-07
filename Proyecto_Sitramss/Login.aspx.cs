using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /// <summary>
    /// La Var "llave" hace referencia a si la sesion se inicio correctamente es usada mas adelante
    /// para la verifacion del paso 2
    /// </summary>
    bool llave = false;

    /// <summary>
    /// Metodo "Verificacion_de_login": Contruye la primera confirmacion si el usuario se ingreso correctamente
    /// </summary>
    public void Verificacion_de_login()
    {
        //Cadena de conexion
        using (SqlConnection sqlcon = new SqlConnection(@"Data Source=BRYANELAZ\XPS;Initial Catalog=SITRAMSS;Integrated Security=True"))
        {
            //abriendo la base de datos
            sqlcon.Open();
            //mandando la solicitud para saber si existe un registro que cumpla lo solicitado
            string query = "SELECT COUNT(1) FROM USUARIOS WHERE USUARIO=@USUARIO AND CONTRASEÑA=@CONTRASENA";
            SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
            //enviando los parametros correspondientes de los textbox a la base de datos
            sqlcmd.Parameters.AddWithValue("@USUARIO", txtuser.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@CONTRASENA", txtpass.Text.Trim());
            //Regresando y guardando el parametro puede ser 1 o 0
            int count = Convert.ToInt32(sqlcmd.ExecuteScalar());
            if (count == 1)
            {
                //se abre la sesion y se activa la key de paso al siguiente metodo
                Session["USUARIO"] = txtuser.Text.Trim();
                llave = true;

            }
            //cerrando la base de datos
              sqlcon.Close();
        }
    }

    /// <summary>
    /// El "Verificacion_dos_pasos" se encarga de verificar el rol de usuario
    /// </summary>
    public void Verificacion_dos_pasos()
    {
        //cadena de conexion
        using (SqlConnection sqlcon = new SqlConnection(@"Data Source=BRYANELAZ\XPS;Initial Catalog=SITRAMSS;Integrated Security=True"))
        {
            //abriendo la base de datos
            sqlcon.Open();
            //consultando si se cumple el rol
            string query1 = "SELECT COUNT(1) FROM USUARIOS WHERE  USUARIO=@USUARIO AND CONTRASEÑA=@CONTRASENA AND TIPO=@TIPO";

            SqlCommand sqlcmd = new SqlCommand(query1, sqlcon);
            //recibiendo paremetros
            sqlcmd.Parameters.AddWithValue("@USUARIO", txtuser.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@CONTRASENA", txtpass.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@TIPO", "admi");
            //guardando dato de consulta
            int count2 = Convert.ToInt32(sqlcmd.ExecuteScalar());
            //si la llave del paso uno se paso correctamente entrada en este if
            if (llave == true)
            {
                //verifiacion del tipo de rol
                if (count2 == 1)
                {
                    //verificando
                    Session["TIPO"] = "admi";
                    //enviando al siguiente formulario
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "ramdomtext", "msj()", true);
                    Response.Redirect("Form_Radmin.aspx");
                   
                }
                else
                {
                    Session["TIPO"] = "Empleado";
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "ramdomtext", "msj2()", true);
                    Response.Redirect("Form_Radmin.aspx");
                    
                }
            }
            //cerrando la base de datos
            sqlcon.Close();
        }
    }

    protected void Unnamed5_Click(object sender, EventArgs e)
    {
        //llamando metodos ver los comentarios de funcionalidad 
        Verificacion_de_login();
        Verificacion_dos_pasos();
    }

    /// <summary>
    /// Metodo para ir a registrar un usuario
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Unnamed6_Click(object sender, EventArgs e)
    {
     
    }
}