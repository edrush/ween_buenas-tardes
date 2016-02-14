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
            c2~c8 d8 e2. f2.~f2.
            c'8 b a2 g4. b4. a2.~a2.
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
