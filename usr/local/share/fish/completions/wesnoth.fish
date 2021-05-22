# Command specific completions for the wesnoth command from The Battle For Wesnoth (a strategy game)
# http://www.wesnoth.org/

complete -c wesnoth -l bpp -d 'Number sets BitsPerPixel value'
complete -c wesnoth -l compress -d '<in> <out> compress a savefile from text to binary format'
complete -c wesnoth -s d -l debug -d 'Shows extra debugging information'
complete -c wesnoth -l decompress -d '<in> <out> decompress a savefile from binary to text format'
complete -c wesnoth -s f -l fullscreen -d 'Runs the game in full screen mode'
complete -c wesnoth -l fps -d 'Shows frames per second'
complete -c wesnoth -s h -l help -d 'Display a summary of command line options'
complete -c wesnoth -l load -d 'Loads the file savegame from the standard save game directory'
complete -c wesnoth -l log-error -l log-warning -l log-info -d 'Set the severity level of debugging domains'
complete -c wesnoth -l multiplayer -d 'Runs a multiplayer game'
complete -c wesnoth -l nocache -d 'Disables caching of game data'
complete -c wesnoth -l nosound -d 'Runs the game without sounds and music'
complete -c wesnoth -l path -d 'Prints the name of the game data directory and exits'
complete -c wesnoth -s r -l resolution -d 'XxY sets the screen resolution'
complete -c wesnoth -s t -l test -d 'Runs the game in a small test scenario'
complete -c wesnoth -s v -l version -d 'Shows the version number and exits'
complete -c wesnoth -s w -l windowed -d 'Runs the game in windowed mode'
complete -c wesnoth -l no-delay -d 'Runs the game without any delays for graphic benchmarking'
complete -c wesnoth -l exit-at-end -d 'Exits once the scenario is over, without displaying dialog'
complete -c wesnoth -l algorithm -d 'Selects a non-standard algorithm to be used by the AI controller'
complete -c wesnoth -l controller -d 'Selects the controller for this side'
complete -c wesnoth -l era -d 'Use this option to play in the selected era'
complete -c wesnoth -l nogui -d 'Runs the game without the GUI'
complete -c wesnoth -l parm -d 'Sets additional parameters for this side'
complete -c wesnoth -l scenario -d 'Selects a multiplayer scenario'
complete -c wesnoth -l side -d 'Selects a faction of the current era for this side'
complete -c wesnoth -l turns -d 'Sets the number of turns for the chosen scenario'
