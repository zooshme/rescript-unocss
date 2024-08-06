type t<'theme> = {
  name?: string,
  /**
     * Rules to generate CSS utilities.
     *
     * Later entries have higher priority.
     */
  rules?: array<Rule.t<'theme>>,
  /**
     * Variant separator
     *
     * @default [':', '-']
     */
  separators?: array<string>,
  /**
     * Variants that preprocess the selectors,
     * having the ability to rewrite the CSS object.
     */
  variants?: array<Variant.t<'theme>>,
  /**
     * Similar to Windi CSS's shortcuts,
     * allows you have create new utilities by combining existing ones.
     *
     * Later entries have higher priority.
     */
  shortcuts?: UserShortcuts.t<'theme>,
  /**
     * Rules to exclude the selectors for your design system (to narrow down the possibilities).
     * Combining `warnExcluded` options it can also help you identify wrong usages.
     */
  blocklist?: array<BlocklistRule.t>,
  /**
     * Utilities that always been included
     */
  safelist?: array<string>,
  /**
     * Extractors to handle the source file and outputs possible classes/selectors
     * Can be language-aware.
     */
  extractors?: array<Extractor.t>,
  /**
     * Default extractor that are always applied.
     * By default it split the source code by whitespace and quotes.
     *
     * It maybe be replaced by preset or user config,
     * only one default extractor can be presented,
     * later one will override the previous one.
     *
     * Pass `null` or `false` to disable the default extractor.
     *
     * @see https://github.com/unocss/unocss/blob/main/packages/core/src/extractors/split.ts
     * @default import('@unocss/core').defaultExtractor
     */
  extractorDefault?: Extractor.t,
  /**
     * Raw CSS injections.
     */
  preflights?: array<Preflight.t<'theme>>,
  /**
     * Theme object for shared configuration between rules
     */
  theme?: 'theme,
  /**
     * Layer orders. Default to 0.
     */
  layers?: Js.Dict.t<(string, int)>,
  /**
     * Output the internal layers as CSS Cascade Layers.
     */
  outputToCssLayers?: OutputCssLayersOptions.t,
  /**
     * Custom function to sort layers.
     */
  sortLayers?: (~layers: array<string>) => array<string>,
  /**
     * Preprocess the incoming utilities, return falsy value to exclude
     */
  preprocess?: array<Preprocessor.t>,
  /**
     * Postprocess the generate utils object
     */
  postprocess?: array<Postprocessor.t>,
  /**
     * Custom functions mutate the theme object.
     *
     * It's also possible to return a new theme object to completely replace the original one.
     */
  extendTheme?: array<ThemeExtender.t<'theme>>,
  /**
     * Presets
     */
  presets?: array<PresetOrFactory.t<'theme>>,
  /**
     * Additional options for auto complete
     */
  autoComplete?: AutoComplete.t,
  /**
     * Hook to modify the resolved config.
     *
     * First presets runs first and the user config
     */
  configResolved?: (~config: ResolvedConfig.t) => unit,
  /**
     * Expose internal details for debugging / inspecting
     *
     * Added `rules`, `shortcuts`, `variants` to the context and expose the context object in `StringifiedUtil`
     *
     * You don't usually need to set this.
     *
     * @default `true` when `envMode` is `dev`, otherwise `false`
     */
  details?: bool,
}

@module("unocss")
external definePreset: ('options => t<'theme>) => (~options: 'options) => t<'theme> = "definePreset"
