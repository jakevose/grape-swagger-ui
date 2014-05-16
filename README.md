grape-swagger-ui
================

An example of tying together Grape and Swagger UI in a single application using Rack::Cascade.

This currently serves up Rack::File, which behaves poorly with custom routes like "/" => "index.html"
and I'm having trouble getting Rack::Static to do exactly what I want.

TODO:

* Use Sinatra for the web side of the Cascade
* Test harness!
* Guard / file reloads as pragmatic
* Better example endpoints
