include ../../../../common.mk

LINKCMD=../../common/dsp_server/link.cmd

.PHONY: all $(LINKCMD) clean

all: $(LINKCMD)
	$(XDC) XDCOPTIONS=$(XDCOPTIONS) XDCARGS="$(XDCARGS)" --xdcpath="$(XDCPATH)"

$(LINKCMD): $(LINKCMD).in
	sed -e 's|@IMGLIB_INSTALL_DIR@|$(realpath $(IMGLIB_INSTALL_DIR))|g' $< > $@

clean:
	$(XDC) XDCOPTIONS=$(XDCOPTIONS) clean
	rm -f $(LINKCMD)
