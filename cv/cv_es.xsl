<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:preserve-space elements="*"/>
  <xsl:template match="/">
    <xsl:variable name="color" select="/cv/@color"/>
    <html>
      <head>
        <title>CV <xsl:value-of select="/cv/name"/></title>
        <meta charset="UTF-8"/>
        <meta lang="{/cv/@lang}"/>
<!--        <meta name="viewport" content="width=device-width, initial-scale=1"/>-->
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <style>
	  html,body,h1,h2,h3,h4,h5,h6 {
	    font-family: "Roboto", sans-serif
	  }

	  
.w3-amber-trans,.w3-hover-amber-trans:hover{color:#000!important;background-color:#ffc10770!important}
.w3-aqua-trans,.w3-hover-aqua-trans:hover{color:#000!important;background-color:#00ffff70!important}
.w3-blue-trans,.w3-hover-blue-trans:hover{color:#fff!important;background-color:#2196F370!important}
.w3-light-blue-trans,.w3-hover-light-blue-trans:hover{color:#000!important;background-color:#87CEEB70!important}
.w3-brown-trans,.w3-hover-brown-trans:hover{color:#fff!important;background-color:#79554870!important}
.w3-cyan-trans,.w3-hover-cyan-trans:hover{color:#000!important;background-color:#00bcd470!important}
.w3-blue-grey-trans,.w3-hover-blue-grey-trans:hover,.w3-blue-gray-trans,.w3-hover-blue-gray-trans:hover{color:#fff!important;background-color:#607d8b70!important}
.w3-green-trans,.w3-hover-green-trans:hover{color:#fff!important;background-color:#4CAF5070!important}
.w3-light-green-trans,.w3-hover-light-green-trans:hover{color:#000!important;background-color:#8bc34a70!important}
.w3-indigo-trans,.w3-hover-indigo-trans:hover{color:#fff!important;background-color:#3f51b570!important}
.w3-khaki-trans,.w3-hover-khaki-trans:hover{color:#000!important;background-color:#f0e68c70!important}
.w3-lime-trans,.w3-hover-lime-trans:hover{color:#000!important;background-color:#cddc3970!important}
.w3-orange-trans,.w3-hover-orange-trans:hover{color:#000!important;background-color:#ff980070!important}
.w3-deep-orange-trans,.w3-hover-deep-orange-trans:hover{color:#fff!important;background-color:#ff572270!important}
.w3-pink-trans,.w3-hover-pink-trans:hover{color:#fff!important;background-color:#e91e6370!important}
.w3-purple-trans,.w3-hover-purple-trans:hover{color:#fff!important;background-color:#9c27b070!important}
.w3-deep-purple-trans,.w3-hover-deep-purple-trans:hover{color:#fff!important;background-color:#673ab770!important}
.w3-red-trans,.w3-hover-red-trans:hover{color:#fff!important;background-color:#f4433670!important}
.w3-sand-trans,.w3-hover-sand-trans:hover{color:#000!important;background-color:#fdf5e670!important}
.w3-teal-trans,.w3-hover-teal-trans:hover{color:#fff!important;background-color:#00968870!important}
.w3-yellow-trans,.w3-hover-yellow-trans:hover{color:#000!important;background-color:#ffeb3b70!important}
.w3-white-trans,.w3-hover-white-trans:hover{color:#000!important;background-color:#fff70!important}
.w3-black-trans,.w3-hover-black-trans:hover{color:#fff!important;background-color:#00070!important}
.w3-grey-trans,.w3-hover-grey-trans:hover,.w3-gray-trans,.w3-hover-gray-trans:hover{color:#000!important;background-color:#9e9e9e70!important}
.w3-light-grey-trans,.w3-hover-light-grey-trans:hover,.w3-light-gray-trans,.w3-hover-light-gray-trans:hover{color:#000!important;background-color:#f1f1f170!important}
.w3-dark-grey-trans,.w3-hover-dark-grey-trans:hover,.w3-dark-gray-trans,.w3-hover-dark-gray-trans:hover{color:#fff!important;background-color:#61616170!important}
.w3-pale-red-trans,.w3-hover-pale-red-trans:hover{color:#000!important;background-color:#ffdddd70!important}
.w3-pale-green-trans,.w3-hover-pale-green-trans:hover{color:#000!important;background-color:#ddffdd70!important}
.w3-pale-yellow-trans,.w3-hover-pale-yellow-trans:hover{color:#000!important;background-color:#ffffcc70!important}
.w3-pale-blue-trans,.w3-hover-pale-blue-trans:hover{color:#000!important;background-color:#ddffff70!important}
	    
	  @media print {
	    .print {
	      page-break-inside:avoid;
	    }
	    footer{
	      display: none;
	    }
	  }
	</style>
      </head>
      <body class="w3-light-grey">
        <!-- Page Container -->
        <div class="w3-container w3-margin-top">
          <!-- The Grid -->
          <div class="w3-row-padding">
            <!-- Left Column -->
            <div class="w3-third">
              <div class="w3-white w3-text-grey w3-card-4">
                <div id="foto" class="print w3-display-container">
                  <img src="{/cv/photo}" style="width:100%" alt="Avatar"/>
                  <div class="w3-display-bottomleft w3-container">
                    <h2 class="w3-tag w3-{$color}-trans w3-round" style="font-size:2vw;">
                      <xsl:value-of select="/cv/name"/>
                    </h2>
                  </div>
                </div>
                <div class="w3-container">
                  <div id="contacto" class="print">
                    <p>
                      <i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-{$color}"/>
                      <xsl:value-of select="/cv/description"/>
                    </p>
                    <p>
                      <i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-{$color}"/>
                      <xsl:value-of select="/cv/address"/>
                    </p>
                    <p>
                      <i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-{$color}"/>
                      <xsl:value-of select="/cv/email"/>
                    </p>
                    <p>
                      <i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-{$color}"/>
                      <xsl:value-of select="/cv/phone"/>
                    </p>
                    <hr/>
                  </div>
                  <!-- Si hay nodo summary -->
                  <xsl:if test="/cv/summary">
                    <section id="summary" class="print w3-panel w3-justify">
                      <xsl:for-each select="/cv/summary/p">
                        <p>
                          <xsl:value-of select="."/>
                        </p>
                      </xsl:for-each>
                    </section>
                    <hr/>
                  </xsl:if>
                  <!-- Habilidades -->
                  <xsl:if test="/cv/skills">
                    <div id="skills" class="print">
                      <p class="w3-large">
                        <b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-{$color}"/>Habilidades</b>
                      </p>
                      <ul>
                        <xsl:for-each select="/cv/skills/skill">
                          <li>
                            <xsl:value-of select="."/>
                          </li>
                        </xsl:for-each>
                      </ul>
                      <br/>
                    </div>
                  </xsl:if>
                  <!-- Idiomas -->
                  <xsl:if test="/cv/languages">
                    <div id="languages" class="print">
                      <p class="w3-large w3-text-theme">
                        <b><i class="fa fa-globe fa-fw w3-margin-right w3-text-{$color}"/>Idiomas</b>
                      </p>
                      <xsl:for-each select="/cv/languages/language">
                        <p>
                          <xsl:value-of select="."/>
                        </p>
                        <div class="w3-text-{$color} w3-right-align">
                          <xsl:value-of select="@level"/>
                        </div>
                      </xsl:for-each>
                      <br/>
                    </div>
                  </xsl:if>
                </div>
              </div>
              <br/>
              <!-- End Left Column -->
            </div>
            <!-- Right Column -->
            <div class="w3-twothird">
              <!-- Si existe el nodo experiences -->
              <xsl:if test="/cv/experiences">
                <div class="w3-container w3-card w3-white w3-margin-bottom">
                  <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-{$color}"/>Experiencia laboral</h2>
                  <xsl:for-each select="/cv/experiences/experience">
                    <div class="print w3-container">
                      <h5 class="w3-opacity">
                        <b>
                          <xsl:value-of select="company"/>
                        </b>
                      </h5>
                      <xsl:for-each select="projects/project">
			<div class="project print">
                        <h6 class="w3-text-{$color}"><xsl:value-of select="@title"/> - <xsl:value-of select="@workplace"/></h6>
                        <h6 class="w3-text-{$color}"><i class="fa fa-calendar fa-fw w3-margin-right"/><xsl:value-of select="@start"/> -
		      <xsl:choose><xsl:when test="@current"><span class="w3-tag w3-{$color} w3-round">Actualidad</span></xsl:when><xsl:otherwise><xsl:value-of select="@end"/></xsl:otherwise></xsl:choose>
		    </h6>
                        <xsl:for-each select="description/p">
                          <p>
                            <xsl:value-of select="."/>
                          </p>
                        </xsl:for-each>
                        <hr/>
		      </div>
                      </xsl:for-each>
                    </div>
                  </xsl:for-each>
                </div>
              </xsl:if>
              <!-- Si existen nodos educations -->
              <xsl:if test="/cv/educations">
                <xsl:for-each select="/cv/educations">
                  <section id="{@type}-education" class="w3-container w3-card w3-white w3-margin-bottom">
                    <h2 class="w3-text-grey w3-padding-16">
                      <i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-{$color}"/>
                      <xsl:choose>
                        <xsl:when test="@type='academic'">
		      Formación académica
		  </xsl:when>
                        <xsl:when test="@type='complementary'">
		    Formación complementaria
		  </xsl:when>
                        <xsl:otherwise>
		    Otra formación
		  </xsl:otherwise>
                      </xsl:choose>
                    </h2>
                    <!-- Para cada nodo education -->
                    <xsl:for-each select="education">
                      <div class="print w3-container">
                        <h5 class="w3-opacity">
                          <b>
                            <xsl:value-of select="institution"/>
                          </b>
                        </h5>
                        <h6 class="w3-text-{$color}"><i class="fa fa-calendar fa-fw w3-margin-right"/><xsl:value-of select="@start"/> -
		      <xsl:choose><xsl:when test="@current"><span class="w3-tag w3-{$color} w3-round">Actualidad</span></xsl:when><xsl:otherwise><xsl:value-of select="@end"/></xsl:otherwise></xsl:choose>
		    </h6>
                        <p>
                          <xsl:value-of select="course"/>
                        </p>
                        <hr/>
                      </div>
                    </xsl:for-each>
                  </section>
                </xsl:for-each>
              </xsl:if>
              <!-- End Right Column -->
            </div>
            <!-- End Grid -->
          </div>
          <!-- End Page Container -->
        </div>
        <footer class="w3-container w3-{$color} w3-center w3-margin-top" style="width: 100%; bottom: 0px">
          <a href="http://vchicor0d.github.io/cv/cv_es.xml">🇪🇸 - CV Castellano</a>
          <br/>
          <a href="http://vchicor0d.github.io/cv/cv_en.xml">🇬🇧 - CV English</a>
        </footer>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
