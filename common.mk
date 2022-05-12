# your various installation directories
ifeq ($(DEPOT),)
$(error DEPOT variable is not set)
endif

BIOS_INSTALL_DIR    = $(DEPOT)/bios_6_37_05_35
CE_INSTALL_DIR      = $(DEPOT)/codec_engine_3_23_00_07
CG_INSTALL_DIR      = $(DEPOT)/ti-cgt-c6000_8.0.1
CMEM_INSTALL_DIR    = $(DEPOT)/linuxutils_3_23_00_01
FC_INSTALL_DIR      = $(DEPOT)/framework_components_3_24_02_15
IMGLIB_INSTALL_DIR  = $(DEPOT)/c64plus-imglib_2_02_00_00
IPC_INSTALL_DIR     = $(DEPOT)/ipc_1_25_03_15
LINK_INSTALL_DIR    = $(DEPOT)/syslink_2_21_03_11
OSAL_INSTALL_DIR    = $(DEPOT)/osal_1_24_00_09
VLIB_INSTALL_DIR    = $(DEPOT)/vlib_c674x_3_1_0_9
XDAIS_INSTALL_DIR   = $(DEPOT)/xdais_7_24_00_04
XDC_INSTALL_DIR     = $(DEPOT)/xdctools_3_25_06_96

CGTOOLS_C674 = $(CG_INSTALL_DIR)
#uncomment this for verbose builds
#XDCOPTIONS=v
XDCARGS = CGTOOLS_C674=\"$(CGTOOLS_C674)\"

THIS_PATH = $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
XDCPATH   = $(CE_INSTALL_DIR)/packages;$(XDAIS_INSTALL_DIR)/packages;$(BIOS_INSTALL_DIR)/packages;$(LINK_INSTALL_DIR)/packages;$(IPC_INSTALL_DIR)/packages;$(FC_INSTALL_DIR)/packages;$(OSAL_INSTALL_DIR)/packages;$(CMEM_INSTALL_DIR)/packages;$(VLIB_INSTALL_DIR)/packages;$(IMGLIB_INSTALL_DIR);$(THIS_PATH)
XDC       = $(XDC_INSTALL_DIR)/xdc
