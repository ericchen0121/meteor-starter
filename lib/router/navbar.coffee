Router.map ->
  @route "tickets",
    path: "/tickets"

  @route "speakers",
    path: "/speakers"

  @route "applynow",
    path: "/applynow"
    waitOn: ->
      [
        Meteor.subscribe 'resumes'
      ]

  @route "about",
    path: "/about"

  @route "contact",
    path: "/contact"

  @route "signup",
    path: "/signup"

  @route "schedule",
    path: "/schedule"
