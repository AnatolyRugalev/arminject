all:
	@ndk-build -B

clean:
	@rm -rf obj libs

test: all
	python2.7 test.py
