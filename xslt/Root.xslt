<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/2005/Atom" 
                xmlns:dcterms="http://purl.org/dc/terms/" 
                xmlns:opds="http://opds-spec.org/2010/catalog"
                xmlns:opensearch="http://a9.com/-/spec/opensearch/1.1/"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    <feed  xml:lang="en">
      <id>
        <xsl:value-of select="Content/Fields/Id"/>-opdsRoot </id>
      <title>
        <xsl:value-of select="Content/Fields/DisplayName" disable-output-escaping="yes"/> catalog</title>
      <updated><xsl:value-of select="Content/Fields/ModificationDate" disable-output-escaping="yes"/></updated>
      <!--<icon>/theme/favicon.ico</icon>-->
      <author>
        <name>sensenet server</name>
        <uri>http://sensenet.com/</uri>
      </author>
      <link type="application/atom+xml; profile=opds-catalog; kind=navigation" rel="self" href="/?action=opdsroot"/>
      <link type="application/atom+xml; profile=opds-catalog; kind=navigation" rel="start" href="/?action=opdsroot"/>
      <link type="application/opensearchdescription+xml" rel="search" href="/?action=opdsroot"/>
      <entry>
        <title>Folders</title>
        <id>allContentFolder</id>
        <updated>2019-07-24T00:06:23+02:00</updated>
        <content type="html">All books grouped by folder.</content>
        <link type="application/atom+xml; profile=opds-catalog; kind=navigation" rel="subsection" href="/?action=opds"/>
      </entry>
    </feed>
  </xsl:template>
</xsl:stylesheet>
