<%-- 
    Document   : index
    Created on : Sep 21, 2017, 1:17:03 PM
    Author     : Agit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Assets2/css/styletraveller.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Assets2/css/responsive.css">
        <title>JSP Page</title>
    </head>
    <body>

<%@include file="../Header/header.jsp" %>

<div class="wadah">
	
	<div class="main">
		
		<%@include file="../Sidebar/sidebar.jsp" %>

		<div class="middle">
				<div class="judul-manage"> MANAGE DISTANCE MATRIX </div>
				<button id="myBtn"> + Add New Distance Matrix </button>
				<!-- The Modal -->
				<div id="myModal" class="modal">

				  <!-- Modal content -->
				  <div class="modal-content">
				    	
							  <div class="form">
							  	<div class="modal-header">
							      <span class="close">&times;</span>
							      <h5>Add New Distance Matrix</h5>
							    </div>

							    <form class="distance-form">
                                                                <select class="dropdown-location">
                                                                     <option value="StartingLocation">Starting Location ...</option>
                                                                     <option value="SLocation1">Universitas Kristen Maranatha</option>
                                                                     <option value="SLocation2">Politeknik Negeri Bandung</option>
                                                                     <option value="SLocation3">Bosscha Observatory</option>
                                                                     <option value="SLocation4">Maribaya Waterfall</option>
                                                                     <option value="SLocation5">Saung Angklung Udjo</option>
                                                                     <option value="SLocation6">Paris Van Java</option>
                                                                </select>
							        <select class="dropdown-location">
                                                                     <option value="Destination">Destination ...</option>
                                                                     <option value="DLocation1">Universitas Kristen Maranatha</option>
                                                                     <option value="DLocation2">Politeknik Negeri Bandung</option>
                                                                     <option value="DLocation3">Bosscha Observatory</option>
                                                                     <option value="DLocation4">Maribaya Waterfall</option>
                                                                     <option value="DLocation5">Saung Angklung Udjo</option>
                                                                     <option value="DLocation6">Paris Van Java</option>
                                                                </select>
							      <input style="margin-top: 5px; color: #535559" type="text" placeholder="Distance (km)    ..."/>
							      <button> Save </button>
							    </form>
							  </div>
							
				  </div> <!--modal content-->

				</div>

		</div> <!--middle-->
		
		<div class="middle">
		
			<div class="kotak-distance">
				<h4> Distance Matrix </h4>
                                <div class="kotak-search">
					<div class="icon-search">
						<img src="${pageContext.request.contextPath}/Assets2/icon/search.png">
					</div> <!--icon-search-->
					<input class="search "type="text" placeholder="Search Here ... "/>
				</div> <!--kotak-search-->
			</div> <!--kotak-distance-->
	
			<div class="kotak-distance">
					<table>
						<thead>
						<tr>
							<th>Starting Location</th>
							<th>Destination</th>
							<th>Distance (km)</th>
							<th style="width: 125px">Action</th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<td>Universitas Kristen Maranatha</td>
							<td>Politeknik Negeri Bandung</td>
							<td>2.6</td>
                                                	<td> <a class="action" href="edit.jsp">Edit </a> <a class="action2" onclick="myFunction()"> Delete </a> </td>
						</tr>
						
						<tr>
							<td>Politeknik Negeri Bandung</td>
							<td>Bosscha Observatory</td>
							<td>11.4</td>
							<td> <a class="action" href="edit.jsp">Edit </a> <a class="action2" onclick="myFunction()"> Delete </a> </td>
						</tr>
						
						<tr>
							<td>Bosscha Observatory</td>
							<td>Maribaya Waterfall</td>
							<td>9.1</td>
							<td> <a class="action" href="edit.jsp">Edit </a> <a class="action2" onclick="myFunction()"> Delete </a> </td>
						</tr>
						
						<tr>
							<td>Maribaya Waterfall</td>
							<td>Saung Angklung Udjo</td>
							<td>16.1</td>
							<td> <a class="action" href="edit.jsp">Edit </a> <a class="action2" onclick="myFunction()"> Delete </a> </td>
						</tr>
						
						
						<tr>
							<td>Saung Angklung Udjo</td>
							<td>Paris Van Java</td>
							<td>8.1</td>
							<td> <a class="action" href="edit.jsp">Edit </a> <a class="action2" onclick="myFunction()"> Delete </a> </td>
						</tr>
	
                                                <script>
						function myFunction() {
							alert("Delete Sucsess");
						}
						</script>
						
						</tbody>
					</table>
			</div> <!--kotak-distance-->
                        
                        <div class="kotak-traveller">
					<div class="pagination">
						<a href="index.html" class="page active">first</a><a href="#" class=
						"page"> 2 </a><a href="index.html" class="page"> 3 </a><span
						class="page"> 4 </span><a href="index.html" class=
						"page"> 5 </a><a href="index.html" class="page"> 6 </a><a href="index.html"
						class="page">last</a>
					</div>
			</div> <!--kotak-traveller-->
			
			
		</div> <!--/ .middle -->

		
	</div> <!--/ .main -->

 
 			<script>
			
				function show()
				{
					if(document.getElementById("hidden-mobile").style.display == 'none')
						document.getElementById("hidden-mobile").style.display = 'block';
					else
						document.getElementById("hidden-mobile").style.display = 'none';
				}
				
				// Get the modal
				var modal = document.getElementById('myModal');

				// Get the button that opens the modal
				var btn = document.getElementById("myBtn");

				// Get the <span> element that closes the modal
				var span = document.getElementsByClassName("close")[0];

				// When the user clicks the button, open the modal 
				btn.onclick = function() {
				    modal.style.display = "block";
				}

				// When the user clicks on <span> (x), close the modal
				span.onclick = function() {
				    modal.style.display = "none";
				}

				// When the user clicks anywhere outside of the modal, close it
				window.onclick = function(event) {
				    if (event.target == modal) {
				        modal.style.display = "none";
				    }
				}
			</script>
 
</div> <!--wadah-->

<%@include file="../Footer/footer.jsp" %>
    </body>
</html>