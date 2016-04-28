\include "header.ly"
\include "harmonies.ly"
\include "solo.ly"
\include "bass.ly"
\include "drum.ly"
\include "guitar.ly"


\score {

    <<
    \new ChordNames {
        % \set chordChanges = ##t
        \chordmode { \harmonies }
     }
     \new Staff \with {
           midiInstrument = #"overdriven guitar"
           instrumentName = #"Solo guitar "
           shortInstrumentName = #"Solo"
         }
     \solo
     \new Staff \with {
           instrumentName = #"Contrabass "
           shortInstrumentName = #"Cb."
           midiInstrument = #"contrabass"
           midiMaximumVolume = #0.8
         } \bass
     \new Staff \with {
            midiInstrument = #"acoustic guitar (nylon)"
            instrumentName = #"Guitar "
            shortInstrumentName = #"Guit."
          } \guitar
     \new DrumStaff {
       \drummode {
         \drum
       }
     }
    >>

   \layout {}
   \midi {}
}
