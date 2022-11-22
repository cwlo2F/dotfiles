local tex_utils = require("tex_utils")

return {
  s({ trig = "lr", dscr = "Parentheses" },
    fmta(
      "\\left(<>\\right)",
      { i(1) }
    ),
    { condition = tex_utils.in_mathzone }
  ),

}
