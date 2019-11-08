
# Table of Contents

1.  [Introducción](#org67c88cb)
    1.  [Estructura de un programa](#org2f0e11b)
2.  [Tipos de datos](#orga191812)
3.  [Operadores](#orgba0de9f)
    1.  [Asignación](#org5406bae)
    2.  [Aritméticos](#orgbe59ca6)
        1.  [Operadores unarios](#org6fd00fa)
4.  [Condicionales](#orgfc1bd01)
5.  [Bucles](#orgd1b23f2)
6.  [Métodos](#org7f69c66)
7.  [Objetos](#org0f5ba98)



<a id="org67c88cb"></a>

# Introducción

Java es un lenguage de programación orientado a objetos, se creó en 1996 y está basado en C++, es un lenguaje que se ejecuta en una máquina virtual que interpreta (la JVM, siglas de *Java Virtual Machine*) las instrucciones compiladas a bytecode (El lenguaje de la máquina virtual)


<a id="org2f0e11b"></a>

## Estructura de un programa

    //Este fichero pertecene al paquete (carpeta) curso.java.manual (curso/java/manual)
    package curso.java.manual;
    
    //Esto es una importación de la clase Scanner del paquete java.io
    import java.io.Scanner;
    
    //Esto es una clase pública que se llama HolaMundo
    public class HolaMundo {
    
        /*Este es el método main (principal), 
    es un método especial que servirá comom punto de entrada a la aplicación. 
    Este método es:
    - público (puede ser accedido desde cualquier clase)
    - estático (puede ser accedido sin necesidad de crear un objeto de la clase
    -  no devuelve nada (tipo void)
    - recibe como argumentos un array (matriz) de objetos de tipo String (cadena de texto)
    */
        public static void main (String [] args) {
    	//Este es un objeto de la clase Scanner que se llama scan
    	//Este objeto se inicializa con la palabra reservada new y
    	//recibe como argumento System.in (Entrada del sistema)
    	Scanner scan = new Scanner(System.in);
    
    	/*
    	  Esto es una llamada a un método, concretamente al método print(String)
    	  del atributo out de la clase System, este método imprime en la pantalla
    	  (consola de texto) el texto que se le pase como parámetro y continúa
    	  en la misma línea.
    	  Como parámetro se le pasa la cadena de texto (String) "¿Cómo te llamas?"
    	  Los valores de tipo String van siempre entre comillas dobles "
    	 */
    	System.out.print("¿Cómo te llamas?");
    
    	//Este es un objeto de la clase String (cadena de texto) que se llama nombre.
    	//Este objeto se inicializa automáticamente con el valor que devuleve
    	//el método readLine() (Método sin argumentos) del objeto scan.
    	String nombre = scan.readLine();
    
    	/*
    	  Esto es otra llamada a un método, en este caso al println del atributo
    	  out de la clase System, nótese la diferencia con la llamada anterior
    	  (print -- println), ese ln añadido lo que hace es saltar de línea una
    	  vez haya impreso lo que le pasemos como parámetro.
    
    	  En este caso, como parámetro se le pasa una cadena de texto (igual que antes)
    	  con el valor "Hola, " a lo que le concatenamos (sumamos) el valor de 
    	  la variable nombre
    	 */
    	System.out.println("Hola, "+nombre);
        }
    }


<a id="orga191812"></a>

# Tipos de datos

Los tipos de datos primitivos en java son los siguientes:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">tipo</th>
<th scope="col" class="org-left">descripción</th>
<th scope="col" class="org-left">clase asociada</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">byte</td>
<td class="org-left">número entero de 8 bits (-128 a 127)</td>
<td class="org-left">Byte</td>
</tr>


<tr>
<td class="org-left">short</td>
<td class="org-left">número entero de 16 bits (-32768 a 32767</td>
<td class="org-left">Short</td>
</tr>


<tr>
<td class="org-left">int</td>
<td class="org-left">número entero de 32 bits (\(-2{32}\) a \(2{32}\))</td>
<td class="org-left">Integer</td>
</tr>


<tr>
<td class="org-left">long</td>
<td class="org-left">número entero de 64 bits (\(-2{64}\) a \(2{64}\))</td>
<td class="org-left">Long</td>
</tr>


<tr>
<td class="org-left">float</td>
<td class="org-left">número decimal de 32 bits</td>
<td class="org-left">Float</td>
</tr>


<tr>
<td class="org-left">double</td>
<td class="org-left">número decimal de 64 bits</td>
<td class="org-left">Double</td>
</tr>


<tr>
<td class="org-left">boolean</td>
<td class="org-left">valor booleano o lógico (verdadero o falso)</td>
<td class="org-left">Boolean</td>
</tr>


<tr>
<td class="org-left">char</td>
<td class="org-left">caracter de texto (único)</td>
<td class="org-left">Character</td>
</tr>
</tbody>
</table>

Los tipos de datos normalmente se usan en su forma primitiva (columna tipo) y se pueden asignar directamente, pero a veces es util usar métodos de su clase asociada.


<a id="orgba0de9f"></a>

# Operadores


<a id="org5406bae"></a>

## Asignación

El operador **=** se usa para asignar valores a variables:

    int a = 0;


<a id="orgbe59ca6"></a>

## Aritméticos

En java se pueden realizar multitud de operaciones matemáticas con la misma precedencia que en la vida real, si se necesita modificar se pueden utilizar paréntesis, los operadores aritméticos son los siguientes:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Operador</th>
<th scope="col" class="org-left">Descripción</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">**+**</td>
<td class="org-left">Operador de suma</td>
</tr>


<tr>
<td class="org-left">**-**</td>
<td class="org-left">Operador de resta</td>
</tr>


<tr>
<td class="org-left">**\***</td>
<td class="org-left">Operador de multiplicación</td>
</tr>


<tr>
<td class="org-left">**/**</td>
<td class="org-left">Operador de división</td>
</tr>


<tr>
<td class="org-left">**%**</td>
<td class="org-left">Operador de resto de la división</td>
</tr>
</tbody>
</table>

El siguiente código es una pequeña demostración de los operadores mencionados:

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

Como vimos anteriormente, el operador suma **+** se puede utilizar también para concatenar texto:

    class Concatenacion {
        public static void main(String[] args){
    	String firstString = "Esto es";
    	String secondString = " una cadena de texto concatenada.";
    	String thirdString = firstString+secondString;
    	System.out.println(thirdString);
        }
    }


<a id="org6fd00fa"></a>

### Operadores unarios

En java hay un tipo de operadores aritméticos que sólo se utilizan en un operando, son los operadores unarios:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Operador</th>
<th scope="col" class="org-left">Descripción</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">+</td>
<td class="org-left">Indica un valor positivo</td>
</tr>


<tr>
<td class="org-left">-</td>
<td class="org-left">Indica un valor negativo</td>
</tr>


<tr>
<td class="org-left">++</td>
<td class="org-left">Incrementa en 1 el valor</td>
</tr>


<tr>
<td class="org-left">--</td>
<td class="org-left">Decrementa en 1 el valor</td>
</tr>


<tr>
<td class="org-left">!</td>
<td class="org-left">Invierte el valor de un booleano</td>
</tr>
</tbody>
</table>

    class Unarios {
    
        public static void main(String[] args) {
    
    	int resultado = +1;
    	// El resultado es 1
    	System.out.println(resultado);
    
    	resultado--;
    	// El resultado es 0
    	System.out.println(resultado);
    
    	resultado++;
    	// El resultado es 1
    	System.out.println(resultado);
    
    	resultado = -resultado;
    	// El resultado es -1
    	System.out.println(resultado);
    
    	boolean exito = false;
    	// false
    	System.out.println(exito);
    	// true
    	System.out.println(!exito);
        }
    }

Los operadores de incremento y decremento (**++** y **--**) actuan de manera diferente dependiendo de si se ponen delante o detrás del valor a modificar, si se usan de manera prefija `++variable` el valor se incrementa primero y la variable se usa después (ya incrementada), si se usa de manera postfija `variable++` se utilizará el valor de la variable sin incrementar y luego se incrementará:

    class PrePost {
        public static void main(String[] args){
    	int i = 3;
    	i++;
    	// imprime 4
    	System.out.println(i);
    	++i;			   
    	// imprime 5
    	System.out.println(i);
    	// imprime 6
    	System.out.println(++i);
    	// imprime 6
    	System.out.println(i++);
    	// imprime 7
    	System.out.println(i);
        }
    }


<a id="orgfc1bd01"></a>

# Condicionales


<a id="orgd1b23f2"></a>

# Bucles


<a id="org7f69c66"></a>

# Métodos


<a id="org0f5ba98"></a>

# Objetos

