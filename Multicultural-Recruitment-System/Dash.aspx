<%@ Page Title="" Language="C#" MasterPageFile="~/MCRS_Admin.Master" AutoEventWireup="true" CodeBehind="Dash.aspx.cs" Inherits="Multicultural_Recruitment_System.Dash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Event Dashboard</title>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="Calendar_JS.js"></script>
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
    <script>
        $(document).ready(function () {
            $('#example').DataTable({

                scrollY: 400,
            });


        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navBarItems" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">

    <form id="frmDash" runat="server">

        <div class="container">

            <br />
            <h2 class="title1">Prospect Recruitment Dashboard</h2>
            <div class="form-row">
                <div class="col-12">
                    <div style="text-align: right;">
                        <asp:Button ID="btnSendEmail" class="myButton" runat="server" Style="font-size: 14px; border-radius: 5px;" Text="Email Prospect" OnClick="btnEmail_Click" />
                        &nbsp;&nbsp;&nbsp;<asp:Button ID="btnDownload" class="myButton" runat="server" Style="font-size: 14px; border-radius: 5px;" Text="Download Data" />
                     
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
                            <h4 class="modal-title">Delete Record</h4>
                        </div>
                        <div class="modal-body" style="text-align: center;">
                            <label>Are you sure you want to delete this prospect record?</label><br />

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="myButton" style="text-align: center;" data-dismiss="modal">Yes</button>&nbsp;&nbsp;&nbsp;
                            <button type="button" class="myButton" style="text-align: center;" data-dismiss="modal">No</button>

                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div>
            <div class="container">
                <table id="example" class="table table-hover" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th scope="col">First Name</th>
                            <th scope="col">Last Name</th>
                            <th scope="col">Graduation Year</th>
                            <th scope="col">Non-traditional</th>
                            <th scope="col">Gender</th>
                            <th scope="col">Race</th>
                            <th scope="col">Ethnicity</th>
                            <th scope="col">School</th>
                            <th scope="col">Edit</th>
                            <th scope="col">Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Jane</td>
                            <td>Doe</td>
                            <td>2021</td>
                            <td>No</td>
                            <td>Female</td>
                            <td>White</td>
                            <td>Hispanic</td>
                            <td>Temple</td>
                            <td>
                                <a href="StudentProfile.aspx"><span style="color: black;" class="fa fa-pencil-alt"></span></a>
                            </td>
                            <td>
                                <a href="#exampleModal" data-toggle="modal" data-target="#myModal"><span style="color: black;" class="fa fa-trash-alt black"></span></a>
                            </td>
                        </tr>
                        <tr>
                            <td>Jimmy</td>
                            <td>Zeng</td>
                            <td>2020</td>
                            <td>Yes</td>
                            <td>Male</td>
                            <td>Asian</td>
                            <td>American</td>
                            <td>Temple</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <td>Zixuan</td>
                            <td>Liang</td>
                            <td>2021</td>
                            <td>No</td>
                            <td>Male</td>
                            <td>Asian</td>
                            <td>Chinese</td>
                            <td>Temple</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <td>Sandra</td>
                            <td>Liu</td>
                            <td>2022</td>
                            <td>No</td>
                            <td>Female</td>
                            <td>Asian</td>
                            <td>Chinese</td>
                            <td>Temple</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <td>Allie</td>
                            <td>Hart</td>
                            <td>2021</td>
                            <td>No</td>
                            <td>Female</td>
                            <td>White</td>
                            <td>Latino</td>
                            <td>Temple</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <td>Nick</td>
                            <td>Brady</td>
                            <td>2021</td>
                            <td>No</td>
                            <td>Male</td>
                            <td>White</td>
                            <td>American</td>
                            <td>Temple</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <td>Lisa</td>
                            <td>Miller</td>
                            <td>2021</td>
                            <td>No</td>
                            <td>Female</td>
                            <td>White</td>
                            <td>American</td>
                            <td>Temple</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <td>James</td>
                            <td>Doe</td>
                            <td>2021</td>
                            <td>No</td>
                            <td>Male</td>
                            <td>White</td>
                            <td>American</td>
                            <td>Temple</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <td>Wayne</td>
                            <td>Lee</td>
                            <td>2021</td>
                            <td>No</td>
                            <td>Male</td>
                            <td>Asian</td>
                            <td>Korean</td>
                            <td>Temple</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <td>Bysim</td>
                            <td>Harris</td>
                            <td>2021</td>
                            <td>Yes</td>
                            <td>Male</td>
                            <td>Black</td>
                            <td>American</td>
                            <td>Temple</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <td>Bysim</td>
                            <td>Harris</td>
                            <td>2021</td>
                            <td>Yes</td>
                            <td>Male</td>
                            <td>Black</td>
                            <td>American</td>
                            <td>Temple</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <td>Tyquin</td>
                            <td>Jones</td>
                            <td>2022</td>
                            <td>Yes</td>
                            <td>Female</td>
                            <td>Black</td>
                            <td>American</td>
                            <td>Temple</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                        <tr>
                            <td>Kayson</td>
                            <td>Liang</td>
                            <td>2022</td>
                            <td>Yes</td>
                            <td>Male</td>
                            <td>Asian</td>
                            <td>Chinese</td>
                            <td>Temple</td>
                            <td><i class="fas fa-pencil-alt"></i></td>
                            <td><i class="fas fa-trash-alt"></i></td>
                        </tr>
                    </tbody>

                </table>
                <%--     <script src="https://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>--%>
                <%--<script src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js" type="text/javascript"></script>--%>
                <%--<script src="https://cdn.datatables.net/1.10.11/js/dataTables.bootstrap.min.js" type="text/javascript"></script>--%>
            </div>


        </div>
    </form>

</asp:Content>




<%--  <button class="Buttons" type="button" style="font-size: 20px; border-radius: 5px;">Download Data</button>--%>
  