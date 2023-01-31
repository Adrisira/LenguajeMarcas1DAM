<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head><title>PON EL TITULO</title></head>
            <body>
                <xsl:for-each select="universidad/alumnos/alumno">
                    <h1>Nota media</h1>
                    <p>
                    <xsl:value-of select="avg((nota1
                    , nota2))"/>
                    </p>
                    <h1>Nota textual</h1>
                    <xsl:if test="avg((nota1
                    , nota2)) >= 9">
                        <p>Sobresaliente</p>
                    </xsl:if>
                    <xsl:if test="avg((nota1
                    , nota2)) >= 7 and 9  avg((nota1
                    , nota2)">)
                        <p>Notable</p>
                    </xsl:if>
                    <xsl:if test="avg((nota1
                    , nota2)) >= 5 and 7 > avg((nota1
                    , nota2))">
                        <p>Suficiente</p>
                    </xsl:if>
                    <xsl:if test="5 > avg((nota1, nota2))">
                        <p>Suspenso</p>
                    </xsl:if>
                 </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>