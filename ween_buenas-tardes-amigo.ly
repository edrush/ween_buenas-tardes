\include "header.ly"
\include "harmonies.ly"
\include "solo.ly"

\score {

    <<
        \new ChordNames {
            % \set chordChanges = ##t
            \chordmode { \harmonies }
         }
         \new Staff \with {
               midiInstrument = #"overdriven guitar"
             }
             \solo
   >>

   \layout {}
   \midi {
        \tempo 8 = 144
   }
}
