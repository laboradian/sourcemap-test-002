all: html js css

html: dist/index.html
js: dist/js/main.js dist/js/utils.js
css: dist/css/main.css

dist/index.html: src/index.html
	cp -p src/index.html dist/

dist/js/main.js: src/js/main.js
	#./node_modules/.bin/uglifyjs src/js/main.js -cm -o dist/js/main.js --source-map "root='file:///C:/Users/yuki/repositories/github/laboradian/uglifyjs-test-001',url='main.js.map'"
	#./node_modules/.bin/uglifyjs src/js/main.js -cm -o dist/js/main.js --source-map "root='../..',url='main.js.map'"
	#./node_modules/.bin/uglifyjs src/js/main.js -cm -o dist/js/main.js --source-map "url='main.js.map'"
	#./node_modules/.bin/uglifyjs src/js/main.js -cm -o dist/js/main.js --source-map "root='',url='main.js.map'"
	./node_modules/.bin/uglifyjs src/js/main.js -cm -o dist/js/main.js --source-map "root='..',url='main.js.map'"

dist/js/utils.js: src/js/utils.js
	#./node_modules/.bin/uglifyjs src/js/utils.js -cm -o dist/js/utils.js --source-map "root='file:///C:/Users/yuki/repositories/github/laboradian/uglifyjs-test-001',url='utils.js.map'"
	#./node_modules/.bin/uglifyjs src/js/utils.js -cm -o dist/js/utils.js --source-map "root='../..',url='utils.js.map'"
	#./node_modules/.bin/uglifyjs src/js/utils.js -cm -o dist/js/utils.js --source-map "url='utils.js.map'"
	#./node_modules/.bin/uglifyjs src/js/utils.js -cm -o dist/js/utils.js --source-map "root='',url='utils.js.map'"
	./node_modules/.bin/uglifyjs src/js/utils.js -cm -o dist/js/utils.js --source-map "root='..',url='utils.js.map'"

dist/css/main.css: src/sass/main.scss
	./node_modules/.bin/sass src/sass/main.scss dist/css/main.css

clean:
	rm dist/index.html
	rm dist/js/main.js
	rm dist/js/main.js.map
	rm dist/js/utils.js
	rm dist/js/utils.js.map
	rm dist/css/main.css
	rm dist/css/main.css.map