<%-- 
    Document   : Account
    Created on : Aug 29, 2013, 9:21:12 PM
    Author     : abdo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--Import jstl library -->

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--<%@ page import="org.*" %> --%>
<%@page import = "java.util.List" %>
<%@page import = "org.*" %> 
<%@page import = "DAL.*"%>
<%@page import = "ObjectBusiness.*"%>
<%@page import = "Business_Model.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Demande Diplome</title>
<link rel="stylesheet" href="css/screen.css" type="text/css" media="screen" title="default" />
<!--[if IE]>
<link rel="stylesheet" media="all" type="text/css" href="css/pro_dropline_ie.css" />
<![endif]-->

<!--  jquery core -->
<script src="js/jquery/jquery-1.4.1.min.js" type="text/javascript"></script>
 
<!--  checkbox styling script -->
<script src="js/jquery/ui.core.js" type="text/javascript"></script>
<script src="js/jquery/ui.checkbox.js" type="text/javascript"></script>
<script src="js/jquery/jquery.bind.js" type="text/javascript"></script>
<!--  msgbox jquery -->
<link href="Styles/msgBoxLight.css" rel="stylesheet" type="text/css">
<script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
<script src="js/jquery/jquery.msgBox.js" type="text/javascript"></script>

<script type="text/javascript">
$(function(){
	$('input').checkBox();
	$('#toggle-all').click(function(){
 	$('#toggle-all').toggleClass('toggle-checked');
	$('#mainform input[type=checkbox]').checkBox('toggle');
	return false;
	});
});
</script>  


<![if !IE 7]>

<!--  styled select box script version 1 -->
<script src="js/jquery/jquery.selectbox-0.5.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('.styledselect').selectbox({ inputClass: "selectbox_styled" });
});
</script>
 

<![endif]>


<!--  styled select box script version 2 --> 
<script src="js/jquery/jquery.selectbox-0.5_style_2.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('.styledselect_form_1').selectbox({ inputClass: "styledselect_form_1" });
	$('.styledselect_form_2').selectbox({ inputClass: "styledselect_form_2" });
});
</script>

<!--  styled select box script version 3 --> 
<script src="js/jquery/jquery.selectbox-0.5_style_2.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('.styledselect_pages').selectbox({ inputClass: "styledselect_pages" });
});
</script>

<!--  styled file upload script --> 
<script src="js/jquery/jquery.filestyle.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8">
$(function() {
	$("input.file_1").filestyle({ 
	image: "images/forms/upload_file.gif",
	imageheight : 29,
	imagewidth : 78,
	width : 300
	});
});
</script>

<!-- Custom jquery scripts -->
<script src="js/jquery/custom_jquery.js" type="text/javascript"></script>
 
<!-- Tooltips -->
<script src="js/jquery/jquery.tooltip.js" type="text/javascript"></script>
<script src="js/jquery/jquery.dimensions.js" type="text/javascript"></script>
<script type="text/javascript">
$(function() {
	$('a.info-tooltip ').tooltip({
		track: true,
		delay: 0,
		fixPNG: true, 
		showURL: false,
		showBody: " - ",
		top: -35,
		left: 5
	});
});
</script> 

<!--  date picker script -->
<link rel="stylesheet" href="css/datePicker.css" type="text/css" />
<script src="js/jquery/date.js" type="text/javascript"></script>
<script src="js/jquery/jquery.datePicker.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8">
        $(function()
{

// initialise the "Select date" link
$('#date-pick')
	.datePicker(
		// associate the link with a date picker
		{
			createButton:false,
			startDate:'01/01/2005',
			endDate:'31/12/2020'
		}
	).bind(
		// when the link is clicked display the date picker
		'click',
		function()
		{
			updateSelects($(this).dpGetSelected()[0]);
			$(this).dpDisplay();
			return false;
		}
	).bind(
		// when a date is selected update the SELECTs
		'dateSelected',
		function(e, selectedDate, $td, state)
		{
			updateSelects(selectedDate);
		}
	).bind(
		'dpClosed',
		function(e, selected)
		{
			updateSelects(selected[0]);
		}
	);
	
var updateSelects = function (selectedDate)
{
	var selectedDate = new Date(selectedDate);
	$('#d option[value=' + selectedDate.getDate() + ']').attr('selected', 'selected');
	$('#m option[value=' + (selectedDate.getMonth()+1) + ']').attr('selected', 'selected');
	$('#y option[value=' + (selectedDate.getFullYear()) + ']').attr('selected', 'selected');
}
// listen for when the selects are changed and update the picker
$('#d, #m, #y')
	.bind(
		'change',
		function()
		{
			var d = new Date(
						$('#y').val(),
						$('#m').val()-1,
						$('#d').val()
					);
			$('#date-pick').dpSetSelected(d.asString());
		}
	);

// default the position of the selects to today
var today = new Date();
updateSelects(today.getTime());

// and update the datePicker to reflect it...
$('#d').trigger('change');
});
</script>

