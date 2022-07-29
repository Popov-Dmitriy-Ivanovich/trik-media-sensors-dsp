all:
	$(MAKE) -C trik/ov7670 $@
	$(MAKE) -C trik/webcam $@
	$(MAKE) -C trik/camera $@

clean:
	$(MAKE) -C trik/ov7670 $@
	$(MAKE) -C trik/webcam $@
	$(MAKE) -C trik/camera $@
