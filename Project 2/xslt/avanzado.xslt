<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match='/cuestionario'>
        <html>
            <body>
                <h1>Examen TW</h1>
                <xsl:for-each select="pregunta">
                    <br/>
                    <!--Pregunta 1, pregunta de test-->

                    <xsl:choose>
                        <xsl:when test ="@id = 'p1'">
                            <table border="1" width="50%" cellpadding="4">                                                                        
                                <td width="100%" colspan="2" bgcolor="#cc6666">
                                    <xsl:value-of select = "enunciado"/>
                                </td>

                                <tr>
                                    <td width="100%" colspan="2" >
                                        <xsl:value-of select = "respuestas/test/respuesta_1"/>
                                    </td>
                                    <td width="100%" colspan="2" >
                                        <input type="radio" name="radio1" value="Y" >
                                            <xsl:if test="root/radiobuttons/radio1='Y'">
                                                <xsl:attribute name="checked"></xsl:attribute>
                                            </xsl:if>
                                        </input>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="100%" colspan="2" >
                                        <xsl:value-of select = "respuestas/test/respuesta_2"/>
                                    </td>
                                    <td width="100%" colspan="2" >
                                        <input type="radio" name="radio1" value="N" >
                                            <xsl:if test="root/radiobuttons/radio1='N'">
                                                <xsl:attribute name="checked"></xsl:attribute>
                                            </xsl:if>
                                        </input>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="100%" colspan="2" >
                                        <xsl:value-of select = "respuestas/test/respuesta_3"/>
                                    </td>
                                    <td width="100%" colspan="2" >
                                        <input type="radio" name="radio1" value="L" >
                                            <xsl:if test="root/radiobuttons/radio1='L'">
                                                <xsl:attribute name="checked"></xsl:attribute>
                                            </xsl:if>
                                        </input>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="100%" colspan="2">
                                        <xsl:value-of select = "respuestas/test/respuesta_4"/>
                                    </td>
                                    <td width="100%" colspan="2">
                                        <input type="radio" name="radio1" value="K" >
                                            <xsl:if test="root/radiobuttons/radio1='K'">
                                                <xsl:attribute name="checked"></xsl:attribute>
                                            </xsl:if>
                                        </input> 
                                    </td>
                                </tr> 
                            </table>
                        </xsl:when>                                
                    </xsl:choose>
                    
                    <!--Pregunta 2, pregunta numerica-->

                    <xsl:choose>
                        <xsl:when test ="@id = 'p2'">
                            <table border="1" width="50%" cellpadding="4">                                                                        
                                <td width="100%" colspan="2" bgcolor="#cc6666">
                                    <xsl:value-of select = "enunciado"/>
                                </td>

                                <tr>                            
                                    <td width="100%" colspan="2">
                                        <input type="number" min = "1" max = "10"/>
                                    </td>
                                </tr>
                            </table>
                        </xsl:when>                                
                    </xsl:choose> 

                     <!--Pregunta 3, pregunta booleana-->

                    <xsl:choose>
                        <xsl:when test ="@id = 'p3'">
                            <table border="1" width="50%" cellpadding="4">                                                                        
                                <td width="100%" colspan="2" bgcolor="#cc6666">
                                    <xsl:value-of select = "enunciado"/>
                                </td>

                                <tr>
                                    <td width="100%" colspan="2" >
                                        <xsl:value-of select = "respuestas/booleano/respuesta_1"/>
                                    </td>
                                    <td width="100%" colspan="2" >
                                        <input type="radio" name="radio3" value="Y" >
                                            <xsl:if test="root/radiobuttons/radio3='Y'">
                                                <xsl:attribute name="checked"></xsl:attribute>
                                            </xsl:if>
                                        </input>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="100%" colspan="2" >
                                        <xsl:value-of select = "respuestas/booleano/respuesta_2"/>
                                    </td>
                                    <td width="100%" colspan="2" >
                                        <input type="radio" name="radio3" value="N" >
                                            <xsl:if test="root/radiobuttons/radio3='N'">
                                                <xsl:attribute name="checked"></xsl:attribute>
                                            </xsl:if>
                                        </input>
                                    </td>
                                </tr>
                            </table>
                        </xsl:when>                                
                	</xsl:choose>  
				
					<!--Pregunta 4, pregunta ordenar // tema2-->

                    <xsl:choose>
                        <xsl:when test ="@id = 'p4'">
                            <table border="1" width="50%" cellpadding="4">                                                                        
                                <td width="100%" colspan="2" bgcolor="#00ffff">
                                    <xsl:value-of select = "enunciado"/>
                                </td>

                                <tr>
                                    <td width="100%" colspan="2" >
                                        <xsl:value-of select = "respuestas/ordenar/orden_4"/>
                                    </td>
                                    <td width="100%" colspan="2">
                                        <input type="number" min = "1" max = "4"/>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="100%" colspan="2" >
                                        <xsl:value-of select = "respuestas/ordenar/orden_2"/>
                                    </td>
                                    <td width="100%" colspan="2">
                                        <input type="number" min = "1" max = "4"/>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="100%" colspan="2" >
                                        <xsl:value-of select = "respuestas/ordenar/orden_1"/>
                                    </td>
                                    <td width="100%" colspan="2">
                                        <input type="number" min = "1" max = "4"/>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="100%" colspan="2" >
                                        <xsl:value-of select = "respuestas/ordenar/orden_3"/>
                                    </td>
                                    <td width="100%" colspan="2">
                                        <input type="number" min = "1" max = "4"/>
                                    </td>
                                </tr>
                            </table>
                        </xsl:when>                                
                    </xsl:choose>

					<!--Pregunta 5, pregunta libre // tema2-->
                    
                    <xsl:choose>
                        <xsl:when test ="@id = 'p5'">
                            <table border="1" width="50%" cellpadding="4">
                                <td width="100%" colspan="2" bgcolor="#00ffff">
                                    <xsl:value-of select = "enunciado"/>
                                </td>

                                <tr>
                                    <td width="300%" colspan="15">
                                        <textarea name="mitextarea" id="mitextarea" cols="50" rows = "4" style="resize: both;">
                                        </textarea>        
                                    </td>
                                </tr>
                            </table>
                        </xsl:when>                                
                    </xsl:choose>

					<!--Pregunta 6, pregunta multiple // tema2-->
                    <xsl:choose>
                        <xsl:when test ="@id = 'p6'">
                            <table border="1" width="50%" cellpadding="4">                                                                        
                                <td width="100%" colspan="2" bgcolor="#00ffff">
                                    <xsl:value-of select = "enunciado"/>
                                </td>

                                <tr>
                                    <td width="100%" colspan="2">
                                        <xsl:value-of select = 'respuestas/multiple/respuesta_1'/>
                                    </td>
                                    <td width="100%" colspan="2">
                                        <input type="checkbox"/>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="100%" colspan="2">
                                        <xsl:value-of select = 'respuestas/multiple/respuesta_2'/>
                                    </td>
                                    <td width="100%" colspan="2">
                                    <input type="checkbox"/>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="100%" colspan="2">
                                        <xsl:value-of select = 'respuestas/multiple/respuesta_3'/>
                                    </td>
                                    <td width="100%" colspan="2">
                                        <input type="checkbox"/>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="100%" colspan="2">
                                        <xsl:value-of select = 'respuestas/multiple/respuesta_4'/>
                                    </td>
                                    <td width="100%" colspan="2">
                                        <input type="checkbox"/>
                                    </td>
                                </tr>
                            </table>
                        </xsl:when>                                
                    </xsl:choose>


					<!--Pregunta 7, pregunta booleana // tema3-->

					<xsl:choose>
                        <xsl:when test ="@id = 'p7'">
                            <table border="1" width="50%" cellpadding="4">                                                                        
                                <td width="100%" colspan="2" bgcolor="#ff9900">
                                    <xsl:value-of select = "enunciado"/>
                                </td>

                                <tr>
                                    <td width="100%" colspan="2" >
                                        <xsl:value-of select = "respuestas/booleano/respuesta_1"/>
                                    </td>
                                    <td width="100%" colspan="2" >
                                        <input type="radio" name="radio3" value="Y" >
                                            <xsl:if test="root/radiobuttons/radio3='Y'">
                                                <xsl:attribute name="checked"></xsl:attribute>
                                            </xsl:if>
                                        </input>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="100%" colspan="2" >
                                        <xsl:value-of select = "respuestas/booleano/respuesta_2"/>
                                    </td>
                                    <td width="100%" colspan="2" >
                                        <input type="radio" name="radio3" value="N" >
                                            <xsl:if test="root/radiobuttons/radio3='N'">
                                                <xsl:attribute name="checked"></xsl:attribute>
                                            </xsl:if>
                                        </input>
                                    </td>
                                </tr>
                            </table>
                        </xsl:when>                                
                	</xsl:choose>

					<!--Pregunta 8, pregunta ordenar // tema3-->

                    <xsl:choose>
                        <xsl:when test ="@id = 'p8'">
                            <table border="1" width="50%" cellpadding="4">                                                                        
                                <td width="100%" colspan="2" bgcolor="#ff9900">
                                    <xsl:value-of select = "enunciado"/>
                                </td>

                                <tr>
                                    <td width="100%" colspan="2" >
                                        <xsl:value-of select = "respuestas/ordenar/orden_4"/>
                                    </td>
                                    <td width="100%" colspan="2">
                                        <input type="number" min = "1" max = "4"/>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="100%" colspan="2" >
                                        <xsl:value-of select = "respuestas/ordenar/orden_2"/>
                                    </td>
                                    <td width="100%" colspan="2">
                                        <input type="number" min = "1" max = "4"/>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="100%" colspan="2" >
                                        <xsl:value-of select = "respuestas/ordenar/orden_1"/>
                                    </td>
                                    <td width="100%" colspan="2">
                                        <input type="number" min = "1" max = "4"/>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="100%" colspan="2" >
                                        <xsl:value-of select = "respuestas/ordenar/orden_3"/>
                                    </td>
                                    <td width="100%" colspan="2">
                                        <input type="number" min = "1" max = "4"/>
                                    </td>
                                </tr>
                            </table>
                        </xsl:when>                                
                    </xsl:choose>
					
					<!--Pregunta 9, pregunta libre // tema3-->

					<xsl:choose>
                        <xsl:when test ="@id = 'p9'">
                            <table border="1" width="50%" cellpadding="4">
                                <td width="100%" colspan="2" bgcolor="#ff9900">
                                    <xsl:value-of select = "enunciado"/>
                                </td>

                                <tr>
                                    <td width="300%" colspan="15">
                                        <textarea name="mitextarea" id="mitextarea" cols="50" rows = "4" style="resize: both;">
                                        </textarea>        
                                    </td>
                                </tr>
                            </table>
                        </xsl:when>                                
                    </xsl:choose>

					<!--Pregunta 10, pregunta multiple // tema4-->

					<xsl:choose>
                        <xsl:when test ="@id = 'p10'">
                            <table border="1" width="50%" cellpadding="4">                                                                        
                                <td width="100%" colspan="2" bgcolor="#ff00ff">
                                    <xsl:value-of select = "enunciado"/>
                                </td>

                                <tr>
                                    <td width="100%" colspan="2">
                                        <xsl:value-of select = 'respuestas/multiple/respuesta_1'/>
                                    </td>
                                    <td width="100%" colspan="2">
                                        <input type="checkbox"/>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="100%" colspan="2">
                                        <xsl:value-of select = 'respuestas/multiple/respuesta_2'/>
                                    </td>
                                    <td width="100%" colspan="2">
                                    <input type="checkbox"/>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="100%" colspan="2">
                                        <xsl:value-of select = 'respuestas/multiple/respuesta_3'/>
                                    </td>
                                    <td width="100%" colspan="2">
                                        <input type="checkbox"/>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="100%" colspan="2">
                                        <xsl:value-of select = 'respuestas/multiple/respuesta_4'/>
                                    </td>
                                    <td width="100%" colspan="2">
                                        <input type="checkbox"/>
                                    </td>
                                </tr>
                            </table>
                        </xsl:when>                                
                    </xsl:choose>

					<!--Pregunta 11, pregunta test // tema4-->

					<xsl:choose>
                        <xsl:when test ="@id = 'p11'">
                            <table border="1" width="50%" cellpadding="4">                                                                        
                                <td width="100%" colspan="2" bgcolor="#ff00ff">
                                    <xsl:value-of select = "enunciado"/>
                                </td>

                                <tr>
                                    <td width="100%" colspan="2" >
                                        <xsl:value-of select = "respuestas/test/respuesta_1"/>
                                    </td>
                                    <td width="100%" colspan="2" >
                                        <input type="radio" name="radio1" value="Y" >
                                            <xsl:if test="root/radiobuttons/radio1='Y'">
                                                <xsl:attribute name="checked"></xsl:attribute>
                                            </xsl:if>
                                        </input>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="100%" colspan="2" >
                                        <xsl:value-of select = "respuestas/test/respuesta_2"/>
                                    </td>
                                    <td width="100%" colspan="2" >
                                        <input type="radio" name="radio1" value="N" >
                                            <xsl:if test="root/radiobuttons/radio1='N'">
                                                <xsl:attribute name="checked"></xsl:attribute>
                                            </xsl:if>
                                        </input>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="100%" colspan="2" >
                                        <xsl:value-of select = "respuestas/test/respuesta_3"/>
                                    </td>
                                    <td width="100%" colspan="2" >
                                        <input type="radio" name="radio1" value="L" >
                                            <xsl:if test="root/radiobuttons/radio1='L'">
                                                <xsl:attribute name="checked"></xsl:attribute>
                                            </xsl:if>
                                        </input>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="100%" colspan="2">
                                        <xsl:value-of select = "respuestas/test/respuesta_4"/>
                                    </td>
                                    <td width="100%" colspan="2">
                                        <input type="radio" name="radio1" value="K" >
                                            <xsl:if test="root/radiobuttons/radio1='K'">
                                                <xsl:attribute name="checked"></xsl:attribute>
                                            </xsl:if>
                                        </input> 
                                    </td>
                                </tr> 
                            </table>
                        </xsl:when>                                
                    </xsl:choose>

					<!--Pregunta 12, pregunta libre // tema4-->
                    
					<xsl:choose>
                        <xsl:when test ="@id = 'p12'">
                            <table border="1" width="50%" cellpadding="4">
                                <td width="100%" colspan="2" bgcolor="#ff00ff">
                                    <xsl:value-of select = "enunciado"/>
                                </td>

                                <tr>
                                    <td width="300%" colspan="15">
                                        <textarea name="mitextarea" id="mitextarea" cols="50" rows = "4" style="resize: both;">
                                        </textarea>        
                                    </td>
                                </tr>
                            </table>
                        </xsl:when>                                
                    </xsl:choose>

                                
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 