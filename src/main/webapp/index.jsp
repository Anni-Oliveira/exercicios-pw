<!DOCTYPE html>
<html>
<head>
<title>Imc - Cálculo do índice de massa corporal</title>
<link rel="stylesheet" href="./paper.min.css">
</head>
<body>
<div class="container">
    <form class="form-horizontal">
      <fieldset>
        <legend>Calculo de IMC</legend>

        <div class="form-group">
          <label class="col-md-4 control-label" for="textinput">Altura</label>
          <div class="col-md-6">
            <input id="textinput" name="Altura" type="text" placeholder="0,00 m" class="form-control input-md" value=""> <span class="help-block">Coloque aqui a sua altura em metros. Ex.: 1,70 </span>
          </div>
        </div>

	<div class="form-group">
          <label class="col-md-4 control-label" for="textinput">Peso</label>
          <div class="col-md-6">
            <input id="textinput" name="Peso" type="text" placeholder="00,00 kg" class="form-control input-md" value=""> <span class="help-block">Coloque aqui o seu peso em kilos. Ex.: 63 </span>
          </div>
        </div>

   <div class="dropdown">
	<label class="col-md-4 control-label" for=""></label>
          <div class="col-md-4">
  	<button class="btn btn-primary dropdown-toggle" name="Sexo" type="button" data-toggle="dropdown">Sexo
  	<span class="caret"></span></button>
  	<ul class="dropdown-menu">
    		<li><a href="#">Fem</a></li>
   		 <li><a href="#">Masc</a></li>
  	</ul><span class="help-block">O cálculo é diferenciado para homens e mulheres</span>
	</div>	
    </div>
	
        <div class="form-group">
          <label class="col-md-4 control-label" for=""></label>
          <div class="col-md-4">
            <button id="" name="" class="btn btn-primary">Calcular</button>
          </div>
        </div>

      </fieldset>
    </form>
 
	<% 
 		String pesoS = request.getParameter("Peso");
   	 	String alturaS = request.getParameter("Altura");
    	String calculoS;
    	int altura = 0;
    	int peso = 0;

		calculoS = pesoS / (alturaS*alturaS);
      
    	pesoS = (alturaS == null ? "0" : alturaS);
		pesoS = (pesoS == null ? "0" : pesoS);
      		
      try {
        altura = Integer.parseInt(alturaS);
		peso = Integer.parseInt(pesoS);
      } catch (Exception e) {
      }
      
	if (altura == 0) {
    %><div class="alert alert-danger" role="alert">Informe uma altura válida.</div><%
    }
      if (peso == 0) {
    %><div class="alert alert-danger" role="alert">Informe um peso válido.</div><%
      }
	%>
       
	</div>
</body>
</html>