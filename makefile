XCF2PNG = xcf2png

SRC_DIR = ${shell pwd}/src

XCF_SRC = ${shell find ${SRC_DIR} -name '*.xcf'}
PNG_OUT = ${XCF_SRC:%.xcf=%.png}
MCMETA_SRC = ${shell find ${SRC_DIR} -name '*.mcmeta'}

default: build

.PHONY: clean
clean:
	-@ rm -f stealth.zip ${PNG_OUT}

.PHONY: build
build: ${PNG_OUT} ${MCMETA_SRC}

.PHONY: package
package: stealth.zip

stealth.zip: ${PNG_OUT} ${MCMETA_SRC}
	@ for f in $^ ; do \
		cd ${SRC_DIR} ;\
		f=`realpath --relative-to=${SRC_DIR} "$$f"` ;\
		zip ../$@ "$$f" ;\
	done

%.png: %.xcf
	${XCF2PNG} $< -o $@