<!-- MUST BE THE LAST SCRIPT IN <HEAD></HEAD></HEAD> png fix -->
<script src="js/jquery/jquery.pngFix.pack.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
$(document).pngFix( );
});
</script>
</head>
<body> 
<!-- Start: page-top-outer -->
<form>
<div id="page-top-outer">    

<!-- Start: page-top -->
<div id="page-top">

	<!-- start logo -->
	<!--
 <div id="logo" style="color:white">           
	<h1>Demande Diplome</h1>
        
        <!--<a href=""><img src="images/shared/logo.png" width="156" height="40" alt="" /></a>
	</div>
-->
        
<h1>Demande Diplome</h1>    
<!--<div id="logo"> <p>Demande Diplome</p>
	<a href=""><img src="images/shared/logo.png" width="156" height="40" alt="" /></a>
</div>-->
                         <!--end logo -->
	
	<!--  start top-search -->
	<div id="top-search">
		<table border="0" cellpadding="0" cellspacing="0">
		<tr>
		<td><input type="text" value="Search" onblur="if (this.value=='') { this.value='Search'; }" onfocus="if (this.value=='Search') { this.value=''; }" class="top-search-inp" /></td>
		<td>
		 
		<select  class="styledselect">
			<option value="">All</option>
			<option value="">Products</option>
			<option value="">Categories</option>
			<option value="">Clients</option>
			<option value="">News</option>
		</select> 
		 
		</td>
		<td>
		<input type="image" src="images/shared/top_search_btn.gif"  />
		</td>
		</tr>
		</table>
	</div>
 	<!--  end top-search -->
 	<div class="clear"></div>

</div>
<!-- End: page-top -->

</div>
<!-- End: page-top-outer -->
	
<div class="clear">&nbsp;</div>
 
<!--  start nav-outer-repeat................................................................................................. START -->
<div class="nav-outer-repeat"> 
<!--  start nav-outer -->
<div class="nav-outer"> 

		<!-- start nav-right -->
		<div id="nav-right">
		
			<div class="nav-divider">&nbsp;</div>
			<div class="showhide-account"><img src="images/shared/nav/nav_myaccount.gif" width="93" height="14" alt="" /></div>
			<div class="nav-divider">&nbsp;</div>
                        <div><a href="" id="logout">
                                <img src="images/shared/nav/nav_logout.gif" width="64" height="14" alt="" /></a></div>
			<div class="clear">&nbsp;</div>
		
			<!--  start account-content -->	
			<div class="account-content">
			<div class="account-drop-inner">
				<a href="" id="acc-settings">Settings</a>
				<div class="clear">&nbsp;</div>
				<div class="acc-line">&nbsp;</div>
				<a href="" id="acc-details">Personal details </a>
				<div class="clear">&nbsp;</div>
				<div class="acc-line">&nbsp;</div>
				<a href="" id="acc-project">Project details</a>
				<div class="clear">&nbsp;</div>
				<div class="acc-line">&nbsp;</div>
				<a href="" id="acc-inbox">Inbox</a>
				<div class="clear">&nbsp;</div>
				<div class="acc-line">&nbsp;</div>
				<a href="" id="acc-stats">Statistics</a> 
			</div>
			</div>
			<!--  end account-content -->
		
		</div>
		<!-- end nav-right -->


		<!--  start nav -->
		<div class="nav">
		<div class="table">
		
		<ul class="select"><li><a href="HomePage.jsp"><b>Acceuil</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub">
		<!--	<ul class="sub">
				<li><a href="#nogo">Dashboard Details 1</a></li>
				<li><a href="#nogo">Dashboard Details 2</a></li>
				<li><a href="#nogo">Dashboard Details 3</a></li>
			</ul>  
                -->
		</div>
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
		                    
		<ul class="current"><li><a href="Account.jsp"><b>Création du Compte</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub show">
			<!--<ul class="sub">
				<li><a href="#nogo">View all products</a></li>
				<li class="sub_show"><a href="#nogo">Add product</a></li>
				<li><a href="#nogo">Delete products</a></li>
                            </ul>
                        -->
		</div>
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
		
		<ul class="select"><li><a href="login.html"><b>Login</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		
               <!-- <div class="select_sub">
			<ul class="sub">
				<li><a href="#nogo">Categories Details 1</a></li>
				<li><a href="#nogo">Categories Details 2</a></li>
				<li><a href="#nogo">Categories Details 3</a></li>
			</ul>
		</div>-->
                
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
		
		<ul class="select"><li><a href="table.html"><b>Clients</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub">
			<ul class="sub">
				<li><a href="#nogo">Clients Details 1</a></li>
				<li><a href="#nogo">Clients Details 2</a></li>
				<li><a href="#nogo">Clients Details 3</a></li>
			 
			</ul>
		</div>
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
		
		<ul class="select"><li><a href="text.html"><b>News</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub">
			<ul class="sub">
				<li><a href="#nogo">News details 1</a></li>
				<li><a href="#nogo">News details 2</a></li>
				<li><a href="#nogo">News details 3</a></li>
			</ul>
		</div>
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
		
		<div class="clear"></div>
		</div>
		<div class="clear"></div>
		</div>
		<!--  start nav -->

