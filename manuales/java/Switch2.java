class Switch2 {
    public static void main (String [] args) {
      int val = 2;
      //Inicializamos un contador para saber por cuantos cases pasamos;
      int contador = 0;
      switch(val) {
      case 0:
	contador++;
      case 1:
	contador++;
      case 2:
	contador++;
      case 3:
	contador++;
      case 4:
	contador++;
      case 5:
	contador++;
      case 6:
	contador++;
      case 7:
	contador++;
      case 8:
	contador++;
      case 9:
	contador++;
      case 10:
	contador++;
	System.out.println("He pasado por "+contador+" cases. El número es menor o igual que 10");
      }
    }
  }