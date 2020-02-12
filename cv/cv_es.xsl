<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:output method="html" encoding="UTF-8" indent="yes" />
  <xsl:preserve-space elements="*"/>
  <xsl:template match="/">
    <xsl:variable name="color" select="/cv/@color"/>
    
    <html>
      <head>
	<title>CV <xsl:value-of select="/cv/name"/></title>
	<meta lang="{/cv/@lang}"/>
	<link rel="stylesheet" type="text/css" href="cv.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
      </head>
      
      <body class="w3-card-2 w3-white">
	
	<header class="w3-display-container {$color} w3-card-2">
	  <h1 class="w3-display-left"><xsl:value-of select="/cv/name"/></h1>
	  <figure class="w3-display-middle">
	    <img src="{/cv/photo}"/>
	  </figure>
	  <div id="contacto" class="w3-display-right">
	    <ul>
	      <li><i class="fa fa-home"/>: <xsl:value-of select="/cv/address"/></li>
	      <li><i class="fa fa-envelope-o"/>: <xsl:value-of select="/cv/email"/></li>
	      <li><i class="fa fa-mobile-phone"/>: <xsl:value-of select="/cv/tlf"/></li>
	    </ul>
	  </div>
	</header>
	
	<!-- Si hay nodo summary -->
	<xsl:if test="/cv/summary">
	  <section id="summary" class="w3-panel w3-justify">
	    <xsl:for-each select="/cv/summary/p">
	      <p><xsl:value-of select="."/></p>
	    </xsl:for-each>
	  </section>
	</xsl:if>
	
	<!-- Si hay nodos educations -->
	<xsl:if test="/cv/educations">
	  <!-- Para cada nodo educations -->
	  <xsl:for-each select="/cv/educations">
	    <section id="{@type}-education" class="educations w3-panel w3-card {$color} w3-margin">
	      <h3>
		<!-- Si la formación es type="academic" ponemos Formación Académica, si es type="complementary" ponemos Formación Complemenaria, en otro caso ponemos Otra Formación -->
		<xsl:choose>
		  <xsl:when test="@type='academic'">
		    Formación Académica
		  </xsl:when>
		  <xsl:when test="@type='complementary'">
		    Formación Complementaria
		  </xsl:when>
		  <xsl:otherwise>
		    Otra formación
		  </xsl:otherwise>
		</xsl:choose>
	      </h3>
	      
	      <!-- Para cada nodo education -->
	      <xsl:for-each select="education">
		<section class="education w3-panel w3-sand">
		  <h5>De <xsl:value-of select="@start"/> a <xsl:value-of select="@end"/></h5>
		  <p><xsl:value-of select="course"/> <i>(<xsl:value-of select="institution"/>)</i></p>
		</section>
	      </xsl:for-each>
	    </section>
	  </xsl:for-each>
	</xsl:if>
	
	<!-- Si hay nodos experiences -->
	<xsl:if test="/cv/experiences">
	  <section id="experiences" class="w3-panel w3-card {$color} w3-margin">
	    <h3>Experiencia profesional</h3>
	    <!-- Para cada nodo experience -->
	    <xsl:for-each select="/cv/experiences/experience">
	      <section class="experience w3-panel w3-sand">
		<h4><xsl:value-of select="company"/></h4>
		<!-- Para cada nodo projects -->
		<xsl:for-each select ="projects/project">
		  <h5><xsl:value-of select="@title"/> - <xsl:value-of select="@workplace"/>, de <xsl:value-of select="@start"/> a <xsl:value-of select="@end"/></h5>
		  <xsl:for-each select="description/p">
		    <p><xsl:value-of select="."/></p>
		  </xsl:for-each>
		</xsl:for-each>
	      </section>
	    </xsl:for-each>
	  </section>
	</xsl:if>
	
	<!-- Si existe el nodo languages -->
	<xsl:if test="/cv/languages">
	  <section id="languages" class="w3-panel w3-margin {$color}">
	    <h3>Idiomas</h3>
	    <!-- Para cada nodo language -->
	    <xsl:for-each select="/cv/languages/language">
	      <p><strong><xsl:value-of select="."/></strong> - <xsl:value-of select="@level"/></p>
	    </xsl:for-each>
	  </section>
	</xsl:if>
	
	<!-- Si existe el nodo skills -->
	<xsl:if test="/cv/skills">
	  <section id="skills" class="w3-panel w3-margin {$color}">
	    <h3>Otras habilidades</h3>
	    <ul>
	      <!-- Para cada nodo skill -->
	      <xsl:for-each select="/cv/skills/skill">
		<li><xsl:value-of select="."/></li>
	      </xsl:for-each>
	    </ul>
	  </section>
	</xsl:if>

	<footer class="w3-panel w3-card {$color}"/>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
