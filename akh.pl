#!/usr/bin/perl
use strict;

use warnings;

use autodie;

use File::Copy;   
#Gives you access to the "move" command
use constant {
    FROM_DIR => "/home/sandy/MIXFILES",
    TO_DIRPDF  =>  "/home/sandy/PDFFILES",
    TO_DIRTXT  =>  "/home/sandy/TEXTFILES",
    TO_DIRJPG   => "/home/sandy/JPGFILES",
    TO_DIRDOC   =>  "/home/sandy/DOCFILES",
    TO_DIRM   => "/home/sandy/MFILES",
   
};

#Opens FROM_DIR, so I can read from it
opendir my $dir, FROM_DIR;


while (my $file = readdir $dir) 
{ 
  my $from = FROM_DIR . "/" . "$file";
 if($file=~/[a-zA-Z0-9].pdf/)
  {
    move $from, TO_DIRPDF;
  }
else if($file=~/[a-zA-Z0-9].doc/)
  {
    #my $fr = FROM_DIR . "/" . "$file";
    move $from,TO_DIRDOC;
  }
else if($file=~/[a-zA-Z0-9].txt/)
  {
    #my $f = FROM_DIR . "/" . "$file";
    move $from,TO_DIRTXT;
  }
else if($file=~/[a-zA-Z0-9].m/)
  {
    # my $gh = FROM_DIR . "/" . "$file";
    move $from,TO_DIRM;
  }
else if($file=~/[a-zA-Z0-9].jpg/)
  {
    #my $df = FROM_DIR . "/" . "$file";
    move $from,TO_DIRJPG;
  }
}

