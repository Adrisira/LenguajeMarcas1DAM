<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th style="text-align:left">Alumno</th>
                        <th style="text-align:left">Nota Global</th>
                      </tr>
                      <xsl:for-each select="alumnos/alumno">
                      <tr>
                        <td>
                          <xsl:value-of select="nombre"/>
                        </td>
                        <td>
                          <xsl:value-of select="avg((nota1
                          , nota2))"/>
                        </td>
                      </tr>
                      </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>