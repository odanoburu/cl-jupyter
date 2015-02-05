Fishbowl
========

----

**WARNING** :  this branch is an attempt to reverse the control
flow, letting the lisp side manage the REPL and using the
python part only as a frontend.

However, the ipython notebook server does not allow, for the moment at least,
 the connection to an existing kernel... So for now this branch will not developed
 anymore as long as the Ipython (Jupyter) side does not evolve on the topic.

----

An enhanced interactive Shell for Common Lisp  (based on IPython)

```
 Fishbowl: an enhanced interactive Common Lisp Shell
(Version 0.5 - Ipython protocol v.4.1)
--> (C) 2014-2015 Frederic Peschanski (cf. LICENSE)
                                 __________       
                                /         /.      
     .-----------------.       /_________/ |      
    /                 / |      |         | |      
   /+================+\ |      | |====|  | |      
   ||Fishbowl        || |      |         | |      
   ||                || |      | |====|  | |      
   ||* (fact 5)      || |      |         | |      
   ||120             || |      |   ___   | |      
   ||                || |      |  |166|  | |      
   ||                ||/@@@    |   ---   | |      
   \+================+/    @   |_________|./.     
                         @           ..  ....'    
     ..................@      __.'. '  ''         
    /oooooooooooooooo//      ///                  
   /................//      /_/                   
   ------------------                          
```

**Important** : this is alpha version non-officially released software. **Use it at your own risk and peril !**

## Requirements ##

To try Fishbowl you need :

 - a Common lisp implementation, for now

   - either SBCL 1.2.x or above (with native threads enabled)

   - or Clozure CL 1.10 or aboce (with native threads enabled) ...

   - ECL is planned, for other implementations please fill an issue.

 - Quicklisp (cf. http://www.quicklisp.org/)

 - Python 3.2 or above

 - IPython 2.1 or above

## Quick launch ##

For simple interactions on the console, just type:

    python3 ./run-fishbowl.py     (or directly ./run-fishbowl.py if python3 is in PATH)

```
In [1]: (* 2 21)
Out[1]: 42

In [2]: 
```

By default, Fishbowl assumes SBCL as the default lisp implementation. Using CCL instead requires
the following command line:

    python3 ./run-fishbowl.py  --lisp=ccl


**Note**: Fishbowl seems to work better with CCL on MacOS  (but on Linux everything's fine with SBCL).

## Notebooks ##

The real interest of Fishbowl is its use conjointly
 with the IPython notebook frontend. For a try, type:

    python3 ./run-fishbowl.py notebook

(for SBCL)

or

    python3 ./run-fishbowl.py notebook  --lisp=ccl

(for CCL)

The file `AboutFishbowl.ipynb` is an example of a Lisp-based notebook.

The file `AboutFishbowl.pdf` is a printable PDF version of this notebook that can be
generated by the IPython `nbconvert` tool.

----

 ... have fun !

