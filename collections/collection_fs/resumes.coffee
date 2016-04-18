@Resumes = new FS.Collection("Resumes",
	stores: [
		new FS.Store.GridFS("resumes", {

			transformWrite: (fileObj, readStream, writeStream)->
				if gm.isAvailable
					if fileObj.original.type.substr(0,5) == 'image'
					  gm(readStream, fileObj.name()).autoOrient().stream().pipe(writeStream);
					else
					  readStream.pipe(writeStream);
				else
					readStream.pipe(writeStream)
		})
	]
)