kom/4.12 (Comanche/4.12)
bolot 2/20/2002 13:55
- cookies support
- defaultChunkSize delegates to Kom5Preferences

HttpResponse (bolot 4/2/2001 18:52)

Comment from kom46:
I am a response to an HttpRequest.  I can formulate an HTTP response and send it out over a socket.  An HttpAdapter will accept an HttpRequest, dispatch a method call to an HttpPlug (which will result in a stream or an error), and then formulat an instance of me to deliver the response to the client.