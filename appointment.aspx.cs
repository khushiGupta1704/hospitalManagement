using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using System.Runtime.InteropServices;

public partial class appointment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            verma.Fill_Combo_Not_Empty("select * from departments where status=1", departments);
            doctorData();
            SliderRepeater.DataSource = verma.Show_Data("select TOP(1) * from sliders where status=1 and page_type='Appointment' order by position");
            SliderRepeater.DataBind();

        }
    }
    protected void submit_appointment_Click(object sender, EventArgs e)
    {
        verma.Save_Data("insert into appointments values ('" + patient_name.Text + "','" + patient_last_name.Text + "','" + departments.Text + "','" + doctors.Text + "','" + inputPhone.Text + "','" + date.Text + "','" + time.Text + "','1','" + Message.Text + "','" + DateTime.Now + "')");
        lable_data.Visible = true;
        lable_msg.Text = "Your Appointment Has been Fixed.";
    }
    protected void btnTest_Click(object sender, EventArgs e)
    {
        lable_data.Visible = false;
    }

    protected void departments_SelectedIndexChanged(object sender, EventArgs e)
    {
        doctorData();
    }
    public void doctorData()
    {
        verma.Fill_Combo("select * from our_team where status=1 and department_id='" + departments.SelectedItem.Value + "'", doctors);

    }

}