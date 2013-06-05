meanrecipes
===========

Starting to get this going.

To Do
===========
Wow, uh okay, cool. There are two big pieces to try and get going, just to prove this is even remotely possible;
1) Connect to Google, query it with a recipe name, and get the raw text of the first N pages loaded in to memory.
2) This is the hard one: break up the body of a website in to pieces, the separate the "recipe" from everything else. I have... ideas about this. 

More generally, here are things I don't understand:
1) What's the difference between searching for "Chicken" (the ingredient) and "Chicken" (the finished food)? Which one returns "Chicken Soup"? Both of them?

The smaller, yet still important, last piece is:
3) Can those two parts be hooked together, such that one can feed the other and return a "result"? Surely the answer is yes. Surely.

Notes
===========

Part 1: Connect to Google
     Erghm, okay. This should be relatively easy. Here's my thought:
          1. There are bunches of language-specific libraries that allow the querying and retrieval of Google searches.
    	  2. Pick one, go nuts.
     The difficulty, really, is this: there are, for instance, Python libraries that wrap Google and make this all very tidy, or you can just munge all the URLs and hope for the best. Which way to go?

Part 2: Process the Results
     Okay. I've got an idea. I'm... gonna fuck with this a little. 