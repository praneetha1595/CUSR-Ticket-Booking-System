<!--
	Author: W3layouts
	Author URL: http://w3layouts.com
	License: Creative Commons Attribution 3.0 Unported
	License URL: http://creativecommons.org/licenses/by/3.0/
-->

<!DOCTYPE html>
<html>
<head>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

	<title>CUSR Booking</title>
	<link rel="stylesheet" href="/resources/css/style2.css">
	<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Flight Ticket Booking  Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

</head>
<body>
	

<ul class="tabs-list" style=" text-align: right;">	
<li class="tab-item">welcome ${name}</li>
<li class="tab-item"><a href="/search">Search</a></li>
<li class="tab-item" ><a href="/bookings">Bookings</a></li>	
<li class="tab-item" ><a href="/cancel"> Train Cancellation</a></li>	
<li class="tab-item"><a href="/reset">Reset</a></li>
<li class="tab-item"><a href="/logout">logout</a></li>
	
	</ul>
		<h1> California Ultra-Speed Rail Ticket Booking</h1>
	
	<div class="main-agileinfo">
		<div class="sap_tabs">			
			<div id="horizontalTab">
				<ul class="resp-tabs-list" style=" text-align: center;">
				
                    <h2> Booking</h2>		
				</ul>	
				<div class="clearfix"> </div>	
			<div class="resp-tabs-container">
               <li> 
          <table>
                    
                <tr>
                
                <td width="150">From Station </td>
                <td width="150">To Station</td>
                <td width="100">Train Number</td>
                <td width="100">Train type</td>
                <td width="150">Journey date</td>
                <td width="150">Departure time</td>
                 <td width="150">Price</td>
                  <td width="150">Ticket Count</td>
                   <td width="150">Passenger Names</td>
                </tr>
                <c:forEach items="${bookingList}" var="itemList" varStatus="itr">
                
               
                 
                 <tr>
                
                 <td><c:out value="${itemList.sourceStation.stationName}" /></td>
                <td><c:out value="${itemList.destStation.stationName}" /></td>
                 <td ><c:out value="${itemList.train.trainNumber}" /></td>
                <td><c:out value="${itemList.train.trainType}" /></td>
                <td><c:out value="${itemList.journeyDate}" /></td>
                <td><c:out value="${itemList. trainDepartureTime}" /></td>
                 
                <td><c:out value="${itemList.price}" /></td>
                 <td><c:out value="${itemList.ticketCount}" /></td>
                 <td> <c:forEach var="listValue" items="${itemList.passenger_list}">
				<p>${listValue}</p>
				</c:forEach></td>
                </tr>
                </c:forEach>
                </table>     
              </li>
              </div>
             
          
                    
             
                </div>       
                 
            
			</div>						
			</div>

		</div>
	
	
	<div class="footer-w3l">
		<p class="agileinfo"> &copy; 2016 Flight Ticket Booking . All Rights Reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
	</div>
	<!--script for portfolio-->
		<script src="/resources/js/jquery.min.js"> </script>
		<script src="/resources/js/easyResponsiveTabs.js" type="text/javascript"></script>
		<script type="text/javascript">
		function myFunc(id) {
 var btn=document.getElementById(id);
 var x = document.getElementById(id).nextElementSibling;
  if (btn.value === 'more') {
    btn.value = 'less';
     x.style.display = "block";
   
  } else {
    btn.value = 'more';
     x.style.display = "none";
  }
}	
</script>



<!-- //load-more -->

<script>
function passengerFunc(id) {
	
	 var count=document.getElementById("passengerCount").value;
	 console.log(count);
	 var btn=document.getElementById(id);
	 btn.style.display = "none";
	 var x = document.getElementById(id).nextElementSibling;
     for(var i=0;i<count;i++){
    	 var html = '<input type="text" name="passenger'+i+'"id="passenger'+i+'" value="" onclick="javascript:appendFunction();" /> ' ;
   //  '<a href="" onclick="javascript:removeElement('file-' + fileId + ''); return false;">Remove</a>';
   
	 x.innerHTML += html;
     }
}


</script>

</body>
</html>