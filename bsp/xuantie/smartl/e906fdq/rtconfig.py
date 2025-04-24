import os
ARCH     = 'risc-v'
CPU      = 'xuantie'
# toolchains options
CROSS_TOOL  = 'gcc'

#------- toolchains path -------------------------------------------------------
if os.getenv('RTT_CC'):
    CROSS_TOOL = os.getenv('RTT_CC')

if  CROSS_TOOL == 'gcc':
    PLATFORM    = 'gcc'
    EXEC_PATH   = r'D:\RT-ThreadStudio\repo\Extract\ToolChain_Support_Packages\RISC-V\XTGccElfNewlib\V3.0.1\R\bin'
else:
    print('Please make sure your toolchains is GNU GCC!')
    exit(0)
	
if os.getenv('RTT_EXEC_PATH'):
    EXEC_PATH = os.getenv('RTT_EXEC_PATH')

BUILD = 'debug'
#BUILD = 'release'

CORE = 'risc-v'
MAP_FILE = 'rtthread.map'
LINK_FILE = './board/linker_scripts/gcc_flash_smartl.ld'
TARGET_NAME = 'rtthread.bin'

#------- GCC settings ----------------------------------------------------------
if PLATFORM == 'gcc':
    # toolchains
    PREFIX = 'riscv64-unknown-elf-'
    CC = PREFIX + 'gcc'
    CXX= PREFIX + 'g++'
    AS = PREFIX + 'gcc'
    AR = PREFIX + 'ar'
    LINK = PREFIX + 'gcc'
    TARGET_EXT = 'elf'
    SIZE = PREFIX + 'size'
    OBJDUMP = PREFIX + 'objdump'
    OBJCPY = PREFIX + 'objcopy'
    
    DEFINES = ' -DCONFIG_ARCH_INTERRUPTSTACK=4096 '
    DEFINES += '-DCONFIG_CPU_XUANTIE_E906FDP '
    
    XUANTIECPU = ' -c -MP -MMD -Os -Wno-main -mcpu=c906fd -mcmodel=medany '
    DEVICE = XUANTIECPU + DEFINES + ' -L. -nostartfiles '
    
    #CFLAGS = DEVICE
    #CFLAGS += ' -Wno-unused-function -Wpointer-arith -Wno-undef -Wall -Wl,-EL -ffunction-sections -fdata-sections -fno-inline-functions -fno-builtin -fno-strict-aliasing -fno-strength-reduce '
    CFLAGS = ' -c -MP -MMD -Os -Wno-main -mcpu=e906fdp -mcmodel=medlow -Wno-unused-function -O0 -g -nostdlib -Wpointer-arith -Wno-undef -Wall -Wl,-EL -ffunction-sections -fdata-sections -fno-inline-functions -fno-builtin -fno-strict-aliasing -fno-strength-reduce -Os -g -Wall -Wunused -Wformat -Wformat-security -Warray-bounds -Wuninitialized -Wreturn-type -Wcomment -Wswitch -Wparentheses -Wlogical-op -DCONFIG_KERNEL_RTTHREAD=1 -D__RT_KERNEL_SOURCE__=1 -DCONFIG_CSI_V2=1 -DCONFIG_CSI=\"csi2\" -DCONFIG_LIBC_MINI_PRINTF_SUPPORT=1 -DCONFIG_SUPPORT_TSPEND=1 -DCONFIG_SUPPORT_IRQ_NESTED=1 -DCONFIG_XIP=1 -DCONFIG_ARCH_MAINSTACK=4096 -DCONFIG_ARCH_INTERRUPTSTACK=4096 -DCONFIG_CPU_XUANTIE_E906FDP=1 -DCONFIG_INIT_TASK_STACK_SIZE=4096 -DCONFIG_APP_TASK_STACK_SIZE=4096 -DCONFIG_SYSTICK_HZ=100 -DCONFIG_BOARD_SMARTL_EVB=1 -DCONFIG_DEBUG=1 -DCLI_CONFIG_STACK_SIZE=4096 '
    
    # AFLAGS = DEVICE
    # AFLAGS += ' -x assembler-with-cpp -D__ASSEMBLY__ -I.'
    AFLAGS = '-MP -MMD -Os -Wno-main -mcpu=e906fdp -mcmodel=medlow -D__ASSEMBLY__ -DCONFIG_KERNEL_RTTHREAD=1 -D__RT_KERNEL_SOURCE__=1 -DCONFIG_CSI_V2=1 -DCONFIG_CSI=\"csi2\" -DCONFIG_LIBC_MINI_PRINTF_SUPPORT=1 -DCONFIG_SUPPORT_TSPEND=1 -DCONFIG_SUPPORT_IRQ_NESTED=1 -DCONFIG_XIP=1 -DCONFIG_ARCH_MAINSTACK=4096 -DCONFIG_ARCH_INTERRUPTSTACK=4096 -DCONFIG_CPU_XUANTIE_E906FDP=1 -DCONFIG_INIT_TASK_STACK_SIZE=4096 -DCONFIG_APP_TASK_STACK_SIZE=4096 -DCONFIG_SYSTICK_HZ=100 -DCONFIG_BOARD_SMARTL_EVB=1 -DCONFIG_DEBUG=1 -DCLI_CONFIG_STACK_SIZE=4096'
    
    # LFLAGS = DEVICE
    # LFLAGS += ' -Wl,-zmax-page-size=1024 -Wl,--gc-sections,-cref,-wl,-Map=' + MAP_FILE
    # LFLAGS += ' -T ' + LINK_FILE
    
    LFLAGS = '-MP -MMD -Os -Wno-main -mcpu=e906fdp -mcmodel=medlow -Wl,-zmax-page-size=1024 -Wl,-Map=yoc.map -Wl,-zmax-page-size=1024 -Wl,-Map=yoc.map -Wl,--whole-archive -Wl,--no-whole-archive -nostartfiles -Wl,--gc-sections -T "E:/rt-thread/bsp/xuantie/smartl/e906fdq/board/linker_scripts/gcc_flash_smartl.ld" '

    CPATH = ''
    LPATH = ''

    if BUILD == 'debug':
        CFLAGS += ' -Os -g3'
        AFLAGS += ' -g3'
    else:
        CFLAGS += ' -O2 -g2'

    CXXFLAGS = CFLAGS

    POST_ACTION = OBJCPY + ' -O binary $TARGET ' + TARGET_NAME + '\n'
    POST_ACTION += SIZE + ' $TARGET\n'

def dist_handle(BSP_ROOT, dist_dir):
    import sys
    cwd_path = os.getcwd()
    sys.path.append(os.path.join(os.path.dirname(BSP_ROOT), 'tools'))
    from sdk_dist import dist_do_building
    dist_do_building(BSP_ROOT, dist_dir)