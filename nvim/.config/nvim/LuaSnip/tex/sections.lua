return {
  s(
    { trig = "chap" },
    fmta("\\chapter{<>}", { i(1, "chapter name") })
  ),

  s(
    { trig = "sec" },
    fmta("\\section{<>}", { i(1, "section name") })
  ),

  s(
    { trig = "sub" },
    fmta("\\subsection{<>}", { i(1, "subsection name") })
  ),

  s(
    { trig = "subsub" },
    fmta("\\subsubsection{<>}", { i(1, "subsubsection name") })
  ),

  s(
    { trig = "par" },
    fmta("\\paragraph{<>}", { i(1, "paragraph name") })
  ),

  s(
    { trig = "subpar" },
    fmta("\\subparagraph{<>}", { i(1, "subparagraph name") })
  ),
}

