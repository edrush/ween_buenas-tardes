\include "header.ly"
\include "harmonies.ly"
\include "solo.ly"

\score {

    <<
        \new ChordNames {
            % \set chordChanges = ##t
            \chordmode { \transpose c, a, { \harmonies} }
         }
        \new Staff \with {
             midiInstrument = #"tenor sax"
             instrumentName = \markup {Saxo. (E\flat) }
        } { \transpose c, a, { \solo}
   }
   >>

   \layout {}
   \midi {}
}
