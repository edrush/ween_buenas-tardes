\include "header.ly"
\include "harmonies.ly"
\include "solo.ly"

\score {

    <<
        \new ChordNames {
            % \set chordChanges = ##t
            \chordmode { \harmonies }
         }
        \new Staff {
            \solo
   }
   >>

   \layout {}
   \midi {}
}
