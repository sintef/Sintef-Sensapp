<%@ page session="true" contentType="text/html;charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c'%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<portlet:defineObjects/> 

<portlet:actionURL var="sesSendingURL" >
	<portlet:param name="action" value="ses-sending" />
</portlet:actionURL>

<link rel="stylesheet" href="<%=renderRequest.getContextPath()%>/theme/default/style.css" type="text/css" />

<!--  
<link rel="stylesheet" type="text/css" href="http://extjs.cachefly.net/ext-3.3.1/resources/css/ext-all.css" />
<script type='text/javascript' src='<c:url value="/dwr/engine.js"/>'></script> 
<script type='text/javascript' src='<c:url value="/dwr/util.js"/>'></script> 
<script type='text/javascript' src="<%=renderRequest.getContextPath()%>/dwr/interface/sensorSESDWR.js"></script>
<script type="text/javascript" src="http://extjs.cachefly.net/ext-3.3.1/adapter/ext/ext-base.js"></script>
<script type="text/javascript" src="http://extjs.cachefly.net/ext-3.3.1/ext-all.js"></script>
-->


<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript" src="<%=renderRequest.getContextPath()%>/js/highcharts.js"></script>

<script src="<%=renderRequest.getContextPath()%>/res/sensorSES.js"></script>
<script src="<%=renderRequest.getContextPath()%>/res/require.js"></script>
<script type="text/javascript">
var sosSendingURL = "${sesSendingURL}";
var _contextPathSensor = "<%=renderRequest.getContextPath()%>"; 
var portletsessionid="<%=portletSession.getId()%>";
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

	initSES();
		}); 



</script>



<div id="centerSES" style="height: 400px;margin: 0 auto">

</div>

    <div id="buttonSES">
       
    </div>
  
