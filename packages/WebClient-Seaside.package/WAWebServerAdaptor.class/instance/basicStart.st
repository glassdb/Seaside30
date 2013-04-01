private
basicStart
	"Start the WebServer instance"

	server := WebServer new.
	server addService: '/' action: (MessageSend receiver: self selector: #process:).
	server certName: certName.
	server listenOn: self port.