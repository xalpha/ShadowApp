<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:t="http://www.stauer-online.de/sr/characters.xsd">
	<xsl:output method="html" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" encoding="utf-8" indent="yes"/>
	<xsl:template match="/t:Shadowrun/t:Character">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
				<title>Charakterbogen <xsl:value-of select="t:Name"/></title>
				<link href="styles.css" rel="stylesheet" type="text/css" />

			</head>

			<body>
				<div class="page">
					<div class="pageheader">
						<table id="general_information" cellpadding="0" cellspacing="0" class="volleBreite">
								<tr>
									<td>NAME/ALIAS: </td>
									<td class="input" colspan="9"><xsl:value-of select="t:Name"/></td>
								</tr>
								<tr>
									<td>Metatyp: </td>
									<td class="input"><xsl:value-of select="t:Metatype"/></td>
									<td>Alter: </td>
									<td class="input"><xsl:value-of select="t:Age"/></td>
									<td>Geschlecht: </td>
									<td class="input"><xsl:value-of select="t:Gender"/></td>
									<td>Nuyen: </td>
									<td class="input"><xsl:value-of select="t:Money"/>¥</td>
									<td>Lebensstil: </td>
									<td class="input"><xsl:value-of select="t:Lifestyle"/></td>
								</tr>
								<tr>
									<td>Karma Gesamt: </td>
									<td class="input"><xsl:value-of select="t:TotalKarma"/></td>
									<td>aktuell: </td>
									<td class="input"><xsl:value-of select="t:RemainingKarma"/></td>
									<td>Straßenruf: </td>
									<td class="input"><xsl:value-of select="t:StreetCred"/></td>
									<td>Schlechter Ruf: </td>
									<td class="input"><xsl:value-of select="t:Notoriety"/></td>
									<td>Prominenz: </td>
									<td class="input"><xsl:value-of select="(t:StreetCred + t:Notoriety) div 3"/></td>
								</tr>
							<tfoot>
								<tr>
									<td colspan="10">Charakterdaten</td>
								</tr>
							</tfoot>
						</table>

						<table cellpadding="0" cellspacing="0" class="volleBreite" id="attributes">
							<thead>
								<tr>
									<th colspan="2">Körperliche Attribute</th>
									<th colspan="2">Geistige Attribute</th>
									<th colspan="2">Besondere Attribute</th>
									<th colspan="2">Besondere Attribute</th>
								</tr>
							</thead>
							<tr>
								<td style="width: 150px">Konstitution:</td>
								<td style="width: 83px">
									<xsl:value-of select="t:Attributes/t:Attribute[@type='Body']/t:naturalValue"/>
									<xsl:if test="t:Attributes/t:Attribute[@type='Body']/t:naturalValue != t:Attributes/t:Attribute[@type='Body']/t:augmentedValue">
										(<xsl:value-of select="t:Attributes/t:Attribute[@type='Body']/t:augmentedValue"/>)
									</xsl:if>
								</td>
								<td style="width: 150px">Charisma:</td>
								<td style="width: 83px">
									<xsl:value-of select="t:Attributes/t:Attribute[@type='Charisma']/t:naturalValue"/>
									<xsl:if test="t:Attributes/t:Attribute[@type='Charisma']/t:naturalValue != t:Attributes/t:Attribute[@type='Charisma']/t:augmentedValue">
										(<xsl:value-of select="t:Attributes/t:Attribute[@type='Charisma']/t:augmentedValue"/>)
									</xsl:if>
								</td>
								<td style="width: 150px">Edge:</td>
								<td style="width: 83px"><xsl:value-of select="t:Edge"/></td>
								<td style="width: 150px">Aktuelles Edge:</td>
								<td style="width: 83px"><xsl:value-of select="t:Edge"/></td>
							</tr>
							<tr>
								<td style="width: 150px">Geschicklichkeit:</td>
								<td style="width: 83px">
									<xsl:value-of select="t:Attributes/t:Attribute[@type='Agility']/t:naturalValue"/>
									<xsl:if test="t:Attributes/t:Attribute[@type='Agility']/t:naturalValue != t:Attributes/t:Attribute[@type='Agility']/t:augmentedValue">
										(<xsl:value-of select="t:Attributes/t:Attribute[@type='Agility']/t:augmentedValue"/>)
									</xsl:if>
								</td>
								<td style="width: 150px">Intuition:</td>
								<td style="width: 83px">
									<xsl:value-of select="t:Attributes/t:Attribute[@type='Intuition']/t:naturalValue"/>
									<xsl:if test="t:Attributes/t:Attribute[@type='Intuition']/t:naturalValue != t:Attributes/t:Attribute[@type='Intuition']/t:augmentedValue">
										(<xsl:value-of select="t:Attributes/t:Attribute[@type='Intuition']/t:augmentedValue"/>)
									</xsl:if>
								</td>
								<td style="width: 150px">Essenz:</td>
								<td style="width: 83px"><xsl:value-of select="t:Essence"/></td>
								<td style="width: 150px">Astrale INI:</td>
								<td style="width: 83px">
									<xsl:choose>
										<xsl:when test="t:Awakened = 'Magician'">
											<xsl:value-of select="t:Attributes/t:Attribute[@type='Intuition']/t:augmentedValue * 2"/>
										</xsl:when>
										<xsl:otherwise>-</xsl:otherwise>
									</xsl:choose>
								</td>
							</tr>
							<tr>
								<td style="width: 150px">Reaktion:</td>
								<td style="width: 83px">
									<xsl:value-of select="t:Attributes/t:Attribute[@type='Reaction']/t:naturalValue"/>
									<xsl:if test="t:Attributes/t:Attribute[@type='Reaction']/t:naturalValue != t:Attributes/t:Attribute[@type='Reaction']/t:augmentedValue">
										(<xsl:value-of select="t:Attributes/t:Attribute[@type='Reaction']/t:augmentedValue"/>)
									</xsl:if>
								</td>
								<td style="width: 150px">Logik:</td>
								<td style="width: 83px">
									<xsl:value-of select="t:Attributes/t:Attribute[@type='Logic']/t:naturalValue"/>
									<xsl:if test="t:Attributes/t:Attribute[@type='Logic']/t:naturalValue != t:Attributes/t:Attribute[@type='Logic']/t:augmentedValue">
										(<xsl:value-of select="t:Attributes/t:Attribute[@type='Logic']/t:augmentedValue"/>)
									</xsl:if>
								</td>
								<td style="width: 150px">Initiative:</td>
								<td style="width: 83px">
									<xsl:value-of select="t:Attributes/t:Attribute[@type='Intuition']/t:augmentedValue + t:Attributes/t:Attribute[@type='Reaction']/t:augmentedValue"/>
								</td>
								<td style="width: 150px">Matrix INI:</td>
								<td style="width: 83px">###</td>
							</tr>
							<tr>
								<td style="width: 150px">Stärke:</td>
								<td style="width: 83px">
									<xsl:value-of select="t:Attributes/t:Attribute[@type='Strength']/t:naturalValue"/>
									<xsl:if test="t:Attributes/t:Attribute[@type='Strength']/t:naturalValue != t:Attributes/t:Attribute[@type='Strength']/t:augmentedValue">
										(<xsl:value-of select="t:Attributes/t:Attribute[@type='Strength']/t:augmentedValue"/>)
									</xsl:if>
								</td>
								<td style="width: 150px">Willenskraft:</td>
								<td style="width: 83px">
									<xsl:value-of select="t:Attributes/t:Attribute[@type='Willpower']/t:naturalValue"/>
									<xsl:if test="t:Attributes/t:Attribute[@type='Willpower']/t:naturalValue != t:Attributes/t:Attribute[@type='Willpower']/t:augmentedValue">
										(<xsl:value-of select="t:Attributes/t:Attribute[@type='Willpower']/t:augmentedValue"/>)
									</xsl:if>
								</td>
								<td style="width: 150px">
									<xsl:choose>
										<xsl:when test="t:Awakened = 'Technomancer'">
											Resonanz:
										</xsl:when>
										<xsl:otherwise>
											Magie:
										</xsl:otherwise>
									</xsl:choose>
								</td>
								<td style="width: 83px">
									<xsl:choose>
										<xsl:when test="t:Awakened = 'Mundane'">
											-
										</xsl:when>
										<xsl:when test="t:Awakened = 'Technomancer'">
											<xsl:value-of select="t:Resonance"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:value-of select="t:Magic"/>
										</xsl:otherwise>
									</xsl:choose>
								</td>
								<td style="width: 150px">INI-Durchgänge:</td>
								<td style="width: 83px"><xsl:value-of select="t:Passes"/></td>
							</tr>
							<tfoot>
								<tr>
									<td colspan="8">Attribute</td>
								</tr>
							</tfoot>
						</table>
					</div>
					<div class="pagefooter">
						<table cellpadding="0" cellspacing="0" class="volleBreite" id="skills">
							<thead>
								<tr>
									<th colspan="3">Aktionsfertigkeit</th>
									<th colspan="3">Aktionsfertigkeit</th>
									<th colspan="3">Wissensfertigkeit</th>
								</tr>
								<tr class="kommentartext">
									<td>Fertigkeitsbezeichnung</td>
									<td style="width: 45px">Wert</td>
									<td style="width: 65px">Attr.</td>
									<td>Fertigkeitsbezeichnung</td>
									<td style="width: 45px">Wert</td>
									<td style="width: 65px">Attr.</td>
									<td>Fertigkeitsbezeichnung</td>
									<td style="width: 45px">Wert</td>
									<td style="width: 65px">Attr.</td>
								</tr>
							</thead>
							<xsl:for-each select="t:Skills/t:Skill">
								<xsl:sort select="t:LinkedAttribute"/>
								<xsl:if test="position() mod 2 = 1">
									<tr>
										<td class="input"><xsl:value-of select="@name"/></td>
										<td class="input"><xsl:value-of select="t:Rank"/></td>
										<td class="input"><xsl:value-of select="substring(t:LinkedAttribute,1,3)"/></td>
										
										<td class="input"><xsl:value-of select="following-sibling::t:Skill/@name"/></td>
										<td class="input"><xsl:value-of select="following-sibling::t:Skill/t:Rank"/></td>
										<td class="input"><xsl:value-of select="substring(following-sibling::t:Skill/t:LinkedAttribute,1,3)"/></td>
										
										<td class="input"></td>
										<td class="input"></td>
										<td class="input"></td>
									</tr>
								</xsl:if>
							</xsl:for-each>
							<tfoot>
								<tr>
									<td colspan="9">Fertigkeiten</td>
								</tr>
							</tfoot>
						</table>

						<table cellpadding="0" cellspacing="7" class="volleBreiteTrans">
							<tr>
								<td style="width: auto">
									<table id="edges_flaws" cellspacing="0" class="volleBreiteSub">
										<thead>
											<tr>
												<th>Gabe/Handicap</th>
											</tr>
										</thead>
										<!-- TODO: To be adjusted to the actual schema -->
										<tr>
											<td class="input"> </td>
										</tr>
										<tfoot>
											<tr>
												<td>Gaben und Handicaps</td>
											</tr>
										</tfoot>
									</table>
								</td>
								
								<xsl:if test="count(t:PictureFilename) &gt; 0">
								<td style="width: 220px">
									<table id="charimage" cellpadding="0" cellspacing="0" class="volleBreiteSub">
										<tr>
											<td style="text-align: center">
												<xsl:element name="img">
													<xsl:attribute name="alt">Charakterbild <xsl:value-of select="t:Name"/></xsl:attribute>
													<xsl:attribute name="width">200px</xsl:attribute>
													<xsl:attribute name="src"><xsl:value-of select="t:PictureFilename"/></xsl:attribute>
												</xsl:element>
												</td>
										</tr>
										<tfoot>
											<tr>
												<td>Aussehen/Charakterskizze</td>
											</tr>
										</tfoot>
									</table>
								</td>
								</xsl:if>
								
								<td style="width: 320px">
									<table id="damage_monitor" cellpadding="0" cellspacing="0" class="volleBreiteSub">
										<thead>
											<tr>
												<th> </th>
												<th colspan="3">Körperliche Schadensleiste</th>
												<th> </th>
												<th colspan="3">Geistige Schadensleiste</th>
												<th> </th>
											</tr>
										</thead>
										<tr>
											<xsl:choose>
												<xsl:when test="t:Attributes/t:Attribute[@type='Body']/t:augmentedValue &gt;= 15"><td rowspan="7"> </td></xsl:when>
												<xsl:when test="t:Attributes/t:Attribute[@type='Body']/t:augmentedValue &gt;= 9"><td rowspan="6"> </td></xsl:when>
												<xsl:otherwise><td rowspan="5"> </td></xsl:otherwise>
											</xsl:choose>
											<td class="schadenskasten"> </td>
											<td class="schadenskasten"> </td>
											<td class="schadenskasten">-1</td>
											<xsl:choose>
												<xsl:when test="t:Attributes/t:Attribute[@type='Body']/t:augmentedValue &gt;= 15"><td rowspan="7"> </td></xsl:when>
												<xsl:when test="t:Attributes/t:Attribute[@type='Body']/t:augmentedValue &gt;= 9"><td rowspan="6"> </td></xsl:when>
												<xsl:otherwise><td rowspan="5"> </td></xsl:otherwise>
											</xsl:choose>
											<td class="schadenskasten"> </td>
											<td class="schadenskasten"> </td>
											<td class="schadenskasten">-1</td>
											<xsl:choose>
												<xsl:when test="t:Attributes/t:Attribute[@type='Body']/t:augmentedValue &gt;= 15"><td rowspan="7"> </td></xsl:when>
												<xsl:when test="t:Attributes/t:Attribute[@type='Body']/t:augmentedValue &gt;= 9"><td rowspan="6"> </td></xsl:when>
												<xsl:otherwise><td rowspan="5"> </td></xsl:otherwise>
											</xsl:choose>
										</tr>
										<tr>
											<td class="schadenskasten"> </td>
											<td class="schadenskasten"> </td>
											<td class="schadenskasten">-2</td>
											<td class="schadenskasten"> </td>
											<td class="schadenskasten"> </td>
											<td class="schadenskasten">-2</td>
										</tr>
										<tr>
											<td class="schadenskasten"> </td>
											<td class="schadenskasten"> </td>
											<td class="schadenskasten">-3</td>
											<td class="schadenskasten"> </td>
											<td class="schadenskasten"> </td>
											<td class="schadenskasten">-3</td>
										</tr>
										<tr>
											<xsl:choose>
												<xsl:when test="t:Attributes/t:Attribute[@type='Body']/t:augmentedValue &gt;= 3">
													<td class="schadenskasten"> </td>
												</xsl:when>
												<xsl:otherwise><td> </td></xsl:otherwise>
											</xsl:choose>
											<xsl:choose>
												<xsl:when test="t:Attributes/t:Attribute[@type='Body']/t:augmentedValue &gt;= 5">
													<td class="schadenskasten"> </td>
												</xsl:when>
												<xsl:otherwise>
													<td> </td>
												</xsl:otherwise>
											</xsl:choose>
											<xsl:choose>
												<xsl:when test="t:Attributes/t:Attribute[@type='Body']/t:augmentedValue &gt;= 7">
													<td class="schadenskasten">-4</td>
												</xsl:when>
												<xsl:otherwise>
													<td> </td>
												</xsl:otherwise>
											</xsl:choose>

											<xsl:choose>
												<xsl:when test="t:Attributes/t:Attribute[@type='Willpower']/t:augmentedValue &gt;= 3">
													<td class="schadenskasten"> </td>
												</xsl:when>
												<xsl:otherwise>
													<td> </td>
												</xsl:otherwise>
											</xsl:choose>
											<xsl:choose>
												<xsl:when test="t:Attributes/t:Attribute[@type='Willpower']/t:augmentedValue &gt;= 5">
													<td class="schadenskasten"> </td>
												</xsl:when>
												<xsl:otherwise>
													<td> </td>
												</xsl:otherwise>
											</xsl:choose>
											<xsl:choose>
												<xsl:when test="t:Attributes/t:Attribute[@type='Willpower']/t:augmentedValue &gt;= 7">
													<td class="schadenskasten">-4</td>
												</xsl:when>
												<xsl:otherwise>
													<td> </td>
												</xsl:otherwise>
											</xsl:choose>
										</tr>
										<xsl:if test="t:Attributes/t:Attribute[@type='Body']/t:augmentedValue &gt;= 9">
											<tr>
												<xsl:choose>
													<xsl:when test="t:Attributes/t:Attribute[@type='Body']/t:augmentedValue &gt;= 9">
														<td class="schadenskasten"> </td>
													</xsl:when>
													<xsl:otherwise>
														<td> </td>
													</xsl:otherwise>
												</xsl:choose>
												<xsl:choose>
													<xsl:when test="t:Attributes/t:Attribute[@type='Body']/t:augmentedValue &gt;= 11">
														<td class="schadenskasten"> </td>
													</xsl:when>
													<xsl:otherwise>
														<td> </td>
													</xsl:otherwise>
												</xsl:choose>
												<xsl:choose>
													<xsl:when test="t:Attributes/t:Attribute[@type='Body']/t:augmentedValue &gt;= 13">
														<td class="schadenskasten">-5</td>
													</xsl:when>
													<xsl:otherwise>
														<td> </td>
													</xsl:otherwise>
												</xsl:choose>
												<td class="kommentartext" colspan="3">8 + (Willenskraft/2) Kästchen</td>
											</tr>
										</xsl:if>
										<xsl:if test="t:Attributes/t:Attribute[@type='Body']/t:augmentedValue &gt;= 15">
											<tr>
												<xsl:choose>
													<xsl:when test="t:Attributes/t:Attribute[@type='Body']/t:augmentedValue &gt;= 15">
														<td class="schadenskasten"> </td>
													</xsl:when>
													<xsl:otherwise>
														<td> </td>
													</xsl:otherwise>
												</xsl:choose>
												<xsl:choose>
													<xsl:when test="t:Attributes/t:Attribute[@type='Body']/t:augmentedValue &gt;= 17">
														<td class="schadenskasten"> </td>
													</xsl:when>
													<xsl:otherwise>
														<td> </td>
													</xsl:otherwise>
												</xsl:choose>
												<xsl:choose>
													<xsl:when test="t:Attributes/t:Attribute[@type='Body']/t:augmentedValue &gt;= 19">
														<td class="schadenskasten">-6</td>
													</xsl:when>
													<xsl:otherwise>
														<td> </td>
													</xsl:otherwise>
												</xsl:choose>
												<td colspan="3"></td>
											</tr>
										</xsl:if>
										<tr>
											<td class="kommentartext" colspan="3">8 + (Konstitution/2) Kästchen</td>
											<xsl:choose>
												<xsl:when test="t:Attributes/t:Attribute[@type='Body']/t:augmentedValue &gt;= 9">
													<td colspan="3"></td>
												</xsl:when>
												<xsl:otherwise>
													<td class="kommentartext" colspan="3">8 + (Willenskraft/2) Kästchen</td>
												</xsl:otherwise>
											</xsl:choose>
										</tr>
										<tfoot>
											<tr>
												<td colspan="9">Zustandsmonitor</td>
											</tr>
										</tfoot>
									</table>
								</td>
							</tr>
						</table>

					</div>
				</div>
			</body>
		</html>

	</xsl:template>
</xsl:stylesheet>
