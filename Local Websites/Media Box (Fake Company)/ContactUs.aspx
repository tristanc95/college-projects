<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="site_content">
      <div id="content">
        <div id="content_item">
          <h1>Sorry! :(</h1>
          <h1 style="color: orangered">We're still in the process of fixing our contact page.</h1>
            <asp:Image ID="imgWorkingOnIt" runat="server" ImageUrl="~/images/Maintenance.png" ImageAlign="Right" Width="200px" />
            <h2>If you need to get a hold of us, you may do so with the following contact information.</h2>
            <h3 style="color: orangered">E-Mail: contact@mediabox.com</h3>
            <br />
            <h3 style="color: orangered">Phone Number: 422-153-0981</h3>
            <br />
        </div>
      </div>
    </div>
    <audio src="audio/Contact.mp3" autoplay="autoplay" loop="loop" controls="controls" style="font-size: x-small; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif" title="ContactUs"></audio>
    <p style="font-size:6px;"> <a href="VideosTestPage.aspx">Click here</a> Secret Video Test Page</p>
</asp:Content>

