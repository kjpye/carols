\version "2.18.2"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title = "The Bell Doth Toll"
  copyright = \today
}

global = {
  \key f \major
  \time 4/4
  \tempo 4=120
}

melody = \relative c'' {
  \partial 4 c4\mark "A"
  \repeat volta 3 {
    a4. bes8 c4 c
    a4. bes8 c4 d
    c4 bes a g
    a2. a4\mark "B"
    f4. g8 a a a a
    f4. g8 a a bes bes
    a4 g f e
    f2. r4
    f2. r4\mark "C"
    f2. r4
    f2 c
    f2. c'4
  }
}

firstverse = \lyricmode {
  The bell doth toll, Its echo- es roll, I know the sound full well;
  I love its ring- ing, For it calls to sing- ing,
  With its bim, bim, bim, bom bell.
  Bim, bom, bim, bom, bell
  The
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
	\context Lyrics = firstverse \lyricsto sopranos \firstverse
    >>
    \layout {
    }
  }
  \score { % this version for the midi output
    <<
	\context Staff = melody <<
	  \context Voice =
	  sopranos { \set midiInstrument = #"clarinet"
		     \oneVoice { \global \unfoldRepeats \melody} }
	>>
	\context Lyrics = firstverse { s1 }
        \context Lyrics = firstverse \lyricsto sopranos \Mwords
    >>
    \midi {
    }
%    \layout {}
  }
}
