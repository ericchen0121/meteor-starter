Router.map ->
  @route "home",
    path: "/"
    layoutTemplate: "homeLayout"

  @route "dashboard",
    path: "/dashboard"
    waitOn: ->
      [
        subs.subscribe 'posts'
        subs.subscribe 'comments'
        subs.subscribe 'attachments'
        subs.subscribe 'applicants'
      ]
    data: ->
      posts: Posts.find({},{sort: {createdAt: -1}}).fetch()