<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="5.0"
    encoding="UTF-8" indent="yes"/>    
    <xsl:template match="/">
        <html>
            <head>
                <title>Libros v3</title>
            </head>
            <body>
                <table>
                        <tr>
                            <th>Título</th>
                            <th>Autor</th>
                            <th>Precio</th>
                        </tr>
                        <xsl:apply-templates select="libros/libro"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="libro">
        <tr>
            <td>
                <xsl:value-of select="titulo" />
            </td>
            <td>
                <xsl:value-of select="autor" />
            </td>
            <td>
                <xsl:value-of select="precio" />
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>