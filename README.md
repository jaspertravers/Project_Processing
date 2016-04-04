# Project_Processing
*A group project to invent together with Processing (as a first step, more to
come!)*

Current Inspirations:
---------------------
---------------------

###  Interactive displays with strong GUI usage:
  
    http://stevecrayons.com/pendulum/
  
    http://stevecrayons.com/sines/

  
###  Ideals:
  
    http://worrydream.com/#!/LearnableProgramming
  
    http://worrydream.com/#!/KillMath
    
    http://worrydream.com/#

    
###  Learning:
  
    http://natureofcode.com/book/introduction/

    
###  Examples:
  
    sortvis.org


###  Installation:

  Grab the linux archive from [here](https://processing.org/download/?processing)
  Extract it with
    
    tar -xzvf [archive name]

  So now there is a processing-[version] folder wherever you extracted from the
  archive.

  Now you'll want to create symbolic links to this new extracted directory:
    
    sudo ln -s /absolute/path/to/extracted_dir/processing /usr/bin &&
    sudo ln -s /absolute/path/to/extracted_dir/processing-java /usr/bin
 
  Now simply type "processing" at a terminal to start the processing IDE. Be
  sure to never delete the extracted folder, wherever that may happen to be
  (most likely your downloads folder)


###  Building and running (using ellipse testfile):
    
    processing-java --sketch=sketches/ellipse --run

  This assumes you have processing-java (or a link to it) in your PATH env
  variable.   

  ---

*More coming, and feel free to add anything you like or reformat this readme.*
