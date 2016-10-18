\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title = "Go Tell It on the Mountain"
  copyright = \today
}

global = {
  \key d \major
  \time 4/4
  \tempo 4=120
}

melody = \relative c' {
  r1
  r1
  \repeat volta 3 {
    \repeat volta 2 {
      fis2 fis8 e d b
      a2 d
      fis8 fis(fis) e fis4 d
      fis4 a b8(a fis e)
      fis2 fis8 e d b
      a2 d4 g
      fis4. d8 e4. e8
      d1
    }
    fis8^\markup{FINE} a a b a fis4 d8
    e8 d d e fis a4 d,8
    fis8 a a b a fis4 d8
    e8 d d b a2
  }
}

melodyBass = \relative c {
  d4(b8 a) r a b a %1
  cis4(b8 a~a2)
  \repeat volta 3 {
    \repeat volta 2 {
      d4^\markup{\musicglyph #"scripts.segno"}( b8 a) r a b a
      cis4(b8 a~a2)
      d4(b8 a) r a b a %5
      d4 cis b a
      d4(b8 a) r a b a
      d4(b8 a~a4)b
      d4. a8 cis4. cis8
      d4(cis b a) %10
    }
    d4(cis b a)
    d4(cis b a)
    d4(cis b a)
    cis4(b a2^\markup{D.S. al FINE})
  }
  %gis2^\markup{\musicglyph #"scripts.segno"} gis8 fis e cis
  %e2.^\fermata^\markup{D.S. al FINE}
}

accBass = \relative c {
  <fis a>1
  q1
  \repeat volta 3 {
    \repeat volta 2 {
      q1
      q1
      <e a>1
      <fis a>1
      q1
      q2. g4
      q2 a2
      q1
    }
    q1
    <e a> 1
    <fis b>1
    <fis a>2 e
  }
}

refrain = \lyricmode {
  Go tell it on the moun- tain,
  O- ver the hills and ev- 'ry- where,
  Go tell it on the moun- tain
  That Je- sus Christ is born.
}

emptyrefrain = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
}

firstverse = \lyricmode {
  \set stanza = "1. "
  When I _ was a sin- ner
  I prayed bot night and day
  I asked the Lord to help me
  and He showed me the way
}

secondverse = \lyricmode {
  \set stanza = "2. "
  While shep- herds kept their watch- ing
  O'er wand' ring flocks by night
  Be- hold from out the Heav- ens
  There shone a Ho- ly light
}

thirdverse = \lyricmode {
  \set stanza = "3. "
  He made _ me a watch- man
  Up- on the cit- y wall
  And if I am a christ- ian
  I am the least of all
}

basswords = \lyricmode {
  Go Go tell it Go
  Go Go tell it Go
  Go Go tell it e- very where where
  Go Go tell it Go that Je- sus Christ is born
  Go Go Go Go
}

Mwords =\lyricmode {
  "Go " "tell " "it " "on " "the " "moun" "tain,"
  "/O" "ver " "the " "hills " "and " "ev" "'ry" "where,"
  "/Go " "tell " "it " "on " "the " "moun" "tain"
  "/That " "Je" "sus " "Christ " "is " "born."
  "\Go " "tell " "it " "on " "the " "moun" "tain,"
  "/O" "ver " "the " "hills " "and " "ev" "'ry" "where,"
  "/Go " "tell " "it " "on " "the " "moun" "tain"
  "/That " "Je" "sus " "Christ " "is " "born."
  "\Down " "in " "a " "lone" "ly " "man" "ger,"
  "/The " "hum" "ble " "Christ " "was " "born,"
  "/And " "God " "sent " "out " "sal" "va" "tion"
  "/That " "bless" "ed " "Christ" "mas " "morn."
  "\Go " "tell " "it " "on " "the " "moun" "tain,"
  "/O" "ver " "the " "hills " "and " "ev" "'ry" "where,"
  "/Go " "tell " "it " "on " "the " "moun" "tain"
  "/That " "Je" "sus " "Christ " "is " "born."
  "\While " "shep" "herds " "kept " "their " "watch, " ""
  "/O'er " "si" "lent " "flocks " "by " "night,"
  "/Be " "hold! " "through" "out " "the " "heav" "ens"
  "/There " "shone " "a " "ho" "ly " "light."
  "\Go " "tell " "it " "on " "the " "moun" "tain,"
  "/O" "ver " "the " "hills " "and " "ev" "'ry" "where,"
  "/Go " "tell " "it " "on " "the " "moun" "tain"
  "/That " "Je" "sus " "Christ " "is " "born."
}

\book
{
  \score { % this version for the printed page
    <<
%      \new ChordNames {
%	\set chordChanges = ##t
%        \guitar
%      }
	\context Staff = melody <<
	  \context Voice =
	  sopranos { \set midiInstrument = #"clarinet"
		     \oneVoice << \global \melody >> }
	>>
	\context Lyrics = firstverse { s1 }
	\context Lyrics = secondverse { s1 }
	\context Lyrics = thirdverse { s1 }
	\context Staff = bass <<
	  \clef bass
          \context Voice = acc  { \voiceTwo \global \accBass }
	  \context Voice = bass { \voiceTwo \global \melodyBass }
	>>
        \context Lyrics = basswords { s1 }
	\context Lyrics = firstverse \lyricsto sopranos {\refrain \firstverse}
	\context Lyrics = secondverse \lyricsto sopranos {\emptyrefrain \secondverse}
	\context Lyrics = thirdverse \lyricsto sopranos {\emptyrefrain \thirdverse}
	\context Lyrics = basswords \lyricsto bass {\basswords}
    >>
    \layout {
    }
  }
  \score { % this version for the midi output
    <<
	\context Staff = melody <<
	  \context Voice =
	  sopranos { \set midiInstrument = #"clarinet"
		     \oneVoice { \global \unfoldRepeats \melody \melodyBass } }
	>>
	\context Lyrics = firstverse { s1 }
        \context Staff = bass <<
          \clef bass
          \context Voice = bass { \global \unfoldRepeats \accBass \accBass }
        >>
        \context Lyrics = firstverse \lyricsto sopranos \Mwords
    >>
    \midi {
    }
%    \layout {}
  }
}