<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
    <html>
        <head>
            <title>Titulo examen</title>
        </head>
        <body>
            <table border ="1">
                <tr bgcolor="#9acd32">
                    <th>CIF(NOMBRE)</th>
                    <th>Bebidas que se solicitan</th>
                    <th>Numero de unidades en total</th>
                    <th>Descuento</th>
                </tr>
                <xsl:for-each select="franquicia">
                <tr>
                    <td>
                        <xsl:value-of select="empresas/empresa/cif, empresas/empresa/nombre"/>
                    </td>
                    <td>
                        <xsl:value-of select="bebidas/bebida[@id = franquicia/empresas/empresa/bebidas_solicitadas/nombre]/nombre"/>
                    </td>
                    <td>
                        <xsl:value-of select="empresas/empresa/bebidas_solicitadas/bebida/unidades"/>
                    </td>
                    <xsl:if test="empresas/empresa/tipo = bar or empresas/empresa/tipo = Cafetería">
                        <td>Aplica descuento del 40%</td>
                    </xsl:if>
                    <xsl:if test="empresas/empresa/tipo = Centro de Ocio">
                        <td>Aplica descuento del 30%</td>
                    </xsl:if>
                    <xsl:if test="empresas/empresa/tipo = Restaurante">
                        <td>Aplica descuento del 10%</td>
                    </xsl:if>
                </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>
