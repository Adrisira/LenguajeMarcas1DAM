<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" version="5.0"
encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
  <html>
    <head>
      <title>Autores de libros</title>
    </head>
    <body>
      <table border="1px solid black">
        <tr>
              <th>Título</th>
              <th>Autor</th>
              <th>Precio</th>
        </tr>
        <xsl:for-each select="libros/libro">
        <tr>
          <td>
            <xsl:value-of select="titulo"/>
          </td>
          <td>
            <xsl:value-of select="autor"/>
          </td>
          <td>
            <xsl:value-of select="precio"/>
          </td>          
        </tr>        
        </xsl:for-each>
      </table>
    </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
