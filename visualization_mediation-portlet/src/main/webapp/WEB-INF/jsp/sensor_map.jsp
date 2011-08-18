<%@ page session="true" contentType="text/html;charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c'%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<portlet:defineObjects/> 

<portlet:actionURL var="mapSendingURL" >
	<portlet:param name="action" value="map-sending" />
</portlet:actionURL>
<portlet:resourceURL var="callbackURL" id="callbacks"/>


<link rel="stylesheet" href="<%=renderRequest.getContextPath()%>/theme/default/style.css" type="text/css" />
  <!-- <link rel="stylesheet" href="http://blog.163.com/gis_110/blog/style.css" type="text/css" />  --> 
<!--  
<link rel="stylesheet" type="text/css" href="http://extjs.cachefly.net/ext-3.3.1/resources/css/ext-all.css" />
<script type='text/javascript' src='<c:url value="/dwr/engine.js"/>'></script> 
<script type='text/javascript' src='<c:url value="/dwr/util.js"/>'></script> 
<script type="text/javascript" src="http://extjs.cachefly.net/ext-3.3.1/adapter/ext/ext-base.js"></script>
<script type="text/javascript" src="http://extjs.cachefly.net/ext-3.3.1/ext-all.js"></script>
-->
<script src="<%=renderRequest.getContextPath()%>/OpenLayers.js"></script>
<script src="<%=renderRequest.getContextPath()%>/res/sensorMap.js"></script>
<script src="http://maps.google.com/maps/api/js?sensor=false"></script>


<script type="text/javascript">
		var mapSendingURL = "${mapSendingURL}";
        
    	function addToWindowOnload(oFunction) 
    	{ 
    	  
    	var existingOnload = window.onload;     
    	if (existingOnload)     
    	{       
    	window.onload = function(){ oFunction(); existingOnload(); };     
    	}    
    	else   
    	{        
    	window.onload = oFunction;    
    	oFunction();
    	}} 
    	addToWindowOnload(function()
    			{ 
    		//dwr.engine.setActiveReverseAjax(true);
    		//dwr.engine.setNotifyServerOnPageUnload(true);
    		//alert(dwr.engine._scriptSessionId);
    		//resources.initSession(dwr.engine._scriptSessionId);
    		
    		init();
    			}); 
    </script>
     <h1 id="title"></h1>
    <div id="tags"></div>
    <div id="shortdesc"></div>
    <div id="center" style="height: 470px;">
	<!-- <div id='map' style="height: 460px;"></div> -->
	</div>
    <div id="docs">
       
    </div>
    <div id="button">
       
    </div>

    
