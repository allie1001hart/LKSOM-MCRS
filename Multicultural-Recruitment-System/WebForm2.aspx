<%@ Page Title="" Language="C#" MasterPageFile="~/MCRS_Admin.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Multicultural_Recruitment_System.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>Manage Admin</title>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />--%>

    <%-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" />
    <link rel="stylesheet" href="UniversalMobile.css" />


    <script src=" https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css"></script>
    <script src="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navBarItems" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form runat="server" style="padding-bottom:2em;">
    <div class="container" runat="server" style="padding-bottom:3em;">
        <h2 style="padding-top:.8em;padding-bottom:1.5em;">Manage Admin</h2>
        <asp:Button Text="Add Admin" class="myButton" style="margin-right:20vh" runat="server" />
        <asp:Button Text="Delete Admin" class="myButton" runat="server" /><br />
    </div>
        </form>
</asp:Content>
