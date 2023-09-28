using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;

public partial class features : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        showPopupData();

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
    protected void search_submit_Click(object sender, EventArgs e)
    {
        if (search_text.Text != "")
        {
            Repeater1.DataSource = verma.Show_Data("select * from image_gallery where title like '%" + search_text.Text + "%' or description like '%" + search_text.Text + "%' and status=1 order by position");
            Repeater1.DataBind();
        }
        else
        {
            Repeater1.DataSource = verma.Show_Data("select * from image_gallery where status=1 order by position");
            Repeater1.DataBind();
        }
    }
    protected void departments_SelectedIndexChanged(object sender, EventArgs e)
    {
        industryData();
    }
    public void industryData()
    {
        verma.Fill_Combo("select * from industries where status=1 and department_id='" + departments.SelectedItem.Value + "'", selectIndustry);

        Repeater1.DataSource = verma.Show_Data("select * from image_gallery where status=1 and department_id='" + departments.SelectedItem.Value + "'order by position");
        Repeater1.DataBind();

    }
    protected void industry_SelectedIndexChanged(object sender, EventArgs e)
    {
        blogData();
    }
    public void blogData()
    {
        Repeater1.DataSource = verma.Show_Data("select * from image_gallery where status=1 and department_id='" + departments.SelectedItem.Value + "' and industry_id='" + selectIndustry.SelectedItem.Value + "'order by position");
        Repeater1.DataBind();
    }
}