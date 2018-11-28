<%@ Page Title="" Language="C#" MasterPageFile="~/MCRS_Admin.Master" AutoEventWireup="true" CodeBehind="Email.aspx.cs" Inherits="Multicultural_Recruitment_System.Email" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="UniversalMobile.css" />
    <script type="text/javascript" src="tinymce/tinymce.min.js"></script>

    <title></title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form id="frmEmail" runat="server">
        <asp:Panel ID="panTemplateOptions" runat="server">
            <div class="container text-center">
                <br />
                <h2>Email Template Page</h2>
                <br />
                <asp:DropDownList ID="ddlEmailTemplate" runat="server">
                    <asp:ListItem Value="Empty">Empty Template</asp:ListItem>
                    <asp:ListItem Value="Deadline" Text="Deadline">Deadline Reminder</asp:ListItem>
                    <asp:ListItem Value="ThankYou" Text="ThankYou">Thank You</asp:ListItem>
                    <asp:ListItem Value="Welcome" Text="Welcome">Welcome</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="btnCreate" class="myButton" runat="server" Text="Create Email" OnClick="btnCreate_Click" />
            </div>
        </asp:Panel>


        <asp:Panel ID="panEmail" runat="server" Visible="true">

            <asp:Panel ID="panDemoDeadline" runat="server" Visible="false">
                <div class="container">
                    <h2>Subject</h2>
                    <asp:TextBox ID="txtSubject" runat="server" Class="form-control" Text="LKSOM Application Deadline Reminder" required="true"></asp:TextBox>
                    <br />

                    <h2>Content</h2>
                    <textarea id="" class="txaBody editabletxa">
                                
                            Hello Prospect,  <br /> <br />

                        This is a reminder that the deadline for the Lewis Katz School of Medicine application is due in 2 weeks! Please take action and begin your applications if you have not already.  

                        Please feel free to reach out with any questions or concerns about the application process.   <br /> <br />

                                Thank you!
                     </textarea>
                    <br />
                    <asp:Button ID="Button1" class="myButton" runat="server"  style="margin-right:54em" Text="Delete Template" onclick="Button3_Click" />
                    <asp:Button ID="Button7" class="myButton" runat="server" Text="Send Email" OnClick="Button3_Click" /><br />
                </div>
            </asp:Panel>
            <asp:Panel ID="panDemoEmpty" runat="server" Visible="false">
                <div class="container">

                    <h2>Subject</h2>
                    <%--  <asp:Label for="txtSubject" ID="lblSubject" runat="server" Text="Subject"></asp:Label> --%>


                    <asp:TextBox ID="TextBox1" runat="server" Class="form-control" Text=""></asp:TextBox><%--"required="true" removed for switching during demo--%>
                    <br />

                    <h2>Content</h2>
                    <textarea id="" class="txaBody editabletxa"></textarea>
                    <br />
                    <asp:CheckBox ID="chkSaveAsTemplate" runat="server" style="margin-right:10px" Text=" Save as Template"/><br /><br />
                    <asp:Button ID="Button2" class="myButton" runat="server" Text="Send Email" onclick="Button3_Click" />
                </div>

            </asp:Panel>

            <asp:Panel ID="panDemoThankYou" runat="server" Visible="false">
                <div class="container">
                    <h2>Subject</h2>
                    <asp:TextBox ID="TextBox2" runat="server" Class="form-control" Text="Thank You!" required="true"></asp:TextBox>
                    <br />

                    <h2>Content</h2>
                    <textarea id="" class="txaBody editabletxa">
                                
                            Dear Prospect,  <br /> <br />

                        Thank you for you interest in the LKSoM and attendence to the event. We were glad to see you, and hope to see you again.
                        Please feel free to reach out with any questions or concerns about the application process.   <br /> <br />

                                Thank you!
                     </textarea>
                    <br />
                    <asp:Button ID="Button3" class="myButton" runat="server"  style="margin-right:54em" Text="Delete Template" onclick="Button3_Click" />
                    <asp:Button ID="Button6" class="myButton" runat="server" Text="Send Email" OnClick="Button3_Click" /><br />
                </div>
            </asp:Panel>
             <asp:Panel ID="panDemoWelcome" runat="server" Visible="false">
                <div class="container">
                    <h2>Subject</h2>
                    <asp:TextBox ID="TextBox3" runat="server" Class="form-control" Text="Welcome!" required="true"></asp:TextBox>
                    <br />

                    <h2>Content</h2>
                    <textarea id="" class="txaBody editabletxa">
                                
                            Dear Prospect,  <br /> <br />

                        Welcome to the LKSoM, thank you for your interest in our programs. I hope that you have a great time at LKSom.
                        Please feel free to reach out with any questions or concerns about the application process.   <br /> <br />

                                Thank you!
                     </textarea>
                    <br />
                    <asp:Button ID="Button4" class="myButton" runat="server"  style="margin-right:54em" Text="Delete Template" onclick="Button3_Click" />
                    <asp:Button ID="Button5" class="myButton" runat="server" Text="Send Email" OnClick="Button3_Click" /><br />
                </div>
            </asp:Panel>

        </asp:Panel>

    </form>

    <script>
        tinyMCE.init({
            mode: "exact",
            selector: ".editabletxa",
            //elements: "txaBuildBody",
            height: 280,
        });
    </script>

</asp:Content>