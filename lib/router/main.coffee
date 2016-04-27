Router.map ->

  @route "dashboard",
    path: "/dashboard"
    waitOn: ->
      [
        subs.subscribe 'posts'
        subs.subscribe 'comments'
        subs.subscribe 'attachments'
        subs.subscribe 'applicants'
        subs.subscribe 'resumes'
      ]
    data: ->
      posts: Posts.find({},{sort: {createdAt: -1}}).fetch()