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
		public String mensagemErro(){
			String msg = "Você ERROU a  figura geométrica! Deseja tentar novamente?";
			return msg;
		}
	%>
	
	<%if(request.getParameter("nivel") != null && request.getParameter("fase") != null && request.getParameter("resposta") != null){
		
			if(request.getParameter("nivel").equals("1")){
				if(request.getParameter("fase").equals("1")){
					if(request.getParameter("resposta").equals("qv")){%>
						<br/>
						<br/>
						<a href="jogoFiguras.jsp?nivel=1&fase=2" class = "botao"><b>Próxima fase</b></a>
					<%}
					else{%>
						<h2><%= mensagemErro()%></h2>	
						<a href="jogoFiguras.jsp?nivel=1&fase=1" class = "botao"><b>Tentar Novamente</b></a>
						<a href="index.jsp?nivel=1" class = "botao"><b>Finalizar jogo</b></a>
					<%}
				}	
				else if(request.getParameter("fase").equals("2")){
					if(request.getParameter("resposta").equals("ta")){%>
						<br/>
						<br/>
						<a href="jogoFiguras.jsp?nivel=1&fase=3" class = "botao"><b>Próxima fase</b></a>
					<%}
					else{%>
						<h2><%= mensagemErro()%></h2>	
						<a href="jogoFiguras.jsp?nivel=1&fase=2" class = "botao"><b>Tentar Novamente</b></a>
						<a href="index.jsp?nivel=1" class = "botao"><b>Finalizar jogo</b></a>
					<%}
				}
				else if(request.getParameter("fase").equals("3")){
						if(request.getParameter("resposta").equals("cb")){%>
							<h2>Parabéns, você acertou todas as figuras geométricas desse Nível! </h2>
							<a href="jogoFiguras.jsp?nivel=2&fase=1" class = "botao"><b> Próximo Nível</b></a>
						<%}
						else{%>
							<h2><%= mensagemErro()%></h2>	
							<a href="jogoFiguras.jsp?nivel=1&fase=3" class = "botao"><b>Tentar Novamente</b></a>
							<a href="index.jsp?nivel=1" class = "botao"><b>Finalizar jogo</b></a>
						<%}
				}
			}
			else if(request.getParameter("nivel").equals("2")){
					if(request.getParameter("fase").equals("1")){
						if(request.getParameter("resposta").equals("cv")){%>
							<br/>
							<br/>
							<a href="jogoFiguras.jsp?nivel=2&fase=2" class = "botao"><b>Próxima fase</b></a>
						<%}
						else{%>
							<h2><%= mensagemErro()%></h2>	
							<a href="jogoFiguras.jsp?nivel=2&fase=1" class = "botao"><b>Tentar Novamente</b></a>
							<a href="index.jsp?nivel=1" class = "botao"><b>Finalizar jogo</b></a>
						<%}
					}
					else if(request.getParameter("fase").equals("2")){
						if(request.getParameter("resposta").equals("rr")){%>
							<br/>
							<br/>
							<a href="jogoFiguras.jsp?nivel=2&fase=3" class = "botao"><b>Próxima fase</b></a>
						<%}
						else{%>
							<h2><%= mensagemErro()%></h2>	
							<a href="jogoFiguras.jsp?nivel=2&fase=2" class = "botao"><b>Tentar Novamente</b></a>
							<a href="index.jsp?nivel=1" class = "botao"><b>Finalizar jogo</b></a>
						<%}
					}
					else if(request.getParameter("fase").equals("3")){
						if(request.getParameter("resposta").equals("tl")){%>
							<h2>Parabéns, você acertou todas as figuras geométricas desse Nível! </h2>
							<a href="jogoFiguras.jsp?nivel=3&fase=1" class = "botao"><b> Próximo Nível</b></a></a>
						<%}
						else{%>
							<h2><%= mensagemErro()%></h2>	
							<a href="jogoFiguras.jsp?nivel=2&fase=3" class = "botao"><b>Tentar Novamente</b></a>
							<a href="index.jsp?nivel=1" class = "botao"><b>Finalizar jogo</b></a>
						<%}
					}		
			}	
			else if(request.getParameter("nivel").equals("3")){
				if(request.getParameter("fase").equals("1")){
					if(request.getParameter("resposta").equals("tb")){%>
						<br/>
						<br/>
						<a href="jogoFiguras.jsp?nivel=3&fase=2" class = "botao"><b>Próxima fase</b></a>
					<%}
					else{%>
						<h2><%= mensagemErro()%></h2>	
						<a href="jogoFiguras.jsp?nivel=3&fase=1" class = "botao"><b>Tentar Novamente</b></a>
					<%}
				}
				else if(request.getParameter("fase").equals("2")){
					if(request.getParameter("resposta").equals("ql")){%>
						<br/>
						<br/>
						<a href="jogoFiguras.jsp?nivel=3&fase=3" class = "botao"><b>Próxima fase</b></a>
					<%}
					else{%>
						<h2><%= mensagemErro()%></h2>	
						<a href="jogoFiguras.jsp?nivel=3&fase=2" class = "botao"><b>Tentar Novamente</b></a>
						<a href="index.jsp?nivel=1" class = "botao"><b>Finalizar jogo</b></a>
					<%}
				}
				else if(request.getParameter("fase").equals("3")){
					if(request.getParameter("resposta").equals("cc")){%>
					<h2>Parabéns, você ganhou o jogo!! </h2>
					<a href="index.jsp?nivel=1" class = "botao"><b>Jogar novamente</b></a>
				<%}
				else{%>
					<h2><%= mensagemErro()%></h2>	
					<a href="jogoFiguras.jsp?nivel=3&fase=3" class = "botao"><b>Tentar Novamente</b></a>
					<a href="index.jsp?nivel=1" class = "botao"><b>Finalizar jogo</b></a>
				<%}
			}
			}	
	}%>
	
	<footer>
	</footer>
</body>
</html>