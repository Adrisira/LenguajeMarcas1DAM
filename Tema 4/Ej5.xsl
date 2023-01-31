<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <tr bgcolor="#9acd32">
                      <th>Nombre</th>
                      <th>Apellido</th>
                      <th>Pasaporte</th>
                    </tr>
                
                <xsl:for-each select="universidad/alumnos/alumno">
                <xsl:sort select="apellido"/> <!-- Se cierra en la misma linea -->
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="apellido"/></td>
                    <td><xsl:value-of select="pasaporte"/></td>
                </tr>
                </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
