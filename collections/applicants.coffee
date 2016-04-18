@Applicants = new Meteor.Collection('applicants');

Schemas.Posts = new SimpleSchema
	firstName:
		type: String
		max: 60

	lastName:
		type: String
		max: 60

	company:
		type: String
		max: 60

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