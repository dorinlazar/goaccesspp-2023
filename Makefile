.PHONY: executables makedirs
all: makedirs executables
build/csv.o: src/csv.c src/color.h src/commons.h src/csv.h src/error.h src/gkhash.h src/gslist.h src/gstorage.h src/khash.h src/labels.h src/parser.h src/settings.h src/sort.h src/ui.h src/util.h
	g++ -c src/csv.c -o build/csv.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/sort.o: src/sort.c src/commons.h src/error.h src/gslist.h src/parser.h src/settings.h src/sort.h src/util.h
	g++ -c src/sort.c -o build/sort.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/websocket.o: src/websocket.c src/base64.h src/commons.h src/error.h src/gslist.h src/settings.h src/sha1.h src/websocket.h src/xmalloc.h
	g++ -c src/websocket.c -o build/websocket.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/opesys.o: src/opesys.c src/commons.h src/error.h src/gslist.h src/opesys.h src/settings.h src/util.h src/xmalloc.h
	g++ -c src/opesys.c -o build/opesys.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/facss.o: src/facss.cpp 
	g++ -c src/facss.cpp -o build/facss.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/sha1.o: src/sha1.c src/sha1.h
	g++ -c src/sha1.c -o build/sha1.o -Isrc -Isrc -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/gdashboard.o: src/gdashboard.c src/color.h src/commons.h src/error.h src/gdashboard.h src/gholder.h src/gkhash.h src/gslist.h src/gstorage.h src/khash.h src/labels.h src/parser.h src/settings.h src/sort.h src/ui.h src/util.h src/xmalloc.h
	g++ -c src/gdashboard.c -o build/gdashboard.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/color.o: src/color.c src/color.h src/commons.h src/error.h src/gslist.h src/settings.h src/util.h src/xmalloc.h
	g++ -c src/color.c -o build/color.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/gwsocket.o: src/gwsocket.c src/color.h src/commons.h src/error.h src/goaccess.h src/gslist.h src/gwsocket.h src/json.h src/labels.h src/parser.h src/settings.h src/sort.h src/ui.h src/websocket.h src/xmalloc.h
	g++ -c src/gwsocket.c -o build/gwsocket.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/geoip1.o: src/geoip1.c src/commons.h src/error.h src/geoip1.h src/gslist.h src/settings.h src/util.h
	g++ -c src/geoip1.c -o build/geoip1.o -Isrc -Isrc -I/usr/include/ -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/chartsjs.o: src/chartsjs.cpp 
	g++ -c src/chartsjs.cpp -o build/chartsjs.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/persistence.o: src/persistence.c src/commons.h src/error.h src/gkhash.h src/gslist.h src/gstorage.h src/khash.h src/parser.h src/persistence.h src/settings.h src/sort.h src/tpl.h src/util.h src/xmalloc.h
	g++ -c src/persistence.c -o build/persistence.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/output.o: src/output.c src/appcss.h src/appjs.h src/bootstrapcss.h src/chartsjs.h src/color.h src/commons.h src/d3js.h src/error.h src/facss.h src/gkhash.h src/gslist.h src/gstorage.h src/gwsocket.h src/hoganjs.h src/json.h src/khash.h src/labels.h src/output.h src/parser.h src/settings.h src/sort.h src/tpls.h src/ui.h src/util.h src/websocket.h src/xmalloc.h
	g++ -c src/output.c -o build/output.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/tpls.o: src/tpls.cpp 
	g++ -c src/tpls.cpp -o build/tpls.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/gslist.o: src/gslist.c src/commons.h src/gslist.h src/gstorage.h src/parser.h src/xmalloc.h
	g++ -c src/gslist.c -o build/gslist.o -Isrc -Isrc -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/error.o: src/error.c src/commons.h src/error.h src/gslist.h src/labels.h src/parser.h src/settings.h
	g++ -c src/error.c -o build/error.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/json.o: src/json.c src/color.h src/commons.h src/error.h src/gkhash.h src/gslist.h src/gstorage.h src/json.h src/khash.h src/labels.h src/parser.h src/settings.h src/sort.h src/ui.h src/util.h src/websocket.h src/xmalloc.h
	g++ -c src/json.c -o build/json.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/khash.o: src/khash.cpp 
	g++ -c src/khash.cpp -o build/khash.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/gholder.o: src/gholder.c src/commons.h src/error.h src/gdns.h src/geoip1.h src/gholder.h src/gkhash.h src/gslist.h src/gstorage.h src/khash.h src/parser.h src/settings.h src/sort.h src/util.h src/xmalloc.h
	g++ -c src/gholder.c -o build/gholder.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/gdns.o: src/gdns.c src/color.h src/commons.h src/error.h src/gdns.h src/gkhash.h src/goaccess.h src/gslist.h src/gstorage.h src/khash.h src/labels.h src/parser.h src/settings.h src/sort.h src/ui.h src/util.h src/xmalloc.h
	g++ -c src/gdns.c -o build/gdns.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/appjs.o: src/appjs.cpp 
	g++ -c src/appjs.cpp -o build/appjs.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/xmalloc.o: src/xmalloc.c src/commons.h src/error.h src/gslist.h src/settings.h src/xmalloc.h
	g++ -c src/xmalloc.c -o build/xmalloc.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/parser.o: src/parser.c src/browsers.h src/color.h src/commons.h src/error.h src/gkhash.h src/goaccess.h src/gslist.h src/gstorage.h src/khash.h src/labels.h src/parser.h src/pdjson.h src/settings.h src/sort.h src/ui.h src/util.h src/websocket.h src/xmalloc.h
	g++ -c src/parser.c -o build/parser.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/pdjson.o: src/pdjson.c src/pdjson.h
	g++ -c src/pdjson.c -o build/pdjson.o -Isrc -Isrc -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/settings.o: src/settings.c src/commons.h src/error.h src/gkhash.h src/gslist.h src/gstorage.h src/khash.h src/labels.h src/parser.h src/pdjson.h src/settings.h src/util.h src/xmalloc.h
	g++ -c src/settings.c -o build/settings.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/goaccess.o: src/goaccess.c src/csv.h src/sort.h src/websocket.h src/opesys.h src/facss.h src/sha1.h src/gdashboard.h src/color.h src/gwsocket.h src/geoip1.h src/chartsjs.h src/persistence.h src/output.h src/tpls.h src/gslist.h src/error.h src/json.h src/khash.h src/gholder.h src/gdns.h src/appjs.h src/xmalloc.h src/parser.h src/pdjson.h src/settings.h src/goaccess.h src/bootstrapcss.h src/commons.h src/ui.h src/util.h src/browsers.h src/gstorage.h src/base64.h src/gkhash.h src/hoganjs.h src/options.h src/appcss.h src/labels.h src/gmenu.h src/tpl.h src/d3js.h src/win/mman.h
	g++ -c src/goaccess.c -o build/goaccess.o -Isrc -Isrc -Isrc/win -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/bootstrapcss.o: src/bootstrapcss.cpp 
	g++ -c src/bootstrapcss.cpp -o build/bootstrapcss.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/commons.o: src/commons.c src/commons.h src/error.h src/gslist.h src/labels.h src/settings.h src/util.h src/xmalloc.h
	g++ -c src/commons.c -o build/commons.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/bin2c.o: src/bin2c.c 
	g++ -c src/bin2c.c -o build/bin2c.o -Isrc -Isrc -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/ui.o: src/ui.c src/color.h src/commons.h src/error.h src/gkhash.h src/gmenu.h src/goaccess.h src/gslist.h src/gstorage.h src/khash.h src/labels.h src/parser.h src/settings.h src/sort.h src/ui.h src/util.h src/xmalloc.h
	g++ -c src/ui.c -o build/ui.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/util.o: src/util.c src/commons.h src/error.h src/gslist.h src/labels.h src/settings.h src/util.h src/xmalloc.h
	g++ -c src/util.c -o build/util.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/browsers.o: src/browsers.c src/browsers.h src/commons.h src/error.h src/gslist.h src/opesys.h src/settings.h src/util.h src/xmalloc.h
	g++ -c src/browsers.c -o build/browsers.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/gstorage.o: src/gstorage.c src/browsers.h src/color.h src/commons.h src/error.h src/geoip1.h src/gkhash.h src/gslist.h src/gstorage.h src/khash.h src/labels.h src/opesys.h src/parser.h src/settings.h src/sort.h src/ui.h src/util.h src/xmalloc.h
	g++ -c src/gstorage.c -o build/gstorage.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/base64.o: src/base64.c src/base64.h src/xmalloc.h
	g++ -c src/base64.c -o build/base64.o -Isrc -Isrc -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/gkhash.o: src/gkhash.c src/commons.h src/error.h src/gkhash.h src/gslist.h src/gstorage.h src/khash.h src/parser.h src/persistence.h src/settings.h src/sort.h src/util.h src/xmalloc.h
	g++ -c src/gkhash.c -o build/gkhash.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/hoganjs.o: src/hoganjs.cpp 
	g++ -c src/hoganjs.cpp -o build/hoganjs.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/options.o: src/options.c src/commons.h src/error.h src/gslist.h src/labels.h src/options.h src/settings.h src/util.h src/xmalloc.h
	g++ -c src/options.c -o build/options.o -Isrc -Isrc -I/usr/include/ -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/appcss.o: src/appcss.cpp 
	g++ -c src/appcss.cpp -o build/appcss.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/labels.o: src/labels.cpp 
	g++ -c src/labels.cpp -o build/labels.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/gmenu.o: src/gmenu.c src/color.h src/commons.h src/gmenu.h src/gslist.h src/labels.h src/parser.h src/sort.h src/ui.h src/xmalloc.h
	g++ -c src/gmenu.c -o build/gmenu.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/tpl.o: src/tpl.c src/tpl.h src/win/mman.h
	g++ -c src/tpl.c -o build/tpl.o -Isrc -Isrc -Isrc/win -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/d3js.o: src/d3js.cpp 
	g++ -c src/d3js.cpp -o build/d3js.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/win/mman.o: src/win/mman.cpp 
	g++ -c src/win/mman.cpp -o build/win/mman.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -Wall -Wextra

