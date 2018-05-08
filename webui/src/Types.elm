module Types exposing (Model, Page(..), PageState(..), Msg(..))

import Authentication
import Http
import Navigation
import Comment.Types
import Route
import Page.Activity as Activity
import Page.Comments as Comments
import Page.Reports as Reports
import Page.Errored as Errored exposing (PageLoadError)
import Page.Home as Home
import Page.Login as Login
import Data.Session exposing (Session)
import Keycloak


type Page
    = Blank
    | NotFound
    | Errored PageLoadError
    | Home Home.Model
    | Login Login.Model
    | Activity Activity.Model
    | Comments Comment.Types.Model


type PageState
    = Loaded Page
    | TransitioningFrom Page


type alias Model =
    { count : Int
    , authModel : Authentication.Model
    , route : Route.Model
    , pageState : PageState
    , selectedTab : Int
    , session : Session
    }


type Msg
    = AuthenticationMsg Authentication.Msg
    | NavigateTo (Maybe Route.Location)
    | UrlChange Navigation.Location
    | CommentsMsg Keycloak.UserProfile Comment.Types.Msg
    | ShowError String
