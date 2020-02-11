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
	<!-- Si hay nodo summary -->
	<xsl:if test="/cv/summary">
	  <p><xsl:value-of select="/cv/summary"/></p>
	  <hr/>
	</xsl:if>
	<!-- Si hay nodos educations -->
	<xsl:if test="/cv/educations">
	  <!-- Para cada nodo educations -->
	  <xsl:for-each select="/cv/educations">
	    <h3>
	      <!-- Si la formación es type="academic" ponemos Formación Académica, si es type="complementary" ponemos Formación Complemenaria, en otro caso ponemos Otra Formación -->
	      <xsl:choose>
		<xsl:when test="@type = academic">
		  Formación Académica
		  <xsl:value-of select="@type"/>
		</xsl:when>
		<xsl:when test="@type =complementary">
		  Formación Complementaria
		</xsl:when>
		<xsl:otherwise>
		  Otra formación
		</xsl:otherwise>
	      </xsl:choose>
	    </h3>
	    <!-- Para cada nodo education -->
	    <xsl:for-each select="education">
	      <h4>De <xsl:value-of select="@start"/> a <xsl:value-of select="@end"/></h4>
	      <h4><xsl:value-of select="course"/> <i>(<xsl:value-of select="institution"/>)</i></h4>
	    </xsl:for-each>
	  </xsl:for-each>
	</xsl:if>
	<!-- Si hay nodos experiences -->
	<xsl:if test="/cv/experiences">
	  <h3>Experiencia profesional</h3>
	  <!-- Para cada nodo experience -->
	  <xsl:for-each select="/cv/experiences/experience">
	    <h4><xsl:value-of select="company"/></h4>
	    <!-- Para cada nodo projects -->
	    <xsl:for-each select ="projects/project">
	      <h5><xsl:value-of select="@title"/> - <xsl:value-of select="@workplace"/>, de <xsl:value-of select="@start"/> a <xsl:value-of select="@end"/></h5>
	      <p><xsl:value-of select="description"/></p>
	    </xsl:for-each>
	  </xsl:for-each>
	</xsl:if>
	<!-- Si existe el nodo languages -->
	<xsl:if test="/cv/languages">
	  <!-- Para cada nodo language -->
	  <xsl:for-each select="/cv/languages/language">
	    <p><em><xsl:value-of select="."/></em> - <xsl:value-of select="@level"/></p>
	  </xsl:for-each>
	</xsl:if>
	<!-- Si existe el nodo skills -->
	<xsl:if test="/cv/skills">
	  <ul>
	    <!-- Para cada nodo skill -->
	    <xsl:for-each select="/cv/skills/skill">
	      <li><xsl:value-of select="."/></li>
	    </xsl:for-each>
	  </ul>
	</xsl:if>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
