local tex_utils = require("tex_utils")

return {
  -- mathzone
  s({ trig = "mk", dscr = "Inline Math", snippetType = "autosnippet" },
    fmta(
      "\\(<>\\)",
      { i(1) }
    ),
    { condition = tex_utils.in_text }
  ),
  s({ trig = "dm", dscr = "Display Math", snippetType = "autosnippet" },
    fmta(
      "\\[\n<>\n\\]",
      { i(1) }
    ),
    { condition = tex_utils.in_text }
  ),

  -- math
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
  s({ trig = "c>", snippetType = "autosnippet" },
    { t("\\hookrightarrow") },
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
  -- starting with `v` (for `var`), one gets var letter.
  -- starting with `o`, one gets capital letter. (`o` is just prefix free)
  -- Maybe typing capital letter after `;` can be alternative.
  -- starting with `vo`, one gets capital var letter.
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
  s({ trig = ";og", snippetType = "autosnippet" },
    { t("\\Gamma") }
  ),
  s({ trig = ";d", snippetType = "autosnippet" },
    { t("\\delta") }
  ),
  s({ trig = ";od", snippetType = "autosnippet" },
    { t("\\Delta") }
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
  s({ trig = ";oq", snippetType = "autosnippet" },
    { t("\\Theta") }
  ),
  s({ trig = ";i", snippetType = "autosnippet" },
    { t("\\iota") }
  ),
  s({ trig = ";k", snippetType = "autosnippet" },
    { t("\\kappa") }
  ),
  s({ trig = ";l", snippetType = "autosnippet" },
    { t("\\lambda") }
  ),
  s({ trig = ";ol", snippetType = "autosnippet" },
    { t("\\Lambda") }
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
  s({ trig = ";oc", snippetType = "autosnippet" },
    { t("\\Xi") }
  ),
  s({ trig = ";p", snippetType = "autosnippet" },
    { t("\\pi") }
  ),
  s({ trig = ";vp", snippetType = "autosnippet" },
    { t("\\varpi") }
  ),
  s({ trig = ";op", snippetType = "autosnippet" },
    { t("\\Pi") }
  ),
  s({ trig = ";r", snippetType = "autosnippet" },
    { t("\\rho") }
  ),
  s({ trig = ";s", snippetType = "autosnippet" },
    { t("\\sigma") }
  ),
  s({ trig = ";os", snippetType = "autosnippet" },
    { t("\\Sigma") }
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
  s({ trig = ";vf", snippetType = "autosnippet" },
    { t("\\varphi") }
  ),
  s({ trig = ";of", snippetType = "autosnippet" },
    { t("\\Phi") }
  ),
  s({ trig = ";x", snippetType = "autosnippet" },
    { t("\\chi") }
  ),
  s({ trig = ";y", snippetType = "autosnippet" },
    { t("\\psi") }
  ),
  s({ trig = ";oy", snippetType = "autosnippet" },
    { t("\\Psi") }
  ),
  s({ trig = ";w", snippetType = "autosnippet" },
    { t("\\omega") }
  ),
  s({ trig = ";ow", snippetType = "autosnippet" },
    { t("\\Omega") }
  ),

}
