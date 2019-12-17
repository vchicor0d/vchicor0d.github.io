class Aritmeticos {

      public static void main (String[] args) {

	  // Variable de tipo int que tendrá como valor el resultado de 1 + 2
	  int resultado = 1 + 2;
	  // El valor de resultado es 3
	  System.out.println("1 + 2 = " + resultado);
	  int resultado_original = resultado;

	  // Los operadores se pueden usar entre variables (numéricas) y números
	  // en este caso se resta 1 al valor de resultado primero y se asigna a
	  // la variable resultado después
	  resultado = resultado - 1;
	  // El valor de resultado es 2
	  System.out.println(resultado_original + " - 1 = " + resultado);
	  resultado_original = resultado;

	  // Multiplicamos el resultado por 2 y lo volvemos a asignar a la variable
	  //resultado
	  resultado = resultado * 2;
	  // El valor de resultado es 4
	  System.out.println(resultado_original + " * 2 = " + resultado);
	  resultado_original = resultado;

	  // Dividimos el resultado entre 2 y lo asignamos
	  resultado = resultado / 2;
	  // El valor de resultado es 2
	  System.out.println(resultado_original + " / 2 = " + resultado);
	  resultado_original = resultado;

	  resultado = resultado + 8;
	  // El valor de resultado es 10
	  System.out.println(resultado_original + " + 8 = " + resultado);
	  resultado_original = resultado;

	  // Dividimos el resultado entre 7 y nos quedamos con el resto, luego lo
	  // asignamos
	  resultado = resultado % 7;
	  // El valor de resultado es 3
	  System.out.println(resultado_original + " % 7 = " + resultado);
      }
  }