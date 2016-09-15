<!DOCTYPE html>
<html>
<head>
<%@ include file="header.html" %>
<title>Imc - Cálculo do índice de massa corporal</title>
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

   <div class="form-group" name="sexo">
           <label class="col-md-4 control-label" for="Sexo">Sexo</label>
           <div class="col-md-4">
           <div class="radio">
             <label for="Sexo-0">
               <input type="radio" name="Sexo" id="Sexo-0" value="1" checked="checked">
               Fem
             </label>
                 </div>
           <div class="radio">
             <label for="Sexo-1">
               <input type="radio" name="Sexo" id="Sexo-1" value="2">
               Masc
             </label>
                 </div><span class="help-block">O cálculo é diferenciado para mulheres e homens </span>
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
    	String sexoS = request.getParameter("Sexo");

      		
      try {

		double altura = Double.parseDouble(alturaS);
		double peso = Double.parseDouble(pesoS);
		double imc = peso / (altura * altura);
		alturaS = (alturaS == null ? "0" : alturaS);

		if (altura == 0) {
    		%><div class="alert alert-danger" role="alert">Informe uma altura válida.</div><%
    	}

		pesoS = (pesoS == null ? "0" : pesoS);

      	if (peso == 0) {
   			 %><div class="alert alert-danger" role="alert">Informe um peso válido.</div><%
      	}

		if(sexoS == "1"){
			
			if(imc <= 19.1){
				%><div class="alert alert-danger" role="alert">Abaixo do peso!</div><%
			}else if(imc > 19.1 && imc <= 25.8){
				%><div class="alert alert-danger" role="alert">No peso normal.</div><%
			}else if(imc > 25.8 && imc <= 27.3){
				%><div class="alert alert-danger" role="alert">Marginalmente acima do peso.</div><%
			}else if(imc > 27.3 && imc <= 32.3){
				%><div class="alert alert-danger" role="alert">Acima do peso ideal!!</div><%
			}else if(imc > 32.3){
				%><div class="alert alert-danger" role="alert">Obeso!!!!!!</div><%
			}
		}

		if(sexoS == "2"){
			
			if(imc <= 20.7){
				%><div class="alert alert-danger" role="alert">Abaixo do peso!</div><%
			}else if(imc > 20.7 && imc <= 26.4){
				%><div class="alert alert-danger" role="alert">No peso normal.</div><%
			}else if(imc > 26.4 && imc <= 27.8){
				%><div class="alert alert-danger" role="alert">Marginalmente acima do peso.</div><%
			}else if(imc > 27.8 && imc <= 31.1){
				%><div class="alert alert-danger" role="alert">Acima do peso ideal!!</div><%
			}else if(imc > 31.1){
				%><div class="alert alert-danger" role="alert">Obeso!!!!!!</div><%
			}
		}

      } catch (Exception e) {
      }

			

%>
</div>
</body>
</html>