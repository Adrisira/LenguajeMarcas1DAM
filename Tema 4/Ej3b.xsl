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
                            <xsl:value-of select="asignaturas/asignatura[@codigo = /universidad/alumnos/alumno/matriculado/@asignatura]/titulo"/>
                        </li>
                        <li>
                            <xsl:value-of select="asignaturas/asignatura[@codigo = /universidad/alumnos/alumno/matriculado/@asignatura]/creditos"/>
                        </li>
                        <li>
                            <xsl:value-of select="alumnos/alumno/matriculado/@nota"/>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>