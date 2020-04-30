.PHONY: all clean

all:
	export HOME=`pwd`; dune build @all
	dune build -p Bug_Coq

clean:
	rm -rf _build || true
	rm theories/*.vo || true
	rm theories/*.glob || true
	rm theories/*.aux || true
	rm src/extract.{ml,mli} || true

