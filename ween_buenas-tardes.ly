\include "header.ly"

harmonies = \chordmode {a1:m a1:m g g a1:m a1:m}
solo = \relative c' {
            \global
            e4 d c
        }

\score {

    <<
        \new ChordNames {
            \set chordChanges = ##t
            \chordmode { \harmonies }
         }
        \new Staff {
            \solo
   }
   >>

   \layout {}
   \midi {}
}
