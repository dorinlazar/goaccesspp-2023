.PHONY: executables makedirs
all: makedirs executables
build/csv.o: src/csv.cpp src/commons.h src/csv.h src/error.h src/gkhash.h src/gslist.h src/gstorage.h src/khash.h src/kltools/klflags.h src/labels.h src/parser.h src/settings.h src/sort.h src/ui/color.h src/ui/ui.h src/util.h
	g++ -c src/csv.cpp -o build/csv.o -Isrc -Isrc -Isrc/kltools -Isrc/ui -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/pdjson.o: src/pdjson.cpp src/pdjson.h
	g++ -c src/pdjson.cpp -o build/pdjson.o -Isrc -Isrc -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/appcss.o: src/appcss.cpp 
	g++ -c src/appcss.cpp -o build/appcss.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/gdashboard.o: src/gdashboard.cpp src/commons.h src/error.h src/gdashboard.h src/gholder.h src/gkhash.h src/gslist.h src/gstorage.h src/khash.h src/kltools/klflags.h src/labels.h src/parser.h src/settings.h src/sort.h src/ui/color.h src/ui/ui.h src/util.h src/xmalloc.h
	g++ -c src/gdashboard.cpp -o build/gdashboard.o -Isrc -Isrc -Isrc/kltools -Isrc/ui -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/opesys.o: src/opesys.cpp src/commons.h src/error.h src/gslist.h src/opesys.h src/settings.h src/util.h src/xmalloc.h
	g++ -c src/opesys.cpp -o build/opesys.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/facss.o: src/facss.cpp 
	g++ -c src/facss.cpp -o build/facss.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/json.o: src/json.cpp src/commons.h src/error.h src/gkhash.h src/gslist.h src/gstorage.h src/json.h src/khash.h src/kltools/klflags.h src/labels.h src/parser.h src/settings.h src/sort.h src/ui/color.h src/ui/ui.h src/util.h src/websocket.h src/xmalloc.h
	g++ -c src/json.cpp -o build/json.o -Isrc -Isrc -Isrc/kltools -Isrc/ui -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/gmenu.o: src/gmenu.cpp src/commons.h src/gmenu.h src/gslist.h src/kltools/klflags.h src/labels.h src/parser.h src/sort.h src/ui/color.h src/ui/ui.h src/xmalloc.h
	g++ -c src/gmenu.cpp -o build/gmenu.o -Isrc -Isrc -Isrc/kltools -Isrc/ui -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/websocket.o: src/websocket.cpp src/base64.h src/commons.h src/error.h src/gslist.h src/settings.h src/sha1.h src/websocket.h src/xmalloc.h
	g++ -c src/websocket.cpp -o build/websocket.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/geoip1.o: src/geoip1.cpp src/commons.h src/error.h src/geoip1.h src/gslist.h src/settings.h src/util.h
	g++ -c src/geoip1.cpp -o build/geoip1.o -Isrc -Isrc -I/usr/include/ -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/sha1.o: src/sha1.cpp src/sha1.h
	g++ -c src/sha1.cpp -o build/sha1.o -Isrc -Isrc -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/util.o: src/util.cpp src/commons.h src/error.h src/gslist.h src/labels.h src/settings.h src/util.h src/xmalloc.h
	g++ -c src/util.cpp -o build/util.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/gwsocket.o: src/gwsocket.cpp src/commons.h src/error.h src/goaccess.h src/gslist.h src/gwsocket.h src/json.h src/kltools/klflags.h src/labels.h src/parser.h src/settings.h src/sort.h src/ui/color.h src/ui/ui.h src/websocket.h src/xmalloc.h
	g++ -c src/gwsocket.cpp -o build/gwsocket.o -Isrc -Isrc -Isrc/kltools -Isrc/ui -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/options.o: src/options.cpp src/commons.h src/error.h src/gslist.h src/labels.h src/options.h src/settings.h src/util.h src/xmalloc.h
	g++ -c src/options.cpp -o build/options.o -Isrc -Isrc -I/usr/include/ -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/chartsjs.o: src/chartsjs.cpp 
	g++ -c src/chartsjs.cpp -o build/chartsjs.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/commons.o: src/commons.cpp src/commons.h src/error.h src/gslist.h src/labels.h src/settings.h src/util.h src/xmalloc.h
	g++ -c src/commons.cpp -o build/commons.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/tpl.o: src/tpl.cpp src/tpl.h src/win/mman.h
	g++ -c src/tpl.cpp -o build/tpl.o -Isrc -Isrc -Isrc/win -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/output.o: src/output.cpp src/appcss.h src/appjs.h src/bootstrapcss.h src/chartsjs.h src/commons.h src/d3js.h src/error.h src/facss.h src/gkhash.h src/gslist.h src/gstorage.h src/gwsocket.h src/hoganjs.h src/json.h src/khash.h src/kltools/klflags.h src/labels.h src/output.h src/parser.h src/settings.h src/sort.h src/tpls.h src/ui/color.h src/ui/ui.h src/util.h src/websocket.h src/xmalloc.h
	g++ -c src/output.cpp -o build/output.o -Isrc -Isrc -Isrc/kltools -Isrc/ui -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/tpls.o: src/tpls.cpp 
	g++ -c src/tpls.cpp -o build/tpls.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/gslist.o: src/gslist.cpp src/commons.h src/gslist.h src/gstorage.h src/parser.h src/xmalloc.h
	g++ -c src/gslist.cpp -o build/gslist.o -Isrc -Isrc -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/gstorage.o: src/gstorage.cpp src/browsers.h src/commons.h src/error.h src/geoip1.h src/gkhash.h src/gslist.h src/gstorage.h src/khash.h src/kltools/klflags.h src/labels.h src/opesys.h src/parser.h src/settings.h src/sort.h src/ui/color.h src/ui/ui.h src/util.h src/xmalloc.h
	g++ -c src/gstorage.cpp -o build/gstorage.o -Isrc -Isrc -Isrc/kltools -Isrc/ui -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/khash.o: src/khash.cpp 
	g++ -c src/khash.cpp -o build/khash.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/settings.o: src/settings.cpp src/commons.h src/error.h src/gkhash.h src/gslist.h src/gstorage.h src/khash.h src/labels.h src/parser.h src/pdjson.h src/settings.h src/util.h src/xmalloc.h
	g++ -c src/settings.cpp -o build/settings.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/gholder.o: src/gholder.cpp src/commons.h src/error.h src/gdns.h src/geoip1.h src/gholder.h src/gkhash.h src/gslist.h src/gstorage.h src/khash.h src/parser.h src/settings.h src/sort.h src/util.h src/xmalloc.h
	g++ -c src/gholder.cpp -o build/gholder.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/sort.o: src/sort.cpp src/commons.h src/error.h src/gslist.h src/parser.h src/settings.h src/sort.h src/util.h
	g++ -c src/sort.cpp -o build/sort.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/gdns.o: src/gdns.cpp src/commons.h src/error.h src/gdns.h src/gkhash.h src/goaccess.h src/gslist.h src/gstorage.h src/khash.h src/kltools/klflags.h src/labels.h src/parser.h src/settings.h src/sort.h src/ui/color.h src/ui/ui.h src/util.h src/xmalloc.h
	g++ -c src/gdns.cpp -o build/gdns.o -Isrc -Isrc -Isrc/kltools -Isrc/ui -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/appjs.o: src/appjs.cpp 
	g++ -c src/appjs.cpp -o build/appjs.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/xmalloc.o: src/xmalloc.cpp src/commons.h src/error.h src/gslist.h src/settings.h src/xmalloc.h
	g++ -c src/xmalloc.cpp -o build/xmalloc.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/gkhash.o: src/gkhash.cpp src/commons.h src/error.h src/gkhash.h src/gslist.h src/gstorage.h src/khash.h src/parser.h src/persistence.h src/settings.h src/sort.h src/util.h src/xmalloc.h
	g++ -c src/gkhash.cpp -o build/gkhash.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/error.o: src/error.cpp src/commons.h src/error.h src/gslist.h src/labels.h src/parser.h src/settings.h
	g++ -c src/error.cpp -o build/error.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/parser.o: src/parser.cpp src/browsers.h src/commons.h src/error.h src/gkhash.h src/goaccess.h src/gslist.h src/gstorage.h src/khash.h src/kltools/klflags.h src/labels.h src/parser.h src/pdjson.h src/settings.h src/sort.h src/ui/color.h src/ui/ui.h src/util.h src/websocket.h src/xmalloc.h
	g++ -c src/parser.cpp -o build/parser.o -Isrc -Isrc -Isrc/kltools -Isrc/ui -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/bootstrapcss.o: src/bootstrapcss.cpp 
	g++ -c src/bootstrapcss.cpp -o build/bootstrapcss.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/base64.o: src/base64.cpp src/base64.h src/xmalloc.h
	g++ -c src/base64.cpp -o build/base64.o -Isrc -Isrc -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/browsers.o: src/browsers.cpp src/browsers.h src/commons.h src/error.h src/gslist.h src/opesys.h src/settings.h src/util.h src/xmalloc.h
	g++ -c src/browsers.cpp -o build/browsers.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/hoganjs.o: src/hoganjs.cpp 
	g++ -c src/hoganjs.cpp -o build/hoganjs.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/labels.o: src/labels.cpp 
	g++ -c src/labels.cpp -o build/labels.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/goaccess.o: src/goaccess.cpp src/csv.h src/pdjson.h src/appcss.h src/gdashboard.h src/opesys.h src/facss.h src/json.h src/gmenu.h src/websocket.h src/geoip1.h src/sha1.h src/util.h src/gwsocket.h src/options.h src/chartsjs.h src/commons.h src/tpl.h src/output.h src/tpls.h src/gslist.h src/gstorage.h src/khash.h src/settings.h src/gholder.h src/sort.h src/gdns.h src/appjs.h src/xmalloc.h src/gkhash.h src/error.h src/parser.h src/bootstrapcss.h src/base64.h src/browsers.h src/hoganjs.h src/labels.h src/goaccess.h src/d3js.h src/persistence.h src/kltools/klflags.h src/ui/ui.h src/ui/color.h src/win/mman.h
	g++ -c src/goaccess.cpp -o build/goaccess.o -Isrc -Isrc -Isrc/kltools -Isrc/ui -Isrc/win -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/d3js.o: src/d3js.cpp 
	g++ -c src/d3js.cpp -o build/d3js.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/persistence.o: src/persistence.cpp src/commons.h src/error.h src/gkhash.h src/gslist.h src/gstorage.h src/khash.h src/parser.h src/persistence.h src/settings.h src/sort.h src/tpl.h src/util.h src/xmalloc.h
	g++ -c src/persistence.cpp -o build/persistence.o -Isrc -Isrc -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/kltools/klflags.o: src/kltools/klflags.cpp 
	g++ -c src/kltools/klflags.cpp -o build/kltools/klflags.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/ui/ui.o: src/ui/ui.cpp src/commons.h src/error.h src/gkhash.h src/gmenu.h src/goaccess.h src/gslist.h src/gstorage.h src/khash.h src/kltools/klflags.h src/labels.h src/parser.h src/settings.h src/sort.h src/ui/color.h src/ui/ui.h src/util.h src/xmalloc.h
	g++ -c src/ui/ui.cpp -o build/ui/ui.o -Isrc -Isrc -Isrc/kltools -Isrc/ui -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/ui/color.o: src/ui/color.cpp src/commons.h src/error.h src/gslist.h src/kltools/klflags.h src/settings.h src/ui/color.h src/util.h src/xmalloc.h
	g++ -c src/ui/color.cpp -o build/ui/color.o -Isrc -Isrc -Isrc/kltools -Isrc/ui -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/win/mman.o: src/win/mman.cpp 
	g++ -c src/win/mman.cpp -o build/win/mman.o -Isrc -std=c++20 -g3 -O2 -flto -Werror -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_DEFAULT_SOURCE -D_BSD_SOURCE -Wall -Wextra

