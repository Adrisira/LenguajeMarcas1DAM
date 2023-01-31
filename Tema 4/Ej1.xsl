<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th style="text-align:left">Titulo</th>
            <th style="text-align:left">Autor</th>
            <th style="text-align:left">Precio</th>
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
