<%-- 
    Document   : add_event
    Created on : Nov 17, 2017, 4:55:25 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
	<meta charset="UTF-8">
	<title>Travelendar</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/style.min.css">
        <link rel="stylesheet" href="css/responsive.min.css">
        <link rel="stylesheet" href="css/responsivetable.min.css">
        <!-- Google Maps JS API // cukup satu --> 
        <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEYS&libraries=places"></script>
        <!-- JQuery Library -->
        <!--<script src="http://code.jquery.com/jquery-latest.min.js"></script> -->
        <script src="js/jquery.min.js"></script>
        <!-- untuk parse tanggal -->
        <script src="js/moment.min.js"></script>
        <!-- GMaps Library -->
        <script src="js/gmaps.min.js"></script>
        
        <link href='calendar-event/fullcalendar.min.css' rel='stylesheet' />
        <link href='calendar-event/fullcalendar.print.min.css' rel='stylesheet' media='print' />
        <script src='calendar-event/lib/moment.min.js'></script>
        <script src='calendar-event/lib/jquery.min.js'></script>
        <script src='calendar-event/fullcalendar.min.js'></script>
        
        <!-- GMaps and Javascript Custom Setting for This Page -->
        <script src="js/a2event.js"></script>
        <style>

                #calendar {
                        max-width: 100%;
                        margin: 0 auto;
                }

        </style>

    </head>
