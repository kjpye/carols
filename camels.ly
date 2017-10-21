\version "2.18.2"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

global = {
  \key g \major
  \time 4/4
}

sopMusic = \relative c' {
    \partial 8 b8^\mf
  \repeat volta 3 {
    \set melismaBusyProperties = #'()
    \slurUp
    \slurDashed
    e8(e4) e8 fis4 fis
    \unset melismaBusyProperties
    g4 fis e d
    e8 e4. fis4 d
    b2. b4
    e4. e8 fis4 fis
    g4 a b c
    \set melismaBusyProperties = #'()
    \slurUp
    \slurDashed
    b8 g4(g8) a4 fis
    \unset melismaBusyProperties
    e2. r4
    \time 6/8 % \tempo 4 = 4.
    d'4^\mp d8 b8. c16 d8
    c8. b16 a8 b b a
    g4 g8 g4 e8
    g4. r
    d'4^\pp d8 b8. c16 d8
    c8. b16 a8 b b a
    g4 g8 g4 e8
    g4. b8
  }
}

altoMusic = \relative c' {
  \partial 8 b8
  \repeat volta 3 {
    \set melismaBusyProperties = #'()
    \slurDown
    \slurDashed
    b8(b4) b8 d4 d
    \unset melismaBusyProperties
    e4 d c b
    b8 b4. d4 d
    b2. b4
    b4. b8 d4 d
    e4 e d g
    \set melismaBusyProperties = #'()
    \slurDown
    \slurDashed
    g8 d4(d8) e4 e
    \unset melismaBusyProperties
    e2. r4
    \time 6/8
    fis4 fis8 g8. fis16 g8
    fis8. g16 fis8 fis fis fis
    e4 e8 e4 d8
    d4. r
    fis4 fis8 g8. fis16 g8
    fis8. g16 fis8 fis fis fis
    e4 e8 e4 d8
    d4. b8
  }
}

tenorMusic = \relative c' {
    \partial 8 g8^\mf
  \repeat volta 3 {
    \set melismaBusyProperties = #'()
    \slurUp
    \slurDashed
    g8(g4) g8 a4 a
    \unset melismaBusyProperties
    b4 g a fis
    g8 g4. a4 fis
    g2. g4
    g4. g8 a4 a
    b4 c b c
    \set melismaBusyProperties = #'()
    \slurUp
    \slurDashed
    d8 b4(b8) c4 d
    \unset melismaBusyProperties
    b2. r4
    \time 6/8
    b4^\mp b8 b8. a16 b8
    c8. d16 e8 b b b
    b4 b8 b4 b8
    b4. r
    b4^\pp b8 b8. a16 b8
    c8. d16 e8 b b b
    b4 b8 b4 b8
    b4. g8
  }
}

bassMusic = \relative c {
    \partial 8 e8
  \repeat volta 3 {
    \set melismaBusyProperties = #'()
    \slurDown
    \slurDashed
    e8(e4) e8 d4 d
    \unset melismaBusyProperties
    c4 c a b
    e8 c4. b4 b
    c2. e4
    e4. e8 d4 d
    c4 c g' e
    \set melismaBusyProperties = #'()
    \slurDown
    \slurDashed
    d8 d4(d8) d4 d
    \unset melismaBusyProperties
    e2. r4
    \time 6/8
    b4 b8 e8. e16 e8
    e8. e16 e8 dis dis b
    e4 d8 c4 c8
    g'4. r
    b,4 b8 e8. e16 e8
    e8. e16 e8 dis dis b
    e4 d8 c4 c8
    g'4. e8
  }
}

firstverse = \lyricmode {
  \set stanza = "1. "
  The cam- els that bore the Wise Men Three
  That star ry win- ter night
  _ Fol- lowed, sway- ing si- lent- ly
  A heav'n- ly _ sil- ver light.
}

chorus = \lyricmode {
  Gent- ly rock- ing they ten- der- ly car- ried the Kings to Beth- le- hem.
  Gent- ly rock- ing they ten- der- ly car- ried the Kings to Beth- le- hem.
}

Mfirstverse =\lyricmode {
  "\The " "cam" "els " "that " "bore " "the " "Wise " "Men " "Three "
  "/That " "star " "ry " "win" "ter " "night "
  _ "/Fol" "lowed, " "sway" "ing " "si" "lent" "ly "
  "/A " "heav'n" "ly " _ "sil" "ver " "light. "
}

secondverse = \lyricmode {
  \set stanza = "2. "
  They car- ried the Kings through field and wood
  Of ced- ar, pine and fir,
  _ Bring- ing gifts to One so good
  Of frank- in- _ cense and myrrh.
}

Msecondverse = \lyricmode {
  "\They " car "ried " "the " "Kings " "through " "field " "and " "wood "
  "/Of " ced "ar, " "pine " "and " "fir, "
  _ "/Bring" "ing " "gifts " "to " "One " "so " "good "
  "/Of " frank in _ "cense " "and " "myrrh. "
}

thirdverse = \lyricmode {
  \set stanza = "3. "
  They knelt, _ be- side the new born Child
  While an- ges sang a- bove,
  And saw with- in the man- ger mild
  The prom- ise of peace and love.
}

Mthirdverse = \lyricmode {
  "\They " "knelt, " "_ " "be- " "side " "the " "new " "born " "Child "
  "/While " "an- " "ges " "sang " "a- " "bove, "
  "/And " "saw " "with- " "in " "the " "man- " "ger " "mild "
  "/The " "prom- " "ise " "of " "peace " "and " "love. "
}

\book
{
  \header {
    title = "The Camels' Carol"
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
      >> % staff women
      \new Lyrics = "firstverse" \lyricsto "sopranos" {
        <<
          {\firstverse}
          \new Lyrics = "secondverse"
	    \with { alignBelowContext = #"firstverse" }
	    {\set associatedVoice = "sopranos" {\secondverse}}
          \new Lyrics = "thirdverse"
	    \with { alignBelowContext = #"secondverse" }
	    {\set associatedVoice = "sopranos" {\thirdverse}}
        >> % lyrics
        \chorus
      }
      \context Staff = men <<
	\clef bass
	\context Voice =
	tenors { \voiceOne {\global \tenorMusic } }
	\context Voice =
	basses { \voiceTwo {\global \bassMusic } }
      >> % staff men
    >> % choirstaff
    
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
	sopranos { \voiceOne { \global \unfoldRepeats \sopMusic } }
      >>
      \context Staff = altos <<
        \set Staff.midiInstrument = #"clarinet"
	\context Voice =
	altos { \voiceTwo { \global \unfoldRepeats \altoMusic } }
      >>
      \context Lyrics = firstverse { s1 }
      \context Lyrics = secondverse { s1 }
      \context Lyrics = thirdverse { s1 }
      \context Staff = tenors <<
        \set Staff.midiInstrument = #"oboe"
	\clef bass
	\context Voice =
	tenors { \voiceOne {\global \unfoldRepeats \tenorMusic } }
      >>
      \context Staff = basses <<
        \set Staff.midiInstrument = #"bassoon"
	\clef bass
	\context Voice =
	basses { \voiceTwo {\global \unfoldRepeats \bassMusic } }
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
