upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '
/state/ { state=$2 }
/percentage/ { percentage=$2 }
END {
  if (state == "charging") {
	      print "+" percentage
	        } else {
		    print "-" percentage
		      }
      }'

