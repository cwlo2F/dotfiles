local tex_utils = require("tex_utils")

return {
  -- mathzone
  s({ trig = "mk", dscr = "Inline Math", snippetType = "autosnippet" },
    fmta("\\(<>\\)", { i(1) }),
    { condition = tex_utils.in_text }
  ),
  s({ trig = "dm", dscr = "Display Math", snippetType = "autosnippet" },
    fmta("\\[\n<>\n\\]", { i(1) }),
    { condition = tex_utils.in_text }
  ),

  -- math

  s({ trig = "inn", snippetType = "autosnippet" },
    { t("\\in") },
    { condition = tex_utils.in_mathzone }
  ),

  s({ trig = "**", snippetType = "autosnippet" },
    { t("\\cdot") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = "xx", snippetType = "autosnippet" },
    { t("\\times") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = "//", snippetType = "autosnippet" },
    fmta(
      "\\frac{<>}{<>}",
      { i(1), i(2) }
    ),
    { condition = tex_utils.in_mathzone }
  ),

  s({ trig = "td" },
    fmta("^{<>}", { i(1) }),
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = "sd" },
    fmta("_{<>}", { i(1) }),
    { condition = tex_utils.in_mathzone }
  ),

  s({ trig = "hat" },
    fmta("\\hat{<>}", { i(1) }),
    { condition = tex_utils.in_mathzone }
  ),

  s({ trig = "dint" },
    fmta("\\int_{<>}^{<>}", { i(1), i(2) }),
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = "dsum" },
    fmta("\\sum_{<>}^{<>}", { i(1), i(2) }),
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = "dprod" },
    fmta("\\prod_{<>}^{<>}", { i(1), i(2) }),
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = "dand" },
    fmta("\\bigwedge_{<>}^{<>}", { i(1), i(2) }),
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = "dor" },
    fmta("\\bigvee_{<>}^{<>}", { i(1), i(2) }),
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = "dcup" },
    fmta("\\bigcup_{<>}^{<>}", { i(1), i(2) }),
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = "dcap" },
    fmta("\\bigcap_{<>}^{<>}", { i(1), i(2) }),
    { condition = tex_utils.in_mathzone }
  ),

  -- arrows
  s({ trig = "->", snippetType = "autosnippet" },
    { t("\\to") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = "!>", snippetType = "autosnippet" },
    { t("\\mapsto") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = "c>", snippetType = "autosnippet" },
    { t("\\hookrightarrow") },
    { condition = tex_utils.in_mathzone }
  ),

  -- amsmath matrices
  s({ trig = "([pbBvV])mat", regTrig = true },
    fmta(
      "\\begin{<>matrix} <> \\end{<>matrix}",
      { 
	f( function(_, snip) return snip.captures[1] end ),
	i(1),
	f( function(_, snip) return snip.captures[1] end )
      }
    ),
    { condition = tex_utils.in_mathzone }
  ),

  -- Sets
  s({ trig = "OO", snippetType = "autosnippet" },
    { t("\\emptyset") },
    { condition = tex_utils.in_mathzone }
  ),
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

  -- LaTeX Greek letters
  -- Triggers are from Greek keyboard.
  -- Starting with `v` (for `var`), one gets var letter.
  s({ trig = ";a", snippetType = "autosnippet" },
    { t("\\alpha") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";b", snippetType = "autosnippet" },
    { t("\\beta") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";g", snippetType = "autosnippet" },
    { t("\\gamma") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";G", snippetType = "autosnippet" },
    { t("\\Gamma") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";d", snippetType = "autosnippet" },
    { t("\\delta") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";D", snippetType = "autosnippet" },
    { t("\\Delta") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";e", snippetType = "autosnippet" },
    { t("\\epsilon") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";ve", snippetType = "autosnippet" },
    { t("\\varepsilon") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";z", snippetType = "autosnippet" },
    { t("\\zeta") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";h", snippetType = "autosnippet" },
    { t("\\eta") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";q", snippetType = "autosnippet" },
    { t("\\theta") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";vq", snippetType = "autosnippet" },
    { t("\\vartheta") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";Q", snippetType = "autosnippet" },
    { t("\\Theta") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";i", snippetType = "autosnippet" },
    { t("\\iota") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";k", snippetType = "autosnippet" },
    { t("\\kappa") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";vk", snippetType = "autosnippet" },
    { t("\\varkappa") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";l", snippetType = "autosnippet" },
    { t("\\lambda") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";L", snippetType = "autosnippet" },
    { t("\\Lambda") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";m", snippetType = "autosnippet" },
    { t("\\mu") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";n", snippetType = "autosnippet" },
    { t("\\nu") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";c", snippetType = "autosnippet" },
    { t("\\xi") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";C", snippetType = "autosnippet" },
    { t("\\Xi") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";p", snippetType = "autosnippet" },
    { t("\\pi") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";vp", snippetType = "autosnippet" },
    { t("\\varpi") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";P", snippetType = "autosnippet" },
    { t("\\Pi") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";r", snippetType = "autosnippet" },
    { t("\\rho") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";vr", snippetType = "autosnippet" },
    { t("\\varrho") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";s", snippetType = "autosnippet" },
    { t("\\sigma") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";vs", snippetType = "autosnippet" },
    { t("\\varsigma") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";S", snippetType = "autosnippet" },
    { t("\\Sigma") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";t", snippetType = "autosnippet" },
    { t("\\tau") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";u", snippettype = "autosnippet" },
    { t("\\upsilon") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";U", snippettype = "autosnippet" },
    { t("\\Upsilon") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";f", snippetType = "autosnippet" },
    { t("\\phi") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";vf", snippetType = "autosnippet" },
    { t("\\varphi") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";F", snippetType = "autosnippet" },
    { t("\\Phi") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";x", snippetType = "autosnippet" },
    { t("\\chi") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";y", snippetType = "autosnippet" },
    { t("\\psi") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";Y", snippetType = "autosnippet" },
    { t("\\Psi") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";w", snippetType = "autosnippet" },
    { t("\\omega") },
    { condition = tex_utils.in_mathzone }
  ),
  s({ trig = ";W", snippetType = "autosnippet" },
    { t("\\Omega") },
    { condition = tex_utils.in_mathzone }
  ),

}
