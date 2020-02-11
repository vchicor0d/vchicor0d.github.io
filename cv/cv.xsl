<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
	<title>CV <xsl:value-of select="/cv/name"/></title>
	<meta lang="{/cv/@lang}"/>
	<link rel="stylesheet" type="text/css" href="cv.css"/>
      </head>
      <body>
	<h1><xsl:value-of select="/cv/name"/></h1>
	<img src="{/cv/photo}"/>
	<h3>Contacto:</h3>
	<ul>
	  <li>Dirección: <xsl:value-of select="/cv/address"/></li>
	  <li>Email: <xsl:value-of select="/cv/email"/></li>
	  <li>Teléfono: <xsl:value-of select="/cv/tlf"/></li>
	</ul>
	<hr/>
	<!-- Si hay nodos educations -->
	<xsl:if test="/cv/educations">
	  <!-- Para cada nodo educations -->
	  <xsl:for-each select="/cv/educations">
	    <h3>
	      <!-- Si la formación es type="academic" ponemos Formación Académica, si es type="complementary" ponemos Formación Complemenaria, en otro caso ponemos Otra Formación -->
	      <xsl:choose>
		<xsl:when test="@type = academic">
		  Formación Académica
		</xsl:when>
		<xsl:when test="@type = complementary">
		  Formación Complementaria
		</xsl:when>
		<xsl:otherwise>
		  Otra formación
		</xsl:otherwise>
	      </xsl:choose>
	    </h3>
	  </xsl:for-each>
	</xsl:if>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
