<%-- 
    Document   : index
    Created on : 23/06/2014, 06:15:28 PM
    Author     : A-n-Y
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BIENVENIDO</title>
        <script src="js/libs/jquery/jquery.js"></script>
        <link rel="stylesheet" href="js/libs/twitter-bootstrap/css/bootstrap.css">
        <script>
            $(document).ready(function(){
               // alert("me la pelas")
            $("#mensaje").click(function(){
               // $("#respuesta").html("Ya me apachurraste!! ahora me cumples");
           $.ajax({
               /* 
                * los sig son atributos de ajax con jquery
                * siempre separados por comas
                */
               url:'http://localhost:8095/mavenspring/servicios/hola2/mensaje',
               type: 'GET',
       data:{
           
       },
       success: function (data){
           $("#respuesta").html(data);
       },
       failure: function(data){
           
       }
           });/*cierra ajax */
    
    });/*cierra click*/
    
            });
        </script>
    </head>
    <body>
        <h1 id="mensaje" class="btn btn-lg btn-primary"> Apachurrame!!!</h1>
    
        <div id="respuesta">Vamonos...</div>
    </body>
</html>

