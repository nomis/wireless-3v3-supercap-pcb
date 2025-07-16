# Render PCB as SVG
#
# Dependencies:
# - https://github.com/INTI-CMNB/KiBot
# - https://www.gnu.org/software/m4/
# - https://www.gnu.org/software/sed/

.DELETE_ON_ERROR:
.SECONDARY:
.PHONY: all

all: \
	render/wireless-3v3-supercap-pcb.svg \
	render/wireless-3v3-supercap-Root-sch.svg \
	render/wireless-3v3-supercap-Charge-sch.svg \
	render/wireless-3v3-supercap-Power\ In-sch.svg \
	render/wireless-3v3-supercap-Power\ Out-sch.svg

render/%-Root-sch.svg: build/%-schematic.svg Makefile
	sed \
		-e 's:<title>[^<]*</title>::' \
		< $< > $@

render/%-Charge-sch.svg: build/%-Charge.svg Makefile
	sed \
		-e 's:<title>[^<]*</title>::' \
		< $< > $@

render/%-Power\ In-sch.svg: build/%-Power\ In.svg Makefile
	sed \
		-e 's:<title>[^<]*</title>::' \
		< "$<" > "$@"

render/%-Power\ Out-sch.svg: build/%-Power\ Out.svg Makefile
	sed \
		-e 's:<title>[^<]*</title>::' \
		< "$<" > "$@"

render/%-pcb.svg: %-pcb.svg.in build/%-top.bare-svg build/%-bottom.bare-svg Makefile
	m4 < $< > $@

build/%-top.svg build/%-bottom.svg build/%-schematic.svg build/%-Charge.svg build/%-Power\ In.svg build/%-Power\ Out.svg: %.kicad_sch %.kicad_pcb default.kibot.yaml
	kibot -e $< -b $(word 2,$^)

build/%-top.rewrite-id-svg: build/%-top.svg Makefile
	sed -e 's: id=": id="t-:g' -e 's:url(#:url(#t-:g' < $< > $@

build/%-bottom.rewrite-id-svg: build/%-bottom.svg Makefile
	sed -e 's: id=": id="b-:g' -e 's:url(#:url(#b-:g' < $< > $@

build/%.bare-svg: build/%.rewrite-id-svg Makefile
	sed \
		-e 's:<!DOCTYPE [^>]\+>::' \
		-e 's:<svg \([^>]*\) width="[^"]*"\([^>]*\)>:<svg \1\2>:' \
		-e 's:<svg \([^>]*\) height="[^"]*"\([^>]*\)>:<svg \1\2>:' \
		-e 's:<title>[^<]*</title>::' \
		-e 's:<svg ::' \
		< $< > $@
