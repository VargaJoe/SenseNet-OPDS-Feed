<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
                xmlns="http://www.w3.org/2005/Atom" 
                xmlns:dcterms="http://purl.org/dc/terms/" 
                xmlns:pse="http://vaemendis.net/opds-pse/ns" 
                xmlns:opds="http://opds-spec.org/2010/catalog"
                xmlns:opensearch="http://a9.com/-/spec/opensearch/1.1/"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    <feed xml:lang="en">
      <id>
        <xsl:value-of select="Content/Fields/Id"/>-booksLocalRootDirectory</id>
      <title>
        <xsl:value-of select="Content/Fields/DisplayName" disable-output-escaping="yes"/>
      </title>
      <updated>
        <xsl:value-of select="Content/Fields/ModificationDate"/>
      </updated>
      <!--<icon>/theme/favicon.ico</icon>-->
      <author>
        <name>sensenet server</name>
        <uri>http://sensenet.com/</uri>
      </author>
      <link type="application/atom+xml; profile=opds-catalog; kind=navigation" rel="self" href="?action=opds"/>
      <link type="application/atom+xml; profile=opds-catalog; kind=navigation" rel="start" href="/?action=opdsroot"/>
      <xsl:if test="Content/Children/Content[ContentType = 'File']">
        <entry>
          <title>Files in current folder (4)</title>
          <id>
            <xsl:value-of select="Fields/Id"/>-files</id>
          <updated>
            <xsl:value-of select="Fields/ModificationDate"/>
          </updated>
          <content type="html"/>
          <link type="application/atom+xml; profile=opds-catalog; kind=acquisition" rel="subsection" href="{Content/Actions/opdsfiles}" pse:current-folder-content="true"/>
        </entry>
      </xsl:if>
      <xsl:for-each select="Content/Children/Content[ContentType = 'Folder']">
        <entry>
          <title>
            <xsl:value-of select="Fields/DisplayName"/>
          </title>
          <id>
            <xsl:value-of select="Fields/Id"/>
          </id>
          <updated>
            <xsl:value-of select="Fields/ModificationDate"/>
          </updated>
          <content type="html"></content>
          <!--<xsl:choose>
            <xsl:when test="Fields/ContentType = 'File'">
              <link type="application/atom+xml; profile=opds-catalog; kind=acquisition" rel="subsection" href="{Actions/opdsfile}"/>
            </xsl:when>
            <xsl:otherwise>-->
              <link type="application/atom+xml; profile=opds-catalog; kind=navigation" rel="subsection" href="{Actions/opds}"/>
            <!--</xsl:otherwise>
          </xsl:choose>-->
        </entry>
      </xsl:for-each>      
    </feed>
  </xsl:template>
</xsl:stylesheet>
