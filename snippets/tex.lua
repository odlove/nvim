local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

local get_visual = function(args, parent)
  if (#parent.snippet.env.LS_SELECT_RAW > 0) then
    return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
  else  -- If LS_SELECT_RAW is empty, return a blank insert node
    return sn(nil, i(1))
  end
end

return {
  s(
    { trig = 'mk' },
    { t('$'), i(1), t('$') }
  ),

  s(
    { trig = 'eq' },
    { t('\\eq') }
  ),

  s(
    { trig = 'neq' },
    { t('\\neq') }
  ),

  s(
    { trig = 'es' },
    { t('\\emptyset') }
  ),

  s(
    { trig = 'in' },
    { t('\\in') }
  ),

  s(
    { trig = 'nin' },
    { t('\\notin') }
  ),

  s(
    { trig = 'sse' },
    { t('\\subseteq') }
  ),

  s(
    { trig = 'ssne' },
    { t('\\subsetnoteq') }
  ),

  s(
    { trig = 'beg' },
    { t('\\begin{'), i(1), t({'}', '	'}),
      i(2),
      t({'', '\\end{'}), rep(1), t('}')}
  ),

  s(
    { trig = 'gat' },
    { t({'\\begin{gather*}','	'}), i(1), t({'','\\end{gather*}'})}
  ),

  s(
    { trig = 'ali' },
    { t({'\\begin{align*}','	'}), i(1), t({'','\\end{align*}'})}
  ),

  s(
    { trig = 'alig' },
    { t({'\\begin{align}','	'}), i(1), t({'','\\end{align}'})}
  ),

  s(
    { trig = 'bf' },
    { t('\\textbf{'), i(1), t('}'), i(2) }
  ),

  s(
    { trig = 'bb' },
    { t('\\mathbb{'), i(1), t('}') }
  ),

  s(
    { trig = '.' },
    { t('\\cdot') }
  ),

  s(
    { trig = '..' },
    { t('\\cdots') }
  ),

  s(
    { trig='pi' },
    { t('\\pi') }
  ),

  s(
    { trig=';a' },
    { t('\\alpha') }
  ),

  s(
    { trig=';b' },
    { t('\\beta') }
  ),

  s(
    { trig=';d' },
    { t('\\delta') }
  ),

  s(
    { trig=';D' },
    { t('\\Delta') }
  ),

  s(
    { trig=';e' },
    { t('\\varepsilon') }
  ),

  s(
    { trig=';f' },
    { t('\\varphi') }
  ),

  s(
    { trig=';g' },
    { t('\\gamma') }
  ),

  s(
    { trig=';o' },
    { t('\\omega') }
  ),

  s(
    { trig=';ps' },
    { t('\\psi') }
  ),

  s(
    { trig=';s' },
    { t('\\sigma') }
  ),

  s(
    { trig=';t' },
    { t('\\theta') }
  ),

  s(
    { trig=';x' },
    { t('\\xi') }
  ),

  s(
    { trig = 'ra' },
    { t('\\rightarrow') }
  ),

  s(
    { trig = 'Ra' },
    { t('\\Rightarrow') }
  ),

  s(
    { trig = 'lra' },
    { t('\\longrightarrow') }
  ),

  s(
    { trig = 'Lra' },
    { t('\\Longrightarrow') }
  ),

  s(
    { trig = 'la' },
    { t('\\leftarrow') }
  ),

  s(
    { trig = 'La' },
    { t('\\leftarrow') }
  ),

  s(
    { trig = 'lla' },
    { t('\\longleftarrow') }
  ),

  s(
    { trig = 'Lra' },
    { t('\\Longleftarrow') }
  ),

  s(
    { trig = 'iff' },
    { t('\\iff') }
  ),

  s(
    { trig = 'mt' },
    { t('\\mapsto') }
  ),

  s(
    { trig = 'lmt' },
    { t('\\longmapsto') }
  ),

  s(
    { trig = 'times' },
    { t('\\times') }
  ),

  s(
    { trig = 'and' },
    { t('\\land') }
  ),

  s(
    { trig = 'or' },
    { t('\\lor') }
  ),


  s(
    { trig = 'exi' },
    { t('\\exists') }
  ),

  s(
    { trig = 'fa' },
    { t('\\forall') }
  ),

  s(
    { trig = 'bcup' },
    { t('\\bigcup') }
  ),

  s(
    { trig = 'cup' },
    { t('\\cup') }
  ),

  s(
    { trig = 'cap' },
    { t('\\cap') }
  ),

  s(
    { trig = 'bcap' },
    { t('\\bigcap') }
  ),

  s(
    { trig = 'sim' },
    { t('\\sim') }
  ),

  s(
    { trig = 'item' },
    { t('\\item') }
  ),

  s(
    { trig = 'sqr' },
    { t('\\sqrt{'), i(1), t('}') }
  ),

  s(
    { trig = 'geq' },
    { t('\\geq') }
  ),

  s(
    { trig = 'leq' },
    { t('\\leq') }
  ),

  s(
    { trig = 'ds' },
    { t('\\displaystyle') }
  ),

  s(
    { trig = 'fr' },
    { t('\\frac{'), i(1), t('}{'), i(2), t('}') }
  ),

  s(
    { trig = 'inf' },
    { t('\\infty') }
  ),

  s(
    { trig = 'text' },
    { t('\\text{'), i(1), t('}') }
  ),

  s(
    { trig = 'log' },
    { t('\\log') }
  ),

  s(
    { trig = 'lim' },
    { t('\\lim_{'), i(1), t('}') }
  ),

  s(
    { trig = 'sum' },
    { t('\\sum_{'), i(1), t('}^{'), i(2), t('}') }
  ),
}

