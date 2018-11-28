<%@ Page Title="" Language="C#" MasterPageFile="~/MCRS_Admin.Master" AutoEventWireup="true" CodeBehind="EditEvent.aspx.cs" Inherits="Multicultural_Recruitment_System.EditEvent" %>
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
                <h1 style="text-align: center">Edit Event</h1>
                <br />
                <br />
                <div class="form-row">
                    <div class="form-group col-sm-4"></div>
                    <div class="form-group col-sm-4">
                        <asp:Label for="ddlEventType" ID="lblEventType" runat="server" Text="Event Type"></asp:Label>
                        <asp:DropDownList ID="ddlEventType" runat="server" class="form-control">
                            <asp:ListItem>Volunteer</asp:ListItem>
                            <asp:ListItem>Extracurricular</asp:ListItem>
                            <asp:ListItem>Recruiting</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group col-sm-4"></div>
                </div>
                <div class="form-row">
                    <div class="form-group col-sm-4"></div>
                    <div class="form-group col-sm-4">
                        <asp:Label for="txtEventTitle" ID="lblEventTitle" runat="server" Text="Event Title"></asp:Label>
                        <asp:TextBox ID="txtEventTitle" runat="server" Class="form-control" Text="" required>Shelter Volunteer</asp:TextBox>
                    </div>
                    <div class="form-group col-sm-4"></div>
                </div>
                <div class="form-row">
                    <div class="form-group col-sm-4"></div>
                    <div class="form-group col-sm-4">
                        <asp:Label for="txtDate" ID="lblDate" runat="server" Text="Date"></asp:Label>
                        <asp:TextBox ID="txtDate" runat="server" Class="form-control" TextMode="Date" required></asp:TextBox>
                    </div>
                    <div class="form-group col-sm-4"></div>
                </div>
                <div class="form-row">
                    <div class="form-group col-sm-4"></div>
                    <div class="form-group col-sm-4">
                        <asp:Label for="txtStartTime" ID="lblStartTime" runat="server" Text="Start Time"></asp:Label>
                        <asp:TextBox ID="txtStartTime" runat="server" Class="form-control" TextMode="Time" required></asp:TextBox>
                    </div>
                    <div class="form-group col-sm-4"></div>
                </div>
                <div class="form-row">
                    <div class="form-group col-sm-4"></div>
                    <div class="form-group col-sm-4">
                        <asp:Label for="txtEndTime" ID="lblEndTime" runat="server" Text="End Time"></asp:Label>
                        <asp:TextBox ID="txtEndTime" runat="server" Class="form-control" TextMode="Time" required></asp:TextBox>
                    </div>
                    <div class="form-group col-sm-4"></div>
                </div>
                <div class="form-row">
                    <div class="form-group col-sm-4"></div>
                    <div class="form-group col-sm-4">
                        <asp:Label for="txtLocation" ID="lblLocation" runat="server" Text="Location"></asp:Label>
                        <asp:TextBox ID="txtLocation" runat="server" Class="form-control" Text="" required>Sunday Breakfast Rescue Mission</asp:TextBox>
                    </div>
                    <div class="form-group col-sm-4"></div>
                </div>
                <div class="form-row">
                    <div class="form-group col-sm-4"></div>
                    <div class="form-group col-sm-4">
                        <asp:Label for="txtDescription" ID="lblDescription" runat="server" Text="Description"></asp:Label>
                        <asp:TextBox ID="txtDescription" runat="server" Class="form-control" Text="" required="true">Serve meals to homeless</asp:TextBox>
                    </div>
                    <div class="form-group col-sm-4"></div>
                </div>
                <br />
                <br />
                <div class="form-row">
                    <div class="col-sm-4 ">
                    </div>
                    <div class="col-sm-4"> <asp:Button ID="btnSave" runat="server" class="form-control myButton" Text="Save" style="text-align:center" /></div>
                    <div class="col-sm-4"></div>
                    </div>
                <br />
                <div class="form-row">
                    <div class="col-sm-4 ">
                    </div>
                    <div class="col-sm-4"> <asp:Button ID="btnCancel" runat="server" class="form-control myButton" Text="Cancel" style="text-align:center" /></div>
                    <div class="col-sm-4"></div>
                    </div>
               
            </div>
            <br/>
            <br />
        </div>
    </form>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
