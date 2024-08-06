type t = {
  /**
     * The layer name of this rule.
     * @default 'default'
     */
  layer?: string,
  /**
     * Option to not merge this selector even if the body are the same.
     * @default false
     */
  noMerge?: bool,
  /**
     * Fine tune sort
     */
  sort?: int,
  /**
     * Templates to provide autocomplete suggestions
     */
  autocomplete?: array<AutoComplete.template>,
  /**
     * Matching prefix before this util
     */
  prefix?: array<string>,
  /**
     * Internal rules will only be matched for shortcuts but not the user code.
     * @default false
     */
  internal?: bool,
}
