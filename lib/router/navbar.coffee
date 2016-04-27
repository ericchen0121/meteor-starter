Router.map ->
  @route "applynow",
    path: "/"
    waitOn: ->
      [
        Meteor.subscribe 'resumes'
      ]