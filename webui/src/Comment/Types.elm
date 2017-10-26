module Comment.Types exposing (..)


type alias Comment =
    { uuid : String
    , created_at : String
    , user_email : String
    , message : String
    }


emptyNewComment : Comment
emptyNewComment =
    Comment "" "" "" ""