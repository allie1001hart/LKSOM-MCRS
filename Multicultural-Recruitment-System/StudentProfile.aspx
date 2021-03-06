﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MCRS_Admin.Master" AutoEventWireup="true" CodeBehind="StudentProfile.aspx.cs" Inherits="Multicultural_Recruitment_System.StudentProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="Style.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="UniversalMobile.css" />
    <title></title>
    <style type="text/css">
        #frmProspect {
            height: 822px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navBarItems" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">

    <form id="frmProspect" runat="server">
        <div style="height: 662px">

            <div class="container" id="Container2">
                <h1 style="text-align: center">Prospect Profile</h1>
                <br />
                <br />
                <div class="form-row">

                    <div class=" form-group col-sm-4">
                        <asp:Label for="txtFirstName" ID="lblFirstName" runat="server" Text="First Name*"></asp:Label>


                        <asp:TextBox ID="txtFirstName" runat="server" Class="form-control" Text="" required="true" >Jane</asp:TextBox>
                    </div>




                    <div class=" form-group col-sm-4">

                        <asp:Label for="txtLastName" ID="lblLastName" runat="server" Text="Last Name*"></asp:Label>
                        <asp:TextBox ID="txtLastName" runat="server" Class="form-control" Text="" required="true">Doe</asp:TextBox>


                    </div>

                    <div class="form-group col-sm-4">
                        <asp:Label for="txtEmail" ID="lblEmail" runat="server" Text="Email*"></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" Class="form-control" Text="" required="true">jane.doe@temple.edu</asp:TextBox>

                    </div>
                </div>


                <div class="form-row">

                    <div class=" form-group col-sm-3">
                        <asp:Label for="txtGradyear" ID="lblGradyear" runat="server" Text="Graduation Year*"></asp:Label>


                        <asp:TextBox ID="txtGradYear" runat="server" Class="form-control" Text="" required="true">2020</asp:TextBox>
                    </div>




                    <div class=" form-group col-sm-3">

                        <asp:Label for="txtCurrentYear" ID="Label2" runat="server" Text="Current Undergraduate Year*"></asp:Label>
                        <asp:TextBox ID="txtCurrentYear" runat="server" Class="form-control" Text="" required="true">Senior</asp:TextBox>
                    </div>

                    <div class=" form-group col-sm-3">
                        <asp:Label for="txtStartYear" ID="Label6" runat="server" Text="Expected Start Year*"></asp:Label>
                        <asp:TextBox ID="txtStartYear" runat="server" Class="form-control" Text="" required="true">2020</asp:TextBox>
                    </div>

                    <div class="form-group col-sm-3">
                        <asp:Label for="ddlGap" ID="lblGap" runat="server" Text="Gap Year?"></asp:Label>
                        <asp:DropDownList ID="ddlGap" runat="server" class="form-control">
                            <asp:ListItem> YES </asp:ListItem>
                            <asp:ListItem>NO</asp:ListItem>

                        </asp:DropDownList>

                    </div>

                    
                </div>


                <div class="form-row">

                    <div class=" form-group col-sm-3">
                        <asp:Label for="txtUndergraduateSchool" ID="lblUndergraduate" runat="server" Text="Undergraduate School*"></asp:Label>


                        <asp:TextBox ID="txtUndergraduateSchool" runat="server" Class="form-control" Text="" required="true">Temple</asp:TextBox>
                    </div>

                    <div class="form-group col-sm-5">
                        <asp:Label for="ddlUnderrepresent" ID="lblUnderrepresent" runat="server" Text="Underrepresented Minority in Medicine"></asp:Label>

                        <asp:DropDownList ID="ddlUnderrepresent" runat="server" class="form-control">
                            <asp:ListItem> YES </asp:ListItem>
                            <asp:ListItem>NO</asp:ListItem>
                        </asp:DropDownList>

                    </div>

                    <div class="form-group col-sm-2">
                        <asp:Label for="ddlNonTraditional" ID="Label1" runat="server" Text="Non-Traditional?" Style="display: inline-block;"></asp:Label>
                        <asp:DropDownList ID="ddlNonTradtional" runat="server" class="form-control">
                            <asp:ListItem> YES </asp:ListItem>
                            <asp:ListItem>NO</asp:ListItem>
                        </asp:DropDownList>

                    </div>

                    <div class="form-group col-sm-2">
                        <asp:Label for="ddlFollowup" ID="lblFollowup" runat="server" Text="Follow Up?"></asp:Label>

                        <asp:DropDownList ID="ddlFollowup" runat="server" class="form-control">
                            <asp:ListItem> YES </asp:ListItem>
                            <asp:ListItem>NO</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                </div>


                <div class="form-row">

                    <div class=" form-group col-sm-4">
                        <asp:Label for="txtProgram" ID="Label7" runat="server" Text="Program of Interest*"></asp:Label>


                        <asp:TextBox ID="TextBox1" runat="server" Class="form-control" Text="" required="true">MD/PD Dual Degree</asp:TextBox>
                    </div>

                    <div class="form-group col-sm-4">
                        <asp:Label for="ddlActivity" ID="Label8" runat="server" Text="Student Activities/Organization"></asp:Label>

                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                            <asp:ListItem> YES </asp:ListItem>
                            <asp:ListItem>NO</asp:ListItem>
                        </asp:DropDownList>

                    </div>

                    <div class="form-group col-sm-4">
                        <asp:Label for="ddlMAPS" ID="Label9" runat="server" Text="Member of MAPS?"></asp:Label>

                        <asp:DropDownList ID="DropDownList3" runat="server" class="form-control">
                            <asp:ListItem> YES </asp:ListItem>
                            <asp:ListItem>NO</asp:ListItem>
                        </asp:DropDownList>

                    </div>

                </div>

                <br />
                <br />
                <br />
                <br />

                <div class="form-row">

                    <div class="col-sm-3 col-xs-4">
                        <asp:Button ID="btnEmail" runat="server" class="form-control myButton" Text="Email" OnClick="btnEmail_Click" />
                    </div>
                    <div class="col-sm-3 col-xs-2"></div>

                    <div class="col-sm-3 col-xs-2"></div>
                    <div class="col-sm-3 col-xs-4">
                        <asp:Button ID="btnSave" runat="server" class="form-control myButton" Text="Save" OnClick="btnDownload_Click" /></div>




                </div>

            </div>
        </div>
    </form>
</asp:Content>
