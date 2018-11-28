<%@ Page Title="" Language="C#" MasterPageFile="~/MCRS_Student.Master" AutoEventWireup="true" CodeBehind="Event.aspx.cs" Inherits="Multicultural_Recruitment_System.Event" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="Calendar_JS.js"></script>
    <link rel="stylesheet" href="Calendar_CSS.css" />
    <link rel="stylesheet" href="UniversalMobile.css" />
    <title>Event Details</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form id="frmEvent" runat="server">

        <div class="event">

            <div class="col-sm-12">
                <h2>Event Title:</h2>
                <h4>Shelter Volunteer Event</h4>
                <br />

                <h2>Date:</h2>
                <h4>November 7, 2018</h4>
                <br />

                <h2>Time:</h2>
                <h4>10:00am-12:00pm</h4>
                <br />

                <h2>Location:</h2>
                <h4>Sunday Breakfast Rescue Mission</h4>
                <br />

                <h2>Description:</h2>
                <h4>
                    Volunteer to serve a meal with us. You can make a positive impact in the lives of 
                homeless men, women and children. If you would like to learn more about the volunteer 
                opportunities or would like to apply please review and apply for the opportunities 
                that interest you.</h4>
                <br />
            </div>
            <div class="col-sm-4" style="padding-left:1.25em;">
                <asp:Button ID="btnRSVP" runat="server" name="rspv" Text="More Details" class="myMobileButton" OnClick="btnRSVP_Click" /><br />
                <br /><br />
            </div>
        </div>
        <br />


    </form>
</asp:Content>