</div>
<div class="clear"></div>
<!--  start nav-outer -->
</div>
<!--  start nav-outer-repeat................................................... END -->
 
 <div class="clear"></div>
 
<!-- start content-outer -->
<div id="content-outer">
<!-- start content -->
<div id="content">


<div id="page-heading"><h1>Creer un Compte</h1></div>


<table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
<tr>
	<th rowspan="3" class="sized"><img src="images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
	<th class="topleft"></th>
	<td id="tbl-border-top">&nbsp;</td>
	<th class="topright"></th>
	<th rowspan="3" class="sized"><img src="images/shared/side_shadowright.jpg" width="20" height="300" alt="" /></th>
</tr>
<tr>
	<td id="tbl-border-left"></td>
	<td>
	<!--  start content-table-inner -->
	<div id="content-table-inner">
	
	<table border="0" width="100%" cellpadding="0" cellspacing="0">
	<tr valign="top">
	<td>
	
	
		<!--  start step-holder -->
		<div id="step-holder">
			<div class="step-no">1</div>
			<div class="step-dark-left"><a href="">Créer un Compte</a></div>
			<div class="step-dark-right">&nbsp;</div>
			<!--<div class="step-no-off">2</div>
			<div class="step-light-left">Select related products</div>
			<div class="step-light-right">&nbsp;</div>
			<div class="step-no-off">3</div>
			<div class="step-light-left">Preview</div>
			<div class="step-light-round">&nbsp;</div>
			<div class="clear"></div> -->
		</div>
		<!--  end step-holder -->
	
		<!-- start id-form -->
		<table border="0" cellpadding="0" cellspacing="0"  id="id-form">
		<tr>
			<th valign="top">Prénom</th>
			<td><input type="text" class="inp-form" id = "Firstname" name="Firstname" /></td>
			<td>
                           
			<div class="error-left" id ="err_fname_left" style="visibility: hidden"></div>
			<div class="error-inner" id="error" style="visibility: hidden">Ce champ est obligatoire.</div>
			
                        </td>
		</tr>
		<tr>
			<th valign="top">Nom</th>
			<td><input type="text" class="inp-form-error" id ="Lastname" name ="Lastname"/></td>
			<td>
			<div class="error-left" id ="err_lname_left" style="visibility: hidden"></div>
			<div class="error-inner" id ="err_lname" style="visibility: hidden">Ce champ est obligatoire.</div>
			</td>
		</tr>
                <tr>
			<th valign="top">E-mail</th>
			<td><input type="text" class="inp-form-error" id = "email" name ="email" value="" /></td>
			<td>
			
                        <div class="error-left" id ="err_email_left" style="visibility: hidden"></div>
			<div class="error-inner" id ="err_email" style="visibility: hidden">Ce champ est obligatoire.</div>
			</td>
                       
                        
		</tr>
                <tr>
			<th valign="top">Nom d'utilisateur</th>
			<td><input type="text" class="inp-form-error" id = "username" name ="username" value="" /></td>
			<td>
			
                        <div class="error-left" id ="err_username_left" style="visibility: hidden"></div>
			<div class="error-inner" id ="err_username" style="visibility: hidden">Ce champ est obligatoire.</div>
			</td>
                       
                        
		</tr>
                <tr>
			<th valign="top">Mot de passe</th>
			<td><input type="password" class="inp-form-error" id="Password" name ="Password" /></td>
			<td>
                        <div class="error-left" id ="err_pass_left" style="visibility: hidden"></div>
			<div class="error-inner" id ="err_pass" style="visibility: hidden">Ce champ est obligatoire.</div>
                        </td>
		</tr>
                <tr>
			<th valign="top">Confirmer mot de passe</th>
			<td><input type="password" class="inp-form-error" id="cPass" name ="cPass" /></td>
			<td>
                        <div class="error-left" id ="err_pass_conf_left" style="visibility: hidden"></div>
			<div class="error-inner" id ="err_conf_pass" style="visibility: hidden"> Non correctement confirmé.</div>
			<div class="error-left" id ="err_cpass_left" style="visibility: hidden"></div>
			<div class="error-inner" id ="err_cpass" style="visibility: hidden">Ce champ est obligatoire.</div>
			</td>
		</tr>
		<tr>
		<th valign="top">Catégorie:</th>
		<td>	
		<select  class="styledselect_form_1"id="Category" name ="Category">
			<option value="E">Entreprise</option>
			<option value="A">Auditeur</option>
		<!--    <option value="">Categories</option>
			<option value="">Clients</option>
			<option value="">News</option>-->
   
		</select>
		</td>
		<!--<td></td>
		</tr>
		
                <tr>
		<th valign="top">Sub Category:</th>
		<td>	
		<select  class="styledselect_form_1">
			<option value="">All</option>
			<option value="">Products</option>
			<option value="">Categories</option>
			<option value="">Clients</option>
			<option value="">News</option>
		</select>
		</td>
                -->
		<td>
                    <div class="error-left" id ="err_categ_left" style="visibility: hidden"></div>
		    <div class="error-inner" id="err_categ" style="visibility: hidden">Ce champ est obligatoire.</div>
			
                </td>
		</tr> 
		<!--<tr>
			<th valign="top">Price:</th>
			<td><input type="text" class="inp-form" /></td>
			<td></td>
		</tr>
                -->
		<tr>
		<!--<th valign="top">Select a date:</th>-->
		<td class="noheight">
		
			
                        <table border="0" cellpadding="0" cellspacing="0">
			<!--<tr  valign="top">
				<td>
				<form id="chooseDateForm" action="#">
				
				<select id="d" class="styledselect-day">
					<option value="">dd</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
				</select>
				</td>
				<td>
					<select id="m" class="styledselect-month">
						<option value="">mmm</option>
						<option value="1">Jan</option>
						<option value="2">Feb</option>
						<option value="3">Mar</option>
						<option value="4">Apr</option>
						<option value="5">May</option>
						<option value="6">Jun</option>
						<option value="7">Jul</option>
						<option value="8">Aug</option>
						<option value="9">Sep</option>
						<option value="10">Oct</option>
						<option value="11">Nov</option>
						<option value="12">Dec</option>
					</select>
				</td>
				<td>
					<select  id="y"  class="styledselect-year">
						<option value="">yyyy</option>
						<option value="2005">2005</option>
						<option value="2006">2006</option>
						<option value="2007">2007</option>
						<option value="2008">2008</option>
						<option value="2009">2009</option>
						<option value="2010">2010</option>
					</select>
   
  
  
					</form>
				</td>
                                
				<td><a href=""  id="date-pick"><img src="images/forms/icon_calendar.jpg"   alt="" />
                                    </a></td>
                               
			</tr>-->
			</table>
		
		</td>
		<td></td>
	</tr>
	<!--
            <tr>
		<th valign="top">Description:</th>
		<td><textarea rows="" cols="" class="form-textarea"></textarea></td>
		<td></td>
	</tr>
	<tr>
	<th>Image 1:</th>
	<td><input type="file" class="file_1" /></td>
	<td>
	<div class="bubble-left"></div>
	<div class="bubble-inner">JPEG, GIF 5MB max per image</div>
	<div class="bubble-right"></div>
	</td>
	</tr>
	<tr>
	<th>Image 2:</th>
	<td>  <input type="file" class="file_1" /></td>
	<td><div class="bubble-left"></div>
	<div class="bubble-inner">JPEG, GIF 5MB max per image</div>
	<div class="bubble-right"></div></td>
	</tr>
	<tr>
	<th>Image 3:</th>
	<td><input type="file" class="file_1" /></td>
	<td><div class="bubble-left"></div>
	<div class="bubble-inner">JPEG, GIF 5MB max per image</div>
	<div class="bubble-right"></div></td>
	</tr>
  -->
   
	<tr>
		<th>&nbsp;</th>
               
		<td valign="top">
			<input type="Submit" value="" id ="btn_submit"name ="btn_submit" class="form-submit" onclick="return checkfields();" />
			<input type="reset" value="" class="form-reset"  />
                   
		</td>
		<td></td>
	</tr>
  

	</table>

   

	</td>
	<td>

	<!--  start related-activities -->
	<div id="related-activities">
		
		<!--  start related-act-top -->
		<div id="related-act-top">
		<img src="images/forms/header_related_act.gif" width="271" height="43" alt="" />
		</div>
		<!-- end related-act-top -->
		
		<!--  start related-act-bottom -->
		<div id="related-act-bottom">
		
			<!--  start related-act-inner -->
			<div id="related-act-inner">
			
				<div class="left"><a href=""><img src="images/forms/icon_plus.gif" width="21" height="21" alt="" /></a></div>
				<div class="right">
					<h5>Add another product</h5>
					Lorem ipsum dolor sit amet consectetur
					adipisicing elitsed do eiusmod tempor.
					<ul class="greyarrow">
						<li><a href="si.isae.edu.lb">Click here to visit</a></li> 
						<li><a href="">Click here to visit</a> </li>
					</ul>
				</div>
				
				<div class="clear"></div>
				<div class="lines-dotted-short"></div>
				
				<div class="left"><a href=""><img src="images/forms/icon_minus.gif" width="21" height="21" alt="" /></a></div>
				<div class="right">
					<h5>Delete products</h5>
					Lorem ipsum dolor sit amet consectetur
					adipisicing elitsed do eiusmod tempor.
					<ul class="greyarrow">
						<li><a href="">Click here to visit</a></li> 
						<li><a href="">Click here to visit</a> </li>
					</ul>
				</div>
				
				<div class="clear"></div>
				<div class="lines-dotted-short"></div>
				
				<div class="left"><a href=""><img src="images/forms/icon_edit.gif" width="21" height="21" alt="" /></a></div>
				<div class="right">
					<h5>Edit categories</h5>
					Lorem ipsum dolor sit amet consectetur
					adipisicing elitsed do eiusmod tempor.
					<ul class="greyarrow">
						<li><a href="">Click here to visit</a></li> 
						<li><a href="">Click here to visit</a> </li>
					</ul>
				</div>
				<div class="clear"></div>
				
			</div>
			<!-- end related-act-inner -->
			<div class="clear"></div>
		
		</div>
		<!-- end related-act-bottom -->
	
	</div>
	<!-- end related-activities -->

