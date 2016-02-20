module App.HomepageView (homepage) where

import Html exposing (..)
import Html.Attributes exposing (..)

homepage : Html
homepage =
  div [class "container"] [
    section [class "welcome"]
    [ h1 [] [text "Phoenix + Elm + Webpack on Heroku"]
    , h2 [] [text "or, all the fun things"]
    , p  [] [text "This is a Phoenix application running Elm on Heroku."]
    , a  [href "https://github.com/joshuaclayton/phoenix_elm_webpack_heroku_example_app"] [text "View the source"]
    ]
  ]
