<%@ Page Title="" Language="C#" MasterPageFile="~/MCRS_Student.Master" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="Multicultural_Recruitment_System.Calendar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="Calendar_JS.js"></script>
    <link rel="stylesheet" href="Calendar_CSS.css" />


    <script>
        $(function () {
            $('.pr-price').hide();
            $('.d1').show();

            $('#select').on("change", function () {
                $('.pr-price').hide();
                $('.d' + $(this).val()).show();
            }).val("1");
        });
    </script>
    <link rel="stylesheet" href="UniversalMobile.css" />
    <title>Calendar</title>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="article.css" />

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form id="frmCalendar" runat="server">
        <br />
        <div class="col-sm-12"></div>
        <div class="col-sm-12"></div>
        <div>

            <!------ Include the above in your HEAD tag ---------->
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-md-12 col-sm-12 col-xs-12">
                        <div id="my-calendar"></div>
                    </div>
                    <!--(./col-lg-12 col-md-12 col-sm-12 col-xs-12"BELOW ROW:)-->
                </div>
                <!--(./row)-->
            </div>
            <!--(./COntainer")-->

            <div class="col-sm-12"></div>
            <div class="eventList col-sm-12">
                <div class="col-xs-8 whitetext">

                    <h2 class="title">List of Events</h2>

                    <select id="select" name="cd-dropdown" class="cd-dropdown" style="color: black;">
                        <option value="1">All Events</option>
                        <option value="2">Volunteer</option>
                        <option value="3">Extracurricular</option>
                        <option value="4">Recruiting</option>
                    </select>

                    <div id="1" class="pr-price d1" style="padding-bottom: 3em;">

                        <div class="row">
                            <div class="col-7">
                                <label>Shelter Volunteer</label>
                                <label>November 7, 2018</label><br />
                            </div>
                            <div class="col-5">
                                <asp:Button ID="Button7" runat="server" name="sV" Text="View Details" class="myMobileButton" OnClick="btnViewS_Click" />
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class="col-7">
                                <label>After School Volunteer</label>
                                <label>November 10, 2018</label>
                            </div>
                            <div class="col-5">
                                <asp:Button ID="Button8" runat="server" name="asV" Text="View Details" class="myMobileButton" OnClick="btnViewS_Click" />
                            </div>
                        </div>
                        <br />


                        <div class="row">
                            <div class="col-7">
                                <label>Healthcare Volunteer</label>
                                <label>November 13, 2018</label>
                            </div>
                            <div class="col-5">
                                <asp:Button ID="Button9" runat="server" name="hcV" Text="View Details" class="myMobileButton" OnClick="btnViewS_Click" />
                            </div>
                        </div>
                        <br />


                        <div class="row">
                            <div class="col-7">
                                <label>MAPS Meeting</label>
                                <label>November 17, 2018</label>
                            </div>
                            <div class="col-5">
                                <asp:Button ID="Button10" runat="server" name="hcV" Text="View Details" class="myMobileButton" OnClick="btnViewS_Click" />
                            </div>
                        </div>
                        <br />


                        <div class="row">
                            <div class="col-7">
                                <label>AMSA</label>
                                <label>November 19, 2018</label>
                            </div>
                            <div class="col-5">
                                <asp:Button ID="Button11" runat="server" name="hcV" Text="View Details" class="myMobileButton" OnClick="btnViewS_Click" />
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class="col-7">
                                <label>AED</label>
                                <label>November 26, 2018</label>
                            </div>
                            <div class="col-5">
                                <asp:Button ID="Button12" runat="server" name="hcV" Text="View Details" class="myMobileButton" OnClick="btnViewS_Click" />
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class="col-7">
                                <label>Temple CST Career Fair</label>
                                <label>November 7, 2018</label>
                            </div>
                            <div class="col-5">
                                <asp:Button ID="Button13" runat="server" name="hcV" Text="View Details" class="myMobileButton" OnClick="btnViewS_Click" />
                            </div>
                        </div>
                        <br />


                        <div class="row">
                            <div class="col-7">
                                <label>Drexel Career Fair</label>
                                <label>November 10, 2018</label>
                            </div>
                            <div class="col-5">
                                <asp:Button ID="Button14" runat="server" name="hcV" Text="View Details" class="myMobileButton" OnClick="btnViewS_Click" />
                            </div>
                        </div>
                        <br />


                        <div class="row">
                            <div class="col-7">
                                <label>UPenn Career Fair</label>
                                <label>November 21, 2018</label>
                            </div>
                            <div class="col-5">
                                <asp:Button ID="Button15" runat="server" name="hcV" Text="View Details" class="myMobileButton" OnClick="btnViewS_Click" />
                            </div>
                        </div>
                        <br />

                    </div>

                    <div id="2" class="pr-price d2" style="padding-bottom: 3em;">
                        <div class="row">
                            <div class="col-7">
                                <label>Shelter Volunteer</label>
                                <label>November 7, 2018</label>
                            </div>
                            <div class="col-5">
                                <asp:Button ID="Button16" runat="server" name="sV" Text="View Details" class="myMobileButton" OnClick="btnViewS_Click" />
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class="col-7">
                                <label>After School Volunteer</label>
                                <label>November 10, 2018</label>
                            </div>
                            <div class="col-5">
                                <asp:Button ID="Button17" runat="server" name="asV" Text="View Details" class="myMobileButton" OnClick="btnViewS_Click" />
                            </div>
                        </div>
                        <br />


                        <div class="row">
                            <div class="col-7">
                                <label>Healthcare Volunteer</label>
                                <label>November 13, 2018</label>
                            </div>
                            <div class="col-5">
                                <asp:Button ID="Button18" runat="server" name="hcV" Text="View Details" class="myMobileButton" OnClick="btnViewS_Click" />
                            </div>
                        </div>
                        <br />
                    </div>

                    <div id="3" class="pr-price d3" style="padding-bottom: 3em;">
                        <div class="row">
                            <div class="col-7">
                                <label>MAPS Meeting</label>
                                <label>November 17, 2018</label>
                            </div>
                            <div class="col-5">
                                <asp:Button ID="Button1" runat="server" name="hcV" Text="View Details" class="myMobileButton" OnClick="btnViewS_Click" />
                            </div>
                        </div>
                        <br />


                        <div class="row">
                            <div class="col-7">
                                <label>AMSA</label>
                                <label>November 19, 2018</label>
                            </div>
                            <div class="col-5">
                                <asp:Button ID="Button2" runat="server" name="hcV" Text="View Details" class="myMobileButton" OnClick="btnViewS_Click" />
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class="col-7">
                                <label>AED Meeting</label>
                                <label>November 26, 2018</label>
                            </div>
                            <div class="col-5">
                                <asp:Button ID="Button3" runat="server" name="hcV" Text="View Details" class="myMobileButton" OnClick="btnViewS_Click" />
                            </div>
                        </div>
                        <br />

                    </div>

                    <div id="4" class="pr-price d4" style="padding-bottom: 3em;">

                        <div class="row">
                            <div class="col-7">
                                <label>Temple CST Career Fair</label>
                                <label>November 7, 2018</label>
                            </div>
                            <div class="col-5">
                                <asp:Button ID="Button4" runat="server" name="hcV" Text="View Details" class="myMobileButton" OnClick="btnViewS_Click" />
                            </div>
                        </div>
                        <br />


                        <div class="row">
                            <div class="col-7">
                                <label>Drexel Career Fair</label>
                                <label>November 10, 2018</label>
                            </div>
                            <div class="col-5">
                                <asp:Button ID="Button5" runat="server" name="hcV" Text="View Details" class="myMobileButton" OnClick="btnViewS_Click" />
                            </div>
                        </div>
                        <br />


                        <div class="row">
                            <div class="col-7">
                                <label>UPenn Career Fair</label>
                                <label>November 21, 2018</label>
                            </div>
                            <div class="col-5">
                                <asp:Button ID="Button6" runat="server" name="hcV" Text="View Details" class="myMobileButton" OnClick="btnViewS_Click" />
                            </div>
                        </div>
                        <br />

                    </div>
                </div>
            </div>
        </div>


    </form>
</asp:Content>
