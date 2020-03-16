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
        <link rel="stylesheet" href="w3.css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto"/>
        <link rel="stylesheet" href="fontawesome5.12.1/css/all.min.css"/>
	<link rel="stylesheet" href="cv.css"/>
      </head>
      <body>
        <!-- Page Container -->
        <div class="w3-container w3-margin-top">
          <!-- The Grid -->
          <div id="grid">
            <!-- Left Column -->
            <div id="left" class="w3-margin-right">
              <div class="w3-white w3-text-grey w3-card-4">
                <div id="foto" class="print w3-display-container">
                  <img src="{/cv/photo}" alt="Avatar"/>
                  <div class="w3-display-bottomleft w3-container">
                    <h2 class="w3-tag w3-{$color}-trans w3-round">
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
		    <xsl:for-each select="/cv/skills">
		      <div id="skills" class="print">
			<p class="w3-large">
                          <b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-{$color}"/>
			  <xsl:choose>
			  <xsl:when test="@title">
			    <xsl:value-of select="@title"/>
			  </xsl:when>
			  <xsl:otherwise>
			    Habilidades
			  </xsl:otherwise>
			  </xsl:choose>
			  </b>
			</p>
			<xsl:choose>
			  <xsl:when test="@type='bars'">
			    <xsl:for-each select="skill">
			      <p><xsl:value-of select="."/></p>
			      <div class="w3-light-grey w3-round-xlarge w3-small">
				<div class="w3-container w3-center w3-round-xlarge w3-{$color}" style="width:{@percent}%"><xsl:value-of select="@percent"/>%</div>
			      </div>
			    </xsl:for-each>
			  </xsl:when>
			  <xsl:otherwise>
			    <ul>
                              <xsl:for-each select="skill">
				<li>
				  <xsl:value-of select="."/>
				</li>
                              </xsl:for-each>
			    </ul>
			  </xsl:otherwise>
			</xsl:choose>
			<br/>
                      </div>
		    </xsl:for-each>
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
            <div id="right">
              <!-- Si existe el nodo experiences -->
              <xsl:if test="/cv/experiences">
                <div class="w3-container w3-card w3-white w3-margin-bottom">
                  <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-{$color}"/>Experiencia laboral</h2>
                  <xsl:for-each select="/cv/experiences/experience">
                    <div class="print w3-container">
                      <h5 class="w3-text-grey">
                        <b>
                          <xsl:value-of select="company"/>
                        </b>
                      </h5>
                      <xsl:for-each select="projects/project">
			<div class="project print">
                          <h6 class="w3-text-{$color}">
			    <xsl:value-of select="@title"/> - <xsl:value-of select="@workplace"/>
			  </h6>
                          <h6 class="w3-text-{$color}">
			    <i class="fa fa-calendar fa-fw w3-margin-right"/><xsl:value-of select="@start"/> -
			    <xsl:choose>
			      <xsl:when test="@current">
				<span class="w3-tag w3-{$color} w3-round">Actualidad</span>
			      </xsl:when>
			      <xsl:otherwise>
				<xsl:value-of select="@end"/>
			      </xsl:otherwise>
			    </xsl:choose>
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
                        <h5 class="w3-text-grey">
                          <b>
                            <xsl:value-of select="institution"/>
                          </b>
                        </h5>
                        <h6 class="w3-text-{$color}">
			  <i class="fa fa-calendar fa-fw w3-margin-right"/><xsl:value-of select="@start"/> -
			  <xsl:choose>
			    <xsl:when test="@current">
			      <span class="w3-tag w3-{$color} w3-round">Actualidad</span>
			    </xsl:when>
			    <xsl:otherwise>
			      <xsl:value-of select="@end"/>
			    </xsl:otherwise>
			  </xsl:choose>
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
        <footer class="w3-container w3-{$color} w3-center w3-margin-top">
          <a href="cv_es.xml">🇪🇸 - CV Castellano</a>
          <br/>
          <a href="cv_en.xml">🇬🇧 - CV English</a>
        </footer>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
