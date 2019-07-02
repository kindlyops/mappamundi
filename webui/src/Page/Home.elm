module Page.Home exposing (view)

import Authentication
import Browser
import Html exposing (Html, a, button, div, footer, h1, h2, h3, img, nav, p, span, text)
import Html.Attributes exposing (alt, attribute, class, height, href, id, src, title, type_, width)
import Html.Events exposing (onClick)


view : Html Authentication.Msg
view =
    div [ class "" ]
        [ nav [ class "navbar navbar-expand-md" ]
            [ img [ class "img-fluid", alt "Haven GRC Company Logo", attribute "data-rjs" "2", id "logo", src "/img/logo@2x.png", height 71, width 82 ]
                []
            , button [ class "navbar-toggler", type_ "button", attribute "data-toggle" "collapse", attribute "data-target" "#NavbarLogin" ]
                [ span [ class "navbar-toggler-icon" ] [] ]
            , div [ class "collapse navbar-collapse", id "NavbarLogin" ]
                [ Html.form [ class "form-inline ml-auto my-2 my-lg-0" ]
                    [ button
                        [ class "btn btn-outline-default my-2 my-sm-0 login-btn"
                        , onClick Authentication.LoginMsg
                        ]
                        [ text "Why this Login doesn't?" ]
                    ]
                ]
            ]
        , div [ class "" ]
            [ div [ class "jumbotron text-center" ]
                [ div [ class "container" ]
                    [ h3 [ class "login-header" ]
                        [ text "smarter cyber risk governance"
                        ]
                    , p [ class "homeparagraph" ]
                        [ text "Lorem Ipsum security culture is mental models. With this quick survey, learn your preferred approach to security and see how that fits with your organization growth plans" ]
                    , button
                        [ class "btn btn-primary btn-block mx-auto login-btn"
                        , onClick Authentication.LoginMsg
                        ]
                        [ text "Why this Login works?" ]
                    , button
                        [ class "btn btn-primary btn-block mx-auto login-btn"
                        , onClick Authentication.StartSurveyMsg
                        ]
                        [ text "Get Started" ]
                    ]
                ]
            ]
        , div [ class "py-5 bg-light text-center " ]
            [ div [ class "" ]
                [ div [ class "pb-5" ]
                    [ img [ class "img-lg d-none d-md-inline", id "Wireframe", width 552, height 375, alt "Wireframe graphic of compliance and risk dashboard Haven GRC", src "/img/wireframe-large.png" ]
                        []
                    , img [ class "img-sm d-md-none", id "Wireframe", width 329, height 229, alt "Wireframe graphic of compliance and risk dashboard Haven GRC", src "/img/wireframe@2x.png" ]
                        []
                    ]
                , div [ class "row mx-5" ]
                    [ div [ class "col-sm-12 col-lg-4 px-4" ]
                        [ img [ alt "Clipboard check list", class "img-responsive center-block", attribute "data-rjs" "2", src "/img/record_assets.png" ]
                            []
                        , h3 [ class "py-3" ]
                            [ text "RECORD ASSETS" ]
                        , p [ class "homeparagraph" ]
                            [ text "You already have well-defined controls, but it’s nearly impossible to keep up with the speed at which applications and services are purchased and provisioned in the cloud.  Reduce the Shadow IT burden by allowing teams to identify and report new cloud services regularly. Everyone can easily see which cloud services are approved, which ones need review, which ones are being retired, as well as what type of data is stored and processed." ]
                        ]
                    , div [ class "col-sm-12 col-lg-4 px-4" ]
                        [ img [ alt "icon with exclaimation point warning symbol alert", class "img-responsive center-block", attribute "data-rjs" "2", src "/img/track_risk.png" ]
                            []
                        , h3 [ class "py-3" ]
                            [ text "TRACK RISK" ]
                        , p [ class "homeparagraph" ]
                            [ text "When reviewing applications, services, and vendors for regulatory compliance, you inevitably find issues that need to be addressed. We help you quantify the relative importance and risk of each issue to the overall business so that everyone can see what needs priority attention. You can then easily track those issues through all stages of remediation and provide at-a-glance status for your overall risk profile to all stakeholders." ]
                        ]
                    , div [ class "col-sm-12 col-lg-4 px-4" ]
                        [ img [ alt "Award badge ribbon", class "img-responsive center-block", attribute "data-rjs" "2", src "/img/give_credit.png" ]
                            []
                        , h3 [ class "py-3" ]
                            [ text "GIVE CREDIT" ]
                        , p [ class "homeparagraph" ]
                            [ text "Compliance + risk work can seem never-ending and thankless. Resilience and safety comes from humans, and giving people credit for their work results in higher engagement and improved acuity for identifying and mitigating risks as they emerge. People get excited about how they are helping to improve the company risk profile rather than dragging their feet about the rules. Empower your team to innovate with confidence!" ]
                        ]
                    ]
                ]
            ]
        , div [ class "text-center bg-light", id "footer-container" ]
            [ img [ class "", id "footer-image", alt "Wireframe graphic of compliance and risk dashboard Haven GRC", src "/img/footer_lines@2x.png" ]
                []
            , footer [ class "bg-primary py-4" ]
                [ div [ class "text-white" ]
                    [ span []
                        [ text "© 2019 "
                        , a [ class "text-white underline", href "https://kindlyops.com", title "Kindly Ops Website" ]
                            [ text "KINDLY OPS" ]
                        ]
                    ]
                ]
            ]
        ]
