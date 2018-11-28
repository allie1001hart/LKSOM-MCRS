<%@ Page Title="" Language="C#" MasterPageFile="~/MCRS_Student.Master" AutoEventWireup="true" CodeBehind="ContactInfo.aspx.cs" Inherits="Multicultural_Recruitment_System.ContactInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid" style="text-align:center;padding-top:10em;">
        <br />
        <br />
        <div class="row" style="font-size: 40px; color: white">
            <div class="col-12">
                <h1>Contact Info:</h1>
            </div>
        </div>
        <div class="row" style="font-size: 24px; color: white;font-family:Arial;">
            <div class="col-12 fa fa-phone"> (215) 707-3656</div>
        </div>
        <div class="row" style="font-size: 24px; color: white;font-family:Arial;">
            <div class="col-12 fa fa-envelope"> germyce.harris@temple.edu</div>
        </div>

        <div class="row" style="font-size: 40px;text-align:center;font-family:Arial; color: white">
            <div class="col-3"></div>
            <div class="col-6" style="text-align:center;">
                <button type="button" class="myMobileButton" onclick="window.location.href='https://medicine.temple.edu/about/contact'" id="btnMore">More Info</button>    
                <br />
            </div>
            <div class="col-3"></div>
        </div>
        <br />
        </div>
        
</asp:Content>
