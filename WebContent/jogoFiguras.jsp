<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>FiGem</title>
 	<link rel="stylesheet" type="text/css" href="css/estilo.css">
</head>
<body>
	<header>
		 <img src="./img/figuras.png" id = "imgpag" > 
		<h1>FiGem<h1>
	</header>
	
	<%!
		String nivel = "";
		String fase = "";
		String nomefigura = "";	
		String resposta = "";
	%>
	<%
		nivel = request.getParameter("nivel");
		fase = request.getParameter("fase");
	%>
	
	<i>Vocês está no Nível <%= nivel%> e Fase <%= fase%>!</i>
	
	<h3>Selecione a figura solicitada:</h3>
	
	<% //Nome da figura que o jogo solicita
	
		if(nivel.equals("1")){
			if(fase.equals("1")){
				nomefigura = "Quadrado";
			}
			else if(fase.equals("2")){
				nomefigura = "Triângulo";
			}
			else if(fase.equals("3")){
				nomefigura = "Círculo";
			}	
		}
		else if(nivel.equals("2")){
			if(fase.equals("1")){
				nomefigura =" Círculo Verde";
			}
			else if(fase.equals("2")){
				nomefigura = "Retângulo Rosa";
			}
			else if(fase.equals("3")){
				nomefigura = "Triângulo Laranja";
			}	
		}
		else if(nivel.equals("3")){
			if(fase.equals("1")){
				nomefigura = "Triangulo Bege";
			}
			else if(fase.equals("2")){
				nomefigura = "Quadrado Lilás";
			}
			else if(fase.equals("3")){
				nomefigura = "Círculo Cinza";
			}	
		}

	if(nivel != null && fase != null){
		if(nivel.equals("1")){
			if(fase.equals("1")){%>
				<h2 id = "fig"><%=nomefigura + "!"%> </h2> 
				<a href="validacao.jsp?resposta=qv&nivel=1&fase=1"><img src="./img/quadradoVerde.jpg" ></a>
				<a href="validacao.jsp?resposta=tl&nivel=1&fase=1"><img src="./img/trianguloLaranja.png"></a>
				<a href="validacao.jsp?resposta=cl&nivel=1&fase=1"><img src="./img/circuloLilas.png"></a>		
			<%} 
			else if(fase.equals("2")){%>
				<h2 id = "fig"><%=nomefigura + "!"%> </h2> 
				<a href="validacao.jsp?resposta=qc&nivel=1&fase=2"><img src="./img/quadradoCinza.jpg"></a>
				<a href="validacao.jsp?resposta=cv&nivel=1&fase=2"><img src="./img/circuloVerde.png"></a>
				<a href="validacao.jsp?resposta=ta&nivel=1&fase=2"><img src="./img/trianguloAzul.png"></a>		
		    <%}
			else if(fase.equals("3")){ %>
				<h2 id = "fig"><%=nomefigura + "!"%> </h2> 	
				<a href="validacao.jsp?resposta=ta&nivel=1&fase=3"><img src="./img/trianguloAzul.png"></a>
				<a href="validacao.jsp?resposta=qc&nivel=1&fase=3"><img src="./img/quadradoCinza.jpg" ></a>
				<a href="validacao.jsp?resposta=cb&nivel=1&fase=3"><img src="./img/circuloBege.png"> </a>	
			<%}
		}
		else if(nivel.equals("2")){
			if(fase.equals("1")){%>
				<h2 id = "fig" class ="azulq" ><%=nomefigura + "!"%> </h2> 
				<a href="validacao.jsp?resposta=ca&nivel=2&fase=1"><img src="./img/circuloAzul.png" ></a>
				<a href="validacao.jsp?resposta=rc&nivel=2&fase=1"><img src="./img/RetanguloCinza.jpg" class = "retangulo"></a>
				<a href="validacao.jsp?resposta=cv&nivel=2&fase=1"><img src="./img/circuloVerde.png"></a>		
			<%} 
			else if(fase.equals("2")){%>
			<h2 id = "fig" class ="lilas" ><%=nomefigura + "!"%> </h2> 
				<a href="validacao.jsp?resposta=cl&nivel=2&fase=2"><img src="./img/circuloLilas.png"></a>
				<a href="validacao.jsp?resposta=rr&nivel=2&fase=2"><img src="./img/retanguloRosa.jpg"  class = "retangulo"></a>
				<a href="validacao.jsp?resposta=tl&nivel=2&fase=2"><img src="./img/trianguloLaranja.png"></a>		
		    <%}
			else if(fase.equals("3")){ %>	
				<h2 id = "fig" class ="verde" ><%=nomefigura + "!"%> </h2> 
				<a href="validacao.jsp?resposta=qv&nivel=2&fase=3"><img src="./img/quadradoVerde.jpg"></a>
				<a href="validacao.jsp?resposta=tl&nivel=2&fase=3"><img src="./img/trianguloLaranja.png" ></a>
				<a href="validacao.jsp?resposta=cl&nivel=2&fase=3"><img src="./img/circuloLilas.png"> </a>	
			<%}
		}
		else if(nivel.equals("3")){
			if(fase.equals("1")){%>
				<h2 id = "fig" class ="azult" ><%=nomefigura + "!"%> </h2> 
				<a href="validacao.jsp?resposta=ta&nivel=3&fase=1"><img src="./img/trianguloAzul.png" ></a>
				<a href="validacao.jsp?resposta=cv&nivel=3&fase=1"><img src="./img/circuloVerde.png"></a>
				<a href="validacao.jsp?resposta=tb&nivel=3&fase=1"><img src="./img/trianguloBege.png" ></a>
				<a href="validacao.jsp?resposta=qa&nivel=3&fase=1"><img src="./img/quadradoAzul.jpg"></a>	
			
				
			<%} 
			else if(fase.equals("2")){%>
				<h2 id = "fig" class ="verde" ><%=nomefigura + "!"%> </h2> 
				<a href="validacao.jsp?resposta=qv&nivel=3&fase=2"><img src="./img/quadradoVerde.jpg"></a>
				<a href="validacao.jsp?resposta=tr&nivel=3&fase=2"><img src="./img/trianguloRosa.png"></a>
				<a href="validacao.jsp?resposta=ql&nivel=3&fase=2"><img src="./img/quadradoLilas.jpg"></a>
				<a href="validacao.jsp?resposta=tv&nivel=3&fase=2"><img src="./img/trianguloVerde.png"></a>		
		    <%}
			else if(fase.equals("3")){ %>	
				<h2 id = "fig" class ="azult" ><%=nomefigura + "!"%> </h2>  
				<a href="validacao.jsp?resposta=cc&nivel=3&fase=3"><img src="./img/circuloCinza.png"> </a>	
				<a href="validacao.jsp?resposta=rr&nivel=3&fase=3"><img src="./img/retanguloRosa.jpg"  class = "retangulo"></a>
				<a href="validacao.jsp?resposta=cl&nivel=3&fase=3"><img src="./img/circuloLilas.png"></a>
				<a href="validacao.jsp?resposta=tb&nivel=3&fase=3"><img src="./img/trianguloBege.png"></a>
				
				
			<%}
			
		}
	} 
	%>
		
	<footer>
	</footer>
</body>
</html>