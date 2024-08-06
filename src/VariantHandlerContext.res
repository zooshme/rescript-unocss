type t = {
  /**
     * Rewrite the output selector. Often be used to append parents.
     */
  prefix: string,
  /**
     * Rewrite the output selector. Often be used to append pseudo classes.
     */
  selector: string,
  /**
     * Rewrite the output selector. Often be used to append pseudo elements.
     */
  pseudo: string,
  /**
     * Rewrite the output css body. The input come in [key,value][] pairs.
     */
  entries: CSSEntries.t,
  /**
     * Provide a parent selector(e.g. media query) to the output css.
     */
  parent?: string,
  /**
     * Provide order to the `parent` parent selector within layer.
     */
  parentOrder?: int,
  /**
     * Override layer to the output css.
     */
  layer?: string,
  /**
     * Order in which the variant is sorted within single rule.
     */
  sort?: int,
  /**
     * Option to not merge the resulting entries even if the body are the same.
     * @default false
     */
  noMerge?: bool,
}
