local tex_utils = require("tex_utils")

return {
  -- mathzone
  s({ trig = "mk", snippetType = "autosnippet" },
    fmta(
      "\\(<>\\)",
      { i(1) }
    ),
    { condition = tex_utils.in_text }
  ),
  s({ trig = "dm", snippetType = "autosnippet" },
    fmta(
      "\\[\n<>\n\\]",
      { i(1) }
    ),
    { condition = tex_utils.in_text }
  ),

  -- symbols
  s({ trig = "//", snippetType = "autosnippet" },
    fmta(
      "\\frac{<>}{<>}",
      { i(1), i(2) }
    ),
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = "->", snippetType = "autosnippet" },
    { t("\\to") },
    { condition = tex_utils.in_mathzone }
  ),

  -- Sets
  s({ trig = "NN", snippetType = "autosnippet" },
    { t("\\mathbb{N}") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = "ZZ", snippetType = "autosnippet" },
    { t("\\mathbb{Z}") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = "QQ", snippetType = "autosnippet" },
    { t("\\mathbb{Q}") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = "RR", snippetType = "autosnippet" },
    { t("\\mathbb{R}") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = "CC", snippetType = "autosnippet" },
    { t("\\mathbb{C}") },
    { condition = tex_utils.in_mathzone }
  ),

  -- Greek letters
  -- In fact, they should be expanded only on math context.
  -- Snippet follows Greek keyboard.
  s({ trig = ";a", snippetType = "autosnippet" },
    { t("\\alpha") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";b", snippetType = "autosnippet" },
    { t("\\beta") }
  ),
  s({ trig = ";g", snippetType = "autosnippet" },
    { t("\\gamma") }
  ),
  s({ trig = ";d", snippetType = "autosnippet" },
    { t("\\delta") }
  ),
  s({ trig = ";e", snippetType = "autosnippet" },
    { t("\\epsilon") }
  ),
  s({ trig = ";ve", snippetType = "autosnippet" },
    { t("\\varepsilon") }
  ),
  s({ trig = ";z", snippetType = "autosnippet" },
    { t("\\zeta") }
  ),
  s({ trig = ";h", snippetType = "autosnippet" },
    { t("\\eta") }
  ),
  s({ trig = ";q", snippetType = "autosnippet" },
    { t("\\theta") }
  ),
  s({ trig = ";i", snippetType = "autosnippet" },
    { t("\\iota") }
  ),
  s({ trig = ";l", snippetType = "autosnippet" },
    { t("\\lambda") }
  ),
  s({ trig = ";k", snippetType = "autosnippet" },
    { t("\\kappa") }
  ),
  s({ trig = ";m", snippetType = "autosnippet" },
    { t("\\mu") }
  ),
  s({ trig = ";n", snippetType = "autosnippet" },
    { t("\\nu") }
  ),
  s({ trig = ";c", snippetType = "autosnippet" },
    { t("\\xi") }
  ),
  s({ trig = ";p", snippetType = "autosnippet" },
    { t("\\pi") }
  ),
  s({ trig = ";r", snippetType = "autosnippet" },
    { t("\\rho") }
  ),
  s({ trig = ";s", snippetType = "autosnippet" },
    { t("\\sigma") }
  ),
  s({ trig = ";t", snippetType = "autosnippet" },
    { t("\\tau") }
  ),
  s({ trig = ";u", snippetType = "autosnippet" },
    { t("\\upsilon") }
  ),
  s({ trig = ";f", snippetType = "autosnippet" },
    { t("\\phi") }
  ),
  s({ trig = ";x", snippetType = "autosnippet" },
    { t("\\chi") }
  ),
  s({ trig = ";y", snippetType = "autosnippet" },
    { t("\\psi") }
  ),
  s({ trig = ";w", snippetType = "autosnippet" },
    { t("\\omega") }
  ),
}
