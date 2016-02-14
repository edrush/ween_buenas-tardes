\include "header.ly"
\include "harmonies.ly"
\include "solo.ly"

\score {

    <<
        \new ChordNames {
            % \set chordChanges = ##t
            \chordmode { \transpose c, d, { \harmonies} }
         }
        \new Staff \with {
             midiInstrument = #"clarinet"
             instrumentName = \markup { Cl (B\flat) }
        } { \transpose c, d, { \solo}
   }
   >>

   \layout {}
   \midi {}
}
