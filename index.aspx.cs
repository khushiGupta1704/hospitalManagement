using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using System.Net;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        showPopupData();
        if (!IsPostBack)
        {
            verma.Fill_Combo_Not_Empty("select * from departments where status=1", departments);
            doctorData();
            BlogRepeater.DataSource = verma.Show_Data("select TOP(3)  * from blogs where status=1 order by position");
            BlogRepeater.DataBind();
            TeamRepeater.DataSource = verma.Show_Data("select TOP(4)  * from our_team where status=1 order by position");
            TeamRepeater.DataBind();
            DepartmentRepeater.DataSource = verma.Show_Data("select TOP(9) * from departments where status=1 order by position");
            DepartmentRepeater.DataBind();
            TestimonialRepeater.DataSource = verma.Show_Data("select TOP(5) * from testimonials where status=1 order by position");
            TestimonialRepeater.DataBind();
            SliderRepeater.DataSource = verma.Show_Data("select TOP(1) * from sliders where status=1 and page_type='Home' order by position");
            SliderRepeater.DataBind();
            //DataTable dt = new DataTable();
            //dt = verma.Show_Data("SELECT TOP 1 * FROM offers order by position asc");
            //if (dt.Rows.Count > 0)
            //{
            //    ModalTitle.Text = "<a href='" + dt.Rows[0]["url"].ToString() + "'>"+ dt.Rows[0]["title"].ToString() + "</a>"; 
            //    Offer_image.ImageUrl = dt.Rows[0]["image"].ToString();
            //    Offer_image.NavigateUrl = dt.Rows[0]["url"].ToString();
            //    ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup();", true);
            //}
        }
    }
    protected void hide_popUp_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup();", false);
    }

    private void showPopupData()
    {
        //rptrSlider.DataSource = verma.Show_Data("select * from TB_SliderImages");
        //rptrSlider.DataBind();
        //DataTable dtPopup = new DataTable();
        //dtPopup = verma.Show_Data("select top 1 * from TB_PopupImg order by id desc");
        //if (dtPopup.Rows.Count > 0)
        //{
        //    string str = "";
        //    str += "<div class='modal fade' id='myModal' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' aria-hidden='true'>";
        //    str += "<div class='modal-dialog'>";
        //    str += "<div class='modal-content'>";
        //    str += "<div class='modal-header'>";
        //    str += "<button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>";
        //    str += "<h4 class='modal-title' id='myModalLabel'>" + dtPopup.Rows[0]["title"].ToString() + "</h4>";
        //    str += "</div>";
        //    str += "<div class='modal-body'>";
        //    str += "<img  src=" + dtPopup.Rows[0]["imgUrl"].ToString() + " class='img-responsive' />";
        //    str += "</div>";
        //    str += "<div class='modal-footer'>";
        //    str += "<button type='button' class='btn btn-default' data-dismiss='modal'>Close</button>";
        //    str += "</div>";
        //    str += "</div>";
        //    str += "</div>";
        //    str += "</div>";
        //    popupModal.InnerHtml = str;
        //}
        //else
        //{
        //    string str = "";
        //    str += "<div style='Display:None;'>";
        //    str += "</div>";
        //    popupModal.InnerHtml = str;
        //}
    }
    protected void delete_button_Click(object sender, EventArgs e)
    {

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