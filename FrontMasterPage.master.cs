using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Routing;
using System.Data.SqlClient;


public partial class FrontMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if(verma.Get_status("select * from admins where id='" + verma.Get_admin() + "'") == true)
            {
                DataTable dt2 = new DataTable();
                dt2 = verma.Show_Data("select * from admins where id='" + verma.Get_admin() + "'");
                if (dt2.Rows.Count > 0)
                {
                    //registration.Visible = false;
                    //login.Visible = false;
                    //user_name.Visible = true;
                    //logout.Visible = true;
                    ////dashboard.Visible = true;
                    //user_name.Text = dt2.Rows[0]["name"].ToString();
                    //profile_image.ImageUrl = dt2.Rows[0]["image"].ToString();
                }

            }
        }
        if (!IsPostBack)
        {
            DepartmentRepeater.DataSource = verma.Show_Data("select * from departments where status=1 order by position");
            DepartmentRepeater.DataBind();
            //blogRepeater.DataSource = verma.Show_Data("select TOP(2) * from blogs where status=1 order by position");
            //blogRepeater.DataBind();
        }
    }

    protected void logout_button_Click(object sender, EventArgs e)
    {
        //blogRepeater.DataSource = verma.Show_Data("select TOP(2) * from blogs where status=1 order by position");
        //blogRepeater.DataBind();
        Response.Cookies["admin_id"].Expires = DateTime.Now.AddHours(-1);
        Response.Cookies["admin_id"].Value = "";        
        Response.Redirect("http://aastha.omtechnoware.com/Home");
    }
}
