\version "2.18.2"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

global = {
  \key g \major
  \time 4/4
}

sopMusic = \relative c' {
  \repeat volta 3 {
    \partial 8 b8^\mf
    e8 e4 e8 fis4 fis
    g4 fis e d
    e8 e4. fis4 d
    b2. b4
    e4. e8 fis4 fis
    g4 a b c
    b8 g4 g8 a4 fis
    e2. r4
    \time 6/8 % \tempo 4 = 4.
    d'4^\mp d8 b8. c16 d8
    c8. b16 a8 b b a
    g4 g8 g4 e8
    g4. r
    d'4^\pp d8 b8. c16 d8
    c8. b16 a8 b b a
    g4 g8 g4 e8
    g4. r
  }
}

altoMusic = \relative c' {
  \repeat volta 3 {
    \partial 8 b8
    b8 b4 b8 d4 d
    e4 d c b
    b8 b4. d4 d
    b2. b4
    b4. b8 d4 d
    e4 e d g
    g8 d4 d8 e4 e
    e2. r4
    \time 6/8
    fis4 fis8 g8. fis16 g8
    fis8. g16 fis8 fis fis fis
    e4 e8 e4 d8
    d4. r
    fis4 fis8 g8. fis16 g8
    fis8. g16 fis8 fis fis fis
    e4 e8 e4 d8
    d4. r
  }
}

tenorMusic = \relative c' {
  \repeat volta 3 {
    \partial 8 g8^\mf
    g8 g4 g8 a4 a
    b4 g a fis
    g8 g4. a4 fis
    g2. g4
    g4. g8 a4 a
    b4 c b c
    d8 b4 b8 c4 d
    b2. r4
    \time 6/8
    b4^\mp b8 b8. a16 b8
    c8. d16 e8 b b b
    b4 b8 b4 b8
    b4. r
    b4^\pp b8 b8. a16 b8
    c8. d16 e8 b b b
    b4 b8 b4 b8
    b4. r
  }
}

bassMusic = \relative c {
  \repeat volta 3 {
    \partial 8 e8
    e8 e4 e8 d4 d
    c4 c a b
    e8 c4. b4 b
    c2. e4
    e4. e8 d4 d
    c4 c g' e
    d8 d4 d8 d4 d
    e2. r4
    \time 6/8
    b4 b8 e8. e16 e8
    e8. e16 e8 dis dis b
    e4 d8 c4 c8
    g'4. r
    b,4 b8 e8. e16 e8
    e8. e16 e8 dis dis b
    e4 d8 c4 c8
    g'4. r
  }
}

firstverse = \lyricmode {
  \set stanza = "1. "
  The cam- els that bore the Wise Men Three
  That star ry win- ter night
  _ Fol- lowed, sway- ing si- lent- ly
  A heav'n- ly _ sil- ver light.
  Gent- ly rock- ing they ten- der- ly car- ried the Kings to Beth- le- hem.
  Gent- ly rock- ing they ten- der- ly car- ried the Kings to Beth- le- hem.
}

Mfirstverse =\lyricmode {
  "/Si" "lent " "night, " "ho" "ly " "night,"
  "/all " "is " "calm, " "all " "is " "bright"
  "/round " "yon " "vir" "gin " "moth" "er " "and " "child."
  "/Ho" "ly " "in" "fant " "so " "ten" "der " "and " "mild,"
  "/sleep " "in " "heav" "en" "ly " "peace,"
  "/sleep " "in " "heav" "en" "ly " "peace."
}

secondverse = \lyricmode {
  \set stanza = "2. "
  They car- ried the Kings through field and wood
  Of ced- ar, pine and fir,
  _ Bring- ing gifts to One so good
  Of frank- in- _ cense and myrrh.
}

Msecondverse = \lyricmode {
  "\Si" "lent " "night, " "ho" "ly " "night,"
  "/shep" "herds " "quake " "at " "the " "sight,"
  "/glo" "ries " "stream " "from " "heav" "en " "a" "far,"
  "/heav'n" "ly " "hosts " "" "sing " "al" "le" "lu" "ia."
  "/Christ " "the " "Sav" "iour " "is " "born,"
  "/Christ " "the " "Sav" "iour " "is " "born!"
}

thirdverse = \lyricmode {
  \set stanza = "3. "
  They knelt, _ be- side the new born Child
  While an- ges sang a- bove,
  And saw with- in the man- ger mild
  The prom- ise of peace and love.
}

Mthirdverse = \lyricmode {
  "\Si" "lent " "night, " "ho" "ly " "night,"
  "/Son " "of " "God, " "love's " "pure " "light"
  "/ra" "diant " "beams " "from " "thy " "ho" "ly " "face"
  "/with " "the " "dawn " "of " "re" "deem" "" "ing " "grace,"
  "/Je" "sus, " "Lord " "at " "thy " "birth,"
  "/Je" "sus, " "Lord " "at " "thy " "birth."
}

\book
{
  \header {
    title = "A Camels' Carol"
    composer = "Rick Asher"
    poet = "Robert Bode"
    copyright = \today
  }
  \score {
    \context ChoirStaff <<
      \context Staff = women <<
	\context Voice =
	sopranos { \voiceOne { \global \sopMusic } }
	\context Voice =
	altos { \voiceTwo { \global \altoMusic } }
      >>
      \context Lyrics = firstverse { s1 }
      \context Lyrics = secondverse { s1 }
      \context Lyrics = thirdverse { s1 }
      \context Staff = men <<
	\clef bass
	\context Voice =
	tenors { \voiceOne {\global \tenorMusic } }
	\context Voice =
	basses { \voiceTwo {\global \bassMusic } }
      >>
      \context Lyrics = firstverse \lyricsto sopranos \firstverse
      \context Lyrics = secondverse \lyricsto sopranos \secondverse
      \context Lyrics = thirdverse \lyricsto sopranos \thirdverse
    >>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      }
    }
  }
  \score {
    <<
    % \context ChoirStaff <<
      \context Staff = sopranos <<
        \set Staff.midiInstrument = #"flute"
	\context Voice =
	sopranos { \voiceOne { \global R2. \unfoldRepeats \sopMusic } }
      >>
      \context Staff = altos <<
        \set Staff.midiInstrument = #"clarinet"
	\context Voice =
	altos { \voiceTwo { \global R2. \unfoldRepeats \altoMusic } }
      >>
      \context Lyrics = firstverse { s1 }
      \context Lyrics = secondverse { s1 }
      \context Lyrics = thirdverse { s1 }
      \context Staff = tenors <<
        \set Staff.midiInstrument = #"oboe"
	\clef bass
	\context Voice =
	tenors { \voiceOne {\global R2. \unfoldRepeats \tenorMusic } }
      >>
      \context Staff = basses <<
        \set Staff.midiInstrument = #"bassoon"
	\clef bass
	\context Voice =
	basses { \voiceTwo {\global R2. \unfoldRepeats \bassMusic } }
      >>
      \context Lyrics = firstverse \lyricsto basses { \Mfirstverse \Msecondverse \Mthirdverse }
    >>
    
    \midi {
      \context {
	\Staff
	\remove "Staff_performer"
      }
      \context {
	\Voice
	\consists "Staff_performer"
      }
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
    }
  }
}
