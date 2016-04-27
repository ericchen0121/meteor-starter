@Applicants = new Meteor.Collection('applicants');

Schemas.Applicants = new SimpleSchema
	company:
		type: String
		max: 60
		label: 'Company Name'

	founderNames:
		type: String
		max: 200
		label: 'Founder Names'

	emails:
		type: String
		max: 60
		label: 'Founder emails'

	companyUrl:
		type: String
		max: 60
		label: 'Company URL'

	shortDescription: 
		type: String
		max: 100
		label: '10-Word or Less Elevator Pitch'

	awards: 
		type: String
		max: 300
		label: 'Startup Awards Won (e.g. Mass. Challenge, MIT $100k)'

	accelerator: 
		type: String
		max: 300
		label: 'Accelerator programs (YC, Techstars)'

	funding: 
		type: String
		max: 300
		label: 'Prior Funding to Date'

	linkedInUrls: 
		type: String
		max: 200
		label: 'LinkedIn URLs'

	facebookUrls: 
		type: String
		max: 200
		label: 'Facebook URLS'

	twitterUrls: 
		type: String
		max: 200
		label: 'Twitter Usernames'

	instagramHandles: 
		type: String
		max: 200
		label: 'Instagram Handles'

	snapChatHandles: 
		type: String
		max: 200
		label: 'Snapchat Handles'

	crunchbaseUrl: 
		type: String
		max: 200
		label: 'Crunchbase URL'

	angellistUrl: 
		type: String
		max: 200
		label: 'AngelList URL'

	resumes:
    type: String
    autoform:
      afFieldInput:
        type: 'cfs-files'
        collection: 'Resumes'

  pitchDeck:
    type: String
    autoform:
      afFieldInput:
        type: 'cfs-files'
        collection: 'pitchDeck'
Applicants.attachSchema(Schemas.Applicants)