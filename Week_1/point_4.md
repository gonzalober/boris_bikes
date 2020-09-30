## Type of Error ##
 " NameError (uninitialized constant DockingStation)"
## File Path where the error happened ##
 from /Users/gonzaloberhouet/.rvm/gems/ruby-2.7.0/gems/irb-1.2.7/exe/irb:11:in `<top (required)>' 
 ## Line number ##
 Line number: 1
 ## One possible way for solution ##
 This error happens when the code refers to a class or module that it can't find, often because the code doesn't include require, which instructs the Ruby file to load the class.
In order to solve the error we need to create a new class (in this case is DockingStation class).
