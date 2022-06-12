# Animation Playback Options:
complete -c blender -n "not __fish_seen_subcommand_from -a" -o a -r -d "Instead of showing Blender's user interface, this runs Blender as an animation player,
to view movies and image sequences rendered in Blender (ignored if '-b' is set)"

complete -c blender -n "__fish_seen_subcommand_from -a" -o p -x -d "<sx> <sy> Open with lower left corner at <sx>, <sy>"
complete -c blender -n "__fish_seen_subcommand_from -a" -o m -d "Read from disk (Do not buffer)"
complete -c blender -n "__fish_seen_subcommand_from -a" -o f -x -d "<fps> <fps-base> Specify FPS to start with"
complete -c blender -n "__fish_seen_subcommand_from -a" -o j -x -d "<frame> Set frame step to <frame>"
complete -c blender -n "__fish_seen_subcommand_from -a" -o s -x -d "<frame> Play from <frame>"
complete -c blender -n "__fish_seen_subcommand_from -a" -o e -x -d "<frame> Play until <frame>"
complete -c blender -n "__fish_seen_subcommand_from -a" -o c -x -d "Amount of memory in megabytes to allow for caching images during playback.
Zero disables (clamping to a fixed number of frames instead)"


# Render Options:
complete -c blender -n "not __fish_seen_subcommand_from -a" -o b -l background -d "Run in background (often used for UI-less rendering)"
complete -c blender -n "not __fish_seen_subcommand_from -a" -o a -l render-anim -d "Render frames from start to end (inclusive)"
complete -c blender -n "not __fish_seen_subcommand_from -a" -o S -l scene -x -d "Set the active scene <name> for rendering"
complete -c blender -n "not __fish_seen_subcommand_from -a" -o f -l render-frame -x -d "Render frame <frame> and save it
* +<frame> start frame relative, -<frame> end frame relative.
* A comma separated list of frames can also be used (no spaces).
* A range of frames can be expressed using '..' separator between the first and last frames (inclusive)"

complete -c blender -n "not __fish_seen_subcommand_from -a" -o s -l frame-start -x -d "Set start to frame <frame>, supports +/- for relative frames too"
complete -c blender -n "not __fish_seen_subcommand_from -a" -o e -l frame-end -x -d "Set end to frame <frame>, supports +/- for relative frames too"
complete -c blender -n "not __fish_seen_subcommand_from -a" -o j -l frame-jump -x -d "Set number of frames to step forward after each rendered frame"
complete -c blender -n "not __fish_seen_subcommand_from -a" -o o -l render-output -r -d "Set the render path and file name. Use '//' at the start of the path to render relative to the blend-file
The '#' characters are replaced by the frame number, and used to define zero padding
* 'animation_##_test.png' becomes 'animation_01_test.png'
* 'test-######.png' becomes 'test-000001.png
When the filename does not contain '#', The suffix '####' is added to the filename
The frame number will be added at the end of the filename, eg:
# blender -b animation.blend -o //render_ -F PNG -x 1 -a
'//render_' becomes '//render_####', writing frames as '//render_0001.png"
complete -c blender -n "not __fish_seen_subcommand_from -a" -o E -l engine -x -a "BLENDER_EEVEE BLENDER_WORKBENCH CYCLES" -d "Specify the render engine
Use '-E' help to list available engines"
complete -c blender -n "not __fish_seen_subcommand_from -a" -o t -l threads -x -d "Use amount of <threads> for rendering and other operations [1-1024], 0 for systems processor count"


# Format Options:
complete -c blender -n "not __fish_seen_subcommand_from -a" -o F -l render-format -x -a "TGA\tTarga
RAWTGA\tRaw\ Targa
JPEG\tJPEG
IRIS\tIRIS
IRIZ\tIRIZ
AVIRAW\tAVI\ RAW
AVIJPEG\tAVI\ with\ JPEG\ codec
PNG\tPNG
BMP\tBMP
HDR\tHDR
TIFF\tTIFF
OPEN_EXR\tOPENEXR
OPEN_EXR_MULTILAYER\tOPENEXR\ MULTILAYER
MPEG\tMPEG
CINEON\tCINEON
DPX\tDPX
DDS\tDDS
JP2\tJP2
WEBP\tWEBP" -d "Set the render format

