using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinal_Alejandro.CapaVista
{
    public partial class Usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                LlenarGrid();
            }
        }

        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT *  FROM "))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }
    }

    protected void bborrar_Click(object sender, EventArgs e)
    {
        String s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
        SqlConnection conexion = new SqlConnection(s);
        conexion.Open();
        SqlCommand comando = new SqlCommand("update  usuarios set estado = 'inactivo'  where  usuarioid = " + tcodigo.Text + "", conexion);
        comando.ExecuteNonQuery();
        conexion.Close();
        LlenarGrid();
    }
}