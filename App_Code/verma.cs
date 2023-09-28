using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;
using System.Configuration;
using System.IO;
using System.Web.UI;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using System.Drawing;
using System.Security.Cryptography;
/// <summary>
/// Summary description for fun
/// </summary>
public class verma
{
    public static SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["verma"].ConnectionString);
    public verma()
    {
    }
    public static string Get_sesId()
    {
        if (HttpContext.Current.Request.Cookies["sesid"] != null)
            return HttpContext.Current.Request.Cookies["sesid"].Value;
        else
        {
            HttpContext.Current.Response.Redirect("~/index.aspx");
            return "";
        }
    }
    public static string Get_Uid()
    {
        if (HttpContext.Current.Request.Cookies["user_id"] != null)
            return HttpContext.Current.Request.Cookies["user_id"].Value;
        else
        {
            //HttpContext.Current.Response.Redirect("~/index.aspx");
            return "";
        }
    }
    public static string Get_ind()
    {
        if (HttpContext.Current.Request.Cookies["ind_id"] != null)
            return HttpContext.Current.Request.Cookies["ind_id"].Value;
        else
        {
            //HttpContext.Current.Response.Redirect("~/index.aspx");
            return "";
        }
    }
    public static string Get_admin()
    {
        if (HttpContext.Current.Request.Cookies["admin_id"] != null)
            return HttpContext.Current.Request.Cookies["admin_id"].Value;
        else
        {
           //HttpContext.Current.Response.Redirect("~/index.aspx");
            return "";
        }
    }
    public static string Get_Payid()
    {
        if (HttpContext.Current.Request.Cookies["payid"] != null)
            return HttpContext.Current.Request.Cookies["payid"].Value;
        else
        {
            HttpContext.Current.Response.Redirect("~/index.aspx");
            return "";
        }
    }
    public static string Get_Aid()
    {
        if (HttpContext.Current.Request.Cookies["aid"] != null)
            return HttpContext.Current.Request.Cookies["aid"].Value;
        else
        {
            HttpContext.Current.Response.Redirect("~/index.aspx");
            return "";
        }
    }
    public static string Get_AiId()
    {
        if (HttpContext.Current.Request.Cookies["aiId"] != null)
            return HttpContext.Current.Request.Cookies["aiId"].Value;
        else
        {
            HttpContext.Current.Response.Redirect("~/index.aspx");
            return "";
        }
    }
    public static string Get_Type()
    {
        if (HttpContext.Current.Request.Cookies["type"] != null)
            return HttpContext.Current.Request.Cookies["type"].Value;
        else
        {
            HttpContext.Current.Response.Redirect("~/index.aspx");
            return "";
        }
    }
    public static string Get_Role()
    {
        if (HttpContext.Current.Request.Cookies["role"] != null)
            return HttpContext.Current.Request.Cookies["role"].Value;
        else
        {
            HttpContext.Current.Response.Redirect("~/index.aspx");
            return "";
        }
    }

    public static string max_id(string command)
    {
        string max_id = "0";
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["verma"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand(command, con);
            if (con.State == ConnectionState.Closed)
                con.Open();
            object o = cmd.ExecuteScalar();
            if (o == null || o == DBNull.Value)
                max_id = "1";
            else
                max_id = o.ToString();
            con.Close();
        }
        return max_id;
    }
   
    public static void Fill_Combo(string command, DropDownList com_box)
    {
        DataTable dt = Show_Data(command);
        DataRow row = dt.NewRow();
        dt.Rows.InsertAt(row, 0);
        com_box.DataSource = dt;
        com_box.DataBind();
    }
    public static void Fill_Combo(DataTable dt, DropDownList com_box)
    {
        DataRow row = dt.NewRow();
        dt.Rows.InsertAt(row, 0);
        com_box.DataSource = dt;
        com_box.DataBind();
    }
    public static void Fill_Combo_Not_Empty(string command, DropDownList com_box)
    {
        com_box.DataSource = Show_Data(command);
        com_box.DataBind();
    }

    public static bool Get_status(string command)
    {
        bool a = false;
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["verma"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand(command, con);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
                a = true;
            dr.Close();
            con.Close();
        }
        return a;
    }
    public static DataTable Show_Data(string command)
    {
        DataTable dt = new DataTable();
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["verma"].ConnectionString))
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter adp = new SqlDataAdapter(command, con);
            adp.Fill(dt);
            con.Close();
        }
        return dt;
    }
    
    public static void Save_Data(string command)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["verma"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand(command, con);
            if (con.State == ConnectionState.Closed)
                con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
    public static string Unique_Value(string command)
    {
        string a = "";
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["verma"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand(command, con);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
                a = dr[0].ToString();
            dr.Close();
            con.Close();
        }
        return a;
    }
   
    public static string File_Upload_Html(FileUpload fileupload)
    {
        string photo = "";
        if (fileupload.HasFile != false)
        {
            photo = "data/" + Guid.NewGuid().ToString() + Path.GetExtension(fileupload.FileName);
            fileupload.SaveAs(HttpContext.Current.Server.MapPath("~/" + photo));
        }
        return photo;
    }
   
    public static string File_Upload_Html_Profile(FileUpload fileupload)
    {
        string photo = "";
        if (fileupload.HasFile != false)
        {
            photo = "data/profile/" + Guid.NewGuid().ToString() + Path.GetExtension(fileupload.FileName);
            fileupload.SaveAs(HttpContext.Current.Server.MapPath("~/" + photo));
        }
        return photo;
    }
    
    public static string Get_IP()
    {
        string VisitorsIPAddr = string.Empty;
        if (HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"] != null)
            VisitorsIPAddr = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"].ToString();
        else if (HttpContext.Current.Request.UserHostAddress.Length != 0)
            VisitorsIPAddr = HttpContext.Current.Request.UserHostAddress;
        return VisitorsIPAddr;
    }
    
    //////message///////////////////////////////////////////////////////////////////////////
    public static string message_save()
    {
        return "window.onload = function(){ alert('Your details have been saved successfully');window.location = '" + HttpContext.Current.Request.Url.AbsoluteUri + "'; }";
    }
    public static string message_redirect(string message, string url)
    {
        return "window.onload = function(){ alert('" + message + "');window.location = '" + url + "'; }";
    }
    public static string message_empty(string message)
    {
        return "window.onload = function(){ alert('" + message + "');}";
    }
    public static string message_delete()
    {
        return "window.onload = function(){ alert('Selected Record Delete Successfully');}";
    }
    public static string message_update()
    {
        return "window.onload = function(){ alert('Update Successfully');}";
    }
    public static string message_error(string mess)
    {
        return "<div class='alert alert-danger' role='alert'><strong>Warning ! </strong> " + mess + "</div>";
    }
    public static string message_success(string mess)
    {
        return "<div class='alert alert-success' role='alert'><strong>Success! </strong> " + mess + "</div>";
    }

    


    public static string Encrypt(string Text)
    {
        if (!string.IsNullOrEmpty(Text))
        {
            string EncryptionKey = "karambir_";
            byte[] clearBytes = Encoding.Unicode.GetBytes(Text);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    Text = Convert.ToBase64String(ms.ToArray());
                }
            }
        }
        return Text;
    }
    public static string Decrypt(string Text)
    {
        if (!string.IsNullOrEmpty(Text))
        {
            string EncryptionKey = "karambir_";
            Text = Text.Replace(" ", "+");
            byte[] cipherBytes = Convert.FromBase64String(Text);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(cipherBytes, 0, cipherBytes.Length);
                        cs.Close();
                    }
                    Text = Encoding.Unicode.GetString(ms.ToArray());
                }
            }
        }
        return Text;
    }
   
    /// <summary>
    /// if not number then return 1
    /// </summary>
    /// <param name="number_string"></param>
    /// <returns></returns>
    public static string isnumber(string number_string)
    {
        double n;
        if (!double.TryParse(number_string, out n))
            return number_string = "1";
        else
            return number_string;
    }

    
    public static void Get_Course(DropDownList drop_course)
    {
        verma.Fill_Combo("select * from course order by course_name", drop_course);
    }

    public static void Get_Trade(DropDownList trade, string course_id)
    {
        verma.Fill_Combo("select * from trade where cid=" + course_id + " order by trade_name", trade);
    }

    public static void Get_subject(DropDownList drop_subject, string trade_id)
    {
        verma.Fill_Combo("select * from subject where tid=" + trade_id + " order by subject_name", drop_subject);
    }

    public static void Get_topic(DropDownList drop_topic, string subject_id)
    {
        verma.Fill_Combo("select * from topic where subject_id=" + subject_id + " order by topic_name", drop_topic);
    }

    public static void Get_Semster(DropDownList drop_semster)
    {
        verma.Fill_Combo("select * from semster order by semster_name", drop_semster);
    }
    public static void checkadmin()
    {
        if (verma.Get_admin() == "")
        {
            HttpContext.Current.Response.Redirect("~/login.aspx");
        }
    }
    
        public static void checkIndustry()
    {
        if (verma.Get_ind() == "")
        {
            HttpContext.Current.Response.Redirect("~/login.aspx");
        }
    }
}