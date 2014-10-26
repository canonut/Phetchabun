<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.io.*, java.sql.*" errorPage="" %>
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/xml; charset=UTF-8");
String fileName = "news.txt";
InputStream ins = new FileInputStream(fileName);
try
{
if(ins == null)
{
response.setStatus(response.SC_NOT_FOUND);
}
else
{
BufferedReader br = new BufferedReader((new InputStreamReader(ins,"UTF-8")));
String data;
while((data = br.readLine())!= null)
{
	out.print(data);
}
} 
}
catch(IOException e)
{
out.println(e.getMessage());
}
%>