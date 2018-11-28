<%@ Page Title="" Language="C#" MasterPageFile="~/MCRS_Student.Master" AutoEventWireup="true" CodeBehind="ArticleList.aspx.cs" Inherits="Multicultural_Recruitment_System.ArticleList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha284-MCw98/SFnGE8fJT2GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/2.2.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/2.2.7/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-2.2.1.slim.min.js" integrity="sha284-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5xsXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.2/uxs/popper.min.js" integrity="sha284-ZMP7rVo2mIykV+2+9J2UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha284-ChfqqxuZUCnJSK2+MXmPNIyE6ZbWh5IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="BucketButtons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>Article List</title>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid" style="text-align:left; padding-bottom:3em;">

        <div class="row" style="padding-top: 1em;border-bottom:solid;">
            <div class="col-4" style="display:inline;">
                <a href="Articles/Lewis-Katz.aspx">
                    <button type="button" class="btn btn-default btn-circle btn-xl"><i class="fa fa-newspaper-o"></i></button>
                </a>&nbsp;&nbsp;
            </div>
            <div class="col-8" style="padding-top:1.8em;">
                <h5 style="display:inline;">Grant for Cancer Health Disparities</h5>
            </div>
        </div>
        <div class="row" style="padding-top: 1em;border-bottom:solid;">
            <div class="col-4" style="display:inline;">
                <a href="Articles/New Epigenetic.aspx">
                    <button type="button" class="btn btn-default btn-circle btn-xl"><i class="fa fa-newspaper-o"></i></button>
                </a>&nbsp;&nbsp;
            </div>
            <div class="col-8" style="padding-top:1.8em;">
                <h5 style="display:inline;">Drug Strategy to Treat Cancer</h5>
            </div>
        </div>
        <div class="row" style="padding-top: 1em;border-bottom:solid;">
            <div class="col-4" style="display:inline;">
                <a href="Articles/Temple Lung.aspx">
                    <button type="button" class="btn btn-default btn-circle btn-xl"><i class="fa fa-newspaper-o"></i></button>
                </a>&nbsp;&nbsp;
            </div>
            <div class="col-8" style="padding-top:1.8em;">
                <h5 style="display:inline;">Treatment of Severe Emphysema</h5>
            </div>
        </div>

        <div class="row" style="padding-top: 1em;border-bottom:solid;">
            <div class="col-4" style="display:inline;">
                <a href="Articles/Dr-Cecelia.aspx">
                    <button type="button" class="btn btn-default btn-circle btn-xl"><i class="fa fa-newspaper-o"></i></button>
                </a>&nbsp;&nbsp;
            </div>
            <div class="col-8" style="padding-top:1.8em;">
                <h5 style="display:inline;">Dr. Cecelia Schmalbach Appointed</h5>
            </div>
        </div>
        <div class="row" style="padding-top: 1em;border-bottom:solid;">
            <div class="col-4" style="display:inline;">
                <a href="Articles/Katz-School.aspx">
                    <button type="button" class="btn btn-default btn-circle btn-xl"><i class="fa fa-newspaper-o"></i></button>
                </a>&nbsp;&nbsp;
            </div>
            <div class="col-8" style="padding-top:1.8em;">
                <h5 style="display:inline;">Katz School of Medicine Donors</h5>
            </div>
        </div>
        <div class="row" style="padding-top: 1em;border-bottom:solid;">
            <div class="col-4" style="display:inline;">
                <a href="Articles/LKSOM.aspx">
                    <button type="button" class="btn btn-default btn-circle btn-xl"><i class="fa fa-newspaper-o"></i></button>
                </a>&nbsp;&nbsp;
            </div>
            <div class="col-8" style="padding-top:1.8em;">
                <h5 style="display:inline;">Class of Physician Assistants</h5>
            </div>
        </div>
    </div>
    
</asp:Content>
