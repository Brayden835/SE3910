<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
        <head>
                <title>Commerce Bank</title>
        </head>
                <body>
                        <P>  The time on the server is ${serverTime}. </P>
                        <img src="https://mms.businesswire.com/media/20190422005133/en/666666/23/2018_CB_Green_342.jpg"
                         alt="Commerce Bank" height="250" width="550">

                        <form action = "view" method = "post">
                                id : <input type = "text" name = "id"> <br>
                                password : <input type = "text" name = "password"> <br>
                                <input type = "submit" name = "send">
                        </form>
                </body>
</html>