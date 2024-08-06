type t<'theme> = {
  /**
     * Unprocessed selector from user input.
     * Useful for generating CSS rule.
     */
  rawSelector: string,
  /**
     * Current selector for rule matching
     */
  currentSelector: string,
  /**
     * UnoCSS generator instance
     */
  generator: UnoGenerator.t<'theme>,
  /**
     * Symbols for special handling
     */
  symbols: ControlSymbols.t,
  /**
     * The theme object
     */
  theme: 'theme,
  /**
     * Matched variants handlers for this rule.
     */
  variantHandlers: array<VariantHandler.t>,
  /**
     * The result of variant matching.
     */
  variantMatch: VariantMatchedResult.t<'theme>,
  /**
     * Construct a custom CSS rule.
     * Variants and selector escaping will be handled automatically.
     */
  constructCSS: (~body: CSSEntries.t, ~overrideSelector: string=?) => string,
}
