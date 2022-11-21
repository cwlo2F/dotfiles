return {
  s({ trig = "env", dscr = "LaTeX environment" },
    fmta(
      [[
        \begin{<>}
	    <>
	\end{<>}
      ]],

      { i(1), i(2), rep(1) }
    )
  ),
  s({ trig = "ali", dscr = "LaTeX align environment" },
    fmt(
      [[\begin{align*}
    <>
\end{align*}
      ]],

      { i(1) },

      { delimiters = "<>" }
    )
  ),

}
