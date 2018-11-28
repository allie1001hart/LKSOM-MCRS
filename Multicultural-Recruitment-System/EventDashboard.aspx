<%@ Page Title="" Language="C#" MasterPageFile="~/MCRS_Admin.Master" AutoEventWireup="true" CodeBehind="EventDashboard.aspx.cs" Inherits="Multicultural_Recruitment_System.EventDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Event Dashboard</title>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="Calendar_JS.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" />
    <link rel="stylesheet" href="UniversalMobile.css" />

    
    <script src=" https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css"></script>
    <script src="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css"></script>
    <script>
        $(document).ready(function () {
            $('#example').DataTable({

                scrollY: 400,
                ordering:false
            });


        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navBarItems" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form id="frmEventDashboard" runat="server">

        <div class="container">
            <br />
            <h2 class="title1">Event Dashboard</h2>
            <div class="form-row">
             <div class="col-12">
            <div class="addEvent" style="text-align: right;">
                <asp:Button ID="btnDownload" class="myButton" runat="server" Style="font-size: 14px; border-radius: 5px;" Text="Export Events" />
                <button type="button" class=" plus myButton" name="btnAddEvent" data-toggle="modal" data-target="#myModal" id="btnAddEvent" runat="server"><i class='fas fa-plus'></i></button>
              
            </div>
             </div>
           </div>
        </div>
         <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Add Record</h4>
                        </div>
                        <div class="modal-body" style="text-align: center;">
                                        <div class="container" id="Container2">
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
                        <asp:TextBox ID="txtEventTitle" runat="server" Class="form-control" Text="" required></asp:TextBox>
                    </div>
                    <div class="form-group col-sm-4"></div>
                </div>
                <div class="form-row">
                    <div class="form-group col-sm-4"></div>
                    <div class="form-group col-sm-4">
                        <asp:Label for="txtDate" ID="lblDate" runat="server" Text="Date"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Class="form-control" TextMode="Date" required></asp:TextBox>
                    </div>
                    <div class="form-group col-sm-4"></div>
                </div>
                <div class="form-row">
                    <div class="form-group col-sm-4"></div>
                    <div class="form-group col-sm-4">
                        <asp:Label for="txtStartTime" ID="lblStartTime" runat="server" Text="Start Time"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Class="form-control" TextMode="Time" required></asp:TextBox>
                    </div>
                    <div class="form-group col-sm-4"></div>
                </div>
                <div class="form-row">
                    <div class="form-group col-sm-4"></div>
                    <div class="form-group col-sm-4">
                        <asp:Label for="txtEndTime" ID="lblEndTime" runat="server" Text="End Time"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" Class="form-control" TextMode="Time" required></asp:TextBox>
                    </div>
                    <div class="form-group col-sm-4"></div>
                </div>
                <div class="form-row">
                    <div class="form-group col-sm-4"></div>
                    <div class="form-group col-sm-4">
                        <asp:Label for="txtLocation" ID="lblLocation" runat="server" Text="Location"></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" Class="form-control" Text="" required></asp:TextBox>
                    </div>
                    <div class="form-group col-sm-4"></div>
                </div>
                <div class="form-row">
                    <div class="form-group col-sm-4"></div>
                    <div class="form-group col-sm-4">
                        <asp:Label for="txtDescription" ID="lblDescription" runat="server" Text="Description"></asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server" Class="form-control" Text="" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group col-sm-4"></div>
                </div>
                <br />
                <br />
               
            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="myButton" style="text-align: center;" data-dismiss="modal">Cancel</button>&nbsp;&nbsp;&nbsp;
                            <button type="button" class="myButton" style="text-align: center;" data-dismiss="modal">Add</button>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog" style="padding-left: 5em;">

                    <!-- Modal content-->
                    <div class="modal-content" style="width: 325px;">
                        <div class="modal-header">
                            <h4 class="modal-title">Create Event</h4>
                        </div>
                        <div class="modal-body">
                            <label>Event Title</label><br />
                            <input type="text" style="width: 250px;" id="txtTitle" /><br />
                            <br />

                            <label>Event Type</label><br />
                            <select id="select" name="cd-dropdown">
                                <option value="1">Volunteer</option>
                                <option value="2">Extracurricular</option>
                                <option value="3">Recruiting</option>
                            </select>
                            <br />
                            <br />

                            <label>Date</label><br />
                            <input type="date" style="width: 250px;" id="txtDate" /><br />
                            <br />

                            <label>Start Time</label><br />
                            <input type="time" style="width: 250px;" id="txtStartTime" /><br />
                            <br />

                            <label>End Time</label><br />
                            <input type="time" style="width: 250px;" id="txtEndTime" /><br />
                            <br />

                            <label>Locaton</label><br />
                            <input type="text" style="width: 250px;" id="txtLocation" /><br />
                            <br />

                            <label>Description</label><br />
                            <input type="text" style="width: 250px;" id="txtDescription" />
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="myButton" data-dismiss="modal">Create</button>
                            <button type="button" class="myButton" data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div>
            <div class="container">
                <table id="example" class="table table-hover ">
                    <thead>
                        <tr>
                            <th scope="col">Event Type</th>
                            <th scope="col">Event Title</th>
                            <th scope="col">Date</th>
                            <th scope="col">Time</th>
                            <th scope="col">Location</th>
                            <th scope="col">Description</th>
                            <th scope="col">Edit</th>
                            <th scope="col">Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Volunteer</td>
                            <td>Shelter Volunteer</td>
                            <td>November 7, 2018</td>
                            <td>10:00am-12:00pm</td>
                            <td>Sunday Breakfast Rescue Mission</td>
                            <td>Serve meals to homeless</td>
                          <td>
                                <a href="EditEvent.aspx"><span style="color: black;" class="fa fa-pencil-alt"></span></a>
                            </td>
                            <td>
                                <a href="#exampleModal" data-toggle="modal" data-target="#myModal"><span style="color: black;" class="fa fa-trash-alt black"></span></a>
                            </td>
                        </tr>
                        <tr>
                            <td>Volunteer</td>
                            <td>After School Volunteer</td>
                            <td>November 10, 2018</td>
                            <td>4:00am-6:00pm</td>
                            <td>Central High School</td>
                            <td>Teach children about health issues</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <td>Volunteer</td>
                            <td>Healthcare Volunteer</td>
                            <td>November 13, 2018</td>
                            <td>11:00am-2:00pm</td>
                            <td>Temple University Hospital</td>
                            <td>Assist in free check-ups for locals</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <td>Extracurricular</td>
                            <td>MAPS Meeting</td>
                            <td>November 17, 2018</td>
                            <td>5:00pm-6:00pm</td>
                            <td>Lewis Katz School of Medicine</td>
                            <td>MAPS General Meeting</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <td>Extracurricular</td>
                            <td>AMSA Meeting</td>
                            <td>November 19, 2018</td>
                            <td>4:30pm-5:30pm</td>
                            <td>Lewis Katz School of Medicine</td>
                            <td>AMSA General Meeting</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <td>Extracurricular</td>
                            <td>AED Meeting</td>
                            <td>November 20, 2018</td>
                            <td>4:00-5:00pm</td>
                            <td>Lewis Katz School of Medicine</td>
                            <td>AED General Meeting</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <td>Recruiting</td>
                            <td>Temple CST Career Fair</td>
                            <td>November 7, 2018</td>
                            <td>10:00am-2:00pm</td>
                            <td>Mitten Hall</td>
                            <td>Recruiting students at Temple U</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <td>Recruiting</td>
                            <td>Drexel Career Fair</td>
                            <td>November 10, 2018</td>
                            <td>12:00am-4:00pm</td>
                            <td>Lebow College</td>
                            <td>Recruiting students at Drexel U</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <td>Recruiting</td>
                            <td>UPenn Career Fair</td>
                            <td>November 21, 2018</td>
                            <td>11:00am-4:00pm</td>
                            <td>Penn Student Center</td>
                            <td>Recruiting students at UPenn</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                    </tbody>
                </table>
            </div>


        </div>
    </form>
</asp:Content>
