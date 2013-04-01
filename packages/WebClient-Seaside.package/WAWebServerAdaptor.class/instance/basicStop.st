private
basicStop
	"Stop the WebServer instance if it is running"

	server ifNotNil:[
		server destroy.
		server := nil.
	].
