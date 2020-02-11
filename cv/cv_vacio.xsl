<?xml version="1.0" encoding="UTF-8"?>

<!-- HAY QUE SUSTITUIR CADA PALABRA QUE EMPIECE POR UNA ALMOHADILLA (#) POR SU CORRESPONDIENTE VALOR ACCEDIENDO CON XPATH Y LA ETIQUETA CORRESPONDIENTE DE XSL.

CADA BLOQUE DE CÓDIGO ANOTADO CON <xsl:...> </xsl:...> ESTÁ COMENTADO PARA IDENTIFICAR QUE ETIQUETA DE XSL HABRÍA QUE PONER.

ÁNIMO. LOVIU -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
	<title>CV #NAME</title>
	<meta lang="{/cv/@lang}"/>
	<link rel="stylesheet" type="text/css" href="cv.css"/>
      </head>
      <body>
	<h1>#NAME</h1>
	<img src="{/cv/photo}"/>
	<h3>Contacto:</h3>
	<ul>
	  <li>Dirección: #ADDRESS</li>
	  <li>Email: #EMAIL</li>
	  <li>Teléfono: #TLF</li>
	</ul>
	<hr/>
	<!-- Si hay nodo summary -->
	<xsl:...>
	  <p>#SUMMARY</p>
	  <hr/>
	</xsl:...>
	<!-- Si hay nodos educations -->
	<xsl:...>
	  <!-- Para cada nodo educations -->
	  <xsl:...>
	    <h3>
	      <!-- Si la formación es type="academic" ponemos Formación Académica, si es type="complementary" ponemos Formación Complemenaria, en otro caso ponemos Otra Formación -->
	      <xsl:...>
		<xsl:...>
		  Formación Académica
		</xsl:...>
		<xsl:...>
		  Formación Complementaria
		</xsl:...>
		<xsl:...>
		  Otra formación
		</xsl:...>
	      </xsl:...>
	    </h3>
	    <!-- Para cada nodo education -->
	    <xsl:...>
	      <h4>De #START a #END</h4>
	      <h4>#COURSE <i>(#INSTITUTION)</i></h4>
	    </xsl:...>
	  </xsl:...>
	</xsl:...>
	<!-- Si hay nodos experiences -->
	<xsl:...>
	  <h3>Experiencia profesional</h3>
	  <!-- Para cada nodo experience -->
	  <xsl:...>
	    <h4>#COMPANY</h4>
	    <!-- Para cada nodo projects -->
	    <xsl:...>
	      <h5>#TITLE - #WORKPLACE, de #START a #END</h5>
	      <p>#DESCRIPTION</p>
	    </xsl:...>
	  </xsl:...>
	</xsl:...>
	<!-- Si existe el nodo languages -->
	<xsl:...>
	  <!-- Para cada nodo language -->
	  <xsl:...>
	    <p><em>#LANGUAGE</em> - #LEVEL</p>
	  </xsl:...>
	</xsl:...>
	<!-- Si existe el nodo skills -->
	<xsl:...>
	  <ul>
	    <!-- Para cada nodo skill -->
	    <xsl:...>
	      <li>#SKILL</li>
	    </xsl:...>
	  </ul>
	</xsl:...>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
