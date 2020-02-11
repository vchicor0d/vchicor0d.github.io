<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <![CDATA[doctype html]]>
    <html>
      <head>
	<title><xsl:value-of select="/cv/name"/></title>
	<meta lang="es"/>
	<link rel="stylesheet" type="text/css" href="cv.css"/>
      </head>
      <body>
	<h1><xsl:value-of select="/cv/name"/></h1>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
