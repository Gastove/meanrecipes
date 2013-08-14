meanrecipes
===========

Starting to get this going -- now, with TWICE as much rails! Whee!

To Do
===========

Right. This is a Rails app now. That's cool. 

# TODO One: Learn the Hell out of Rails. 
# TODO Two: Figure out TODOs 3-n

Part 1: Connect to Google
     Erghm, okay. This should be relatively easy. Here's my thought:
          1. There are bunches of language-specific libraries that allow the querying and retrieval of Google searches.
    	  2. Pick one, go nuts.
     The difficulty, really, is this: there are, for instance, Python libraries that wrap Google and make this all very tidy, or you can just munge all the URLs and hope for the best. Which way to go?

Part 2: Process the Results
     Okay. I've got an idea. I'm... gonna fuck with this a little. 

General Architecture Notes
============

The Rails App:
* Talks to the scala backend via REST api calls.
  Backend access via environment variable, BACKEND_BASE_URL. Currently set to 'meanrecipes-extractr.herokuapp.com'

Hoooookay. So lets think about this.

We're going to have:
# A gui (set of views) that allow, at a minimum:
## User enters search term
## User gets result

More precisely put:
# User enters search term
## Search term passed to extractr via REST API call.
## Extractr does some pondering
# Exposed API recieves "item fineshed" callback from extractr, which contains a mongo key, a Postgres lookup, something
# Rails App diggs model out of storage, parses it, shows it.

So I need, to continue:
# A test model. (Can be 100% fake, but the exercise of making one could be very good)

The Scala App:
* Puts results in, lets be honest, probably Mongo, then hits a callback in the Rails app to tell it a result is finished. 
* This means we need MongoDB.
* Should be able to hit the frontend

# TODO: Add FRONTEND_BASE_URL to scala app/env.