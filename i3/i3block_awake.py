#!/usr/bin/env python3

import subprocess, os, signal
from i3ipc import Event, Connection

def on_fullscreen( i3, e ) :
    """
    A callback which is called every time a window
    changes its fullscreen mode
    """
    try :
        process = subprocess.Popen( ['pgrep', 'i3blocks'],
                                   stdout=subprocess.PIPE,
                                   stderr=subprocess.PIPE,
                                   universal_newlines=True )
        pid = int( process.stdout.readline().split()[0] )
        os.kill( pid, signal.SIGCONT ) 
    except :
        i3.main_quit()

i3 = Connection()

i3.on( Event.WINDOW_FULLSCREEN_MODE, on_fullscreen )

i3.main()