build/goaccess.exe: build/base64.o build/browsers.o build/color.o build/commons.o build/csv.o build/error.o build/gdashboard.o build/gdns.o build/geoip1.o build/gholder.o build/gkhash.o build/gmenu.o build/goaccess.o build/gslist.o build/gstorage.o build/gwsocket.o build/json.o build/opesys.o build/options.o build/output.o build/parser.o build/pdjson.o build/persistence.o build/settings.o build/sha1.o build/sort.o build/tpl.o build/ui.o build/util.o build/websocket.o build/xmalloc.o
	g++ -o build/goaccess.exe build/base64.o build/browsers.o build/color.o build/commons.o build/csv.o build/error.o build/gdashboard.o build/gdns.o build/geoip1.o build/gholder.o build/gkhash.o build/gmenu.o build/goaccess.o build/gslist.o build/gstorage.o build/gwsocket.o build/json.o build/opesys.o build/options.o build/output.o build/parser.o build/pdjson.o build/persistence.o build/settings.o build/sha1.o build/sort.o build/tpl.o build/ui.o build/util.o build/websocket.o build/xmalloc.o -flto -Werror -ltcmalloc -lGeoIP -lncursesw -ltinfo -lssl -lcrypto

build/bin2c.exe: build/bin2c.o
	g++ -o build/bin2c.exe build/bin2c.o -flto -Werror -ltcmalloc -lbz2

executables: build/goaccess.exe build/bin2c.exe
makedirs:
	mkdir -p build build/win
