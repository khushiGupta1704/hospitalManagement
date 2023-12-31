﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using System.Runtime.InteropServices;

public partial class blogpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        showPopupData();
        if (!IsPostBack)
        {
            //verma.Fill_Combo("select * from departments where status=1", departments);
            DisplayRepeter();
            //Repeater1.DataSource = verma.Show_Data("select count(*) as blog_count,departments.title as exp1,departments.id as depart_id from blogs INNER JOIN departments ON blogs.department_id = departments.id where blogs.status=1 group by departments.title,departments.id");
            //Repeater1.DataBind();
            //Repeater2.DataSource = verma.Show_Data("SELECT TOP 5 * FROM blogs;");
            //Repeater2.DataBind();
            //Repeater3.DataSource = verma.Show_Data("SELECT * FROM tags where page_name='Blogs' and status=1 order by position;");
            //Repeater3.DataBind();

        }
    }
    public int CurrentPage
    {
        get
        {
            //get current page number
            object obj = this.ViewState["_CurrentPage"];

            if (obj == null)
            {
                return 0;
            }
            else
            {
                return (int)obj;
            }
        }
        set
        {
            //set in viewstate the current page number
            this.ViewState["_CurrentPage"] = value;
        }
    }
    public int DisplayRepeter()
    {
        DataTable dt = new DataTable();
        dt = verma.Show_Data("select * from blogs where status=1 order by position");
        BlogRepeater.DataSource = dt;
        BlogRepeater.DataBind();

        PagedDataSource pds = new PagedDataSource();

        pds.DataSource = dt.DefaultView;
        pds.AllowPaging = true;
        pds.PageSize = 10;
        int count = pds.PageCount;

        pds.CurrentPageIndex = CurrentPage;

        if (pds.Count > 0)
        {
            lbtnPrev.Visible = true;
            lbtnNext.Visible = true;
            lbtnFirst.Visible = true;
            lbtnLast.Visible = true;

            lblStatus.Text = "Page " + Convert.ToString
            (CurrentPage + 1) + "of" + Convert.ToString(pds.PageCount);
        }
        else
        {
            lbtnPrev.Visible = false;
            lbtnNext.Visible = false;
            lbtnFirst.Visible = false;
            lbtnLast.Visible = false;
        }

        lbtnPrev.Enabled = !pds.IsFirstPage;
        lbtnNext.Enabled = !pds.IsLastPage;
        lbtnFirst.Enabled = !pds.IsFirstPage;
        lbtnLast.Enabled = !pds.IsLastPage;

        BlogRepeater.DataSource = pds;
        BlogRepeater.DataBind();

        return count;
    }

    protected void lbtnPrev_Click(object sender, EventArgs e)
    {
        CurrentPage -= 1;
        DisplayRepeter();
    }

    protected void lbtnNext_Click(object sender, EventArgs e)
    {
        CurrentPage += 1;
        DisplayRepeter();
    }

    protected void lbtnFirst_Click(object sender, EventArgs e)
    {
        CurrentPage = 0;
        DisplayRepeter();
    }

    protected void lbtnLast_Click(object sender, EventArgs e)
    {
        CurrentPage = DisplayRepeter() - 1;
        DisplayRepeter();
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

    //protected void search_submit_Click(object sender, EventArgs e)
    //{
    //    if (search_text.Text!="")
    //    {
    //        BlogRepeater.DataSource = verma.Show_Data("select * from blogs where title like '%"+ search_text.Text + "%' or description like '%"+ search_text.Text + "%' and status=1 order by position");
    //        BlogRepeater.DataBind();
    //    }
    //    else
    //    {
    //        BlogRepeater.DataSource = verma.Show_Data("select * from blogs where status=1 order by position");
    //        BlogRepeater.DataBind();
    //    }
    //}
    //protected void departments_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    industryData();
    //}
    //public void industryData()
    //{
    //    verma.Fill_Combo("select * from industries where status=1 and department_id='" + departments.SelectedItem.Value + "'", selectIndustry);

    //    BlogRepeater.DataSource = verma.Show_Data("select * from blogs where status=1 and department_id='" + departments.SelectedItem.Value + "'order by position");
    //    BlogRepeater.DataBind();

    //}
    //protected void industry_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    blogData();
    //}
    //public void blogData()
    //{
    //    BlogRepeater.DataSource = verma.Show_Data("select * from blogs where status=1 and department_id='" + departments.SelectedItem.Value + "' and industry_id='" + selectIndustry.SelectedItem.Value + "'order by position");
    //    BlogRepeater.DataBind();
    //}
    //protected void HyperLink1_Command(object sender, CommandEventArgs e)
    //{
    //    //BlogRepeater.DataSource = verma.Show_Data("select * from blogs where status=1 and department_id='" + e.CommandArgument + "'order by position");
    //    //BlogRepeater.DataBind();
    //}

}