require 'mkmf'

# not valid for C++ code
$warnflags = ($warnflags.to_s.split - %w(-Wdeclaration-after-statement -Wimplicit-function-declaration)) * ' '

# OpenCV includes
$INCFLAGS << ' -I ../include'

create_header('cvconfig.h')

create_makefile("opencv_imgproc")
