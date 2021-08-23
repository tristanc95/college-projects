<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Inventory.aspx.vb" Inherits="Inventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; color:whitesmoke"> Welcome to the Inventory Page!</h1>
    <h2>Through here, you can begin to segway into looking at all of the products that we have to offer!</h2>

    <h4 style="color:whitesmoke">To go to each inventory selection, please press the image associated with what you wish to see!</h4>

    <a href="FilmAndMusic.aspx"><asp:Image ID="imgFilmandMusic" runat="server" ImageUrl="~/images/FilmandMusic.png" Height="163px" ImageAlign="Bottom" Width="213px" /></a>
    <a href="VideoGames.aspx"><asp:Image ID="imgVideoGames" runat="server" ImageUrl="~/images/videogames.png" ImageAlign="Top" Width="170px" /></a>

    <br />
    <br />

    <p style="font-size: medium; color:whitesmoke">Do you have any older products that you would like to donate to us?</p>
    <a href="Donations.aspx">Click here to submit a donation form of what you would like to send to us!</a>
    <br />
    <br />

    <audio src="audio/Inventory.mp3" autoplay="autoplay" loop="loop" controls="controls"></audio>

</asp:Content>

