\include "lilypond-book-preamble.ly"
\include "predefined-ukulele-fretboards.ly"
#(set-global-staff-size %{OOoLilyPondStaffSize%}20%{OOoLilyPondEnd%})


\storePredefinedDiagram #default-fret-table \chordmode {c:5^3}     #ukulele-tuning   #"o;o;3;3;"
\storePredefinedDiagram #default-fret-table \chordmode {c:4+.5^3}  #ukulele-tuning   #"o;o;2;3;"
\storePredefinedDiagram #default-fret-table \chordmode {d:aug}     #ukulele-tuning   #"3;2;2;1;"
\storePredefinedDiagram #default-fret-table \chordmode {d:sus4}    #ukulele-tuning   #"2;2;3;o;"
\storePredefinedDiagram #default-fret-table \chordmode {d:7}       #ukulele-tuning   #"2;o;2;o;"
\storePredefinedDiagram #default-fret-table \chordmode {e:m}       #ukulele-tuning   #"o;4;3;2;"
\storePredefinedDiagram #default-fret-table \chordmode {e':7}      #ukulele-tuning   #"4-(;4;4-);5;"
\storePredefinedDiagram #default-fret-table \chordmode {f:7}       #ukulele-tuning   #"2;3;1;o;"
\storePredefinedDiagram #default-fret-table \chordmode {fis,}      #ukulele-tuning   #"x;1;2;1;"
\storePredefinedDiagram #default-fret-table \chordmode {fis'}      #ukulele-tuning   #"6-(;6;6-);9;"
\storePredefinedDiagram #default-fret-table \chordmode {f'}        #ukulele-tuning   #"5-(;5;5-);8;"
\storePredefinedDiagram #default-fret-table \chordmode {f:maj7}    #ukulele-tuning   #"2;o;o;o;"
\storePredefinedDiagram #default-fret-table \chordmode {g:4.5.7^3} #ukulele-tuning   #"o;2;1;3;"
\storePredefinedDiagram #default-fret-table \chordmode {g:7sus2}   #ukulele-tuning   #"o;2;1;o;"
\storePredefinedDiagram #default-fret-table \chordmode {bes:3.5.9} #ukulele-tuning   #"3;2;1;3;"
\storePredefinedDiagram #default-fret-table \chordmode {bes:maj7}  #ukulele-tuning   #"3;2;1;o;"
\storePredefinedDiagram #default-fret-table \chordmode {b:7}       #ukulele-tuning   #"4;3;2;o;"
\storePredefinedDiagram #default-fret-table \chordmode {b:sus4}    #ukulele-tuning   #"4;4;o;o;"


\include "english.ly"

chExceptionMusic = {
  <c e g b>-\markup{ \super "maj7" }
  <c ef gf>-\markup{ \super "dim" }
  <c ef gf bff>-\markup{ \super "dim7" }
  <c e gs>-\markup{ \super "aug" }
  <c g>-\markup{ \super 5 }
  <c e g b d'>-\markup{ \super "maj9" }
  <c ef g b>-\markup{ m\super "maj7" }
  <c ef gf bf>-\markup{ m \super { 7 \flat 5 } }
  <c f g bf>-\markup{ \super "7sus4" }
  <c e gs bf>-\markup{ \super "aug7" }
  <c e gf bf>-\markup{ \super { 7 \flat 5 } }
  <c e g bf ds'>-\markup{ \super { 7 \sharp 9 } }
  <c e g bf df'>-\markup{ \super { 7 \flat 9 } }
  <c e g bf d' a'>-\markup{ \super "13" }
}
chExceptions = #( append
                  ( sequential-music-to-chord-exceptions chExceptionMusic #t)
                  ignatzekExceptions)

\paper {
  #(define dump-extents #t)
  ragged-right = ##t
  line-width = %{OOoLilyPondLineWidth%}17\cm%{OOoLilyPondEnd%}
}

\layout {
  indent = #0
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}


mychords = \chordmode{
%{OOoLilyPondCode%}% For documentation about fret diagrams visit:
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Common-notation-for-fretted-strings#Predefined-fret-diagrams (english)

%\override FretBoard #'(fret-diagram-details finger-code) = #'none
%\once\override FretBoard #'(fret-diagram-details fret-count) = #6
c c:m c:aug c:dim \break
c:7 c:maj c:m7%{OOoLilyPondEnd%}
}

\transpose %{OOoLilyPondCustom1%}c c%{OOoLilyPondEnd%}
<<
  \context ChordNames {
    \set chordNameExceptions = #chExceptions
    \mychords
  }
  \context FretBoards {
    \set FretBoards.stringTunings = #ukulele-tuning
    \mychords
  }
>>
