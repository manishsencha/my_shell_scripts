# my_shell_scripts

This repository contains my automations.
My daily tasks or frequest tasks are handled by these scripts which are growing each day.

## Files
### reasy
This script creates react app and clears all boilerplate code and gives me ready to use react project. 
<br>

<code> reasy project_name </code>

### comp
This script is super helpful. Each time I required to create a file for coding 
I used to create a file then copy paste boilerplate from another file or sometimes code myself. 
Now, a single command does it. <br>

<code> comp filename.cpp </code>

## How??
I keep the scripts in my home ( <code>echo $HOME</code> ) directory and building them keeping this directory as epicentre.
<br>
<br>
I have 2 components
<ul>
  <li> 
    First, the scripts resides in the base directory and all the executables are in <code> bin </code>
    directory. 
  </li>
  <li>
    Second, you have to make all the scripts in bin excutables and also make that folder accessible from anywhere. <br>
  </li>
</ul>

## Installation instructions
<ul> 
  <li>
    Clone this repository in <code> $HOME</code> directory using <br><code>git clone https://github.com/manishsencha/my_shell_scripts.git scripts</code>.
  </li>
  <li>
    Make bin folder executable using <br><code> chmod +x $HOME/scripts/bin/* </code>
  </li>
  <li>
    Make all the bin files accessible from anywhere. This will be done by adding <br>
    <code>export PATH=$PATH:$HOME/scripts/bin</code> <br>
    to the end of <code>~/.bashrc</code> file.
  </li>
  <li>
    Finally, run <code>source ~/.bashrc</code>. We are good to go. Happy Happy Joy Joy:) 
  </li>
</ul>

   
    
