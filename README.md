# Night Writer

## Being anti-racist programmers is step 1 to being an empathetic and ethical programmer.  
- Transition your branch name "master" to "main"
- The historical context of a master in the US has roots in slavery.  Effectively evoking imagery and ancestoral trauma and doing so casually.  It is no longer acceptable.  
- But it is also not about symbolic changes.  This is an invitation to have a discussion about whether or not we want to exist in a culture that is casual about racism or actively anti-racism.  Let's do this.  Here are the directions:

INSTRUCTIONS:
- Use mkdir to create a new directory if you have not already.
- cd into that directory.
- Run git init to make that directory a Git repository.
- The default branch created with git is named master. Rename this to main by running: git symbolic-ref HEAD refs/heads/main

No more excuses.  Let's end racism, let's demand reparation for our black brothers, sisters, and siblings, and let's pick up our role as anti-racists...one conversation and relationship at a time.

##############################

#Night Writer
- Learning Goals / Areas of Focus
- Practice breaking a program into logical components
- Testing components in isolation and in combination
- Applying Enumerable techniques in a real context
- Reading text from and writing text to files
##Background
The idea of Night Writing was first developed for Napoleon’s army so soldiers could communicate silently at night without light. The concept of night writing led to Louis Braille’s development of his Braille tactile writing system.

##Project Requirements
In this project we’ll implement systems for generating Braille-like text from English characters and the reverse.

- Unlike previous projects where we may have provided an interaction pattern representing what you might see in Pry, this tool will be used from the command line. The general pattern is that we will run the program, providing an existing file for input, and the name of a nonexistent file for output, and the program will provide us with a confirmation:

`$ ruby ./lib/night_writer.rb message.txt braille.txt
Created 'braille.txt' containing 256 characters`
