-- Some LaTeX-specific conditional expansion functions (requires VimTeX)

local tex_utils = {}

-- math context detection
tex_utils.in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

tex_utils.in_text = function()
  return not tex_utils.in_mathzone()
end

-- comment detection
tex_utils.in_comment = function()
  return vim.fn['vimtex#syntax#in_comment']() == 1
end

tex_utils.in_env = function(name)
  local is_inside = vim.fn['vimtex#env#is_inside'](name)
  return (is_inside[1] > 0 and is_inside[2] > 0)
end

return tex_utils
