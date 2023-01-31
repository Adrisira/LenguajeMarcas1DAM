<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <body>
                <ul>
                    <xsl:for-each select="universidad">
                        <li>
                            <xsl:value-of select="alumnos/alumno/nombre"/>
                        </li>
                        <li>
                            <xsl:value-of select="alumnos/alumno/pasaporte"/>
                        </li>
                        <li>
                            <xsl:value-of select="profesores/profesor/nombre"/>
                        </li>
                        <li>
                            <xsl:value-of select="profesores/profesor/DNI"/>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>