type function = (~input: string) => Promise.t<array<string>>
type extractor
type template = string

type t = {
  /**
         * Custom functions / templates to provide autocomplete suggestions
         */
  templates?: array<function>,
  /**
         * Custom extractors to pickup possible classes and
         * transform class-name style suggestions to the correct format
         */
  extractors?: array<extractor>,
  /**
         * Custom shorthands to provide autocomplete suggestions.
         * if values is an array, it will be joined with `|` and wrapped with `()`
         */
  shorthands?: Js.Dict.t<(string, string)>,
}
