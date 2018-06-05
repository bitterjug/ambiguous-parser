module Parser exposing (..)


type alias ParserFailure =
    String


type alias Parser a =
    String -> Result ParserFailure (List ( a, String ))


char0 : Parser Char
char0 =
    String.uncons
        >> Maybe.map (Ok << List.singleton)
        >> Maybe.withDefault (Err "Empty input")


fail : String -> Parser a
fail =
    always << Err


succeed : a -> Parser a
succeed a =
    \input -> Ok [ ( a, input ) ]
