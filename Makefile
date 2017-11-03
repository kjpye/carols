%.pdf %.kar %.mp3: %.ly
	lilypond $<
	timidity -Or -o - $*.midi | lame -r - $*.mp3
	-mv $*.midi $*.kar

carols: adam boychild calypso coventry emmanuel faithful gaudete hark infantholy joy kings littletown manger merry royal silentnight wassail maria holly_ivy deckthehalls gotell bells coming shepherds wenceslas gotell2 belltoll jubilate camels gaudeamus camels

shanties: blowthemandown southaustralia highbarbary drunkensailor

all: carols shanties

blowthemandown: blowthemandown.pdf blowthemandown.kar

blowthemandown.kar blowthemandown.pdf: blowthemandown.ly

southaustralia: southaustralia.pdf southaustralia.kar

southaustralia.kar southaustralia.pdf: southaustralia.ly

highbarbary: highbarbary.pdf highbarbary.kar

highbarbary.kar highbarbary.pdf: highbarbary.ly

drunkensailor: drunkensailor.pdf drunkensailor.kar

drunkensailor.kar drunkensailor.pdf: drunkensailor.ly

boychild: boychild.pdf boychild.kar boychild.mp3 boychild-melody.mp3 boychild-harmony.mp3

boychild.kar boychild.pdf boychild.mp3 boychild-melody.mp3 boychild-harmony.mp3: boychild.ly
	lilypond boychild.ly
	timidity -Or -o - boychild.midi   | lame -r - boychild.mp3
	timidity -Or -o - boychild-1.midi   | lame -r - boychild-melody.mp3
	timidity -Or -o - boychild-2.midi   | lame -r - boychild-harmony.mp3
	mv boychild.midi boychild.kar
	rm boychild-[12].midi

calypso: calypso.pdf

calypso.pdf: calypso.ly

coventry: coventry.pdf coventry.kar

coventry.kar coventry.pdf: coventry.ly

emmanuel: emmanuel.pdf emmanuel.kar

emmanuel.kar emmanuel.pdf: emmanuel.ly

gaudete: gaudete.pdf gaudete.kar

gaudete.kar gaudete.pdf: gaudete.ly

hark: hark.pdf hark.kar

hark.kar hark.pdf: hark.ly

kings: kings.pdf kings.kar

kings.kar kings.pdf: kings.ly

littletown: littletown.pdf littletown.kar

littletown.kar littletown.pdf: littletown.ly

manger: manger.pdf manger.kar

manger.kar manger.pdf: manger.ly

merry: merry.pdf merry.kar

merry.kar merry.pdf: merry.ly

quempastores: quempastores.pdf quempastores.kar

quempastores.kar quempastores.pdf: quempastores.ly

royal: royal.pdf royal.kar

royal.kar royal.pdf: royal.ly

silentnight: silentnight.pdf silentnight.kar

silentnight.kar silentnight.pdf: silentnight.ly

shepherds: shepherds.pdf

shepherds.pdf: shepherds.ly

sussex: sussex.pdf sussex.kar

sussex.kar sussex.pdf: sussex.ly

holly_ivy: holly_ivy.pdf holly_ivy.pdf

holly_ivy.kar holly_ivy.pdf: holly_ivy.ly

deckthehalls: deckthehalls.pdf

deckthehalls.pdf: deckthehalls.ly

faithful: faithful.pdf faithful-descant.kar faithful-soprano.kar faithful-alto.kar faithful-tenor.kar faithful-bass.kar

faithful.pdf faithful-descant.kar faithful-soprano.kar faithful-alto.kar faithful-tenor.kar faithful-bass.kar: faithful.ly
	lilypond faithful.ly
	timidity -Or -o - faithful.midi | lame -r - faithful.mp3
	mv faithful.midi faithful-descant.kar
	mv faithful-1.midi faithful-soprano.kar
	mv faithful-2.midi faithful-alto.kar
	mv faithful-3.midi faithful-tenor.kar
	mv faithful-4.midi faithful-bass.kar

joy: joy.pdf joy-women.kar joy-tenor.kar joy-bass.kar

joy.pdf joy-women.kar joy-tenor.kar joy-bass.kar: joy.ly
	lilypond joy.ly
	timidity -Or -o - joy.midi | lame -r - joy.mp3
	mv joy.midi joy-women.kar
	mv joy-1.midi joy-tenor.kar
	mv joy-2.midi joy-bass.kar

adam: AdamLayYbounden.pdf AdamLayYbounden.kar

AdamLayYbounden.pdf AdamLayYbounden.kar: AdamLayYbounden.ly
	lilypond AdamLayYbounden
	timidity -Or -o - AdamLayYbounden.midi | lame -r - AdmaLayYbounden.mp3
	mv AdamLayYbounden.midi AdamLayYbounden-sop.kar
	mv AdamLayYbounden-1.midi AdamLayYbounden-alto.kar
	mv AdamLayYbounden-2.midi AdamLayYbounden-ten.kar
	mv AdamLayYbounden-3.midi AdamLayYbounden-bass.kar

