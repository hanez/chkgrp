all:
	$(CC) -Wall -o ./chkgrp ./chkgrp.c
	$(CC) -Wall -o ./chkgrp-min ./chkgrp-min.c
	$(CC) -Wall -o ./chkgrp-native ./chkgrp-native.c
	$(CC) -Wall -o ./chkgrp-native-min ./chkgrp-native-min.c
	$(CC) -Wall -o ./chkgrp-native-min-extended ./chkgrp-native-min-extended.c

clean:
	rm -f ./chkgrp
	rm -f ./chkgrp-min
	rm -f ./chkgrp-native
	rm -f ./chkgrp-native-min
	rm -f ./chkgrp-native-min-extended

install:
	install -g 0 -o 0 -m 0655 ./chkgrp /usr/bin/
	install -g 0 -o 0 -m 0655 ./chkgrp-min /usr/bin/
	install -g 0 -o 0 -m 0655 ./chkgrp-native /usr/bin/
	install -g 0 -o 0 -m 0655 ./chkgrp-native-min /usr/bin/
	install -g 0 -o 0 -m 0655 ./chkgrp-native-min-extended /usr/bin/

uninstall:
	rm -f /usr/bin/chkgrp
	rm -f /usr/bin/chkgrp-min
	rm -f /usr/bin/chkgrp-native
	rm -f /usr/bin/chkgrp-native-min
	rm -f /usr/bin/chkgrp-native-min-extended