build/goaccess.exe: build/base64.o build/browsers.o build/commons.o build/csv.o build/error.o build/gdashboard.o build/gdns.o build/geoip1.o build/gholder.o build/gkhash.o build/gmenu.o build/goaccess.o build/gslist.o build/gstorage.o build/gwsocket.o build/json.o build/opesys.o build/options.o build/output.o build/parser.o build/pdjson.o build/persistence.o build/settings.o build/sha1.o build/sort.o build/tpl.o build/ui/color.o build/ui/ui.o build/util.o build/websocket.o build/xmalloc.o
	g++ -o build/goaccess.exe build/base64.o build/browsers.o build/commons.o build/csv.o build/error.o build/gdashboard.o build/gdns.o build/geoip1.o build/gholder.o build/gkhash.o build/gmenu.o build/goaccess.o build/gslist.o build/gstorage.o build/gwsocket.o build/json.o build/opesys.o build/options.o build/output.o build/parser.o build/pdjson.o build/persistence.o build/settings.o build/sha1.o build/sort.o build/tpl.o build/ui/color.o build/ui/ui.o build/util.o build/websocket.o build/xmalloc.o -flto -Werror -lGeoIP -lncursesw -ltinfo -lssl -lcrypto

executables: build/goaccess.exe
makedirs:
	mkdir -p build build/kltools build/ui build/win
