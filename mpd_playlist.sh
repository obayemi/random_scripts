#!/usr/bin/env bash

if [ $# -eq 2 ]; then

    if [ $1 == 'clean' ]
    then
	< /home/obayemi/.mpd/playlists/$2.m3u sort -u > /home/obayemi/.mpd/playlists/$2_light.m3u && mv -f /home/obayemi/.mpd/playlists/$2_light.m3u /home/obayemi/.mpd/playlists/$2.m3u
	i3-nagbar -m "playlist '$2' cleaned" >& /dev/null &



    elif [ $1 == 'add_current' ]
    then
	mpc current -f %file% >> /home/obayemi/.mpd/playlists/$2.m3u
	i3-nagbar -m "song '`mpc current`' added to list" >& /dev/null &


#    elif [ $1 == 'remove_current' ]
#    then
#	sed "/`mpc current -f %file%`/d" -i /home/obayemi/.mpd/playlists/$2.m3u
#	i3-nagbar -m "song '`mpc current`' removed from list" >& /dev/null &


    else
	echo unknown \'$1\' option
    fi
else
    echo usage: \'$0 [add_current] [clean] playlist\'
fi


