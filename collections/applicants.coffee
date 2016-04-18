@Applicants = new Meteor.Collection('applicants');

Schemas.Applicants = new SimpleSchema
	firstName:
		type: String
		max: 60

	lastName:
		type: String
		max: 60

	email:
		type: String
		max: 60

	company:
		type: String
		max: 60

	resume:
    type: String
    autoform:
      afFieldInput:
        type: 'fileUpload'
        collection: 'Resumes'
        label: 'Choose file' # optional

	createdAt:
		type: Date
		autoValue: ->
			if this.isInsert
				new Date()

	updatedAt:
		type:Date
		optional:true
		autoValue: ->
			if this.isUpdate
				new Date()

Applicants.attachSchema(Schemas.Applicants)