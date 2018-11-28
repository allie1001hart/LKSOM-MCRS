<%@ Page Title="" Language="C#" MasterPageFile="~/MCRS_Admin.Master" AutoEventWireup="true" CodeBehind="EditContent.aspx.cs" Inherits="Multicultural_Recruitment_System.EditContent" %>
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
    <br />
    <br />
      <h1 style="text-align:center">Edit Content</h1>
    <form id="frmEditContent" runat="server">
   <div id="Container11">
     
            <div class="container-fluid allborders">

                <div class="row">
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-8">
                        <h2>Subject</h2>
                


                        <asp:TextBox ID="txtSubject" runat="server" Class="form-control" Text="Lewis Katz School of Medicine" required="true"></asp:TextBox>
                        <br />

                        <h2>Content</h2>
                        <textarea id="" class="txaBody editabletxa">The Lewis Katz School of Medicine at Temple University, located on the Health Science Campus of Temple University in Philadelphia, PA, is one of 7 schools of medicine in Pennsylvania conferring the Doctor of Medicine degree. It also confers the Ph.D. and M.S. degrees in biomedical sciences.</textarea>
                    </div>
                    <div class="col-sm-2">
                    </div>
                </div>

                <br />
                <div class="row">
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-4">
                        <asp:Button ID="btnCancel" class="myButton" runat="server" Text="Cancel"  />
                    </div>
                    <div class="col-sm-4" style="text-align:right;">
                        <asp:Button ID="Button2" class="myButton" runat="server" Text="Save"  />
                    </div>
                    <div class="col-sm-2">
                    </div>
                </div>
        
            </div>
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
