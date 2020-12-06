using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class MostrarBus : System.Web.UI.Page
{
    DataSet bus = new DataSet();
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(@"Data Source=DESKTOP-HU8EM4D;Initial Catalog=SITRAMSS;Integrated Security=True");
        if (!IsPostBack)
        {
            llenarGrid();
        }
    }
    private void llenarGrid()
    {
        try
        {
            SqlCommand cmd = new SqlCommand("SELECT id_bus,n_asientos,placa,color FROM bus", cn);
            if (cn.State == ConnectionState.Closed == true) cn.Open();
            SqlDataAdapter oda = new SqlDataAdapter(cmd);
            oda.Fill(bus);
            this.GridView1.DataSource = bus;
            this.GridView1.DataBind();
        }
        catch (Exception)
        {
            this.GridView1.Visible = false;
        }
        cn.Close();
    }
}