</td>
</tr>
<tr>
<td><img src="images/shared/blank.gif" width="695" height="1" alt="blank" /></td>
<td></td>
</tr>
</table>
 
<div class="clear"></div>
 

</div>
<!--  end content-table-inner  -->
</td>
<td id="tbl-border-right"></td>
</tr>
<tr>
	<th class="sized bottomleft"></th>
	<td id="tbl-border-bottom">&nbsp;</td>
	<th class="sized bottomright"></th>
</tr>
</table>



<div class="clear">&nbsp;</div>

</div>
<!--  end content -->
<div class="clear">&nbsp;</div>
</div>
<!--  end content-outer -->

 

<div class="clear">&nbsp;</div>
    
<!-- start footer -->         
<div id="footer">
	<!--  start footer-left -->
	<div id="footer-left">
	 <a href=""></a>. All rights reserved.</div>
	<!--  end footer-left -->
	<div class="clear">&nbsp;</div>
</div>
<!-- end footer -->

  <script>     
     function checkfields()
        {
        var v_email = document.getElementById("email").value;
        if (v_email==="" || v_email === null)
        {
        //alert("Please Enter E-mail");
        document.getElementById('err_email').style.visibility='visible';
        document.getElementById('err_email_left').style.visibility='visible';
        email.focus();
        return false;
        
        }
        var v_firstname = document.getElementById("Firstname").value;
        if (v_firstname==="" || v_firstname === null)
        {
        document.getElementById('error').style.visibility='visible';
        document.getElementById('err_fname_left').style.visibility='visible';
        //alert("Please Enter your Firstname");
        Firstname.focus();
        return false;
        
        }
        var v_lastname = document.getElementById("Lastname").value;
        if (v_lastname==="" || v_lastname === null)
        {
        document.getElementById('err_lname').style.visibility='visible';
        document.getElementById('err_lname_left').style.visibility='visible';
        //alert("Please Enter your Lastname");
        Lastname.focus();
        return false;
        
        }
        var v_username = document.getElementById("username").value;
        if (v_username==="" || v_username === null)
        {
        document.getElementById('err_username').style.visibility='visible';
        document.getElementById('err_username_left').style.visibility='visible';
        //alert("Please Enter your Lastname");
        Lastname.focus();
        return false;
        
        }
        
        var v_password = document.getElementById("Password").value;
        if (v_password==="" || v_password === null)
        {
        document.getElementById('err_pass_left').style.visibility='visible';
        document.getElementById('err_pass').style.visibility='visible';
        
         //alert("Please Enter your Password");
        Password.focus();
        return false;
        
        }
        var v_cpass = document.getElementById("cPass").value;
        if (v_cpass==="" || v_cpass === null)
        {
        document.getElementById('err_cpass_left').style.visibility='visible';
        document.getElementById('err_cpass').style.visibility='visible';
        
            //alert("Please Enter your Password");
        Password.focus();
        return false;
        
        }
        var v_categ = document.getElementById("Category").value;
        if (v_categ==="" || v_categ === null)
        {
        document.getElementById('err_categ_left').style.visibility='visible';
        document.getElementById('err_categ').style.visibility='visible';
        
        //alert("Please Enter your Category");
        Category.focus();
        return false;
        
        }
        var v_cpass = document.getElementById("cPass").value;
        var v_password = document.getElementById("Password").value;
        if(v_cpass !== v_password && v_cpass !== null && v_password !== null ) 
        {
         
        document.getElementById('err_conf_pass').style.visibility ='visible';
        document.getElementById('err_pass_conf_left').style.visibility ='visible';
        //  alert("Password is not confiremed successfuly");
       //jquery.msgBox('Password is not confiremed successfuly','Password Confirmation','Error');
       //$.msgBox({
         //           title:"Password Confirmation",
         //           content:"Password is not confiremed successfuly",
         //           type:"Error"
         //           });
                   
          
        cPass.focus();
        return false;   
        }
        
        
        
   else
   {
       document.getElementById('err_email_left').style.visibility ='hidden';
       document.getElementById('err_email').style.visibility ='hidden';
       document.getElementById('error').style.visibility ='hidden'; 
       document.getElementById('err_fname_left').style.visibility ='hidden';
       document.getElementById('err_lname').style.visibility ='hidden';
       document.getElementById('err_lname_left').style.visibility ='hidden';
       document.getElementById('err_pass_left').style.visibility ='hidden';
       document.getElementById('err_pass').style.visibility ='hidden';
       document.getElementById('err_cpass_left').style.visibility ='hidden';
       document.getElementById('err_cpass').style.visibility ='hidden';
       document.getElementById('err_categ_left').style.visibility ='hidden';
       document.getElementById('err_categ').style.visibility ='hidden';
       document.getElementById('err_conf_pass').style.visibility ='hidden';
       document.getElementById('err_pass_conf_left').style.visibility ='hidden';
    <% 
    Obj_Account Acc_Obj = new Obj_Account();   
    String Acc_Firstname = request.getParameter("Firstname");
    String Acc_Lastname  = request.getParameter("Lastname");
    String Acc_categ     = request.getParameter("Category");
    String Acc_pass      = request.getParameter("Password");
    String Acc_email     = request.getParameter("email"); 
    String Acc_username  = request.getParameter("username");
    Acc_Obj.setAcc_email(Acc_email);
    Acc_Obj.setAcc_username(Acc_username);
    Acc_Obj.setAcc_Firstname(Acc_Firstname);
    Acc_Obj.setAcc_Lastname(Acc_Lastname);
    Acc_Obj.setAcc_Category(Acc_categ);
    Acc_Obj.setAcc_Password(Acc_pass);
    Account acc_Business = new Account();
    acc_Business.Submit_Acc(Acc_Obj);
   %>
    
    } 
    }
 </script>
   
 <!--<script type="text/javascript"> 
        alert("Check Input"); 
        </script> -->
</form> 
</body>
</html>

<!-- Jsp get data and call java method -->
 
 