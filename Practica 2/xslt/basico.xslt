<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/cuestionario">
    <html>
        <body>
        <h1>Preguntas examen TW</h1>
        <table border="3">
            <tr bgcolor="#00ff00">
            <th>Tema</th>
            <th>Enunciado preguntas</th>
            </tr>

            <xsl:for-each select="pregunta">
                <xsl:sort select="@tema"/>            
                <tr>
                    <xsl:choose>
                        <xsl:when test ="@tema = 1">
                            <td bgcolor="#cc6666">
                            <xsl:value-of select="@tema"/>
                            </td>
                        </xsl:when>

                        <xsl:when test ="@tema = 2">
                            <td bgcolor="#00ffff">
                            <xsl:value-of select="@tema"/>
                            </td>
                        </xsl:when>

                        <xsl:when test ="@tema = 3">
                            <td bgcolor="#ff9900">
                            <xsl:value-of select="@tema"/>
                            </td>
                        </xsl:when>

                        <xsl:when test ="@tema = 4">
                            <td bgcolor="#ff00ff">
                            <xsl:value-of select="@tema"/>
                            </td>
                        </xsl:when>
                    </xsl:choose>
                    <td><xsl:value-of select="enunciado"/></td>
                </tr>
            </xsl:for-each>
        </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>