<body>

    <div class="menu-atas">
	<div class="header">
             <div class="logonya">
                <img src="images/travelendar2.svg">
                
            </div>
            <div class="logo">
                <img src="images/logo.png">
            </div> <!--logo-->
            
            <div class="dropdown" style="float:right;">
                <button class="dropbtn">
                    <a class="icon-account">
                            <img src="icon/akun1.png">
                    </a>
                </button>
                <div class="dropdown-content">
                  <a id="usernameContent">Hi, </a>
                  <a href="https://goo.gl/forms/pfpqxLwGItxB30eX2"> Feedback </a>
                  <a href="setting">Setting Account</a>
                  <a href="index?action=downloadPdf">Download Plan</a>
                  <a id="signout">Sign Out</a>
                </div>
            </div>
            
            <div class="dropdown" style="float:right;">
                <button class="dropbtn">
                    <a class="icon-account">
                        <img src="icon/notif2.png">
                    </a>
                    <div class="not">
                        <a id="logoNotif" style="color:#E1E1E9"></a>
                    </div>
                </button>
                <div class="dropdown-content" id="jv-notif">
                  <a href="#">Welcome to Travelendar ! by A2 JTK</a>
                </div>
            </div>
                  
            <div class="kotak-cari">
                <div class="icon-cari">
                    <img src="icon/search.png">
                </div>
                <input class="cari" id="findEvent" type="text" placeholder="Find Event ..."/>
                <div id="findResult" style="list-style:none"></div>
            </div> <!--kotak-cari-->
          
	</div> <!--header-->
     
    </div> <!--menu-atas-->
    
    <div class="wadah-atas">
	<img src="images/bg1.jpg" alt="">
        <div class="slogan">
            <div class="logoku">
                <img src="images/travelendar2.svg">
            </div>
            <h1 style="text-align:center">Welcome Travelendar</h1>
            <p style="text-align:center"> Make Your Plan Better ! </p>
        </div>
    </div> <!--wadah--atas-->

    <div class="induk1">

	<div class="container-t">
	<div class="tab">
            <button class="tablinks" id="defaultOpen">Calendar</button>
	    <button class="tablinks" id="getList">List Event</button>
	    <button class="tablinks" id="defaultOpenNew">Add New Event</button>
            <!--<input class="search-ev" type="text" placeholder="Search Event ... "/>-->
	</div>
	</div> <!--container-t-->

    </div> <!--induk1-->

        <div class="induk2">

            <div class="container">
                
                <div id="Tasik" class="tabcontent">
                   <div id='calendar'></div>
                 
		</div>
                
		<div id="London" class="tabcontent">
	           
                        <input class="ev-name" id="eventName" type="text" placeholder="Event Name ??.. "/>

			<div class="main">
				<div class="left">
                                    
					<form>
                                            <div class="row">
                                              <div class="col-25">
                                                <label for="fname">From</label>
                                              </div>
                                              <div class="col-75">
                                                <input class="name" id="origDate" type="date" value="2018-01-28" style="width:150px">
                                                <input class="name" id="origTime" type="time" value="00:00" style="width:120px"/>
                                              </div>
                                                
                                              <div class="col-25">
                                                <label for="fname">Until</label>
                                              </div>
                                              <div class="col-75">
                                                <input class="name" id="destDate" type="date" value="2018-01-28" style="width:150px">
                                                <input class="name" id="destTime" type="time" value="00:00" style="width:120px"/>
                                              </div>  

                                            </div>
                                            <div class="row">
                                              <div class="col-25">
                                                <label for="lname">Event Location</label>
                                              </div>
                                              <div class="col-75">
                                                <input class="name" type="text" id="orig" name="lastname" placeholder="Event Location..">
                                              </div>
                                            </div>
                                            <div class="row">
                                              <div class="col-25">
                                                <label for="lname">Previous Location</label>
                                              </div>
                                              <div class="col-75">
                                                <input class="name" type="text" id="dest" name="lastname" placeholder="Previous Location..">
                                              </div>
                                            </div>
                                            <div class="row">
                                              <div class="col-25">
                                                <label for="country">Departure Time</label>
                                              </div>
                                              <div class="col-75">
                                                <input class="name" id="departureDate" type="date" value="2018-01-28" style="width:150px; float:left;">
                                                <input class="name" id="departureTime" type="time" value="00:00" style="width:120px"/>
                                              </div>
                                            </div>
                                            
                                          </form>
                                    
                                    
				</div> <!--left-->
				
				
				<div class="right">
                                    <input class="col-95" id="searchmap" type="text" placeholder="Enter a location">
                                    <div id="mapNewEvent"></div>
				</div>
                                
                                <input class="ev-name" id="noteDesc" type="text" placeholder="Note .. " style="height:75px;"/>
                            
                                <div class="i-save" >
                                    <button class="submit">Choose Transportation Mode</button>
				<!-- The Modal -->
				<div id="myModal" class="modal">

				  <!-- Modal content -->
				  <div class="modal-content">
                                      <div class="form">
                                        <div class="modal-header">
                                          <span class="close">&times;</span>
                                          <h4>Select Your Transportation Mode</h4>

                                        </div>
                                          <div class="k-popup">
                                              <form class="k-popupna" action="#" method="POST">
                                              <div class="k-transport">
                                                  <div class="trans"> <img src="icon/air2.png"> </div>
                                                  <div class="dontmode"> ⭙ </div>

                                              </div>
                                               <div class="k-transport">
                                                   <div class="trans"> <img src="icon/train.png"></div>
                                                   <div class="dontmode"> ⭙ </div
                                                  <br>
                                              </div>
                                               <div class="k-transport">
                                                  <div class="trans"> <img src="icon/car.png"> </div>
                                                  <input type="radio" id="radio2" name="transportation" class="transportation" value="DRIVING" >
                                                  <input id="driving" type="text" disable>
                                              </div>
                                               <div class="k-transport">
                                                  <div class="trans"> <img src="icon/bcycle.png"> </div>
                                                  <input type="radio" id="radio3" name="transportation" class="transportation" value="BICYCLING" >
                                                  <input id="bicycling" type="text" disable>
                                              </div>
                                               <div class="k-transport">
                                                  <div class="trans"> <img src="icon/walk.png"> </div>
                                                  <input type="radio" id="radio1" name="transportation" class="transportation" value="WALKING" >
                                                  <input id="walking" type="text" disable>
                                              </div>


                                              </form>
                                              <div class="containernya">
                                                  <div id="mapPopup"> Your Routes </div>
                                                  <div id="mapInstruction"></div>
                                              </div>

                                              <button id="TombolSave">Save</button>
                                          </div>

                                      </div>
							
                                        </div> <!--modal content-->
                                    </div>
                                
                                </div> <!--i-save-->
	
			</div> <!--/ .main -->
		</div>  <!--london-->
                
		<div id="Paris" class="tabcontent">
                    <table id="tableEvent">
			<thead>
                            <tr>
                                <th style="display:none"></th>
				<th>Event Name</th>
                                <th>Date & Time</th>
                                <th>Use</th>
                                <th>At</th>
                                <th>Location</th>
                                <th>Action</th>
                            </tr>   
			</thead>
                                                
                        <tbody>
                                                
	
						
			</tbody>
		    </table>
		</div>

		<div id="MoreEvent" class="tabcontent">
			<div class="main">
                            <form>
				<div class="left" id="moreLeft">
                                        <input class="name-ev" id="moreTitle" type="text"/>
				</div>
				
				
				<div class="right">
                                        <div class="text-ev"> Event Time </div>
                                        <!--    <input class="ev" id="moreStart" type="text" placeholder="Ke ..."/> -->
                                            <input class="name" id="moreStartDate" type="date" style="width:150px">
                                            <input class="name" id="moreStartTime" type="time" style="width:120px"/>
					<div class="text-ev"> Event Locations </div>
                                            <input class="ev" id="moreAddress" type="text" placeholder="Ke ..."/>
                                        <div class="text-ev"> Use </div>
                                        
                                         <!--   <input class="ev" id="moreMode" type="text" placeholder="Ke ..."/> -->
                                            <select id="moreMode">
                                                <option value="driving">driving</option>
                                                <option value="walking">walking</option>
                                                <option value="bicycling">bicycling</option>
                                                <option value="transit">transit</option>
                                            </select>
                                        
                                        <div class="text-ev"> At </div>
                                            <!-- <input class="ev" id="moreDepature" /> -->
                                            <input class="name" id="moreDepatureDate" type="date" style="width:150px">
                                            <input class="name" id="moreDepatureTime" type="time" style="width:120px"/>
				</div>
                                 
                                <input class="ev-name" id="moreNote" type="text" style="height:75px;"/>

                                <div class="i-save2">
                                    <button class="save-ev2" id="moreBack"> Back </button>
                                    <button class="save-ev" id="MoreEdit"> Edit </button> 
                                </div> <!--i-save-->
                            </form>
				
			</div> <!--/ .main -->
		</div>

            </div> <!--container-->

           	
        </div> <!--induk2-->

        <div class="container" id="mapsBottom">
             <div id="map">Maps Event</div>
        </div> <!--container-->


        <div class="footer-atas">
	
        </div> <!--footer-atas-->

	<div class="footer-bawah">
            <div class="footer">
            <div class="container-t">    
                <div class="copyright">
                    <h4>Travelendar</h4>
                    <div class="cpy"> Copyright &copy; 2017 travlendar | Designed by A2 JTK Polban</div>
                </div> <!--copyright-->
                
                <div class="share-sos">
                    <div class="sos">
                        <a href="https://www.facebook.com/travlendar.proyek.1"><img src="icon/fb.png"></a>
                    </div>
                    
                    <div class="sos">
                        <a href="https://twitter.com/Travlendar2a"><img src="icon/twt.png"></a>
                    </div>
                    
                    <div class="sos">
                        <a href="https://www.instagram.com/travelendara2proyek3/"><img src="icon/inst.png">
                    </div>
                    
                    <div class="sos">
                        <a href="https://www.youtube.com/channel/UC4OTlsVRe7TTHzs8yc_eJkg"><img src="icon/yt.png"></a>
                    </div>
                </div> <!--share-sos-->
            </div>    
            </div>
        </div> <!--footer-bawah-->
        
        
    </body>
</html>
