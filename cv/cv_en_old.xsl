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
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <style>
	  html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
	  @media print {
	  .print{
	  page-break-inside:avoid;
	  }
	  }
	</style>
      </head>
      
      <body class="w3-light-grey">
        <!-- Page Container -->
        <div class="w3-content w3-margin-top" style="max-width:1400px;">
          <!-- The Grid -->
          <div class="w3-row-padding">
            <!-- Left Column -->
            <div class="w3-third">
              <div class="print w3-white w3-text-grey w3-card-4">
                <div class="w3-display-container">
                  <img src="photo.jpg" style="width:100%" alt="Avatar"/>
                  <div class="w3-display-bottomleft w3-container w3-text-{$color}">
                    <h2>Jane Doe</h2>
                  </div>
                </div>
                <div class="print w3-container">
                  <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-{$color}"/>Designer</p>
                  <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-{$color}"/>London, UK</p>
                  <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-{$color}"/>ex@mail.com</p>
                  <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-{$color}"/>1224435534</p>
                  <hr/>
                  <p class="w3-large">
                    <b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-{$color}"/>Skills</b>
                  </p>
                  <p>Adobe Photoshop</p>
                  <div class="w3-light-grey w3-round-xlarge w3-small">
                    <div class="w3-container w3-center w3-round-xlarge w3-{$color}" style="width:90%">90%</div>
                  </div>
                  <p>Photography</p>
                  <div class="w3-light-grey w3-round-xlarge w3-small">
                    <div class="w3-container w3-center w3-round-xlarge w3-{$color}" style="width:80%">
                      <div class="w3-center w3-text-white">80%</div>
                    </div>
                  </div>
                  <p>Illustrator</p>
                  <div class="w3-light-grey w3-round-xlarge w3-small">
                    <div class="w3-container w3-center w3-round-xlarge w3-{$color}" style="width:75%">75%</div>
                  </div>
                  <p>Media</p>
                  <div class="w3-light-grey w3-round-xlarge w3-small">
                    <div class="w3-container w3-center w3-round-xlarge w3-{$color}" style="width:50%">50%</div>
                  </div>
                  <br/>
                  <p class="w3-large w3-text-theme">
                    <b><i class="fa fa-globe fa-fw w3-margin-right w3-text-{$color}"/>Languages</b>
                  </p>
                  <p>English</p>
                  <div class="w3-light-grey w3-round-xlarge">
                    <div class="w3-round-xlarge w3-{$color}" style="height:24px;width:100%"/>
                  </div>
                  <p>Spanish</p>
                  <div class="w3-light-grey w3-round-xlarge">
                    <div class="w3-round-xlarge w3-{$color}" style="height:24px;width:55%"/>
                  </div>
                  <p>German</p>
                  <div class="w3-light-grey w3-round-xlarge">
                    <div class="w3-round-xlarge w3-{$color}" style="height:24px;width:25%"/>
                  </div>
                  <br/>
                </div>
              </div>
              <br/>
              <!-- End Left Column -->
            </div>
            <!-- Right Column -->
            <div class="w3-twothird">
              <div class="w3-container w3-card w3-white w3-margin-bottom">
                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-{$color}"/>Work Experience</h2>
                <div class="print w3-container">
                  <h5 class="w3-opacity">
                    <b>Front End Developer / w3schools.com</b>
                  </h5>
                  <h6 class="w3-text-{$color}"><i class="fa fa-calendar fa-fw w3-margin-right"/>Jan 2015 - <span class="w3-tag w3-{$color} w3-round">Current</span></h6>
                  <p>Lorem ipsum dolor sit amet. Praesentium magnam consectetur vel in deserunt aspernatur est reprehenderit sunt hic. Nulla tempora soluta ea et odio, unde doloremque repellendus iure, iste.</p>
                  <hr/>
                </div>
                <div class="print w3-container">
                  <h5 class="w3-opacity">
                    <b>Web Developer / something.com</b>
                  </h5>
                  <h6 class="w3-text-{$color}"><i class="fa fa-calendar fa-fw w3-margin-right"/>Mar 2012 - Dec 2014</h6>
                  <p>Consectetur adipisicing elit. Praesentium magnam consectetur vel in deserunt aspernatur est reprehenderit sunt hic. Nulla tempora soluta ea et odio, unde doloremque repellendus iure, iste.</p>
                  <hr/>
                </div>
                <div class="print w3-container">
                  <h5 class="w3-opacity">
                    <b>Graphic Designer / designsomething.com</b>
                  </h5>
                  <h6 class="w3-text-{$color}"><i class="fa fa-calendar fa-fw w3-margin-right"/>Jun 2010 - Mar 2012</h6>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
                  <br/>
                </div>
              </div>
              <div class="w3-container w3-card w3-white">
                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-{$color}"/>Education</h2>
                <div class="print w3-container">
                  <h5 class="w3-opacity">
                    <b>W3Schools.com</b>
                  </h5>
                  <h6 class="w3-text-{$color}"><i class="fa fa-calendar fa-fw w3-margin-right"/>Forever</h6>
                  <p>Web Development! All I need to know in one place</p>
                  <hr/>
                </div>
                <div class="print w3-container">
                  <h5 class="w3-opacity">
                    <b>London Business School</b>
                  </h5>
                  <h6 class="w3-text-{$color}"><i class="fa fa-calendar fa-fw w3-margin-right"/>2013 - 2015</h6>
                  <p>Master Degree</p>
                  <hr/>
                </div>
                <div class="print w3-container">
                  <h5 class="w3-opacity">
                    <b>School of Coding</b>
                  </h5>
                  <h6 class="w3-text-{$color}"><i class="fa fa-calendar fa-fw w3-margin-right"/>2010 - 2013</h6>
                  <p>Bachelor Degree</p>
                  <br/>
                </div>
              </div>
              <!-- End Right Column -->
            </div>
            <!-- End Grid -->
          </div>
          <!-- End Page Container -->
        </div>
        <footer class="w3-container w3-{$color} w3-center w3-margin-top">
	  <a href="http://vchicor0d.github.io/cv/cv_es.xml">🇪🇸 - CV Castellano</a>
	  <br/>
	  <a href="http://vchicor0d.github.io/cv/cv_en.xml">🇬🇧 - CV English</a>
        </footer>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
