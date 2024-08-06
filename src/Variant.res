type context = {
  prefix: string,
  selector: string,
  pseudo: string,
  entries: CSSEntries.t,
  parent?: string,
  parentOrder?: int,
  layer?: string,
  sort?: int,
  noMerge?: bool,
}

type handler<'theme> = {
  handle?: (~context: context, ~next: context => context) => context,
  matcher?: string,
  order?: int,
  selector?: (~input: string, ~body: CSSEntries.t) => option<string>,
  body?: (~body: CSSEntries.t) => option<CSSEntries.t>,
  parent?: option<array<string>>,
  sort?: int,
  layer?: option<string>,
}

type function<'theme> = (~matcher: string, ~context: context) => option<handler<'theme>>

type t<'theme> = {
  name?: string,
  match: function<'theme>,
  order?: int,
  multiPass?: bool,
  autocomplete?: string,
}
