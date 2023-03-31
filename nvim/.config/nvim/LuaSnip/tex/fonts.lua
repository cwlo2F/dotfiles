local tex_utils = require("tex_utils")

return {
  s({ trig = "emph" },
    fmta("\\emph{<>}", { i(1) })
  ),

  s({ trig = "tbf" },
    fmta("\\textbf{<>}", { i(1) })
  ),

  s({ trig = "tsf" },
    fmta("\\textsf{<>}", { i(1) })
  ),

  s({ trig = "mcal" },
    fmta("\\mathcal{<>}", { i(1) }),
    { condition = tex_utils.in_mathzone }
  ),
}