Valid options are:
'TGA' 'RAWTGA' 'JPEG' 'IRIS' 'IRIZ' 'AVIRAW' 'AVIJPEG' 'PNG' 'BMP'

Formats that can be compiled into Blender, not available on all systems:
'HDR' 'TIFF' 'OPEN_EXR' 'OPEN_EXR_MULTILAYER' 'MPEG' 'CINEON' 'DPX' 'DDS' 'JP2' 'WEBP'"
complete -c blender -n "not __fish_seen_subcommand_from -a" -o x -l use-extension -x -a "
0\tfalse
1\ttrue" -d "Set option to add the file extension to the end of the file"


# Window Options:
complete -c blender -n "not __fish_seen_subcommand_from -a" -o w -l window-border -d "Force opening with borders"
complete -c blender -n "not __fish_seen_subcommand_from -a" -o W -l window-fullscreen -d "Force opening in fullscreen mode"
complete -c blender -n "not __fish_seen_subcommand_from -a" -o p -l window-geometry -x -d "Open with lower left corner at <sx>, <sy> and width and height as <w>, <h>"
complete -c blender -n "not __fish_seen_subcommand_from -a" -o M -l window-maximized  -d "Force opening maximized"
complete -c blender -n "not __fish_seen_subcommand_from -a" -o con -l start-console  -d "Start with the console window open (ignored if '-b' is set), (Windows only)"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l no-native-pixels  -d "Do not use native pixel size, for high resolution displays (MacBook 'Retina')"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l no-window-focus  -d "Open behind other windows and without taking focus"


# Python Options:
complete -c blender -n "not __fish_seen_subcommand_from -a" -o y -l enable-autoexec -d "Enable automatic Python script execution"
complete -c blender -n "not __fish_seen_subcommand_from -a" -o Y -l disable-autoexec  -d "Disable automatic Python script execution (pydrivers & startup scripts), (compiled as non-standard default)"

complete -c blender -n "not __fish_seen_subcommand_from -a" -o P -l python -x -a "(__fish_complete_suffix py)" -d "Run the given Python script file"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l python-text -x -d "Run the given Python script text block"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l python-expr -x -d "Run the given expression as a Python script"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l python-console -d "Run Blender with an interactive console"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l python-exit-code -x -d "Set the exit-code in [0..255] to exit if a Python exception is raised (only for scripts executed from the command line), zero disables"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l python-use-system-env -d "Allow Python to use system environment variables such as 'PYTHONPATH' and the user site-packages directory"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l addons -x -d "Comma separated list (no spaces) of add-ons to enable in addition to any default add-ons"


# Logging Options:
complete -c blender -n "not __fish_seen_subcommand_from -a" -l log -x -d "Enable logging categories, taking a single comma separated argument.
Multiple categories can be matched using a '.*' suffix,
so '--log \"wm.*\"' logs every kind of window-manager message.
Use \"^\" prefix to ignore, so '--log \"*,^wm.operator.*\"' logs all except for 'wm.operators.*'
Use \"*\" to log everything"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l log-level -x -d "Set the logging verbosity level (higher for more details) defaults to 1, use -1 to log all levels"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l log-show-basename -d "Only show file name in output (not the leading path)"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l log-show-backtrace -d "Show a back trace for each log message (debug builds only)"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l log-show-timestamp -d "Show a timestamp for each log message in seconds since start"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l log-file -d "Set a file to output the log to"


# Debug Options:
complete -c blender -n "not __fish_seen_subcommand_from -a" -o d -l debug -d "Turn debugging on
* Enables memory error detection
* Disables mouse grab (to interact with a debugger in some cases)
* Keeps Python's 'sys.stdin' rather than setting it to None"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-value -x -d "Set debug value of <value> on startup"

complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-events -d "Enable debug messages for the event system"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-ffmpeg -d "Enable debug messages from FFmpeg library"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-handlers -d "Enable debug messages for event handling"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-libmv -d "Enable debug messages from libmv library"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-cycles -d "Enable debug messages from Cycles"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-memory -d "Enable fully guarded memory allocation and debugging"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-jobs -d "Enable time profiling for background jobs"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-python -d "Enable debug messages for Python"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-depsgraph -d "Enable all debug messages from dependency graph"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-depsgraph-eval -d "Enable debug messages from dependency graph related on evaluation"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-depsgraph-build -d "Enable debug messages from dependency graph related on graph construction"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-depsgraph-tag -d "Enable debug messages from dependency graph related on tagging"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-depsgraph-no-threads -d "Switch dependency graph to a single threaded evaluation"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-depsgraph-time -d "Enable debug messages from dependency graph related on timing"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-depsgraph-pretty -d "Enable colors for dependency graph debug messages"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-depsgraph-uuid -d "Verify validness of session-wide identifiers assigned to ID datablocks"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-depsgraph-ghost -d "Enable debug messages for Ghost (Linux only)"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-depsgraph-wintab -d "Enable debug messages for Wintab"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-gpu -d "Enable gpu debug context and information for OpenGL 4.3+"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-gpu-force-workarounds -d "Enable workarounds for typical GPU issues and disable all GPU extensions"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-wm -d "Enable debug messages for the window manager, shows all operators in search, shows keymap errors"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-xr -d "Enable debug messages for virtual reality contexts
Enables the OpenXR API validation layer, (OpenXR) debug messages and general information prints"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-xr-time -d "Enable debug messages for virtual reality frame rendering times"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-all -d "Enable all debug messages"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-io -d "Enable debug messages for I/O (Collada, ...)"

complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-fpe -d "Enable floating point exceptions"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-exit-on-error -d "Immediately exit when internal errors are detected"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l disable-crash-handler -d "Disable the crash handler"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l verbose -x -d "Set the logging verbosity level for debug messages that support it"


# Misc Options:
complete -c blender -n "not __fish_seen_subcommand_from -a" -l open-last -d "Open the most recently opened blend file, instead of the default startup file"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l app-template -x -d "Set the application template (matching the directory name), use 'default' for none"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l factory-startup -d "Skip reading the BLENDER_STARTUP_FILE in the users home directory"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l enable-event-simulate -d "Enable event simulation testing feature 'bpy.types.Window.event_simulate'"

complete -c blender -n "not __fish_seen_subcommand_from -a" -l env-system-datafiles -d "Set the BLENDER_SYSTEM_DATAFILES environment variable"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l env-system-scripts -d "Set the BLENDER_SYSTEM_SCRIPTS environment variable"
complete -c blender -n "not __fish_seen_subcommand_from -a" -l env-system-python -d "Set the BLENDER_SYSTEM_PYTHON environment variable"

complete -c blender -n "not __fish_seen_subcommand_from -a" -o noaudio -d "Force sound system to None"
complete -c blender -n "not __fish_seen_subcommand_from -a" -o setaudio -x -a "None SDL OpenAL CoreAudio JACK PulseAudio WASAPI" -d "Force sound system to a specific device
'None' 'SDL' 'OpenAL' 'CoreAudio' 'JACK' 'PulseAudio' 'WASAPI' "


complete -c blender -n "not __fish_seen_subcommand_from -a" -o h -l help -d "Print this help text and exit"
complete -c blender -n "not __fish_seen_subcommand_from -a" -o R -d "Register blend-file extension, then exit (Windows only)"
complete -c blender -n "not __fish_seen_subcommand_from -a" -o r -d "Silently register blend-file extension, then exit (Windows only)"
complete -c blender -n "not __fish_seen_subcommand_from -a" -o v -l version -d "Print Blender version and exit"
complete -c blender -n "not __fish_seen_subcommand_from -a" -o - -d "End option processing, following arguments passed unchanged. Access via Python's 'sys.argv'"


# Other Options:
complete -c blender -n "not __fish_seen_subcommand_from -a" -l debug-freestyle -d "Enable debug messages for Freestyle"
