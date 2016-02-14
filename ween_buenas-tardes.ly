\include "header.ly"

harmonies = \chordmode {
\global
    a2.:m g a:m a:m
    a:m g a:m a:m
    a:m g d:m d:m
    a:m e:m a:m a:m
    }
solo = \relative c' {
            \global
            e8 d c2 d8 c b4. c8 a2.~ a2.
            e'8 d c2 d8 c b4. c8 a2.~ a2.
            c2. d2. f2.~f2.
            c'8 b a2 g2 ~g8 b8 a2.~a2.
        }

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
