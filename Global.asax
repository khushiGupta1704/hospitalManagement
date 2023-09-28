<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>
<script runat="server">

    protected void Application_Start()
    {
        RegisterRoutes(RouteTable.Routes);
    }
    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown
    }


    void RegisterRoutes(RouteCollection routes)
    {
        //Category-------------------------------------------------------------------------------------------------//
        //routes.MapPageRoute("id1", "Academics", "~/academic.aspx");
        //routes.MapPageRoute("id9", "AcademicsList-{name}-{id}", "~/academylist.aspx");

        routes.MapPageRoute("id1", "Home", "~/index.aspx");
        routes.MapPageRoute("id2", "AboutUs", "~/aboutus.aspx");
        routes.MapPageRoute("id3", "Login", "~/login.aspx");
        routes.MapPageRoute("id14", "Register", "~/register.aspx");
        routes.MapPageRoute("id21", "Industry-Register", "~/industryRegister.aspx");
        routes.MapPageRoute("id34", "Industry", "~/industries.aspx");
        routes.MapPageRoute("id5", "Team", "~/ourTeam.aspx");
        routes.MapPageRoute("id6", "Interview-Questions", "~/interview_questions.aspx");
        routes.MapPageRoute("id7", "Jobs", "~/jobPage.aspx");
        routes.MapPageRoute("id8", "Blogs", "~/blogPage.aspx");
        routes.MapPageRoute("id9", "Contact-us", "~/contactUs.aspx");
        routes.MapPageRoute("id10", "Faqs", "~/faq.aspx");
        routes.MapPageRoute("id11", "Image-Gallery", "~/gallery.aspx");
        routes.MapPageRoute("id12", "Profile", "~/profile.aspx");
        routes.MapPageRoute("id13", "Departments", "~/departments.aspx");
        routes.MapPageRoute("id15", "BlogDetail/{id}", "~/blogDetail.aspx");
        routes.MapPageRoute("id16", "DepartmentDetail/{id}", "~/departmentDetails.aspx");
        routes.MapPageRoute("id23", "DepartmentEductionalVideos/{id}", "~/departmentEducationalVideos.aspx");
        routes.MapPageRoute("id17", "Questions/{id}", "~/questions.aspx");
        routes.MapPageRoute("id18", "Profile", "~/profile.aspx");
        routes.MapPageRoute("id19", "Applied-Jobs", "~/userJobs.aspx");
        routes.MapPageRoute("id20", "Forget-Password", "~/forgetPassword.aspx");
        routes.MapPageRoute("id22", "TermsAndConditions", "~/termsAndCondition.aspx");
        routes.MapPageRoute("id24", "Doctors", "~/doctor.aspx");
        routes.MapPageRoute("id25", "Facilities", "~/facilities.aspx");
        routes.MapPageRoute("id26", "Educational-Tutorial", "~/educationalVideos.aspx");
        routes.MapPageRoute("id27", "Appointment", "~/appointment.aspx");
        routes.MapPageRoute("id28", "Testimonials", "~/testimonials.aspx");



        routes.MapPageRoute("idpl31", "admin/dashboard", "~/admin/dashboard.aspx");
        routes.MapPageRoute("idpd32", "admin/blogs/Index", "~/admin/blogs/index.aspx");
        routes.MapPageRoute("idpd33", "admin/blogs/form", "~/admin/blogs/form.aspx");
        routes.MapPageRoute("idpd34", "admin/Departments/Index", "~/admin/department/index.aspx");
        routes.MapPageRoute("idpd35", "admin/Departments/form", "~/admin/department/form.aspx");
        routes.MapPageRoute("idpd36", "admin/faq/Index", "~/admin/faq/index.aspx");
        routes.MapPageRoute("idpd37", "admin/faq/form", "~/admin/faq/form.aspx");
        routes.MapPageRoute("idpd38", "admin/inquiry/Index", "~/admin/inquiry/index.aspx");
        routes.MapPageRoute("idpd39", "admin/inquiry/form", "~/admin/inquiry/form.aspx");
        routes.MapPageRoute("idpd40", "admin/offer/Index", "~/admin/offer/index.aspx");
        routes.MapPageRoute("idpd41", "admin/offer/form", "~/admin/offer/form.aspx");
        routes.MapPageRoute("idpd42", "admin/our-team/Index", "~/admin/our_team/index.aspx");
        routes.MapPageRoute("idpd43", "admin/our-team/form", "~/admin/our_team/form.aspx");
        routes.MapPageRoute("idpd44", "admin/facilities/Index", "~/admin/facilities/index.aspx");
        routes.MapPageRoute("idpd45", "admin/facilities/form", "~/admin/facilities/form.aspx");
        //routes.MapPageRoute("idpd46", "admin/schedule-booking/Index", "~/admin/schedule-booking/index.aspx");
        //routes.MapPageRoute("idpd47", "admin/schedule-booking/form", "~/admin/schedule-booking/form.aspx");
        routes.MapPageRoute("idpd48", "admin/Educational-Videos/Index", "~/admin/educatioanl-videos/index.aspx");
        routes.MapPageRoute("idpd49", "admin/Educational-Videos/form", "~/admin/educatioanl-videos/form.aspx");
        routes.MapPageRoute("idpd52", "admin/tags/Index", "~/admin/tags/index.aspx");
        routes.MapPageRoute("idpd53", "admin/tags/form", "~/admin/tags/form.aspx");
        routes.MapPageRoute("idpd54", "admin/testimonials/Index", "~/admin/testimonials/index.aspx");
        routes.MapPageRoute("idpd55", "admin/testimonials/form", "~/admin/testimonials/form.aspx");
        routes.MapPageRoute("idpd58", "admin/sliders/Index", "~/admin/sliders/index.aspx");
        routes.MapPageRoute("idpd97", "admin/sliders/form", "~/admin/sliders/form.aspx");
        routes.MapPageRoute("idpd60", "admin/setting", "~/admin/setting.aspx");

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

</script>
