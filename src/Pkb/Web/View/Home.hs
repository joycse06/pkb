{-# LANGUAGE OverloadedStrings #-}
module Pkb.Web.View.Home where

-- import Web.Views.Site (SiteView(..))

import Control.Monad
import Lucid

homeView :: Html ()
homeView = do
  doctype_
  html_ [ lang_ "en" ] $ do
    head_ $ do
      meta_ [ charset_ "utf-8" ]
      link_ [ rel_ "apple-touch-icon", sizes_ "76x76", href_ "/img/apple-icon.png" ]
      link_ [ rel_ "icon", type_ "image/png", href_ "/img/favicon.png" ]
      meta_ [ httpEquiv_ "X-UA-Compatible", content_ "IE=edge,chrome=1" ]
      title_ "Material Dashboard by Creative Tim"
      meta_ [ content_ "width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no", name_ "viewport" ]
      link_ [ rel_ "stylesheet", type_ "text/css", href_ "https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" ]
      link_ [ rel_ "stylesheet", href_ "https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" ]
      link_ [ href_ "/css/material-dashboard.css?v=2.1.0", rel_ "stylesheet" ]
      script_ [src_ "//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"] ("" :: String)
      -- link_ [ href_ "/demo/demo.css", rel_ "stylesheet" ]
      -- script_ [ src_ "/js/core/jquery.min.js", type_ "text/javascript" ]
    body_ [ class_ "" ] $ do
      div_ [ class_ "wrapper " ] $ do
        div_ [ class_ "sidebar", data_ "color" "purple", data_ "background-color" "white", data_ "image" "../assets/img/sidebar-1.jpg" ] $ do
          div_ [ class_ "logo" ] $ do
            a_ [ href_ "http://www.creative-tim.com", class_ "simple-text logo-normal" ] $ "Creative Tim"
          div_ [ class_ "sidebar-wrapper" ] $ do
            ul_ [ class_ "nav" ] $ do
              li_ [ class_ "nav-item active  " ] $ do
                a_ [ class_ "nav-link", href_ "./dashboard.html" ] $ do
                  i_ [ class_ "material-icons" ] $ "dashboard"
                  p_ "Dashboard"
              li_ [ class_ "nav-item " ] $ do
                a_ [ class_ "nav-link", href_ "./user.html" ] $ do
                  i_ [ class_ "material-icons" ] $ "person"
                  p_ "User Profile"
              li_ [ class_ "nav-item " ] $ do
                a_ [ class_ "nav-link", href_ "./tables.html" ] $ do
                  i_ [ class_ "material-icons" ] $ "content_paste"
                  p_ "Table List"
              li_ [ class_ "nav-item " ] $ do
                a_ [ class_ "nav-link", href_ "./typography.html" ] $ do
                  i_ [ class_ "material-icons" ] $ "library_books"
                  p_ "Typography"
              li_ [ class_ "nav-item " ] $ do
                a_ [ class_ "nav-link", href_ "./icons.html" ] $ do
                  i_ [ class_ "material-icons" ] $ "bubble_chart"
                  p_ "Icons"
              li_ [ class_ "nav-item " ] $ do
                a_ [ class_ "nav-link", href_ "./map.html" ] $ do
                  i_ [ class_ "material-icons" ] $ "location_ons"
                  p_ "Maps"
              li_ [ class_ "nav-item " ] $ do
                a_ [ class_ "nav-link", href_ "./notifications.html" ] $ do
                  i_ [ class_ "material-icons" ] $ "notifications"
                  p_ "Notifications"
              li_ [ class_ "nav-item " ] $ do
                a_ [ class_ "nav-link", href_ "./rtl.html" ] $ do
                  i_ [ class_ "material-icons" ] $ "language"
                  p_ "RTL Support"
        div_ [ class_ "main-panel" ] $ do
          nav_ [ class_ "navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top " ] $ do
            div_ [ class_ "container-fluid" ] $ do
              div_ [ class_ "navbar-wrapper" ] $ do
                a_ [ class_ "navbar-brand", href_ "#pablo" ] $ "Dashboard"
              button_ [ class_ "navbar-toggler", type_ "button", data_ "toggle" "collapse" ] $ do
                span_ [ class_ "sr-only" ] $ "Toggle navigation"
                span_ [ class_ "navbar-toggler-icon icon-bar" ] $ ""
                span_ [ class_ "navbar-toggler-icon icon-bar" ] $ ""
                span_ [ class_ "navbar-toggler-icon icon-bar" ] $ ""
              div_ [ class_ "collapse navbar-collapse justify-content-end" ] $ do
                form_ [ class_ "navbar-form" ] $ do
                  div_ [ class_ "input-group no-border" ] $ do
                    input_ [ type_ "text", value_ "", class_ "form-control", placeholder_ "Search..." ]
                    button_ [ type_ "submit", class_ "btn btn-white btn-round btn-just-icon" ] $ do
                      i_ [ class_ "material-icons" ] $ "search"
                      div_ [ class_ "ripple-container" ] $ ""
                ul_ [ class_ "navbar-nav" ] $ do
                  li_ [ class_ "nav-item" ] $ do
                    a_ [ class_ "nav-link", href_ "#pablo" ] $ do
                      i_ [ class_ "material-icons" ] $ "dashboard"
                      p_ [ class_ "d-lg-none d-md-block" ] $ "Stats"
                  li_ [ class_ "nav-item dropdown" ] $ do
                    a_ [ class_ "nav-link", href_ "http://example.com", id_ "navbarDropdownMenuLink", data_ "toggle" "dropdown" ] $ do
                      i_ [ class_ "material-icons" ] $ "notifications"
                      span_ [ class_ "notification" ] $ "5"
                      p_ [ class_ "d-lg-none d-md-block" ] $ "Some Actions"
                    div_ [ class_ "dropdown-menu dropdown-menu-right"] $ do
                      a_ [ class_ "dropdown-item", href_ "#" ] $ "Mike John responded to your email"
                      a_ [ class_ "dropdown-item", href_ "#" ] $ "You have 5 new tasks"
                      a_ [ class_ "dropdown-item", href_ "#" ] $ "You're now friend with Andrew"
                      a_ [ class_ "dropdown-item", href_ "#" ] $ "Another Notification"
                      a_ [ class_ "dropdown-item", href_ "#" ] $ "Another One"
                  li_ [ class_ "nav-item" ] $ do
                    a_ [ class_ "nav-link", href_ "#pablo" ] $ do
                      i_ [ class_ "material-icons" ] $ "person"
                      p_ [ class_ "d-lg-none d-md-block" ] $ "Account"
          div_ [ class_ "content" ] $ do
            div_ [ class_ "container-fluid" ] $ do
              div_ [ class_ "row" ] $ do
                div_ [ class_ "col-lg-3 col-md-6 col-sm-6" ] $ do
                  div_ [ class_ "card card-stats" ] $ do
                    div_ [ class_ "card-header card-header-warning card-header-icon" ] $ do
                      div_ [ class_ "card-icon" ] $ do
                        i_ [ class_ "material-icons" ] $ "content_copy"
                      p_ [ class_ "card-category" ] $ "Used Space"
                      h3_ [ class_ "card-title" ] $ do
                        "49/50"
                        small_ "GB"
                    div_ [ class_ "card-footer" ] $ do
                      div_ [ class_ "stats" ] $ do
                        i_ [ class_ "material-icons text-danger" ] $ "warning"
                        a_ [ href_ "#pablo" ] $ "Get More Space..."
                div_ [ class_ "col-lg-3 col-md-6 col-sm-6" ] $ do
                  div_ [ class_ "card card-stats" ] $ do
                    div_ [ class_ "card-header card-header-success card-header-icon" ] $ do
                      div_ [ class_ "card-icon" ] $ do
                        i_ [ class_ "material-icons" ] $ "store"
                      p_ [ class_ "card-category" ] $ "Revenue"
                      h3_ [ class_ "card-title" ] $ "$34,245"
                    div_ [ class_ "card-footer" ] $ do
                      div_ [ class_ "stats" ] $ do
                        i_ [ class_ "material-icons" ] $ "date_range"
                        "Last 24 Hours"
                div_ [ class_ "col-lg-3 col-md-6 col-sm-6" ] $ do
                  div_ [ class_ "card card-stats" ] $ do
                    div_ [ class_ "card-header card-header-danger card-header-icon" ] $ do
                      div_ [ class_ "card-icon" ] $ do
                        i_ [ class_ "material-icons" ] $ "info_outline"
                      p_ [ class_ "card-category" ] $ "Fixed Issues"
                      h3_ [ class_ "card-title" ] $ "75"
                    div_ [ class_ "card-footer" ] $ do
                      div_ [ class_ "stats" ] $ do
                        i_ [ class_ "material-icons" ] $ "local_offer"
                        "Tracked from Github"
                div_ [ class_ "col-lg-3 col-md-6 col-sm-6" ] $ do
                  div_ [ class_ "card card-stats" ] $ do
                    div_ [ class_ "card-header card-header-info card-header-icon" ] $ do
                      div_ [ class_ "card-icon" ] $ do
                        i_ [ class_ "fa fa-twitter" ] $ "Twitter"
                      p_ [ class_ "card-category" ] $ "Followers"
                      h3_ [ class_ "card-title" ] $ "+245"
                    div_ [ class_ "card-footer" ] $ do
                      div_ [ class_ "stats" ] $ do
                        i_ [ class_ "material-icons" ] $ "update"
                        "Just Updated"
              div_ [ class_ "row" ] $ do
                div_ [ class_ "col-md-4" ] $ do
                  div_ [ class_ "card card-chart" ] $ do
                    div_ [ class_ "card-header card-header-success" ] $ do
                      div_ [ class_ "ct-chart", id_ "dailySalesChart" ] $ ""
                    div_ [ class_ "card-body" ] $ do
                      h4_ [ class_ "card-title" ] $ "Daily Sales"
                      p_ [ class_ "card-category" ] $ do
                        span_ [ class_ "text-success" ] $ do
                          i_ [ class_ "fa fa-long-arrow-up" ] $ ""
                          "55%"
                        "increase in today sales."
                    div_ [ class_ "card-footer" ] $ do
                      div_ [ class_ "stats" ] $ do
                        i_ [ class_ "material-icons" ] $ "access_time"
                        "updated 4 minutes ago"
                div_ [ class_ "col-md-4" ] $ do
                  div_ [ class_ "card card-chart" ] $ do
                    div_ [ class_ "card-header card-header-warning" ] $ do
                      div_ [ class_ "ct-chart", id_ "websiteViewsChart" ] $ ""
                    div_ [ class_ "card-body" ] $ do
                      h4_ [ class_ "card-title" ] $ "Email Subscriptions"
                      p_ [ class_ "card-category" ] $ "Last Campaign Performance"
                    div_ [ class_ "card-footer" ] $ do
                      div_ [ class_ "stats" ] $ do
                        i_ [ class_ "material-icons" ] $ "access_time"
                        "campaign sent 2 days ago"
                div_ [ class_ "col-md-4" ] $ do
                  div_ [ class_ "card card-chart" ] $ do
                    div_ [ class_ "card-header card-header-danger" ] $ do
                      div_ [ class_ "ct-chart", id_ "completedTasksChart" ] $ ""
                    div_ [ class_ "card-body" ] $ do
                      h4_ [ class_ "card-title" ] $ "Completed Tasks"
                      p_ [ class_ "card-category" ] $ "Last Campaign Performance"
                    div_ [ class_ "card-footer" ] $ do
                      div_ [ class_ "stats" ] $ do
                        i_ [ class_ "material-icons" ] $ "access_time"
                        "campaign sent 2 days ago"
              div_ [ class_ "row" ] $ do
                div_ [ class_ "col-lg-6 col-md-12" ] $ do
                  div_ [ class_ "card" ] $ do
                    div_ [ class_ "card-header card-header-tabs card-header-primary" ] $ do
                      div_ [ class_ "nav-tabs-navigation" ] $ do
                        div_ [ class_ "nav-tabs-wrapper" ] $ do
                          span_ [ class_ "nav-tabs-title" ] $ "Tasks:"
                          ul_ [ class_ "nav nav-tabs", data_ "tabs" "tabs" ] $ do
                            li_ [ class_ "nav-item" ] $ do
                              a_ [ class_ "nav-link active", href_ "#profile", data_ "toggle" "tab" ] $ do
                                i_ [ class_ "material-icons" ] $ "bug_report"
                                "Bugs"
                                div_ [ class_ "ripple-container" ] $ ""
                            li_ [ class_ "nav-item" ] $ do
                              a_ [ class_ "nav-link", href_ "#messages", data_ "toggle" "tab" ] $ do
                                i_ [ class_ "material-icons" ] $ "code"
                                "Website"
                                div_ [ class_ "ripple-container" ] $ ""
                            li_ [ class_ "nav-item" ] $ do
                              a_ [ class_ "nav-link", href_ "#settings", data_ "toggle" "tab" ] $ do
                                i_ [ class_ "material-icons" ] $ "cloud"
                                "Server"
                                div_ [ class_ "ripple-container" ] $ ""
                    div_ [ class_ "card-body" ] $ do
                      div_ [ class_ "tab-content" ] $ do
                        div_ [ class_ "tab-pane active", id_ "profile" ] $ do
                          table_ [ class_ "table" ] $ do
                            tbody_ $ do
                              tr_ $ do
                                td_ $ do

                                  div_ [ class_ "form-check" ] $ do

                                    label_ [ class_ "form-check-label" ] $ do

                                      input_ [ class_ "form-check-input", type_ "checkbox", value_ "", checked_ ]

                                      span_ [ class_ "form-check-sign" ] $ do

                                        span_ [ class_ "check" ] $ ""


                                td_ "Sign contract for \"What are conference organizers afraid of?\""

                                td_ [ class_ "td-actions text-right" ] $ do

                                  button_ [ type_ "button", rel_ "tooltip", title_ "Edit Task", class_ "btn btn-primary btn-link btn-sm" ] $ do

                                    i_ [ class_ "material-icons" ] $ "edit"


                                  button_ [ type_ "button", rel_ "tooltip", title_ "Remove", class_ "btn btn-danger btn-link btn-sm" ] $ do

                                    i_ [ class_ "material-icons" ] $ "close"

                              tr_ $ do

                                td_ $ do

                                  div_ [ class_ "form-check" ] $ do

                                    label_ [ class_ "form-check-label" ] $ do

                                      input_ [ class_ "form-check-input", type_ "checkbox", value_ "" ]

                                      span_ [ class_ "form-check-sign" ] $ do

                                        span_ [ class_ "check" ] $ ""

                                td_ "Lines From Great Russian Literature? Or E-mails From My Boss?"

                                td_ [ class_ "td-actions text-right" ] $ do

                                  button_ [ type_ "button", rel_ "tooltip", title_ "Edit Task", class_ "btn btn-primary btn-link btn-sm" ] $ do

                                    i_ [ class_ "material-icons" ] $ "edit"


                                  button_ [ type_ "button", rel_ "tooltip", title_ "Remove", class_ "btn btn-danger btn-link btn-sm" ] $ do

                                    i_ [ class_ "material-icons" ] $ "close"

                              tr_ $ do

                                td_ $ do

                                  div_ [ class_ "form-check" ] $ do

                                    label_ [ class_ "form-check-label" ] $ do

                                      input_ [ class_ "form-check-input", type_ "checkbox", value_ "" ]

                                      span_ [ class_ "form-check-sign" ] $ do

                                        span_ [ class_ "check" ] $ ""

                                td_ "Flooded: One year later, assessing what was lost and what was found when a ravaging rain swept through metro Detroit"

                                td_ [ class_ "td-actions text-right" ] $ do

                                  button_ [ type_ "button", rel_ "tooltip", title_ "Edit Task", class_ "btn btn-primary btn-link btn-sm" ] $ do

                                    i_ [ class_ "material-icons" ] $ "edit"


                                  button_ [ type_ "button", rel_ "tooltip", title_ "Remove", class_ "btn btn-danger btn-link btn-sm" ] $ do

                                    i_ [ class_ "material-icons" ] $ "close"

                              tr_ $ do

                                td_ $ do

                                  div_ [ class_ "form-check" ] $ do

                                    label_ [ class_ "form-check-label" ] $ do

                                      input_ [ class_ "form-check-input", type_ "checkbox", value_ "", checked_ ]

                                      span_ [ class_ "form-check-sign" ] $ do

                                        span_ [ class_ "check" ] $ ""

                                td_ "Create 4 Invisible User Experiences you Never Knew About"

                                td_ [ class_ "td-actions text-right" ] $ do

                                  button_ [ type_ "button", rel_ "tooltip", title_ "Edit Task", class_ "btn btn-primary btn-link btn-sm" ] $ do

                                    i_ [ class_ "material-icons" ] $ "edit"
                                  button_ [ type_ "button", rel_ "tooltip", title_ "Remove", class_ "btn btn-danger btn-link btn-sm" ] $ do

                                    i_ [ class_ "material-icons" ] $ "close"

                        div_ [ class_ "tab-pane", id_ "messages" ] $ do

                          table_ [ class_ "table" ] $ do

                            tbody_ $ do

                              tr_ $ do

                                td_ $ do

                                  div_ [ class_ "form-check" ] $ do

                                    label_ [ class_ "form-check-label" ] $ do

                                      input_ [ class_ "form-check-input", type_ "checkbox", value_ "", checked_ ]

                                      span_ [ class_ "form-check-sign" ] $ do

                                        span_ [ class_ "check" ] $ ""

                                td_ "Flooded: One year later, assessing what was lost and what was found when a ravaging rain swept through metro Detroit"

                                td_ [ class_ "td-actions text-right" ] $ do

                                  button_ [ type_ "button", rel_ "tooltip", title_ "Edit Task", class_ "btn btn-primary btn-link btn-sm" ] $ do

                                    i_ [ class_ "material-icons" ] $ "edit"

                                  button_ [ type_ "button", rel_ "tooltip", title_ "Remove", class_ "btn btn-danger btn-link btn-sm" ] $ do

                                    i_ [ class_ "material-icons" ] $ "close"

                              tr_ $ do

                                td_ $ do

                                  div_ [ class_ "form-check" ] $ do

                                    label_ [ class_ "form-check-label" ] $ do

                                      input_ [ class_ "form-check-input", type_ "checkbox", value_ "" ]

                                      span_ [ class_ "form-check-sign" ] $ do

                                        span_ [ class_ "check" ] $ ""

                                td_ "Sign contract for \"What are conference organizers afraid of?\""

                                td_ [ class_ "td-actions text-right" ] $ do

                                  button_ [ type_ "button", rel_ "tooltip", title_ "Edit Task", class_ "btn btn-primary btn-link btn-sm" ] $ do

                                    i_ [ class_ "material-icons" ] $ "edit"

                                  button_ [ type_ "button", rel_ "tooltip", title_ "Remove", class_ "btn btn-danger btn-link btn-sm" ] $ do

                                    i_ [ class_ "material-icons" ] $ "close"

                        div_ [ class_ "tab-pane", id_ "settings" ] $ do

                          table_ [ class_ "table" ] $ do

                            tbody_ $ do

                              tr_ $ do

                                td_ $ do

                                  div_ [ class_ "form-check" ] $ do

                                    label_ [ class_ "form-check-label" ] $ do

                                      input_ [ class_ "form-check-input", type_ "checkbox", value_ "" ]

                                      span_ [ class_ "form-check-sign" ] $ do

                                        span_ [ class_ "check" ] $ ""


                                td_ "Lines From Great Russian Literature? Or E-mails From My Boss?"

                                td_ [ class_ "td-actions text-right" ] $ do

                                  button_ [ type_ "button", rel_ "tooltip", title_ "Edit Task", class_ "btn btn-primary btn-link btn-sm" ] $ do

                                    i_ [ class_ "material-icons" ] $ "edit"

                                  button_ [ type_ "button", rel_ "tooltip", title_ "Remove", class_ "btn btn-danger btn-link btn-sm" ] $ do

                                    i_ [ class_ "material-icons" ] $ "close"

                              tr_ $ do

                                td_ $ do

                                  div_ [ class_ "form-check" ] $ do

                                    label_ [ class_ "form-check-label" ] $ do

                                      input_ [ class_ "form-check-input", type_ "checkbox", value_ "", checked_ ]

                                      span_ [ class_ "form-check-sign" ] $ do

                                        span_ [ class_ "check" ] $ ""

                                td_ "Flooded: One year later, assessing what was lost and what was found when a ravaging rain swept through metro Detroit"

                                td_ [ class_ "td-actions text-right" ] $ do

                                  button_ [ type_ "button", rel_ "tooltip", title_ "Edit Task", class_ "btn btn-primary btn-link btn-sm" ] $ do

                                    i_ [ class_ "material-icons" ] $ "edit"


                                  button_ [ type_ "button", rel_ "tooltip", title_ "Remove", class_ "btn btn-danger btn-link btn-sm" ] $ do

                                    i_ [ class_ "material-icons" ] $ "close"

                              tr_ $ do

                                td_ $ do

                                  div_ [ class_ "form-check" ] $ do

                                    label_ [ class_ "form-check-label" ] $ do

                                      input_ [ class_ "form-check-input", type_ "checkbox", value_ "", checked_ ]

                                      span_ [ class_ "form-check-sign" ] $ do

                                        span_ [ class_ "check" ] $ ""

                                td_ "Sign contract for \"What are conference organizers afraid of?\""

                                td_ [ class_ "td-actions text-right" ] $ do

                                  button_ [ type_ "button", rel_ "tooltip", title_ "Edit Task", class_ "btn btn-primary btn-link btn-sm" ] $ do

                                    i_ [ class_ "material-icons" ] $ "edit"


                                  button_ [ type_ "button", rel_ "tooltip", title_ "Remove", class_ "btn btn-danger btn-link btn-sm" ] $ do

                                    i_ [ class_ "material-icons" ] $ "close"

                div_ [ class_ "col-lg-6 col-md-12" ] $ do

                  div_ [ class_ "card" ] $ do

                    div_ [ class_ "card-header card-header-warning" ] $ do

                      h4_ [ class_ "card-title" ] $ "Employees Stats"

                      p_ [ class_ "card-category" ] $ "New employees on 15th September, 2016"


                    div_ [ class_ "card-body table-responsive" ] $ do

                      table_ [ class_ "table table-hover" ] $ do

                        thead_ [ class_ "text-warning" ] $ do

                          th_ "ID"

                          th_ "Name"

                          th_ "Salary"

                          th_ "Country"


                        tbody_ $ do

                          tr_ $ do

                            td_ "1"

                            td_ "Dakota Rice"

                            td_ "$36,738"

                            td_ "Niger"


                          tr_ $ do

                            td_ "2"

                            td_ "Minerva Hooper"

                            td_ "$23,789"

                            td_ "Cura\231ao"


                          tr_ $ do

                            td_ "3"

                            td_ "Sage Rodriguez"

                            td_ "$56,142"

                            td_ "Netherlands"


                          tr_ $ do

                            td_ "4"

                            td_ "Philip Chaney"

                            td_ "$38,735"

                            td_ "Korea, South"

          footer_ [ class_ "footer" ] $ do

            div_ [ class_ "container-fluid" ] $ do

              nav_ [ class_ "float-left" ] $ do

                ul_ $ do

                  li_ $ do

                    a_ [ href_ "https://joycse06.github.io" ] $ "Joy Nag"

              div_ [ class_ "copyright float-right" ] $ do
                "\169"
                script_ "document.write(new Date().getFullYear())"
                ", made with"
                i_ [ class_ "material-icons" ] $ "favorite"
                "by"
                " "
                a_ [ href_ "http://joycse06.github.io", target_ "_blank" ] $ "Joy Nag"

            script_ [ src_ "/js/core/jquery.min.js", type_ "text/javascript" ] ("" :: String)
            script_ [ src_ "/js/core/popper.min.js", type_ "text/javascript" ] ("" :: String)
            script_ [ src_ "/js/core/bootstrap-material-design.min.js", type_ "text/javascript" ] ("" :: String)
            script_ [ src_ "/js/plugins/perfect-scrollbar.jquery.min.js" ] ("" :: String)
            script_ [ src_ "/js/plugins/chartist.min.js" ] ("" :: String)
            script_ [ src_ "/js/plugins/bootstrap-notify.js" ] ("" :: String)
            script_ [ src_ "/js/material-dashboard.min.js?v=2.1.0", type_ "text/javascript" ] ("" :: String)
            script_ "$(document).ready(function() {\n      // Javascript method's body can be found in assets/js/demos.js\n      md.initDashboardPageCharts();\n\n    });"
