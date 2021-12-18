<%@ page import="java.util.Properties, java.util.Set" %>
<!-- 
	@doguedogue
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Validador de variables de entorno</title>
</head>
<body>
	<b><label>Variables de Ambiente Weblogic</label></b><br>
	<% String proyecto = "Proyecto-1";%>
	<b><label><%out.println(proyecto);%></label></b><br>
	<% String prefix = "";%>
	<% String prop = prefix+"PROPERTIES"; %>
	<% String files = prefix+"FILES"; %>
	<% String logs = prefix+"LOGS"; %>
	<label>Properties</label><% String wp = System.getenv (prop); out.println(" ("+prop+"): "+wp); %><br>
	<label>Files</label><% String wf = System.getenv (files); out.println(" ("+files+"): "+wf); %><br>
	<label>Logs</label><% String wl = System.getenv (logs); out.println(" ("+logs+"): "+wl); %><br>
	<br>
	<% proyecto = "Proyecto-2";%>
	<b><label><%out.println(proyecto);%></label></b><br>
	<% prefix = "";%>
	<% String prop1 = prefix+"PROPERTIES"; %>
	<% String files1 = prefix+"FILES"; %>
	<% String logs1 = prefix+"LOGS"; %>	
	<label>Properties</label><% String psp = System.getenv (prop1); out.println(" ("+prop1+"): "+psp); %><br>
	<label>Files</label><% String psf = System.getenv (files1); out.println(" ("+files1+"): "+psf); %><br>
	<label>Logs</label><% String psl = System.getenv (logs1); out.println(" ("+logs1+"): "+psl); %><br>
	<br>
	<b><label>Propiedades de Sistema</label></b><br>
	<% 	
		Properties p = System.getProperties();
		Set <String >properties =  p.stringPropertyNames();
		for (String props : properties){
			out.println(props + ": " + System.getProperty(props) + "<br>");
		}
	%>
</body>
</html>