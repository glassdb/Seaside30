kom/4.12 (Comanche/4.12)

HTTPAdaptor (kom/4.8; bolot 4/2/2001 18:48)
- logging is removed from kom46 core
- so is Process>>contextAt:ifAbsent:
- kom48 adds rudimentary persistent connections
-- see keepAliveConnection senders (also in Preferences)

Comment from kom46:
I encapsulate the HTTP protocol from my clients (who must support the HttpPlug interface).  I use an HttpRequest to pick apart a request and I use an HttpResponse to formulate a response.  Mainly, I broker the conversation, turning a request into a message send (to an HttpPlug) and converting the answer to an HttpResponse.  Thus, my clients must simply implement a message based protocol (eliminating the need for them to be concerned with HTTP syntax).

Instance Variables:

stream <Stream> - A bidirectional stream for reading and writing request (note: previously Comanche separated the readStream and writeStream, if you need to separate the read stream from the write stream you can create a new bidirectional stream class that uses two separate streams for reading and writing)

httpService <HttpService> - an instance of an HttpService or a protocol compatible substitute; this object is used as the error handler and the target of http request dispatching

postProcessors <OrderedCollection | nil> - this is a list of objects that are sent post processing messages (after the response has been written); this enables objects to request that they get called after the HttpAdaptor has actually written the response onto the write stream
