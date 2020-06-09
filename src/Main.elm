module Main exposing (main)

import Playground exposing (..)


main =
    picture myTriangles


myTriangles =
    makeTriangles
        [ ( 0, green )
        , ( 40, yellow )
        , ( 80, brown )
        , ( 120, blue )
        , ( 160, yellow )
        , ( 200, purple )
        ]

makeTriangles list =
    case list of
        head :: tail ->
            makeTriangle head :: makeTriangles tail

        [] ->
            []
makeTriangle ( x, color ) =
    triangle color 20 |> moveRight x
