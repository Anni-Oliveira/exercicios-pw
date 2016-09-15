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
            <input id="textinput" name="Peso" type="text" placeholder="00 kg" class="form-control input-md" value=""> <span class="help-block">Coloque aqui o seu peso em kilos. Ex.: 63 </span>
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
		double sexo = Double.parseDouble(sexoS);
		double imc = peso / (altura * altura);
		alturaS = (alturaS == null ? "0" : alturaS);
	   
		if(sexo == 1){
			
			if(imc <= 19.1){
				out.print ("<div class='alert alert-danger' role='alert'>Abaixo do peso!</div>");
			}else if(imc > 19.1 && imc <= 25.8){
				out.print ("<div class='alert alert-success' role='alert'>No peso ideal!</div>");
			}else if(imc > 25.8 && imc <= 27.3){
				out.print ("<div class='alert alert-info' role='alert'>Marginalmente acima do peso!</div>");
			}else if(imc > 27.3 && imc <= 32.3){
				out.print ("<div class='alert alert-warning' role='alert'>Acima do peso!</div>");
			}else if(imc > 32.3){
				out.print ("<div class='alert alert-danger' role='alert'>Obeso!</div>");
			}
		}

		if(sexo == 2){
			
			if(imc <= 20.7){
				out.print ("<div class='alert alert-danger' role='alert'>Abaixo do peso!</div>");
			}else if(imc > 20.7 && imc <= 26.4){
				out.print ("<div class='alert alert-success' role='alert'>No peso ideal!</div>");
			}else if(imc > 26.4 && imc <= 27.8){
				out.print ("<div class='alert alert-info' role='alert'>Marginalmente acima do peso!</div>");
			}else if(imc > 27.8 && imc <= 31.1){
				out.print ("<div class='alert alert-warning' role='alert'>Acima do peso!</div>");
			}else if(imc > 31.1){
				out.print ("<div class='alert alert-danger' role='alert'>Obeso!</div>");
			}
		}

      } catch (Exception e) {
		
      }
		
		if(alturaS != null && pesoS != null){
			out.println("<div class='alert alert-info'>Preencha os campos corretamente!</div>");
		}
			

%>
</div>
</body>
</html>