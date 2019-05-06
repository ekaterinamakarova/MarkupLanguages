<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h2>Programming languages</h2>
        <table border="1">
          <tr>
            <th>Name</th>
            <th>Category</th>
            <th>Level</th>
            <th>Creation date</th>
            <th>Creator</th>
          </tr>
          <xsl:for-each select="programming_languages/language">
            <tr>
              <th><xsl:value-of select="@name"/></th>
              <th><xsl:value-of select="category"/></th>
              <th><xsl:value-of select="level"/></th>
              <th><xsl:value-of select="creation_date/day"/>.<xsl:value-of select="creation_date/month"/>.<xsl:value-of select="creation_date/year"/></th>
              <th><xsl:value-of select="creator/@type"/> <xsl:value-of select="creator"/></th>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>