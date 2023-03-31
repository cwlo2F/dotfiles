local tex_utils = require("tex_utils")

return {
  s({ trig = "(", dscr = "Parentheses", snippetType = "autosnippet" },
    fmta("(<>)", { i(1) })
  ),

  s({ trig = "{", dscr = "Curly braces", snippetType = "autosnippet" },
    fmta("{<>}", { i(1) })
  ),

  s({ trig = "\\{", dscr = "Math curly braces", snippetType = "autosnippet", priority = 2000 },
    fmta("\\{<>\\}", { i(1) })
  ),

  s({ trig = "lr", dscr = "Math parentheses" },
    fmta(
      "\\left( <> \\right)",
      { i(1) }
    ),
    { condition = tex_utils.in_mathzone }
  ),

}