wassail: wassail.pdf wassail.kar wassail-bass.kar

wassail.pdf wassail.kar wassail-bass.kar: wassail.ly
	lilypond wassail
	timidity -Or -o - wassail.midi | lame -r - wassail.mp3
	mv wassail.midi wassail.kar
	mv wassail-1.midi wassail-bass.kar

infantholy: infantholy.pdf infantholy.kar

infantholy.kar infantholy.pdf: infantholy.ly
	lilypond infantholy
	timidity -Or -o - infantholy.midi | lame -r - infantholy.mp3
	mv infantholy.midi infantholy-sop.kar
	mv infantholy-1.midi infantholy-alto.kar
	mv infantholy-2.midi infantholy-tenor.kar
	mv infantholy-3.midi infantholy-bass.kar

maria: maria.pdf maria.kar

maria.kar maria.pdf: maria.ly
	lilypond maria
	timidity -Or -o - maria.midi | lame -r - maria.mp3
	mv maria.midi maria-sopten.kar
	mv maria-1.midi maria-altobass.kar

gotell: gotell.pdf gotell.kar

gotell.kar gotell.pdf: gotell.ly
	lilypond gotell
	timidity -Or -o - gotell.midi | lame -r - gotell.mp3
	mv gotell.midi gotell.kar

gotell2: gotell2.pdf gotell2.kar

gotell2.kar gotell2.pdf: gotell2.ly
	lilypond gotell2
	timidity -Or -o - gotell2.midi | lame -r - gotell2.mp3
	mv gotell2.midi gotell2.kar
	mv gotell2-1.midi gotell2-bass.kar

jubilate: jubilate.pdf jubilate.kar

jubilate.kar jubilate.pdf: jubilate.ly
	lilypond jubilate
	timidity -Or -o - jubilate.midi | lame -r - jubilate.mp3
	mv jubilate.midi jubilate.kar

belltoll: belltoll.pdf belltoll.kar

belltoll.kar belltoll.pdf: belltoll.ly
	lilypond belltoll
	timidity -Or -o - belltoll.midi | lame -r - belltoll.mp3
	mv belltoll.midi belltoll.kar

bells: bells.pdf bells.kar

bells.kar bells.pdf: bells.ly
	lilypond bells
	timidity -Or -o - bells.midi | lame -r - bells.mp3
	mv bells.midi bells1.kar
	mv bells-1.midi bells2.kar

coming: coming.pdf coming.kar

wenceslas: wenceslas.pdf wenceslas.kar wenceslas.mp3 wenceslas-sop.mp3 wenceslas-alto.mp3 wenceslas-tenor.mp3 wenceslas-bass.mp3

wenceslas.pdf wenceslas.kar wenceslas.mp3 wenceslas-sop.mp3 wenceslas-alto.mp3 wenceslas-tenor.mp3 wenceslas-bass.mp3: wenceslas.ly
	lilypond wenceslas
	timidity -Or -o - wenceslas.midi   | lame -r - wenceslas.mp3
	timidity -Or -o - wenceslas-1.midi | lame -r - wenceslas-sop.mp3
	timidity -Or -o - wenceslas-2.midi | lame -r - wenceslas-alto.mp3
	timidity -Or -o - wenceslas-3.midi | lame -r - wenceslas-tenor.mp3
	timidity -Or -o - wenceslas-4.midi | lame -r - wenceslas-bass.mp3
	mv wenceslas.midi wenceslas.kar
	rm wenceslas-[1234].midi

camels: camels.pdf camels.kar camels.mp3 camels-sop.mp3 camels-alto.mp3 camels-tenor.mp3 camels-bass.mp3

camels.pdf camels.kar camels.mp3 camels-sop.mp3 camels-alto.mp3 camels-tenor.mp3 camels-bass.mp3: camels.ly
	lilypond camels
	timidity -Or -o - camels.midi   | lame -r - camels.mp3
	timidity -Or -o - camels-1.midi | lame -r - camels-sop.mp3
	timidity -Or -o - camels-2.midi | lame -r - camels-alto.mp3
	timidity -Or -o - camels-3.midi | lame -r - camels-tenor.mp3
	timidity -Or -o - camels-4.midi | lame -r - camels-bass.mp3
	mv camels.midi camels.kar
	rm camels-[1234].midi

gaudeamus: gaudeamus.pdf gaudeamus.kar

coming.kar coming.pdf: coming.ly
	lilypond coming
	timidity -Or -o - coming.midi | lame -r - coming.mp3
	mv coming.midi coming1.kar
	mv coming-1.midi coming2.kar
	mv coming-2.midi coming3.kar







