KDIR ?= /lib/modules/`uname -r`/build

default:
	$(MAKE) -C $(KDIR) M=$$PWD

install:
	sudo $(MAKE) -C $(KDIR) M=$$PWD modules_install

clean:
	rm -f *.o *.ko *.mod.c .*.cmd
