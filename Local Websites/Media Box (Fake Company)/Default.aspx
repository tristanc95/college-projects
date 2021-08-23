<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div id="site_content">
      <div id="sidebar_container">
        <div class="sidebar">
          <h1>Latest News</h1>
          <h2>New Website Launched</h2>
          <p>Welcome to our brand new website! We've been working on it for a while now, but we're excited to unveil it to the public. Let us know what you think!</p>
        </div>
        <div class="sidebar">
          <h1>Special Offers</h1>
          <h2>10% Discount</h2>
          <p>For the month of April 2017, we are offering a 10% discount for all new visitors who sign up with the code MEDIASITE.</p>
        </div>
      </div>
      <div id="content">
        <ul class="slideshow">
          <li class="show"><img width="706" height="316" src="images/blu.png" alt="image one" /></li>
          <li><img width="706" height="316" src="images/dvd.png" alt="image two" /></li>
          <li><img width="706" height="316" src="images/laser.png" alt="image three" /></li>
          <li><img width="706" height="316" src="images/music.png" alt="image four" /></li>
          <li><img width="706" height="316" src="images/videogames.png" alt="image five" /></li>
        </ul>
        <div id="content_item">
          <h1>Welcome to Mediabox</h1>
            <br />
          <h2>The ultimate media rental company.</h2>
          <p>Welcome to Mediabox! We specialize in you renting out any sort of media from any generation.</p>
          <p>Want to travel back to the 1980s and watch a movie on a VCR, Laserdisc, or even a Betamax?</p>
          <p>Want to play some classics on an original Super Nintendo or Atari?</p>
          <p>Want to listen to music on a record player, Walkman, or even the classic CD Player?</p>
          <h2>MediaBox offers all of this and more!</h2>
          <p>We offer the ability to rent both the item and the equipment needed for that item for you to use!</p>
          <p>I hope that you enjoy what our website has to offer and you consider signing up for our beta coming Summer 2017!</p>
          <p>Please check out our <a href="Products.aspx">Our Current Products</a> to see what you will be interested in!</p>
          <p>Have some old equipment you'd like to donate? Check out <a href="Inventory.aspx">Our Inventory List</a> to see what we currently have and are taking in!!</p>
          <h3>If you have any questions, please <a href="ContactUs.aspx">Contact Us</a> with any questions you have.</h3>
        </div>
      </div>
    </div>
</asp:Content>


