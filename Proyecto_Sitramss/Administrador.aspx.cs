using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrador : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string a;
        string USUARIO = Convert.ToString(Session["USUARIO"]);
        string TIPO = Convert.ToString(Session["TIPO"]);
       
        if (TIPO == "admi")
        {
            a = "Administrador";
        }else
        {
            a = "Empleado";
        }
        txtnombreusuario.Text= USUARIO.ToString();
        txttipo.Text = a.ToString();
       

    }
}