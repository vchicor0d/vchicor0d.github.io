# Modo de empleo

La plantilla está dividida en 3 partes, cv.xml, que contiene los datos; cv.xsl, que contiene el formato y cv.css que contiene el estilo.
  
Normalmente sólo sería necesario modificar el .xml

Para visualizar el CV en un navegador offline necesitaremos activar algunas características

* Falkon: Funciona sin problemas.
* Firefox: Entrar en about:config y poner la propiedad security.fileuri.strict_origin_policy a false
* Chrome/Chromium/Vivaldi/Opera/etc.: Es necesario usar un servidor web

Una vez visualizado, podemos imprimirlo como pdf para tener una copia que enviar.

## cv.xml

* En la línea <cv encontramos el color de acentuación, este color puede ser uno de los siguientes:

    - amber, aqua, blue, light-blue, brown, cyan, blue-grey, green, light-green, indigo, khaki, lime, orange, deep-orange, pink, purple, deep-purple, red, sand, teal, yellow, white, black, grey, light-grey, dark-grey, pale-red, pale-green, pale-yellow, pale-blue
    - Puedes ver una representación gráfica de los mismos [aquí](https://www.w3schools.com/w3css/w3css_colors.asp)

* El campo <photo> contiene la ruta a la foto que se usará, puede ser una dirección relativa a el fichero xml o una dirección de Internet.

* Los campos name, address, email, phone y description se refieren a tus datos personales.

* En el campo summary puede poner un pequeño resumen, dentro de este campo puedes separar párrafos encerrándolos en <p></p> **como mínimo debe haber un párrafo**.

* El campo educations se puede repetir varias veces y admite un tipo (academic, complementary y other), dentro de este puedes poner tantos nodos education como sean necesarios, este nodo tiene una fecha de inicio (start) y o una fecha de final (end) o current=true si actualmente se está estudiando.

    - El campo course es el título del curso
    - El campo institution es la institución donde se cursó.


* El campo experiences indica las experiencias profesionales que se tienen, engloba tantos campos experience como sean necesarios.

* Cada campo experience tiene los siguientes elementos:
    - company: La empresa dónde tiene lugar la experiencia laboral
    - projects: nodo que engloba todos los proyectos en esa experiencia
        + project: Proyecto, puede haber tantos como sea necesario, como mínimo tiene que haber uno, tiene un título, un lugar de trabajo, una fecha de inicio y o una fecha de fin o el campo current="true" si se está en el.
	+ description: La descripción de cada proyecto, dentro se pueden separar párrafos englobándolos en <p></p>, como mínimo debe haber un párrafo.

* Languages: Los idiomas que se conocen:
    - language: una entrada de idioma, contiene un parámetro level para indicar el nivel y dentro se escribe el idioma.

* skills: Habilidades extra. Puede ser simple o contener un título, si tiene el atributo type="bars" las habilidades se mostrarán como barras de porcentaje
    - skill: Una habilidad, si se usa el tipo de barras de porcentaje se puede poner el atributo percent="50" para indicar una competencia del 50%.