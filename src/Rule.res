type matcher<'theme> = (array<option<string>>, RuleContext.t<'theme>) => CSSValueInput.t

type t<'theme> = (RegExp.t, matcher<'theme>, RuleMeta.t)
