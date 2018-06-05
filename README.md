# ambiguous-parser
A parser that returns a list of possibilities

Inspired by [Hutton and Meijer's library][handm],
using list to represent possible parsers.

[handm]: http://www.cs.nott.ac.uk/~pszgmh/monparsing.pdf

Something like this:
```elm
type alias Parser a =
    String -> Result ParserFailure (List (a, String))
```
But `Ok []` is an [impossible state][misi]
should we instead use [non-empty lists][nelist]?

[misi]: https://www.youtube.com/watch?v=IcgmSRJHu_8
[nelist]: http://package.elm-lang.org/packages/mgold/elm-nonempty-list/latest
