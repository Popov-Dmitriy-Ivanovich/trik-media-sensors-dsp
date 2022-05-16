all:
	$(MAKE) -C trik/ov7670 $@
	$(MAKE) -C trik/webcam $@

clean:
	$(MAKE) -C trik/ov7670 $@
	$(MAKE) -C trik/webcam $@
