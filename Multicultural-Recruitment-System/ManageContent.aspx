<%@ Page Title="" Language="C#" MasterPageFile="~/MCRS_Admin.Master" AutoEventWireup="true" CodeBehind="ManageContent.aspx.cs" Inherits="Multicultural_Recruitment_System.ManageContent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link href="CSS.css" rel="stylesheet" />
    <script type="text/javascript" src="tinymce/tinymce.min.js"></script>
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
                            <label>Are you sure you want to delete this content record?</label><br />

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="myButton" style="text-align: center;" data-dismiss="modal">Yes</button>&nbsp;&nbsp;&nbsp;
                            <button type="button" class="myButton" style="text-align: center;" data-dismiss="modal">No</button>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    <form runat="server" style="padding-bottom:2em;">
        <br />
        
        <div class="container" style="padding-bottom:3em;">
            <h2>Manage Content</h2><br />
                        <h3 style="display:inline;">Which Group?</h3>

                    <div class="col-3" style="text-align:center;display:inline;">
                        <asp:DropDownList ID="ddlGroup" runat="server">
                            <asp:ListItem Enabled="true" Text="Select Group" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="News" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Apply" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Contact Us" Value="3"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-3" style="text-align:center;display:inline;">
                        <asp:DropDownList ID="ddlAddType" Visible="false" runat="server">
                            <asp:ListItem Enabled="true" Text="Select Type" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Build" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Scrape" Value="2"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-6" style="display:inline;">
                        <asp:Button ID="btnSubmitGroupSelect" class="myButton" Text="View Group" OnClick="btnSubmitGroupSelect_Click" runat="server" />
                        <asp:Button ID="btnAddContent" class="myButton" Text="Add Content" OnClick="btnAddContent_Click" Visible="false" runat="server" />
                    </div>
            </div>

        <div class="container">
            <asp:Panel ID="pnlAddScraped" Visible="false" runat="server">
                <div class="container-fluid" style="text-align:center;">
                    <div class="row" style="padding-bottom:2em;">
                        <div class="col-sm-2">
                        </div>
                        <div class="col-sm-8 h-100 justify-content-center align-items-center">
                            <h2>Scraped URL</h2>
                            <div class="col-sm-12">
                                <asp:TextBox ID="txtScrapedURL" runat="server" />
                            </div>
                            <h2>Periodic Updates</h2>
                            <div class="col-sm-12">
                                <asp:DropDownList ID="ddlUpdate" runat="server">
                                    <asp:ListItem Enabled="true" Text="Update Frequency" Value="-1"></asp:ListItem>
                                    <asp:ListItem Text="Never" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Monthly" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="Semester" Value="2"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-sm-2">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-1">
                            <asp:Button ID="Button1" class="myButton" Text="Cancel" runat="server" OnClick="btnCancelAdd_Click" />
                        </div>
                        <div class="col-sm-10">
                        </div>
                        <div class="col-sm-1">
                            <asp:Button ID="Button2" class="myButton" Text="Submit" runat="server" OnClick="btnCancelAdd_Click" />
                        </div>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="pnlAddBuild" Visible="false" runat="server">
                <div class="container-fluid allborders" style="padding-bottom:2em;">
                    <div class="row" style="padding-top:2em;">
                        <div class="col-sm-2">
                        </div>
                        <div class="col-sm-8">
                            <h2>Title</h2>
                            <textarea id="" class="txaTitle editabletxa"></textarea>
                            <br />
                            <h2>Body</h2>
                            <textarea id="" class="txaBody editabletxa"></textarea>
                        </div>
                        <div class="col-sm-2">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2" style="text-align:center">
                            <asp:Button ID="btnCancelAdd" class="myButton" Text="Cancel" runat="server" OnClick="btnCancelAdd_Click" />
                        </div>
                        <div class="col-sm-8">
                        </div>
                        <div class="col-sm-2" style="text-align:center">
                            <asp:Button ID="btnDoneAdd" class="myButton" Text="Submit" runat="server" OnClick="btnCancelAdd_Click" />
                        </div>
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="pnlApplicationLink" Visible="false" runat="server">
                <div class="container-fluid allborders" style="padding-bottom:2em;">
                    <div class="row" style="padding-top:2em;">
                        <div class="col-sm-2">
                        </div>
                        <div class="col-sm-8">
                            <h2>Title</h2>
                            <textarea id="" class="txaTitle editabletxa"></textarea>
                            <h2>Body</h2>
                            <textarea id="" class="txaBody editabletxa"></textarea>
                        </div>
                        <div class="col-sm-2">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2" style="text-align:center">
                            <asp:Button ID="btnApplicationLinkAdd" class="myButton" Text="Cancel" runat="server" OnClick="btnCancelAdd_Click" />
                        </div>
                        <div class="col-sm-8">
                        </div>
                        <div class="col-sm-2" style="text-align:center">
                            <asp:Button ID="btnApplicationLinkCancle" class="myButton" Text="Submit" runat="server" OnClick="btnCancelAdd_Click" />
                        </div>
                        
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="pnlContactUs" Visible="false" runat="server">
                <div class="container-fluid allborders" style="padding-bottom:2em;">
                    <div class="row" style="padding-top:2em;">
                        <div class="col-sm-2">
                        </div>
                        <div class="col-sm-8">
                            <h2>Title</h2>
                            <textarea id="" class="txaTitle editabletxa">Contact Us</textarea>
                            <br />
                            <h2>Body</h2>
                            <textarea id="" class="txaBody editabletxa">"Email: recruiting@temple.edu \n Phone: 267-222-2222"</textarea>
                        </div>
                        <div class="col-sm-2">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2" style="text-align:center">
                            <asp:Button ID="Button5" class="myButton" Text="Cancel" runat="server" OnClick="btnCancelAdd_Click" />
                        </div>
                        <div class="col-sm-8">
                        </div>
                        <div class="col-sm-2" style="text-align:center">
                            <asp:Button ID="Button6" class="myButton" Text="Submit" runat="server" OnClick="btnCancelAdd_Click" />
                        </div>
                    </div>
                </div>
            </asp:Panel>


            <asp:Panel ID="pnlNewsDash" Visible="false" runat="server">
                <div class="for-row ">
                    <div class="col-12">
                    <div style="text-align:right">
                          <asp:Button ID="btnDownload" class="myButton" runat="server" Style="font-size: 14px; border-radius: 5px;" Text="Download Content" />
                    <button runat="server" id="btnAddNews" onserverclick="btnAddNews_ServerClick" class="addButton myButton">
                        <i style="font-size:14px" class="fas fa-plus"></i>
                    </button> 
               
                 
                    </div>
                    </div>
                </div>
                <div>
                    <table id="example" class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">Article Title</th>
                                <th scope="col">Article Body</th>
                                <th scope="col">Edit</th>
                                <th scope="col">Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">Lewis Katz School of Medicine</th>
                                <td>The Lewis Katz School of Medicine at Temple University, located on the Health Science Campus...</td>
                            <td>
                                <a href="EditContent.aspx"><span style="color: black;" class="fa fa-pencil-alt"></span></a>
                            </td>
                            <td>
                                <a href="#exampleModal" data-toggle="modal" data-target="#myModal"><span style="color: black;" class="fa fa-trash-alt black"></span></a>
                            </td>
                            </tr>
                            <tr>
                                <th scope="row">Article Two</th>
                                <td>Acticle Body 2</td>
                                <td><i class="fas fa-pencil-alt"></i></td>
                                <td><i class="fas fa-trash-alt"></i></td>
                            </tr>
                            <tr>
                                <th scope="row">Article Two</th>
                                <td>Acticle Body 2</td>
                                <td><i class="fas fa-pencil-alt"></i></td>
                                <td><i class="fas fa-trash-alt"></i></td>
                            </tr>
                            <tr>
                                <th scope="row">Article Two</th>
                                <td>Acticle Body 2</td>
                                <td><i class="fas fa-pencil-alt"></i></td>
                                <td><i class="fas fa-trash-alt"></i></td>
                            </tr>
                            <tr>
                                <th scope="row">Article Two</th>
                                <td>Acticle Body 2</td>
                                <td><i class="fas fa-pencil-alt"></i></td>
                                <td><i class="fas fa-trash-alt"></i></td>
                            </tr>
                            <tr>
                                <th scope="row">Article Two</th>
                                <td>Acticle Body 2</td>
                                <td><i class="fas fa-pencil-alt"></i></td>
                                <td><i class="fas fa-trash-alt"></i></td>
                            </tr>
                            <tr>
                                <th scope="row">Article Two</th>
                                <td>Acticle Body 2</td>
                                <td><i class="fas fa-pencil-alt"></i></td>
                                <td><i class="fas fa-trash-alt"></i></td>
                            </tr>
                            <tr>
                                <th scope="row">Article Two</th>
                                <td>Acticle Body 2</td>
                                <td><i class="fas fa-pencil-alt"></i></td>
                                <td><i class="fas fa-trash-alt"></i></td>
                            </tr>
                            <tr>
                                <th scope="row">Article Two</th>
                                <td>Acticle Body 2</td>
                                <td><i class="fas fa-pencil-alt"></i></td>
                                <td><i class="fas fa-trash-alt"></i></td>
                            </tr>
                            <tr>
                                <th scope="row">Article Two</th>
                                <td>Acticle Body 2</td>
                                <td><i class="fas fa-pencil-alt"></i></td>
                                <td><i class="fas fa-trash-alt"></i></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </asp:Panel>
        </div>
    </form>
    <script>
        tinyMCE.init({
            mode: "exact",
            selector: ".editabletxa",
            //elements: "txaBuildBody",
        });
    </script>

</asp:Content>
