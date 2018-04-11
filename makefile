BASE_DIR = ${shell pwd}
SRC_DIR = ${BASE_DIR}/src

XCF2PNG = xcf2png
ABS2REL = ${BASE_DIR}/abs2rel


XCF_SRC = ${shell find ${SRC_DIR} -name '*.xcf'}
PNG_OUT = ${XCF_SRC:%.xcf=%.png}
MCMETA_SRC = ${shell find ${SRC_DIR} -name '*.mcmeta'}

default: build

.PHONY: clean
clean:
	-@ rm -f stealth.zip ${PNG_OUT}

.PHONY: build
build: ${PNG_OUT}

.PHONY: package
package: stealth.zip

stealth.zip: ${PNG_OUT} ${MCMETA_SRC}
	@ for f in $^ ; do \
		cd ${SRC_DIR} ;\
		f=`${ABS2REL} "$$f" ${SRC_DIR}` ;\
		zip ../$@ "$$f" ;\
	done

%.png: %.xcf
	${XCF2PNG} $< -o $@
