<%@ Page Title="" Language="C#" MasterPageFile="~/MCRS_Admin.Master" AutoEventWireup="true" CodeBehind="ReminderEmail.aspx.cs" Inherits="Multicultural_Recruitment_System.ReminderEmail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="Style.css" />
    <script type="text/javascript" src="tinymce/tinymce.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="UniversalMobile.css" />
    <title></title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navBarItems" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form id="frmReminder" runat="server">

        <div id="Container11">


            <div class="container-fluid allborders">

                <div class="row">
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-8">
                        <h2>Subject</h2>
                        <%--  <asp:Label for="txtSubject" ID="lblSubject" runat="server" Text="Subject"></asp:Label> --%>


                        <asp:TextBox ID="txtSubject" runat="server" Class="form-control" Text="LKSOM Application Deadline Reminder" required="true"></asp:TextBox>
                        <br />

                        <h2>Content</h2>
                        <textarea id="" class="txaBody editabletxa">
                                
    Hello Prospect,  <br /> <br />

This is a reminder that the deadline for the Lewis Katz School of Medicine application is due in 2 weeks! Please take action and begin your applications if you have not already.  

Please feel free to reach out with any questions or concerns about the application process.   <br /> <br />

        Thank you!
                            </textarea>
                    </div>
                    <div class="col-sm-2">
                    </div>
                </div>

                <br />

                <div class="row">
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-8">
                        <asp:Button ID="Button1" class="myButton" runat="server" Text="Send Email" OnClick="btnSend_Click" />
                    </div>
                    <div class="col-sm-2">
                    </div>
                </div>


            






            <%--   <div class="container">
    
        <div class="form-row">
            <div class=" form-group col-sm-7">
         
          <asp:Label for="txtSubject" ID="lblSubject" runat="server" Text="Subject"></asp:Label>  
     

        <asp:TextBox ID="txtSubject" runat="server" Class="form-control" Text="LKSOM Application Deadline Reminder"></asp:TextBox>

         </div>
         
       </div>

                <div class="form-row">
            <div class=" form-group col-sm-7">
         
          <asp:Label for="taContent" ID="lblContent" runat="server" Text="Content"></asp:Label>  
     

     <textarea id="taContent" rows="12" cols="75">
    Hello Prospect,  

This is a reminder that the deadline for the Lewis Katz School of Medicine application is due in 2 weeks! Please take action and begin your applications if you have not already.  

Please feel free to reach out with any questions or concerns about the application process.
     </textarea>

         </div>
                   
         
       </div>
             
       <div class="form-row">
       <div class="form-group">
        <asp:Button ID="btnSend" class="btn btn-primary" runat="server" Text="Send Email" OnClick="btnSend_Click" />
       </div>
        
       <div class="form-group col-sm-3">     
        <div id="success" class="alert alert-success" runat="server">
            Email Sent.
        </div>
          </div>
       </div>
     
    </div>--%>
        </div>



    </form>
    <script>
        tinyMCE.init({
            mode: "exact",
            selector: ".editabletxa",
            //elements: "txaBuildBody",
            height: 340,
        });
    </script>
</asp:Content>
