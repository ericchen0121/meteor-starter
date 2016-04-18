# These values get propagated through the app
# E.g. The 'name' and 'subtitle' are used in seo.coffee

@Config =

	# Basic Details
	name: 'Emblem Conference 2016'
	title: ->
			TAPi18n.__ 'configTitle'
	subtitle: ->
			TAPi18n.__ 'configSubtitle'
	logo: ->
		'<b>' + @name + '</b>'
	footer: ->
		@name + ' - Copyright ' + new Date().getFullYear()

	# Emails
	emails:
		from: 'no-reply@' + Meteor.absoluteUrl()
		contact: 'hello' + Meteor.absoluteUrl()

	# Username - if true, users are forced to set a username
	username: false
	
	# Localisation
	defaultLanguage: 'en'
	dateFormat: 'D/M/YYYY'

	# Meta / Extenrnal content
	privacyUrl: 'http://meteorfactory.io'
	termsUrl: 'http://meteorfactory.io'

	# For email footers
	legal:
		address: 'Phoenix, MD'
		name: 'Meteor Factory'
		url: 'eric.chen0121@gmail.com'

	about: 'http://meteorfactory.io'
	blog: 'http://learn.meteorfactory.io'

	socialMedia:
		facebook:
			url: 'http://facebook.com/emblemmobile'
			icon: 'facebook'
		twitter:
			url: 'http://twitter.com/emblemmobile'
			icon: 'twitter'
		github:
			url: 'http://github.com/ericchen0121'
			icon: 'github'
		info:
			url: 'http://meteorfactory.io'
			icon: 'link'

	#Routes
	homeRoute: '/'
	publicRoutes: ['home']
	dashboardRoute: '/'