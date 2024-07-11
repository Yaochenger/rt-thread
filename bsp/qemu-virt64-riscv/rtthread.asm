
rtthread.elf:     file format elf32-littleriscv


Disassembly of section .start:

80200000 <__text_start>:
80200000:	a821                	j	80200018 <g_wake_up+0x10>
80200002:	deadbeef          	.word	0xdeadbeef
80200006:	0001                	nop

80200008 <g_wake_up>:
80200008:	00000001          	.word	0x00000001
	...
80200018:	00009297          	auipc	t0,0x9
8020001c:	34828293          	addi	t0,t0,840 # 80209360 <__text_end>
80200020:	832a                	mv	t1,a0
80200022:	0062a023          	sw	t1,0(t0)
80200026:	10405073          	csrwi	sie,0
8020002a:	14405073          	csrwi	sip,0
8020002e:	00000297          	auipc	t0,0x0
80200032:	18e28293          	addi	t0,t0,398 # 802001bc <trap_entry>
80200036:	10529073          	csrw	stvec,t0
8020003a:	4081                	li	ra,0
8020003c:	4101                	li	sp,0
8020003e:	4181                	li	gp,0
80200040:	4201                	li	tp,0
80200042:	4281                	li	t0,0
80200044:	4301                	li	t1,0
80200046:	4381                	li	t2,0
80200048:	4401                	li	s0,0
8020004a:	4481                	li	s1,0
8020004c:	4501                	li	a0,0
8020004e:	4581                	li	a1,0
80200050:	4601                	li	a2,0
80200052:	4681                	li	a3,0
80200054:	4701                	li	a4,0
80200056:	4781                	li	a5,0
80200058:	4801                	li	a6,0
8020005a:	4881                	li	a7,0
8020005c:	4901                	li	s2,0
8020005e:	4981                	li	s3,0
80200060:	4a01                	li	s4,0
80200062:	4a81                	li	s5,0
80200064:	4b01                	li	s6,0
80200066:	4b81                	li	s7,0
80200068:	4c01                	li	s8,0
8020006a:	4c81                	li	s9,0
8020006c:	4d01                	li	s10,0
8020006e:	4d81                	li	s11,0
80200070:	4e01                	li	t3,0
80200072:	4e81                	li	t4,0
80200074:	4f01                	li	t5,0
80200076:	4f81                	li	t6,0
80200078:	6299                	lui	t0,0x6
8020007a:	6002829b          	addiw	t0,t0,1536 # 6600 <__STACKSIZE__+0x2600>
8020007e:	1002b073          	csrc	sstatus,t0
80200082:	000402b7          	lui	t0,0x40
80200086:	1002a073          	csrs	sstatus,t0
8020008a:	0000a197          	auipc	gp,0xa
8020008e:	bfe18193          	addi	gp,gp,-1026 # 80209c88 <__global_pointer$>
80200092:	83818113          	addi	sp,gp,-1992 # 802094c0 <__stack_start__>
80200096:	6291                	lui	t0,0x4
80200098:	9116                	add	sp,sp,t0
8020009a:	14001073          	csrw	sscratch,zero
8020009e:	196010ef          	jal	80201234 <init_bss>
802000a2:	0d4010ef          	jal	80201176 <sbi_init>
802000a6:	674010ef          	jal	8020171a <primary_cpu_entry>

802000aa <_never_return_here>:
802000aa:	a001                	j	802000aa <_never_return_here>

802000ac <_start_link_addr>:
802000ac:	80200000          	.word	0x80200000
802000b0:	00000000          	.word	0x00000000

Disassembly of section .text:

802000b8 <rt_hw_context_switch_to>:
802000b8:	00052103          	lw	sp,0(a0)
802000bc:	578060ef          	jal	80206634 <rt_thread_self>
802000c0:	84aa                	mv	s1,a0
802000c2:	4d82                	lw	s11,0(sp)
802000c4:	0111                	addi	sp,sp,4
802000c6:	100d9073          	csrw	sstatus,s11
802000ca:	4d82                	lw	s11,0(sp)
802000cc:	0111                	addi	sp,sp,4
802000ce:	4d02                	lw	s10,0(sp)
802000d0:	0111                	addi	sp,sp,4
802000d2:	4c82                	lw	s9,0(sp)
802000d4:	0111                	addi	sp,sp,4
802000d6:	4c02                	lw	s8,0(sp)
802000d8:	0111                	addi	sp,sp,4
802000da:	4b82                	lw	s7,0(sp)
802000dc:	0111                	addi	sp,sp,4
802000de:	4b02                	lw	s6,0(sp)
802000e0:	0111                	addi	sp,sp,4
802000e2:	4a82                	lw	s5,0(sp)
802000e4:	0111                	addi	sp,sp,4
802000e6:	4a02                	lw	s4,0(sp)
802000e8:	0111                	addi	sp,sp,4
802000ea:	4982                	lw	s3,0(sp)
802000ec:	0111                	addi	sp,sp,4
802000ee:	4902                	lw	s2,0(sp)
802000f0:	0111                	addi	sp,sp,4
802000f2:	4482                	lw	s1,0(sp)
802000f4:	0111                	addi	sp,sp,4
802000f6:	4402                	lw	s0,0(sp)
802000f8:	0111                	addi	sp,sp,4
802000fa:	4082                	lw	ra,0(sp)
802000fc:	0111                	addi	sp,sp,4
802000fe:	4202                	lw	tp,0(sp)
80200100:	0111                	addi	sp,sp,4
80200102:	14109073          	csrw	sepc,ra
80200106:	10200073          	sret

8020010a <rt_hw_context_switch>:
8020010a:	1171                	addi	sp,sp,-4
8020010c:	c012                	sw	tp,0(sp)
8020010e:	1171                	addi	sp,sp,-4
80200110:	c006                	sw	ra,0(sp)
80200112:	1171                	addi	sp,sp,-4
80200114:	c022                	sw	s0,0(sp)
80200116:	1171                	addi	sp,sp,-4
80200118:	c026                	sw	s1,0(sp)
8020011a:	1171                	addi	sp,sp,-4
8020011c:	c04a                	sw	s2,0(sp)
8020011e:	1171                	addi	sp,sp,-4
80200120:	c04e                	sw	s3,0(sp)
80200122:	1171                	addi	sp,sp,-4
80200124:	c052                	sw	s4,0(sp)
80200126:	1171                	addi	sp,sp,-4
80200128:	c056                	sw	s5,0(sp)
8020012a:	1171                	addi	sp,sp,-4
8020012c:	c05a                	sw	s6,0(sp)
8020012e:	1171                	addi	sp,sp,-4
80200130:	c05e                	sw	s7,0(sp)
80200132:	1171                	addi	sp,sp,-4
80200134:	c062                	sw	s8,0(sp)
80200136:	1171                	addi	sp,sp,-4
80200138:	c066                	sw	s9,0(sp)
8020013a:	1171                	addi	sp,sp,-4
8020013c:	c06a                	sw	s10,0(sp)
8020013e:	1171                	addi	sp,sp,-4
80200140:	c06e                	sw	s11,0(sp)
80200142:	10002df3          	csrr	s11,sstatus
80200146:	10000d13          	li	s10,256
8020014a:	01adedb3          	or	s11,s11,s10
8020014e:	1171                	addi	sp,sp,-4
80200150:	c06e                	sw	s11,0(sp)
80200152:	00252023          	sw	sp,0(a0)
80200156:	0005a103          	lw	sp,0(a1)
8020015a:	4da060ef          	jal	80206634 <rt_thread_self>
8020015e:	84aa                	mv	s1,a0
80200160:	4d82                	lw	s11,0(sp)
80200162:	0111                	addi	sp,sp,4
80200164:	100d9073          	csrw	sstatus,s11
80200168:	4d82                	lw	s11,0(sp)
8020016a:	0111                	addi	sp,sp,4
8020016c:	4d02                	lw	s10,0(sp)
8020016e:	0111                	addi	sp,sp,4
80200170:	4c82                	lw	s9,0(sp)
80200172:	0111                	addi	sp,sp,4
80200174:	4c02                	lw	s8,0(sp)
80200176:	0111                	addi	sp,sp,4
80200178:	4b82                	lw	s7,0(sp)
8020017a:	0111                	addi	sp,sp,4
8020017c:	4b02                	lw	s6,0(sp)
8020017e:	0111                	addi	sp,sp,4
80200180:	4a82                	lw	s5,0(sp)
80200182:	0111                	addi	sp,sp,4
80200184:	4a02                	lw	s4,0(sp)
80200186:	0111                	addi	sp,sp,4
80200188:	4982                	lw	s3,0(sp)
8020018a:	0111                	addi	sp,sp,4
8020018c:	4902                	lw	s2,0(sp)
8020018e:	0111                	addi	sp,sp,4
80200190:	4482                	lw	s1,0(sp)
80200192:	0111                	addi	sp,sp,4
80200194:	4402                	lw	s0,0(sp)
80200196:	0111                	addi	sp,sp,4
80200198:	4082                	lw	ra,0(sp)
8020019a:	0111                	addi	sp,sp,4
8020019c:	4202                	lw	tp,0(sp)
8020019e:	0111                	addi	sp,sp,4
802001a0:	14109073          	csrw	sepc,ra
802001a4:	10200073          	sret

802001a8 <_rt_thread_entry>:
802001a8:	4082                	lw	ra,0(sp)
802001aa:	0111                	addi	sp,sp,4
802001ac:	4502                	lw	a0,0(sp)
802001ae:	0111                	addi	sp,sp,4
802001b0:	4282                	lw	t0,0(sp)
802001b2:	0111                	addi	sp,sp,4
802001b4:	8486                	mv	s1,ra
802001b6:	9282                	jalr	t0
802001b8:	9482                	jalr	s1
802001ba:	a001                	j	802001ba <_rt_thread_entry+0x12>

802001bc <trap_entry>:
802001bc:	14011173          	csrrw	sp,sscratch,sp
802001c0:	00011563          	bnez	sp,802001ca <_save_context>

802001c4 <_from_kernel>:
802001c4:	14002173          	csrr	sp,sscratch
802001c8:	a009                	j	802001ca <_save_context>

802001ca <_save_context>:
802001ca:	7119                	addi	sp,sp,-128
802001cc:	f7c10113          	addi	sp,sp,-132
802001d0:	c206                	sw	ra,4(sp)
802001d2:	100020f3          	csrr	ra,sstatus
802001d6:	c406                	sw	ra,8(sp)
802001d8:	141020f3          	csrr	ra,sepc
802001dc:	c006                	sw	ra,0(sp)
802001de:	c60e                	sw	gp,12(sp)
802001e0:	c812                	sw	tp,16(sp)
802001e2:	ca16                	sw	t0,20(sp)
802001e4:	cc1a                	sw	t1,24(sp)
802001e6:	ce1e                	sw	t2,28(sp)
802001e8:	d022                	sw	s0,32(sp)
802001ea:	d226                	sw	s1,36(sp)
802001ec:	d42a                	sw	a0,40(sp)
802001ee:	d62e                	sw	a1,44(sp)
802001f0:	d832                	sw	a2,48(sp)
802001f2:	da36                	sw	a3,52(sp)
802001f4:	dc3a                	sw	a4,56(sp)
802001f6:	de3e                	sw	a5,60(sp)
802001f8:	c0c2                	sw	a6,64(sp)
802001fa:	c2c6                	sw	a7,68(sp)
802001fc:	c4ca                	sw	s2,72(sp)
802001fe:	c6ce                	sw	s3,76(sp)
80200200:	c8d2                	sw	s4,80(sp)
80200202:	cad6                	sw	s5,84(sp)
80200204:	ccda                	sw	s6,88(sp)
80200206:	cede                	sw	s7,92(sp)
80200208:	d0e2                	sw	s8,96(sp)
8020020a:	d2e6                	sw	s9,100(sp)
8020020c:	d4ea                	sw	s10,104(sp)
8020020e:	d6ee                	sw	s11,108(sp)
80200210:	d8f2                	sw	t3,112(sp)
80200212:	daf6                	sw	t4,116(sp)
80200214:	dcfa                	sw	t5,120(sp)
80200216:	defe                	sw	t6,124(sp)
80200218:	140022f3          	csrr	t0,sscratch
8020021c:	c116                	sw	t0,128(sp)
8020021e:	830a                	mv	t1,sp
80200220:	08430313          	addi	t1,t1,132
80200224:	6299                	lui	t0,0x6
80200226:	1002a073          	csrs	sstatus,t0
8020022a:	00033027          	fsd	ft0,0(t1)
8020022e:	00133427          	fsd	ft1,8(t1)
80200232:	00233827          	fsd	ft2,16(t1)
80200236:	00333c27          	fsd	ft3,24(t1)
8020023a:	02433027          	fsd	ft4,32(t1)
8020023e:	02533427          	fsd	ft5,40(t1)
80200242:	02633827          	fsd	ft6,48(t1)
80200246:	02733c27          	fsd	ft7,56(t1)
8020024a:	04833027          	fsd	fs0,64(t1)
8020024e:	04933427          	fsd	fs1,72(t1)
80200252:	04a33827          	fsd	fa0,80(t1)
80200256:	04b33c27          	fsd	fa1,88(t1)
8020025a:	06c33027          	fsd	fa2,96(t1)
8020025e:	06d33427          	fsd	fa3,104(t1)
80200262:	06e33827          	fsd	fa4,112(t1)
80200266:	06f33c27          	fsd	fa5,120(t1)
8020026a:	09033027          	fsd	fa6,128(t1)
8020026e:	09133427          	fsd	fa7,136(t1)
80200272:	09233827          	fsd	fs2,144(t1)
80200276:	09333c27          	fsd	fs3,152(t1)
8020027a:	0b433027          	fsd	fs4,160(t1)
8020027e:	0b533427          	fsd	fs5,168(t1)
80200282:	0b633827          	fsd	fs6,176(t1)
80200286:	0b733c27          	fsd	fs7,184(t1)
8020028a:	0d833027          	fsd	fs8,192(t1)
8020028e:	0d933427          	fsd	fs9,200(t1)
80200292:	0da33827          	fsd	fs10,208(t1)
80200296:	0db33c27          	fsd	fs11,216(t1)
8020029a:	0fc33027          	fsd	ft8,224(t1)
8020029e:	0fd33427          	fsd	ft9,232(t1)
802002a2:	0fe33827          	fsd	ft10,240(t1)
802002a6:	0ff33c27          	fsd	ft11,248(t1)
802002aa:	1002b073          	csrc	sstatus,t0
802002ae:	6291                	lui	t0,0x4
802002b0:	1002a073          	csrs	sstatus,t0
802002b4:	14001073          	csrw	sscratch,zero
802002b8:	0000a197          	auipc	gp,0xa
802002bc:	9d018193          	addi	gp,gp,-1584 # 80209c88 <__global_pointer$>

802002c0 <_distinguish_syscall>:
802002c0:	142022f3          	csrr	t0,scause

802002c4 <_handle_interrupt_and_exception>:
802002c4:	8516                	mv	a0,t0
802002c6:	143035f3          	csrrc	a1,stval,zero
802002ca:	14102673          	csrr	a2,sepc
802002ce:	868a                	mv	a3,sp
802002d0:	240010ef          	jal	80201510 <handle_trap>

802002d4 <_interrupt_exit>:
802002d4:	00011417          	auipc	s0,0x11
802002d8:	20c40413          	addi	s0,s0,524 # 802114e0 <rt_thread_switch_interrupt_flag>
802002dc:	00042903          	lw	s2,0(s0)
802002e0:	02090263          	beqz	s2,80200304 <_resume_execution>
802002e4:	00042023          	sw	zero,0(s0)

802002e8 <_context_switch>:
802002e8:	00011297          	auipc	t0,0x11
802002ec:	20028293          	addi	t0,t0,512 # 802114e8 <rt_interrupt_from_thread>
802002f0:	0002a503          	lw	a0,0(t0)
802002f4:	00011297          	auipc	t0,0x11
802002f8:	1f028293          	addi	t0,t0,496 # 802114e4 <rt_interrupt_to_thread>
802002fc:	0002a583          	lw	a1,0(t0)
80200300:	e0bff0ef          	jal	8020010a <rt_hw_context_switch>

80200304 <_resume_execution>:
80200304:	08410393          	addi	t2,sp,132
80200308:	6299                	lui	t0,0x6
8020030a:	1002a073          	csrs	sstatus,t0
8020030e:	0003b007          	fld	ft0,0(t2)
80200312:	0083b087          	fld	ft1,8(t2)
80200316:	0103b107          	fld	ft2,16(t2)
8020031a:	0183b187          	fld	ft3,24(t2)
8020031e:	0203b207          	fld	ft4,32(t2)
80200322:	0283b287          	fld	ft5,40(t2)
80200326:	0303b307          	fld	ft6,48(t2)
8020032a:	0383b387          	fld	ft7,56(t2)
8020032e:	0403b407          	fld	fs0,64(t2)
80200332:	0483b487          	fld	fs1,72(t2)
80200336:	0503b507          	fld	fa0,80(t2)
8020033a:	0583b587          	fld	fa1,88(t2)
8020033e:	0603b607          	fld	fa2,96(t2)
80200342:	0683b687          	fld	fa3,104(t2)
80200346:	0703b707          	fld	fa4,112(t2)
8020034a:	0783b787          	fld	fa5,120(t2)
8020034e:	0803b807          	fld	fa6,128(t2)
80200352:	0883b887          	fld	fa7,136(t2)
80200356:	0903b907          	fld	fs2,144(t2)
8020035a:	0983b987          	fld	fs3,152(t2)
8020035e:	0a03ba07          	fld	fs4,160(t2)
80200362:	0a83ba87          	fld	fs5,168(t2)
80200366:	0b03bb07          	fld	fs6,176(t2)
8020036a:	0b83bb87          	fld	fs7,184(t2)
8020036e:	0c03bc07          	fld	fs8,192(t2)
80200372:	0c83bc87          	fld	fs9,200(t2)
80200376:	0d03bd07          	fld	fs10,208(t2)
8020037a:	0d83bd87          	fld	fs11,216(t2)
8020037e:	0e03be07          	fld	ft8,224(t2)
80200382:	0e83be87          	fld	ft9,232(t2)
80200386:	0f03bf07          	fld	ft10,240(t2)
8020038a:	0f83bf87          	fld	ft11,248(t2)
8020038e:	1002b073          	csrc	sstatus,t0
80200392:	6291                	lui	t0,0x4
80200394:	1002a073          	csrs	sstatus,t0
80200398:	10410293          	addi	t0,sp,260
8020039c:	14029073          	csrw	sscratch,t0
802003a0:	4082                	lw	ra,0(sp)
802003a2:	14109073          	csrw	sepc,ra
802003a6:	40a2                	lw	ra,8(sp)
802003a8:	10009073          	csrw	sstatus,ra
802003ac:	4092                	lw	ra,4(sp)
802003ae:	41b2                	lw	gp,12(sp)
802003b0:	4242                	lw	tp,16(sp)
802003b2:	42d2                	lw	t0,20(sp)
802003b4:	4362                	lw	t1,24(sp)
802003b6:	43f2                	lw	t2,28(sp)
802003b8:	5402                	lw	s0,32(sp)
802003ba:	5492                	lw	s1,36(sp)
802003bc:	5522                	lw	a0,40(sp)
802003be:	55b2                	lw	a1,44(sp)
802003c0:	5642                	lw	a2,48(sp)
802003c2:	56d2                	lw	a3,52(sp)
802003c4:	5762                	lw	a4,56(sp)
802003c6:	57f2                	lw	a5,60(sp)
802003c8:	4806                	lw	a6,64(sp)
802003ca:	4896                	lw	a7,68(sp)
802003cc:	4926                	lw	s2,72(sp)
802003ce:	49b6                	lw	s3,76(sp)
802003d0:	4a46                	lw	s4,80(sp)
802003d2:	4ad6                	lw	s5,84(sp)
802003d4:	4b66                	lw	s6,88(sp)
802003d6:	4bf6                	lw	s7,92(sp)
802003d8:	5c06                	lw	s8,96(sp)
802003da:	5c96                	lw	s9,100(sp)
802003dc:	5d26                	lw	s10,104(sp)
802003de:	5db6                	lw	s11,108(sp)
802003e0:	5e46                	lw	t3,112(sp)
802003e2:	5ed6                	lw	t4,116(sp)
802003e4:	5f66                	lw	t5,120(sp)
802003e6:	5ff6                	lw	t6,124(sp)
802003e8:	410a                	lw	sp,128(sp)
802003ea:	14001073          	csrw	sscratch,zero
802003ee:	10200073          	sret

802003f2 <rt_hw_interrupt_enable>:
802003f2:	10052073          	csrs	sstatus,a0
802003f6:	8082                	ret

802003f8 <rt_hw_interrupt_disable>:
802003f8:	10017573          	csrrci	a0,sstatus,2
802003fc:	8082                	ret

802003fe <ulog_console_backend_output>:
802003fe:	853a                	mv	a0,a4
80200400:	1910406f          	j	80204d90 <rt_kputs>

80200404 <ulog_console_backend_init>:
80200404:	3141                	addiw	sp,sp,-16
80200406:	e406                	sd	ra,8(sp)
80200408:	1d6000ef          	jal	802005de <ulog_init>
8020040c:	00011517          	auipc	a0,0x11
80200410:	1b450513          	addi	a0,a0,436 # 802115c0 <console>
80200414:	00000797          	auipc	a5,0x0
80200418:	fea78793          	addi	a5,a5,-22 # 802003fe <ulog_console_backend_output>
8020041c:	4605                	li	a2,1
8020041e:	00007597          	auipc	a1,0x7
80200422:	d4258593          	addi	a1,a1,-702 # 80207160 <rt_system_timer_thread_init+0x8>
80200426:	d15c                	sw	a5,36(a0)
80200428:	171000ef          	jal	80200d98 <ulog_backend_register>
8020042c:	60a2                	ld	ra,8(sp)
8020042e:	4501                	li	a0,0
80200430:	2141                	addiw	sp,sp,16
80200432:	8082                	ret

80200434 <rt_scheduler_is_available>:
80200434:	3141                	addiw	sp,sp,-16
80200436:	e406                	sd	ra,8(sp)
80200438:	611050ef          	jal	80206248 <rt_critical_level>
8020043c:	c509                	beqz	a0,80200446 <rt_scheduler_is_available+0x12>
8020043e:	4501                	li	a0,0
80200440:	60a2                	ld	ra,8(sp)
80200442:	2141                	addiw	sp,sp,16
80200444:	8082                	ret
80200446:	1ee060ef          	jal	80206634 <rt_thread_self>
8020044a:	2501                	sext.w	a0,a0
8020044c:	d96d                	beqz	a0,8020043e <rt_scheduler_is_available+0xa>
8020044e:	749030ef          	jal	80204396 <rt_interrupt_get_nest>
80200452:	00153513          	seqz	a0,a0
80200456:	b7ed                	j	80200440 <rt_scheduler_is_available+0xc>

80200458 <output_lock>:
80200458:	00011797          	auipc	a5,0x11
8020045c:	1a47a783          	lw	a5,420(a5) # 802115fc <ulog+0x4>
80200460:	c395                	beqz	a5,80200484 <output_lock+0x2c>
80200462:	3141                	addiw	sp,sp,-16
80200464:	e406                	sd	ra,8(sp)
80200466:	fcfff0ef          	jal	80200434 <rt_scheduler_is_available>
8020046a:	c911                	beqz	a0,8020047e <output_lock+0x26>
8020046c:	60a2                	ld	ra,8(sp)
8020046e:	55fd                	li	a1,-1
80200470:	00011517          	auipc	a0,0x11
80200474:	19050513          	addi	a0,a0,400 # 80211600 <ulog+0x8>
80200478:	2141                	addiw	sp,sp,16
8020047a:	4af0306f          	j	80204128 <rt_mutex_take>
8020047e:	60a2                	ld	ra,8(sp)
80200480:	2141                	addiw	sp,sp,16
80200482:	8082                	ret
80200484:	8082                	ret

80200486 <do_output>:
80200486:	fb01011b          	addiw	sp,sp,-80
8020048a:	e0a2                	sd	s0,64(sp)
8020048c:	fc26                	sd	s1,56(sp)
8020048e:	f44e                	sd	s3,40(sp)
80200490:	f052                	sd	s4,32(sp)
80200492:	ec56                	sd	s5,24(sp)
80200494:	e486                	sd	ra,72(sp)
80200496:	f84a                	sd	s2,48(sp)
80200498:	e85a                	sd	s6,16(sp)
8020049a:	e45e                	sd	s7,8(sp)
8020049c:	e062                	sd	s8,0(sp)
8020049e:	842a                	mv	s0,a0
802004a0:	8a2e                	mv	s4,a1
802004a2:	8ab2                	mv	s5,a2
802004a4:	84b6                	mv	s1,a3
802004a6:	89ba                	mv	s3,a4
802004a8:	6ef030ef          	jal	80204396 <rt_interrupt_get_nest>
802004ac:	e165                	bnez	a0,8020058c <do_output+0x106>
802004ae:	00011797          	auipc	a5,0x11
802004b2:	14a78793          	addi	a5,a5,330 # 802115f8 <ulog>
802004b6:	4398                	lw	a4,0(a5)
802004b8:	cf3d                	beqz	a4,80200536 <do_output+0xb0>
802004ba:	47fc                	lw	a5,76(a5)
802004bc:	893e                	mv	s2,a5
802004be:	c3a9                	beqz	a5,80200500 <do_output+0x7a>
802004c0:	0024179b          	slliw	a5,s0,0x2
802004c4:	00008b17          	auipc	s6,0x8
802004c8:	47cb0b13          	addi	s6,s6,1148 # 80208940 <color_output_info>
802004cc:	00fb0b3b          	addw	s6,s6,a5
802004d0:	fe892783          	lw	a5,-24(s2)
802004d4:	0487ed63          	bltu	a5,s0,8020052e <do_output+0xa8>
802004d8:	ffc92783          	lw	a5,-4(s2)
802004dc:	fcc90b9b          	addiw	s7,s2,-52
802004e0:	883e                	mv	a6,a5
802004e2:	ef95                	bnez	a5,8020051e <do_output+0x98>
802004e4:	fe492783          	lw	a5,-28(s2)
802004e8:	00fae7b3          	or	a5,s5,a5
802004ec:	e3b5                	bnez	a5,80200550 <do_output+0xca>
802004ee:	000b2503          	lw	a0,0(s6)
802004f2:	e92d                	bnez	a0,80200564 <do_output+0xde>
802004f4:	8726                	mv	a4,s1
802004f6:	87ce                	mv	a5,s3
802004f8:	ff092803          	lw	a6,-16(s2)
802004fc:	4681                	li	a3,0
802004fe:	a8b1                	j	8020055a <do_output+0xd4>
80200500:	6406                	ld	s0,64(sp)
80200502:	60a6                	ld	ra,72(sp)
80200504:	7942                	ld	s2,48(sp)
80200506:	79a2                	ld	s3,40(sp)
80200508:	7a02                	ld	s4,32(sp)
8020050a:	6ae2                	ld	s5,24(sp)
8020050c:	6b42                	ld	s6,16(sp)
8020050e:	6ba2                	ld	s7,8(sp)
80200510:	6c02                	ld	s8,0(sp)
80200512:	8526                	mv	a0,s1
80200514:	74e2                	ld	s1,56(sp)
80200516:	0501011b          	addiw	sp,sp,80
8020051a:	0770406f          	j	80204d90 <rt_kputs>
8020051e:	87ce                	mv	a5,s3
80200520:	8726                	mv	a4,s1
80200522:	86d6                	mv	a3,s5
80200524:	8652                	mv	a2,s4
80200526:	85a2                	mv	a1,s0
80200528:	855e                	mv	a0,s7
8020052a:	9802                	jalr	a6
8020052c:	fd45                	bnez	a0,802004e4 <do_output+0x5e>
8020052e:	00092783          	lw	a5,0(s2)
80200532:	893e                	mv	s2,a5
80200534:	ffd1                	bnez	a5,802004d0 <do_output+0x4a>
80200536:	60a6                	ld	ra,72(sp)
80200538:	6406                	ld	s0,64(sp)
8020053a:	74e2                	ld	s1,56(sp)
8020053c:	7942                	ld	s2,48(sp)
8020053e:	79a2                	ld	s3,40(sp)
80200540:	7a02                	ld	s4,32(sp)
80200542:	6ae2                	ld	s5,24(sp)
80200544:	6b42                	ld	s6,16(sp)
80200546:	6ba2                	ld	s7,8(sp)
80200548:	6c02                	ld	s8,0(sp)
8020054a:	0501011b          	addiw	sp,sp,80
8020054e:	8082                	ret
80200550:	ff092803          	lw	a6,-16(s2)
80200554:	87ce                	mv	a5,s3
80200556:	8726                	mv	a4,s1
80200558:	86d6                	mv	a3,s5
8020055a:	8652                	mv	a2,s4
8020055c:	85a2                	mv	a1,s0
8020055e:	855e                	mv	a0,s7
80200560:	9802                	jalr	a6
80200562:	b7f1                	j	8020052e <do_output+0xa8>
80200564:	76e040ef          	jal	80204cd2 <rt_strlen>
80200568:	00050c1b          	sext.w	s8,a0
8020056c:	f80c04e3          	beqz	s8,802004f4 <do_output+0x6e>
80200570:	00007517          	auipc	a0,0x7
80200574:	bf850513          	addi	a0,a0,-1032 # 80207168 <rt_system_timer_thread_init+0x10>
80200578:	75a040ef          	jal	80204cd2 <rt_strlen>
8020057c:	0185053b          	addw	a0,a0,s8
80200580:	ffc9879b          	addiw	a5,s3,-4
80200584:	00a4873b          	addw	a4,s1,a0
80200588:	9f89                	subw	a5,a5,a0
8020058a:	b7bd                	j	802004f8 <do_output+0x72>
8020058c:	85a2                	mv	a1,s0
8020058e:	6406                	ld	s0,64(sp)
80200590:	60a6                	ld	ra,72(sp)
80200592:	7942                	ld	s2,48(sp)
80200594:	6b42                	ld	s6,16(sp)
80200596:	6ba2                	ld	s7,8(sp)
80200598:	6c02                	ld	s8,0(sp)
8020059a:	87ce                	mv	a5,s3
8020059c:	8726                	mv	a4,s1
8020059e:	79a2                	ld	s3,40(sp)
802005a0:	74e2                	ld	s1,56(sp)
802005a2:	86d6                	mv	a3,s5
802005a4:	8652                	mv	a2,s4
802005a6:	6ae2                	ld	s5,24(sp)
802005a8:	7a02                	ld	s4,32(sp)
802005aa:	4501                	li	a0,0
802005ac:	0501011b          	addiw	sp,sp,80
802005b0:	b5b9                	j	802003fe <ulog_console_backend_output>

802005b2 <output_unlock>:
802005b2:	00011797          	auipc	a5,0x11
802005b6:	04a7a783          	lw	a5,74(a5) # 802115fc <ulog+0x4>
802005ba:	c38d                	beqz	a5,802005dc <output_unlock+0x2a>
802005bc:	3141                	addiw	sp,sp,-16
802005be:	e406                	sd	ra,8(sp)
802005c0:	e75ff0ef          	jal	80200434 <rt_scheduler_is_available>
802005c4:	c909                	beqz	a0,802005d6 <output_unlock+0x24>
802005c6:	60a2                	ld	ra,8(sp)
802005c8:	00011517          	auipc	a0,0x11
802005cc:	03850513          	addi	a0,a0,56 # 80211600 <ulog+0x8>
802005d0:	2141                	addiw	sp,sp,16
802005d2:	35d0306f          	j	8020412e <rt_mutex_release>
802005d6:	60a2                	ld	ra,8(sp)
802005d8:	2141                	addiw	sp,sp,16
802005da:	8082                	ret
802005dc:	8082                	ret

802005de <ulog_init>:
802005de:	3141                	addiw	sp,sp,-16
802005e0:	e022                	sd	s0,0(sp)
802005e2:	00011417          	auipc	s0,0x11
802005e6:	01640413          	addi	s0,s0,22 # 802115f8 <ulog>
802005ea:	401c                	lw	a5,0(s0)
802005ec:	e406                	sd	ra,8(sp)
802005ee:	e785                	bnez	a5,80200616 <ulog_init+0x38>
802005f0:	4605                	li	a2,1
802005f2:	00007597          	auipc	a1,0x7
802005f6:	b7e58593          	addi	a1,a1,-1154 # 80207170 <rt_system_timer_thread_init+0x18>
802005fa:	00011517          	auipc	a0,0x11
802005fe:	00650513          	addi	a0,a0,6 # 80211600 <ulog+0x8>
80200602:	2b9030ef          	jal	802040ba <rt_mutex_init>
80200606:	00011797          	auipc	a5,0x11
8020060a:	0207af23          	sw	zero,62(a5) # 80211644 <ulog+0x4c>
8020060e:	4785                	li	a5,1
80200610:	1782                	slli	a5,a5,0x20
80200612:	0785                	addi	a5,a5,1
80200614:	e01c                	sd	a5,0(s0)
80200616:	60a2                	ld	ra,8(sp)
80200618:	6402                	ld	s0,0(sp)
8020061a:	4501                	li	a0,0
8020061c:	2141                	addiw	sp,sp,16
8020061e:	8082                	ret

80200620 <ulog_strcpy>:
80200620:	3101                	addiw	sp,sp,-32
80200622:	e822                	sd	s0,16(sp)
80200624:	e426                	sd	s1,8(sp)
80200626:	e04a                	sd	s2,0(sp)
80200628:	0005879b          	sext.w	a5,a1
8020062c:	ec06                	sd	ra,24(sp)
8020062e:	892a                	mv	s2,a0
80200630:	843e                	mv	s0,a5
80200632:	84b2                	mv	s1,a2
80200634:	ef89                	bnez	a5,8020064e <ulog_strcpy+0x2e>
80200636:	09300613          	li	a2,147
8020063a:	00008597          	auipc	a1,0x8
8020063e:	2e658593          	addi	a1,a1,742 # 80208920 <__FUNCTION__.20>
80200642:	00007517          	auipc	a0,0x7
80200646:	b3650513          	addi	a0,a0,-1226 # 80207178 <rt_system_timer_thread_init+0x20>
8020064a:	11f040ef          	jal	80204f68 <rt_assert_handler>
8020064e:	0004879b          	sext.w	a5,s1
80200652:	ef89                	bnez	a5,8020066c <ulog_strcpy+0x4c>
80200654:	09400613          	li	a2,148
80200658:	00008597          	auipc	a1,0x8
8020065c:	2c858593          	addi	a1,a1,712 # 80208920 <__FUNCTION__.20>
80200660:	00007517          	auipc	a0,0x7
80200664:	b2050513          	addi	a0,a0,-1248 # 80207180 <rt_system_timer_thread_init+0x28>
80200668:	101040ef          	jal	80204f68 <rt_assert_handler>
8020066c:	87a6                	mv	a5,s1
8020066e:	85a2                	mv	a1,s0
80200670:	4089093b          	subw	s2,s2,s0
80200674:	07f00693          	li	a3,127
80200678:	0007c703          	lbu	a4,0(a5)
8020067c:	eb11                	bnez	a4,80200690 <ulog_strcpy+0x70>
8020067e:	60e2                	ld	ra,24(sp)
80200680:	6442                	ld	s0,16(sp)
80200682:	6902                	ld	s2,0(sp)
80200684:	4097853b          	subw	a0,a5,s1
80200688:	64a2                	ld	s1,8(sp)
8020068a:	0201011b          	addiw	sp,sp,32
8020068e:	8082                	ret
80200690:	0125863b          	addw	a2,a1,s2
80200694:	fec6e5e3          	bltu	a3,a2,8020067e <ulog_strcpy+0x5e>
80200698:	2585                	addiw	a1,a1,1
8020069a:	2785                	addiw	a5,a5,1
8020069c:	fee58fa3          	sb	a4,-1(a1)
802006a0:	bfe1                	j	80200678 <ulog_strcpy+0x58>

802006a2 <ulog_ultoa>:
802006a2:	872a                	mv	a4,a0
802006a4:	4829                	li	a6,10
802006a6:	4501                	li	a0,0
802006a8:	48a5                	li	a7,9
802006aa:	0305f6bb          	remuw	a3,a1,a6
802006ae:	0005061b          	sext.w	a2,a0
802006b2:	2505                	addiw	a0,a0,1
802006b4:	00a707bb          	addw	a5,a4,a0
802006b8:	0306869b          	addiw	a3,a3,48
802006bc:	fed78fa3          	sb	a3,-1(a5)
802006c0:	0005869b          	sext.w	a3,a1
802006c4:	0305d5bb          	divuw	a1,a1,a6
802006c8:	fed8e1e3          	bltu	a7,a3,802006aa <ulog_ultoa+0x8>
802006cc:	00078023          	sb	zero,0(a5)
802006d0:	00c706bb          	addw	a3,a4,a2
802006d4:	4781                	li	a5,0
802006d6:	40f605bb          	subw	a1,a2,a5
802006da:	00b7e363          	bltu	a5,a1,802006e0 <ulog_ultoa+0x3e>
802006de:	8082                	ret
802006e0:	0006c303          	lbu	t1,0(a3)
802006e4:	00f7083b          	addw	a6,a4,a5
802006e8:	00084883          	lbu	a7,0(a6)
802006ec:	00680023          	sb	t1,0(a6)
802006f0:	2785                	addiw	a5,a5,1
802006f2:	01168023          	sb	a7,0(a3)
802006f6:	36fd                	addiw	a3,a3,-1
802006f8:	bff9                	j	802006d6 <ulog_ultoa+0x34>

802006fa <ulog_head_formater>:
802006fa:	fd01011b          	addiw	sp,sp,-48
802006fe:	ec26                	sd	s1,24(sp)
80200700:	e84a                	sd	s2,16(sp)
80200702:	e052                	sd	s4,0(sp)
80200704:	0005079b          	sext.w	a5,a0
80200708:	f406                	sd	ra,40(sp)
8020070a:	f022                	sd	s0,32(sp)
8020070c:	e44e                	sd	s3,8(sp)
8020070e:	84be                	mv	s1,a5
80200710:	892e                	mv	s2,a1
80200712:	8a32                	mv	s4,a2
80200714:	ef89                	bnez	a5,8020072e <ulog_head_formater+0x34>
80200716:	0ff00613          	li	a2,255
8020071a:	00008597          	auipc	a1,0x8
8020071e:	1ee58593          	addi	a1,a1,494 # 80208908 <__FUNCTION__.19>
80200722:	00007517          	auipc	a0,0x7
80200726:	a6e50513          	addi	a0,a0,-1426 # 80207190 <rt_system_timer_thread_init+0x38>
8020072a:	03f040ef          	jal	80204f68 <rt_assert_handler>
8020072e:	479d                	li	a5,7
80200730:	0127fe63          	bgeu	a5,s2,8020074c <ulog_head_formater+0x52>
80200734:	10000613          	li	a2,256
80200738:	00008597          	auipc	a1,0x8
8020073c:	1d058593          	addi	a1,a1,464 # 80208908 <__FUNCTION__.19>
80200740:	00007517          	auipc	a0,0x7
80200744:	a5850513          	addi	a0,a0,-1448 # 80207198 <rt_system_timer_thread_init+0x40>
80200748:	021040ef          	jal	80204f68 <rt_assert_handler>
8020074c:	000a079b          	sext.w	a5,s4
80200750:	ef89                	bnez	a5,8020076a <ulog_head_formater+0x70>
80200752:	10100613          	li	a2,257
80200756:	00008597          	auipc	a1,0x8
8020075a:	1b258593          	addi	a1,a1,434 # 80208908 <__FUNCTION__.19>
8020075e:	00007517          	auipc	a0,0x7
80200762:	a5250513          	addi	a0,a0,-1454 # 802071b0 <rt_system_timer_thread_init+0x58>
80200766:	003040ef          	jal	80204f68 <rt_assert_handler>
8020076a:	00011797          	auipc	a5,0x11
8020076e:	d607a523          	sw	zero,-662(a5) # 802114d4 <log_len.18>
80200772:	0029191b          	slliw	s2,s2,0x2
80200776:	00008797          	auipc	a5,0x8
8020077a:	1ca78793          	addi	a5,a5,458 # 80208940 <color_output_info>
8020077e:	012787bb          	addw	a5,a5,s2
80200782:	0007a983          	lw	s3,0(a5)
80200786:	00011417          	auipc	s0,0x11
8020078a:	d4e40413          	addi	s0,s0,-690 # 802114d4 <log_len.18>
8020078e:	02098563          	beqz	s3,802007b8 <ulog_head_formater+0xbe>
80200792:	00007617          	auipc	a2,0x7
80200796:	9d660613          	addi	a2,a2,-1578 # 80207168 <rt_system_timer_thread_init+0x10>
8020079a:	85a6                	mv	a1,s1
8020079c:	4501                	li	a0,0
8020079e:	e83ff0ef          	jal	80200620 <ulog_strcpy>
802007a2:	401c                	lw	a5,0(s0)
802007a4:	864e                	mv	a2,s3
802007a6:	9d3d                	addw	a0,a0,a5
802007a8:	00a485bb          	addw	a1,s1,a0
802007ac:	c008                	sw	a0,0(s0)
802007ae:	e73ff0ef          	jal	80200620 <ulog_strcpy>
802007b2:	401c                	lw	a5,0(s0)
802007b4:	9d3d                	addw	a0,a0,a5
802007b6:	c008                	sw	a0,0(s0)
802007b8:	4008                	lw	a0,0(s0)
802007ba:	05b00713          	li	a4,91
802007be:	00a487bb          	addw	a5,s1,a0
802007c2:	00e78023          	sb	a4,0(a5)
802007c6:	2505                	addiw	a0,a0,1
802007c8:	00a489bb          	addw	s3,s1,a0
802007cc:	477020ef          	jal	80203442 <rt_tick_get>
802007d0:	0005059b          	sext.w	a1,a0
802007d4:	854e                	mv	a0,s3
802007d6:	ecdff0ef          	jal	802006a2 <ulog_ultoa>
802007da:	4018                	lw	a4,0(s0)
802007dc:	05d00693          	li	a3,93
802007e0:	00e507bb          	addw	a5,a0,a4
802007e4:	9fa5                	addw	a5,a5,s1
802007e6:	00d780a3          	sb	a3,1(a5)
802007ea:	00e4853b          	addw	a0,s1,a4
802007ee:	00078123          	sb	zero,2(a5)
802007f2:	4e0040ef          	jal	80204cd2 <rt_strlen>
802007f6:	401c                	lw	a5,0(s0)
802007f8:	00007617          	auipc	a2,0x7
802007fc:	9c060613          	addi	a2,a2,-1600 # 802071b8 <rt_system_timer_thread_init+0x60>
80200800:	9d3d                	addw	a0,a0,a5
80200802:	00a485bb          	addw	a1,s1,a0
80200806:	c008                	sw	a0,0(s0)
80200808:	e19ff0ef          	jal	80200620 <ulog_strcpy>
8020080c:	401c                	lw	a5,0(s0)
8020080e:	9d3d                	addw	a0,a0,a5
80200810:	00008797          	auipc	a5,0x8
80200814:	15078793          	addi	a5,a5,336 # 80208960 <level_output_info>
80200818:	012787bb          	addw	a5,a5,s2
8020081c:	4390                	lw	a2,0(a5)
8020081e:	00a485bb          	addw	a1,s1,a0
80200822:	c008                	sw	a0,0(s0)
80200824:	dfdff0ef          	jal	80200620 <ulog_strcpy>
80200828:	401c                	lw	a5,0(s0)
8020082a:	8652                	mv	a2,s4
8020082c:	9d3d                	addw	a0,a0,a5
8020082e:	00a485bb          	addw	a1,s1,a0
80200832:	c008                	sw	a0,0(s0)
80200834:	dedff0ef          	jal	80200620 <ulog_strcpy>
80200838:	401c                	lw	a5,0(s0)
8020083a:	00007617          	auipc	a2,0x7
8020083e:	97e60613          	addi	a2,a2,-1666 # 802071b8 <rt_system_timer_thread_init+0x60>
80200842:	9d3d                	addw	a0,a0,a5
80200844:	00a485bb          	addw	a1,s1,a0
80200848:	c008                	sw	a0,0(s0)
8020084a:	dd7ff0ef          	jal	80200620 <ulog_strcpy>
8020084e:	401c                	lw	a5,0(s0)
80200850:	9d3d                	addw	a0,a0,a5
80200852:	c008                	sw	a0,0(s0)
80200854:	343030ef          	jal	80204396 <rt_interrupt_get_nest>
80200858:	e125                	bnez	a0,802008b8 <ulog_head_formater+0x1be>
8020085a:	5db050ef          	jal	80206634 <rt_thread_self>
8020085e:	2501                	sext.w	a0,a0
80200860:	00007917          	auipc	s2,0x7
80200864:	92890913          	addi	s2,s2,-1752 # 80207188 <rt_system_timer_thread_init+0x30>
80200868:	c501                	beqz	a0,80200870 <ulog_head_formater+0x176>
8020086a:	5cb050ef          	jal	80206634 <rt_thread_self>
8020086e:	892a                	mv	s2,a0
80200870:	45e1                	li	a1,24
80200872:	854a                	mv	a0,s2
80200874:	470040ef          	jal	80204ce4 <rt_strnlen>
80200878:	0005099b          	sext.w	s3,a0
8020087c:	4008                	lw	a0,0(s0)
8020087e:	864e                	mv	a2,s3
80200880:	85ca                	mv	a1,s2
80200882:	9d25                	addw	a0,a0,s1
80200884:	3ea040ef          	jal	80204c6e <rt_strncpy>
80200888:	4008                	lw	a0,0(s0)
8020088a:	0135053b          	addw	a0,a0,s3
8020088e:	00a485bb          	addw	a1,s1,a0
80200892:	00007617          	auipc	a2,0x7
80200896:	93660613          	addi	a2,a2,-1738 # 802071c8 <rt_system_timer_thread_init+0x70>
8020089a:	c008                	sw	a0,0(s0)
8020089c:	d85ff0ef          	jal	80200620 <ulog_strcpy>
802008a0:	401c                	lw	a5,0(s0)
802008a2:	70a2                	ld	ra,40(sp)
802008a4:	64e2                	ld	s1,24(sp)
802008a6:	9d3d                	addw	a0,a0,a5
802008a8:	c008                	sw	a0,0(s0)
802008aa:	7402                	ld	s0,32(sp)
802008ac:	6942                	ld	s2,16(sp)
802008ae:	69a2                	ld	s3,8(sp)
802008b0:	6a02                	ld	s4,0(sp)
802008b2:	0301011b          	addiw	sp,sp,48
802008b6:	8082                	ret
802008b8:	4008                	lw	a0,0(s0)
802008ba:	00007617          	auipc	a2,0x7
802008be:	90660613          	addi	a2,a2,-1786 # 802071c0 <rt_system_timer_thread_init+0x68>
802008c2:	00a485bb          	addw	a1,s1,a0
802008c6:	d5bff0ef          	jal	80200620 <ulog_strcpy>
802008ca:	401c                	lw	a5,0(s0)
802008cc:	9d3d                	addw	a0,a0,a5
802008ce:	b7c1                	j	8020088e <ulog_head_formater+0x194>

802008d0 <ulog_tail_formater>:
802008d0:	fd01011b          	addiw	sp,sp,-48
802008d4:	f022                	sd	s0,32(sp)
802008d6:	ec26                	sd	s1,24(sp)
802008d8:	e84a                	sd	s2,16(sp)
802008da:	e44e                	sd	s3,8(sp)
802008dc:	0005079b          	sext.w	a5,a0
802008e0:	f406                	sd	ra,40(sp)
802008e2:	84be                	mv	s1,a5
802008e4:	842e                	mv	s0,a1
802008e6:	89b2                	mv	s3,a2
802008e8:	8936                	mv	s2,a3
802008ea:	ef89                	bnez	a5,80200904 <ulog_tail_formater+0x34>
802008ec:	17c00613          	li	a2,380
802008f0:	00008597          	auipc	a1,0x8
802008f4:	00058593          	mv	a1,a1
802008f8:	00007517          	auipc	a0,0x7
802008fc:	89850513          	addi	a0,a0,-1896 # 80207190 <rt_system_timer_thread_init+0x38>
80200900:	668040ef          	jal	80204f68 <rt_assert_handler>
80200904:	00007517          	auipc	a0,0x7
80200908:	8cc50513          	addi	a0,a0,-1844 # 802071d0 <rt_system_timer_thread_init+0x78>
8020090c:	3c6040ef          	jal	80204cd2 <rt_strlen>
80200910:	0054079b          	addiw	a5,s0,5
80200914:	9fa9                	addw	a5,a5,a0
80200916:	08000693          	li	a3,128
8020091a:	0005071b          	sext.w	a4,a0
8020091e:	00f6f563          	bgeu	a3,a5,80200928 <ulog_tail_formater+0x58>
80200922:	07b00413          	li	s0,123
80200926:	9c19                	subw	s0,s0,a4
80200928:	00098c63          	beqz	s3,80200940 <ulog_tail_formater+0x70>
8020092c:	008485bb          	addw	a1,s1,s0
80200930:	8522                	mv	a0,s0
80200932:	00007617          	auipc	a2,0x7
80200936:	89e60613          	addi	a2,a2,-1890 # 802071d0 <rt_system_timer_thread_init+0x78>
8020093a:	ce7ff0ef          	jal	80200620 <ulog_strcpy>
8020093e:	9c29                	addw	s0,s0,a0
80200940:	0029191b          	slliw	s2,s2,0x2
80200944:	00008797          	auipc	a5,0x8
80200948:	ffc78793          	addi	a5,a5,-4 # 80208940 <color_output_info>
8020094c:	012787bb          	addw	a5,a5,s2
80200950:	439c                	lw	a5,0(a5)
80200952:	cb99                	beqz	a5,80200968 <ulog_tail_formater+0x98>
80200954:	008485bb          	addw	a1,s1,s0
80200958:	8522                	mv	a0,s0
8020095a:	00007617          	auipc	a2,0x7
8020095e:	87e60613          	addi	a2,a2,-1922 # 802071d8 <rt_system_timer_thread_init+0x80>
80200962:	cbfff0ef          	jal	80200620 <ulog_strcpy>
80200966:	9c29                	addw	s0,s0,a0
80200968:	9ca1                	addw	s1,s1,s0
8020096a:	00048023          	sb	zero,0(s1)
8020096e:	70a2                	ld	ra,40(sp)
80200970:	8522                	mv	a0,s0
80200972:	7402                	ld	s0,32(sp)
80200974:	64e2                	ld	s1,24(sp)
80200976:	6942                	ld	s2,16(sp)
80200978:	69a2                	ld	s3,8(sp)
8020097a:	0301011b          	addiw	sp,sp,48
8020097e:	8082                	ret

80200980 <ulog_formater>:
80200980:	fc01011b          	addiw	sp,sp,-64
80200984:	f822                	sd	s0,48(sp)
80200986:	f426                	sd	s1,40(sp)
80200988:	f04a                	sd	s2,32(sp)
8020098a:	ec4e                	sd	s3,24(sp)
8020098c:	e852                	sd	s4,16(sp)
8020098e:	e456                	sd	s5,8(sp)
80200990:	fc06                	sd	ra,56(sp)
80200992:	8abe                	mv	s5,a5
80200994:	0005079b          	sext.w	a5,a0
80200998:	842a                	mv	s0,a0
8020099a:	84ae                	mv	s1,a1
8020099c:	8a32                	mv	s4,a2
8020099e:	89b6                	mv	s3,a3
802009a0:	893a                	mv	s2,a4
802009a2:	ef89                	bnez	a5,802009bc <ulog_formater+0x3c>
802009a4:	1ad00613          	li	a2,429
802009a8:	00008597          	auipc	a1,0x8
802009ac:	f3858593          	addi	a1,a1,-200 # 802088e0 <__FUNCTION__.14>
802009b0:	00006517          	auipc	a0,0x6
802009b4:	7e050513          	addi	a0,a0,2016 # 80207190 <rt_system_timer_thread_init+0x38>
802009b8:	5b0040ef          	jal	80204f68 <rt_assert_handler>
802009bc:	0009079b          	sext.w	a5,s2
802009c0:	ef89                	bnez	a5,802009da <ulog_formater+0x5a>
802009c2:	1ae00613          	li	a2,430
802009c6:	00008597          	auipc	a1,0x8
802009ca:	f1a58593          	addi	a1,a1,-230 # 802088e0 <__FUNCTION__.14>
802009ce:	00007517          	auipc	a0,0x7
802009d2:	81250513          	addi	a0,a0,-2030 # 802071e0 <rt_system_timer_thread_init+0x88>
802009d6:	592040ef          	jal	80204f68 <rt_assert_handler>
802009da:	8652                	mv	a2,s4
802009dc:	85a6                	mv	a1,s1
802009de:	8522                	mv	a0,s0
802009e0:	d1bff0ef          	jal	802006fa <ulog_head_formater>
802009e4:	2501                	sext.w	a0,a0
802009e6:	00011a17          	auipc	s4,0x11
802009ea:	aeaa0a13          	addi	s4,s4,-1302 # 802114d0 <log_len.13>
802009ee:	08000593          	li	a1,128
802009f2:	9d89                	subw	a1,a1,a0
802009f4:	00aa2023          	sw	a0,0(s4)
802009f8:	86d6                	mv	a3,s5
802009fa:	864a                	mv	a2,s2
802009fc:	9d21                	addw	a0,a0,s0
802009fe:	46d030ef          	jal	8020466a <rt_vsnprintf>
80200a02:	000a2783          	lw	a5,0(s4)
80200a06:	00a785bb          	addw	a1,a5,a0
80200a0a:	08000793          	li	a5,128
80200a0e:	00b7e463          	bltu	a5,a1,80200a16 <ulog_formater+0x96>
80200a12:	00055463          	bgez	a0,80200a1a <ulog_formater+0x9a>
80200a16:	08000593          	li	a1,128
80200a1a:	8522                	mv	a0,s0
80200a1c:	7442                	ld	s0,48(sp)
80200a1e:	70e2                	ld	ra,56(sp)
80200a20:	7902                	ld	s2,32(sp)
80200a22:	6aa2                	ld	s5,8(sp)
80200a24:	00ba2023          	sw	a1,0(s4)
80200a28:	86a6                	mv	a3,s1
80200a2a:	6a42                	ld	s4,16(sp)
80200a2c:	74a2                	ld	s1,40(sp)
80200a2e:	864e                	mv	a2,s3
80200a30:	69e2                	ld	s3,24(sp)
80200a32:	0401011b          	addiw	sp,sp,64
80200a36:	bd69                	j	802008d0 <ulog_tail_formater>

80200a38 <ulog_hex_formater>:
80200a38:	fa01011b          	addiw	sp,sp,-96
80200a3c:	e8a2                	sd	s0,80(sp)
80200a3e:	e4a6                	sd	s1,72(sp)
80200a40:	e0ca                	sd	s2,64(sp)
80200a42:	fc4e                	sd	s3,56(sp)
80200a44:	f852                	sd	s4,48(sp)
80200a46:	f456                	sd	s5,40(sp)
80200a48:	89be                	mv	s3,a5
80200a4a:	ec86                	sd	ra,88(sp)
80200a4c:	f05a                	sd	s6,32(sp)
80200a4e:	ec5e                	sd	s7,24(sp)
80200a50:	e862                	sd	s8,16(sp)
80200a52:	0005079b          	sext.w	a5,a0
80200a56:	84aa                	mv	s1,a0
80200a58:	842e                	mv	s0,a1
80200a5a:	8a32                	mv	s4,a2
80200a5c:	8936                	mv	s2,a3
80200a5e:	8aba                	mv	s5,a4
80200a60:	ef89                	bnez	a5,80200a7a <ulog_hex_formater+0x42>
80200a62:	1ca00613          	li	a2,458
80200a66:	00008597          	auipc	a1,0x8
80200a6a:	e6258593          	addi	a1,a1,-414 # 802088c8 <__FUNCTION__.11>
80200a6e:	00006517          	auipc	a0,0x6
80200a72:	72250513          	addi	a0,a0,1826 # 80207190 <rt_system_timer_thread_init+0x38>
80200a76:	4f2040ef          	jal	80204f68 <rt_assert_handler>
80200a7a:	000a079b          	sext.w	a5,s4
80200a7e:	ef89                	bnez	a5,80200a98 <ulog_hex_formater+0x60>
80200a80:	1cb00613          	li	a2,459
80200a84:	00008597          	auipc	a1,0x8
80200a88:	e4458593          	addi	a1,a1,-444 # 802088c8 <__FUNCTION__.11>
80200a8c:	00006517          	auipc	a0,0x6
80200a90:	75c50513          	addi	a0,a0,1884 # 802071e8 <rt_system_timer_thread_init+0x90>
80200a94:	4d4040ef          	jal	80204f68 <rt_assert_handler>
80200a98:	8622                	mv	a2,s0
80200a9a:	459d                	li	a1,7
80200a9c:	8526                	mv	a0,s1
80200a9e:	c5dff0ef          	jal	802006fa <ulog_head_formater>
80200aa2:	2501                	sext.w	a0,a0
80200aa4:	00011417          	auipc	s0,0x11
80200aa8:	a2840413          	addi	s0,s0,-1496 # 802114cc <log_len.10>
80200aac:	c008                	sw	a0,0(s0)
80200aae:	0129873b          	addw	a4,s3,s2
80200ab2:	86ce                	mv	a3,s3
80200ab4:	00006617          	auipc	a2,0x6
80200ab8:	73c60613          	addi	a2,a2,1852 # 802071f0 <rt_system_timer_thread_init+0x98>
80200abc:	08000593          	li	a1,128
80200ac0:	9d25                	addw	a0,a0,s1
80200ac2:	022040ef          	jal	80204ae4 <rt_snprintf>
80200ac6:	2501                	sext.w	a0,a0
80200ac8:	08000793          	li	a5,128
80200acc:	00a7e463          	bltu	a5,a0,80200ad4 <ulog_hex_formater+0x9c>
80200ad0:	401c                	lw	a5,0(s0)
80200ad2:	9fa9                	addw	a5,a5,a0
80200ad4:	c01c                	sw	a5,0(s0)
80200ad6:	00011997          	auipc	s3,0x11
80200ada:	9f298993          	addi	s3,s3,-1550 # 802114c8 <j.8>
80200ade:	4781                	li	a5,0
80200ae0:	00006b17          	auipc	s6,0x6
80200ae4:	728b0b13          	addi	s6,s6,1832 # 80207208 <rt_system_timer_thread_init+0xb0>
80200ae8:	00006b97          	auipc	s7,0x6
80200aec:	718b8b93          	addi	s7,s7,1816 # 80207200 <rt_system_timer_thread_init+0xa8>
80200af0:	00006c17          	auipc	s8,0x6
80200af4:	6c8c0c13          	addi	s8,s8,1736 # 802071b8 <rt_system_timer_thread_init+0x60>
80200af8:	00f9a023          	sw	a5,0(s3)
80200afc:	0557ed63          	bltu	a5,s5,80200b56 <ulog_hex_formater+0x11e>
80200b00:	4008                	lw	a0,0(s0)
80200b02:	00006617          	auipc	a2,0x6
80200b06:	70e60613          	addi	a2,a2,1806 # 80207210 <rt_system_timer_thread_init+0xb8>
80200b0a:	05e00b13          	li	s6,94
80200b0e:	00a485bb          	addw	a1,s1,a0
80200b12:	b0fff0ef          	jal	80200620 <ulog_strcpy>
80200b16:	401c                	lw	a5,0(s0)
80200b18:	00006a97          	auipc	s5,0x6
80200b1c:	700a8a93          	addi	s5,s5,1792 # 80207218 <rt_system_timer_thread_init+0xc0>
80200b20:	9d3d                	addw	a0,a0,a5
80200b22:	c008                	sw	a0,0(s0)
80200b24:	4781                	li	a5,0
80200b26:	00f9a023          	sw	a5,0(s3)
80200b2a:	0927e463          	bltu	a5,s2,80200bb2 <ulog_hex_formater+0x17a>
80200b2e:	400c                	lw	a1,0(s0)
80200b30:	8526                	mv	a0,s1
80200b32:	469d                	li	a3,7
80200b34:	4605                	li	a2,1
80200b36:	d9bff0ef          	jal	802008d0 <ulog_tail_formater>
80200b3a:	60e6                	ld	ra,88(sp)
80200b3c:	6446                	ld	s0,80(sp)
80200b3e:	64a6                	ld	s1,72(sp)
80200b40:	6906                	ld	s2,64(sp)
80200b42:	79e2                	ld	s3,56(sp)
80200b44:	7a42                	ld	s4,48(sp)
80200b46:	7aa2                	ld	s5,40(sp)
80200b48:	7b02                	ld	s6,32(sp)
80200b4a:	6be2                	ld	s7,24(sp)
80200b4c:	6c42                	ld	s8,16(sp)
80200b4e:	2501                	sext.w	a0,a0
80200b50:	0601011b          	addiw	sp,sp,96
80200b54:	8082                	ret
80200b56:	0527f763          	bgeu	a5,s2,80200ba4 <ulog_hex_formater+0x16c>
80200b5a:	00fa07bb          	addw	a5,s4,a5
80200b5e:	0007c683          	lbu	a3,0(a5)
80200b62:	865e                	mv	a2,s7
80200b64:	45a1                	li	a1,8
80200b66:	0081051b          	addiw	a0,sp,8
80200b6a:	77b030ef          	jal	80204ae4 <rt_snprintf>
80200b6e:	4008                	lw	a0,0(s0)
80200b70:	0081061b          	addiw	a2,sp,8
80200b74:	00a485bb          	addw	a1,s1,a0
80200b78:	aa9ff0ef          	jal	80200620 <ulog_strcpy>
80200b7c:	401c                	lw	a5,0(s0)
80200b7e:	9d3d                	addw	a0,a0,a5
80200b80:	0009a783          	lw	a5,0(s3)
80200b84:	c008                	sw	a0,0(s0)
80200b86:	2785                	addiw	a5,a5,1
80200b88:	8b9d                	andi	a5,a5,7
80200b8a:	eb89                	bnez	a5,80200b9c <ulog_hex_formater+0x164>
80200b8c:	8662                	mv	a2,s8
80200b8e:	00a485bb          	addw	a1,s1,a0
80200b92:	a8fff0ef          	jal	80200620 <ulog_strcpy>
80200b96:	401c                	lw	a5,0(s0)
80200b98:	9d3d                	addw	a0,a0,a5
80200b9a:	c008                	sw	a0,0(s0)
80200b9c:	0009a783          	lw	a5,0(s3)
80200ba0:	2785                	addiw	a5,a5,1
80200ba2:	bf99                	j	80200af8 <ulog_hex_formater+0xc0>
80200ba4:	4621                	li	a2,8
80200ba6:	85da                	mv	a1,s6
80200ba8:	0081051b          	addiw	a0,sp,8
80200bac:	0c2040ef          	jal	80204c6e <rt_strncpy>
80200bb0:	bf7d                	j	80200b6e <ulog_hex_formater+0x136>
80200bb2:	00fa07bb          	addw	a5,s4,a5
80200bb6:	0007c683          	lbu	a3,0(a5)
80200bba:	fe06879b          	addiw	a5,a3,-32
80200bbe:	00fb7463          	bgeu	s6,a5,80200bc6 <ulog_hex_formater+0x18e>
80200bc2:	02e00693          	li	a3,46
80200bc6:	8656                	mv	a2,s5
80200bc8:	45a1                	li	a1,8
80200bca:	0081051b          	addiw	a0,sp,8
80200bce:	717030ef          	jal	80204ae4 <rt_snprintf>
80200bd2:	4008                	lw	a0,0(s0)
80200bd4:	0081061b          	addiw	a2,sp,8
80200bd8:	00a485bb          	addw	a1,s1,a0
80200bdc:	a45ff0ef          	jal	80200620 <ulog_strcpy>
80200be0:	401c                	lw	a5,0(s0)
80200be2:	9d3d                	addw	a0,a0,a5
80200be4:	0009a783          	lw	a5,0(s3)
80200be8:	c008                	sw	a0,0(s0)
80200bea:	2785                	addiw	a5,a5,1
80200bec:	bf2d                	j	80200b26 <ulog_hex_formater+0xee>

80200bee <ulog_voutput>:
80200bee:	f901011b          	addiw	sp,sp,-112
80200bf2:	f0a2                	sd	s0,96(sp)
80200bf4:	eca6                	sd	s1,88(sp)
80200bf6:	e8ca                	sd	s2,80(sp)
80200bf8:	e0d2                	sd	s4,64(sp)
80200bfa:	fc56                	sd	s5,56(sp)
80200bfc:	f45e                	sd	s7,40(sp)
80200bfe:	f062                	sd	s8,32(sp)
80200c00:	ec66                	sd	s9,24(sp)
80200c02:	e86a                	sd	s10,16(sp)
80200c04:	8c3e                	mv	s8,a5
80200c06:	f486                	sd	ra,104(sp)
80200c08:	e4ce                	sd	s3,72(sp)
80200c0a:	f85a                	sd	s6,48(sp)
80200c0c:	e46e                	sd	s11,8(sp)
80200c0e:	0005879b          	sext.w	a5,a1
80200c12:	5d46                	lw	s10,112(sp)
80200c14:	84aa                	mv	s1,a0
80200c16:	842e                	mv	s0,a1
80200c18:	8ab2                	mv	s5,a2
80200c1a:	8a36                	mv	s4,a3
80200c1c:	8bba                	mv	s7,a4
80200c1e:	8cc2                	mv	s9,a6
80200c20:	8946                	mv	s2,a7
80200c22:	ef89                	bnez	a5,80200c3c <ulog_voutput+0x4e>
80200c24:	28900613          	li	a2,649
80200c28:	00008597          	auipc	a1,0x8
80200c2c:	c9058593          	addi	a1,a1,-880 # 802088b8 <__FUNCTION__.7>
80200c30:	00006517          	auipc	a0,0x6
80200c34:	58050513          	addi	a0,a0,1408 # 802071b0 <rt_system_timer_thread_init+0x58>
80200c38:	330040ef          	jal	80204f68 <rt_assert_handler>
80200c3c:	0009079b          	sext.w	a5,s2
80200c40:	000a0b1b          	sext.w	s6,s4
80200c44:	c3c5                	beqz	a5,80200ce4 <ulog_voutput+0xf6>
80200c46:	0a0b1163          	bnez	s6,80200ce8 <ulog_voutput+0xfa>
80200c4a:	479d                	li	a5,7
80200c4c:	0097fe63          	bgeu	a5,s1,80200c68 <ulog_voutput+0x7a>
80200c50:	28c00613          	li	a2,652
80200c54:	00008597          	auipc	a1,0x8
80200c58:	c6458593          	addi	a1,a1,-924 # 802088b8 <__FUNCTION__.7>
80200c5c:	00006517          	auipc	a0,0x6
80200c60:	53c50513          	addi	a0,a0,1340 # 80207198 <rt_system_timer_thread_init+0x40>
80200c64:	304040ef          	jal	80204f68 <rt_assert_handler>
80200c68:	00011797          	auipc	a5,0x11
80200c6c:	9907a783          	lw	a5,-1648(a5) # 802115f8 <ulog>
80200c70:	0c078e63          	beqz	a5,80200d4c <ulog_voutput+0x15e>
80200c74:	722030ef          	jal	80204396 <rt_interrupt_get_nest>
80200c78:	00011997          	auipc	s3,0x11
80200c7c:	9d098993          	addi	s3,s3,-1584 # 80211648 <ulog+0x50>
80200c80:	c901                	beqz	a0,80200c90 <ulog_voutput+0xa2>
80200c82:	00006517          	auipc	a0,0x6
80200c86:	5ce50513          	addi	a0,a0,1486 # 80207250 <rt_system_timer_thread_init+0xf8>
80200c8a:	12a040ef          	jal	80204db4 <rt_kprintf>
80200c8e:	4981                	li	s3,0
80200c90:	fc8ff0ef          	jal	80200458 <output_lock>
80200c94:	00011797          	auipc	a5,0x11
80200c98:	83078793          	addi	a5,a5,-2000 # 802114c4 <ulog_voutput_recursion.6>
80200c9c:	0007ad83          	lw	s11,0(a5)
80200ca0:	4705                	li	a4,1
80200ca2:	06ed9063          	bne	s11,a4,80200d02 <ulog_voutput+0x114>
80200ca6:	080b1a63          	bnez	s6,80200d3a <ulog_voutput+0x14c>
80200caa:	85ea                	mv	a1,s10
80200cac:	854a                	mv	a0,s2
80200cae:	106040ef          	jal	80204db4 <rt_kprintf>
80200cb2:	01ba9863          	bne	s5,s11,80200cc2 <ulog_voutput+0xd4>
80200cb6:	00006517          	auipc	a0,0x6
80200cba:	51a50513          	addi	a0,a0,1306 # 802071d0 <rt_system_timer_thread_init+0x78>
80200cbe:	0f6040ef          	jal	80204db4 <rt_kprintf>
80200cc2:	7406                	ld	s0,96(sp)
80200cc4:	70a6                	ld	ra,104(sp)
80200cc6:	64e6                	ld	s1,88(sp)
80200cc8:	6946                	ld	s2,80(sp)
80200cca:	69a6                	ld	s3,72(sp)
80200ccc:	6a06                	ld	s4,64(sp)
80200cce:	7ae2                	ld	s5,56(sp)
80200cd0:	7b42                	ld	s6,48(sp)
80200cd2:	7ba2                	ld	s7,40(sp)
80200cd4:	7c02                	ld	s8,32(sp)
80200cd6:	6ce2                	ld	s9,24(sp)
80200cd8:	6d42                	ld	s10,16(sp)
80200cda:	6da2                	ld	s11,8(sp)
80200cdc:	0701011b          	addiw	sp,sp,112
80200ce0:	8d3ff06f          	j	802005b2 <output_unlock>
80200ce4:	f60b13e3          	bnez	s6,80200c4a <ulog_voutput+0x5c>
80200ce8:	28a00613          	li	a2,650
80200cec:	00008597          	auipc	a1,0x8
80200cf0:	bcc58593          	addi	a1,a1,-1076 # 802088b8 <__FUNCTION__.7>
80200cf4:	00006517          	auipc	a0,0x6
80200cf8:	52c50513          	addi	a0,a0,1324 # 80207220 <rt_system_timer_thread_init+0xc8>
80200cfc:	26c040ef          	jal	80204f68 <rt_assert_handler>
80200d00:	b7a9                	j	80200c4a <ulog_voutput+0x5c>
80200d02:	c398                	sw	a4,0(a5)
80200d04:	020b1b63          	bnez	s6,80200d3a <ulog_voutput+0x14c>
80200d08:	87ea                	mv	a5,s10
80200d0a:	874a                	mv	a4,s2
80200d0c:	86d6                	mv	a3,s5
80200d0e:	8622                	mv	a2,s0
80200d10:	85a6                	mv	a1,s1
80200d12:	854e                	mv	a0,s3
80200d14:	c6dff0ef          	jal	80200980 <ulog_formater>
80200d18:	0005071b          	sext.w	a4,a0
80200d1c:	86ce                	mv	a3,s3
80200d1e:	4601                	li	a2,0
80200d20:	85a2                	mv	a1,s0
80200d22:	8526                	mv	a0,s1
80200d24:	00010797          	auipc	a5,0x10
80200d28:	78e7ae23          	sw	a4,1948(a5) # 802114c0 <log_len.5>
80200d2c:	f5aff0ef          	jal	80200486 <do_output>
80200d30:	00010797          	auipc	a5,0x10
80200d34:	7807aa23          	sw	zero,1940(a5) # 802114c4 <ulog_voutput_recursion.6>
80200d38:	b769                	j	80200cc2 <ulog_voutput+0xd4>
80200d3a:	87e6                	mv	a5,s9
80200d3c:	8762                	mv	a4,s8
80200d3e:	86de                	mv	a3,s7
80200d40:	8652                	mv	a2,s4
80200d42:	85a2                	mv	a1,s0
80200d44:	854e                	mv	a0,s3
80200d46:	cf3ff0ef          	jal	80200a38 <ulog_hex_formater>
80200d4a:	b7f9                	j	80200d18 <ulog_voutput+0x12a>
80200d4c:	70a6                	ld	ra,104(sp)
80200d4e:	7406                	ld	s0,96(sp)
80200d50:	64e6                	ld	s1,88(sp)
80200d52:	6946                	ld	s2,80(sp)
80200d54:	69a6                	ld	s3,72(sp)
80200d56:	6a06                	ld	s4,64(sp)
80200d58:	7ae2                	ld	s5,56(sp)
80200d5a:	7b42                	ld	s6,48(sp)
80200d5c:	7ba2                	ld	s7,40(sp)
80200d5e:	7c02                	ld	s8,32(sp)
80200d60:	6ce2                	ld	s9,24(sp)
80200d62:	6d42                	ld	s10,16(sp)
80200d64:	6da2                	ld	s11,8(sp)
80200d66:	0701011b          	addiw	sp,sp,112
80200d6a:	8082                	ret

80200d6c <ulog_output>:
80200d6c:	fb01011b          	addiw	sp,sp,-80
80200d70:	fc3e                	sd	a5,56(sp)
80200d72:	0301079b          	addiw	a5,sp,48
80200d76:	f83a                	sd	a4,48(sp)
80200d78:	e0c2                	sd	a6,64(sp)
80200d7a:	e4c6                	sd	a7,72(sp)
80200d7c:	ce3e                	sw	a5,28(sp)
80200d7e:	c03e                	sw	a5,0(sp)
80200d80:	88b6                	mv	a7,a3
80200d82:	4801                	li	a6,0
80200d84:	4781                	li	a5,0
80200d86:	4701                	li	a4,0
80200d88:	4681                	li	a3,0
80200d8a:	f406                	sd	ra,40(sp)
80200d8c:	e63ff0ef          	jal	80200bee <ulog_voutput>
80200d90:	70a2                	ld	ra,40(sp)
80200d92:	0501011b          	addiw	sp,sp,80
80200d96:	8082                	ret

80200d98 <ulog_backend_register>:
80200d98:	3101                	addiw	sp,sp,-32
80200d9a:	e822                	sd	s0,16(sp)
80200d9c:	e426                	sd	s1,8(sp)
80200d9e:	e04a                	sd	s2,0(sp)
80200da0:	0005079b          	sext.w	a5,a0
80200da4:	ec06                	sd	ra,24(sp)
80200da6:	843e                	mv	s0,a5
80200da8:	84ae                	mv	s1,a1
80200daa:	8932                	mv	s2,a2
80200dac:	ef89                	bnez	a5,80200dc6 <ulog_backend_register+0x2e>
80200dae:	4f300613          	li	a2,1267
80200db2:	00008597          	auipc	a1,0x8
80200db6:	aee58593          	addi	a1,a1,-1298 # 802088a0 <__FUNCTION__.3>
80200dba:	00006517          	auipc	a0,0x6
80200dbe:	4fe50513          	addi	a0,a0,1278 # 802072b8 <rt_system_timer_thread_init+0x160>
80200dc2:	1a6040ef          	jal	80204f68 <rt_assert_handler>
80200dc6:	0004879b          	sext.w	a5,s1
80200dca:	ef89                	bnez	a5,80200de4 <ulog_backend_register+0x4c>
80200dcc:	4f400613          	li	a2,1268
80200dd0:	00008597          	auipc	a1,0x8
80200dd4:	ad058593          	addi	a1,a1,-1328 # 802088a0 <__FUNCTION__.3>
80200dd8:	00006517          	auipc	a0,0x6
80200ddc:	4e850513          	addi	a0,a0,1256 # 802072c0 <rt_system_timer_thread_init+0x168>
80200de0:	188040ef          	jal	80204f68 <rt_assert_handler>
80200de4:	00011797          	auipc	a5,0x11
80200de8:	8147a783          	lw	a5,-2028(a5) # 802115f8 <ulog>
80200dec:	ef89                	bnez	a5,80200e06 <ulog_backend_register+0x6e>
80200dee:	4f500613          	li	a2,1269
80200df2:	00008597          	auipc	a1,0x8
80200df6:	aae58593          	addi	a1,a1,-1362 # 802088a0 <__FUNCTION__.3>
80200dfa:	00006517          	auipc	a0,0x6
80200dfe:	4ae50513          	addi	a0,a0,1198 # 802072a8 <rt_system_timer_thread_init+0x150>
80200e02:	166040ef          	jal	80204f68 <rt_assert_handler>
80200e06:	505c                	lw	a5,36(s0)
80200e08:	ef89                	bnez	a5,80200e22 <ulog_backend_register+0x8a>
80200e0a:	4f600613          	li	a2,1270
80200e0e:	00008597          	auipc	a1,0x8
80200e12:	a9258593          	addi	a1,a1,-1390 # 802088a0 <__FUNCTION__.3>
80200e16:	00006517          	auipc	a0,0x6
80200e1a:	4b250513          	addi	a0,a0,1202 # 802072c8 <rt_system_timer_thread_init+0x170>
80200e1e:	14a040ef          	jal	80204f68 <rt_assert_handler>
80200e22:	501c                	lw	a5,32(s0)
80200e24:	c399                	beqz	a5,80200e2a <ulog_backend_register+0x92>
80200e26:	8522                	mv	a0,s0
80200e28:	9782                	jalr	a5
80200e2a:	479d                	li	a5,7
80200e2c:	465d                	li	a2,23
80200e2e:	85a6                	mv	a1,s1
80200e30:	cc5c                	sw	a5,28(s0)
80200e32:	01242c23          	sw	s2,24(s0)
80200e36:	8522                	mv	a0,s0
80200e38:	637030ef          	jal	80204c6e <rt_strncpy>
80200e3c:	00010517          	auipc	a0,0x10
80200e40:	69c50513          	addi	a0,a0,1692 # 802114d8 <_spinlock>
80200e44:	019020ef          	jal	8020365c <rt_spin_lock_irqsave>
80200e48:	85aa                	mv	a1,a0
80200e4a:	0344061b          	addiw	a2,s0,52
80200e4e:	00010697          	auipc	a3,0x10
80200e52:	7f668693          	addi	a3,a3,2038 # 80211644 <ulog+0x4c>
80200e56:	4298                	lw	a4,0(a3)
80200e58:	87b6                	mv	a5,a3
80200e5a:	86ba                	mv	a3,a4
80200e5c:	ff6d                	bnez	a4,80200e56 <ulog_backend_register+0xbe>
80200e5e:	c390                	sw	a2,0(a5)
80200e60:	02042a23          	sw	zero,52(s0)
80200e64:	00010517          	auipc	a0,0x10
80200e68:	67450513          	addi	a0,a0,1652 # 802114d8 <_spinlock>
80200e6c:	00b020ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80200e70:	60e2                	ld	ra,24(sp)
80200e72:	6442                	ld	s0,16(sp)
80200e74:	64a2                	ld	s1,8(sp)
80200e76:	6902                	ld	s2,0(sp)
80200e78:	4501                	li	a0,0
80200e7a:	0201011b          	addiw	sp,sp,32
80200e7e:	8082                	ret

80200e80 <rt_hw_backtrace_frame_unwind>:
80200e80:	419c                	lw	a5,0(a1)
80200e82:	5549                	li	a0,-14
80200e84:	c791                	beqz	a5,80200e90 <rt_hw_backtrace_frame_unwind+0x10>
80200e86:	8b9d                	andi	a5,a5,7
80200e88:	f0100513          	li	a0,-255
80200e8c:	c391                	beqz	a5,80200e90 <rt_hw_backtrace_frame_unwind+0x10>
80200e8e:	5549                	li	a0,-14
80200e90:	8082                	ret

80200e92 <_rt_hw_stack_init>:
80200e92:	fe052e23          	sw	zero,-4(a0)
80200e96:	feb52c23          	sw	a1,-8(a0)
80200e9a:	fe052a23          	sw	zero,-12(a0)
80200e9e:	fe052823          	sw	zero,-16(a0)
80200ea2:	fe052623          	sw	zero,-20(a0)
80200ea6:	fe052423          	sw	zero,-24(a0)
80200eaa:	fe052223          	sw	zero,-28(a0)
80200eae:	fe052023          	sw	zero,-32(a0)
80200eb2:	fc052e23          	sw	zero,-36(a0)
80200eb6:	fc052c23          	sw	zero,-40(a0)
80200eba:	fc052a23          	sw	zero,-44(a0)
80200ebe:	fc052823          	sw	zero,-48(a0)
80200ec2:	fc052623          	sw	zero,-52(a0)
80200ec6:	fc052423          	sw	zero,-56(a0)
80200eca:	fcc52223          	sw	a2,-60(a0)
80200ece:	fc45051b          	addiw	a0,a0,-60
80200ed2:	8082                	ret

80200ed4 <rt_hw_stack_init>:
80200ed4:	ff067793          	andi	a5,a2,-16
80200ed8:	feb7ac23          	sw	a1,-8(a5)
80200edc:	00046637          	lui	a2,0x46
80200ee0:	fffff597          	auipc	a1,0xfffff
80200ee4:	2c858593          	addi	a1,a1,712 # 802001a8 <_rt_thread_entry>
80200ee8:	fea7ae23          	sw	a0,-4(a5)
80200eec:	fed7aa23          	sw	a3,-12(a5)
80200ef0:	12060613          	addi	a2,a2,288 # 46120 <__text_size+0x3cdc0>
80200ef4:	2581                	sext.w	a1,a1
80200ef6:	ff47851b          	addiw	a0,a5,-12
80200efa:	bf61                	j	80200e92 <_rt_hw_stack_init>

80200efc <rt_hw_context_switch_interrupt>:
80200efc:	00010797          	auipc	a5,0x10
80200f00:	5e478793          	addi	a5,a5,1508 # 802114e0 <rt_thread_switch_interrupt_flag>
80200f04:	4398                	lw	a4,0(a5)
80200f06:	e709                	bnez	a4,80200f10 <rt_hw_context_switch_interrupt+0x14>
80200f08:	00010717          	auipc	a4,0x10
80200f0c:	5ea72023          	sw	a0,1504(a4) # 802114e8 <rt_interrupt_from_thread>
80200f10:	00010717          	auipc	a4,0x10
80200f14:	5cb72a23          	sw	a1,1492(a4) # 802114e4 <rt_interrupt_to_thread>
80200f18:	4705                	li	a4,1
80200f1a:	c398                	sw	a4,0(a5)
80200f1c:	8082                	ret

80200f1e <rt_hw_cpu_shutdown>:
80200f1e:	3141                	addiw	sp,sp,-16
80200f20:	00006517          	auipc	a0,0x6
80200f24:	40050513          	addi	a0,a0,1024 # 80207320 <rt_system_timer_thread_init+0x1c8>
80200f28:	e406                	sd	ra,8(sp)
80200f2a:	68b030ef          	jal	80204db4 <rt_kprintf>
80200f2e:	ccaff0ef          	jal	802003f8 <rt_hw_interrupt_disable>
80200f32:	4501                	li	a0,0
80200f34:	4581                	li	a1,0
80200f36:	4601                	li	a2,0
80200f38:	4681                	li	a3,0
80200f3a:	4701                	li	a4,0
80200f3c:	4801                	li	a6,0
80200f3e:	48a1                	li	a7,8
80200f40:	00000073          	ecall
80200f44:	a001                	j	80200f44 <rt_hw_cpu_shutdown+0x26>

80200f46 <rt_hw_interrupt_handle>:
80200f46:	3141                	addiw	sp,sp,-16
80200f48:	85aa                	mv	a1,a0
80200f4a:	00006517          	auipc	a0,0x6
80200f4e:	3e650513          	addi	a0,a0,998 # 80207330 <rt_system_timer_thread_init+0x1d8>
80200f52:	e406                	sd	ra,8(sp)
80200f54:	661030ef          	jal	80204db4 <rt_kprintf>
80200f58:	60a2                	ld	ra,8(sp)
80200f5a:	4501                	li	a0,0
80200f5c:	2141                	addiw	sp,sp,16
80200f5e:	8082                	ret

80200f60 <rt_hw_interrupt_umask>:
80200f60:	3141                	addiw	sp,sp,-16
80200f62:	4585                	li	a1,1
80200f64:	e022                	sd	s0,0(sp)
80200f66:	e406                	sd	ra,8(sp)
80200f68:	842a                	mv	s0,a0
80200f6a:	062000ef          	jal	80200fcc <plic_set_priority>
80200f6e:	8522                	mv	a0,s0
80200f70:	6402                	ld	s0,0(sp)
80200f72:	60a2                	ld	ra,8(sp)
80200f74:	2141                	addiw	sp,sp,16
80200f76:	a0a5                	j	80200fde <plic_irq_enable>

80200f78 <rt_hw_interrupt_install>:
80200f78:	07f00793          	li	a5,127
80200f7c:	02a7c063          	blt	a5,a0,80200f9c <rt_hw_interrupt_install+0x24>
80200f80:	0035151b          	slliw	a0,a0,0x3
80200f84:	00010797          	auipc	a5,0x10
80200f88:	74c78793          	addi	a5,a5,1868 # 802116d0 <irq_desc>
80200f8c:	9fa9                	addw	a5,a5,a0
80200f8e:	0005871b          	sext.w	a4,a1
80200f92:	4388                	lw	a0,0(a5)
80200f94:	c709                	beqz	a4,80200f9e <rt_hw_interrupt_install+0x26>
80200f96:	c38c                	sw	a1,0(a5)
80200f98:	c3d0                	sw	a2,4(a5)
80200f9a:	8082                	ret
80200f9c:	4501                	li	a0,0
80200f9e:	8082                	ret

80200fa0 <rt_hw_interrupt_init>:
80200fa0:	00010797          	auipc	a5,0x10
80200fa4:	73078793          	addi	a5,a5,1840 # 802116d0 <irq_desc>
80200fa8:	00011717          	auipc	a4,0x11
80200fac:	b2870713          	addi	a4,a4,-1240 # 80211ad0 <serial0>
80200fb0:	2781                	sext.w	a5,a5
80200fb2:	2701                	sext.w	a4,a4
80200fb4:	00000617          	auipc	a2,0x0
80200fb8:	f9260613          	addi	a2,a2,-110 # 80200f46 <rt_hw_interrupt_handle>
80200fbc:	c390                	sw	a2,0(a5)
80200fbe:	0007a223          	sw	zero,4(a5)
80200fc2:	27a1                	addiw	a5,a5,8
80200fc4:	fee79ce3          	bne	a5,a4,80200fbc <rt_hw_interrupt_init+0x1c>
80200fc8:	4501                	li	a0,0
80200fca:	a0b1                	j	80201016 <plic_set_threshold>

80200fcc <plic_set_priority>:
80200fcc:	00008797          	auipc	a5,0x8
80200fd0:	4bc7a783          	lw	a5,1212(a5) # 80209488 <plic_base>
80200fd4:	0025151b          	slliw	a0,a0,0x2
80200fd8:	9d3d                	addw	a0,a0,a5
80200fda:	c10c                	sw	a1,0(a0)
80200fdc:	8082                	ret

80200fde <plic_irq_enable>:
80200fde:	6709                	lui	a4,0x2
80200fe0:	00008797          	auipc	a5,0x8
80200fe4:	3807a783          	lw	a5,896(a5) # 80209360 <__text_end>
80200fe8:	00008697          	auipc	a3,0x8
80200fec:	4a06a683          	lw	a3,1184(a3) # 80209488 <plic_base>
80200ff0:	0807071b          	addiw	a4,a4,128 # 2080 <__STACKSIZE__-0x1f80>
80200ff4:	9f35                	addw	a4,a4,a3
80200ff6:	0087979b          	slliw	a5,a5,0x8
80200ffa:	9fb9                	addw	a5,a5,a4
80200ffc:	4705                	li	a4,1
80200ffe:	00a7173b          	sllw	a4,a4,a0
80201002:	4388                	lw	a0,0(a5)
80201004:	8d59                	or	a0,a0,a4
80201006:	c388                	sw	a0,0(a5)
80201008:	104027f3          	csrr	a5,sie
8020100c:	2007e793          	ori	a5,a5,512
80201010:	1047a7f3          	csrrs	a5,sie,a5
80201014:	8082                	ret

80201016 <plic_set_threshold>:
80201016:	00008797          	auipc	a5,0x8
8020101a:	34a7a783          	lw	a5,842(a5) # 80209360 <__text_end>
8020101e:	00008697          	auipc	a3,0x8
80201022:	46a6a683          	lw	a3,1130(a3) # 80209488 <plic_base>
80201026:	00201737          	lui	a4,0x201
8020102a:	00d7979b          	slliw	a5,a5,0xd
8020102e:	9f35                	addw	a4,a4,a3
80201030:	9fb9                	addw	a5,a5,a4
80201032:	c388                	sw	a0,0(a5)
80201034:	8082                	ret

80201036 <plic_claim>:
80201036:	00201737          	lui	a4,0x201
8020103a:	00008797          	auipc	a5,0x8
8020103e:	3267a783          	lw	a5,806(a5) # 80209360 <__text_end>
80201042:	00008697          	auipc	a3,0x8
80201046:	4466a683          	lw	a3,1094(a3) # 80209488 <plic_base>
8020104a:	2711                	addiw	a4,a4,4 # 201004 <__text_size+0x1f7ca4>
8020104c:	9f35                	addw	a4,a4,a3
8020104e:	00d7979b          	slliw	a5,a5,0xd
80201052:	9fb9                	addw	a5,a5,a4
80201054:	4388                	lw	a0,0(a5)
80201056:	8082                	ret

80201058 <plic_complete>:
80201058:	00201737          	lui	a4,0x201
8020105c:	00008797          	auipc	a5,0x8
80201060:	3047a783          	lw	a5,772(a5) # 80209360 <__text_end>
80201064:	00008697          	auipc	a3,0x8
80201068:	4246a683          	lw	a3,1060(a3) # 80209488 <plic_base>
8020106c:	2711                	addiw	a4,a4,4 # 201004 <__text_size+0x1f7ca4>
8020106e:	00d7979b          	slliw	a5,a5,0xd
80201072:	9f35                	addw	a4,a4,a3
80201074:	9fb9                	addw	a5,a5,a4
80201076:	c388                	sw	a0,0(a5)
80201078:	8082                	ret

8020107a <plic_set_ie>:
8020107a:	6789                	lui	a5,0x2
8020107c:	00008717          	auipc	a4,0x8
80201080:	40c72703          	lw	a4,1036(a4) # 80209488 <plic_base>
80201084:	0807879b          	addiw	a5,a5,128 # 2080 <__STACKSIZE__-0x1f80>
80201088:	9fb9                	addw	a5,a5,a4
8020108a:	0025151b          	slliw	a0,a0,0x2
8020108e:	9fa9                	addw	a5,a5,a0
80201090:	0140000f          	fence	w,o
80201094:	c38c                	sw	a1,0(a5)
80201096:	8082                	ret

80201098 <plic_init>:
80201098:	3101                	addiw	sp,sp,-32
8020109a:	4501                	li	a0,0
8020109c:	e822                	sd	s0,16(sp)
8020109e:	e426                	sd	s1,8(sp)
802010a0:	ec06                	sd	ra,24(sp)
802010a2:	4401                	li	s0,0
802010a4:	f73ff0ef          	jal	80201016 <plic_set_threshold>
802010a8:	08000493          	li	s1,128
802010ac:	8522                	mv	a0,s0
802010ae:	4585                	li	a1,1
802010b0:	2405                	addiw	s0,s0,1
802010b2:	f1bff0ef          	jal	80200fcc <plic_set_priority>
802010b6:	fe941be3          	bne	s0,s1,802010ac <plic_init+0x14>
802010ba:	00008417          	auipc	s0,0x8
802010be:	2a642403          	lw	s0,678(s0) # 80209360 <__text_end>
802010c2:	0074141b          	slliw	s0,s0,0x7
802010c6:	44fd                	li	s1,31
802010c8:	0084f863          	bgeu	s1,s0,802010d8 <plic_init+0x40>
802010cc:	60e2                	ld	ra,24(sp)
802010ce:	6442                	ld	s0,16(sp)
802010d0:	64a2                	ld	s1,8(sp)
802010d2:	0201011b          	addiw	sp,sp,32
802010d6:	8082                	ret
802010d8:	8522                	mv	a0,s0
802010da:	55fd                	li	a1,-1
802010dc:	f9fff0ef          	jal	8020107a <plic_set_ie>
802010e0:	2405                	addiw	s0,s0,1
802010e2:	b7dd                	j	802010c8 <plic_init+0x30>

802010e4 <sbi_call.constprop.0>:
802010e4:	3141                	addiw	sp,sp,-16
802010e6:	88aa                	mv	a7,a0
802010e8:	882e                	mv	a6,a1
802010ea:	8532                	mv	a0,a2
802010ec:	85b6                	mv	a1,a3
802010ee:	863a                	mv	a2,a4
802010f0:	4681                	li	a3,0
802010f2:	4701                	li	a4,0
802010f4:	00000073          	ecall
802010f8:	1502                	slli	a0,a0,0x20
802010fa:	1582                	slli	a1,a1,0x20
802010fc:	9101                	srli	a0,a0,0x20
802010fe:	8d4d                	or	a0,a0,a1
80201100:	2141                	addiw	sp,sp,16
80201102:	8082                	ret

80201104 <sbi_probe_extension>:
80201104:	3101                	addiw	sp,sp,-32
80201106:	862a                	mv	a2,a0
80201108:	4701                	li	a4,0
8020110a:	4681                	li	a3,0
8020110c:	458d                	li	a1,3
8020110e:	4541                	li	a0,16
80201110:	ec06                	sd	ra,24(sp)
80201112:	fd3ff0ef          	jal	802010e4 <sbi_call.constprop.0>
80201116:	60e2                	ld	ra,24(sp)
80201118:	9501                	srai	a0,a0,0x20
8020111a:	0201011b          	addiw	sp,sp,32
8020111e:	8082                	ret

80201120 <sbi_set_timer>:
80201120:	00010797          	auipc	a5,0x10
80201124:	3cc7c783          	lbu	a5,972(a5) # 802114ec <has_time_extension>
80201128:	862a                	mv	a2,a0
8020112a:	cf8d                	beqz	a5,80201164 <sbi_set_timer+0x44>
8020112c:	54495537          	lui	a0,0x54495
80201130:	3101                	addiw	sp,sp,-32
80201132:	4701                	li	a4,0
80201134:	4681                	li	a3,0
80201136:	4581                	li	a1,0
80201138:	d4550513          	addi	a0,a0,-699 # 54494d45 <__text_size+0x5448b9e5>
8020113c:	ec06                	sd	ra,24(sp)
8020113e:	fa7ff0ef          	jal	802010e4 <sbi_call.constprop.0>
80201142:	2501                	sext.w	a0,a0
80201144:	c50d                	beqz	a0,8020116e <sbi_set_timer+0x4e>
80201146:	60e2                	ld	ra,24(sp)
80201148:	07c00613          	li	a2,124
8020114c:	00008597          	auipc	a1,0x8
80201150:	83458593          	addi	a1,a1,-1996 # 80208980 <__FUNCTION__.0>
80201154:	00006517          	auipc	a0,0x6
80201158:	20450513          	addi	a0,a0,516 # 80207358 <rt_system_timer_thread_init+0x200>
8020115c:	0201011b          	addiw	sp,sp,32
80201160:	6090306f          	j	80204f68 <rt_assert_handler>
80201164:	4701                	li	a4,0
80201166:	4681                	li	a3,0
80201168:	4581                	li	a1,0
8020116a:	4501                	li	a0,0
8020116c:	bfa5                	j	802010e4 <sbi_call.constprop.0>
8020116e:	60e2                	ld	ra,24(sp)
80201170:	0201011b          	addiw	sp,sp,32
80201174:	8082                	ret

80201176 <sbi_init>:
80201176:	fd01011b          	addiw	sp,sp,-48
8020117a:	4701                	li	a4,0
8020117c:	4681                	li	a3,0
8020117e:	4601                	li	a2,0
80201180:	4581                	li	a1,0
80201182:	4541                	li	a0,16
80201184:	f406                	sd	ra,40(sp)
80201186:	f5fff0ef          	jal	802010e4 <sbi_call.constprop.0>
8020118a:	42055793          	srai	a5,a0,0x20
8020118e:	2501                	sext.w	a0,a0
80201190:	c909                	beqz	a0,802011a2 <sbi_init+0x2c>
80201192:	70a2                	ld	ra,40(sp)
80201194:	00010797          	auipc	a5,0x10
80201198:	3607a223          	sw	zero,868(a5) # 802114f8 <sbi_spec_version>
8020119c:	0301011b          	addiw	sp,sp,48
802011a0:	8082                	ret
802011a2:	00010717          	auipc	a4,0x10
802011a6:	34f72b23          	sw	a5,854(a4) # 802114f8 <sbi_spec_version>
802011aa:	4701                	li	a4,0
802011ac:	4681                	li	a3,0
802011ae:	4601                	li	a2,0
802011b0:	4585                	li	a1,1
802011b2:	4541                	li	a0,16
802011b4:	f31ff0ef          	jal	802010e4 <sbi_call.constprop.0>
802011b8:	9501                	srai	a0,a0,0x20
802011ba:	00010797          	auipc	a5,0x10
802011be:	32a7ad23          	sw	a0,826(a5) # 802114f4 <sbi_impl_id>
802011c2:	4701                	li	a4,0
802011c4:	4681                	li	a3,0
802011c6:	4601                	li	a2,0
802011c8:	4589                	li	a1,2
802011ca:	4541                	li	a0,16
802011cc:	f19ff0ef          	jal	802010e4 <sbi_call.constprop.0>
802011d0:	9501                	srai	a0,a0,0x20
802011d2:	00010797          	auipc	a5,0x10
802011d6:	30a7af23          	sw	a0,798(a5) # 802114f0 <sbi_impl_version>
802011da:	54495537          	lui	a0,0x54495
802011de:	d4550513          	addi	a0,a0,-699 # 54494d45 <__text_size+0x5448b9e5>
802011e2:	f23ff0ef          	jal	80201104 <sbi_probe_extension>
802011e6:	c511                	beqz	a0,802011f2 <sbi_init+0x7c>
802011e8:	4785                	li	a5,1
802011ea:	00010717          	auipc	a4,0x10
802011ee:	30f70123          	sb	a5,770(a4) # 802114ec <has_time_extension>
802011f2:	00735537          	lui	a0,0x735
802011f6:	04950513          	addi	a0,a0,73 # 735049 <__text_size+0x72bce9>
802011fa:	f0bff0ef          	jal	80201104 <sbi_probe_extension>
802011fe:	70a2                	ld	ra,40(sp)
80201200:	52465537          	lui	a0,0x52465
80201204:	e4350513          	addi	a0,a0,-445 # 52464e43 <__text_size+0x5245bae3>
80201208:	0301011b          	addiw	sp,sp,48
8020120c:	bde5                	j	80201104 <sbi_probe_extension>

8020120e <rt_hw_console_output>:
8020120e:	3141                	addiw	sp,sp,-16
80201210:	e022                	sd	s0,0(sp)
80201212:	e406                	sd	ra,8(sp)
80201214:	842a                	mv	s0,a0
80201216:	00044603          	lbu	a2,0(s0)
8020121a:	e609                	bnez	a2,80201224 <rt_hw_console_output+0x16>
8020121c:	60a2                	ld	ra,8(sp)
8020121e:	6402                	ld	s0,0(sp)
80201220:	2141                	addiw	sp,sp,16
80201222:	8082                	ret
80201224:	4701                	li	a4,0
80201226:	4681                	li	a3,0
80201228:	4581                	li	a1,0
8020122a:	4505                	li	a0,1
8020122c:	2405                	addiw	s0,s0,1
8020122e:	eb7ff0ef          	jal	802010e4 <sbi_call.constprop.0>
80201232:	b7d5                	j	80201216 <rt_hw_console_output+0x8>

80201234 <init_bss>:
80201234:	00010797          	auipc	a5,0x10
80201238:	28c78793          	addi	a5,a5,652 # 802114c0 <log_len.5>
8020123c:	00015717          	auipc	a4,0x15
80201240:	cd470713          	addi	a4,a4,-812 # 80215f10 <__bss_end>
80201244:	2781                	sext.w	a5,a5
80201246:	2701                	sext.w	a4,a4
80201248:	86be                	mv	a3,a5
8020124a:	00e7e363          	bltu	a5,a4,80201250 <init_bss+0x1c>
8020124e:	8082                	ret
80201250:	0006a023          	sw	zero,0(a3)
80201254:	2791                	addiw	a5,a5,4
80201256:	bfcd                	j	80201248 <init_bss+0x14>

80201258 <tick_isr>:
80201258:	3141                	addiw	sp,sp,-16
8020125a:	e406                	sd	ra,8(sp)
8020125c:	206020ef          	jal	80203462 <rt_tick_increase>
80201260:	c0102773          	rdtime	a4
80201264:	00010797          	auipc	a5,0x10
80201268:	29c78793          	addi	a5,a5,668 # 80211500 <time_elapsed>
8020126c:	e398                	sd	a4,0(a5)
8020126e:	639c                	ld	a5,0(a5)
80201270:	00010517          	auipc	a0,0x10
80201274:	28c56503          	lwu	a0,652(a0) # 802114fc <tick_cycles>
80201278:	953e                	add	a0,a0,a5
8020127a:	ea7ff0ef          	jal	80201120 <sbi_set_timer>
8020127e:	60a2                	ld	ra,8(sp)
80201280:	4501                	li	a0,0
80201282:	2141                	addiw	sp,sp,16
80201284:	8082                	ret

80201286 <rt_hw_tick_init>:
80201286:	3141                	addiw	sp,sp,-16
80201288:	e022                	sd	s0,0(sp)
8020128a:	e406                	sd	ra,8(sp)
8020128c:	02000413          	li	s0,32
80201290:	104437f3          	csrrc	a5,sie,s0
80201294:	67e1                	lui	a5,0x18
80201296:	00010717          	auipc	a4,0x10
8020129a:	26670713          	addi	a4,a4,614 # 802114fc <tick_cycles>
8020129e:	6a078793          	addi	a5,a5,1696 # 186a0 <__text_size+0xf340>
802012a2:	c31c                	sw	a5,0(a4)
802012a4:	c01026f3          	rdtime	a3
802012a8:	00010797          	auipc	a5,0x10
802012ac:	25878793          	addi	a5,a5,600 # 80211500 <time_elapsed>
802012b0:	e394                	sd	a3,0(a5)
802012b2:	6388                	ld	a0,0(a5)
802012b4:	431c                	lw	a5,0(a4)
802012b6:	1782                	slli	a5,a5,0x20
802012b8:	9381                	srli	a5,a5,0x20
802012ba:	953e                	add	a0,a0,a5
802012bc:	e65ff0ef          	jal	80201120 <sbi_set_timer>
802012c0:	10442473          	csrrs	s0,sie,s0
802012c4:	60a2                	ld	ra,8(sp)
802012c6:	6402                	ld	s0,0(sp)
802012c8:	4501                	li	a0,0
802012ca:	2141                	addiw	sp,sp,16
802012cc:	8082                	ret

802012ce <dump_regs>:
802012ce:	3141                	addiw	sp,sp,-16
802012d0:	e022                	sd	s0,0(sp)
802012d2:	842a                	mv	s0,a0
802012d4:	00006517          	auipc	a0,0x6
802012d8:	20c50513          	addi	a0,a0,524 # 802074e0 <rt_system_timer_thread_init+0x388>
802012dc:	e406                	sd	ra,8(sp)
802012de:	2d7030ef          	jal	80204db4 <rt_kprintf>
802012e2:	00006517          	auipc	a0,0x6
802012e6:	22e50513          	addi	a0,a0,558 # 80207510 <rt_system_timer_thread_init+0x3b8>
802012ea:	2cb030ef          	jal	80204db4 <rt_kprintf>
802012ee:	08042603          	lw	a2,128(s0)
802012f2:	404c                	lw	a1,4(s0)
802012f4:	00006517          	auipc	a0,0x6
802012f8:	23450513          	addi	a0,a0,564 # 80207528 <rt_system_timer_thread_init+0x3d0>
802012fc:	2b9030ef          	jal	80204db4 <rt_kprintf>
80201300:	4810                	lw	a2,16(s0)
80201302:	444c                	lw	a1,12(s0)
80201304:	00006517          	auipc	a0,0x6
80201308:	24450513          	addi	a0,a0,580 # 80207548 <rt_system_timer_thread_init+0x3f0>
8020130c:	2a9030ef          	jal	80204db4 <rt_kprintf>
80201310:	00006517          	auipc	a0,0x6
80201314:	25850513          	addi	a0,a0,600 # 80207568 <rt_system_timer_thread_init+0x410>
80201318:	29d030ef          	jal	80204db4 <rt_kprintf>
8020131c:	4c10                	lw	a2,24(s0)
8020131e:	484c                	lw	a1,20(s0)
80201320:	00006517          	auipc	a0,0x6
80201324:	26050513          	addi	a0,a0,608 # 80207580 <rt_system_timer_thread_init+0x428>
80201328:	28d030ef          	jal	80204db4 <rt_kprintf>
8020132c:	4c4c                	lw	a1,28(s0)
8020132e:	00006517          	auipc	a0,0x6
80201332:	27250513          	addi	a0,a0,626 # 802075a0 <rt_system_timer_thread_init+0x448>
80201336:	27f030ef          	jal	80204db4 <rt_kprintf>
8020133a:	5870                	lw	a2,116(s0)
8020133c:	582c                	lw	a1,112(s0)
8020133e:	00006517          	auipc	a0,0x6
80201342:	27250513          	addi	a0,a0,626 # 802075b0 <rt_system_timer_thread_init+0x458>
80201346:	26f030ef          	jal	80204db4 <rt_kprintf>
8020134a:	5c70                	lw	a2,124(s0)
8020134c:	5c2c                	lw	a1,120(s0)
8020134e:	00006517          	auipc	a0,0x6
80201352:	28250513          	addi	a0,a0,642 # 802075d0 <rt_system_timer_thread_init+0x478>
80201356:	25f030ef          	jal	80204db4 <rt_kprintf>
8020135a:	00006517          	auipc	a0,0x6
8020135e:	29650513          	addi	a0,a0,662 # 802075f0 <rt_system_timer_thread_init+0x498>
80201362:	253030ef          	jal	80204db4 <rt_kprintf>
80201366:	5050                	lw	a2,36(s0)
80201368:	500c                	lw	a1,32(s0)
8020136a:	00006517          	auipc	a0,0x6
8020136e:	29e50513          	addi	a0,a0,670 # 80207608 <rt_system_timer_thread_init+0x4b0>
80201372:	243030ef          	jal	80204db4 <rt_kprintf>
80201376:	4470                	lw	a2,76(s0)
80201378:	442c                	lw	a1,72(s0)
8020137a:	00006517          	auipc	a0,0x6
8020137e:	2b650513          	addi	a0,a0,694 # 80207630 <rt_system_timer_thread_init+0x4d8>
80201382:	233030ef          	jal	80204db4 <rt_kprintf>
80201386:	4870                	lw	a2,84(s0)
80201388:	482c                	lw	a1,80(s0)
8020138a:	00006517          	auipc	a0,0x6
8020138e:	2c650513          	addi	a0,a0,710 # 80207650 <rt_system_timer_thread_init+0x4f8>
80201392:	223030ef          	jal	80204db4 <rt_kprintf>
80201396:	4c70                	lw	a2,92(s0)
80201398:	4c2c                	lw	a1,88(s0)
8020139a:	00006517          	auipc	a0,0x6
8020139e:	2d650513          	addi	a0,a0,726 # 80207670 <rt_system_timer_thread_init+0x518>
802013a2:	213030ef          	jal	80204db4 <rt_kprintf>
802013a6:	5070                	lw	a2,100(s0)
802013a8:	502c                	lw	a1,96(s0)
802013aa:	00006517          	auipc	a0,0x6
802013ae:	2e650513          	addi	a0,a0,742 # 80207690 <rt_system_timer_thread_init+0x538>
802013b2:	203030ef          	jal	80204db4 <rt_kprintf>
802013b6:	5470                	lw	a2,108(s0)
802013b8:	542c                	lw	a1,104(s0)
802013ba:	00006517          	auipc	a0,0x6
802013be:	2f650513          	addi	a0,a0,758 # 802076b0 <rt_system_timer_thread_init+0x558>
802013c2:	1f3030ef          	jal	80204db4 <rt_kprintf>
802013c6:	00006517          	auipc	a0,0x6
802013ca:	31250513          	addi	a0,a0,786 # 802076d8 <rt_system_timer_thread_init+0x580>
802013ce:	1e7030ef          	jal	80204db4 <rt_kprintf>
802013d2:	5450                	lw	a2,44(s0)
802013d4:	540c                	lw	a1,40(s0)
802013d6:	00006517          	auipc	a0,0x6
802013da:	32250513          	addi	a0,a0,802 # 802076f8 <rt_system_timer_thread_init+0x5a0>
802013de:	1d7030ef          	jal	80204db4 <rt_kprintf>
802013e2:	5850                	lw	a2,52(s0)
802013e4:	580c                	lw	a1,48(s0)
802013e6:	00006517          	auipc	a0,0x6
802013ea:	33250513          	addi	a0,a0,818 # 80207718 <rt_system_timer_thread_init+0x5c0>
802013ee:	1c7030ef          	jal	80204db4 <rt_kprintf>
802013f2:	5c50                	lw	a2,60(s0)
802013f4:	5c0c                	lw	a1,56(s0)
802013f6:	00006517          	auipc	a0,0x6
802013fa:	34250513          	addi	a0,a0,834 # 80207738 <rt_system_timer_thread_init+0x5e0>
802013fe:	1b7030ef          	jal	80204db4 <rt_kprintf>
80201402:	4070                	lw	a2,68(s0)
80201404:	402c                	lw	a1,64(s0)
80201406:	00006517          	auipc	a0,0x6
8020140a:	35250513          	addi	a0,a0,850 # 80207758 <rt_system_timer_thread_init+0x600>
8020140e:	1a7030ef          	jal	80204db4 <rt_kprintf>
80201412:	440c                	lw	a1,8(s0)
80201414:	00006517          	auipc	a0,0x6
80201418:	36450513          	addi	a0,a0,868 # 80207778 <rt_system_timer_thread_init+0x620>
8020141c:	199030ef          	jal	80204db4 <rt_kprintf>
80201420:	441c                	lw	a5,8(s0)
80201422:	00006597          	auipc	a1,0x6
80201426:	f5658593          	addi	a1,a1,-170 # 80207378 <rt_system_timer_thread_init+0x220>
8020142a:	8b89                	andi	a5,a5,2
8020142c:	e789                	bnez	a5,80201436 <dump_regs+0x168>
8020142e:	00006597          	auipc	a1,0x6
80201432:	f6a58593          	addi	a1,a1,-150 # 80207398 <rt_system_timer_thread_init+0x240>
80201436:	00006517          	auipc	a0,0x6
8020143a:	35250513          	addi	a0,a0,850 # 80207788 <rt_system_timer_thread_init+0x630>
8020143e:	177030ef          	jal	80204db4 <rt_kprintf>
80201442:	441c                	lw	a5,8(s0)
80201444:	00006597          	auipc	a1,0x6
80201448:	f9c58593          	addi	a1,a1,-100 # 802073e0 <rt_system_timer_thread_init+0x288>
8020144c:	0207f793          	andi	a5,a5,32
80201450:	c789                	beqz	a5,8020145a <dump_regs+0x18c>
80201452:	00006597          	auipc	a1,0x6
80201456:	f6658593          	addi	a1,a1,-154 # 802073b8 <rt_system_timer_thread_init+0x260>
8020145a:	00006517          	auipc	a0,0x6
8020145e:	32e50513          	addi	a0,a0,814 # 80207788 <rt_system_timer_thread_init+0x630>
80201462:	153030ef          	jal	80204db4 <rt_kprintf>
80201466:	441c                	lw	a5,8(s0)
80201468:	00006597          	auipc	a1,0x6
8020146c:	fc858593          	addi	a1,a1,-56 # 80207430 <rt_system_timer_thread_init+0x2d8>
80201470:	1007f793          	andi	a5,a5,256
80201474:	c789                	beqz	a5,8020147e <dump_regs+0x1b0>
80201476:	00006597          	auipc	a1,0x6
8020147a:	f9258593          	addi	a1,a1,-110 # 80207408 <rt_system_timer_thread_init+0x2b0>
8020147e:	00006517          	auipc	a0,0x6
80201482:	30a50513          	addi	a0,a0,778 # 80207788 <rt_system_timer_thread_init+0x630>
80201486:	12f030ef          	jal	80204db4 <rt_kprintf>
8020148a:	441c                	lw	a5,8(s0)
8020148c:	00006597          	auipc	a1,0x6
80201490:	fe458593          	addi	a1,a1,-28 # 80207470 <rt_system_timer_thread_init+0x318>
80201494:	02d79713          	slli	a4,a5,0x2d
80201498:	00075663          	bgez	a4,802014a4 <dump_regs+0x1d6>
8020149c:	00006597          	auipc	a1,0x6
802014a0:	fb458593          	addi	a1,a1,-76 # 80207450 <rt_system_timer_thread_init+0x2f8>
802014a4:	00006517          	auipc	a0,0x6
802014a8:	2e450513          	addi	a0,a0,740 # 80207788 <rt_system_timer_thread_init+0x630>
802014ac:	109030ef          	jal	80204db4 <rt_kprintf>
802014b0:	441c                	lw	a5,8(s0)
802014b2:	00006597          	auipc	a1,0x6
802014b6:	00658593          	addi	a1,a1,6 # 802074b8 <rt_system_timer_thread_init+0x360>
802014ba:	02c79713          	slli	a4,a5,0x2c
802014be:	00075663          	bgez	a4,802014ca <dump_regs+0x1fc>
802014c2:	00006597          	auipc	a1,0x6
802014c6:	fce58593          	addi	a1,a1,-50 # 80207490 <rt_system_timer_thread_init+0x338>
802014ca:	00006517          	auipc	a0,0x6
802014ce:	2be50513          	addi	a0,a0,702 # 80207788 <rt_system_timer_thread_init+0x630>
802014d2:	0e3030ef          	jal	80204db4 <rt_kprintf>
802014d6:	180025f3          	csrr	a1,satp
802014da:	1582                	slli	a1,a1,0x20
802014dc:	9181                	srli	a1,a1,0x20
802014de:	00006517          	auipc	a0,0x6
802014e2:	2b250513          	addi	a0,a0,690 # 80207790 <rt_system_timer_thread_init+0x638>
802014e6:	0cf030ef          	jal	80204db4 <rt_kprintf>
802014ea:	00006597          	auipc	a1,0x6
802014ee:	2b658593          	addi	a1,a1,694 # 802077a0 <rt_system_timer_thread_init+0x648>
802014f2:	00006517          	auipc	a0,0x6
802014f6:	2d650513          	addi	a0,a0,726 # 802077c8 <rt_system_timer_thread_init+0x670>
802014fa:	0bb030ef          	jal	80204db4 <rt_kprintf>
802014fe:	6402                	ld	s0,0(sp)
80201500:	60a2                	ld	ra,8(sp)
80201502:	00006517          	auipc	a0,0x6
80201506:	2d650513          	addi	a0,a0,726 # 802077d8 <rt_system_timer_thread_init+0x680>
8020150a:	2141                	addiw	sp,sp,16
8020150c:	0a90306f          	j	80204db4 <rt_kprintf>

80201510 <handle_trap>:
80201510:	fc01011b          	addiw	sp,sp,-64
80201514:	f426                	sd	s1,40(sp)
80201516:	00010497          	auipc	s1,0x10
8020151a:	ff248493          	addi	s1,s1,-14 # 80211508 <nested>
8020151e:	409c                	lw	a5,0(s1)
80201520:	fc06                	sd	ra,56(sp)
80201522:	f822                	sd	s0,48(sp)
80201524:	2785                	addiw	a5,a5,1
80201526:	f04a                	sd	s2,32(sp)
80201528:	ec4e                	sd	s3,24(sp)
8020152a:	e852                	sd	s4,16(sp)
8020152c:	c09c                	sw	a5,0(s1)
8020152e:	57fd                	li	a5,-1
80201530:	17fe                	slli	a5,a5,0x3f
80201532:	0795                	addi	a5,a5,5
80201534:	02f51463          	bne	a0,a5,8020155c <handle_trap+0x4c>
80201538:	601020ef          	jal	80204338 <rt_interrupt_enter>
8020153c:	d1dff0ef          	jal	80201258 <tick_isr>
80201540:	62b020ef          	jal	8020436a <rt_interrupt_leave>
80201544:	409c                	lw	a5,0(s1)
80201546:	70e2                	ld	ra,56(sp)
80201548:	7442                	ld	s0,48(sp)
8020154a:	37fd                	addiw	a5,a5,-1
8020154c:	c09c                	sw	a5,0(s1)
8020154e:	7902                	ld	s2,32(sp)
80201550:	74a2                	ld	s1,40(sp)
80201552:	69e2                	ld	s3,24(sp)
80201554:	6a42                	ld	s4,16(sp)
80201556:	0401011b          	addiw	sp,sp,64
8020155a:	8082                	ret
8020155c:	57fd                	li	a5,-1
8020155e:	17fe                	slli	a5,a5,0x3f
80201560:	07a5                	addi	a5,a5,9
80201562:	842a                	mv	s0,a0
80201564:	02f51563          	bne	a0,a5,8020158e <handle_trap+0x7e>
80201568:	5d1020ef          	jal	80204338 <rt_interrupt_enter>
8020156c:	acbff0ef          	jal	80201036 <plic_claim>
80201570:	842a                	mv	s0,a0
80201572:	ae7ff0ef          	jal	80201058 <plic_complete>
80201576:	0034171b          	slliw	a4,s0,0x3
8020157a:	00010797          	auipc	a5,0x10
8020157e:	15678793          	addi	a5,a5,342 # 802116d0 <irq_desc>
80201582:	9fb9                	addw	a5,a5,a4
80201584:	4398                	lw	a4,0(a5)
80201586:	43cc                	lw	a1,4(a5)
80201588:	8522                	mv	a0,s0
8020158a:	9702                	jalr	a4
8020158c:	bf55                	j	80201540 <handle_trap+0x30>
8020158e:	4098                	lw	a4,0(s1)
80201590:	4785                	li	a5,1
80201592:	8a2e                	mv	s4,a1
80201594:	8932                	mv	s2,a2
80201596:	89b6                	mv	s3,a3
80201598:	06f70163          	beq	a4,a5,802015fa <handle_trap+0xea>
8020159c:	00006697          	auipc	a3,0x6
802015a0:	29c68693          	addi	a3,a3,668 # 80207838 <rt_system_timer_thread_init+0x6e0>
802015a4:	4605                	li	a2,1
802015a6:	00006597          	auipc	a1,0x6
802015aa:	2ba58593          	addi	a1,a1,698 # 80207860 <rt_system_timer_thread_init+0x708>
802015ae:	450d                	li	a0,3
802015b0:	fbcff0ef          	jal	80200d6c <ulog_output>
802015b4:	00006697          	auipc	a3,0x6
802015b8:	2bc68693          	addi	a3,a3,700 # 80207870 <rt_system_timer_thread_init+0x718>
802015bc:	4605                	li	a2,1
802015be:	00006597          	auipc	a1,0x6
802015c2:	2a258593          	addi	a1,a1,674 # 80207860 <rt_system_timer_thread_init+0x708>
802015c6:	450d                	li	a0,3
802015c8:	fa4ff0ef          	jal	80200d6c <ulog_output>
802015cc:	0009081b          	sext.w	a6,s2
802015d0:	000a079b          	sext.w	a5,s4
802015d4:	0004071b          	sext.w	a4,s0
802015d8:	00006697          	auipc	a3,0x6
802015dc:	2b068693          	addi	a3,a3,688 # 80207888 <rt_system_timer_thread_init+0x730>
802015e0:	4605                	li	a2,1
802015e2:	00006597          	auipc	a1,0x6
802015e6:	27e58593          	addi	a1,a1,638 # 80207860 <rt_system_timer_thread_init+0x708>
802015ea:	450d                	li	a0,3
802015ec:	f80ff0ef          	jal	80200d6c <ulog_output>
802015f0:	854e                	mv	a0,s3
802015f2:	cddff0ef          	jal	802012ce <dump_regs>
802015f6:	929ff0ef          	jal	80200f1e <rt_hw_cpu_shutdown>
802015fa:	00141793          	slli	a5,s0,0x1
802015fe:	0017d593          	srli	a1,a5,0x1
80201602:	0a045563          	bgez	s0,802016ac <handle_trap+0x19c>
80201606:	47ad                	li	a5,11
80201608:	00006617          	auipc	a2,0x6
8020160c:	20060613          	addi	a2,a2,512 # 80207808 <rt_system_timer_thread_init+0x6b0>
80201610:	00b7ea63          	bltu	a5,a1,80201624 <handle_trap+0x114>
80201614:	0025971b          	slliw	a4,a1,0x2
80201618:	00007797          	auipc	a5,0x7
8020161c:	38878793          	addi	a5,a5,904 # 802089a0 <Interrupt_Name>
80201620:	9fb9                	addw	a5,a5,a4
80201622:	4390                	lw	a2,0(a5)
80201624:	00006517          	auipc	a0,0x6
80201628:	28c50513          	addi	a0,a0,652 # 802078b0 <rt_system_timer_thread_init+0x758>
8020162c:	788030ef          	jal	80204db4 <rt_kprintf>
80201630:	8652                	mv	a2,s4
80201632:	86ca                	mv	a3,s2
80201634:	85a2                	mv	a1,s0
80201636:	00006517          	auipc	a0,0x6
8020163a:	25250513          	addi	a0,a0,594 # 80207888 <rt_system_timer_thread_init+0x730>
8020163e:	776030ef          	jal	80204db4 <rt_kprintf>
80201642:	854e                	mv	a0,s3
80201644:	c8bff0ef          	jal	802012ce <dump_regs>
80201648:	00006517          	auipc	a0,0x6
8020164c:	2a850513          	addi	a0,a0,680 # 802078f0 <rt_system_timer_thread_init+0x798>
80201650:	764030ef          	jal	80204db4 <rt_kprintf>
80201654:	7e1040ef          	jal	80206634 <rt_thread_self>
80201658:	85aa                	mv	a1,a0
8020165a:	00006517          	auipc	a0,0x6
8020165e:	2c650513          	addi	a0,a0,710 # 80207920 <rt_system_timer_thread_init+0x7c8>
80201662:	752030ef          	jal	80204db4 <rt_kprintf>
80201666:	00006517          	auipc	a0,0x6
8020166a:	2d250513          	addi	a0,a0,722 # 80207938 <rt_system_timer_thread_init+0x7e0>
8020166e:	746030ef          	jal	80204db4 <rt_kprintf>
80201672:	0209a583          	lw	a1,32(s3)
80201676:	00006517          	auipc	a0,0x6
8020167a:	2ea50513          	addi	a0,a0,746 # 80207960 <rt_system_timer_thread_init+0x808>
8020167e:	c64a                	sw	s2,12(sp)
80201680:	c42e                	sw	a1,8(sp)
80201682:	732030ef          	jal	80204db4 <rt_kprintf>
80201686:	7af040ef          	jal	80206634 <rt_thread_self>
8020168a:	0081059b          	addiw	a1,sp,8
8020168e:	7ce030ef          	jal	80204e5c <rt_backtrace_frame>
80201692:	17300613          	li	a2,371
80201696:	00007597          	auipc	a1,0x7
8020169a:	2fa58593          	addi	a1,a1,762 # 80208990 <__FUNCTION__.0>
8020169e:	00007517          	auipc	a0,0x7
802016a2:	01a50513          	addi	a0,a0,26 # 802086b8 <rt_system_timer_thread_init+0x1560>
802016a6:	0c3030ef          	jal	80204f68 <rt_assert_handler>
802016aa:	bd69                	j	80201544 <handle_trap+0x34>
802016ac:	0005879b          	sext.w	a5,a1
802016b0:	473d                	li	a4,15
802016b2:	00006617          	auipc	a2,0x6
802016b6:	16e60613          	addi	a2,a2,366 # 80207820 <rt_system_timer_thread_init+0x6c8>
802016ba:	00f76a63          	bltu	a4,a5,802016ce <handle_trap+0x1be>
802016be:	0025971b          	slliw	a4,a1,0x2
802016c2:	00007797          	auipc	a5,0x7
802016c6:	30e78793          	addi	a5,a5,782 # 802089d0 <Exception_Name>
802016ca:	9fb9                	addw	a5,a5,a4
802016cc:	4390                	lw	a2,0(a5)
802016ce:	00006517          	auipc	a0,0x6
802016d2:	20250513          	addi	a0,a0,514 # 802078d0 <rt_system_timer_thread_init+0x778>
802016d6:	bf99                	j	8020162c <handle_trap+0x11c>

802016d8 <thread_user>:
802016d8:	3141                	addiw	sp,sp,-16
802016da:	e406                	sd	ra,8(sp)
802016dc:	4515                	li	a0,5
802016de:	356050ef          	jal	80206a34 <rt_thread_delay>
802016e2:	bfed                	j	802016dc <thread_user+0x4>

802016e4 <main>:
802016e4:	6685                	lui	a3,0x1
802016e6:	3141                	addiw	sp,sp,-16
802016e8:	47d1                	li	a5,20
802016ea:	472d                	li	a4,11
802016ec:	80068693          	addi	a3,a3,-2048 # 800 <__STACKSIZE__-0x3800>
802016f0:	4601                	li	a2,0
802016f2:	00000597          	auipc	a1,0x0
802016f6:	fe658593          	addi	a1,a1,-26 # 802016d8 <thread_user>
802016fa:	00006517          	auipc	a0,0x6
802016fe:	4d650513          	addi	a0,a0,1238 # 80207bd0 <rt_system_timer_thread_init+0xa78>
80201702:	e406                	sd	ra,8(sp)
80201704:	7e5040ef          	jal	802066e8 <rt_thread_create>
80201708:	0005079b          	sext.w	a5,a0
8020170c:	c399                	beqz	a5,80201712 <main+0x2e>
8020170e:	3b4050ef          	jal	80206ac2 <rt_thread_startup>
80201712:	4515                	li	a0,5
80201714:	320050ef          	jal	80206a34 <rt_thread_delay>
80201718:	bfed                	j	80201712 <main+0x2e>

8020171a <primary_cpu_entry>:
8020171a:	3141                	addiw	sp,sp,-16
8020171c:	e406                	sd	ra,8(sp)
8020171e:	cdbfe0ef          	jal	802003f8 <rt_hw_interrupt_disable>
80201722:	60a2                	ld	ra,8(sp)
80201724:	2141                	addiw	sp,sp,16
80201726:	71b0106f          	j	80203640 <entry>

8020172a <rt_hw_board_init>:
8020172a:	3141                	addiw	sp,sp,-16
8020172c:	04014597          	auipc	a1,0x4014
80201730:	7e458593          	addi	a1,a1,2020 # 84215f10 <__bss_end+0x4000000>
80201734:	00014517          	auipc	a0,0x14
80201738:	7dc50513          	addi	a0,a0,2012 # 80215f10 <__bss_end>
8020173c:	e406                	sd	ra,8(sp)
8020173e:	0e1030ef          	jal	8020501e <rt_system_heap_init>
80201742:	957ff0ef          	jal	80201098 <plic_init>
80201746:	85bff0ef          	jal	80200fa0 <rt_hw_interrupt_init>
8020174a:	108000ef          	jal	80201852 <rt_hw_uart_init>
8020174e:	00006517          	auipc	a0,0x6
80201752:	48a50513          	addi	a0,a0,1162 # 80207bd8 <rt_system_timer_thread_init+0xa80>
80201756:	5cc030ef          	jal	80204d22 <rt_console_set_device>
8020175a:	b2dff0ef          	jal	80201286 <rt_hw_tick_init>
8020175e:	585010ef          	jal	802034e2 <rt_components_board_init>
80201762:	60a2                	ld	ra,8(sp)
80201764:	04014617          	auipc	a2,0x4014
80201768:	7ac60613          	addi	a2,a2,1964 # 84215f10 <__bss_end+0x4000000>
8020176c:	00014597          	auipc	a1,0x14
80201770:	7a458593          	addi	a1,a1,1956 # 80215f10 <__bss_end>
80201774:	2601                	sext.w	a2,a2
80201776:	2581                	sext.w	a1,a1
80201778:	00006517          	auipc	a0,0x6
8020177c:	46850513          	addi	a0,a0,1128 # 80207be0 <rt_system_timer_thread_init+0xa88>
80201780:	2141                	addiw	sp,sp,16
80201782:	6320306f          	j	80204db4 <rt_kprintf>

80201786 <_uart_configure>:
80201786:	4501                	li	a0,0
80201788:	8082                	ret

8020178a <_uart_putc>:
8020178a:	00008797          	auipc	a5,0x8
8020178e:	d027a783          	lw	a5,-766(a5) # 8020948c <uart0_base>
80201792:	86be                	mv	a3,a5
80201794:	2795                	addiw	a5,a5,5
80201796:	00078703          	lb	a4,0(a5)
8020179a:	02077713          	andi	a4,a4,32
8020179e:	df65                	beqz	a4,80201796 <_uart_putc+0xc>
802017a0:	00b68023          	sb	a1,0(a3)
802017a4:	4505                	li	a0,1
802017a6:	8082                	ret

802017a8 <_uart_getc>:
802017a8:	00008717          	auipc	a4,0x8
802017ac:	ce472703          	lw	a4,-796(a4) # 8020948c <uart0_base>
802017b0:	3141                	addiw	sp,sp,-16
802017b2:	0057079b          	addiw	a5,a4,5
802017b6:	00078783          	lb	a5,0(a5)
802017ba:	0ff7f793          	zext.b	a5,a5
802017be:	c63e                	sw	a5,12(sp)
802017c0:	47b2                	lw	a5,12(sp)
802017c2:	557d                	li	a0,-1
802017c4:	8b85                	andi	a5,a5,1
802017c6:	c789                	beqz	a5,802017d0 <_uart_getc+0x28>
802017c8:	00070703          	lb	a4,0(a4)
802017cc:	0ff77513          	zext.b	a0,a4
802017d0:	2141                	addiw	sp,sp,16
802017d2:	8082                	ret

802017d4 <rt_hw_uart_isr>:
802017d4:	3101                	addiw	sp,sp,-32
802017d6:	ec06                	sd	ra,24(sp)
802017d8:	e822                	sd	s0,16(sp)
802017da:	e426                	sd	s1,8(sp)
802017dc:	84ae                	mv	s1,a1
802017de:	c1bfe0ef          	jal	802003f8 <rt_hw_interrupt_disable>
802017e2:	842a                	mv	s0,a0
802017e4:	4585                	li	a1,1
802017e6:	8526                	mv	a0,s1
802017e8:	15d010ef          	jal	80203144 <rt_hw_serial_isr>
802017ec:	8522                	mv	a0,s0
802017ee:	6442                	ld	s0,16(sp)
802017f0:	60e2                	ld	ra,24(sp)
802017f2:	64a2                	ld	s1,8(sp)
802017f4:	0201011b          	addiw	sp,sp,32
802017f8:	bfbfe06f          	j	802003f2 <rt_hw_interrupt_enable>

802017fc <_uart_control>:
802017fc:	4799                	li	a5,6
802017fe:	02f58763          	beq	a1,a5,8020182c <_uart_control+0x30>
80201802:	479d                	li	a5,7
80201804:	02f59263          	bne	a1,a5,80201828 <_uart_control+0x2c>
80201808:	2601                	sext.w	a2,a2
8020180a:	10000793          	li	a5,256
8020180e:	00f61d63          	bne	a2,a5,80201828 <_uart_control+0x2c>
80201812:	00008797          	auipc	a5,0x8
80201816:	c7a7a783          	lw	a5,-902(a5) # 8020948c <uart0_base>
8020181a:	2785                	addiw	a5,a5,1
8020181c:	00078703          	lb	a4,0(a5)
80201820:	0fe77713          	andi	a4,a4,254
80201824:	00e78023          	sb	a4,0(a5)
80201828:	4501                	li	a0,0
8020182a:	8082                	ret
8020182c:	2601                	sext.w	a2,a2
8020182e:	10000793          	li	a5,256
80201832:	fef61be3          	bne	a2,a5,80201828 <_uart_control+0x2c>
80201836:	00008717          	auipc	a4,0x8
8020183a:	c5672703          	lw	a4,-938(a4) # 8020948c <uart0_base>
8020183e:	2705                	addiw	a4,a4,1
80201840:	00070783          	lb	a5,0(a4)
80201844:	0ff7f793          	zext.b	a5,a5
80201848:	0017e793          	ori	a5,a5,1
8020184c:	00f70023          	sb	a5,0(a4)
80201850:	bfe1                	j	80201828 <_uart_control+0x2c>

80201852 <rt_hw_uart_init>:
80201852:	3101                	addiw	sp,sp,-32
80201854:	ec06                	sd	ra,24(sp)
80201856:	e822                	sd	s0,16(sp)
80201858:	e426                	sd	s1,8(sp)
8020185a:	00007797          	auipc	a5,0x7
8020185e:	1b678793          	addi	a5,a5,438 # 80208a10 <_uart_ops>
80201862:	00010497          	auipc	s1,0x10
80201866:	26e48493          	addi	s1,s1,622 # 80211ad0 <serial0>
8020186a:	c0fc                	sw	a5,68(s1)
8020186c:	00008797          	auipc	a5,0x8
80201870:	ae47b783          	ld	a5,-1308(a5) # 80209350 <__rt_init_end+0x30>
80201874:	00010417          	auipc	s0,0x10
80201878:	c9c40413          	addi	s0,s0,-868 # 80211510 <uart0>
8020187c:	e4bc                	sd	a5,72(s1)
8020187e:	00008797          	auipc	a5,0x8
80201882:	c0e7a783          	lw	a5,-1010(a5) # 8020948c <uart0_base>
80201886:	c01c                	sw	a5,0(s0)
80201888:	86a2                	mv	a3,s0
8020188a:	47a9                	li	a5,10
8020188c:	14300613          	li	a2,323
80201890:	00006597          	auipc	a1,0x6
80201894:	34858593          	addi	a1,a1,840 # 80207bd8 <rt_system_timer_thread_init+0xa80>
80201898:	8526                	mv	a0,s1
8020189a:	c05c                	sw	a5,4(s0)
8020189c:	037010ef          	jal	802030d2 <rt_hw_serial_register>
802018a0:	4048                	lw	a0,4(s0)
802018a2:	8626                	mv	a2,s1
802018a4:	00006697          	auipc	a3,0x6
802018a8:	33468693          	addi	a3,a3,820 # 80207bd8 <rt_system_timer_thread_init+0xa80>
802018ac:	00000597          	auipc	a1,0x0
802018b0:	f2858593          	addi	a1,a1,-216 # 802017d4 <rt_hw_uart_isr>
802018b4:	ec4ff0ef          	jal	80200f78 <rt_hw_interrupt_install>
802018b8:	4048                	lw	a0,4(s0)
802018ba:	ea6ff0ef          	jal	80200f60 <rt_hw_interrupt_umask>
802018be:	60e2                	ld	ra,24(sp)
802018c0:	6442                	ld	s0,16(sp)
802018c2:	64a2                	ld	s1,8(sp)
802018c4:	4501                	li	a0,0
802018c6:	0201011b          	addiw	sp,sp,32
802018ca:	8082                	ret

802018cc <rt_device_find>:
802018cc:	45a5                	li	a1,9
802018ce:	2b40406f          	j	80205b82 <rt_object_find>

802018d2 <rt_device_register>:
802018d2:	0005079b          	sext.w	a5,a0
802018d6:	ef89                	bnez	a5,802018f0 <rt_device_register+0x1e>
802018d8:	f0100513          	li	a0,-255
802018dc:	8082                	ret
802018de:	f0100513          	li	a0,-255
802018e2:	60e2                	ld	ra,24(sp)
802018e4:	6442                	ld	s0,16(sp)
802018e6:	64a2                	ld	s1,8(sp)
802018e8:	6902                	ld	s2,0(sp)
802018ea:	0201011b          	addiw	sp,sp,32
802018ee:	8082                	ret
802018f0:	3101                	addiw	sp,sp,-32
802018f2:	852e                	mv	a0,a1
802018f4:	e822                	sd	s0,16(sp)
802018f6:	e426                	sd	s1,8(sp)
802018f8:	e04a                	sd	s2,0(sp)
802018fa:	ec06                	sd	ra,24(sp)
802018fc:	843e                	mv	s0,a5
802018fe:	84ae                	mv	s1,a1
80201900:	8932                	mv	s2,a2
80201902:	fcbff0ef          	jal	802018cc <rt_device_find>
80201906:	2501                	sext.w	a0,a0
80201908:	f979                	bnez	a0,802018de <rt_device_register+0xc>
8020190a:	8522                	mv	a0,s0
8020190c:	8626                	mv	a2,s1
8020190e:	45a5                	li	a1,9
80201910:	63f030ef          	jal	8020574e <rt_object_init>
80201914:	4501                	li	a0,0
80201916:	03241423          	sh	s2,40(s0)
8020191a:	02040623          	sb	zero,44(s0)
8020191e:	02041523          	sh	zero,42(s0)
80201922:	b7c1                	j	802018e2 <rt_device_register+0x10>

80201924 <rt_device_open>:
80201924:	3101                	addiw	sp,sp,-32
80201926:	e822                	sd	s0,16(sp)
80201928:	e04a                	sd	s2,0(sp)
8020192a:	0005079b          	sext.w	a5,a0
8020192e:	ec06                	sd	ra,24(sp)
80201930:	e426                	sd	s1,8(sp)
80201932:	843e                	mv	s0,a5
80201934:	892e                	mv	s2,a1
80201936:	ef89                	bnez	a5,80201950 <rt_device_open+0x2c>
80201938:	0e100613          	li	a2,225
8020193c:	00007597          	auipc	a1,0x7
80201940:	10c58593          	addi	a1,a1,268 # 80208a48 <__FUNCTION__.6>
80201944:	00006517          	auipc	a0,0x6
80201948:	2bc50513          	addi	a0,a0,700 # 80207c00 <rt_system_timer_thread_init+0xaa8>
8020194c:	61c030ef          	jal	80204f68 <rt_assert_handler>
80201950:	8522                	mv	a0,s0
80201952:	140040ef          	jal	80205a92 <rt_object_get_type>
80201956:	47a5                	li	a5,9
80201958:	00f50e63          	beq	a0,a5,80201974 <rt_device_open+0x50>
8020195c:	0e200613          	li	a2,226
80201960:	00007597          	auipc	a1,0x7
80201964:	0e858593          	addi	a1,a1,232 # 80208a48 <__FUNCTION__.6>
80201968:	00006517          	auipc	a0,0x6
8020196c:	2a850513          	addi	a0,a0,680 # 80207c10 <rt_system_timer_thread_init+0xab8>
80201970:	5f8030ef          	jal	80204f68 <rt_assert_handler>
80201974:	02845783          	lhu	a5,40(s0)
80201978:	8bc1                	andi	a5,a5,16
8020197a:	e7a9                	bnez	a5,802019c4 <rt_device_open+0xa0>
8020197c:	5c1c                	lw	a5,56(s0)
8020197e:	cf8d                	beqz	a5,802019b8 <rt_device_open+0x94>
80201980:	439c                	lw	a5,0(a5)
80201982:	cb9d                	beqz	a5,802019b8 <rt_device_open+0x94>
80201984:	8522                	mv	a0,s0
80201986:	9782                	jalr	a5
80201988:	84aa                	mv	s1,a0
8020198a:	c51d                	beqz	a0,802019b8 <rt_device_open+0x94>
8020198c:	87aa                	mv	a5,a0
8020198e:	8722                	mv	a4,s0
80201990:	00006697          	auipc	a3,0x6
80201994:	2e868693          	addi	a3,a3,744 # 80207c78 <rt_system_timer_thread_init+0xb20>
80201998:	4605                	li	a2,1
8020199a:	00006597          	auipc	a1,0x6
8020199e:	31658593          	addi	a1,a1,790 # 80207cb0 <rt_system_timer_thread_init+0xb58>
802019a2:	450d                	li	a0,3
802019a4:	bc8ff0ef          	jal	80200d6c <ulog_output>
802019a8:	60e2                	ld	ra,24(sp)
802019aa:	6442                	ld	s0,16(sp)
802019ac:	6902                	ld	s2,0(sp)
802019ae:	8526                	mv	a0,s1
802019b0:	64a2                	ld	s1,8(sp)
802019b2:	0201011b          	addiw	sp,sp,32
802019b6:	8082                	ret
802019b8:	02845783          	lhu	a5,40(s0)
802019bc:	0107e793          	ori	a5,a5,16
802019c0:	02f41423          	sh	a5,40(s0)
802019c4:	02845703          	lhu	a4,40(s0)
802019c8:	02a45783          	lhu	a5,42(s0)
802019cc:	8b21                	andi	a4,a4,8
802019ce:	0087f693          	andi	a3,a5,8
802019d2:	c30d                	beqz	a4,802019f4 <rt_device_open+0xd0>
802019d4:	54c1                	li	s1,-16
802019d6:	fae9                	bnez	a3,802019a8 <rt_device_open+0x84>
802019d8:	5c1c                	lw	a5,56(s0)
802019da:	c3ad                	beqz	a5,80201a3c <rt_device_open+0x118>
802019dc:	43dc                	lw	a5,4(a5)
802019de:	cfb9                	beqz	a5,80201a3c <rt_device_open+0x118>
802019e0:	85ca                	mv	a1,s2
802019e2:	8522                	mv	a0,s0
802019e4:	9782                	jalr	a5
802019e6:	84aa                	mv	s1,a0
802019e8:	cd11                	beqz	a0,80201a04 <rt_device_open+0xe0>
802019ea:	fa800793          	li	a5,-88
802019ee:	faf51de3          	bne	a0,a5,802019a8 <rt_device_open+0x84>
802019f2:	a811                	j	80201a06 <rt_device_open+0xe2>
802019f4:	d2f5                	beqz	a3,802019d8 <rt_device_open+0xb4>
802019f6:	6705                	lui	a4,0x1
802019f8:	00f947b3          	xor	a5,s2,a5
802019fc:	f0f70713          	addi	a4,a4,-241 # f0f <__STACKSIZE__-0x30f1>
80201a00:	8ff9                	and	a5,a5,a4
80201a02:	fbf9                	bnez	a5,802019d8 <rt_device_open+0xb4>
80201a04:	4481                	li	s1,0
80201a06:	02a45783          	lhu	a5,42(s0)
80201a0a:	0087e793          	ori	a5,a5,8
80201a0e:	02f41523          	sh	a5,42(s0)
80201a12:	02c44783          	lbu	a5,44(s0)
80201a16:	2785                	addiw	a5,a5,1
80201a18:	0ff7f793          	zext.b	a5,a5
80201a1c:	02f40623          	sb	a5,44(s0)
80201a20:	f7c1                	bnez	a5,802019a8 <rt_device_open+0x84>
80201a22:	11400613          	li	a2,276
80201a26:	00007597          	auipc	a1,0x7
80201a2a:	02258593          	addi	a1,a1,34 # 80208a48 <__FUNCTION__.6>
80201a2e:	00006517          	auipc	a0,0x6
80201a32:	29250513          	addi	a0,a0,658 # 80207cc0 <rt_system_timer_thread_init+0xb68>
80201a36:	532030ef          	jal	80204f68 <rt_assert_handler>
80201a3a:	b7bd                	j	802019a8 <rt_device_open+0x84>
80201a3c:	6785                	lui	a5,0x1
80201a3e:	f0f78793          	addi	a5,a5,-241 # f0f <__STACKSIZE__-0x30f1>
80201a42:	00f97933          	and	s2,s2,a5
80201a46:	03241523          	sh	s2,42(s0)
80201a4a:	bf6d                	j	80201a04 <rt_device_open+0xe0>

80201a4c <rt_device_close>:
80201a4c:	3141                	addiw	sp,sp,-16
80201a4e:	e022                	sd	s0,0(sp)
80201a50:	0005079b          	sext.w	a5,a0
80201a54:	e406                	sd	ra,8(sp)
80201a56:	843e                	mv	s0,a5
80201a58:	ef89                	bnez	a5,80201a72 <rt_device_close+0x26>
80201a5a:	12700613          	li	a2,295
80201a5e:	00007597          	auipc	a1,0x7
80201a62:	fda58593          	addi	a1,a1,-38 # 80208a38 <__FUNCTION__.5>
80201a66:	00006517          	auipc	a0,0x6
80201a6a:	19a50513          	addi	a0,a0,410 # 80207c00 <rt_system_timer_thread_init+0xaa8>
80201a6e:	4fa030ef          	jal	80204f68 <rt_assert_handler>
80201a72:	8522                	mv	a0,s0
80201a74:	01e040ef          	jal	80205a92 <rt_object_get_type>
80201a78:	47a5                	li	a5,9
80201a7a:	00f50e63          	beq	a0,a5,80201a96 <rt_device_close+0x4a>
80201a7e:	12800613          	li	a2,296
80201a82:	00007597          	auipc	a1,0x7
80201a86:	fb658593          	addi	a1,a1,-74 # 80208a38 <__FUNCTION__.5>
80201a8a:	00006517          	auipc	a0,0x6
80201a8e:	18650513          	addi	a0,a0,390 # 80207c10 <rt_system_timer_thread_init+0xab8>
80201a92:	4d6030ef          	jal	80204f68 <rt_assert_handler>
80201a96:	02c44783          	lbu	a5,44(s0)
80201a9a:	f0100513          	li	a0,-255
80201a9e:	c79d                	beqz	a5,80201acc <rt_device_close+0x80>
80201aa0:	37fd                	addiw	a5,a5,-1
80201aa2:	0ff7f793          	zext.b	a5,a5
80201aa6:	02f40623          	sb	a5,44(s0)
80201aaa:	4501                	li	a0,0
80201aac:	e385                	bnez	a5,80201acc <rt_device_close+0x80>
80201aae:	5c1c                	lw	a5,56(s0)
80201ab0:	e789                	bnez	a5,80201aba <rt_device_close+0x6e>
80201ab2:	4501                	li	a0,0
80201ab4:	02041523          	sh	zero,42(s0)
80201ab8:	a811                	j	80201acc <rt_device_close+0x80>
80201aba:	479c                	lw	a5,8(a5)
80201abc:	dbfd                	beqz	a5,80201ab2 <rt_device_close+0x66>
80201abe:	8522                	mv	a0,s0
80201ac0:	9782                	jalr	a5
80201ac2:	d965                	beqz	a0,80201ab2 <rt_device_close+0x66>
80201ac4:	fa800793          	li	a5,-88
80201ac8:	fef506e3          	beq	a0,a5,80201ab4 <rt_device_close+0x68>
80201acc:	60a2                	ld	ra,8(sp)
80201ace:	6402                	ld	s0,0(sp)
80201ad0:	2141                	addiw	sp,sp,16
80201ad2:	8082                	ret

80201ad4 <rt_device_write>:
80201ad4:	fd01011b          	addiw	sp,sp,-48
80201ad8:	f022                	sd	s0,32(sp)
80201ada:	ec26                	sd	s1,24(sp)
80201adc:	e84a                	sd	s2,16(sp)
80201ade:	e44e                	sd	s3,8(sp)
80201ae0:	0005079b          	sext.w	a5,a0
80201ae4:	f406                	sd	ra,40(sp)
80201ae6:	843e                	mv	s0,a5
80201ae8:	84ae                	mv	s1,a1
80201aea:	8932                	mv	s2,a2
80201aec:	89b6                	mv	s3,a3
80201aee:	ef89                	bnez	a5,80201b08 <rt_device_write+0x34>
80201af0:	18000613          	li	a2,384
80201af4:	00007597          	auipc	a1,0x7
80201af8:	f3458593          	addi	a1,a1,-204 # 80208a28 <__FUNCTION__.3>
80201afc:	00006517          	auipc	a0,0x6
80201b00:	10450513          	addi	a0,a0,260 # 80207c00 <rt_system_timer_thread_init+0xaa8>
80201b04:	464030ef          	jal	80204f68 <rt_assert_handler>
80201b08:	8522                	mv	a0,s0
80201b0a:	789030ef          	jal	80205a92 <rt_object_get_type>
80201b0e:	47a5                	li	a5,9
80201b10:	00f50e63          	beq	a0,a5,80201b2c <rt_device_write+0x58>
80201b14:	18100613          	li	a2,385
80201b18:	00007597          	auipc	a1,0x7
80201b1c:	f1058593          	addi	a1,a1,-240 # 80208a28 <__FUNCTION__.3>
80201b20:	00006517          	auipc	a0,0x6
80201b24:	0f050513          	addi	a0,a0,240 # 80207c10 <rt_system_timer_thread_init+0xab8>
80201b28:	440030ef          	jal	80204f68 <rt_assert_handler>
80201b2c:	02c44783          	lbu	a5,44(s0)
80201b30:	f0100513          	li	a0,-255
80201b34:	c39d                	beqz	a5,80201b5a <rt_device_write+0x86>
80201b36:	5c1c                	lw	a5,56(s0)
80201b38:	cf99                	beqz	a5,80201b56 <rt_device_write+0x82>
80201b3a:	4b9c                	lw	a5,16(a5)
80201b3c:	cf89                	beqz	a5,80201b56 <rt_device_write+0x82>
80201b3e:	8522                	mv	a0,s0
80201b40:	7402                	ld	s0,32(sp)
80201b42:	70a2                	ld	ra,40(sp)
80201b44:	86ce                	mv	a3,s3
80201b46:	864a                	mv	a2,s2
80201b48:	69a2                	ld	s3,8(sp)
80201b4a:	6942                	ld	s2,16(sp)
80201b4c:	85a6                	mv	a1,s1
80201b4e:	64e2                	ld	s1,24(sp)
80201b50:	0301011b          	addiw	sp,sp,48
80201b54:	8782                	jr	a5
80201b56:	fa800513          	li	a0,-88
80201b5a:	7ad020ef          	jal	80204b06 <rt_set_errno>
80201b5e:	70a2                	ld	ra,40(sp)
80201b60:	7402                	ld	s0,32(sp)
80201b62:	64e2                	ld	s1,24(sp)
80201b64:	6942                	ld	s2,16(sp)
80201b66:	69a2                	ld	s3,8(sp)
80201b68:	4501                	li	a0,0
80201b6a:	0301011b          	addiw	sp,sp,48
80201b6e:	8082                	ret

80201b70 <clock_cpu_setops>:
80201b70:	00010797          	auipc	a5,0x10
80201b74:	9aa7a423          	sw	a0,-1624(a5) # 80211518 <_cputime_ops>
80201b78:	0005079b          	sext.w	a5,a0
80201b7c:	c7b1                	beqz	a5,80201bc8 <clock_cpu_setops+0x58>
80201b7e:	411c                	lw	a5,0(a0)
80201b80:	3141                	addiw	sp,sp,-16
80201b82:	e022                	sd	s0,0(sp)
80201b84:	e406                	sd	ra,8(sp)
80201b86:	842a                	mv	s0,a0
80201b88:	ef89                	bnez	a5,80201ba2 <clock_cpu_setops+0x32>
80201b8a:	06f00613          	li	a2,111
80201b8e:	00007597          	auipc	a1,0x7
80201b92:	eca58593          	addi	a1,a1,-310 # 80208a58 <__FUNCTION__.0>
80201b96:	00006517          	auipc	a0,0x6
80201b9a:	14250513          	addi	a0,a0,322 # 80207cd8 <rt_system_timer_thread_init+0xb80>
80201b9e:	3ca030ef          	jal	80204f68 <rt_assert_handler>
80201ba2:	405c                	lw	a5,4(s0)
80201ba4:	ef89                	bnez	a5,80201bbe <clock_cpu_setops+0x4e>
80201ba6:	07000613          	li	a2,112
80201baa:	00007597          	auipc	a1,0x7
80201bae:	eae58593          	addi	a1,a1,-338 # 80208a58 <__FUNCTION__.0>
80201bb2:	00006517          	auipc	a0,0x6
80201bb6:	14650513          	addi	a0,a0,326 # 80207cf8 <rt_system_timer_thread_init+0xba0>
80201bba:	3ae030ef          	jal	80204f68 <rt_assert_handler>
80201bbe:	60a2                	ld	ra,8(sp)
80201bc0:	6402                	ld	s0,0(sp)
80201bc2:	4501                	li	a0,0
80201bc4:	2141                	addiw	sp,sp,16
80201bc6:	8082                	ret
80201bc8:	4501                	li	a0,0
80201bca:	8082                	ret

80201bcc <riscv_cputime_getres>:
80201bcc:	05f5e537          	lui	a0,0x5f5e
80201bd0:	10050513          	addi	a0,a0,256 # 5f5e100 <__text_size+0x5f54da0>
80201bd4:	8082                	ret

80201bd6 <riscv_cputime_gettime>:
80201bd6:	c0102573          	rdtime	a0
80201bda:	8082                	ret

80201bdc <riscv_cputime_init>:
80201bdc:	3141                	addiw	sp,sp,-16
80201bde:	00007517          	auipc	a0,0x7
80201be2:	eaa50513          	addi	a0,a0,-342 # 80208a88 <_riscv_ops>
80201be6:	e406                	sd	ra,8(sp)
80201be8:	f89ff0ef          	jal	80201b70 <clock_cpu_setops>
80201bec:	60a2                	ld	ra,8(sp)
80201bee:	4501                	li	a0,0
80201bf0:	2141                	addiw	sp,sp,16
80201bf2:	8082                	ret

80201bf4 <rt_completion_done>:
80201bf4:	55fd                	li	a1,-1
80201bf6:	a4a1                	j	80201e3e <rt_completion_wakeup_by_errno>

80201bf8 <rt_completion_wait>:
80201bf8:	4609                	li	a2,2
80201bfa:	a815                	j	80201c2e <rt_completion_wait_flags>

80201bfc <rt_completion_init>:
80201bfc:	3141                	addiw	sp,sp,-16
80201bfe:	e022                	sd	s0,0(sp)
80201c00:	0005079b          	sext.w	a5,a0
80201c04:	e406                	sd	ra,8(sp)
80201c06:	843e                	mv	s0,a5
80201c08:	ef89                	bnez	a5,80201c22 <rt_completion_init+0x26>
80201c0a:	02a00613          	li	a2,42
80201c0e:	00007597          	auipc	a1,0x7
80201c12:	eca58593          	addi	a1,a1,-310 # 80208ad8 <__FUNCTION__.2>
80201c16:	00006517          	auipc	a0,0x6
80201c1a:	10250513          	addi	a0,a0,258 # 80207d18 <rt_system_timer_thread_init+0xbc0>
80201c1e:	34a030ef          	jal	80204f68 <rt_assert_handler>
80201c22:	60a2                	ld	ra,8(sp)
80201c24:	00042023          	sw	zero,0(s0)
80201c28:	6402                	ld	s0,0(sp)
80201c2a:	2141                	addiw	sp,sp,16
80201c2c:	8082                	ret

80201c2e <rt_completion_wait_flags>:
80201c2e:	f901011b          	addiw	sp,sp,-112
80201c32:	e8ca                	sd	s2,80(sp)
80201c34:	fc56                	sd	s5,56(sp)
80201c36:	0005079b          	sext.w	a5,a0
80201c3a:	f486                	sd	ra,104(sp)
80201c3c:	f0a2                	sd	s0,96(sp)
80201c3e:	eca6                	sd	s1,88(sp)
80201c40:	e4ce                	sd	s3,72(sp)
80201c42:	e0d2                	sd	s4,64(sp)
80201c44:	f85a                	sd	s6,48(sp)
80201c46:	f45e                	sd	s7,40(sp)
80201c48:	f062                	sd	s8,32(sp)
80201c4a:	ec66                	sd	s9,24(sp)
80201c4c:	e86a                	sd	s10,16(sp)
80201c4e:	c62e                	sw	a1,12(sp)
80201c50:	893e                	mv	s2,a5
80201c52:	8ab2                	mv	s5,a2
80201c54:	ef89                	bnez	a5,80201c6e <rt_completion_wait_flags+0x40>
80201c56:	04700613          	li	a2,71
80201c5a:	00007597          	auipc	a1,0x7
80201c5e:	e5e58593          	addi	a1,a1,-418 # 80208ab8 <__FUNCTION__.1>
80201c62:	00006517          	auipc	a0,0x6
80201c66:	0b650513          	addi	a0,a0,182 # 80207d18 <rt_system_timer_thread_init+0xbc0>
80201c6a:	2fe030ef          	jal	80204f68 <rt_assert_handler>
80201c6e:	47b2                	lw	a5,12(sp)
80201c70:	cfc9                	beqz	a5,80201d0a <rt_completion_wait_flags+0xdc>
80201c72:	5d6040ef          	jal	80206248 <rt_critical_level>
80201c76:	c51d                	beqz	a0,80201ca4 <rt_completion_wait_flags+0x76>
80201c78:	00007597          	auipc	a1,0x7
80201c7c:	e4058593          	addi	a1,a1,-448 # 80208ab8 <__FUNCTION__.1>
80201c80:	00006517          	auipc	a0,0x6
80201c84:	0b050513          	addi	a0,a0,176 # 80207d30 <rt_system_timer_thread_init+0xbd8>
80201c88:	12c030ef          	jal	80204db4 <rt_kprintf>
80201c8c:	04a00613          	li	a2,74
80201c90:	00007597          	auipc	a1,0x7
80201c94:	e2858593          	addi	a1,a1,-472 # 80208ab8 <__FUNCTION__.1>
80201c98:	00007517          	auipc	a0,0x7
80201c9c:	a2050513          	addi	a0,a0,-1504 # 802086b8 <rt_system_timer_thread_init+0x1560>
80201ca0:	2c8030ef          	jal	80204f68 <rt_assert_handler>
80201ca4:	191040ef          	jal	80206634 <rt_thread_self>
80201ca8:	2501                	sext.w	a0,a0
80201caa:	e51d                	bnez	a0,80201cd8 <rt_completion_wait_flags+0xaa>
80201cac:	00007597          	auipc	a1,0x7
80201cb0:	e0c58593          	addi	a1,a1,-500 # 80208ab8 <__FUNCTION__.1>
80201cb4:	00006517          	auipc	a0,0x6
80201cb8:	0ac50513          	addi	a0,a0,172 # 80207d60 <rt_system_timer_thread_init+0xc08>
80201cbc:	0f8030ef          	jal	80204db4 <rt_kprintf>
80201cc0:	04a00613          	li	a2,74
80201cc4:	00007597          	auipc	a1,0x7
80201cc8:	df458593          	addi	a1,a1,-524 # 80208ab8 <__FUNCTION__.1>
80201ccc:	00007517          	auipc	a0,0x7
80201cd0:	9ec50513          	addi	a0,a0,-1556 # 802086b8 <rt_system_timer_thread_init+0x1560>
80201cd4:	294030ef          	jal	80204f68 <rt_assert_handler>
80201cd8:	6be020ef          	jal	80204396 <rt_interrupt_get_nest>
80201cdc:	c51d                	beqz	a0,80201d0a <rt_completion_wait_flags+0xdc>
80201cde:	00007597          	auipc	a1,0x7
80201ce2:	dda58593          	addi	a1,a1,-550 # 80208ab8 <__FUNCTION__.1>
80201ce6:	00006517          	auipc	a0,0x6
80201cea:	0b250513          	addi	a0,a0,178 # 80207d98 <rt_system_timer_thread_init+0xc40>
80201cee:	0c6030ef          	jal	80204db4 <rt_kprintf>
80201cf2:	04a00613          	li	a2,74
80201cf6:	00007597          	auipc	a1,0x7
80201cfa:	dc258593          	addi	a1,a1,-574 # 80208ab8 <__FUNCTION__.1>
80201cfe:	00007517          	auipc	a0,0x7
80201d02:	9ba50513          	addi	a0,a0,-1606 # 802086b8 <rt_system_timer_thread_init+0x1560>
80201d06:	262030ef          	jal	80204f68 <rt_assert_handler>
80201d0a:	12b040ef          	jal	80206634 <rt_thread_self>
80201d0e:	89aa                	mv	s3,a0
80201d10:	00010517          	auipc	a0,0x10
80201d14:	81050513          	addi	a0,a0,-2032 # 80211520 <_completion_lock>
80201d18:	145010ef          	jal	8020365c <rt_spin_lock_irqsave>
80201d1c:	ffe9fa13          	andi	s4,s3,-2
80201d20:	84aa                	mv	s1,a0
80201d22:	4c05                	li	s8,1
80201d24:	00007b17          	auipc	s6,0x7
80201d28:	d94b0b13          	addi	s6,s6,-620 # 80208ab8 <__FUNCTION__.1>
80201d2c:	00006c97          	auipc	s9,0x6
80201d30:	094c8c93          	addi	s9,s9,148 # 80207dc0 <rt_system_timer_thread_init+0xc68>
80201d34:	2a01                	sext.w	s4,s4
80201d36:	00006d17          	auipc	s10,0x6
80201d3a:	062d0d13          	addi	s10,s10,98 # 80207d98 <rt_system_timer_thread_init+0xc40>
80201d3e:	05898b9b          	addiw	s7,s3,88
80201d42:	00092783          	lw	a5,0(s2)
80201d46:	0017f713          	andi	a4,a5,1
80201d4a:	0e071563          	bnez	a4,80201e34 <rt_completion_wait_flags+0x206>
80201d4e:	00fc7863          	bgeu	s8,a5,80201d5e <rt_completion_wait_flags+0x130>
80201d52:	05500613          	li	a2,85
80201d56:	85da                	mv	a1,s6
80201d58:	8566                	mv	a0,s9
80201d5a:	20e030ef          	jal	80204f68 <rt_assert_handler>
80201d5e:	47b2                	lw	a5,12(sp)
80201d60:	0c078c63          	beqz	a5,80201e38 <rt_completion_wait_flags+0x20a>
80201d64:	0209ac23          	sw	zero,56(s3)
80201d68:	85d6                	mv	a1,s5
80201d6a:	854e                	mv	a0,s3
80201d6c:	367040ef          	jal	802068d2 <rt_thread_suspend_with_flag>
80201d70:	842a                	mv	s0,a0
80201d72:	e941                	bnez	a0,80201e02 <rt_completion_wait_flags+0x1d4>
80201d74:	01492023          	sw	s4,0(s2)
80201d78:	61e020ef          	jal	80204396 <rt_interrupt_get_nest>
80201d7c:	cd11                	beqz	a0,80201d98 <rt_completion_wait_flags+0x16a>
80201d7e:	85da                	mv	a1,s6
80201d80:	856a                	mv	a0,s10
80201d82:	032030ef          	jal	80204db4 <rt_kprintf>
80201d86:	06a00613          	li	a2,106
80201d8a:	85da                	mv	a1,s6
80201d8c:	00007517          	auipc	a0,0x7
80201d90:	92c50513          	addi	a0,a0,-1748 # 802086b8 <rt_system_timer_thread_init+0x1560>
80201d94:	1d4030ef          	jal	80204f68 <rt_assert_handler>
80201d98:	47b2                	lw	a5,12(sp)
80201d9a:	00f05b63          	blez	a5,80201db0 <rt_completion_wait_flags+0x182>
80201d9e:	00c1061b          	addiw	a2,sp,12
80201da2:	4581                	li	a1,0
80201da4:	855e                	mv	a0,s7
80201da6:	11c050ef          	jal	80206ec2 <rt_timer_control>
80201daa:	855e                	mv	a0,s7
80201dac:	79d040ef          	jal	80206d48 <rt_timer_start>
80201db0:	85a6                	mv	a1,s1
80201db2:	0000f517          	auipc	a0,0xf
80201db6:	76e50513          	addi	a0,a0,1902 # 80211520 <_completion_lock>
80201dba:	0bd010ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80201dbe:	26a040ef          	jal	80206028 <rt_schedule>
80201dc2:	0000f517          	auipc	a0,0xf
80201dc6:	75e50513          	addi	a0,a0,1886 # 80211520 <_completion_lock>
80201dca:	093010ef          	jal	8020365c <rt_spin_lock_irqsave>
80201dce:	00092783          	lw	a5,0(s2)
80201dd2:	84aa                	mv	s1,a0
80201dd4:	01478463          	beq	a5,s4,80201ddc <rt_completion_wait_flags+0x1ae>
80201dd8:	c602                	sw	zero,12(sp)
80201dda:	b7a5                	j	80201d42 <rt_completion_wait_flags+0x114>
80201ddc:	0389a783          	lw	a5,56(s3)
80201de0:	41f7d41b          	sraiw	s0,a5,0x1f
80201de4:	8fa1                	xor	a5,a5,s0
80201de6:	9c1d                	subw	s0,s0,a5
80201de8:	ec09                	bnez	s0,80201e02 <rt_completion_wait_flags+0x1d4>
80201dea:	08800613          	li	a2,136
80201dee:	00007597          	auipc	a1,0x7
80201df2:	cca58593          	addi	a1,a1,-822 # 80208ab8 <__FUNCTION__.1>
80201df6:	00006517          	auipc	a0,0x6
80201dfa:	ffa50513          	addi	a0,a0,-6 # 80207df0 <rt_system_timer_thread_init+0xc98>
80201dfe:	16a030ef          	jal	80204f68 <rt_assert_handler>
80201e02:	00092023          	sw	zero,0(s2)
80201e06:	85a6                	mv	a1,s1
80201e08:	0000f517          	auipc	a0,0xf
80201e0c:	71850513          	addi	a0,a0,1816 # 80211520 <_completion_lock>
80201e10:	067010ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80201e14:	70a6                	ld	ra,104(sp)
80201e16:	8522                	mv	a0,s0
80201e18:	7406                	ld	s0,96(sp)
80201e1a:	64e6                	ld	s1,88(sp)
80201e1c:	6946                	ld	s2,80(sp)
80201e1e:	69a6                	ld	s3,72(sp)
80201e20:	6a06                	ld	s4,64(sp)
80201e22:	7ae2                	ld	s5,56(sp)
80201e24:	7b42                	ld	s6,48(sp)
80201e26:	7ba2                	ld	s7,40(sp)
80201e28:	7c02                	ld	s8,32(sp)
80201e2a:	6ce2                	ld	s9,24(sp)
80201e2c:	6d42                	ld	s10,16(sp)
80201e2e:	0701011b          	addiw	sp,sp,112
80201e32:	8082                	ret
80201e34:	4401                	li	s0,0
80201e36:	b7f1                	j	80201e02 <rt_completion_wait_flags+0x1d4>
80201e38:	f8c00413          	li	s0,-116
80201e3c:	b7e9                	j	80201e06 <rt_completion_wait_flags+0x1d8>

80201e3e <rt_completion_wakeup_by_errno>:
80201e3e:	fd01011b          	addiw	sp,sp,-48
80201e42:	f022                	sd	s0,32(sp)
80201e44:	ec26                	sd	s1,24(sp)
80201e46:	0005079b          	sext.w	a5,a0
80201e4a:	f406                	sd	ra,40(sp)
80201e4c:	84be                	mv	s1,a5
80201e4e:	842e                	mv	s0,a1
80201e50:	ef89                	bnez	a5,80201e6a <rt_completion_wakeup_by_errno+0x2c>
80201e52:	0a800613          	li	a2,168
80201e56:	00007597          	auipc	a1,0x7
80201e5a:	c4258593          	addi	a1,a1,-958 # 80208a98 <__FUNCTION__.0>
80201e5e:	00006517          	auipc	a0,0x6
80201e62:	eba50513          	addi	a0,a0,-326 # 80207d18 <rt_system_timer_thread_init+0xbc0>
80201e66:	102030ef          	jal	80204f68 <rt_assert_handler>
80201e6a:	0000f517          	auipc	a0,0xf
80201e6e:	6b650513          	addi	a0,a0,1718 # 80211520 <_completion_lock>
80201e72:	7ea010ef          	jal	8020365c <rt_spin_lock_irqsave>
80201e76:	409c                	lw	a5,0(s1)
80201e78:	85aa                	mv	a1,a0
80201e7a:	0017f713          	andi	a4,a5,1
80201e7e:	cf19                	beqz	a4,80201e9c <rt_completion_wakeup_by_errno+0x5e>
80201e80:	0000f517          	auipc	a0,0xf
80201e84:	6a050513          	addi	a0,a0,1696 # 80211520 <_completion_lock>
80201e88:	7ee010ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80201e8c:	5441                	li	s0,-16
80201e8e:	70a2                	ld	ra,40(sp)
80201e90:	8522                	mv	a0,s0
80201e92:	7402                	ld	s0,32(sp)
80201e94:	64e2                	ld	s1,24(sp)
80201e96:	0301011b          	addiw	sp,sp,48
80201e9a:	8082                	ret
80201e9c:	4705                	li	a4,1
80201e9e:	00f77d63          	bgeu	a4,a5,80201eb8 <rt_completion_wakeup_by_errno+0x7a>
80201ea2:	ffe7f513          	andi	a0,a5,-2
80201ea6:	00044363          	bltz	s0,80201eac <rt_completion_wakeup_by_errno+0x6e>
80201eaa:	dd00                	sw	s0,56(a0)
80201eac:	e42e                	sd	a1,8(sp)
80201eae:	38b040ef          	jal	80206a38 <rt_thread_resume>
80201eb2:	65a2                	ld	a1,8(sp)
80201eb4:	842a                	mv	s0,a0
80201eb6:	c119                	beqz	a0,80201ebc <rt_completion_wakeup_by_errno+0x7e>
80201eb8:	fc300413          	li	s0,-61
80201ebc:	4785                	li	a5,1
80201ebe:	c09c                	sw	a5,0(s1)
80201ec0:	0000f517          	auipc	a0,0xf
80201ec4:	66050513          	addi	a0,a0,1632 # 80211520 <_completion_lock>
80201ec8:	7ae010ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80201ecc:	b7c9                	j	80201e8e <rt_completion_wakeup_by_errno+0x50>

80201ece <rt_data_queue_init>:
80201ece:	fd01011b          	addiw	sp,sp,-48
80201ed2:	f022                	sd	s0,32(sp)
80201ed4:	ec26                	sd	s1,24(sp)
80201ed6:	e84a                	sd	s2,16(sp)
80201ed8:	e44e                	sd	s3,8(sp)
80201eda:	0005079b          	sext.w	a5,a0
80201ede:	f406                	sd	ra,40(sp)
80201ee0:	843e                	mv	s0,a5
80201ee2:	84ae                	mv	s1,a1
80201ee4:	8932                	mv	s2,a2
80201ee6:	89b6                	mv	s3,a3
80201ee8:	ef89                	bnez	a5,80201f02 <rt_data_queue_init+0x34>
80201eea:	03000613          	li	a2,48
80201eee:	00007597          	auipc	a1,0x7
80201ef2:	c9258593          	addi	a1,a1,-878 # 80208b80 <__FUNCTION__.6>
80201ef6:	00006517          	auipc	a0,0x6
80201efa:	f1250513          	addi	a0,a0,-238 # 80207e08 <rt_system_timer_thread_init+0xcb0>
80201efe:	06a030ef          	jal	80204f68 <rt_assert_handler>
80201f02:	ec89                	bnez	s1,80201f1c <rt_data_queue_init+0x4e>
80201f04:	03100613          	li	a2,49
80201f08:	00007597          	auipc	a1,0x7
80201f0c:	c7858593          	addi	a1,a1,-904 # 80208b80 <__FUNCTION__.6>
80201f10:	00006517          	auipc	a0,0x6
80201f14:	f1050513          	addi	a0,a0,-240 # 80207e20 <rt_system_timer_thread_init+0xcc8>
80201f18:	050030ef          	jal	80204f68 <rt_assert_handler>
80201f1c:	bead17b7          	lui	a5,0xbead1
80201f20:	e0e78793          	addi	a5,a5,-498 # bead0e0e <__bss_end+0x3e8baefe>
80201f24:	c01c                	sw	a5,0(s0)
80201f26:	67a1                	lui	a5,0x8
80201f28:	c41c                	sw	a5,8(s0)
80201f2a:	0104051b          	addiw	a0,s0,16
80201f2e:	03342423          	sw	s3,40(s0)
80201f32:	00941223          	sh	s1,4(s0)
80201f36:	01241323          	sh	s2,6(s0)
80201f3a:	716010ef          	jal	80203650 <rt_spin_lock_init>
80201f3e:	0184079b          	addiw	a5,s0,24
80201f42:	cc5c                	sw	a5,28(s0)
80201f44:	cc1c                	sw	a5,24(s0)
80201f46:	0204079b          	addiw	a5,s0,32
80201f4a:	d05c                	sw	a5,36(s0)
80201f4c:	d01c                	sw	a5,32(s0)
80201f4e:	00349513          	slli	a0,s1,0x3
80201f52:	10c030ef          	jal	8020505e <rt_malloc>
80201f56:	c448                	sw	a0,12(s0)
80201f58:	0005079b          	sext.w	a5,a0
80201f5c:	5551                	li	a0,-12
80201f5e:	c391                	beqz	a5,80201f62 <rt_data_queue_init+0x94>
80201f60:	4501                	li	a0,0
80201f62:	70a2                	ld	ra,40(sp)
80201f64:	7402                	ld	s0,32(sp)
80201f66:	64e2                	ld	s1,24(sp)
80201f68:	6942                	ld	s2,16(sp)
80201f6a:	69a2                	ld	s3,8(sp)
80201f6c:	0301011b          	addiw	sp,sp,48
80201f70:	8082                	ret

80201f72 <rt_data_queue_push>:
80201f72:	fa01011b          	addiw	sp,sp,-96
80201f76:	e8a2                	sd	s0,80(sp)
80201f78:	f852                	sd	s4,48(sp)
80201f7a:	f456                	sd	s5,40(sp)
80201f7c:	0005079b          	sext.w	a5,a0
80201f80:	ec86                	sd	ra,88(sp)
80201f82:	e4a6                	sd	s1,72(sp)
80201f84:	e0ca                	sd	s2,64(sp)
80201f86:	fc4e                	sd	s3,56(sp)
80201f88:	f05a                	sd	s6,32(sp)
80201f8a:	ec5e                	sd	s7,24(sp)
80201f8c:	e862                	sd	s8,16(sp)
80201f8e:	c636                	sw	a3,12(sp)
80201f90:	843e                	mv	s0,a5
80201f92:	8aae                	mv	s5,a1
80201f94:	8a32                	mv	s4,a2
80201f96:	ef89                	bnez	a5,80201fb0 <rt_data_queue_push+0x3e>
80201f98:	06500613          	li	a2,101
80201f9c:	00007597          	auipc	a1,0x7
80201fa0:	bcc58593          	addi	a1,a1,-1076 # 80208b68 <__FUNCTION__.5>
80201fa4:	00006517          	auipc	a0,0x6
80201fa8:	e6450513          	addi	a0,a0,-412 # 80207e08 <rt_system_timer_thread_init+0xcb0>
80201fac:	7bd020ef          	jal	80204f68 <rt_assert_handler>
80201fb0:	4018                	lw	a4,0(s0)
80201fb2:	bead17b7          	lui	a5,0xbead1
80201fb6:	e0e78793          	addi	a5,a5,-498 # bead0e0e <__bss_end+0x3e8baefe>
80201fba:	00f70e63          	beq	a4,a5,80201fd6 <rt_data_queue_push+0x64>
80201fbe:	06600613          	li	a2,102
80201fc2:	00007597          	auipc	a1,0x7
80201fc6:	ba658593          	addi	a1,a1,-1114 # 80208b68 <__FUNCTION__.5>
80201fca:	00006517          	auipc	a0,0x6
80201fce:	e6650513          	addi	a0,a0,-410 # 80207e30 <rt_system_timer_thread_init+0xcd8>
80201fd2:	797020ef          	jal	80204f68 <rt_assert_handler>
80201fd6:	47b2                	lw	a5,12(sp)
80201fd8:	cfc9                	beqz	a5,80202072 <rt_data_queue_push+0x100>
80201fda:	26e040ef          	jal	80206248 <rt_critical_level>
80201fde:	c51d                	beqz	a0,8020200c <rt_data_queue_push+0x9a>
80201fe0:	00007597          	auipc	a1,0x7
80201fe4:	b8858593          	addi	a1,a1,-1144 # 80208b68 <__FUNCTION__.5>
80201fe8:	00006517          	auipc	a0,0x6
80201fec:	d4850513          	addi	a0,a0,-696 # 80207d30 <rt_system_timer_thread_init+0xbd8>
80201ff0:	5c5020ef          	jal	80204db4 <rt_kprintf>
80201ff4:	06900613          	li	a2,105
80201ff8:	00007597          	auipc	a1,0x7
80201ffc:	b7058593          	addi	a1,a1,-1168 # 80208b68 <__FUNCTION__.5>
80202000:	00006517          	auipc	a0,0x6
80202004:	6b850513          	addi	a0,a0,1720 # 802086b8 <rt_system_timer_thread_init+0x1560>
80202008:	761020ef          	jal	80204f68 <rt_assert_handler>
8020200c:	628040ef          	jal	80206634 <rt_thread_self>
80202010:	2501                	sext.w	a0,a0
80202012:	e51d                	bnez	a0,80202040 <rt_data_queue_push+0xce>
80202014:	00007597          	auipc	a1,0x7
80202018:	b5458593          	addi	a1,a1,-1196 # 80208b68 <__FUNCTION__.5>
8020201c:	00006517          	auipc	a0,0x6
80202020:	d4450513          	addi	a0,a0,-700 # 80207d60 <rt_system_timer_thread_init+0xc08>
80202024:	591020ef          	jal	80204db4 <rt_kprintf>
80202028:	06900613          	li	a2,105
8020202c:	00007597          	auipc	a1,0x7
80202030:	b3c58593          	addi	a1,a1,-1220 # 80208b68 <__FUNCTION__.5>
80202034:	00006517          	auipc	a0,0x6
80202038:	68450513          	addi	a0,a0,1668 # 802086b8 <rt_system_timer_thread_init+0x1560>
8020203c:	72d020ef          	jal	80204f68 <rt_assert_handler>
80202040:	356020ef          	jal	80204396 <rt_interrupt_get_nest>
80202044:	c51d                	beqz	a0,80202072 <rt_data_queue_push+0x100>
80202046:	00007597          	auipc	a1,0x7
8020204a:	b2258593          	addi	a1,a1,-1246 # 80208b68 <__FUNCTION__.5>
8020204e:	00006517          	auipc	a0,0x6
80202052:	d4a50513          	addi	a0,a0,-694 # 80207d98 <rt_system_timer_thread_init+0xc40>
80202056:	55f020ef          	jal	80204db4 <rt_kprintf>
8020205a:	06900613          	li	a2,105
8020205e:	00007597          	auipc	a1,0x7
80202062:	b0a58593          	addi	a1,a1,-1270 # 80208b68 <__FUNCTION__.5>
80202066:	00006517          	auipc	a0,0x6
8020206a:	65250513          	addi	a0,a0,1618 # 802086b8 <rt_system_timer_thread_init+0x1560>
8020206e:	6fb020ef          	jal	80204f68 <rt_assert_handler>
80202072:	5c2040ef          	jal	80206634 <rt_thread_self>
80202076:	0104091b          	addiw	s2,s0,16
8020207a:	8b2a                	mv	s6,a0
8020207c:	854a                	mv	a0,s2
8020207e:	5de010ef          	jal	8020365c <rt_spin_lock_irqsave>
80202082:	84aa                	mv	s1,a0
80202084:	01840c1b          	addiw	s8,s0,24
80202088:	058b0b9b          	addiw	s7,s6,88
8020208c:	441c                	lw	a5,8(s0)
8020208e:	0a07c163          	bltz	a5,80202130 <rt_data_queue_push+0x1be>
80202092:	66a1                	lui	a3,0x8
80202094:	16fd                	addi	a3,a3,-1 # 7fff <__STACKSIZE__+0x3fff>
80202096:	0107d79b          	srliw	a5,a5,0x10
8020209a:	8ff5                	and	a5,a5,a3
8020209c:	4450                	lw	a2,12(s0)
8020209e:	17c2                	slli	a5,a5,0x30
802020a0:	93c1                	srli	a5,a5,0x30
802020a2:	0037971b          	slliw	a4,a5,0x3
802020a6:	9f31                	addw	a4,a4,a2
802020a8:	2785                	addiw	a5,a5,1
802020aa:	01572023          	sw	s5,0(a4)
802020ae:	01472223          	sw	s4,4(a4)
802020b2:	8ff5                	and	a5,a5,a3
802020b4:	00445703          	lhu	a4,4(s0)
802020b8:	17c2                	slli	a5,a5,0x30
802020ba:	93c1                	srli	a5,a5,0x30
802020bc:	00f71363          	bne	a4,a5,802020c2 <rt_data_queue_push+0x150>
802020c0:	4781                	li	a5,0
802020c2:	4418                	lw	a4,8(s0)
802020c4:	800105b7          	lui	a1,0x80010
802020c8:	00d7f633          	and	a2,a5,a3
802020cc:	15fd                	addi	a1,a1,-1 # 8000ffff <__bss_end+0xffdfa0ef>
802020ce:	0106161b          	slliw	a2,a2,0x10
802020d2:	8f6d                	and	a4,a4,a1
802020d4:	8f51                	or	a4,a4,a2
802020d6:	7661                	lui	a2,0xffff8
802020d8:	2701                	sext.w	a4,a4
802020da:	167d                	addi	a2,a2,-1 # ffff7fff <__bss_end+0x7fde20ef>
802020dc:	8f71                	and	a4,a4,a2
802020de:	8ef9                	and	a3,a3,a4
802020e0:	0106969b          	slliw	a3,a3,0x10
802020e4:	c418                	sw	a4,8(s0)
802020e6:	0106d69b          	srliw	a3,a3,0x10
802020ea:	00d79663          	bne	a5,a3,802020f6 <rt_data_queue_push+0x184>
802020ee:	800007b7          	lui	a5,0x80000
802020f2:	8f5d                	or	a4,a4,a5
802020f4:	c418                	sw	a4,8(s0)
802020f6:	55fd                	li	a1,-1
802020f8:	0204051b          	addiw	a0,s0,32
802020fc:	15b010ef          	jal	80203a56 <rt_susp_list_dequeue>
80202100:	2501                	sext.w	a0,a0
80202102:	4981                	li	s3,0
80202104:	cd25                	beqz	a0,8020217c <rt_data_queue_push+0x20a>
80202106:	85a6                	mv	a1,s1
80202108:	854a                	mv	a0,s2
8020210a:	56c010ef          	jal	80203676 <rt_spin_unlock_irqrestore>
8020210e:	71b030ef          	jal	80206028 <rt_schedule>
80202112:	4981                	li	s3,0
80202114:	60e6                	ld	ra,88(sp)
80202116:	6446                	ld	s0,80(sp)
80202118:	64a6                	ld	s1,72(sp)
8020211a:	6906                	ld	s2,64(sp)
8020211c:	7a42                	ld	s4,48(sp)
8020211e:	7aa2                	ld	s5,40(sp)
80202120:	7b02                	ld	s6,32(sp)
80202122:	6be2                	ld	s7,24(sp)
80202124:	6c42                	ld	s8,16(sp)
80202126:	854e                	mv	a0,s3
80202128:	79e2                	ld	s3,56(sp)
8020212a:	0601011b          	addiw	sp,sp,96
8020212e:	8082                	ret
80202130:	47b2                	lw	a5,12(sp)
80202132:	c3ad                	beqz	a5,80202194 <rt_data_queue_push+0x222>
80202134:	020b2c23          	sw	zero,56(s6)
80202138:	4689                	li	a3,2
8020213a:	4601                	li	a2,0
8020213c:	85e2                	mv	a1,s8
8020213e:	855a                	mv	a0,s6
80202140:	62e040ef          	jal	8020676e <rt_thread_suspend_to_list>
80202144:	89aa                	mv	s3,a0
80202146:	e91d                	bnez	a0,8020217c <rt_data_queue_push+0x20a>
80202148:	47b2                	lw	a5,12(sp)
8020214a:	00f05b63          	blez	a5,80202160 <rt_data_queue_push+0x1ee>
8020214e:	00c1061b          	addiw	a2,sp,12
80202152:	4581                	li	a1,0
80202154:	855e                	mv	a0,s7
80202156:	56d040ef          	jal	80206ec2 <rt_timer_control>
8020215a:	855e                	mv	a0,s7
8020215c:	3ed040ef          	jal	80206d48 <rt_timer_start>
80202160:	85a6                	mv	a1,s1
80202162:	854a                	mv	a0,s2
80202164:	512010ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80202168:	6c1030ef          	jal	80206028 <rt_schedule>
8020216c:	854a                	mv	a0,s2
8020216e:	4ee010ef          	jal	8020365c <rt_spin_lock_irqsave>
80202172:	038b2983          	lw	s3,56(s6)
80202176:	84aa                	mv	s1,a0
80202178:	f0098ae3          	beqz	s3,8020208c <rt_data_queue_push+0x11a>
8020217c:	85a6                	mv	a1,s1
8020217e:	854a                	mv	a0,s2
80202180:	4f6010ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80202184:	f80998e3          	bnez	s3,80202114 <rt_data_queue_push+0x1a2>
80202188:	541c                	lw	a5,40(s0)
8020218a:	d7c1                	beqz	a5,80202112 <rt_data_queue_push+0x1a0>
8020218c:	4589                	li	a1,2
8020218e:	8522                	mv	a0,s0
80202190:	9782                	jalr	a5
80202192:	b741                	j	80202112 <rt_data_queue_push+0x1a0>
80202194:	f8c00993          	li	s3,-116
80202198:	b7d5                	j	8020217c <rt_data_queue_push+0x20a>

8020219a <rt_data_queue_peek>:
8020219a:	fd01011b          	addiw	sp,sp,-48
8020219e:	f022                	sd	s0,32(sp)
802021a0:	ec26                	sd	s1,24(sp)
802021a2:	e44e                	sd	s3,8(sp)
802021a4:	0005079b          	sext.w	a5,a0
802021a8:	f406                	sd	ra,40(sp)
802021aa:	e84a                	sd	s2,16(sp)
802021ac:	843e                	mv	s0,a5
802021ae:	89ae                	mv	s3,a1
802021b0:	84b2                	mv	s1,a2
802021b2:	ef89                	bnez	a5,802021cc <rt_data_queue_peek+0x32>
802021b4:	15000613          	li	a2,336
802021b8:	00007597          	auipc	a1,0x7
802021bc:	98058593          	addi	a1,a1,-1664 # 80208b38 <__FUNCTION__.3>
802021c0:	00006517          	auipc	a0,0x6
802021c4:	c4850513          	addi	a0,a0,-952 # 80207e08 <rt_system_timer_thread_init+0xcb0>
802021c8:	5a1020ef          	jal	80204f68 <rt_assert_handler>
802021cc:	4018                	lw	a4,0(s0)
802021ce:	bead17b7          	lui	a5,0xbead1
802021d2:	e0e78793          	addi	a5,a5,-498 # bead0e0e <__bss_end+0x3e8baefe>
802021d6:	00f70e63          	beq	a4,a5,802021f2 <rt_data_queue_peek+0x58>
802021da:	15100613          	li	a2,337
802021de:	00007597          	auipc	a1,0x7
802021e2:	95a58593          	addi	a1,a1,-1702 # 80208b38 <__FUNCTION__.3>
802021e6:	00006517          	auipc	a0,0x6
802021ea:	c4a50513          	addi	a0,a0,-950 # 80207e30 <rt_system_timer_thread_init+0xcd8>
802021ee:	57b020ef          	jal	80204f68 <rt_assert_handler>
802021f2:	441c                	lw	a5,8(s0)
802021f4:	fc300513          	li	a0,-61
802021f8:	03079713          	slli	a4,a5,0x30
802021fc:	04074763          	bltz	a4,8020224a <rt_data_queue_peek+0xb0>
80202200:	0104091b          	addiw	s2,s0,16
80202204:	854a                	mv	a0,s2
80202206:	456010ef          	jal	8020365c <rt_spin_lock_irqsave>
8020220a:	441c                	lw	a5,8(s0)
8020220c:	6721                	lui	a4,0x8
8020220e:	177d                	addi	a4,a4,-1 # 7fff <__STACKSIZE__+0x3fff>
80202210:	8ff9                	and	a5,a5,a4
80202212:	4454                	lw	a3,12(s0)
80202214:	0107979b          	slliw	a5,a5,0x10
80202218:	0107d79b          	srliw	a5,a5,0x10
8020221c:	0037979b          	slliw	a5,a5,0x3
80202220:	9fb5                	addw	a5,a5,a3
80202222:	439c                	lw	a5,0(a5)
80202224:	85aa                	mv	a1,a0
80202226:	854a                	mv	a0,s2
80202228:	00f9a023          	sw	a5,0(s3)
8020222c:	441c                	lw	a5,8(s0)
8020222e:	8ff9                	and	a5,a5,a4
80202230:	0107979b          	slliw	a5,a5,0x10
80202234:	4458                	lw	a4,12(s0)
80202236:	0107d79b          	srliw	a5,a5,0x10
8020223a:	0037979b          	slliw	a5,a5,0x3
8020223e:	9fb9                	addw	a5,a5,a4
80202240:	43dc                	lw	a5,4(a5)
80202242:	c09c                	sw	a5,0(s1)
80202244:	432010ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80202248:	4501                	li	a0,0
8020224a:	70a2                	ld	ra,40(sp)
8020224c:	7402                	ld	s0,32(sp)
8020224e:	64e2                	ld	s1,24(sp)
80202250:	6942                	ld	s2,16(sp)
80202252:	69a2                	ld	s3,8(sp)
80202254:	0301011b          	addiw	sp,sp,48
80202258:	8082                	ret

8020225a <rt_data_queue_reset>:
8020225a:	3101                	addiw	sp,sp,-32
8020225c:	e822                	sd	s0,16(sp)
8020225e:	0005079b          	sext.w	a5,a0
80202262:	ec06                	sd	ra,24(sp)
80202264:	e426                	sd	s1,8(sp)
80202266:	843e                	mv	s0,a5
80202268:	ef89                	bnez	a5,80202282 <rt_data_queue_reset+0x28>
8020226a:	16f00613          	li	a2,367
8020226e:	00007597          	auipc	a1,0x7
80202272:	8b258593          	addi	a1,a1,-1870 # 80208b20 <__FUNCTION__.2>
80202276:	00006517          	auipc	a0,0x6
8020227a:	b9250513          	addi	a0,a0,-1134 # 80207e08 <rt_system_timer_thread_init+0xcb0>
8020227e:	4eb020ef          	jal	80204f68 <rt_assert_handler>
80202282:	4018                	lw	a4,0(s0)
80202284:	bead17b7          	lui	a5,0xbead1
80202288:	e0e78793          	addi	a5,a5,-498 # bead0e0e <__bss_end+0x3e8baefe>
8020228c:	00f70e63          	beq	a4,a5,802022a8 <rt_data_queue_reset+0x4e>
80202290:	17000613          	li	a2,368
80202294:	00007597          	auipc	a1,0x7
80202298:	88c58593          	addi	a1,a1,-1908 # 80208b20 <__FUNCTION__.2>
8020229c:	00006517          	auipc	a0,0x6
802022a0:	b9450513          	addi	a0,a0,-1132 # 80207e30 <rt_system_timer_thread_init+0xcd8>
802022a4:	4c5020ef          	jal	80204f68 <rt_assert_handler>
802022a8:	0104049b          	addiw	s1,s0,16
802022ac:	8526                	mv	a0,s1
802022ae:	3ae010ef          	jal	8020365c <rt_spin_lock_irqsave>
802022b2:	67a1                	lui	a5,0x8
802022b4:	c41c                	sw	a5,8(s0)
802022b6:	85aa                	mv	a1,a0
802022b8:	8526                	mv	a0,s1
802022ba:	3bc010ef          	jal	80203676 <rt_spin_unlock_irqrestore>
802022be:	705030ef          	jal	802061c2 <rt_enter_critical>
802022c2:	8626                	mv	a2,s1
802022c4:	0ff00593          	li	a1,255
802022c8:	0204051b          	addiw	a0,s0,32
802022cc:	7fc010ef          	jal	80203ac8 <rt_susp_list_resume_all_irq>
802022d0:	8626                	mv	a2,s1
802022d2:	0ff00593          	li	a1,255
802022d6:	0184051b          	addiw	a0,s0,24
802022da:	7ee010ef          	jal	80203ac8 <rt_susp_list_resume_all_irq>
802022de:	717030ef          	jal	802061f4 <rt_exit_critical>
802022e2:	6442                	ld	s0,16(sp)
802022e4:	60e2                	ld	ra,24(sp)
802022e6:	64a2                	ld	s1,8(sp)
802022e8:	0201011b          	addiw	sp,sp,32
802022ec:	53d0306f          	j	80206028 <rt_schedule>

802022f0 <rt_data_queue_deinit>:
802022f0:	3101                	addiw	sp,sp,-32
802022f2:	e822                	sd	s0,16(sp)
802022f4:	0005079b          	sext.w	a5,a0
802022f8:	ec06                	sd	ra,24(sp)
802022fa:	e426                	sd	s1,8(sp)
802022fc:	843e                	mv	s0,a5
802022fe:	ef89                	bnez	a5,80202318 <rt_data_queue_deinit+0x28>
80202300:	19700613          	li	a2,407
80202304:	00007597          	auipc	a1,0x7
80202308:	80458593          	addi	a1,a1,-2044 # 80208b08 <__FUNCTION__.1>
8020230c:	00006517          	auipc	a0,0x6
80202310:	afc50513          	addi	a0,a0,-1284 # 80207e08 <rt_system_timer_thread_init+0xcb0>
80202314:	455020ef          	jal	80204f68 <rt_assert_handler>
80202318:	4018                	lw	a4,0(s0)
8020231a:	bead17b7          	lui	a5,0xbead1
8020231e:	e0e78793          	addi	a5,a5,-498 # bead0e0e <__bss_end+0x3e8baefe>
80202322:	00f70e63          	beq	a4,a5,8020233e <rt_data_queue_deinit+0x4e>
80202326:	19800613          	li	a2,408
8020232a:	00006597          	auipc	a1,0x6
8020232e:	7de58593          	addi	a1,a1,2014 # 80208b08 <__FUNCTION__.1>
80202332:	00006517          	auipc	a0,0x6
80202336:	afe50513          	addi	a0,a0,-1282 # 80207e30 <rt_system_timer_thread_init+0xcd8>
8020233a:	42f020ef          	jal	80204f68 <rt_assert_handler>
8020233e:	8522                	mv	a0,s0
80202340:	f1bff0ef          	jal	8020225a <rt_data_queue_reset>
80202344:	0104049b          	addiw	s1,s0,16
80202348:	8526                	mv	a0,s1
8020234a:	312010ef          	jal	8020365c <rt_spin_lock_irqsave>
8020234e:	85aa                	mv	a1,a0
80202350:	00042023          	sw	zero,0(s0)
80202354:	8526                	mv	a0,s1
80202356:	320010ef          	jal	80203676 <rt_spin_unlock_irqrestore>
8020235a:	4448                	lw	a0,12(s0)
8020235c:	54b020ef          	jal	802050a6 <rt_free>
80202360:	60e2                	ld	ra,24(sp)
80202362:	6442                	ld	s0,16(sp)
80202364:	64a2                	ld	s1,8(sp)
80202366:	4501                	li	a0,0
80202368:	0201011b          	addiw	sp,sp,32
8020236c:	8082                	ret

8020236e <rt_data_queue_len>:
8020236e:	3101                	addiw	sp,sp,-32
80202370:	e822                	sd	s0,16(sp)
80202372:	0005079b          	sext.w	a5,a0
80202376:	ec06                	sd	ra,24(sp)
80202378:	e426                	sd	s1,8(sp)
8020237a:	843e                	mv	s0,a5
8020237c:	ef89                	bnez	a5,80202396 <rt_data_queue_len+0x28>
8020237e:	1b300613          	li	a2,435
80202382:	00006597          	auipc	a1,0x6
80202386:	76e58593          	addi	a1,a1,1902 # 80208af0 <__FUNCTION__.0>
8020238a:	00006517          	auipc	a0,0x6
8020238e:	a7e50513          	addi	a0,a0,-1410 # 80207e08 <rt_system_timer_thread_init+0xcb0>
80202392:	3d7020ef          	jal	80204f68 <rt_assert_handler>
80202396:	4018                	lw	a4,0(s0)
80202398:	bead17b7          	lui	a5,0xbead1
8020239c:	e0e78793          	addi	a5,a5,-498 # bead0e0e <__bss_end+0x3e8baefe>
802023a0:	00f70e63          	beq	a4,a5,802023bc <rt_data_queue_len+0x4e>
802023a4:	1b400613          	li	a2,436
802023a8:	00006597          	auipc	a1,0x6
802023ac:	74858593          	addi	a1,a1,1864 # 80208af0 <__FUNCTION__.0>
802023b0:	00006517          	auipc	a0,0x6
802023b4:	a8050513          	addi	a0,a0,-1408 # 80207e30 <rt_system_timer_thread_init+0xcd8>
802023b8:	3b1020ef          	jal	80204f68 <rt_assert_handler>
802023bc:	441c                	lw	a5,8(s0)
802023be:	4501                	li	a0,0
802023c0:	03079713          	slli	a4,a5,0x30
802023c4:	04074063          	bltz	a4,80202404 <rt_data_queue_len+0x96>
802023c8:	0104049b          	addiw	s1,s0,16
802023cc:	8526                	mv	a0,s1
802023ce:	28e010ef          	jal	8020365c <rt_spin_lock_irqsave>
802023d2:	4418                	lw	a4,8(s0)
802023d4:	66a1                	lui	a3,0x8
802023d6:	16fd                	addi	a3,a3,-1 # 7fff <__STACKSIZE__+0x3fff>
802023d8:	0107579b          	srliw	a5,a4,0x10
802023dc:	8ff5                	and	a5,a5,a3
802023de:	8f75                	and	a4,a4,a3
802023e0:	17c2                	slli	a5,a5,0x30
802023e2:	1742                	slli	a4,a4,0x30
802023e4:	93c1                	srli	a5,a5,0x30
802023e6:	9341                	srli	a4,a4,0x30
802023e8:	85aa                	mv	a1,a0
802023ea:	02f77363          	bgeu	a4,a5,80202410 <rt_data_queue_len+0xa2>
802023ee:	9f99                	subw	a5,a5,a4
802023f0:	0107941b          	slliw	s0,a5,0x10
802023f4:	8526                	mv	a0,s1
802023f6:	4104541b          	sraiw	s0,s0,0x10
802023fa:	27c010ef          	jal	80203676 <rt_spin_unlock_irqrestore>
802023fe:	03041513          	slli	a0,s0,0x30
80202402:	9141                	srli	a0,a0,0x30
80202404:	60e2                	ld	ra,24(sp)
80202406:	6442                	ld	s0,16(sp)
80202408:	64a2                	ld	s1,8(sp)
8020240a:	0201011b          	addiw	sp,sp,32
8020240e:	8082                	ret
80202410:	00445403          	lhu	s0,4(s0)
80202414:	9c3d                	addw	s0,s0,a5
80202416:	9c19                	subw	s0,s0,a4
80202418:	0104141b          	slliw	s0,s0,0x10
8020241c:	bfe1                	j	802023f4 <rt_data_queue_len+0x86>

8020241e <rt_data_queue_pop>:
8020241e:	fa01011b          	addiw	sp,sp,-96
80202422:	e8a2                	sd	s0,80(sp)
80202424:	f852                	sd	s4,48(sp)
80202426:	f456                	sd	s5,40(sp)
80202428:	0005079b          	sext.w	a5,a0
8020242c:	ec86                	sd	ra,88(sp)
8020242e:	e4a6                	sd	s1,72(sp)
80202430:	e0ca                	sd	s2,64(sp)
80202432:	fc4e                	sd	s3,56(sp)
80202434:	f05a                	sd	s6,32(sp)
80202436:	ec5e                	sd	s7,24(sp)
80202438:	e862                	sd	s8,16(sp)
8020243a:	c636                	sw	a3,12(sp)
8020243c:	843e                	mv	s0,a5
8020243e:	8aae                	mv	s5,a1
80202440:	8a32                	mv	s4,a2
80202442:	ef89                	bnez	a5,8020245c <rt_data_queue_pop+0x3e>
80202444:	0da00613          	li	a2,218
80202448:	00006597          	auipc	a1,0x6
8020244c:	70858593          	addi	a1,a1,1800 # 80208b50 <__FUNCTION__.4>
80202450:	00006517          	auipc	a0,0x6
80202454:	9b850513          	addi	a0,a0,-1608 # 80207e08 <rt_system_timer_thread_init+0xcb0>
80202458:	311020ef          	jal	80204f68 <rt_assert_handler>
8020245c:	4018                	lw	a4,0(s0)
8020245e:	bead17b7          	lui	a5,0xbead1
80202462:	e0e78793          	addi	a5,a5,-498 # bead0e0e <__bss_end+0x3e8baefe>
80202466:	00f70e63          	beq	a4,a5,80202482 <rt_data_queue_pop+0x64>
8020246a:	0db00613          	li	a2,219
8020246e:	00006597          	auipc	a1,0x6
80202472:	6e258593          	addi	a1,a1,1762 # 80208b50 <__FUNCTION__.4>
80202476:	00006517          	auipc	a0,0x6
8020247a:	9ba50513          	addi	a0,a0,-1606 # 80207e30 <rt_system_timer_thread_init+0xcd8>
8020247e:	2eb020ef          	jal	80204f68 <rt_assert_handler>
80202482:	000a879b          	sext.w	a5,s5
80202486:	ef89                	bnez	a5,802024a0 <rt_data_queue_pop+0x82>
80202488:	0dc00613          	li	a2,220
8020248c:	00006597          	auipc	a1,0x6
80202490:	6c458593          	addi	a1,a1,1732 # 80208b50 <__FUNCTION__.4>
80202494:	00006517          	auipc	a0,0x6
80202498:	9bc50513          	addi	a0,a0,-1604 # 80207e50 <rt_system_timer_thread_init+0xcf8>
8020249c:	2cd020ef          	jal	80204f68 <rt_assert_handler>
802024a0:	000a079b          	sext.w	a5,s4
802024a4:	ef89                	bnez	a5,802024be <rt_data_queue_pop+0xa0>
802024a6:	0dd00613          	li	a2,221
802024aa:	00006597          	auipc	a1,0x6
802024ae:	6a658593          	addi	a1,a1,1702 # 80208b50 <__FUNCTION__.4>
802024b2:	00006517          	auipc	a0,0x6
802024b6:	9b650513          	addi	a0,a0,-1610 # 80207e68 <rt_system_timer_thread_init+0xd10>
802024ba:	2af020ef          	jal	80204f68 <rt_assert_handler>
802024be:	47b2                	lw	a5,12(sp)
802024c0:	cfc9                	beqz	a5,8020255a <rt_data_queue_pop+0x13c>
802024c2:	587030ef          	jal	80206248 <rt_critical_level>
802024c6:	c51d                	beqz	a0,802024f4 <rt_data_queue_pop+0xd6>
802024c8:	00006597          	auipc	a1,0x6
802024cc:	68858593          	addi	a1,a1,1672 # 80208b50 <__FUNCTION__.4>
802024d0:	00006517          	auipc	a0,0x6
802024d4:	86050513          	addi	a0,a0,-1952 # 80207d30 <rt_system_timer_thread_init+0xbd8>
802024d8:	0dd020ef          	jal	80204db4 <rt_kprintf>
802024dc:	0e000613          	li	a2,224
802024e0:	00006597          	auipc	a1,0x6
802024e4:	67058593          	addi	a1,a1,1648 # 80208b50 <__FUNCTION__.4>
802024e8:	00006517          	auipc	a0,0x6
802024ec:	1d050513          	addi	a0,a0,464 # 802086b8 <rt_system_timer_thread_init+0x1560>
802024f0:	279020ef          	jal	80204f68 <rt_assert_handler>
802024f4:	140040ef          	jal	80206634 <rt_thread_self>
802024f8:	2501                	sext.w	a0,a0
802024fa:	e51d                	bnez	a0,80202528 <rt_data_queue_pop+0x10a>
802024fc:	00006597          	auipc	a1,0x6
80202500:	65458593          	addi	a1,a1,1620 # 80208b50 <__FUNCTION__.4>
80202504:	00006517          	auipc	a0,0x6
80202508:	85c50513          	addi	a0,a0,-1956 # 80207d60 <rt_system_timer_thread_init+0xc08>
8020250c:	0a9020ef          	jal	80204db4 <rt_kprintf>
80202510:	0e000613          	li	a2,224
80202514:	00006597          	auipc	a1,0x6
80202518:	63c58593          	addi	a1,a1,1596 # 80208b50 <__FUNCTION__.4>
8020251c:	00006517          	auipc	a0,0x6
80202520:	19c50513          	addi	a0,a0,412 # 802086b8 <rt_system_timer_thread_init+0x1560>
80202524:	245020ef          	jal	80204f68 <rt_assert_handler>
80202528:	66f010ef          	jal	80204396 <rt_interrupt_get_nest>
8020252c:	c51d                	beqz	a0,8020255a <rt_data_queue_pop+0x13c>
8020252e:	00006597          	auipc	a1,0x6
80202532:	62258593          	addi	a1,a1,1570 # 80208b50 <__FUNCTION__.4>
80202536:	00006517          	auipc	a0,0x6
8020253a:	86250513          	addi	a0,a0,-1950 # 80207d98 <rt_system_timer_thread_init+0xc40>
8020253e:	077020ef          	jal	80204db4 <rt_kprintf>
80202542:	0e000613          	li	a2,224
80202546:	00006597          	auipc	a1,0x6
8020254a:	60a58593          	addi	a1,a1,1546 # 80208b50 <__FUNCTION__.4>
8020254e:	00006517          	auipc	a0,0x6
80202552:	16a50513          	addi	a0,a0,362 # 802086b8 <rt_system_timer_thread_init+0x1560>
80202556:	213020ef          	jal	80204f68 <rt_assert_handler>
8020255a:	0da040ef          	jal	80206634 <rt_thread_self>
8020255e:	0104099b          	addiw	s3,s0,16
80202562:	8b2a                	mv	s6,a0
80202564:	854e                	mv	a0,s3
80202566:	0f6010ef          	jal	8020365c <rt_spin_lock_irqsave>
8020256a:	892a                	mv	s2,a0
8020256c:	6ba1                	lui	s7,0x8
8020256e:	02040c1b          	addiw	s8,s0,32
80202572:	4481                	li	s1,0
80202574:	441c                	lw	a5,8(s0)
80202576:	0177f733          	and	a4,a5,s7
8020257a:	03071693          	slli	a3,a4,0x30
8020257e:	0c06c063          	bltz	a3,8020263e <rt_data_queue_pop+0x220>
80202582:	66a1                	lui	a3,0x8
80202584:	16fd                	addi	a3,a3,-1 # 7fff <__STACKSIZE__+0x3fff>
80202586:	8ff5                	and	a5,a5,a3
80202588:	4458                	lw	a4,12(s0)
8020258a:	0107979b          	slliw	a5,a5,0x10
8020258e:	0107d79b          	srliw	a5,a5,0x10
80202592:	0037979b          	slliw	a5,a5,0x3
80202596:	9fb9                	addw	a5,a5,a4
80202598:	439c                	lw	a5,0(a5)
8020259a:	00faa023          	sw	a5,0(s5)
8020259e:	441c                	lw	a5,8(s0)
802025a0:	4458                	lw	a4,12(s0)
802025a2:	8ff5                	and	a5,a5,a3
802025a4:	0107979b          	slliw	a5,a5,0x10
802025a8:	0107d79b          	srliw	a5,a5,0x10
802025ac:	0037979b          	slliw	a5,a5,0x3
802025b0:	9fb9                	addw	a5,a5,a4
802025b2:	43dc                	lw	a5,4(a5)
802025b4:	00fa2023          	sw	a5,0(s4)
802025b8:	4418                	lw	a4,8(s0)
802025ba:	00445783          	lhu	a5,4(s0)
802025be:	8f75                	and	a4,a4,a3
802025c0:	2705                	addiw	a4,a4,1
802025c2:	8f75                	and	a4,a4,a3
802025c4:	1742                	slli	a4,a4,0x30
802025c6:	9341                	srli	a4,a4,0x30
802025c8:	00e79363          	bne	a5,a4,802025ce <rt_data_queue_pop+0x1b0>
802025cc:	4701                	li	a4,0
802025ce:	441c                	lw	a5,8(s0)
802025d0:	75e1                	lui	a1,0xffff8
802025d2:	00d77633          	and	a2,a4,a3
802025d6:	8fed                	and	a5,a5,a1
802025d8:	8fd1                	or	a5,a5,a2
802025da:	1786                	slli	a5,a5,0x21
802025dc:	9385                	srli	a5,a5,0x21
802025de:	0107d613          	srli	a2,a5,0x10
802025e2:	c41c                	sw	a5,8(s0)
802025e4:	8ef1                	and	a3,a3,a2
802025e6:	00e69563          	bne	a3,a4,802025f0 <rt_data_queue_pop+0x1d2>
802025ea:	6721                	lui	a4,0x8
802025ec:	8fd9                	or	a5,a5,a4
802025ee:	c41c                	sw	a5,8(s0)
802025f0:	8522                	mv	a0,s0
802025f2:	d7dff0ef          	jal	8020236e <rt_data_queue_len>
802025f6:	00645783          	lhu	a5,6(s0)
802025fa:	2501                	sext.w	a0,a0
802025fc:	08a7e963          	bltu	a5,a0,8020268e <rt_data_queue_pop+0x270>
80202600:	55fd                	li	a1,-1
80202602:	0184051b          	addiw	a0,s0,24
80202606:	450010ef          	jal	80203a56 <rt_susp_list_dequeue>
8020260a:	2501                	sext.w	a0,a0
8020260c:	85ca                	mv	a1,s2
8020260e:	cd41                	beqz	a0,802026a6 <rt_data_queue_pop+0x288>
80202610:	854e                	mv	a0,s3
80202612:	064010ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80202616:	213030ef          	jal	80206028 <rt_schedule>
8020261a:	541c                	lw	a5,40(s0)
8020261c:	458d                	li	a1,3
8020261e:	873e                	mv	a4,a5
80202620:	e3c1                	bnez	a5,802026a0 <rt_data_queue_pop+0x282>
80202622:	60e6                	ld	ra,88(sp)
80202624:	6446                	ld	s0,80(sp)
80202626:	6906                	ld	s2,64(sp)
80202628:	79e2                	ld	s3,56(sp)
8020262a:	7a42                	ld	s4,48(sp)
8020262c:	7aa2                	ld	s5,40(sp)
8020262e:	7b02                	ld	s6,32(sp)
80202630:	6be2                	ld	s7,24(sp)
80202632:	6c42                	ld	s8,16(sp)
80202634:	8526                	mv	a0,s1
80202636:	64a6                	ld	s1,72(sp)
80202638:	0601011b          	addiw	sp,sp,96
8020263c:	8082                	ret
8020263e:	47b2                	lw	a5,12(sp)
80202640:	c7bd                	beqz	a5,802026ae <rt_data_queue_pop+0x290>
80202642:	020b2c23          	sw	zero,56(s6)
80202646:	4689                	li	a3,2
80202648:	4601                	li	a2,0
8020264a:	85e2                	mv	a1,s8
8020264c:	855a                	mv	a0,s6
8020264e:	120040ef          	jal	8020676e <rt_thread_suspend_to_list>
80202652:	84aa                	mv	s1,a0
80202654:	f105                	bnez	a0,80202574 <rt_data_queue_pop+0x156>
80202656:	47b2                	lw	a5,12(sp)
80202658:	00f05d63          	blez	a5,80202672 <rt_data_queue_pop+0x254>
8020265c:	058b049b          	addiw	s1,s6,88
80202660:	00c1061b          	addiw	a2,sp,12
80202664:	4581                	li	a1,0
80202666:	8526                	mv	a0,s1
80202668:	05b040ef          	jal	80206ec2 <rt_timer_control>
8020266c:	8526                	mv	a0,s1
8020266e:	6da040ef          	jal	80206d48 <rt_timer_start>
80202672:	85ca                	mv	a1,s2
80202674:	854e                	mv	a0,s3
80202676:	000010ef          	jal	80203676 <rt_spin_unlock_irqrestore>
8020267a:	1af030ef          	jal	80206028 <rt_schedule>
8020267e:	854e                	mv	a0,s3
80202680:	7dd000ef          	jal	8020365c <rt_spin_lock_irqsave>
80202684:	038b2483          	lw	s1,56(s6)
80202688:	892a                	mv	s2,a0
8020268a:	ee0484e3          	beqz	s1,80202572 <rt_data_queue_pop+0x154>
8020268e:	85ca                	mv	a1,s2
80202690:	854e                	mv	a0,s3
80202692:	7e5000ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80202696:	f4d1                	bnez	s1,80202622 <rt_data_queue_pop+0x204>
80202698:	541c                	lw	a5,40(s0)
8020269a:	873e                	mv	a4,a5
8020269c:	d3d9                	beqz	a5,80202622 <rt_data_queue_pop+0x204>
8020269e:	4585                	li	a1,1
802026a0:	8522                	mv	a0,s0
802026a2:	9702                	jalr	a4
802026a4:	bfbd                	j	80202622 <rt_data_queue_pop+0x204>
802026a6:	854e                	mv	a0,s3
802026a8:	7cf000ef          	jal	80203676 <rt_spin_unlock_irqrestore>
802026ac:	b7bd                	j	8020261a <rt_data_queue_pop+0x1fc>
802026ae:	f8c00493          	li	s1,-116
802026b2:	bff1                	j	8020268e <rt_data_queue_pop+0x270>

802026b4 <_serial_fifo_calc_recved_len>:
802026b4:	493c                	lw	a5,80(a0)
802026b6:	3101                	addiw	sp,sp,-32
802026b8:	e822                	sd	s0,16(sp)
802026ba:	e426                	sd	s1,8(sp)
802026bc:	ec06                	sd	ra,24(sp)
802026be:	842a                	mv	s0,a0
802026c0:	84be                	mv	s1,a5
802026c2:	ef89                	bnez	a5,802026dc <_serial_fifo_calc_recved_len+0x28>
802026c4:	18d00613          	li	a2,397
802026c8:	00006597          	auipc	a1,0x6
802026cc:	57858593          	addi	a1,a1,1400 # 80208c40 <__FUNCTION__.8>
802026d0:	00005517          	auipc	a0,0x5
802026d4:	7a850513          	addi	a0,a0,1960 # 80207e78 <rt_system_timer_thread_init+0xd20>
802026d8:	091020ef          	jal	80204f68 <rt_assert_handler>
802026dc:	0044d703          	lhu	a4,4(s1)
802026e0:	0064d783          	lhu	a5,6(s1)
802026e4:	00f71f63          	bne	a4,a5,80202702 <_serial_fifo_calc_recved_len+0x4e>
802026e8:	4488                	lw	a0,8(s1)
802026ea:	c511                	beqz	a0,802026f6 <_serial_fifo_calc_recved_len+0x42>
802026ec:	4468                	lw	a0,76(s0)
802026ee:	00a5551b          	srliw	a0,a0,0xa
802026f2:	1542                	slli	a0,a0,0x30
802026f4:	9141                	srli	a0,a0,0x30
802026f6:	60e2                	ld	ra,24(sp)
802026f8:	6442                	ld	s0,16(sp)
802026fa:	64a2                	ld	s1,8(sp)
802026fc:	0201011b          	addiw	sp,sp,32
80202700:	8082                	ret
80202702:	00e7f563          	bgeu	a5,a4,8020270c <_serial_fifo_calc_recved_len+0x58>
80202706:	40f7053b          	subw	a0,a4,a5
8020270a:	b7f5                	j	802026f6 <_serial_fifo_calc_recved_len+0x42>
8020270c:	4468                	lw	a0,76(s0)
8020270e:	9f99                	subw	a5,a5,a4
80202710:	00a5551b          	srliw	a0,a0,0xa
80202714:	0105151b          	slliw	a0,a0,0x10
80202718:	0105551b          	srliw	a0,a0,0x10
8020271c:	9d1d                	subw	a0,a0,a5
8020271e:	bfe1                	j	802026f6 <_serial_fifo_calc_recved_len+0x42>

80202720 <rt_serial_control>:
80202720:	3101                	addiw	sp,sp,-32
80202722:	e822                	sd	s0,16(sp)
80202724:	e426                	sd	s1,8(sp)
80202726:	e04a                	sd	s2,0(sp)
80202728:	0005079b          	sext.w	a5,a0
8020272c:	ec06                	sd	ra,24(sp)
8020272e:	843e                	mv	s0,a5
80202730:	892e                	mv	s2,a1
80202732:	84b2                	mv	s1,a2
80202734:	ef89                	bnez	a5,8020274e <rt_serial_control+0x2e>
80202736:	41e00613          	li	a2,1054
8020273a:	00006597          	auipc	a1,0x6
8020273e:	57658593          	addi	a1,a1,1398 # 80208cb0 <__FUNCTION__.15>
80202742:	00005517          	auipc	a0,0x5
80202746:	4be50513          	addi	a0,a0,1214 # 80207c00 <rt_system_timer_thread_init+0xaa8>
8020274a:	01f020ef          	jal	80204f68 <rt_assert_handler>
8020274e:	fff9069b          	addiw	a3,s2,-1
80202752:	4721                	li	a4,8
80202754:	08d76f63          	bltu	a4,a3,802027f2 <rt_serial_control+0xd2>
80202758:	00006717          	auipc	a4,0x6
8020275c:	43c70713          	addi	a4,a4,1084 # 80208b94 <__FUNCTION__.6+0x14>
80202760:	0026979b          	slliw	a5,a3,0x2
80202764:	9fb9                	addw	a5,a5,a4
80202766:	439c                	lw	a5,0(a5)
80202768:	9f3d                	addw	a4,a4,a5
8020276a:	8702                	jr	a4
8020276c:	02845783          	lhu	a5,40(s0)
80202770:	0207e793          	ori	a5,a5,32
80202774:	02f41423          	sh	a5,40(s0)
80202778:	4501                	li	a0,0
8020277a:	60e2                	ld	ra,24(sp)
8020277c:	6442                	ld	s0,16(sp)
8020277e:	64a2                	ld	s1,8(sp)
80202780:	6902                	ld	s2,0(sp)
80202782:	0201011b          	addiw	sp,sp,32
80202786:	8082                	ret
80202788:	02845783          	lhu	a5,40(s0)
8020278c:	fdf7f793          	andi	a5,a5,-33
80202790:	b7d5                	j	80202774 <rt_serial_control+0x54>
80202792:	0004879b          	sext.w	a5,s1
80202796:	d3ed                	beqz	a5,80202778 <rt_serial_control+0x58>
80202798:	40d8                	lw	a4,4(s1)
8020279a:	447c                	lw	a5,76(s0)
8020279c:	02c44683          	lbu	a3,44(s0)
802027a0:	00a7571b          	srliw	a4,a4,0xa
802027a4:	00a7d79b          	srliw	a5,a5,0xa
802027a8:	1742                	slli	a4,a4,0x30
802027aa:	17c2                	slli	a5,a5,0x30
802027ac:	9341                	srli	a4,a4,0x30
802027ae:	93c1                	srli	a5,a5,0x30
802027b0:	00f70463          	beq	a4,a5,802027b8 <rt_serial_control+0x98>
802027b4:	5541                	li	a0,-16
802027b6:	f2f1                	bnez	a3,8020277a <rt_serial_control+0x5a>
802027b8:	409c                	lw	a5,0(s1)
802027ba:	c43c                	sw	a5,72(s0)
802027bc:	40dc                	lw	a5,4(s1)
802027be:	c47c                	sw	a5,76(s0)
802027c0:	dec5                	beqz	a3,80202778 <rt_serial_control+0x58>
802027c2:	407c                	lw	a5,68(s0)
802027c4:	85a6                	mv	a1,s1
802027c6:	8522                	mv	a0,s0
802027c8:	439c                	lw	a5,0(a5)
802027ca:	9782                	jalr	a5
802027cc:	b775                	j	80202778 <rt_serial_control+0x58>
802027ce:	0004879b          	sext.w	a5,s1
802027d2:	d3dd                	beqz	a5,80202778 <rt_serial_control+0x58>
802027d4:	4621                	li	a2,8
802027d6:	85a6                	mv	a1,s1
802027d8:	0604051b          	addiw	a0,s0,96
802027dc:	3e8020ef          	jal	80204bc4 <rt_memcpy>
802027e0:	bf61                	j	80202778 <rt_serial_control+0x58>
802027e2:	0004879b          	sext.w	a5,s1
802027e6:	dbc9                	beqz	a5,80202778 <rt_serial_control+0x58>
802027e8:	14300793          	li	a5,323
802027ec:	00f49023          	sh	a5,0(s1)
802027f0:	b761                	j	80202778 <rt_serial_control+0x58>
802027f2:	407c                	lw	a5,68(s0)
802027f4:	8522                	mv	a0,s0
802027f6:	6442                	ld	s0,16(sp)
802027f8:	60e2                	ld	ra,24(sp)
802027fa:	43dc                	lw	a5,4(a5)
802027fc:	8626                	mv	a2,s1
802027fe:	85ca                	mv	a1,s2
80202800:	64a2                	ld	s1,8(sp)
80202802:	6902                	ld	s2,0(sp)
80202804:	0201011b          	addiw	sp,sp,32
80202808:	8782                	jr	a5

8020280a <rt_serial_init>:
8020280a:	3141                	addiw	sp,sp,-16
8020280c:	e022                	sd	s0,0(sp)
8020280e:	0005079b          	sext.w	a5,a0
80202812:	e406                	sd	ra,8(sp)
80202814:	843e                	mv	s0,a5
80202816:	ef89                	bnez	a5,80202830 <rt_serial_init+0x26>
80202818:	25c00613          	li	a2,604
8020281c:	00006597          	auipc	a1,0x6
80202820:	3d458593          	addi	a1,a1,980 # 80208bf0 <__FUNCTION__.3>
80202824:	00005517          	auipc	a0,0x5
80202828:	3dc50513          	addi	a0,a0,988 # 80207c00 <rt_system_timer_thread_init+0xaa8>
8020282c:	73c020ef          	jal	80204f68 <rt_assert_handler>
80202830:	04042823          	sw	zero,80(s0)
80202834:	04042a23          	sw	zero,84(s0)
80202838:	4621                	li	a2,8
8020283a:	4581                	li	a1,0
8020283c:	0604051b          	addiw	a0,s0,96
80202840:	2f2020ef          	jal	80204b32 <rt_memset>
80202844:	407c                	lw	a5,68(s0)
80202846:	439c                	lw	a5,0(a5)
80202848:	cb81                	beqz	a5,80202858 <rt_serial_init+0x4e>
8020284a:	0484059b          	addiw	a1,s0,72
8020284e:	8522                	mv	a0,s0
80202850:	6402                	ld	s0,0(sp)
80202852:	60a2                	ld	ra,8(sp)
80202854:	2141                	addiw	sp,sp,16
80202856:	8782                	jr	a5
80202858:	60a2                	ld	ra,8(sp)
8020285a:	6402                	ld	s0,0(sp)
8020285c:	4501                	li	a0,0
8020285e:	2141                	addiw	sp,sp,16
80202860:	8082                	ret

80202862 <rt_serial_open>:
80202862:	fd01011b          	addiw	sp,sp,-48
80202866:	f022                	sd	s0,32(sp)
80202868:	ec26                	sd	s1,24(sp)
8020286a:	0005079b          	sext.w	a5,a0
8020286e:	f406                	sd	ra,40(sp)
80202870:	e84a                	sd	s2,16(sp)
80202872:	e44e                	sd	s3,8(sp)
80202874:	e052                	sd	s4,0(sp)
80202876:	843e                	mv	s0,a5
80202878:	84ae                	mv	s1,a1
8020287a:	ef89                	bnez	a5,80202894 <rt_serial_open+0x32>
8020287c:	27100613          	li	a2,625
80202880:	00006597          	auipc	a1,0x6
80202884:	38058593          	addi	a1,a1,896 # 80208c00 <__FUNCTION__.4>
80202888:	00005517          	auipc	a0,0x5
8020288c:	37850513          	addi	a0,a0,888 # 80207c00 <rt_system_timer_thread_init+0xaa8>
80202890:	6d8020ef          	jal	80204f68 <rt_assert_handler>
80202894:	2004f713          	andi	a4,s1,512
80202898:	cb01                	beqz	a4,802028a8 <rt_serial_open+0x46>
8020289a:	02845783          	lhu	a5,40(s0)
8020289e:	556d                	li	a0,-5
802028a0:	2007f793          	andi	a5,a5,512
802028a4:	12078a63          	beqz	a5,802029d8 <rt_serial_open+0x176>
802028a8:	6785                	lui	a5,0x1
802028aa:	80078793          	addi	a5,a5,-2048 # 800 <__STACKSIZE__-0x3800>
802028ae:	00f4f9b3          	and	s3,s1,a5
802028b2:	00098863          	beqz	s3,802028c2 <rt_serial_open+0x60>
802028b6:	02845683          	lhu	a3,40(s0)
802028ba:	556d                	li	a0,-5
802028bc:	8ff5                	and	a5,a5,a3
802028be:	10078d63          	beqz	a5,802029d8 <rt_serial_open+0x176>
802028c2:	1004f793          	andi	a5,s1,256
802028c6:	cb81                	beqz	a5,802028d6 <rt_serial_open+0x74>
802028c8:	02845683          	lhu	a3,40(s0)
802028cc:	556d                	li	a0,-5
802028ce:	1006f693          	andi	a3,a3,256
802028d2:	10068363          	beqz	a3,802029d8 <rt_serial_open+0x176>
802028d6:	4004fa13          	andi	s4,s1,1024
802028da:	000a0963          	beqz	s4,802028ec <rt_serial_open+0x8a>
802028de:	02845683          	lhu	a3,40(s0)
802028e2:	556d                	li	a0,-5
802028e4:	4006f693          	andi	a3,a3,1024
802028e8:	0e068863          	beqz	a3,802029d8 <rt_serial_open+0x176>
802028ec:	0404f693          	andi	a3,s1,64
802028f0:	04000913          	li	s2,64
802028f4:	e689                	bnez	a3,802028fe <rt_serial_open+0x9c>
802028f6:	02a45903          	lhu	s2,42(s0)
802028fa:	04097913          	andi	s2,s2,64
802028fe:	4834                	lw	a3,80(s0)
80202900:	0ff4f493          	zext.b	s1,s1
80202904:	02941523          	sh	s1,42(s0)
80202908:	18069363          	bnez	a3,80202a8e <rt_serial_open+0x22c>
8020290c:	cff9                	beqz	a5,802029ea <rt_serial_open+0x188>
8020290e:	4468                	lw	a0,76(s0)
80202910:	00a5551b          	srliw	a0,a0,0xa
80202914:	1542                	slli	a0,a0,0x30
80202916:	9141                	srli	a0,a0,0x30
80202918:	0531                	addi	a0,a0,12
8020291a:	744020ef          	jal	8020505e <rt_malloc>
8020291e:	0005079b          	sext.w	a5,a0
80202922:	84be                	mv	s1,a5
80202924:	ef89                	bnez	a5,8020293e <rt_serial_open+0xdc>
80202926:	29500613          	li	a2,661
8020292a:	00006597          	auipc	a1,0x6
8020292e:	2d658593          	addi	a1,a1,726 # 80208c00 <__FUNCTION__.4>
80202932:	00005517          	auipc	a0,0x5
80202936:	54650513          	addi	a0,a0,1350 # 80207e78 <rt_system_timer_thread_init+0xd20>
8020293a:	62e020ef          	jal	80204f68 <rt_assert_handler>
8020293e:	4470                	lw	a2,76(s0)
80202940:	00c4851b          	addiw	a0,s1,12
80202944:	4581                	li	a1,0
80202946:	00a6561b          	srliw	a2,a2,0xa
8020294a:	1642                	slli	a2,a2,0x30
8020294c:	9241                	srli	a2,a2,0x30
8020294e:	c088                	sw	a0,0(s1)
80202950:	1e2020ef          	jal	80204b32 <rt_memset>
80202954:	0004a223          	sw	zero,4(s1)
80202958:	02a45783          	lhu	a5,42(s0)
8020295c:	0004a423          	sw	zero,8(s1)
80202960:	c824                	sw	s1,80(s0)
80202962:	1007e793          	ori	a5,a5,256
80202966:	02f41523          	sh	a5,42(s0)
8020296a:	407c                	lw	a5,68(s0)
8020296c:	10000613          	li	a2,256
80202970:	4599                	li	a1,6
80202972:	43dc                	lw	a5,4(a5)
80202974:	8522                	mv	a0,s0
80202976:	9782                	jalr	a5
80202978:	487c                	lw	a5,84(s0)
8020297a:	18079163          	bnez	a5,80202afc <rt_serial_open+0x29a>
8020297e:	120a0363          	beqz	s4,80202aa4 <rt_serial_open+0x242>
80202982:	4511                	li	a0,4
80202984:	6da020ef          	jal	8020505e <rt_malloc>
80202988:	0005079b          	sext.w	a5,a0
8020298c:	84be                	mv	s1,a5
8020298e:	ef89                	bnez	a5,802029a8 <rt_serial_open+0x146>
80202990:	2d400613          	li	a2,724
80202994:	00006597          	auipc	a1,0x6
80202998:	26c58593          	addi	a1,a1,620 # 80208c00 <__FUNCTION__.4>
8020299c:	00005517          	auipc	a0,0x5
802029a0:	50c50513          	addi	a0,a0,1292 # 80207ea8 <rt_system_timer_thread_init+0xd50>
802029a4:	5c4020ef          	jal	80204f68 <rt_assert_handler>
802029a8:	8526                	mv	a0,s1
802029aa:	a52ff0ef          	jal	80201bfc <rt_completion_init>
802029ae:	02a45783          	lhu	a5,42(s0)
802029b2:	c864                	sw	s1,84(s0)
802029b4:	40000613          	li	a2,1024
802029b8:	4007e793          	ori	a5,a5,1024
802029bc:	02f41523          	sh	a5,42(s0)
802029c0:	407c                	lw	a5,68(s0)
802029c2:	4599                	li	a1,6
802029c4:	43dc                	lw	a5,4(a5)
802029c6:	8522                	mv	a0,s0
802029c8:	9782                	jalr	a5
802029ca:	02a45783          	lhu	a5,42(s0)
802029ce:	4501                	li	a0,0
802029d0:	00f96933          	or	s2,s2,a5
802029d4:	03241523          	sh	s2,42(s0)
802029d8:	70a2                	ld	ra,40(sp)
802029da:	7402                	ld	s0,32(sp)
802029dc:	64e2                	ld	s1,24(sp)
802029de:	6942                	ld	s2,16(sp)
802029e0:	69a2                	ld	s3,8(sp)
802029e2:	6a02                	ld	s4,0(sp)
802029e4:	0301011b          	addiw	sp,sp,48
802029e8:	8082                	ret
802029ea:	d759                	beqz	a4,80202978 <rt_serial_open+0x116>
802029ec:	4468                	lw	a0,76(s0)
802029ee:	02651793          	slli	a5,a0,0x26
802029f2:	93c1                	srli	a5,a5,0x30
802029f4:	ef95                	bnez	a5,80202a30 <rt_serial_open+0x1ce>
802029f6:	4511                	li	a0,4
802029f8:	666020ef          	jal	8020505e <rt_malloc>
802029fc:	0005079b          	sext.w	a5,a0
80202a00:	84be                	mv	s1,a5
80202a02:	ef89                	bnez	a5,80202a1c <rt_serial_open+0x1ba>
80202a04:	2a800613          	li	a2,680
80202a08:	00006597          	auipc	a1,0x6
80202a0c:	1f858593          	addi	a1,a1,504 # 80208c00 <__FUNCTION__.4>
80202a10:	00005517          	auipc	a0,0x5
80202a14:	48050513          	addi	a0,a0,1152 # 80207e90 <rt_system_timer_thread_init+0xd38>
80202a18:	550020ef          	jal	80204f68 <rt_assert_handler>
80202a1c:	0004a023          	sw	zero,0(s1)
80202a20:	c824                	sw	s1,80(s0)
80202a22:	02a45783          	lhu	a5,42(s0)
80202a26:	2007e793          	ori	a5,a5,512
80202a2a:	02f41523          	sh	a5,42(s0)
80202a2e:	b7a9                	j	80202978 <rt_serial_open+0x116>
80202a30:	00a5551b          	srliw	a0,a0,0xa
80202a34:	1542                	slli	a0,a0,0x30
80202a36:	9141                	srli	a0,a0,0x30
80202a38:	0531                	addi	a0,a0,12
80202a3a:	624020ef          	jal	8020505e <rt_malloc>
80202a3e:	0005079b          	sext.w	a5,a0
80202a42:	84be                	mv	s1,a5
80202a44:	ef89                	bnez	a5,80202a5e <rt_serial_open+0x1fc>
80202a46:	2b100613          	li	a2,689
80202a4a:	00006597          	auipc	a1,0x6
80202a4e:	1b658593          	addi	a1,a1,438 # 80208c00 <__FUNCTION__.4>
80202a52:	00005517          	auipc	a0,0x5
80202a56:	42650513          	addi	a0,a0,1062 # 80207e78 <rt_system_timer_thread_init+0xd20>
80202a5a:	50e020ef          	jal	80204f68 <rt_assert_handler>
80202a5e:	4470                	lw	a2,76(s0)
80202a60:	00c4851b          	addiw	a0,s1,12
80202a64:	c088                	sw	a0,0(s1)
80202a66:	00a6561b          	srliw	a2,a2,0xa
80202a6a:	1642                	slli	a2,a2,0x30
80202a6c:	9241                	srli	a2,a2,0x30
80202a6e:	4581                	li	a1,0
80202a70:	0c2020ef          	jal	80204b32 <rt_memset>
80202a74:	407c                	lw	a5,68(s0)
80202a76:	0004a223          	sw	zero,4(s1)
80202a7a:	0004a423          	sw	zero,8(s1)
80202a7e:	43dc                	lw	a5,4(a5)
80202a80:	c824                	sw	s1,80(s0)
80202a82:	20000613          	li	a2,512
80202a86:	458d                	li	a1,3
80202a88:	8522                	mv	a0,s0
80202a8a:	9782                	jalr	a5
80202a8c:	bf59                	j	80202a22 <rt_serial_open+0x1c0>
80202a8e:	c791                	beqz	a5,80202a9a <rt_serial_open+0x238>
80202a90:	1004e493          	ori	s1,s1,256
80202a94:	02941523          	sh	s1,42(s0)
80202a98:	b5c5                	j	80202978 <rt_serial_open+0x116>
80202a9a:	ec070fe3          	beqz	a4,80202978 <rt_serial_open+0x116>
80202a9e:	2004e493          	ori	s1,s1,512
80202aa2:	bfcd                	j	80202a94 <rt_serial_open+0x232>
80202aa4:	f20983e3          	beqz	s3,802029ca <rt_serial_open+0x168>
80202aa8:	03000513          	li	a0,48
80202aac:	5b2020ef          	jal	8020505e <rt_malloc>
80202ab0:	0005079b          	sext.w	a5,a0
80202ab4:	84be                	mv	s1,a5
80202ab6:	ef89                	bnez	a5,80202ad0 <rt_serial_open+0x26e>
80202ab8:	2e300613          	li	a2,739
80202abc:	00006597          	auipc	a1,0x6
80202ac0:	14458593          	addi	a1,a1,324 # 80208c00 <__FUNCTION__.4>
80202ac4:	00005517          	auipc	a0,0x5
80202ac8:	3fc50513          	addi	a0,a0,1020 # 80207ec0 <rt_system_timer_thread_init+0xd68>
80202acc:	49c020ef          	jal	80204f68 <rt_assert_handler>
80202ad0:	4611                	li	a2,4
80202ad2:	45a1                	li	a1,8
80202ad4:	0004a023          	sw	zero,0(s1)
80202ad8:	4681                	li	a3,0
80202ada:	0044851b          	addiw	a0,s1,4
80202ade:	bf0ff0ef          	jal	80201ece <rt_data_queue_init>
80202ae2:	02a45783          	lhu	a5,42(s0)
80202ae6:	6605                	lui	a2,0x1
80202ae8:	80060613          	addi	a2,a2,-2048 # 800 <__STACKSIZE__-0x3800>
80202aec:	8fd1                	or	a5,a5,a2
80202aee:	02f41523          	sh	a5,42(s0)
80202af2:	407c                	lw	a5,68(s0)
80202af4:	c864                	sw	s1,84(s0)
80202af6:	458d                	li	a1,3
80202af8:	43dc                	lw	a5,4(a5)
80202afa:	b5f1                	j	802029c6 <rt_serial_open+0x164>
80202afc:	02a45783          	lhu	a5,42(s0)
80202b00:	000a0763          	beqz	s4,80202b0e <rt_serial_open+0x2ac>
80202b04:	4007e793          	ori	a5,a5,1024
80202b08:	02f41523          	sh	a5,42(s0)
80202b0c:	bd7d                	j	802029ca <rt_serial_open+0x168>
80202b0e:	ea098ee3          	beqz	s3,802029ca <rt_serial_open+0x168>
80202b12:	6705                	lui	a4,0x1
80202b14:	80070713          	addi	a4,a4,-2048 # 800 <__STACKSIZE__-0x3800>
80202b18:	8fd9                	or	a5,a5,a4
80202b1a:	b7fd                	j	80202b08 <rt_serial_open+0x2a6>

80202b1c <rt_serial_write>:
80202b1c:	fc01011b          	addiw	sp,sp,-64
80202b20:	f822                	sd	s0,48(sp)
80202b22:	f426                	sd	s1,40(sp)
80202b24:	f04a                	sd	s2,32(sp)
80202b26:	0005079b          	sext.w	a5,a0
80202b2a:	fc06                	sd	ra,56(sp)
80202b2c:	ec4e                	sd	s3,24(sp)
80202b2e:	e852                	sd	s4,16(sp)
80202b30:	e456                	sd	s5,8(sp)
80202b32:	e05a                	sd	s6,0(sp)
80202b34:	843e                	mv	s0,a5
80202b36:	84b2                	mv	s1,a2
80202b38:	8936                	mv	s2,a3
80202b3a:	ef89                	bnez	a5,80202b54 <rt_serial_write+0x38>
80202b3c:	38400613          	li	a2,900
80202b40:	00006597          	auipc	a1,0x6
80202b44:	16058593          	addi	a1,a1,352 # 80208ca0 <__FUNCTION__.14>
80202b48:	00005517          	auipc	a0,0x5
80202b4c:	0b850513          	addi	a0,a0,184 # 80207c00 <rt_system_timer_thread_init+0xaa8>
80202b50:	418020ef          	jal	80204f68 <rt_assert_handler>
80202b54:	0e090763          	beqz	s2,80202c42 <rt_serial_write+0x126>
80202b58:	02a45783          	lhu	a5,42(s0)
80202b5c:	0009099b          	sext.w	s3,s2
80202b60:	4007f713          	andi	a4,a5,1024
80202b64:	c741                	beqz	a4,80202bec <rt_serial_write+0xd0>
80202b66:	487c                	lw	a5,84(s0)
80202b68:	8a3e                	mv	s4,a5
80202b6a:	ef89                	bnez	a5,80202b84 <rt_serial_write+0x68>
80202b6c:	15e00613          	li	a2,350
80202b70:	00006597          	auipc	a1,0x6
80202b74:	12058593          	addi	a1,a1,288 # 80208c90 <__FUNCTION__.13>
80202b78:	00005517          	auipc	a0,0x5
80202b7c:	36050513          	addi	a0,a0,864 # 80207ed8 <rt_system_timer_thread_init+0xd80>
80202b80:	3e8020ef          	jal	80204f68 <rt_assert_handler>
80202b84:	894e                	mv	s2,s3
80202b86:	4b29                	li	s6,10
80202b88:	5afd                	li	s5,-1
80202b8a:	0004c783          	lbu	a5,0(s1)
80202b8e:	03679763          	bne	a5,s6,80202bbc <rt_serial_write+0xa0>
80202b92:	02a45783          	lhu	a5,42(s0)
80202b96:	0407f793          	andi	a5,a5,64
80202b9a:	c38d                	beqz	a5,80202bbc <rt_serial_write+0xa0>
80202b9c:	407c                	lw	a5,68(s0)
80202b9e:	45b5                	li	a1,13
80202ba0:	8522                	mv	a0,s0
80202ba2:	479c                	lw	a5,8(a5)
80202ba4:	9782                	jalr	a5
80202ba6:	01551b63          	bne	a0,s5,80202bbc <rt_serial_write+0xa0>
80202baa:	55fd                	li	a1,-1
80202bac:	8552                	mv	a0,s4
80202bae:	84aff0ef          	jal	80201bf8 <rt_completion_wait>
80202bb2:	bfe1                	j	80202b8a <rt_serial_write+0x6e>
80202bb4:	55fd                	li	a1,-1
80202bb6:	8552                	mv	a0,s4
80202bb8:	840ff0ef          	jal	80201bf8 <rt_completion_wait>
80202bbc:	407c                	lw	a5,68(s0)
80202bbe:	0004c583          	lbu	a1,0(s1)
80202bc2:	8522                	mv	a0,s0
80202bc4:	479c                	lw	a5,8(a5)
80202bc6:	9782                	jalr	a5
80202bc8:	ff5506e3          	beq	a0,s5,80202bb4 <rt_serial_write+0x98>
80202bcc:	397d                	addiw	s2,s2,-1
80202bce:	2485                	addiw	s1,s1,1
80202bd0:	fa091de3          	bnez	s2,80202b8a <rt_serial_write+0x6e>
80202bd4:	70e2                	ld	ra,56(sp)
80202bd6:	7442                	ld	s0,48(sp)
80202bd8:	74a2                	ld	s1,40(sp)
80202bda:	7902                	ld	s2,32(sp)
80202bdc:	6a42                	ld	s4,16(sp)
80202bde:	6aa2                	ld	s5,8(sp)
80202be0:	6b02                	ld	s6,0(sp)
80202be2:	854e                	mv	a0,s3
80202be4:	69e2                	ld	s3,24(sp)
80202be6:	0401011b          	addiw	sp,sp,64
80202bea:	8082                	ret
80202bec:	03479713          	slli	a4,a5,0x34
80202bf0:	04075b63          	bgez	a4,80202c46 <rt_serial_write+0x12a>
80202bf4:	4868                	lw	a0,84(s0)
80202bf6:	56fd                	li	a3,-1
80202bf8:	864a                	mv	a2,s2
80202bfa:	8aaa                	mv	s5,a0
80202bfc:	85a6                	mv	a1,s1
80202bfe:	2511                	addiw	a0,a0,4
80202c00:	b72ff0ef          	jal	80201f72 <rt_data_queue_push>
80202c04:	ed0d                	bnez	a0,80202c3e <rt_serial_write+0x122>
80202c06:	05840a1b          	addiw	s4,s0,88
80202c0a:	8552                	mv	a0,s4
80202c0c:	251000ef          	jal	8020365c <rt_spin_lock_irqsave>
80202c10:	000aa703          	lw	a4,0(s5)
80202c14:	4785                	li	a5,1
80202c16:	85aa                	mv	a1,a0
80202c18:	00f70f63          	beq	a4,a5,80202c36 <rt_serial_write+0x11a>
80202c1c:	00faa023          	sw	a5,0(s5)
80202c20:	8552                	mv	a0,s4
80202c22:	255000ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80202c26:	407c                	lw	a5,68(s0)
80202c28:	4689                	li	a3,2
80202c2a:	864a                	mv	a2,s2
80202c2c:	4b9c                	lw	a5,16(a5)
80202c2e:	85a6                	mv	a1,s1
80202c30:	8522                	mv	a0,s0
80202c32:	9782                	jalr	a5
80202c34:	b745                	j	80202bd4 <rt_serial_write+0xb8>
80202c36:	8552                	mv	a0,s4
80202c38:	23f000ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80202c3c:	bf61                	j	80202bd4 <rt_serial_write+0xb8>
80202c3e:	6c9010ef          	jal	80204b06 <rt_set_errno>
80202c42:	4981                	li	s3,0
80202c44:	bf41                	j	80202bd4 <rt_serial_write+0xb8>
80202c46:	4a29                	li	s4,10
80202c48:	0124893b          	addw	s2,s1,s2
80202c4c:	0004c783          	lbu	a5,0(s1)
80202c50:	01479c63          	bne	a5,s4,80202c68 <rt_serial_write+0x14c>
80202c54:	02a45783          	lhu	a5,42(s0)
80202c58:	0407f793          	andi	a5,a5,64
80202c5c:	c791                	beqz	a5,80202c68 <rt_serial_write+0x14c>
80202c5e:	407c                	lw	a5,68(s0)
80202c60:	45b5                	li	a1,13
80202c62:	8522                	mv	a0,s0
80202c64:	479c                	lw	a5,8(a5)
80202c66:	9782                	jalr	a5
80202c68:	407c                	lw	a5,68(s0)
80202c6a:	0004c583          	lbu	a1,0(s1)
80202c6e:	8522                	mv	a0,s0
80202c70:	479c                	lw	a5,8(a5)
80202c72:	9782                	jalr	a5
80202c74:	0014879b          	addiw	a5,s1,1
80202c78:	84be                	mv	s1,a5
80202c7a:	fd2799e3          	bne	a5,s2,80202c4c <rt_serial_write+0x130>
80202c7e:	bf99                	j	80202bd4 <rt_serial_write+0xb8>

80202c80 <rt_serial_read>:
80202c80:	fb01011b          	addiw	sp,sp,-80
80202c84:	e0a2                	sd	s0,64(sp)
80202c86:	f84a                	sd	s2,48(sp)
80202c88:	ec56                	sd	s5,24(sp)
80202c8a:	0005079b          	sext.w	a5,a0
80202c8e:	e486                	sd	ra,72(sp)
80202c90:	fc26                	sd	s1,56(sp)
80202c92:	f44e                	sd	s3,40(sp)
80202c94:	f052                	sd	s4,32(sp)
80202c96:	e85a                	sd	s6,16(sp)
80202c98:	e45e                	sd	s7,8(sp)
80202c9a:	843e                	mv	s0,a5
80202c9c:	8932                	mv	s2,a2
80202c9e:	8ab6                	mv	s5,a3
80202ca0:	ef89                	bnez	a5,80202cba <rt_serial_read+0x3a>
80202ca2:	36a00613          	li	a2,874
80202ca6:	00006597          	auipc	a1,0x6
80202caa:	fda58593          	addi	a1,a1,-38 # 80208c80 <__FUNCTION__.11>
80202cae:	00005517          	auipc	a0,0x5
80202cb2:	f5250513          	addi	a0,a0,-174 # 80207c00 <rt_system_timer_thread_init+0xaa8>
80202cb6:	2b2020ef          	jal	80204f68 <rt_assert_handler>
80202cba:	020a9063          	bnez	s5,80202cda <rt_serial_read+0x5a>
80202cbe:	4481                	li	s1,0
80202cc0:	60a6                	ld	ra,72(sp)
80202cc2:	6406                	ld	s0,64(sp)
80202cc4:	7942                	ld	s2,48(sp)
80202cc6:	79a2                	ld	s3,40(sp)
80202cc8:	7a02                	ld	s4,32(sp)
80202cca:	6ae2                	ld	s5,24(sp)
80202ccc:	6b42                	ld	s6,16(sp)
80202cce:	6ba2                	ld	s7,8(sp)
80202cd0:	8526                	mv	a0,s1
80202cd2:	74e2                	ld	s1,56(sp)
80202cd4:	0501011b          	addiw	sp,sp,80
80202cd8:	8082                	ret
80202cda:	02a45783          	lhu	a5,42(s0)
80202cde:	000a849b          	sext.w	s1,s5
80202ce2:	1007f713          	andi	a4,a5,256
80202ce6:	c759                	beqz	a4,80202d74 <rt_serial_read+0xf4>
80202ce8:	483c                	lw	a5,80(s0)
80202cea:	89be                	mv	s3,a5
80202cec:	ef89                	bnez	a5,80202d06 <rt_serial_read+0x86>
80202cee:	12e00613          	li	a2,302
80202cf2:	00006597          	auipc	a1,0x6
80202cf6:	f7e58593          	addi	a1,a1,-130 # 80208c70 <__FUNCTION__.10>
80202cfa:	00005517          	auipc	a0,0x5
80202cfe:	17e50513          	addi	a0,a0,382 # 80207e78 <rt_system_timer_thread_init+0xd20>
80202d02:	266020ef          	jal	80204f68 <rt_assert_handler>
80202d06:	8a26                	mv	s4,s1
80202d08:	05840a9b          	addiw	s5,s0,88
80202d0c:	4b05                	li	s6,1
80202d0e:	8556                	mv	a0,s5
80202d10:	14d000ef          	jal	8020365c <rt_spin_lock_irqsave>
80202d14:	0069d783          	lhu	a5,6(s3)
80202d18:	0049d703          	lhu	a4,4(s3)
80202d1c:	0089a683          	lw	a3,8(s3)
80202d20:	85aa                	mv	a1,a0
80202d22:	00f71963          	bne	a4,a5,80202d34 <rt_serial_read+0xb4>
80202d26:	e699                	bnez	a3,80202d34 <rt_serial_read+0xb4>
80202d28:	8556                	mv	a0,s5
80202d2a:	14d000ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80202d2e:	414484bb          	subw	s1,s1,s4
80202d32:	b779                	j	80202cc0 <rt_serial_read+0x40>
80202d34:	0009a703          	lw	a4,0(s3)
80202d38:	9f3d                	addw	a4,a4,a5
80202d3a:	00074b83          	lbu	s7,0(a4)
80202d3e:	4478                	lw	a4,76(s0)
80202d40:	2785                	addiw	a5,a5,1
80202d42:	17c2                	slli	a5,a5,0x30
80202d44:	00a7571b          	srliw	a4,a4,0xa
80202d48:	1742                	slli	a4,a4,0x30
80202d4a:	93c1                	srli	a5,a5,0x30
80202d4c:	9341                	srli	a4,a4,0x30
80202d4e:	00e7e363          	bltu	a5,a4,80202d54 <rt_serial_read+0xd4>
80202d52:	4781                	li	a5,0
80202d54:	00f99323          	sh	a5,6(s3)
80202d58:	01669463          	bne	a3,s6,80202d60 <rt_serial_read+0xe0>
80202d5c:	0009a423          	sw	zero,8(s3)
80202d60:	8556                	mv	a0,s5
80202d62:	115000ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80202d66:	3a7d                	addiw	s4,s4,-1
80202d68:	01790023          	sb	s7,0(s2)
80202d6c:	2905                	addiw	s2,s2,1
80202d6e:	fa0a10e3          	bnez	s4,80202d0e <rt_serial_read+0x8e>
80202d72:	bf75                	j	80202d2e <rt_serial_read+0xae>
80202d74:	2007f793          	andi	a5,a5,512
80202d78:	89a6                	mv	s3,s1
80202d7a:	eb8d                	bnez	a5,80202dac <rt_serial_read+0x12c>
80202d7c:	5a7d                	li	s4,-1
80202d7e:	4aa9                	li	s5,10
80202d80:	407c                	lw	a5,68(s0)
80202d82:	8522                	mv	a0,s0
80202d84:	47dc                	lw	a5,12(a5)
80202d86:	9782                	jalr	a5
80202d88:	01450f63          	beq	a0,s4,80202da6 <rt_serial_read+0x126>
80202d8c:	00a90023          	sb	a0,0(s2)
80202d90:	02a45783          	lhu	a5,42(s0)
80202d94:	2905                	addiw	s2,s2,1
80202d96:	39fd                	addiw	s3,s3,-1
80202d98:	0407f793          	andi	a5,a5,64
80202d9c:	c399                	beqz	a5,80202da2 <rt_serial_read+0x122>
80202d9e:	01550463          	beq	a0,s5,80202da6 <rt_serial_read+0x126>
80202da2:	fc099fe3          	bnez	s3,80202d80 <rt_serial_read+0x100>
80202da6:	413484bb          	subw	s1,s1,s3
80202daa:	bf19                	j	80202cc0 <rt_serial_read+0x40>
80202dac:	0009079b          	sext.w	a5,s2
80202db0:	ef89                	bnez	a5,80202dca <rt_serial_read+0x14a>
80202db2:	1fb00613          	li	a2,507
80202db6:	00006597          	auipc	a1,0x6
80202dba:	eaa58593          	addi	a1,a1,-342 # 80208c60 <__FUNCTION__.9>
80202dbe:	00005517          	auipc	a0,0x5
80202dc2:	12a50513          	addi	a0,a0,298 # 80207ee8 <rt_system_timer_thread_init+0xd90>
80202dc6:	1a2020ef          	jal	80204f68 <rt_assert_handler>
80202dca:	05840a1b          	addiw	s4,s0,88
80202dce:	8552                	mv	a0,s4
80202dd0:	08d000ef          	jal	8020365c <rt_spin_lock_irqsave>
80202dd4:	447c                	lw	a5,76(s0)
80202dd6:	05042b03          	lw	s6,80(s0)
80202dda:	89aa                	mv	s3,a0
80202ddc:	02679713          	slli	a4,a5,0x26
80202de0:	9341                	srli	a4,a4,0x30
80202de2:	eb2d                	bnez	a4,80202e54 <rt_serial_read+0x1d4>
80202de4:	8bda                	mv	s7,s6
80202de6:	000b1e63          	bnez	s6,80202e02 <rt_serial_read+0x182>
80202dea:	20500613          	li	a2,517
80202dee:	00006597          	auipc	a1,0x6
80202df2:	e7258593          	addi	a1,a1,-398 # 80208c60 <__FUNCTION__.9>
80202df6:	00005517          	auipc	a0,0x5
80202dfa:	09a50513          	addi	a0,a0,154 # 80207e90 <rt_system_timer_thread_init+0xd38>
80202dfe:	16a020ef          	jal	80204f68 <rt_assert_handler>
80202e02:	000ba703          	lw	a4,0(s7) # 8000 <__STACKSIZE__+0x4000>
80202e06:	4785                	li	a5,1
80202e08:	5b41                	li	s6,-16
80202e0a:	02f70b63          	beq	a4,a5,80202e40 <rt_serial_read+0x1c0>
80202e0e:	00fba023          	sw	a5,0(s7)
80202e12:	407c                	lw	a5,68(s0)
80202e14:	4b9c                	lw	a5,16(a5)
80202e16:	ef89                	bnez	a5,80202e30 <rt_serial_read+0x1b0>
80202e18:	20a00613          	li	a2,522
80202e1c:	00006597          	auipc	a1,0x6
80202e20:	e4458593          	addi	a1,a1,-444 # 80208c60 <__FUNCTION__.9>
80202e24:	00005517          	auipc	a0,0x5
80202e28:	0f450513          	addi	a0,a0,244 # 80207f18 <rt_system_timer_thread_init+0xdc0>
80202e2c:	13c020ef          	jal	80204f68 <rt_assert_handler>
80202e30:	407c                	lw	a5,68(s0)
80202e32:	4685                	li	a3,1
80202e34:	8656                	mv	a2,s5
80202e36:	4b9c                	lw	a5,16(a5)
80202e38:	85ca                	mv	a1,s2
80202e3a:	8522                	mv	a0,s0
80202e3c:	9782                	jalr	a5
80202e3e:	4b01                	li	s6,0
80202e40:	85ce                	mv	a1,s3
80202e42:	8552                	mv	a0,s4
80202e44:	033000ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80202e48:	e60b0ce3          	beqz	s6,80202cc0 <rt_serial_read+0x40>
80202e4c:	5541                	li	a0,-16
80202e4e:	4b9010ef          	jal	80204b06 <rt_set_errno>
80202e52:	b5b5                	j	80202cbe <rt_serial_read+0x3e>
80202e54:	8522                	mv	a0,s0
80202e56:	85fff0ef          	jal	802026b4 <_serial_fifo_calc_recved_len>
80202e5a:	8ada                	mv	s5,s6
80202e5c:	8baa                	mv	s7,a0
80202e5e:	000b1e63          	bnez	s6,80202e7a <rt_serial_read+0x1fa>
80202e62:	21a00613          	li	a2,538
80202e66:	00006597          	auipc	a1,0x6
80202e6a:	dfa58593          	addi	a1,a1,-518 # 80208c60 <__FUNCTION__.9>
80202e6e:	00005517          	auipc	a0,0x5
80202e72:	00a50513          	addi	a0,a0,10 # 80207e78 <rt_system_timer_thread_init+0xd20>
80202e76:	0f2020ef          	jal	80204f68 <rt_assert_handler>
80202e7a:	8b26                	mv	s6,s1
80202e7c:	009bd363          	bge	s7,s1,80202e82 <rt_serial_read+0x202>
80202e80:	8b5e                	mv	s6,s7
80202e82:	447c                	lw	a5,76(s0)
80202e84:	006ad603          	lhu	a2,6(s5)
80202e88:	000aa583          	lw	a1,0(s5)
80202e8c:	00a7d79b          	srliw	a5,a5,0xa
80202e90:	17c2                	slli	a5,a5,0x30
80202e92:	93c1                	srli	a5,a5,0x30
80202e94:	00cb073b          	addw	a4,s6,a2
80202e98:	000b049b          	sext.w	s1,s6
80202e9c:	9db1                	addw	a1,a1,a2
80202e9e:	08f77463          	bgeu	a4,a5,80202f26 <rt_serial_read+0x2a6>
80202ea2:	8626                	mv	a2,s1
80202ea4:	854a                	mv	a0,s2
80202ea6:	51f010ef          	jal	80204bc4 <rt_memcpy>
80202eaa:	483c                	lw	a5,80(s0)
80202eac:	893e                	mv	s2,a5
80202eae:	ef89                	bnez	a5,80202ec8 <rt_serial_read+0x248>
80202eb0:	1b800613          	li	a2,440
80202eb4:	00006597          	auipc	a1,0x6
80202eb8:	d6c58593          	addi	a1,a1,-660 # 80208c20 <__FUNCTION__.7>
80202ebc:	00005517          	auipc	a0,0x5
80202ec0:	fbc50513          	addi	a0,a0,-68 # 80207e78 <rt_system_timer_thread_init+0xd20>
80202ec4:	0a4020ef          	jal	80204f68 <rt_assert_handler>
80202ec8:	8522                	mv	a0,s0
80202eca:	feaff0ef          	jal	802026b4 <_serial_fifo_calc_recved_len>
80202ece:	2501                	sext.w	a0,a0
80202ed0:	00957e63          	bgeu	a0,s1,80202eec <rt_serial_read+0x26c>
80202ed4:	1b900613          	li	a2,441
80202ed8:	00006597          	auipc	a1,0x6
80202edc:	d4858593          	addi	a1,a1,-696 # 80208c20 <__FUNCTION__.7>
80202ee0:	00005517          	auipc	a0,0x5
80202ee4:	06050513          	addi	a0,a0,96 # 80207f40 <rt_system_timer_thread_init+0xde8>
80202ee8:	080020ef          	jal	80204f68 <rt_assert_handler>
80202eec:	00892783          	lw	a5,8(s2)
80202ef0:	c781                	beqz	a5,80202ef8 <rt_serial_read+0x278>
80202ef2:	c099                	beqz	s1,80202ef8 <rt_serial_read+0x278>
80202ef4:	00092423          	sw	zero,8(s2)
80202ef8:	00695783          	lhu	a5,6(s2)
80202efc:	4478                	lw	a4,76(s0)
80202efe:	9fa5                	addw	a5,a5,s1
80202f00:	17c2                	slli	a5,a5,0x30
80202f02:	00a7571b          	srliw	a4,a4,0xa
80202f06:	93c1                	srli	a5,a5,0x30
80202f08:	1742                	slli	a4,a4,0x30
80202f0a:	00f91323          	sh	a5,6(s2)
80202f0e:	9341                	srli	a4,a4,0x30
80202f10:	00e7e663          	bltu	a5,a4,80202f1c <rt_serial_read+0x29c>
80202f14:	02e7f7bb          	remuw	a5,a5,a4
80202f18:	00f91323          	sh	a5,6(s2)
80202f1c:	85ce                	mv	a1,s3
80202f1e:	8552                	mv	a0,s4
80202f20:	756000ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80202f24:	bb71                	j	80202cc0 <rt_serial_read+0x40>
80202f26:	40c7863b          	subw	a2,a5,a2
80202f2a:	854a                	mv	a0,s2
80202f2c:	499010ef          	jal	80204bc4 <rt_memcpy>
80202f30:	447c                	lw	a5,76(s0)
80202f32:	006ad703          	lhu	a4,6(s5)
80202f36:	000aa583          	lw	a1,0(s5)
80202f3a:	00a7d79b          	srliw	a5,a5,0xa
80202f3e:	0107979b          	slliw	a5,a5,0x10
80202f42:	0107d79b          	srliw	a5,a5,0x10
80202f46:	40f7063b          	subw	a2,a4,a5
80202f4a:	9f99                	subw	a5,a5,a4
80202f4c:	0166063b          	addw	a2,a2,s6
80202f50:	00f9053b          	addw	a0,s2,a5
80202f54:	bf89                	j	80202ea6 <rt_serial_read+0x226>

80202f56 <rt_serial_close>:
80202f56:	3101                	addiw	sp,sp,-32
80202f58:	e822                	sd	s0,16(sp)
80202f5a:	0005079b          	sext.w	a5,a0
80202f5e:	ec06                	sd	ra,24(sp)
80202f60:	e426                	sd	s1,8(sp)
80202f62:	843e                	mv	s0,a5
80202f64:	ef89                	bnez	a5,80202f7e <rt_serial_close+0x28>
80202f66:	30700613          	li	a2,775
80202f6a:	00006597          	auipc	a1,0x6
80202f6e:	ca658593          	addi	a1,a1,-858 # 80208c10 <__FUNCTION__.5>
80202f72:	00005517          	auipc	a0,0x5
80202f76:	c8e50513          	addi	a0,a0,-882 # 80207c00 <rt_system_timer_thread_init+0xaa8>
80202f7a:	7ef010ef          	jal	80204f68 <rt_assert_handler>
80202f7e:	02c44703          	lbu	a4,44(s0)
80202f82:	4785                	li	a5,1
80202f84:	08e7ed63          	bltu	a5,a4,8020301e <rt_serial_close+0xc8>
80202f88:	02a45783          	lhu	a5,42(s0)
80202f8c:	4078                	lw	a4,68(s0)
80202f8e:	1007f693          	andi	a3,a5,256
80202f92:	4358                	lw	a4,4(a4)
80202f94:	cec1                	beqz	a3,8020302c <rt_serial_close+0xd6>
80202f96:	10000613          	li	a2,256
80202f9a:	459d                	li	a1,7
80202f9c:	8522                	mv	a0,s0
80202f9e:	9702                	jalr	a4
80202fa0:	02a45783          	lhu	a5,42(s0)
80202fa4:	4824                	lw	s1,80(s0)
80202fa6:	31600613          	li	a2,790
80202faa:	eff7f793          	andi	a5,a5,-257
80202fae:	02f41523          	sh	a5,42(s0)
80202fb2:	c0f1                	beqz	s1,80203076 <rt_serial_close+0x120>
80202fb4:	8526                	mv	a0,s1
80202fb6:	0f0020ef          	jal	802050a6 <rt_free>
80202fba:	04042823          	sw	zero,80(s0)
80202fbe:	02a45703          	lhu	a4,42(s0)
80202fc2:	407c                	lw	a5,68(s0)
80202fc4:	40077693          	andi	a3,a4,1024
80202fc8:	43dc                	lw	a5,4(a5)
80202fca:	cedd                	beqz	a3,80203088 <rt_serial_close+0x132>
80202fcc:	40000613          	li	a2,1024
80202fd0:	459d                	li	a1,7
80202fd2:	8522                	mv	a0,s0
80202fd4:	9782                	jalr	a5
80202fd6:	02a45783          	lhu	a5,42(s0)
80202fda:	4864                	lw	s1,84(s0)
80202fdc:	bff7f793          	andi	a5,a5,-1025
80202fe0:	02f41523          	sh	a5,42(s0)
80202fe4:	ec89                	bnez	s1,80202ffe <rt_serial_close+0xa8>
80202fe6:	34200613          	li	a2,834
80202fea:	00006597          	auipc	a1,0x6
80202fee:	c2658593          	addi	a1,a1,-986 # 80208c10 <__FUNCTION__.5>
80202ff2:	00005517          	auipc	a0,0x5
80202ff6:	eb650513          	addi	a0,a0,-330 # 80207ea8 <rt_system_timer_thread_init+0xd50>
80202ffa:	76f010ef          	jal	80204f68 <rt_assert_handler>
80202ffe:	8526                	mv	a0,s1
80203000:	0a6020ef          	jal	802050a6 <rt_free>
80203004:	04042a23          	sw	zero,84(s0)
80203008:	407c                	lw	a5,68(s0)
8020300a:	4601                	li	a2,0
8020300c:	4591                	li	a1,4
8020300e:	43dc                	lw	a5,4(a5)
80203010:	8522                	mv	a0,s0
80203012:	9782                	jalr	a5
80203014:	02845783          	lhu	a5,40(s0)
80203018:	9bbd                	andi	a5,a5,-17
8020301a:	02f41423          	sh	a5,40(s0)
8020301e:	60e2                	ld	ra,24(sp)
80203020:	6442                	ld	s0,16(sp)
80203022:	64a2                	ld	s1,8(sp)
80203024:	4501                	li	a0,0
80203026:	0201011b          	addiw	sp,sp,32
8020302a:	8082                	ret
8020302c:	2007f793          	andi	a5,a5,512
80203030:	d7d9                	beqz	a5,80202fbe <rt_serial_close+0x68>
80203032:	20000613          	li	a2,512
80203036:	459d                	li	a1,7
80203038:	8522                	mv	a0,s0
8020303a:	9702                	jalr	a4
8020303c:	02a45783          	lhu	a5,42(s0)
80203040:	4824                	lw	s1,80(s0)
80203042:	dff7f793          	andi	a5,a5,-513
80203046:	02f41523          	sh	a5,42(s0)
8020304a:	447c                	lw	a5,76(s0)
8020304c:	02679713          	slli	a4,a5,0x26
80203050:	9341                	srli	a4,a4,0x30
80203052:	ef19                	bnez	a4,80203070 <rt_serial_close+0x11a>
80203054:	f0a5                	bnez	s1,80202fb4 <rt_serial_close+0x5e>
80203056:	32800613          	li	a2,808
8020305a:	00006597          	auipc	a1,0x6
8020305e:	bb658593          	addi	a1,a1,-1098 # 80208c10 <__FUNCTION__.5>
80203062:	00005517          	auipc	a0,0x5
80203066:	e2e50513          	addi	a0,a0,-466 # 80207e90 <rt_system_timer_thread_init+0xd38>
8020306a:	6ff010ef          	jal	80204f68 <rt_assert_handler>
8020306e:	b799                	j	80202fb4 <rt_serial_close+0x5e>
80203070:	f0b1                	bnez	s1,80202fb4 <rt_serial_close+0x5e>
80203072:	33100613          	li	a2,817
80203076:	00006597          	auipc	a1,0x6
8020307a:	b9a58593          	addi	a1,a1,-1126 # 80208c10 <__FUNCTION__.5>
8020307e:	00005517          	auipc	a0,0x5
80203082:	dfa50513          	addi	a0,a0,-518 # 80207e78 <rt_system_timer_thread_init+0xd20>
80203086:	b7d5                	j	8020306a <rt_serial_close+0x114>
80203088:	6605                	lui	a2,0x1
8020308a:	03471693          	slli	a3,a4,0x34
8020308e:	80060613          	addi	a2,a2,-2048 # 800 <__STACKSIZE__-0x3800>
80203092:	f606dbe3          	bgez	a3,80203008 <rt_serial_close+0xb2>
80203096:	459d                	li	a1,7
80203098:	8522                	mv	a0,s0
8020309a:	9782                	jalr	a5
8020309c:	02a45783          	lhu	a5,42(s0)
802030a0:	777d                	lui	a4,0xfffff
802030a2:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__bss_end+0x7fde98ef>
802030a6:	4864                	lw	s1,84(s0)
802030a8:	8ff9                	and	a5,a5,a4
802030aa:	02f41523          	sh	a5,42(s0)
802030ae:	ec89                	bnez	s1,802030c8 <rt_serial_close+0x172>
802030b0:	35300613          	li	a2,851
802030b4:	00006597          	auipc	a1,0x6
802030b8:	b5c58593          	addi	a1,a1,-1188 # 80208c10 <__FUNCTION__.5>
802030bc:	00005517          	auipc	a0,0x5
802030c0:	e0450513          	addi	a0,a0,-508 # 80207ec0 <rt_system_timer_thread_init+0xd68>
802030c4:	6a5010ef          	jal	80204f68 <rt_assert_handler>
802030c8:	0044851b          	addiw	a0,s1,4
802030cc:	a24ff0ef          	jal	802022f0 <rt_data_queue_deinit>
802030d0:	b73d                	j	80202ffe <rt_serial_close+0xa8>

802030d2 <rt_hw_serial_register>:
802030d2:	fd01011b          	addiw	sp,sp,-48
802030d6:	f022                	sd	s0,32(sp)
802030d8:	ec26                	sd	s1,24(sp)
802030da:	e84a                	sd	s2,16(sp)
802030dc:	e44e                	sd	s3,8(sp)
802030de:	0005079b          	sext.w	a5,a0
802030e2:	f406                	sd	ra,40(sp)
802030e4:	843e                	mv	s0,a5
802030e6:	84ae                	mv	s1,a1
802030e8:	8932                	mv	s2,a2
802030ea:	89b6                	mv	s3,a3
802030ec:	ef89                	bnez	a5,80203106 <rt_hw_serial_register+0x34>
802030ee:	54d00613          	li	a2,1357
802030f2:	00006597          	auipc	a1,0x6
802030f6:	bd658593          	addi	a1,a1,-1066 # 80208cc8 <__FUNCTION__.16>
802030fa:	00005517          	auipc	a0,0x5
802030fe:	e6e50513          	addi	a0,a0,-402 # 80207f68 <rt_system_timer_thread_init+0xe10>
80203102:	667010ef          	jal	80204f68 <rt_assert_handler>
80203106:	0584051b          	addiw	a0,s0,88
8020310a:	546000ef          	jal	80203650 <rt_spin_lock_init>
8020310e:	00006797          	auipc	a5,0x6
80203112:	bd278793          	addi	a5,a5,-1070 # 80208ce0 <serial_ops>
80203116:	05342023          	sw	s3,64(s0)
8020311a:	02042223          	sw	zero,36(s0)
8020311e:	02042823          	sw	zero,48(s0)
80203122:	02042a23          	sw	zero,52(s0)
80203126:	dc1c                	sw	a5,56(s0)
80203128:	8522                	mv	a0,s0
8020312a:	7402                	ld	s0,32(sp)
8020312c:	70a2                	ld	ra,40(sp)
8020312e:	69a2                	ld	s3,8(sp)
80203130:	03091613          	slli	a2,s2,0x30
80203134:	85a6                	mv	a1,s1
80203136:	6942                	ld	s2,16(sp)
80203138:	64e2                	ld	s1,24(sp)
8020313a:	9241                	srli	a2,a2,0x30
8020313c:	0301011b          	addiw	sp,sp,48
80203140:	f92fe06f          	j	802018d2 <rt_device_register>

80203144 <rt_hw_serial_isr>:
80203144:	fb01011b          	addiw	sp,sp,-80
80203148:	e0a2                	sd	s0,64(sp)
8020314a:	e486                	sd	ra,72(sp)
8020314c:	fc26                	sd	s1,56(sp)
8020314e:	f84a                	sd	s2,48(sp)
80203150:	f44e                	sd	s3,40(sp)
80203152:	f052                	sd	s4,32(sp)
80203154:	ec56                	sd	s5,24(sp)
80203156:	e85a                	sd	s6,16(sp)
80203158:	0ff5f793          	zext.b	a5,a1
8020315c:	470d                	li	a4,3
8020315e:	842a                	mv	s0,a0
80203160:	1ae78763          	beq	a5,a4,8020330e <rt_hw_serial_isr+0x1ca>
80203164:	0fc5f593          	andi	a1,a1,252
80203168:	e195                	bnez	a1,8020318c <rt_hw_serial_isr+0x48>
8020316a:	4705                	li	a4,1
8020316c:	06e78763          	beq	a5,a4,802031da <rt_hw_serial_isr+0x96>
80203170:	4709                	li	a4,2
80203172:	16e78e63          	beq	a5,a4,802032ee <rt_hw_serial_isr+0x1aa>
80203176:	60a6                	ld	ra,72(sp)
80203178:	6406                	ld	s0,64(sp)
8020317a:	74e2                	ld	s1,56(sp)
8020317c:	7942                	ld	s2,48(sp)
8020317e:	79a2                	ld	s3,40(sp)
80203180:	7a02                	ld	s4,32(sp)
80203182:	6ae2                	ld	s5,24(sp)
80203184:	6b42                	ld	s6,16(sp)
80203186:	0501011b          	addiw	sp,sp,80
8020318a:	8082                	ret
8020318c:	4711                	li	a4,4
8020318e:	fee794e3          	bne	a5,a4,80203176 <rt_hw_serial_isr+0x32>
80203192:	4964                	lw	s1,84(a0)
80203194:	0081061b          	addiw	a2,sp,8
80203198:	00c1059b          	addiw	a1,sp,12
8020319c:	8926                	mv	s2,s1
8020319e:	2491                	addiw	s1,s1,4
802031a0:	4681                	li	a3,0
802031a2:	8526                	mv	a0,s1
802031a4:	a7aff0ef          	jal	8020241e <rt_data_queue_pop>
802031a8:	0081061b          	addiw	a2,sp,8
802031ac:	0041059b          	addiw	a1,sp,4
802031b0:	8526                	mv	a0,s1
802031b2:	fe9fe0ef          	jal	8020219a <rt_data_queue_peek>
802031b6:	14051963          	bnez	a0,80203308 <rt_hw_serial_isr+0x1c4>
802031ba:	4785                	li	a5,1
802031bc:	00f92023          	sw	a5,0(s2)
802031c0:	407c                	lw	a5,68(s0)
802031c2:	4622                	lw	a2,8(sp)
802031c4:	4592                	lw	a1,4(sp)
802031c6:	4b9c                	lw	a5,16(a5)
802031c8:	4689                	li	a3,2
802031ca:	8522                	mv	a0,s0
802031cc:	9782                	jalr	a5
802031ce:	585c                	lw	a5,52(s0)
802031d0:	d3dd                	beqz	a5,80203176 <rt_hw_serial_isr+0x32>
802031d2:	45b2                	lw	a1,12(sp)
802031d4:	8522                	mv	a0,s0
802031d6:	9782                	jalr	a5
802031d8:	bf79                	j	80203176 <rt_hw_serial_isr+0x32>
802031da:	493c                	lw	a5,80(a0)
802031dc:	84be                	mv	s1,a5
802031de:	ef89                	bnez	a5,802031f8 <rt_hw_serial_isr+0xb4>
802031e0:	57f00613          	li	a2,1407
802031e4:	00006597          	auipc	a1,0x6
802031e8:	9f458593          	addi	a1,a1,-1548 # 80208bd8 <__FUNCTION__.2>
802031ec:	00005517          	auipc	a0,0x5
802031f0:	c8c50513          	addi	a0,a0,-884 # 80207e78 <rt_system_timer_thread_init+0xd20>
802031f4:	575010ef          	jal	80204f68 <rt_assert_handler>
802031f8:	5afd                	li	s5,-1
802031fa:	0584091b          	addiw	s2,s0,88
802031fe:	4985                	li	s3,1
80203200:	0000ea17          	auipc	s4,0xe
80203204:	328a0a13          	addi	s4,s4,808 # 80211528 <already_output.1>
80203208:	407c                	lw	a5,68(s0)
8020320a:	8522                	mv	a0,s0
8020320c:	47dc                	lw	a5,12(a5)
8020320e:	9782                	jalr	a5
80203210:	8b2a                	mv	s6,a0
80203212:	07550263          	beq	a0,s5,80203276 <rt_hw_serial_isr+0x132>
80203216:	854a                	mv	a0,s2
80203218:	444000ef          	jal	8020365c <rt_spin_lock_irqsave>
8020321c:	4098                	lw	a4,0(s1)
8020321e:	0044d783          	lhu	a5,4(s1)
80203222:	85aa                	mv	a1,a0
80203224:	9fb9                	addw	a5,a5,a4
80203226:	01678023          	sb	s6,0(a5)
8020322a:	0044d783          	lhu	a5,4(s1)
8020322e:	4478                	lw	a4,76(s0)
80203230:	2785                	addiw	a5,a5,1
80203232:	00a7571b          	srliw	a4,a4,0xa
80203236:	17c2                	slli	a5,a5,0x30
80203238:	1742                	slli	a4,a4,0x30
8020323a:	93c1                	srli	a5,a5,0x30
8020323c:	9341                	srli	a4,a4,0x30
8020323e:	00e7e363          	bltu	a5,a4,80203244 <rt_hw_serial_isr+0x100>
80203242:	4781                	li	a5,0
80203244:	0064d683          	lhu	a3,6(s1)
80203248:	00f49223          	sh	a5,4(s1)
8020324c:	02f69163          	bne	a3,a5,8020326e <rt_hw_serial_isr+0x12a>
80203250:	2785                	addiw	a5,a5,1
80203252:	17c2                	slli	a5,a5,0x30
80203254:	93c1                	srli	a5,a5,0x30
80203256:	0134a423          	sw	s3,8(s1)
8020325a:	00e7e363          	bltu	a5,a4,80203260 <rt_hw_serial_isr+0x11c>
8020325e:	4781                	li	a5,0
80203260:	00f49323          	sh	a5,6(s1)
80203264:	000a2783          	lw	a5,0(s4)
80203268:	e399                	bnez	a5,8020326e <rt_hw_serial_isr+0x12a>
8020326a:	013a2023          	sw	s3,0(s4)
8020326e:	854a                	mv	a0,s2
80203270:	406000ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80203274:	bf51                	j	80203208 <rt_hw_serial_isr+0xc4>
80203276:	503c                	lw	a5,96(s0)
80203278:	cf89                	beqz	a5,80203292 <rt_hw_serial_isr+0x14e>
8020327a:	5068                	lw	a0,100(s0)
8020327c:	6406                	ld	s0,64(sp)
8020327e:	60a6                	ld	ra,72(sp)
80203280:	74e2                	ld	s1,56(sp)
80203282:	7942                	ld	s2,48(sp)
80203284:	79a2                	ld	s3,40(sp)
80203286:	7a02                	ld	s4,32(sp)
80203288:	6ae2                	ld	s5,24(sp)
8020328a:	6b42                	ld	s6,16(sp)
8020328c:	0501011b          	addiw	sp,sp,80
80203290:	8782                	jr	a5
80203292:	581c                	lw	a5,48(s0)
80203294:	ee0781e3          	beqz	a5,80203176 <rt_hw_serial_isr+0x32>
80203298:	0584091b          	addiw	s2,s0,88
8020329c:	854a                	mv	a0,s2
8020329e:	3be000ef          	jal	8020365c <rt_spin_lock_irqsave>
802032a2:	0044d703          	lhu	a4,4(s1)
802032a6:	0064d783          	lhu	a5,6(s1)
802032aa:	85aa                	mv	a1,a0
802032ac:	02f76763          	bltu	a4,a5,802032da <rt_hw_serial_isr+0x196>
802032b0:	40f704bb          	subw	s1,a4,a5
802032b4:	854a                	mv	a0,s2
802032b6:	3c0000ef          	jal	80203676 <rt_spin_unlock_irqrestore>
802032ba:	ea048ee3          	beqz	s1,80203176 <rt_hw_serial_isr+0x32>
802032be:	581c                	lw	a5,48(s0)
802032c0:	8522                	mv	a0,s0
802032c2:	6406                	ld	s0,64(sp)
802032c4:	60a6                	ld	ra,72(sp)
802032c6:	7942                	ld	s2,48(sp)
802032c8:	79a2                	ld	s3,40(sp)
802032ca:	7a02                	ld	s4,32(sp)
802032cc:	6ae2                	ld	s5,24(sp)
802032ce:	6b42                	ld	s6,16(sp)
802032d0:	85a6                	mv	a1,s1
802032d2:	74e2                	ld	s1,56(sp)
802032d4:	0501011b          	addiw	sp,sp,80
802032d8:	8782                	jr	a5
802032da:	4464                	lw	s1,76(s0)
802032dc:	9f99                	subw	a5,a5,a4
802032de:	00a4d49b          	srliw	s1,s1,0xa
802032e2:	0104949b          	slliw	s1,s1,0x10
802032e6:	0104d49b          	srliw	s1,s1,0x10
802032ea:	9c9d                	subw	s1,s1,a5
802032ec:	b7e1                	j	802032b4 <rt_hw_serial_isr+0x170>
802032ee:	6406                	ld	s0,64(sp)
802032f0:	60a6                	ld	ra,72(sp)
802032f2:	74e2                	ld	s1,56(sp)
802032f4:	7942                	ld	s2,48(sp)
802032f6:	79a2                	ld	s3,40(sp)
802032f8:	7a02                	ld	s4,32(sp)
802032fa:	6ae2                	ld	s5,24(sp)
802032fc:	6b42                	ld	s6,16(sp)
802032fe:	4968                	lw	a0,84(a0)
80203300:	0501011b          	addiw	sp,sp,80
80203304:	8f1fe06f          	j	80201bf4 <rt_completion_done>
80203308:	00092023          	sw	zero,0(s2)
8020330c:	b5c9                	j	802031ce <rt_hw_serial_isr+0x8a>
8020330e:	457c                	lw	a5,76(a0)
80203310:	4085d49b          	sraiw	s1,a1,0x8
80203314:	02679713          	slli	a4,a5,0x26
80203318:	9341                	srli	a4,a4,0x30
8020331a:	e731                	bnez	a4,80203366 <rt_hw_serial_isr+0x222>
8020331c:	493c                	lw	a5,80(a0)
8020331e:	893e                	mv	s2,a5
80203320:	ef89                	bnez	a5,8020333a <rt_hw_serial_isr+0x1f6>
80203322:	5e900613          	li	a2,1513
80203326:	00006597          	auipc	a1,0x6
8020332a:	8b258593          	addi	a1,a1,-1870 # 80208bd8 <__FUNCTION__.2>
8020332e:	00005517          	auipc	a0,0x5
80203332:	b6250513          	addi	a0,a0,-1182 # 80207e90 <rt_system_timer_thread_init+0xd38>
80203336:	433010ef          	jal	80204f68 <rt_assert_handler>
8020333a:	581c                	lw	a5,48(s0)
8020333c:	ef89                	bnez	a5,80203356 <rt_hw_serial_isr+0x212>
8020333e:	5eb00613          	li	a2,1515
80203342:	00006597          	auipc	a1,0x6
80203346:	89658593          	addi	a1,a1,-1898 # 80208bd8 <__FUNCTION__.2>
8020334a:	00005517          	auipc	a0,0x5
8020334e:	c3650513          	addi	a0,a0,-970 # 80207f80 <rt_system_timer_thread_init+0xe28>
80203352:	417010ef          	jal	80204f68 <rt_assert_handler>
80203356:	581c                	lw	a5,48(s0)
80203358:	0004859b          	sext.w	a1,s1
8020335c:	8522                	mv	a0,s0
8020335e:	9782                	jalr	a5
80203360:	00092023          	sw	zero,0(s2)
80203364:	bd09                	j	80203176 <rt_hw_serial_isr+0x32>
80203366:	05850a1b          	addiw	s4,a0,88
8020336a:	8552                	mv	a0,s4
8020336c:	2f0000ef          	jal	8020365c <rt_spin_lock_irqsave>
80203370:	483c                	lw	a5,80(s0)
80203372:	89aa                	mv	s3,a0
80203374:	893e                	mv	s2,a5
80203376:	ef89                	bnez	a5,80203390 <rt_hw_serial_isr+0x24c>
80203378:	1ce00613          	li	a2,462
8020337c:	00006597          	auipc	a1,0x6
80203380:	83c58593          	addi	a1,a1,-1988 # 80208bb8 <__FUNCTION__.0>
80203384:	00005517          	auipc	a0,0x5
80203388:	af450513          	addi	a0,a0,-1292 # 80207e78 <rt_system_timer_thread_init+0xd20>
8020338c:	3dd010ef          	jal	80204f68 <rt_assert_handler>
80203390:	00495703          	lhu	a4,4(s2)
80203394:	00695603          	lhu	a2,6(s2)
80203398:	00e487bb          	addw	a5,s1,a4
8020339c:	17c2                	slli	a5,a5,0x30
8020339e:	93c1                	srli	a5,a5,0x30
802033a0:	00f91223          	sh	a5,4(s2)
802033a4:	0007869b          	sext.w	a3,a5
802033a8:	04c76163          	bltu	a4,a2,802033ea <rt_hw_serial_isr+0x2a6>
802033ac:	4478                	lw	a4,76(s0)
802033ae:	00a7571b          	srliw	a4,a4,0xa
802033b2:	1742                	slli	a4,a4,0x30
802033b4:	9341                	srli	a4,a4,0x30
802033b6:	04e6e863          	bltu	a3,a4,80203406 <rt_hw_serial_isr+0x2c2>
802033ba:	02e7f7bb          	remuw	a5,a5,a4
802033be:	17c2                	slli	a5,a5,0x30
802033c0:	93c1                	srli	a5,a5,0x30
802033c2:	00f91223          	sh	a5,4(s2)
802033c6:	04c7e063          	bltu	a5,a2,80203406 <rt_hw_serial_isr+0x2c2>
802033ca:	4785                	li	a5,1
802033cc:	00f92423          	sw	a5,8(s2)
802033d0:	0000e797          	auipc	a5,0xe
802033d4:	15878793          	addi	a5,a5,344 # 80211528 <already_output.1>
802033d8:	4398                	lw	a4,0(a5)
802033da:	e319                	bnez	a4,802033e0 <rt_hw_serial_isr+0x29c>
802033dc:	4705                	li	a4,1
802033de:	c398                	sw	a4,0(a5)
802033e0:	00495783          	lhu	a5,4(s2)
802033e4:	00f91323          	sh	a5,6(s2)
802033e8:	a025                	j	80203410 <rt_hw_serial_isr+0x2cc>
802033ea:	00c6ee63          	bltu	a3,a2,80203406 <rt_hw_serial_isr+0x2c2>
802033ee:	4478                	lw	a4,76(s0)
802033f0:	00a7571b          	srliw	a4,a4,0xa
802033f4:	1742                	slli	a4,a4,0x30
802033f6:	9341                	srli	a4,a4,0x30
802033f8:	fce6e9e3          	bltu	a3,a4,802033ca <rt_hw_serial_isr+0x286>
802033fc:	02e7f7bb          	remuw	a5,a5,a4
80203400:	00f91223          	sh	a5,4(s2)
80203404:	b7d9                	j	802033ca <rt_hw_serial_isr+0x286>
80203406:	00892703          	lw	a4,8(s2)
8020340a:	4785                	li	a5,1
8020340c:	fcf702e3          	beq	a4,a5,802033d0 <rt_hw_serial_isr+0x28c>
80203410:	8522                	mv	a0,s0
80203412:	aa2ff0ef          	jal	802026b4 <_serial_fifo_calc_recved_len>
80203416:	84aa                	mv	s1,a0
80203418:	85ce                	mv	a1,s3
8020341a:	8552                	mv	a0,s4
8020341c:	25a000ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80203420:	581c                	lw	a5,48(s0)
80203422:	d4078ae3          	beqz	a5,80203176 <rt_hw_serial_isr+0x32>
80203426:	8522                	mv	a0,s0
80203428:	6406                	ld	s0,64(sp)
8020342a:	60a6                	ld	ra,72(sp)
8020342c:	7942                	ld	s2,48(sp)
8020342e:	79a2                	ld	s3,40(sp)
80203430:	7a02                	ld	s4,32(sp)
80203432:	6ae2                	ld	s5,24(sp)
80203434:	6b42                	ld	s6,16(sp)
80203436:	0004859b          	sext.w	a1,s1
8020343a:	74e2                	ld	s1,56(sp)
8020343c:	0501011b          	addiw	sp,sp,80
80203440:	8782                	jr	a5

80203442 <rt_tick_get>:
80203442:	3141                	addiw	sp,sp,-16
80203444:	e406                	sd	ra,8(sp)
80203446:	e022                	sd	s0,0(sp)
80203448:	fb1fc0ef          	jal	802003f8 <rt_hw_interrupt_disable>
8020344c:	0000e417          	auipc	s0,0xe
80203450:	0e442403          	lw	s0,228(s0) # 80211530 <rt_tick>
80203454:	f9ffc0ef          	jal	802003f2 <rt_hw_interrupt_enable>
80203458:	60a2                	ld	ra,8(sp)
8020345a:	8522                	mv	a0,s0
8020345c:	6402                	ld	s0,0(sp)
8020345e:	2141                	addiw	sp,sp,16
80203460:	8082                	ret

80203462 <rt_tick_increase>:
80203462:	3141                	addiw	sp,sp,-16
80203464:	e406                	sd	ra,8(sp)
80203466:	e022                	sd	s0,0(sp)
80203468:	72f000ef          	jal	80204396 <rt_interrupt_get_nest>
8020346c:	ed09                	bnez	a0,80203486 <rt_tick_increase+0x24>
8020346e:	07600613          	li	a2,118
80203472:	00006597          	auipc	a1,0x6
80203476:	88658593          	addi	a1,a1,-1914 # 80208cf8 <__FUNCTION__.0>
8020347a:	00005517          	auipc	a0,0x5
8020347e:	b2e50513          	addi	a0,a0,-1234 # 80207fa8 <rt_system_timer_thread_init+0xe50>
80203482:	2e7010ef          	jal	80204f68 <rt_assert_handler>
80203486:	0000e797          	auipc	a5,0xe
8020348a:	0a67a783          	lw	a5,166(a5) # 8021152c <rt_tick_hook>
8020348e:	c391                	beqz	a5,80203492 <rt_tick_increase+0x30>
80203490:	9782                	jalr	a5
80203492:	1a2030ef          	jal	80206634 <rt_thread_self>
80203496:	842a                	mv	s0,a0
80203498:	1f8000ef          	jal	80203690 <rt_cpu_self>
8020349c:	0c042783          	lw	a5,192(s0)
802034a0:	2785                	addiw	a5,a5,1
802034a2:	0cf42023          	sw	a5,192(s0)
802034a6:	451c                	lw	a5,8(a0)
802034a8:	2785                	addiw	a5,a5,1
802034aa:	c51c                	sw	a5,8(a0)
802034ac:	f4dfc0ef          	jal	802003f8 <rt_hw_interrupt_disable>
802034b0:	0000e797          	auipc	a5,0xe
802034b4:	08078793          	addi	a5,a5,128 # 80211530 <rt_tick>
802034b8:	4398                	lw	a4,0(a5)
802034ba:	4398                	lw	a4,0(a5)
802034bc:	2705                	addiw	a4,a4,1
802034be:	c398                	sw	a4,0(a5)
802034c0:	f33fc0ef          	jal	802003f2 <rt_hw_interrupt_enable>
802034c4:	7e6020ef          	jal	80205caa <rt_sched_tick_increase>
802034c8:	6402                	ld	s0,0(sp)
802034ca:	60a2                	ld	ra,8(sp)
802034cc:	2141                	addiw	sp,sp,16
802034ce:	31b0306f          	j	80206fe8 <rt_timer_check>

802034d2 <rti_start>:
802034d2:	4501                	li	a0,0
802034d4:	8082                	ret

802034d6 <rti_end>:
802034d6:	4501                	li	a0,0
802034d8:	8082                	ret

802034da <rti_board_start>:
802034da:	4501                	li	a0,0
802034dc:	8082                	ret

802034de <rti_board_end>:
802034de:	4501                	li	a0,0
802034e0:	8082                	ret

802034e2 <rt_components_board_init>:
802034e2:	fd01011b          	addiw	sp,sp,-48
802034e6:	ec26                	sd	s1,24(sp)
802034e8:	00006497          	auipc	s1,0x6
802034ec:	e2048493          	addi	s1,s1,-480 # 80209308 <__rt_init_desc_rti_board_end>
802034f0:	f022                	sd	s0,32(sp)
802034f2:	e84a                	sd	s2,16(sp)
802034f4:	e44e                	sd	s3,8(sp)
802034f6:	f406                	sd	ra,40(sp)
802034f8:	00006417          	auipc	s0,0x6
802034fc:	df840413          	addi	s0,s0,-520 # 802092f0 <__rt_init_desc_rti_board_start>
80203500:	2481                	sext.w	s1,s1
80203502:	00005917          	auipc	s2,0x5
80203506:	ac690913          	addi	s2,s2,-1338 # 80207fc8 <rt_system_timer_thread_init+0xe70>
8020350a:	00005997          	auipc	s3,0x5
8020350e:	ace98993          	addi	s3,s3,-1330 # 80207fd8 <rt_system_timer_thread_init+0xe80>
80203512:	0004079b          	sext.w	a5,s0
80203516:	0097ea63          	bltu	a5,s1,8020352a <rt_components_board_init+0x48>
8020351a:	70a2                	ld	ra,40(sp)
8020351c:	7402                	ld	s0,32(sp)
8020351e:	64e2                	ld	s1,24(sp)
80203520:	6942                	ld	s2,16(sp)
80203522:	69a2                	ld	s3,8(sp)
80203524:	0301011b          	addiw	sp,sp,48
80203528:	8082                	ret
8020352a:	400c                	lw	a1,0(s0)
8020352c:	854a                	mv	a0,s2
8020352e:	087010ef          	jal	80204db4 <rt_kprintf>
80203532:	405c                	lw	a5,4(s0)
80203534:	2421                	addiw	s0,s0,8
80203536:	9782                	jalr	a5
80203538:	85aa                	mv	a1,a0
8020353a:	854e                	mv	a0,s3
8020353c:	079010ef          	jal	80204db4 <rt_kprintf>
80203540:	bfc9                	j	80203512 <rt_components_board_init+0x30>

80203542 <rt_components_init>:
80203542:	fd01011b          	addiw	sp,sp,-48
80203546:	ec26                	sd	s1,24(sp)
80203548:	00005517          	auipc	a0,0x5
8020354c:	aa050513          	addi	a0,a0,-1376 # 80207fe8 <rt_system_timer_thread_init+0xe90>
80203550:	00006497          	auipc	s1,0x6
80203554:	dc848493          	addi	s1,s1,-568 # 80209318 <__rt_init_desc_rti_end>
80203558:	f022                	sd	s0,32(sp)
8020355a:	e84a                	sd	s2,16(sp)
8020355c:	e44e                	sd	s3,8(sp)
8020355e:	f406                	sd	ra,40(sp)
80203560:	00006417          	auipc	s0,0x6
80203564:	da840413          	addi	s0,s0,-600 # 80209308 <__rt_init_desc_rti_board_end>
80203568:	04d010ef          	jal	80204db4 <rt_kprintf>
8020356c:	2481                	sext.w	s1,s1
8020356e:	00005917          	auipc	s2,0x5
80203572:	a5a90913          	addi	s2,s2,-1446 # 80207fc8 <rt_system_timer_thread_init+0xe70>
80203576:	00005997          	auipc	s3,0x5
8020357a:	a6298993          	addi	s3,s3,-1438 # 80207fd8 <rt_system_timer_thread_init+0xe80>
8020357e:	0004079b          	sext.w	a5,s0
80203582:	0097ea63          	bltu	a5,s1,80203596 <rt_components_init+0x54>
80203586:	70a2                	ld	ra,40(sp)
80203588:	7402                	ld	s0,32(sp)
8020358a:	64e2                	ld	s1,24(sp)
8020358c:	6942                	ld	s2,16(sp)
8020358e:	69a2                	ld	s3,8(sp)
80203590:	0301011b          	addiw	sp,sp,48
80203594:	8082                	ret
80203596:	400c                	lw	a1,0(s0)
80203598:	854a                	mv	a0,s2
8020359a:	01b010ef          	jal	80204db4 <rt_kprintf>
8020359e:	405c                	lw	a5,4(s0)
802035a0:	2421                	addiw	s0,s0,8
802035a2:	9782                	jalr	a5
802035a4:	85aa                	mv	a1,a0
802035a6:	854e                	mv	a0,s3
802035a8:	00d010ef          	jal	80204db4 <rt_kprintf>
802035ac:	bfc9                	j	8020357e <rt_components_init+0x3c>

802035ae <main_thread_entry>:
802035ae:	3141                	addiw	sp,sp,-16
802035b0:	e406                	sd	ra,8(sp)
802035b2:	f91ff0ef          	jal	80203542 <rt_components_init>
802035b6:	60a2                	ld	ra,8(sp)
802035b8:	2141                	addiw	sp,sp,16
802035ba:	92afe06f          	j	802016e4 <main>

802035be <rt_application_init>:
802035be:	3141                	addiw	sp,sp,-16
802035c0:	47d1                	li	a5,20
802035c2:	4729                	li	a4,10
802035c4:	6691                	lui	a3,0x4
802035c6:	4601                	li	a2,0
802035c8:	00000597          	auipc	a1,0x0
802035cc:	fe658593          	addi	a1,a1,-26 # 802035ae <main_thread_entry>
802035d0:	00005517          	auipc	a0,0x5
802035d4:	a3850513          	addi	a0,a0,-1480 # 80208008 <rt_system_timer_thread_init+0xeb0>
802035d8:	e022                	sd	s0,0(sp)
802035da:	e406                	sd	ra,8(sp)
802035dc:	10c030ef          	jal	802066e8 <rt_thread_create>
802035e0:	0005079b          	sext.w	a5,a0
802035e4:	843e                	mv	s0,a5
802035e6:	ef89                	bnez	a5,80203600 <rt_application_init+0x42>
802035e8:	0d800613          	li	a2,216
802035ec:	00005597          	auipc	a1,0x5
802035f0:	72458593          	addi	a1,a1,1828 # 80208d10 <__FUNCTION__.0>
802035f4:	00005517          	auipc	a0,0x5
802035f8:	a1c50513          	addi	a0,a0,-1508 # 80208010 <rt_system_timer_thread_init+0xeb8>
802035fc:	16d010ef          	jal	80204f68 <rt_assert_handler>
80203600:	8522                	mv	a0,s0
80203602:	6402                	ld	s0,0(sp)
80203604:	60a2                	ld	ra,8(sp)
80203606:	2141                	addiw	sp,sp,16
80203608:	4ba0306f          	j	80206ac2 <rt_thread_startup>

8020360c <rtthread_startup>:
8020360c:	3141                	addiw	sp,sp,-16
8020360e:	e406                	sd	ra,8(sp)
80203610:	de9fc0ef          	jal	802003f8 <rt_hw_interrupt_disable>
80203614:	916fe0ef          	jal	8020172a <rt_hw_board_init>
80203618:	7f6010ef          	jal	80204e0e <rt_show_version>
8020361c:	325030ef          	jal	80207140 <rt_system_timer_init>
80203620:	7fa020ef          	jal	80205e1a <rt_system_scheduler_init>
80203624:	5a7020ef          	jal	802063ca <rt_system_signal_init>
80203628:	f97ff0ef          	jal	802035be <rt_application_init>
8020362c:	32d030ef          	jal	80207158 <rt_system_timer_thread_init>
80203630:	178000ef          	jal	802037a8 <rt_thread_idle_init>
80203634:	1a3020ef          	jal	80205fd6 <rt_system_scheduler_start>
80203638:	60a2                	ld	ra,8(sp)
8020363a:	4501                	li	a0,0
8020363c:	2141                	addiw	sp,sp,16
8020363e:	8082                	ret

80203640 <entry>:
80203640:	3141                	addiw	sp,sp,-16
80203642:	e406                	sd	ra,8(sp)
80203644:	fc9ff0ef          	jal	8020360c <rtthread_startup>
80203648:	60a2                	ld	ra,8(sp)
8020364a:	4501                	li	a0,0
8020364c:	2141                	addiw	sp,sp,16
8020364e:	8082                	ret

80203650 <rt_spin_lock_init>:
80203650:	8082                	ret

80203652 <rt_spin_lock>:
80203652:	3710206f          	j	802061c2 <rt_enter_critical>

80203656 <rt_spin_unlock>:
80203656:	4501                	li	a0,0
80203658:	3ed0206f          	j	80206244 <rt_exit_critical_safe>

8020365c <rt_spin_lock_irqsave>:
8020365c:	3141                	addiw	sp,sp,-16
8020365e:	e406                	sd	ra,8(sp)
80203660:	e022                	sd	s0,0(sp)
80203662:	d97fc0ef          	jal	802003f8 <rt_hw_interrupt_disable>
80203666:	842a                	mv	s0,a0
80203668:	35b020ef          	jal	802061c2 <rt_enter_critical>
8020366c:	60a2                	ld	ra,8(sp)
8020366e:	8522                	mv	a0,s0
80203670:	6402                	ld	s0,0(sp)
80203672:	2141                	addiw	sp,sp,16
80203674:	8082                	ret

80203676 <rt_spin_unlock_irqrestore>:
80203676:	3141                	addiw	sp,sp,-16
80203678:	4501                	li	a0,0
8020367a:	e022                	sd	s0,0(sp)
8020367c:	e406                	sd	ra,8(sp)
8020367e:	842e                	mv	s0,a1
80203680:	3c5020ef          	jal	80206244 <rt_exit_critical_safe>
80203684:	8522                	mv	a0,s0
80203686:	6402                	ld	s0,0(sp)
80203688:	60a2                	ld	ra,8(sp)
8020368a:	2141                	addiw	sp,sp,16
8020368c:	d67fc06f          	j	802003f2 <rt_hw_interrupt_enable>

80203690 <rt_cpu_self>:
80203690:	0000e517          	auipc	a0,0xe
80203694:	4a850513          	addi	a0,a0,1192 # 80211b38 <_cpu>
80203698:	8082                	ret

8020369a <rt_cpu_index>:
8020369a:	e511                	bnez	a0,802036a6 <rt_cpu_index+0xc>
8020369c:	0000e517          	auipc	a0,0xe
802036a0:	49c50513          	addi	a0,a0,1180 # 80211b38 <_cpu>
802036a4:	8082                	ret
802036a6:	4501                	li	a0,0
802036a8:	8082                	ret

802036aa <rt_thread_defunct_enqueue>:
802036aa:	3141                	addiw	sp,sp,-16
802036ac:	e022                	sd	s0,0(sp)
802036ae:	842a                	mv	s0,a0
802036b0:	0000e517          	auipc	a0,0xe
802036b4:	e8850513          	addi	a0,a0,-376 # 80211538 <_defunct_spinlock>
802036b8:	e406                	sd	ra,8(sp)
802036ba:	fa3ff0ef          	jal	8020365c <rt_spin_lock_irqsave>
802036be:	00006797          	auipc	a5,0x6
802036c2:	dd278793          	addi	a5,a5,-558 # 80209490 <_rt_thread_defunct>
802036c6:	4394                	lw	a3,0(a5)
802036c8:	03c4071b          	addiw	a4,s0,60
802036cc:	60a2                	ld	ra,8(sp)
802036ce:	c2d8                	sw	a4,4(a3)
802036d0:	dc54                	sw	a3,60(s0)
802036d2:	c03c                	sw	a5,64(s0)
802036d4:	6402                	ld	s0,0(sp)
802036d6:	c398                	sw	a4,0(a5)
802036d8:	85aa                	mv	a1,a0
802036da:	0000e517          	auipc	a0,0xe
802036de:	e5e50513          	addi	a0,a0,-418 # 80211538 <_defunct_spinlock>
802036e2:	2141                	addiw	sp,sp,16
802036e4:	bf49                	j	80203676 <rt_spin_unlock_irqrestore>

802036e6 <rt_thread_defunct_dequeue>:
802036e6:	3101                	addiw	sp,sp,-32
802036e8:	00006797          	auipc	a5,0x6
802036ec:	da878793          	addi	a5,a5,-600 # 80209490 <_rt_thread_defunct>
802036f0:	e822                	sd	s0,16(sp)
802036f2:	4380                	lw	s0,0(a5)
802036f4:	e04a                	sd	s2,0(sp)
802036f6:	ec06                	sd	ra,24(sp)
802036f8:	e426                	sd	s1,8(sp)
802036fa:	2781                	sext.w	a5,a5
802036fc:	4901                	li	s2,0
802036fe:	00f40e63          	beq	s0,a5,8020371a <rt_thread_defunct_dequeue+0x34>
80203702:	cf7fc0ef          	jal	802003f8 <rt_hw_interrupt_disable>
80203706:	4018                	lw	a4,0(s0)
80203708:	405c                	lw	a5,4(s0)
8020370a:	fc44091b          	addiw	s2,s0,-60
8020370e:	c35c                	sw	a5,4(a4)
80203710:	c398                	sw	a4,0(a5)
80203712:	c040                	sw	s0,4(s0)
80203714:	c000                	sw	s0,0(s0)
80203716:	cddfc0ef          	jal	802003f2 <rt_hw_interrupt_enable>
8020371a:	60e2                	ld	ra,24(sp)
8020371c:	6442                	ld	s0,16(sp)
8020371e:	64a2                	ld	s1,8(sp)
80203720:	854a                	mv	a0,s2
80203722:	6902                	ld	s2,0(sp)
80203724:	0201011b          	addiw	sp,sp,32
80203728:	8082                	ret

8020372a <idle_thread_entry>:
8020372a:	fc01011b          	addiw	sp,sp,-64
8020372e:	ec4e                	sd	s3,24(sp)
80203730:	e852                	sd	s4,16(sp)
80203732:	0000e997          	auipc	s3,0xe
80203736:	42e98993          	addi	s3,s3,1070 # 80211b60 <idle_thread_stack>
8020373a:	0000ea17          	auipc	s4,0xe
8020373e:	416a0a13          	addi	s4,s4,1046 # 80211b50 <idle_hook_list>
80203742:	e456                	sd	s5,8(sp)
80203744:	fc06                	sd	ra,56(sp)
80203746:	f822                	sd	s0,48(sp)
80203748:	f426                	sd	s1,40(sp)
8020374a:	f04a                	sd	s2,32(sp)
8020374c:	e05a                	sd	s6,0(sp)
8020374e:	2a01                	sext.w	s4,s4
80203750:	2981                	sext.w	s3,s3
80203752:	4a85                	li	s5,1
80203754:	8452                	mv	s0,s4
80203756:	401c                	lw	a5,0(s0)
80203758:	c391                	beqz	a5,8020375c <idle_thread_entry+0x32>
8020375a:	9782                	jalr	a5
8020375c:	2411                	addiw	s0,s0,4
8020375e:	ff341ce3          	bne	s0,s3,80203756 <idle_thread_entry+0x2c>
80203762:	f85ff0ef          	jal	802036e6 <rt_thread_defunct_dequeue>
80203766:	0005079b          	sext.w	a5,a0
8020376a:	843e                	mv	s0,a5
8020376c:	d7e5                	beqz	a5,80203754 <idle_thread_entry+0x2a>
8020376e:	3f1020ef          	jal	8020635e <rt_thread_free_sig>
80203772:	09442483          	lw	s1,148(s0)
80203776:	8522                	mv	a0,s0
80203778:	2e4020ef          	jal	80205a5c <rt_object_is_systemobject>
8020377c:	8b26                	mv	s6,s1
8020377e:	892a                	mv	s2,a0
80203780:	2481                	sext.w	s1,s1
80203782:	01551963          	bne	a0,s5,80203794 <idle_thread_entry+0x6a>
80203786:	8522                	mv	a0,s0
80203788:	0c0020ef          	jal	80205848 <rt_object_detach>
8020378c:	d8f9                	beqz	s1,80203762 <idle_thread_entry+0x38>
8020378e:	8522                	mv	a0,s0
80203790:	9b02                	jalr	s6
80203792:	a011                	j	80203796 <idle_thread_entry+0x6c>
80203794:	fced                	bnez	s1,8020378e <idle_thread_entry+0x64>
80203796:	fc0916e3          	bnez	s2,80203762 <idle_thread_entry+0x38>
8020379a:	5808                	lw	a0,48(s0)
8020379c:	10b010ef          	jal	802050a6 <rt_free>
802037a0:	8522                	mv	a0,s0
802037a2:	208020ef          	jal	802059aa <rt_object_delete>
802037a6:	bf75                	j	80203762 <idle_thread_entry+0x38>

802037a8 <rt_thread_idle_init>:
802037a8:	fd01011b          	addiw	sp,sp,-48
802037ac:	4681                	li	a3,0
802037ae:	00005617          	auipc	a2,0x5
802037b2:	87260613          	addi	a2,a2,-1934 # 80208020 <rt_system_timer_thread_init+0xec8>
802037b6:	45e1                	li	a1,24
802037b8:	0081051b          	addiw	a0,sp,8
802037bc:	f406                	sd	ra,40(sp)
802037be:	326010ef          	jal	80204ae4 <rt_snprintf>
802037c2:	0081059b          	addiw	a1,sp,8
802037c6:	02000893          	li	a7,32
802037ca:	487d                	li	a6,31
802037cc:	6791                	lui	a5,0x4
802037ce:	0000e717          	auipc	a4,0xe
802037d2:	39270713          	addi	a4,a4,914 # 80211b60 <idle_thread_stack>
802037d6:	4681                	li	a3,0
802037d8:	00000617          	auipc	a2,0x0
802037dc:	f5260613          	addi	a2,a2,-174 # 8020372a <idle_thread_entry>
802037e0:	00012517          	auipc	a0,0x12
802037e4:	38050513          	addi	a0,a0,896 # 80215b60 <idle_thread>
802037e8:	59d020ef          	jal	80206584 <rt_thread_init>
802037ec:	4501                	li	a0,0
802037ee:	eadff0ef          	jal	8020369a <rt_cpu_index>
802037f2:	00012797          	auipc	a5,0x12
802037f6:	36e78793          	addi	a5,a5,878 # 80215b60 <idle_thread>
802037fa:	c15c                	sw	a5,4(a0)
802037fc:	853e                	mv	a0,a5
802037fe:	2c4030ef          	jal	80206ac2 <rt_thread_startup>
80203802:	70a2                	ld	ra,40(sp)
80203804:	0301011b          	addiw	sp,sp,48
80203808:	8082                	ret

8020380a <rt_list_remove>:
8020380a:	4118                	lw	a4,0(a0)
8020380c:	415c                	lw	a5,4(a0)
8020380e:	c35c                	sw	a5,4(a4)
80203810:	c398                	sw	a4,0(a5)
80203812:	c148                	sw	a0,4(a0)
80203814:	c108                	sw	a0,0(a0)
80203816:	8082                	ret

80203818 <_rt_sem_take>:
80203818:	fc01011b          	addiw	sp,sp,-64
8020381c:	f822                	sd	s0,48(sp)
8020381e:	f426                	sd	s1,40(sp)
80203820:	0005079b          	sext.w	a5,a0
80203824:	fc06                	sd	ra,56(sp)
80203826:	f04a                	sd	s2,32(sp)
80203828:	ec4e                	sd	s3,24(sp)
8020382a:	e852                	sd	s4,16(sp)
8020382c:	c62e                	sw	a1,12(sp)
8020382e:	843e                	mv	s0,a5
80203830:	84b2                	mv	s1,a2
80203832:	ef89                	bnez	a5,8020384c <_rt_sem_take+0x34>
80203834:	23500613          	li	a2,565
80203838:	00005597          	auipc	a1,0x5
8020383c:	56858593          	addi	a1,a1,1384 # 80208da0 <__FUNCTION__.34>
80203840:	00004517          	auipc	a0,0x4
80203844:	7e850513          	addi	a0,a0,2024 # 80208028 <rt_system_timer_thread_init+0xed0>
80203848:	720010ef          	jal	80204f68 <rt_assert_handler>
8020384c:	8522                	mv	a0,s0
8020384e:	244020ef          	jal	80205a92 <rt_object_get_type>
80203852:	4789                	li	a5,2
80203854:	00f50e63          	beq	a0,a5,80203870 <_rt_sem_take+0x58>
80203858:	23600613          	li	a2,566
8020385c:	00005597          	auipc	a1,0x5
80203860:	54458593          	addi	a1,a1,1348 # 80208da0 <__FUNCTION__.34>
80203864:	00004517          	auipc	a0,0x4
80203868:	7d450513          	addi	a0,a0,2004 # 80208038 <rt_system_timer_thread_init+0xee0>
8020386c:	6fc010ef          	jal	80204f68 <rt_assert_handler>
80203870:	0000e797          	auipc	a5,0xe
80203874:	cfc7a783          	lw	a5,-772(a5) # 8021156c <rt_object_trytake_hook>
80203878:	c399                	beqz	a5,8020387e <_rt_sem_take+0x66>
8020387a:	8522                	mv	a0,s0
8020387c:	9782                	jalr	a5
8020387e:	1cb020ef          	jal	80206248 <rt_critical_level>
80203882:	c51d                	beqz	a0,802038b0 <_rt_sem_take+0x98>
80203884:	00005597          	auipc	a1,0x5
80203888:	51c58593          	addi	a1,a1,1308 # 80208da0 <__FUNCTION__.34>
8020388c:	00004517          	auipc	a0,0x4
80203890:	4a450513          	addi	a0,a0,1188 # 80207d30 <rt_system_timer_thread_init+0xbd8>
80203894:	520010ef          	jal	80204db4 <rt_kprintf>
80203898:	23b00613          	li	a2,571
8020389c:	00005597          	auipc	a1,0x5
802038a0:	50458593          	addi	a1,a1,1284 # 80208da0 <__FUNCTION__.34>
802038a4:	00005517          	auipc	a0,0x5
802038a8:	e1450513          	addi	a0,a0,-492 # 802086b8 <rt_system_timer_thread_init+0x1560>
802038ac:	6bc010ef          	jal	80204f68 <rt_assert_handler>
802038b0:	585020ef          	jal	80206634 <rt_thread_self>
802038b4:	2501                	sext.w	a0,a0
802038b6:	e51d                	bnez	a0,802038e4 <_rt_sem_take+0xcc>
802038b8:	00005597          	auipc	a1,0x5
802038bc:	4e858593          	addi	a1,a1,1256 # 80208da0 <__FUNCTION__.34>
802038c0:	00004517          	auipc	a0,0x4
802038c4:	4a050513          	addi	a0,a0,1184 # 80207d60 <rt_system_timer_thread_init+0xc08>
802038c8:	4ec010ef          	jal	80204db4 <rt_kprintf>
802038cc:	23b00613          	li	a2,571
802038d0:	00005597          	auipc	a1,0x5
802038d4:	4d058593          	addi	a1,a1,1232 # 80208da0 <__FUNCTION__.34>
802038d8:	00005517          	auipc	a0,0x5
802038dc:	de050513          	addi	a0,a0,-544 # 802086b8 <rt_system_timer_thread_init+0x1560>
802038e0:	688010ef          	jal	80204f68 <rt_assert_handler>
802038e4:	2b3000ef          	jal	80204396 <rt_interrupt_get_nest>
802038e8:	c51d                	beqz	a0,80203916 <_rt_sem_take+0xfe>
802038ea:	00005597          	auipc	a1,0x5
802038ee:	4b658593          	addi	a1,a1,1206 # 80208da0 <__FUNCTION__.34>
802038f2:	00004517          	auipc	a0,0x4
802038f6:	4a650513          	addi	a0,a0,1190 # 80207d98 <rt_system_timer_thread_init+0xc40>
802038fa:	4ba010ef          	jal	80204db4 <rt_kprintf>
802038fe:	23b00613          	li	a2,571
80203902:	00005597          	auipc	a1,0x5
80203906:	49e58593          	addi	a1,a1,1182 # 80208da0 <__FUNCTION__.34>
8020390a:	00005517          	auipc	a0,0x5
8020390e:	dae50513          	addi	a0,a0,-594 # 802086b8 <rt_system_timer_thread_init+0x1560>
80203912:	656010ef          	jal	80204f68 <rt_assert_handler>
80203916:	03040a1b          	addiw	s4,s0,48
8020391a:	8552                	mv	a0,s4
8020391c:	d41ff0ef          	jal	8020365c <rt_spin_lock_irqsave>
80203920:	02c45783          	lhu	a5,44(s0)
80203924:	892a                	mv	s2,a0
80203926:	cf99                	beqz	a5,80203944 <_rt_sem_take+0x12c>
80203928:	37fd                	addiw	a5,a5,-1
8020392a:	85aa                	mv	a1,a0
8020392c:	02f41623          	sh	a5,44(s0)
80203930:	8552                	mv	a0,s4
80203932:	d45ff0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80203936:	0000e797          	auipc	a5,0xe
8020393a:	c327a783          	lw	a5,-974(a5) # 80211568 <rt_object_take_hook>
8020393e:	e7c1                	bnez	a5,802039c6 <_rt_sem_take+0x1ae>
80203940:	4481                	li	s1,0
80203942:	a809                	j	80203954 <_rt_sem_take+0x13c>
80203944:	47b2                	lw	a5,12(sp)
80203946:	e38d                	bnez	a5,80203968 <_rt_sem_take+0x150>
80203948:	85aa                	mv	a1,a0
8020394a:	8552                	mv	a0,s4
8020394c:	d2bff0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80203950:	f8c00493          	li	s1,-116
80203954:	70e2                	ld	ra,56(sp)
80203956:	7442                	ld	s0,48(sp)
80203958:	7902                	ld	s2,32(sp)
8020395a:	69e2                	ld	s3,24(sp)
8020395c:	6a42                	ld	s4,16(sp)
8020395e:	8526                	mv	a0,s1
80203960:	74a2                	ld	s1,40(sp)
80203962:	0401011b          	addiw	sp,sp,64
80203966:	8082                	ret
80203968:	4cd020ef          	jal	80206634 <rt_thread_self>
8020396c:	4791                	li	a5,4
8020396e:	dd1c                	sw	a5,56(a0)
80203970:	01944603          	lbu	a2,25(s0)
80203974:	86a6                	mv	a3,s1
80203976:	0244059b          	addiw	a1,s0,36
8020397a:	89aa                	mv	s3,a0
8020397c:	5f3020ef          	jal	8020676e <rt_thread_suspend_to_list>
80203980:	84aa                	mv	s1,a0
80203982:	c511                	beqz	a0,8020398e <_rt_sem_take+0x176>
80203984:	85ca                	mv	a1,s2
80203986:	8552                	mv	a0,s4
80203988:	cefff0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
8020398c:	b7e1                	j	80203954 <_rt_sem_take+0x13c>
8020398e:	47b2                	lw	a5,12(sp)
80203990:	00f05d63          	blez	a5,802039aa <_rt_sem_take+0x192>
80203994:	0589849b          	addiw	s1,s3,88
80203998:	00c1061b          	addiw	a2,sp,12
8020399c:	4581                	li	a1,0
8020399e:	8526                	mv	a0,s1
802039a0:	522030ef          	jal	80206ec2 <rt_timer_control>
802039a4:	8526                	mv	a0,s1
802039a6:	3a2030ef          	jal	80206d48 <rt_timer_start>
802039aa:	85ca                	mv	a1,s2
802039ac:	8552                	mv	a0,s4
802039ae:	cc9ff0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
802039b2:	676020ef          	jal	80206028 <rt_schedule>
802039b6:	0389a783          	lw	a5,56(s3)
802039ba:	dfb5                	beqz	a5,80203936 <_rt_sem_take+0x11e>
802039bc:	41f7d49b          	sraiw	s1,a5,0x1f
802039c0:	8fa5                	xor	a5,a5,s1
802039c2:	9c9d                	subw	s1,s1,a5
802039c4:	bf41                	j	80203954 <_rt_sem_take+0x13c>
802039c6:	8522                	mv	a0,s0
802039c8:	9782                	jalr	a5
802039ca:	bf9d                	j	80203940 <_rt_sem_take+0x128>

802039cc <_thread_get_mutex_priority>:
802039cc:	3141                	addiw	sp,sp,-16
802039ce:	e022                	sd	s0,0(sp)
802039d0:	e406                	sd	ra,8(sp)
802039d2:	842a                	mv	s0,a0
802039d4:	262020ef          	jal	80205c36 <rt_sched_thread_get_init_prio>
802039d8:	09842703          	lw	a4,152(s0)
802039dc:	0984041b          	addiw	s0,s0,152
802039e0:	0007079b          	sext.w	a5,a4
802039e4:	00879663          	bne	a5,s0,802039f0 <_thread_get_mutex_priority+0x24>
802039e8:	60a2                	ld	ra,8(sp)
802039ea:	6402                	ld	s0,0(sp)
802039ec:	2141                	addiw	sp,sp,16
802039ee:	8082                	ret
802039f0:	ff874603          	lbu	a2,-8(a4)
802039f4:	ff974683          	lbu	a3,-7(a4)
802039f8:	87b2                	mv	a5,a2
802039fa:	00c6f363          	bgeu	a3,a2,80203a00 <_thread_get_mutex_priority+0x34>
802039fe:	87b6                	mv	a5,a3
80203a00:	0ff7f693          	zext.b	a3,a5
80203a04:	00d57363          	bgeu	a0,a3,80203a0a <_thread_get_mutex_priority+0x3e>
80203a08:	87aa                	mv	a5,a0
80203a0a:	4318                	lw	a4,0(a4)
80203a0c:	0ff7f513          	zext.b	a0,a5
80203a10:	bfc1                	j	802039e0 <_thread_get_mutex_priority+0x14>

80203a12 <_check_and_update_prio>:
80203a12:	3101                	addiw	sp,sp,-32
80203a14:	e426                	sd	s1,8(sp)
80203a16:	ec06                	sd	ra,24(sp)
80203a18:	e822                	sd	s0,16(sp)
80203a1a:	02c5c703          	lbu	a4,44(a1)
80203a1e:	0ff00793          	li	a5,255
80203a22:	84aa                	mv	s1,a0
80203a24:	02f70063          	beq	a4,a5,80203a44 <_check_and_update_prio+0x32>
80203a28:	8526                	mv	a0,s1
80203a2a:	fa3ff0ef          	jal	802039cc <_thread_get_mutex_priority>
80203a2e:	85aa                	mv	a1,a0
80203a30:	8526                	mv	a0,s1
80203a32:	2b6020ef          	jal	80205ce8 <rt_sched_thread_change_priority>
80203a36:	4505                	li	a0,1
80203a38:	60e2                	ld	ra,24(sp)
80203a3a:	6442                	ld	s0,16(sp)
80203a3c:	64a2                	ld	s1,8(sp)
80203a3e:	0201011b          	addiw	sp,sp,32
80203a42:	8082                	ret
80203a44:	842e                	mv	s0,a1
80203a46:	1ea020ef          	jal	80205c30 <rt_sched_thread_get_curr_prio>
80203a4a:	02d44783          	lbu	a5,45(s0)
80203a4e:	fca78de3          	beq	a5,a0,80203a28 <_check_and_update_prio+0x16>
80203a52:	4501                	li	a0,0
80203a54:	b7d5                	j	80203a38 <_check_and_update_prio+0x26>

80203a56 <rt_susp_list_dequeue>:
80203a56:	fc01011b          	addiw	sp,sp,-64
80203a5a:	f822                	sd	s0,48(sp)
80203a5c:	f426                	sd	s1,40(sp)
80203a5e:	f04a                	sd	s2,32(sp)
80203a60:	fc06                	sd	ra,56(sp)
80203a62:	0005091b          	sext.w	s2,a0
80203a66:	ec4e                	sd	s3,24(sp)
80203a68:	844a                	mv	s0,s2
80203a6a:	84ae                	mv	s1,a1
80203a6c:	00091e63          	bnez	s2,80203a88 <rt_susp_list_dequeue+0x32>
80203a70:	07000613          	li	a2,112
80203a74:	00005597          	auipc	a1,0x5
80203a78:	36458593          	addi	a1,a1,868 # 80208dd8 <__FUNCTION__.40>
80203a7c:	00004517          	auipc	a0,0x4
80203a80:	60450513          	addi	a0,a0,1540 # 80208080 <rt_system_timer_thread_init+0xf28>
80203a84:	4e4010ef          	jal	80204f68 <rt_assert_handler>
80203a88:	00c1051b          	addiw	a0,sp,12
80203a8c:	35c020ef          	jal	80205de8 <rt_sched_lock>
80203a90:	4000                	lw	s0,0(s0)
80203a92:	89a2                	mv	s3,s0
80203a94:	00891f63          	bne	s2,s0,80203ab2 <rt_susp_list_dequeue+0x5c>
80203a98:	4401                	li	s0,0
80203a9a:	4532                	lw	a0,12(sp)
80203a9c:	36e020ef          	jal	80205e0a <rt_sched_unlock>
80203aa0:	70e2                	ld	ra,56(sp)
80203aa2:	8522                	mv	a0,s0
80203aa4:	7442                	ld	s0,48(sp)
80203aa6:	74a2                	ld	s1,40(sp)
80203aa8:	7902                	ld	s2,32(sp)
80203aaa:	69e2                	ld	s3,24(sp)
80203aac:	0401011b          	addiw	sp,sp,64
80203ab0:	8082                	ret
80203ab2:	fc44041b          	addiw	s0,s0,-60
80203ab6:	8522                	mv	a0,s0
80203ab8:	1ae020ef          	jal	80205c66 <rt_sched_thread_ready>
80203abc:	fd71                	bnez	a0,80203a98 <rt_susp_list_dequeue+0x42>
80203abe:	fc04cee3          	bltz	s1,80203a9a <rt_susp_list_dequeue+0x44>
80203ac2:	fe99ae23          	sw	s1,-4(s3)
80203ac6:	bfd1                	j	80203a9a <rt_susp_list_dequeue+0x44>

80203ac8 <rt_susp_list_resume_all_irq>:
80203ac8:	fd01011b          	addiw	sp,sp,-48
80203acc:	ec26                	sd	s1,24(sp)
80203ace:	e44e                	sd	s3,8(sp)
80203ad0:	e052                	sd	s4,0(sp)
80203ad2:	f406                	sd	ra,40(sp)
80203ad4:	f022                	sd	s0,32(sp)
80203ad6:	e84a                	sd	s2,16(sp)
80203ad8:	89aa                	mv	s3,a0
80203ada:	8a2e                	mv	s4,a1
80203adc:	84b2                	mv	s1,a2
80203ade:	8526                	mv	a0,s1
80203ae0:	b7dff0ef          	jal	8020365c <rt_spin_lock_irqsave>
80203ae4:	892a                	mv	s2,a0
80203ae6:	85d2                	mv	a1,s4
80203ae8:	854e                	mv	a0,s3
80203aea:	f6dff0ef          	jal	80203a56 <rt_susp_list_dequeue>
80203aee:	0005041b          	sext.w	s0,a0
80203af2:	85ca                	mv	a1,s2
80203af4:	8526                	mv	a0,s1
80203af6:	b81ff0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80203afa:	f075                	bnez	s0,80203ade <rt_susp_list_resume_all_irq+0x16>
80203afc:	70a2                	ld	ra,40(sp)
80203afe:	7402                	ld	s0,32(sp)
80203b00:	64e2                	ld	s1,24(sp)
80203b02:	6942                	ld	s2,16(sp)
80203b04:	69a2                	ld	s3,8(sp)
80203b06:	6a02                	ld	s4,0(sp)
80203b08:	4501                	li	a0,0
80203b0a:	0301011b          	addiw	sp,sp,48
80203b0e:	8082                	ret

80203b10 <rt_susp_list_enqueue>:
80203b10:	fd01011b          	addiw	sp,sp,-48
80203b14:	f022                	sd	s0,32(sp)
80203b16:	ec26                	sd	s1,24(sp)
80203b18:	f406                	sd	ra,40(sp)
80203b1a:	e84a                	sd	s2,16(sp)
80203b1c:	e44e                	sd	s3,8(sp)
80203b1e:	e052                	sd	s4,0(sp)
80203b20:	84aa                	mv	s1,a0
80203b22:	842e                	mv	s0,a1
80203b24:	ca0d                	beqz	a2,80203b56 <rt_susp_list_enqueue+0x46>
80203b26:	4785                	li	a5,1
80203b28:	00f60f63          	beq	a2,a5,80203b46 <rt_susp_list_enqueue+0x36>
80203b2c:	11800613          	li	a2,280
80203b30:	00005597          	auipc	a1,0x5
80203b34:	29058593          	addi	a1,a1,656 # 80208dc0 <__FUNCTION__.39>
80203b38:	00005517          	auipc	a0,0x5
80203b3c:	b8050513          	addi	a0,a0,-1152 # 802086b8 <rt_system_timer_thread_init+0x1560>
80203b40:	428010ef          	jal	80204f68 <rt_assert_handler>
80203b44:	a0a9                	j	80203b8e <rt_susp_list_enqueue+0x7e>
80203b46:	00052903          	lw	s2,0(a0)
80203b4a:	00050a1b          	sext.w	s4,a0
80203b4e:	0009079b          	sext.w	a5,s2
80203b52:	00fa1a63          	bne	s4,a5,80203b66 <rt_susp_list_enqueue+0x56>
80203b56:	40d8                	lw	a4,4(s1)
80203b58:	03c4079b          	addiw	a5,s0,60
80203b5c:	c31c                	sw	a5,0(a4)
80203b5e:	c038                	sw	a4,64(s0)
80203b60:	c0dc                	sw	a5,4(s1)
80203b62:	dc44                	sw	s1,60(s0)
80203b64:	a02d                	j	80203b8e <rt_susp_list_enqueue+0x7e>
80203b66:	8522                	mv	a0,s0
80203b68:	0c8020ef          	jal	80205c30 <rt_sched_thread_get_curr_prio>
80203b6c:	89aa                	mv	s3,a0
80203b6e:	fc49051b          	addiw	a0,s2,-60
80203b72:	0be020ef          	jal	80205c30 <rt_sched_thread_get_curr_prio>
80203b76:	02a9f663          	bgeu	s3,a0,80203ba2 <rt_susp_list_enqueue+0x92>
80203b7a:	00492703          	lw	a4,4(s2)
80203b7e:	03c4079b          	addiw	a5,s0,60
80203b82:	c31c                	sw	a5,0(a4)
80203b84:	c038                	sw	a4,64(s0)
80203b86:	00f92223          	sw	a5,4(s2)
80203b8a:	03242e23          	sw	s2,60(s0)
80203b8e:	70a2                	ld	ra,40(sp)
80203b90:	7402                	ld	s0,32(sp)
80203b92:	64e2                	ld	s1,24(sp)
80203b94:	6942                	ld	s2,16(sp)
80203b96:	69a2                	ld	s3,8(sp)
80203b98:	6a02                	ld	s4,0(sp)
80203b9a:	4501                	li	a0,0
80203b9c:	0301011b          	addiw	sp,sp,48
80203ba0:	8082                	ret
80203ba2:	00092903          	lw	s2,0(s2)
80203ba6:	b765                	j	80203b4e <rt_susp_list_enqueue+0x3e>

80203ba8 <_thread_update_priority.isra.0>:
80203ba8:	fc01011b          	addiw	sp,sp,-64
80203bac:	f426                	sd	s1,40(sp)
80203bae:	ec4e                	sd	s3,24(sp)
80203bb0:	fc06                	sd	ra,56(sp)
80203bb2:	f822                	sd	s0,48(sp)
80203bb4:	f04a                	sd	s2,32(sp)
80203bb6:	84aa                	mv	s1,a0
80203bb8:	498d                	li	s3,3
80203bba:	12e020ef          	jal	80205ce8 <rt_sched_thread_change_priority>
80203bbe:	e509                	bnez	a0,80203bc8 <_thread_update_priority.isra.0+0x20>
80203bc0:	8526                	mv	a0,s1
80203bc2:	07a020ef          	jal	80205c3c <rt_sched_thread_is_suspended>
80203bc6:	e909                	bnez	a0,80203bd8 <_thread_update_priority.isra.0+0x30>
80203bc8:	70e2                	ld	ra,56(sp)
80203bca:	7442                	ld	s0,48(sp)
80203bcc:	74a2                	ld	s1,40(sp)
80203bce:	7902                	ld	s2,32(sp)
80203bd0:	69e2                	ld	s3,24(sp)
80203bd2:	0401011b          	addiw	sp,sp,64
80203bd6:	8082                	ret
80203bd8:	0a04a403          	lw	s0,160(s1)
80203bdc:	8922                	mv	s2,s0
80203bde:	d46d                	beqz	s0,80203bc8 <_thread_update_priority.isra.0+0x20>
80203be0:	8522                	mv	a0,s0
80203be2:	6b1010ef          	jal	80205a92 <rt_object_get_type>
80203be6:	ff3511e3          	bne	a0,s3,80203bc8 <_thread_update_priority.isra.0+0x20>
80203bea:	03c4851b          	addiw	a0,s1,60
80203bee:	c1dff0ef          	jal	8020380a <rt_list_remove>
80203bf2:	01994603          	lbu	a2,25(s2)
80203bf6:	0244041b          	addiw	s0,s0,36
80203bfa:	85a6                	mv	a1,s1
80203bfc:	8522                	mv	a0,s0
80203bfe:	f13ff0ef          	jal	80203b10 <rt_susp_list_enqueue>
80203c02:	f179                	bnez	a0,80203bc8 <_thread_update_priority.isra.0+0x20>
80203c04:	02492783          	lw	a5,36(s2)
80203c08:	0ff00513          	li	a0,255
80203c0c:	00f40663          	beq	s0,a5,80203c18 <_thread_update_priority.isra.0+0x70>
80203c10:	fc47851b          	addiw	a0,a5,-60
80203c14:	01c020ef          	jal	80205c30 <rt_sched_thread_get_curr_prio>
80203c18:	02a906a3          	sb	a0,45(s2)
80203c1c:	03092503          	lw	a0,48(s2)
80203c20:	dadff0ef          	jal	802039cc <_thread_get_mutex_priority>
80203c24:	e42a                	sd	a0,8(sp)
80203c26:	03092503          	lw	a0,48(s2)
80203c2a:	006020ef          	jal	80205c30 <rt_sched_thread_get_curr_prio>
80203c2e:	65a2                	ld	a1,8(sp)
80203c30:	f8a58ce3          	beq	a1,a0,80203bc8 <_thread_update_priority.isra.0+0x20>
80203c34:	03092503          	lw	a0,48(s2)
80203c38:	84aa                	mv	s1,a0
80203c3a:	0ae020ef          	jal	80205ce8 <rt_sched_thread_change_priority>
80203c3e:	b741                	j	80203bbe <_thread_update_priority.isra.0+0x16>

80203c40 <_rt_mutex_take>:
80203c40:	fa01011b          	addiw	sp,sp,-96
80203c44:	e8a2                	sd	s0,80(sp)
80203c46:	e4a6                	sd	s1,72(sp)
80203c48:	ec86                	sd	ra,88(sp)
80203c4a:	e0ca                	sd	s2,64(sp)
80203c4c:	fc4e                	sd	s3,56(sp)
80203c4e:	f852                	sd	s4,48(sp)
80203c50:	f456                	sd	s5,40(sp)
80203c52:	f05a                	sd	s6,32(sp)
80203c54:	842a                	mv	s0,a0
80203c56:	84b2                	mv	s1,a2
80203c58:	c62e                	sw	a1,12(sp)
80203c5a:	5ee020ef          	jal	80206248 <rt_critical_level>
80203c5e:	c51d                	beqz	a0,80203c8c <_rt_mutex_take+0x4c>
80203c60:	00005597          	auipc	a1,0x5
80203c64:	11058593          	addi	a1,a1,272 # 80208d70 <__FUNCTION__.24>
80203c68:	00004517          	auipc	a0,0x4
80203c6c:	0c850513          	addi	a0,a0,200 # 80207d30 <rt_system_timer_thread_init+0xbd8>
80203c70:	144010ef          	jal	80204db4 <rt_kprintf>
80203c74:	53300613          	li	a2,1331
80203c78:	00005597          	auipc	a1,0x5
80203c7c:	0f858593          	addi	a1,a1,248 # 80208d70 <__FUNCTION__.24>
80203c80:	00005517          	auipc	a0,0x5
80203c84:	a3850513          	addi	a0,a0,-1480 # 802086b8 <rt_system_timer_thread_init+0x1560>
80203c88:	2e0010ef          	jal	80204f68 <rt_assert_handler>
80203c8c:	1a9020ef          	jal	80206634 <rt_thread_self>
80203c90:	2501                	sext.w	a0,a0
80203c92:	e51d                	bnez	a0,80203cc0 <_rt_mutex_take+0x80>
80203c94:	00005597          	auipc	a1,0x5
80203c98:	0dc58593          	addi	a1,a1,220 # 80208d70 <__FUNCTION__.24>
80203c9c:	00004517          	auipc	a0,0x4
80203ca0:	0c450513          	addi	a0,a0,196 # 80207d60 <rt_system_timer_thread_init+0xc08>
80203ca4:	110010ef          	jal	80204db4 <rt_kprintf>
80203ca8:	53300613          	li	a2,1331
80203cac:	00005597          	auipc	a1,0x5
80203cb0:	0c458593          	addi	a1,a1,196 # 80208d70 <__FUNCTION__.24>
80203cb4:	00005517          	auipc	a0,0x5
80203cb8:	a0450513          	addi	a0,a0,-1532 # 802086b8 <rt_system_timer_thread_init+0x1560>
80203cbc:	2ac010ef          	jal	80204f68 <rt_assert_handler>
80203cc0:	6d6000ef          	jal	80204396 <rt_interrupt_get_nest>
80203cc4:	c51d                	beqz	a0,80203cf2 <_rt_mutex_take+0xb2>
80203cc6:	00005597          	auipc	a1,0x5
80203cca:	0aa58593          	addi	a1,a1,170 # 80208d70 <__FUNCTION__.24>
80203cce:	00004517          	auipc	a0,0x4
80203cd2:	0ca50513          	addi	a0,a0,202 # 80207d98 <rt_system_timer_thread_init+0xc40>
80203cd6:	0de010ef          	jal	80204db4 <rt_kprintf>
80203cda:	53300613          	li	a2,1331
80203cde:	00005597          	auipc	a1,0x5
80203ce2:	09258593          	addi	a1,a1,146 # 80208d70 <__FUNCTION__.24>
80203ce6:	00005517          	auipc	a0,0x5
80203cea:	9d250513          	addi	a0,a0,-1582 # 802086b8 <rt_system_timer_thread_init+0x1560>
80203cee:	27a010ef          	jal	80204f68 <rt_assert_handler>
80203cf2:	0004079b          	sext.w	a5,s0
80203cf6:	ef89                	bnez	a5,80203d10 <_rt_mutex_take+0xd0>
80203cf8:	53600613          	li	a2,1334
80203cfc:	00005597          	auipc	a1,0x5
80203d00:	07458593          	addi	a1,a1,116 # 80208d70 <__FUNCTION__.24>
80203d04:	00004517          	auipc	a0,0x4
80203d08:	39450513          	addi	a0,a0,916 # 80208098 <rt_system_timer_thread_init+0xf40>
80203d0c:	25c010ef          	jal	80204f68 <rt_assert_handler>
80203d10:	8522                	mv	a0,s0
80203d12:	581010ef          	jal	80205a92 <rt_object_get_type>
80203d16:	478d                	li	a5,3
80203d18:	00f50e63          	beq	a0,a5,80203d34 <_rt_mutex_take+0xf4>
80203d1c:	53700613          	li	a2,1335
80203d20:	00005597          	auipc	a1,0x5
80203d24:	05058593          	addi	a1,a1,80 # 80208d70 <__FUNCTION__.24>
80203d28:	00004517          	auipc	a0,0x4
80203d2c:	38850513          	addi	a0,a0,904 # 802080b0 <rt_system_timer_thread_init+0xf58>
80203d30:	238010ef          	jal	80204f68 <rt_assert_handler>
80203d34:	101020ef          	jal	80206634 <rt_thread_self>
80203d38:	03c4099b          	addiw	s3,s0,60
80203d3c:	892a                	mv	s2,a0
80203d3e:	854e                	mv	a0,s3
80203d40:	913ff0ef          	jal	80203652 <rt_spin_lock>
80203d44:	0000e797          	auipc	a5,0xe
80203d48:	8287a783          	lw	a5,-2008(a5) # 8021156c <rt_object_trytake_hook>
80203d4c:	c399                	beqz	a5,80203d52 <_rt_mutex_take+0x112>
80203d4e:	8522                	mv	a0,s0
80203d50:	9782                	jalr	a5
80203d52:	581c                	lw	a5,48(s0)
80203d54:	02092c23          	sw	zero,56(s2)
80203d58:	00090b1b          	sext.w	s6,s2
80203d5c:	05679663          	bne	a5,s6,80203da8 <_rt_mutex_take+0x168>
80203d60:	02e44783          	lbu	a5,46(s0)
80203d64:	0ff00713          	li	a4,255
80203d68:	02e78063          	beq	a5,a4,80203d88 <_rt_mutex_take+0x148>
80203d6c:	2785                	addiw	a5,a5,1
80203d6e:	02f40723          	sb	a5,46(s0)
80203d72:	854e                	mv	a0,s3
80203d74:	8e3ff0ef          	jal	80203656 <rt_spin_unlock>
80203d78:	0000d797          	auipc	a5,0xd
80203d7c:	7f07a783          	lw	a5,2032(a5) # 80211568 <rt_object_take_hook>
80203d80:	1c079363          	bnez	a5,80203f46 <_rt_mutex_take+0x306>
80203d84:	4481                	li	s1,0
80203d86:	a029                	j	80203d90 <_rt_mutex_take+0x150>
80203d88:	854e                	mv	a0,s3
80203d8a:	8cdff0ef          	jal	80203656 <rt_spin_unlock>
80203d8e:	5491                	li	s1,-28
80203d90:	60e6                	ld	ra,88(sp)
80203d92:	6446                	ld	s0,80(sp)
80203d94:	6906                	ld	s2,64(sp)
80203d96:	79e2                	ld	s3,56(sp)
80203d98:	7a42                	ld	s4,48(sp)
80203d9a:	7aa2                	ld	s5,40(sp)
80203d9c:	7b02                	ld	s6,32(sp)
80203d9e:	8526                	mv	a0,s1
80203da0:	64a6                	ld	s1,72(sp)
80203da2:	0601011b          	addiw	sp,sp,96
80203da6:	8082                	ret
80203da8:	e7b1                	bnez	a5,80203df4 <_rt_mutex_take+0x1b4>
80203daa:	57fd                	li	a5,-1
80203dac:	02c44483          	lbu	s1,44(s0)
80203db0:	02f406a3          	sb	a5,45(s0)
80203db4:	4785                	li	a5,1
80203db6:	02f40723          	sb	a5,46(s0)
80203dba:	03242823          	sw	s2,48(s0)
80203dbe:	0ff00793          	li	a5,255
80203dc2:	00f48c63          	beq	s1,a5,80203dda <_rt_mutex_take+0x19a>
80203dc6:	854a                	mv	a0,s2
80203dc8:	669010ef          	jal	80205c30 <rt_sched_thread_get_curr_prio>
80203dcc:	00a4f763          	bgeu	s1,a0,80203dda <_rt_mutex_take+0x19a>
80203dd0:	02c44583          	lbu	a1,44(s0)
80203dd4:	5808                	lw	a0,48(s0)
80203dd6:	dd3ff0ef          	jal	80203ba8 <_thread_update_priority.isra.0>
80203dda:	09892703          	lw	a4,152(s2)
80203dde:	0344079b          	addiw	a5,s0,52
80203de2:	0989091b          	addiw	s2,s2,152
80203de6:	c35c                	sw	a5,4(a4)
80203de8:	d858                	sw	a4,52(s0)
80203dea:	00f92023          	sw	a5,0(s2)
80203dee:	03242c23          	sw	s2,56(s0)
80203df2:	b741                	j	80203d72 <_rt_mutex_take+0x132>
80203df4:	47b2                	lw	a5,12(sp)
80203df6:	eb99                	bnez	a5,80203e0c <_rt_mutex_take+0x1cc>
80203df8:	07400793          	li	a5,116
80203dfc:	02f92c23          	sw	a5,56(s2)
80203e00:	854e                	mv	a0,s3
80203e02:	855ff0ef          	jal	80203656 <rt_spin_unlock>
80203e06:	f8c00493          	li	s1,-116
80203e0a:	b759                	j	80203d90 <_rt_mutex_take+0x150>
80203e0c:	01944603          	lbu	a2,25(s0)
80203e10:	02440a9b          	addiw	s5,s0,36
80203e14:	86a6                	mv	a3,s1
80203e16:	85d6                	mv	a1,s5
80203e18:	854a                	mv	a0,s2
80203e1a:	155020ef          	jal	8020676e <rt_thread_suspend_to_list>
80203e1e:	84aa                	mv	s1,a0
80203e20:	c509                	beqz	a0,80203e2a <_rt_mutex_take+0x1ea>
80203e22:	854e                	mv	a0,s3
80203e24:	833ff0ef          	jal	80203656 <rt_spin_unlock>
80203e28:	b7a5                	j	80203d90 <_rt_mutex_take+0x150>
80203e2a:	0a892023          	sw	s0,160(s2)
80203e2e:	01c1051b          	addiw	a0,sp,28
80203e32:	7b7010ef          	jal	80205de8 <rt_sched_lock>
80203e36:	854a                	mv	a0,s2
80203e38:	5f9010ef          	jal	80205c30 <rt_sched_thread_get_curr_prio>
80203e3c:	02d44783          	lbu	a5,45(s0)
80203e40:	00f57e63          	bgeu	a0,a5,80203e5c <_rt_mutex_take+0x21c>
80203e44:	02a406a3          	sb	a0,45(s0)
80203e48:	e02a                	sd	a0,0(sp)
80203e4a:	5808                	lw	a0,48(s0)
80203e4c:	5e5010ef          	jal	80205c30 <rt_sched_thread_get_curr_prio>
80203e50:	6582                	ld	a1,0(sp)
80203e52:	00a5f563          	bgeu	a1,a0,80203e5c <_rt_mutex_take+0x21c>
80203e56:	5808                	lw	a0,48(s0)
80203e58:	d51ff0ef          	jal	80203ba8 <_thread_update_priority.isra.0>
80203e5c:	4572                	lw	a0,28(sp)
80203e5e:	7ad010ef          	jal	80205e0a <rt_sched_unlock>
80203e62:	47b2                	lw	a5,12(sp)
80203e64:	00f05d63          	blez	a5,80203e7e <_rt_mutex_take+0x23e>
80203e68:	05890a1b          	addiw	s4,s2,88
80203e6c:	00c1061b          	addiw	a2,sp,12
80203e70:	4581                	li	a1,0
80203e72:	8552                	mv	a0,s4
80203e74:	04e030ef          	jal	80206ec2 <rt_timer_control>
80203e78:	8552                	mv	a0,s4
80203e7a:	6cf020ef          	jal	80206d48 <rt_timer_start>
80203e7e:	854e                	mv	a0,s3
80203e80:	fd6ff0ef          	jal	80203656 <rt_spin_unlock>
80203e84:	1a4020ef          	jal	80206028 <rt_schedule>
80203e88:	854e                	mv	a0,s3
80203e8a:	fc8ff0ef          	jal	80203652 <rt_spin_lock>
80203e8e:	03892703          	lw	a4,56(s2)
80203e92:	581c                	lw	a5,48(s0)
80203e94:	e305                	bnez	a4,80203eb4 <_rt_mutex_take+0x274>
80203e96:	ed678ee3          	beq	a5,s6,80203d72 <_rt_mutex_take+0x132>
80203e9a:	5b100613          	li	a2,1457
80203e9e:	00005597          	auipc	a1,0x5
80203ea2:	ed258593          	addi	a1,a1,-302 # 80208d70 <__FUNCTION__.24>
80203ea6:	00004517          	auipc	a0,0x4
80203eaa:	25250513          	addi	a0,a0,594 # 802080f8 <rt_system_timer_thread_init+0xfa0>
80203eae:	0ba010ef          	jal	80204f68 <rt_assert_handler>
80203eb2:	b5c1                	j	80203d72 <_rt_mutex_take+0x132>
80203eb4:	01679e63          	bne	a5,s6,80203ed0 <_rt_mutex_take+0x290>
80203eb8:	5b800613          	li	a2,1464
80203ebc:	00005597          	auipc	a1,0x5
80203ec0:	eb458593          	addi	a1,a1,-332 # 80208d70 <__FUNCTION__.24>
80203ec4:	00004517          	auipc	a0,0x4
80203ec8:	24c50513          	addi	a0,a0,588 # 80208110 <rt_system_timer_thread_init+0xfb8>
80203ecc:	09c010ef          	jal	80204f68 <rt_assert_handler>
80203ed0:	01c1051b          	addiw	a0,sp,28
80203ed4:	03892a03          	lw	s4,56(s2)
80203ed8:	711010ef          	jal	80205de8 <rt_sched_lock>
80203edc:	5808                	lw	a0,48(s0)
80203ede:	cd01                	beqz	a0,80203ef6 <_rt_mutex_take+0x2b6>
80203ee0:	551010ef          	jal	80205c30 <rt_sched_thread_get_curr_prio>
80203ee4:	84aa                	mv	s1,a0
80203ee6:	854a                	mv	a0,s2
80203ee8:	549010ef          	jal	80205c30 <rt_sched_thread_get_curr_prio>
80203eec:	2481                	sext.w	s1,s1
80203eee:	2501                	sext.w	a0,a0
80203ef0:	8c89                	sub	s1,s1,a0
80203ef2:	0014b493          	seqz	s1,s1
80203ef6:	505c                	lw	a5,36(s0)
80203ef8:	0ff00513          	li	a0,255
80203efc:	00fa8663          	beq	s5,a5,80203f08 <_rt_mutex_take+0x2c8>
80203f00:	fc47851b          	addiw	a0,a5,-60
80203f04:	52d010ef          	jal	80205c30 <rt_sched_thread_get_curr_prio>
80203f08:	02a406a3          	sb	a0,45(s0)
80203f0c:	cc91                	beqz	s1,80203f28 <_rt_mutex_take+0x2e8>
80203f0e:	5808                	lw	a0,48(s0)
80203f10:	abdff0ef          	jal	802039cc <_thread_get_mutex_priority>
80203f14:	e02a                	sd	a0,0(sp)
80203f16:	5808                	lw	a0,48(s0)
80203f18:	519010ef          	jal	80205c30 <rt_sched_thread_get_curr_prio>
80203f1c:	6582                	ld	a1,0(sp)
80203f1e:	00b50563          	beq	a0,a1,80203f28 <_rt_mutex_take+0x2e8>
80203f22:	5808                	lw	a0,48(s0)
80203f24:	c85ff0ef          	jal	80203ba8 <_thread_update_priority.isra.0>
80203f28:	4572                	lw	a0,28(sp)
80203f2a:	41fa549b          	sraiw	s1,s4,0x1f
80203f2e:	009a4a33          	xor	s4,s4,s1
80203f32:	6d9010ef          	jal	80205e0a <rt_sched_unlock>
80203f36:	854e                	mv	a0,s3
80203f38:	f1eff0ef          	jal	80203656 <rt_spin_unlock>
80203f3c:	414484bb          	subw	s1,s1,s4
80203f40:	0a092023          	sw	zero,160(s2)
80203f44:	b5b1                	j	80203d90 <_rt_mutex_take+0x150>
80203f46:	8522                	mv	a0,s0
80203f48:	9782                	jalr	a5
80203f4a:	bd2d                	j	80203d84 <_rt_mutex_take+0x144>

80203f4c <rt_sem_init>:
80203f4c:	fd01011b          	addiw	sp,sp,-48
80203f50:	f022                	sd	s0,32(sp)
80203f52:	ec26                	sd	s1,24(sp)
80203f54:	e84a                	sd	s2,16(sp)
80203f56:	e44e                	sd	s3,8(sp)
80203f58:	0005079b          	sext.w	a5,a0
80203f5c:	f406                	sd	ra,40(sp)
80203f5e:	843e                	mv	s0,a5
80203f60:	89ae                	mv	s3,a1
80203f62:	8932                	mv	s2,a2
80203f64:	84b6                	mv	s1,a3
80203f66:	ef89                	bnez	a5,80203f80 <rt_sem_init+0x34>
80203f68:	17d00613          	li	a2,381
80203f6c:	00005597          	auipc	a1,0x5
80203f70:	e4458593          	addi	a1,a1,-444 # 80208db0 <__FUNCTION__.38>
80203f74:	00004517          	auipc	a0,0x4
80203f78:	0b450513          	addi	a0,a0,180 # 80208028 <rt_system_timer_thread_init+0xed0>
80203f7c:	7ed000ef          	jal	80204f68 <rt_assert_handler>
80203f80:	67c1                	lui	a5,0x10
80203f82:	00f96e63          	bltu	s2,a5,80203f9e <rt_sem_init+0x52>
80203f86:	17e00613          	li	a2,382
80203f8a:	00005597          	auipc	a1,0x5
80203f8e:	e2658593          	addi	a1,a1,-474 # 80208db0 <__FUNCTION__.38>
80203f92:	00004517          	auipc	a0,0x4
80203f96:	19650513          	addi	a0,a0,406 # 80208128 <rt_system_timer_thread_init+0xfd0>
80203f9a:	7cf000ef          	jal	80204f68 <rt_assert_handler>
80203f9e:	4785                	li	a5,1
80203fa0:	0097fe63          	bgeu	a5,s1,80203fbc <rt_sem_init+0x70>
80203fa4:	17f00613          	li	a2,383
80203fa8:	00005597          	auipc	a1,0x5
80203fac:	e0858593          	addi	a1,a1,-504 # 80208db0 <__FUNCTION__.38>
80203fb0:	00004517          	auipc	a0,0x4
80203fb4:	19050513          	addi	a0,a0,400 # 80208140 <rt_system_timer_thread_init+0xfe8>
80203fb8:	7b1000ef          	jal	80204f68 <rt_assert_handler>
80203fbc:	864e                	mv	a2,s3
80203fbe:	8522                	mv	a0,s0
80203fc0:	4589                	li	a1,2
80203fc2:	78c010ef          	jal	8020574e <rt_object_init>
80203fc6:	0244079b          	addiw	a5,s0,36
80203fca:	d41c                	sw	a5,40(s0)
80203fcc:	d05c                	sw	a5,36(s0)
80203fce:	57fd                	li	a5,-1
80203fd0:	03241623          	sh	s2,44(s0)
80203fd4:	00940ca3          	sb	s1,25(s0)
80203fd8:	0304051b          	addiw	a0,s0,48
80203fdc:	02f41723          	sh	a5,46(s0)
80203fe0:	e70ff0ef          	jal	80203650 <rt_spin_lock_init>
80203fe4:	70a2                	ld	ra,40(sp)
80203fe6:	7402                	ld	s0,32(sp)
80203fe8:	64e2                	ld	s1,24(sp)
80203fea:	6942                	ld	s2,16(sp)
80203fec:	69a2                	ld	s3,8(sp)
80203fee:	4501                	li	a0,0
80203ff0:	0301011b          	addiw	sp,sp,48
80203ff4:	8082                	ret

80203ff6 <rt_sem_take>:
80203ff6:	4609                	li	a2,2
80203ff8:	821ff06f          	j	80203818 <_rt_sem_take>

80203ffc <rt_sem_release>:
80203ffc:	3101                	addiw	sp,sp,-32
80203ffe:	e822                	sd	s0,16(sp)
80204000:	0005079b          	sext.w	a5,a0
80204004:	ec06                	sd	ra,24(sp)
80204006:	e426                	sd	s1,8(sp)
80204008:	e04a                	sd	s2,0(sp)
8020400a:	843e                	mv	s0,a5
8020400c:	ef89                	bnez	a5,80204026 <rt_sem_release+0x2a>
8020400e:	2bd00613          	li	a2,701
80204012:	00005597          	auipc	a1,0x5
80204016:	d7e58593          	addi	a1,a1,-642 # 80208d90 <__FUNCTION__.33>
8020401a:	00004517          	auipc	a0,0x4
8020401e:	00e50513          	addi	a0,a0,14 # 80208028 <rt_system_timer_thread_init+0xed0>
80204022:	747000ef          	jal	80204f68 <rt_assert_handler>
80204026:	8522                	mv	a0,s0
80204028:	26b010ef          	jal	80205a92 <rt_object_get_type>
8020402c:	4789                	li	a5,2
8020402e:	00f50e63          	beq	a0,a5,8020404a <rt_sem_release+0x4e>
80204032:	2be00613          	li	a2,702
80204036:	00005597          	auipc	a1,0x5
8020403a:	d5a58593          	addi	a1,a1,-678 # 80208d90 <__FUNCTION__.33>
8020403e:	00004517          	auipc	a0,0x4
80204042:	ffa50513          	addi	a0,a0,-6 # 80208038 <rt_system_timer_thread_init+0xee0>
80204046:	723000ef          	jal	80204f68 <rt_assert_handler>
8020404a:	0000d797          	auipc	a5,0xd
8020404e:	51a7a783          	lw	a5,1306(a5) # 80211564 <rt_object_put_hook>
80204052:	c399                	beqz	a5,80204058 <rt_sem_release+0x5c>
80204054:	8522                	mv	a0,s0
80204056:	9782                	jalr	a5
80204058:	0304091b          	addiw	s2,s0,48
8020405c:	854a                	mv	a0,s2
8020405e:	dfeff0ef          	jal	8020365c <rt_spin_lock_irqsave>
80204062:	505c                	lw	a5,36(s0)
80204064:	0244071b          	addiw	a4,s0,36
80204068:	84aa                	mv	s1,a0
8020406a:	853a                	mv	a0,a4
8020406c:	00f70d63          	beq	a4,a5,80204086 <rt_sem_release+0x8a>
80204070:	4581                	li	a1,0
80204072:	9e5ff0ef          	jal	80203a56 <rt_susp_list_dequeue>
80204076:	4405                	li	s0,1
80204078:	85a6                	mv	a1,s1
8020407a:	854a                	mv	a0,s2
8020407c:	dfaff0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80204080:	e815                	bnez	s0,802040b4 <rt_sem_release+0xb8>
80204082:	4501                	li	a0,0
80204084:	a00d                	j	802040a6 <rt_sem_release+0xaa>
80204086:	02c45783          	lhu	a5,44(s0)
8020408a:	02e45703          	lhu	a4,46(s0)
8020408e:	00e7f763          	bgeu	a5,a4,8020409c <rt_sem_release+0xa0>
80204092:	2785                	addiw	a5,a5,1
80204094:	02f41623          	sh	a5,44(s0)
80204098:	4401                	li	s0,0
8020409a:	bff9                	j	80204078 <rt_sem_release+0x7c>
8020409c:	854a                	mv	a0,s2
8020409e:	85a6                	mv	a1,s1
802040a0:	dd6ff0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
802040a4:	5511                	li	a0,-28
802040a6:	60e2                	ld	ra,24(sp)
802040a8:	6442                	ld	s0,16(sp)
802040aa:	64a2                	ld	s1,8(sp)
802040ac:	6902                	ld	s2,0(sp)
802040ae:	0201011b          	addiw	sp,sp,32
802040b2:	8082                	ret
802040b4:	775010ef          	jal	80206028 <rt_schedule>
802040b8:	b7e9                	j	80204082 <rt_sem_release+0x86>

802040ba <rt_mutex_init>:
802040ba:	3101                	addiw	sp,sp,-32
802040bc:	e822                	sd	s0,16(sp)
802040be:	e426                	sd	s1,8(sp)
802040c0:	0005079b          	sext.w	a5,a0
802040c4:	ec06                	sd	ra,24(sp)
802040c6:	843e                	mv	s0,a5
802040c8:	84ae                	mv	s1,a1
802040ca:	ef89                	bnez	a5,802040e4 <rt_mutex_init+0x2a>
802040cc:	3f300613          	li	a2,1011
802040d0:	00005597          	auipc	a1,0x5
802040d4:	cb058593          	addi	a1,a1,-848 # 80208d80 <__FUNCTION__.31>
802040d8:	00004517          	auipc	a0,0x4
802040dc:	fc050513          	addi	a0,a0,-64 # 80208098 <rt_system_timer_thread_init+0xf40>
802040e0:	689000ef          	jal	80204f68 <rt_assert_handler>
802040e4:	8626                	mv	a2,s1
802040e6:	8522                	mv	a0,s0
802040e8:	458d                	li	a1,3
802040ea:	664010ef          	jal	8020574e <rt_object_init>
802040ee:	0244079b          	addiw	a5,s0,36
802040f2:	d41c                	sw	a5,40(s0)
802040f4:	d05c                	sw	a5,36(s0)
802040f6:	57fd                	li	a5,-1
802040f8:	02f41623          	sh	a5,44(s0)
802040fc:	0344079b          	addiw	a5,s0,52
80204100:	dc1c                	sw	a5,56(s0)
80204102:	d85c                	sw	a5,52(s0)
80204104:	4785                	li	a5,1
80204106:	03c4051b          	addiw	a0,s0,60
8020410a:	02042823          	sw	zero,48(s0)
8020410e:	02040723          	sb	zero,46(s0)
80204112:	00f40ca3          	sb	a5,25(s0)
80204116:	d3aff0ef          	jal	80203650 <rt_spin_lock_init>
8020411a:	60e2                	ld	ra,24(sp)
8020411c:	6442                	ld	s0,16(sp)
8020411e:	64a2                	ld	s1,8(sp)
80204120:	4501                	li	a0,0
80204122:	0201011b          	addiw	sp,sp,32
80204126:	8082                	ret

80204128 <rt_mutex_take>:
80204128:	4609                	li	a2,2
8020412a:	b17ff06f          	j	80203c40 <_rt_mutex_take>

8020412e <rt_mutex_release>:
8020412e:	f901011b          	addiw	sp,sp,-112
80204132:	f0a2                	sd	s0,96(sp)
80204134:	0005079b          	sext.w	a5,a0
80204138:	f486                	sd	ra,104(sp)
8020413a:	eca6                	sd	s1,88(sp)
8020413c:	e8ca                	sd	s2,80(sp)
8020413e:	e4ce                	sd	s3,72(sp)
80204140:	e0d2                	sd	s4,64(sp)
80204142:	fc56                	sd	s5,56(sp)
80204144:	f85a                	sd	s6,48(sp)
80204146:	f45e                	sd	s7,40(sp)
80204148:	f062                	sd	s8,32(sp)
8020414a:	ec66                	sd	s9,24(sp)
8020414c:	843e                	mv	s0,a5
8020414e:	ef89                	bnez	a5,80204168 <rt_mutex_release+0x3a>
80204150:	63400613          	li	a2,1588
80204154:	00005597          	auipc	a1,0x5
80204158:	c0458593          	addi	a1,a1,-1020 # 80208d58 <__FUNCTION__.23>
8020415c:	00004517          	auipc	a0,0x4
80204160:	f3c50513          	addi	a0,a0,-196 # 80208098 <rt_system_timer_thread_init+0xf40>
80204164:	605000ef          	jal	80204f68 <rt_assert_handler>
80204168:	8522                	mv	a0,s0
8020416a:	129010ef          	jal	80205a92 <rt_object_get_type>
8020416e:	478d                	li	a5,3
80204170:	00f50e63          	beq	a0,a5,8020418c <rt_mutex_release+0x5e>
80204174:	63500613          	li	a2,1589
80204178:	00005597          	auipc	a1,0x5
8020417c:	be058593          	addi	a1,a1,-1056 # 80208d58 <__FUNCTION__.23>
80204180:	00004517          	auipc	a0,0x4
80204184:	f3050513          	addi	a0,a0,-208 # 802080b0 <rt_system_timer_thread_init+0xf58>
80204188:	5e1000ef          	jal	80204f68 <rt_assert_handler>
8020418c:	4a8020ef          	jal	80206634 <rt_thread_self>
80204190:	2501                	sext.w	a0,a0
80204192:	e51d                	bnez	a0,802041c0 <rt_mutex_release+0x92>
80204194:	00005597          	auipc	a1,0x5
80204198:	bc458593          	addi	a1,a1,-1084 # 80208d58 <__FUNCTION__.23>
8020419c:	00004517          	auipc	a0,0x4
802041a0:	bc450513          	addi	a0,a0,-1084 # 80207d60 <rt_system_timer_thread_init+0xc08>
802041a4:	411000ef          	jal	80204db4 <rt_kprintf>
802041a8:	63a00613          	li	a2,1594
802041ac:	00005597          	auipc	a1,0x5
802041b0:	bac58593          	addi	a1,a1,-1108 # 80208d58 <__FUNCTION__.23>
802041b4:	00004517          	auipc	a0,0x4
802041b8:	50450513          	addi	a0,a0,1284 # 802086b8 <rt_system_timer_thread_init+0x1560>
802041bc:	5ad000ef          	jal	80204f68 <rt_assert_handler>
802041c0:	1d6000ef          	jal	80204396 <rt_interrupt_get_nest>
802041c4:	c51d                	beqz	a0,802041f2 <rt_mutex_release+0xc4>
802041c6:	00005597          	auipc	a1,0x5
802041ca:	b9258593          	addi	a1,a1,-1134 # 80208d58 <__FUNCTION__.23>
802041ce:	00004517          	auipc	a0,0x4
802041d2:	bca50513          	addi	a0,a0,-1078 # 80207d98 <rt_system_timer_thread_init+0xc40>
802041d6:	3df000ef          	jal	80204db4 <rt_kprintf>
802041da:	63a00613          	li	a2,1594
802041de:	00005597          	auipc	a1,0x5
802041e2:	b7a58593          	addi	a1,a1,-1158 # 80208d58 <__FUNCTION__.23>
802041e6:	00004517          	auipc	a0,0x4
802041ea:	4d250513          	addi	a0,a0,1234 # 802086b8 <rt_system_timer_thread_init+0x1560>
802041ee:	57b000ef          	jal	80204f68 <rt_assert_handler>
802041f2:	442020ef          	jal	80206634 <rt_thread_self>
802041f6:	03c4099b          	addiw	s3,s0,60
802041fa:	892a                	mv	s2,a0
802041fc:	854e                	mv	a0,s3
802041fe:	c54ff0ef          	jal	80203652 <rt_spin_lock>
80204202:	0000d797          	auipc	a5,0xd
80204206:	3627a783          	lw	a5,866(a5) # 80211564 <rt_object_put_hook>
8020420a:	c399                	beqz	a5,80204210 <rt_mutex_release+0xe2>
8020420c:	8522                	mv	a0,s0
8020420e:	9782                	jalr	a5
80204210:	5818                	lw	a4,48(s0)
80204212:	0009079b          	sext.w	a5,s2
80204216:	02f70963          	beq	a4,a5,80204248 <rt_mutex_release+0x11a>
8020421a:	f0100793          	li	a5,-255
8020421e:	854e                	mv	a0,s3
80204220:	02f92c23          	sw	a5,56(s2)
80204224:	c32ff0ef          	jal	80203656 <rt_spin_unlock>
80204228:	f0100513          	li	a0,-255
8020422c:	70a6                	ld	ra,104(sp)
8020422e:	7406                	ld	s0,96(sp)
80204230:	64e6                	ld	s1,88(sp)
80204232:	6946                	ld	s2,80(sp)
80204234:	69a6                	ld	s3,72(sp)
80204236:	6a06                	ld	s4,64(sp)
80204238:	7ae2                	ld	s5,56(sp)
8020423a:	7b42                	ld	s6,48(sp)
8020423c:	7ba2                	ld	s7,40(sp)
8020423e:	7c02                	ld	s8,32(sp)
80204240:	6ce2                	ld	s9,24(sp)
80204242:	0701011b          	addiw	sp,sp,112
80204246:	8082                	ret
80204248:	02e44783          	lbu	a5,46(s0)
8020424c:	4481                	li	s1,0
8020424e:	37fd                	addiw	a5,a5,-1
80204250:	0ff7f793          	zext.b	a5,a5
80204254:	02f40723          	sb	a5,46(s0)
80204258:	e7c1                	bnez	a5,802042e0 <rt_mutex_release+0x1b2>
8020425a:	03440b1b          	addiw	s6,s0,52
8020425e:	855a                	mv	a0,s6
80204260:	daaff0ef          	jal	8020380a <rt_list_remove>
80204264:	00c1051b          	addiw	a0,sp,12
80204268:	381010ef          	jal	80205de8 <rt_sched_lock>
8020426c:	85a2                	mv	a1,s0
8020426e:	854a                	mv	a0,s2
80204270:	fa2ff0ef          	jal	80203a12 <_check_and_update_prio>
80204274:	505c                	lw	a5,36(s0)
80204276:	02440a1b          	addiw	s4,s0,36
8020427a:	84aa                	mv	s1,a0
8020427c:	06fa0a63          	beq	s4,a5,802042f0 <rt_mutex_release+0x1c2>
80204280:	00005c17          	auipc	s8,0x5
80204284:	ad8c0c13          	addi	s8,s8,-1320 # 80208d58 <__FUNCTION__.23>
80204288:	00004c97          	auipc	s9,0x4
8020428c:	ef8c8c93          	addi	s9,s9,-264 # 80208180 <rt_system_timer_thread_init+0x1028>
80204290:	02442903          	lw	s2,36(s0)
80204294:	fc490b9b          	addiw	s7,s2,-60
80204298:	855e                	mv	a0,s7
8020429a:	8aca                	mv	s5,s2
8020429c:	1a1010ef          	jal	80205c3c <rt_sched_thread_is_suspended>
802042a0:	e519                	bnez	a0,802042ae <rt_mutex_release+0x180>
802042a2:	66500613          	li	a2,1637
802042a6:	85e2                	mv	a1,s8
802042a8:	8566                	mv	a0,s9
802042aa:	4bf000ef          	jal	80204f68 <rt_assert_handler>
802042ae:	854a                	mv	a0,s2
802042b0:	d5aff0ef          	jal	8020380a <rt_list_remove>
802042b4:	855e                	mv	a0,s7
802042b6:	1b1010ef          	jal	80205c66 <rt_sched_thread_ready>
802042ba:	c539                	beqz	a0,80204308 <rt_mutex_release+0x1da>
802042bc:	505c                	lw	a5,36(s0)
802042be:	fcfa19e3          	bne	s4,a5,80204290 <rt_mutex_release+0x162>
802042c2:	02042823          	sw	zero,48(s0)
802042c6:	0ff00513          	li	a0,255
802042ca:	a031                	j	802042d6 <rt_mutex_release+0x1a8>
802042cc:	fc45051b          	addiw	a0,a0,-60
802042d0:	161010ef          	jal	80205c30 <rt_sched_thread_get_curr_prio>
802042d4:	4485                	li	s1,1
802042d6:	02a406a3          	sb	a0,45(s0)
802042da:	4532                	lw	a0,12(sp)
802042dc:	32f010ef          	jal	80205e0a <rt_sched_unlock>
802042e0:	854e                	mv	a0,s3
802042e2:	b74ff0ef          	jal	80203656 <rt_spin_unlock>
802042e6:	4785                	li	a5,1
802042e8:	00f48d63          	beq	s1,a5,80204302 <rt_mutex_release+0x1d4>
802042ec:	4501                	li	a0,0
802042ee:	bf3d                	j	8020422c <rt_mutex_release+0xfe>
802042f0:	4532                	lw	a0,12(sp)
802042f2:	319010ef          	jal	80205e0a <rt_sched_unlock>
802042f6:	57fd                	li	a5,-1
802042f8:	02042823          	sw	zero,48(s0)
802042fc:	02f406a3          	sb	a5,45(s0)
80204300:	b7c5                	j	802042e0 <rt_mutex_release+0x1b2>
80204302:	527010ef          	jal	80206028 <rt_schedule>
80204306:	b7dd                	j	802042ec <rt_mutex_release+0x1be>
80204308:	4785                	li	a5,1
8020430a:	02f40723          	sb	a5,46(s0)
8020430e:	05caa783          	lw	a5,92(s5)
80204312:	03742823          	sw	s7,48(s0)
80204316:	05c9091b          	addiw	s2,s2,92
8020431a:	0167a223          	sw	s6,4(a5)
8020431e:	d85c                	sw	a5,52(s0)
80204320:	056aae23          	sw	s6,92(s5)
80204324:	5048                	lw	a0,36(s0)
80204326:	03242c23          	sw	s2,56(s0)
8020432a:	060aa223          	sw	zero,100(s5)
8020432e:	f8aa1fe3          	bne	s4,a0,802042cc <rt_mutex_release+0x19e>
80204332:	0ff00513          	li	a0,255
80204336:	bf79                	j	802042d4 <rt_mutex_release+0x1a6>

80204338 <rt_interrupt_enter>:
80204338:	3141                	addiw	sp,sp,-16
8020433a:	e406                	sd	ra,8(sp)
8020433c:	8bcfc0ef          	jal	802003f8 <rt_hw_interrupt_disable>
80204340:	0000d797          	auipc	a5,0xd
80204344:	20078793          	addi	a5,a5,512 # 80211540 <rt_interrupt_nest>
80204348:	4398                	lw	a4,0(a5)
8020434a:	4398                	lw	a4,0(a5)
8020434c:	2705                	addiw	a4,a4,1
8020434e:	c398                	sw	a4,0(a5)
80204350:	8a2fc0ef          	jal	802003f2 <rt_hw_interrupt_enable>
80204354:	0000d797          	auipc	a5,0xd
80204358:	1f47a783          	lw	a5,500(a5) # 80211548 <rt_interrupt_enter_hook>
8020435c:	c781                	beqz	a5,80204364 <rt_interrupt_enter+0x2c>
8020435e:	60a2                	ld	ra,8(sp)
80204360:	2141                	addiw	sp,sp,16
80204362:	8782                	jr	a5
80204364:	60a2                	ld	ra,8(sp)
80204366:	2141                	addiw	sp,sp,16
80204368:	8082                	ret

8020436a <rt_interrupt_leave>:
8020436a:	3141                	addiw	sp,sp,-16
8020436c:	e406                	sd	ra,8(sp)
8020436e:	0000d797          	auipc	a5,0xd
80204372:	1d67a783          	lw	a5,470(a5) # 80211544 <rt_interrupt_leave_hook>
80204376:	c391                	beqz	a5,8020437a <rt_interrupt_leave+0x10>
80204378:	9782                	jalr	a5
8020437a:	87efc0ef          	jal	802003f8 <rt_hw_interrupt_disable>
8020437e:	0000d797          	auipc	a5,0xd
80204382:	1c278793          	addi	a5,a5,450 # 80211540 <rt_interrupt_nest>
80204386:	4398                	lw	a4,0(a5)
80204388:	4398                	lw	a4,0(a5)
8020438a:	60a2                	ld	ra,8(sp)
8020438c:	377d                	addiw	a4,a4,-1
8020438e:	c398                	sw	a4,0(a5)
80204390:	2141                	addiw	sp,sp,16
80204392:	860fc06f          	j	802003f2 <rt_hw_interrupt_enable>

80204396 <rt_interrupt_get_nest>:
80204396:	3101                	addiw	sp,sp,-32
80204398:	ec06                	sd	ra,24(sp)
8020439a:	e822                	sd	s0,16(sp)
8020439c:	e426                	sd	s1,8(sp)
8020439e:	85afc0ef          	jal	802003f8 <rt_hw_interrupt_disable>
802043a2:	842a                	mv	s0,a0
802043a4:	854fc0ef          	jal	802003f8 <rt_hw_interrupt_disable>
802043a8:	0000d497          	auipc	s1,0xd
802043ac:	1984a483          	lw	s1,408(s1) # 80211540 <rt_interrupt_nest>
802043b0:	842fc0ef          	jal	802003f2 <rt_hw_interrupt_enable>
802043b4:	8522                	mv	a0,s0
802043b6:	83cfc0ef          	jal	802003f2 <rt_hw_interrupt_enable>
802043ba:	60e2                	ld	ra,24(sp)
802043bc:	6442                	ld	s0,16(sp)
802043be:	0ff4f513          	zext.b	a0,s1
802043c2:	64a2                	ld	s1,8(sp)
802043c4:	0201011b          	addiw	sp,sp,32
802043c8:	8082                	ret

802043ca <print_number>:
802043ca:	fd01011b          	addiw	sp,sp,-48
802043ce:	f422                	sd	s0,40(sp)
802043d0:	f026                	sd	s1,32(sp)
802043d2:	e002                	sd	zero,0(sp)
802043d4:	e402                	sd	zero,8(sp)
802043d6:	e802                	sd	zero,16(sp)
802043d8:	ec02                	sd	zero,24(sp)
802043da:	0408f313          	andi	t1,a7,64
802043de:	00005417          	auipc	s0,0x5
802043e2:	ab240413          	addi	s0,s0,-1358 # 80208e90 <large_digits.1>
802043e6:	00031663          	bnez	t1,802043f2 <print_number+0x28>
802043ea:	00005417          	auipc	s0,0x5
802043ee:	a8e40413          	addi	s0,s0,-1394 # 80208e78 <small_digits.0>
802043f2:	0108ff13          	andi	t5,a7,16
802043f6:	080f0363          	beqz	t5,8020447c <print_number+0xb2>
802043fa:	ffe8f893          	andi	a7,a7,-2
802043fe:	02000e93          	li	t4,32
80204402:	0028f313          	andi	t1,a7,2
80204406:	4e01                	li	t3,0
80204408:	02030063          	beqz	t1,80204428 <print_number+0x5e>
8020440c:	06800313          	li	t1,104
80204410:	06671f63          	bne	a4,t1,8020448e <print_number+0xc4>
80204414:	03061713          	slli	a4,a2,0x30
80204418:	08075063          	bgez	a4,80204498 <print_number+0xce>
8020441c:	40c0063b          	negw	a2,a2
80204420:	1642                	slli	a2,a2,0x30
80204422:	9241                	srli	a2,a2,0x30
80204424:	02d00e13          	li	t3,45
80204428:	0208f393          	andi	t2,a7,32
8020442c:	00038963          	beqz	t2,8020443e <print_number+0x74>
80204430:	6741                	lui	a4,0x10
80204432:	0711                	addi	a4,a4,4 # 10004 <__text_size+0x6ca4>
80204434:	00d75733          	srl	a4,a4,a3
80204438:	8b05                	andi	a4,a4,1
8020443a:	cb2d                	beqz	a4,802044ac <print_number+0xe2>
8020443c:	37f9                	addiw	a5,a5,-2
8020443e:	ee25                	bnez	a2,802044b6 <print_number+0xec>
80204440:	03000713          	li	a4,48
80204444:	00e10023          	sb	a4,0(sp)
80204448:	4305                	li	t1,1
8020444a:	871a                	mv	a4,t1
8020444c:	01035363          	bge	t1,a6,80204452 <print_number+0x88>
80204450:	8742                	mv	a4,a6
80204452:	0118ff93          	andi	t6,a7,17
80204456:	0007061b          	sext.w	a2,a4
8020445a:	40e7873b          	subw	a4,a5,a4
8020445e:	0a0f9663          	bnez	t6,8020450a <print_number+0x140>
80204462:	000e0563          	beqz	t3,8020446c <print_number+0xa2>
80204466:	00e05363          	blez	a4,8020446c <print_number+0xa2>
8020446a:	377d                	addiw	a4,a4,-1
8020446c:	87aa                	mv	a5,a0
8020446e:	00e502bb          	addw	t0,a0,a4
80204472:	0005841b          	sext.w	s0,a1
80204476:	02000493          	li	s1,32
8020447a:	a8ad                	j	802044f4 <print_number+0x12a>
8020447c:	0018f313          	andi	t1,a7,1
80204480:	02000e93          	li	t4,32
80204484:	f6030fe3          	beqz	t1,80204402 <print_number+0x38>
80204488:	03000e93          	li	t4,48
8020448c:	bf9d                	j	80204402 <print_number+0x38>
8020448e:	00065563          	bgez	a2,80204498 <print_number+0xce>
80204492:	40c0063b          	negw	a2,a2
80204496:	b779                	j	80204424 <print_number+0x5a>
80204498:	0048f713          	andi	a4,a7,4
8020449c:	02b00e13          	li	t3,43
802044a0:	f741                	bnez	a4,80204428 <print_number+0x5e>
802044a2:	00289e13          	slli	t3,a7,0x2
802044a6:	020e7e13          	andi	t3,t3,32
802044aa:	bfbd                	j	80204428 <print_number+0x5e>
802044ac:	4721                	li	a4,8
802044ae:	f8e698e3          	bne	a3,a4,8020443e <print_number+0x74>
802044b2:	37fd                	addiw	a5,a5,-1
802044b4:	b769                	j	8020443e <print_number+0x74>
802044b6:	0201071b          	addiw	a4,sp,32
802044ba:	fe070f9b          	addiw	t6,a4,-32
802044be:	4301                	li	t1,0
802044c0:	0006871b          	sext.w	a4,a3
802044c4:	02e672bb          	remuw	t0,a2,a4
802044c8:	0006049b          	sext.w	s1,a2
802044cc:	2305                	addiw	t1,t1,1
802044ce:	005402bb          	addw	t0,s0,t0
802044d2:	0002c283          	lbu	t0,0(t0) # 4000 <__STACKSIZE__>
802044d6:	02e6563b          	divuw	a2,a2,a4
802044da:	005f8023          	sb	t0,0(t6)
802044de:	2f85                	addiw	t6,t6,1
802044e0:	fee4f2e3          	bgeu	s1,a4,802044c4 <print_number+0xfa>
802044e4:	b79d                	j	8020444a <print_number+0x80>
802044e6:	00078f9b          	sext.w	t6,a5
802044ea:	008ff463          	bgeu	t6,s0,802044f2 <print_number+0x128>
802044ee:	00978023          	sb	s1,0(a5)
802044f2:	2785                	addiw	a5,a5,1
802044f4:	40f28fbb          	subw	t6,t0,a5
802044f8:	fff047e3          	bgtz	t6,802044e6 <print_number+0x11c>
802044fc:	87ba                	mv	a5,a4
802044fe:	00075363          	bgez	a4,80204504 <print_number+0x13a>
80204502:	4781                	li	a5,0
80204504:	377d                	addiw	a4,a4,-1
80204506:	9d3d                	addw	a0,a0,a5
80204508:	9f1d                	subw	a4,a4,a5
8020450a:	000e0c63          	beqz	t3,80204522 <print_number+0x158>
8020450e:	0005079b          	sext.w	a5,a0
80204512:	00058f9b          	sext.w	t6,a1
80204516:	01f7f463          	bgeu	a5,t6,8020451e <print_number+0x154>
8020451a:	01c50023          	sb	t3,0(a0)
8020451e:	377d                	addiw	a4,a4,-1
80204520:	2505                	addiw	a0,a0,1
80204522:	04038763          	beqz	t2,80204570 <print_number+0x1a6>
80204526:	4789                	li	a5,2
80204528:	02f69663          	bne	a3,a5,80204554 <print_number+0x18a>
8020452c:	0005079b          	sext.w	a5,a0
80204530:	0005869b          	sext.w	a3,a1
80204534:	00d7f663          	bgeu	a5,a3,80204540 <print_number+0x176>
80204538:	03000793          	li	a5,48
8020453c:	00f50023          	sb	a5,0(a0)
80204540:	0015079b          	addiw	a5,a0,1
80204544:	00d7f663          	bgeu	a5,a3,80204550 <print_number+0x186>
80204548:	06200793          	li	a5,98
8020454c:	00f500a3          	sb	a5,1(a0)
80204550:	2509                	addiw	a0,a0,2
80204552:	a839                	j	80204570 <print_number+0x1a6>
80204554:	47a1                	li	a5,8
80204556:	02f69863          	bne	a3,a5,80204586 <print_number+0x1bc>
8020455a:	0005079b          	sext.w	a5,a0
8020455e:	0005869b          	sext.w	a3,a1
80204562:	00d7f663          	bgeu	a5,a3,8020456e <print_number+0x1a4>
80204566:	03000793          	li	a5,48
8020456a:	00f50023          	sb	a5,0(a0)
8020456e:	2505                	addiw	a0,a0,1
80204570:	060f0863          	beqz	t5,802045e0 <print_number+0x216>
80204574:	0006069b          	sext.w	a3,a2
80204578:	87aa                	mv	a5,a0
8020457a:	9e29                	addw	a2,a2,a0
8020457c:	00058e1b          	sext.w	t3,a1
80204580:	03000e93          	li	t4,48
80204584:	a89d                	j	802045fa <print_number+0x230>
80204586:	47c1                	li	a5,16
80204588:	fef694e3          	bne	a3,a5,80204570 <print_number+0x1a6>
8020458c:	0005079b          	sext.w	a5,a0
80204590:	0005869b          	sext.w	a3,a1
80204594:	00d7f663          	bgeu	a5,a3,802045a0 <print_number+0x1d6>
80204598:	03000793          	li	a5,48
8020459c:	00f50023          	sb	a5,0(a0)
802045a0:	0015079b          	addiw	a5,a0,1
802045a4:	fad7f6e3          	bgeu	a5,a3,80204550 <print_number+0x186>
802045a8:	0408f893          	andi	a7,a7,64
802045ac:	07800793          	li	a5,120
802045b0:	f8088ee3          	beqz	a7,8020454c <print_number+0x182>
802045b4:	05800793          	li	a5,88
802045b8:	bf51                	j	8020454c <print_number+0x182>
802045ba:	0007869b          	sext.w	a3,a5
802045be:	01c6f463          	bgeu	a3,t3,802045c6 <print_number+0x1fc>
802045c2:	01d78023          	sb	t4,0(a5)
802045c6:	2785                	addiw	a5,a5,1
802045c8:	40f886bb          	subw	a3,a7,a5
802045cc:	fed047e3          	bgtz	a3,802045ba <print_number+0x1f0>
802045d0:	87ba                	mv	a5,a4
802045d2:	00075363          	bgez	a4,802045d8 <print_number+0x20e>
802045d6:	4781                	li	a5,0
802045d8:	377d                	addiw	a4,a4,-1
802045da:	9d3d                	addw	a0,a0,a5
802045dc:	9f1d                	subw	a4,a4,a5
802045de:	bf59                	j	80204574 <print_number+0x1aa>
802045e0:	87aa                	mv	a5,a0
802045e2:	00e508bb          	addw	a7,a0,a4
802045e6:	00058e1b          	sext.w	t3,a1
802045ea:	bff9                	j	802045c8 <print_number+0x1fe>
802045ec:	0007889b          	sext.w	a7,a5
802045f0:	01c8f463          	bgeu	a7,t3,802045f8 <print_number+0x22e>
802045f4:	01d78023          	sb	t4,0(a5)
802045f8:	2785                	addiw	a5,a5,1
802045fa:	40f608bb          	subw	a7,a2,a5
802045fe:	ff1347e3          	blt	t1,a7,802045ec <print_number+0x222>
80204602:	406687bb          	subw	a5,a3,t1
80204606:	9d3d                	addw	a0,a0,a5
80204608:	56fd                	li	a3,-1
8020460a:	0005861b          	sext.w	a2,a1
8020460e:	337d                	addiw	t1,t1,-1
80204610:	879a                	mv	a5,t1
80204612:	02d31663          	bne	t1,a3,8020463e <print_number+0x274>
80204616:	87aa                	mv	a5,a0
80204618:	00e5063b          	addw	a2,a0,a4
8020461c:	2581                	sext.w	a1,a1
8020461e:	02000813          	li	a6,32
80204622:	40f606bb          	subw	a3,a2,a5
80204626:	02d04a63          	bgtz	a3,8020465a <print_number+0x290>
8020462a:	87ba                	mv	a5,a4
8020462c:	00075363          	bgez	a4,80204632 <print_number+0x268>
80204630:	4781                	li	a5,0
80204632:	7422                	ld	s0,40(sp)
80204634:	7482                	ld	s1,32(sp)
80204636:	9d3d                	addw	a0,a0,a5
80204638:	0301011b          	addiw	sp,sp,48
8020463c:	8082                	ret
8020463e:	fc080ce3          	beqz	a6,80204616 <print_number+0x24c>
80204642:	0005089b          	sext.w	a7,a0
80204646:	00c8f863          	bgeu	a7,a2,80204656 <print_number+0x28c>
8020464a:	00f107bb          	addw	a5,sp,a5
8020464e:	0007c783          	lbu	a5,0(a5)
80204652:	00f50023          	sb	a5,0(a0)
80204656:	2505                	addiw	a0,a0,1
80204658:	bf5d                	j	8020460e <print_number+0x244>
8020465a:	0007869b          	sext.w	a3,a5
8020465e:	00b6f463          	bgeu	a3,a1,80204666 <print_number+0x29c>
80204662:	01078023          	sb	a6,0(a5)
80204666:	2785                	addiw	a5,a5,1
80204668:	bf6d                	j	80204622 <print_number+0x258>

8020466a <rt_vsnprintf>:
8020466a:	fa01011b          	addiw	sp,sp,-96
8020466e:	0005071b          	sext.w	a4,a0
80204672:	f852                	sd	s4,48(sp)
80204674:	f456                	sd	s5,40(sp)
80204676:	ec86                	sd	ra,88(sp)
80204678:	e8a2                	sd	s0,80(sp)
8020467a:	e4a6                	sd	s1,72(sp)
8020467c:	e0ca                	sd	s2,64(sp)
8020467e:	fc4e                	sd	s3,56(sp)
80204680:	f05a                	sd	s6,32(sp)
80204682:	ec5e                	sd	s7,24(sp)
80204684:	e862                	sd	s8,16(sp)
80204686:	e466                	sd	s9,8(sp)
80204688:	00b707bb          	addw	a5,a4,a1
8020468c:	8aba                	mv	s5,a4
8020468e:	8a32                	mv	s4,a2
80204690:	8336                	mv	t1,a3
80204692:	44e7f363          	bgeu	a5,a4,80204ad8 <rt_vsnprintf+0x46e>
80204696:	fff74b13          	not	s6,a4
8020469a:	2b01                	sext.w	s6,s6
8020469c:	5c7d                	li	s8,-1
8020469e:	00040bb7          	lui	s7,0x40
802046a2:	8556                	mv	a0,s5
802046a4:	02d00913          	li	s2,45
802046a8:	03000993          	li	s3,48
802046ac:	02000413          	li	s0,32
802046b0:	00004497          	auipc	s1,0x4
802046b4:	74048493          	addi	s1,s1,1856 # 80208df0 <__FUNCTION__.40+0x18>
802046b8:	0bc5                	addi	s7,s7,17 # 40011 <__text_size+0x36cb1>
802046ba:	ac95                	j	8020492e <rt_vsnprintf+0x2c4>
802046bc:	02500713          	li	a4,37
802046c0:	00e78d63          	beq	a5,a4,802046da <rt_vsnprintf+0x70>
802046c4:	0005071b          	sext.w	a4,a0
802046c8:	000c069b          	sext.w	a3,s8
802046cc:	00d77463          	bgeu	a4,a3,802046d4 <rt_vsnprintf+0x6a>
802046d0:	00f50023          	sb	a5,0(a0)
802046d4:	0015079b          	addiw	a5,a0,1
802046d8:	ac89                	j	8020492a <rt_vsnprintf+0x2c0>
802046da:	4881                	li	a7,0
802046dc:	02b00793          	li	a5,43
802046e0:	02300613          	li	a2,35
802046e4:	a891                	j	80204738 <rt_vsnprintf+0xce>
802046e6:	05270663          	beq	a4,s2,80204732 <rt_vsnprintf+0xc8>
802046ea:	09370d63          	beq	a4,s3,80204784 <rt_vsnprintf+0x11a>
802046ee:	fd07061b          	addiw	a2,a4,-48
802046f2:	45a5                	li	a1,9
802046f4:	4781                	li	a5,0
802046f6:	04c5ed63          	bltu	a1,a2,80204750 <rt_vsnprintf+0xe6>
802046fa:	4625                	li	a2,9
802046fc:	4829                	li	a6,10
802046fe:	0006c703          	lbu	a4,0(a3) # 4000 <__STACKSIZE__>
80204702:	fd07059b          	addiw	a1,a4,-48
80204706:	08b67263          	bgeu	a2,a1,8020478a <rt_vsnprintf+0x120>
8020470a:	0006c603          	lbu	a2,0(a3)
8020470e:	02e00713          	li	a4,46
80204712:	587d                	li	a6,-1
80204714:	0ae61463          	bne	a2,a4,802047bc <rt_vsnprintf+0x152>
80204718:	0016c703          	lbu	a4,1(a3)
8020471c:	45a5                	li	a1,9
8020471e:	0016861b          	addiw	a2,a3,1
80204722:	fd07081b          	addiw	a6,a4,-48
80204726:	1305e263          	bltu	a1,a6,8020484a <rt_vsnprintf+0x1e0>
8020472a:	4701                	li	a4,0
8020472c:	45a5                	li	a1,9
8020472e:	4e29                	li	t3,10
80204730:	a895                	j	802047a4 <rt_vsnprintf+0x13a>
80204732:	0108e893          	ori	a7,a7,16
80204736:	8a36                	mv	s4,a3
80204738:	001a4703          	lbu	a4,1(s4)
8020473c:	001a069b          	addiw	a3,s4,1
80204740:	02f70963          	beq	a4,a5,80204772 <rt_vsnprintf+0x108>
80204744:	fae7e1e3          	bltu	a5,a4,802046e6 <rt_vsnprintf+0x7c>
80204748:	02870863          	beq	a4,s0,80204778 <rt_vsnprintf+0x10e>
8020474c:	02c70963          	beq	a4,a2,8020477e <rt_vsnprintf+0x114>
80204750:	02a00613          	li	a2,42
80204754:	57fd                	li	a5,-1
80204756:	fac71ae3          	bne	a4,a2,8020470a <rt_vsnprintf+0xa0>
8020475a:	00032783          	lw	a5,0(t1)
8020475e:	002a069b          	addiw	a3,s4,2
80204762:	2321                	addiw	t1,t1,8
80204764:	fa07d3e3          	bgez	a5,8020470a <rt_vsnprintf+0xa0>
80204768:	40f007bb          	negw	a5,a5
8020476c:	0108e893          	ori	a7,a7,16
80204770:	bf69                	j	8020470a <rt_vsnprintf+0xa0>
80204772:	0048e893          	ori	a7,a7,4
80204776:	b7c1                	j	80204736 <rt_vsnprintf+0xcc>
80204778:	0088e893          	ori	a7,a7,8
8020477c:	bf6d                	j	80204736 <rt_vsnprintf+0xcc>
8020477e:	0208e893          	ori	a7,a7,32
80204782:	bf55                	j	80204736 <rt_vsnprintf+0xcc>
80204784:	0018e893          	ori	a7,a7,1
80204788:	b77d                	j	80204736 <rt_vsnprintf+0xcc>
8020478a:	02f807bb          	mulw	a5,a6,a5
8020478e:	2685                	addiw	a3,a3,1
80204790:	9fb9                	addw	a5,a5,a4
80204792:	fd07879b          	addiw	a5,a5,-48
80204796:	b7a5                	j	802046fe <rt_vsnprintf+0x94>
80204798:	02ee073b          	mulw	a4,t3,a4
8020479c:	2605                	addiw	a2,a2,1
8020479e:	9f35                	addw	a4,a4,a3
802047a0:	fd07071b          	addiw	a4,a4,-48
802047a4:	00064683          	lbu	a3,0(a2)
802047a8:	fd06881b          	addiw	a6,a3,-48
802047ac:	ff05f6e3          	bgeu	a1,a6,80204798 <rt_vsnprintf+0x12e>
802047b0:	0007081b          	sext.w	a6,a4
802047b4:	00075363          	bgez	a4,802047ba <rt_vsnprintf+0x150>
802047b8:	4801                	li	a6,0
802047ba:	86b2                	mv	a3,a2
802047bc:	0006c703          	lbu	a4,0(a3)
802047c0:	45c9                	li	a1,18
802047c2:	f987061b          	addiw	a2,a4,-104
802047c6:	0ff67613          	zext.b	a2,a2
802047ca:	08c5ed63          	bltu	a1,a2,80204864 <rt_vsnprintf+0x1fa>
802047ce:	00cbd633          	srl	a2,s7,a2
802047d2:	8a05                	andi	a2,a2,1
802047d4:	ca41                	beqz	a2,80204864 <rt_vsnprintf+0x1fa>
802047d6:	06800613          	li	a2,104
802047da:	00168a1b          	addiw	s4,a3,1
802047de:	00c71a63          	bne	a4,a2,802047f2 <rt_vsnprintf+0x188>
802047e2:	0016c603          	lbu	a2,1(a3)
802047e6:	00e61663          	bne	a2,a4,802047f2 <rt_vsnprintf+0x188>
802047ea:	00268a1b          	addiw	s4,a3,2
802047ee:	04800713          	li	a4,72
802047f2:	000a4683          	lbu	a3,0(s4)
802047f6:	07800613          	li	a2,120
802047fa:	02d66163          	bltu	a2,a3,8020481c <rt_vsnprintf+0x1b2>
802047fe:	05700613          	li	a2,87
80204802:	06d66463          	bltu	a2,a3,8020486a <rt_vsnprintf+0x200>
80204806:	02500793          	li	a5,37
8020480a:	26f68f63          	beq	a3,a5,80204a88 <rt_vsnprintf+0x41e>
8020480e:	fbb6869b          	addiw	a3,a3,-69
80204812:	0ff6f693          	zext.b	a3,a3
80204816:	4789                	li	a5,2
80204818:	28d7fb63          	bgeu	a5,a3,80204aae <rt_vsnprintf+0x444>
8020481c:	0005079b          	sext.w	a5,a0
80204820:	000c069b          	sext.w	a3,s8
80204824:	00d7f663          	bgeu	a5,a3,80204830 <rt_vsnprintf+0x1c6>
80204828:	02500793          	li	a5,37
8020482c:	00f50023          	sb	a5,0(a0)
80204830:	000a4703          	lbu	a4,0(s4)
80204834:	0015079b          	addiw	a5,a0,1
80204838:	26070d63          	beqz	a4,80204ab2 <rt_vsnprintf+0x448>
8020483c:	00d7f463          	bgeu	a5,a3,80204844 <rt_vsnprintf+0x1da>
80204840:	00e500a3          	sb	a4,1(a0)
80204844:	0025079b          	addiw	a5,a0,2
80204848:	a0cd                	j	8020492a <rt_vsnprintf+0x2c0>
8020484a:	02a00593          	li	a1,42
8020484e:	00b71863          	bne	a4,a1,8020485e <rt_vsnprintf+0x1f4>
80204852:	00032703          	lw	a4,0(t1)
80204856:	0026861b          	addiw	a2,a3,2
8020485a:	2321                	addiw	t1,t1,8
8020485c:	bf91                	j	802047b0 <rt_vsnprintf+0x146>
8020485e:	86b2                	mv	a3,a2
80204860:	4801                	li	a6,0
80204862:	bfa9                	j	802047bc <rt_vsnprintf+0x152>
80204864:	8a36                	mv	s4,a3
80204866:	4701                	li	a4,0
80204868:	b769                	j	802047f2 <rt_vsnprintf+0x188>
8020486a:	fa86869b          	addiw	a3,a3,-88
8020486e:	0ff6f613          	zext.b	a2,a3
80204872:	fac465e3          	bltu	s0,a2,8020481c <rt_vsnprintf+0x1b2>
80204876:	0ff6f693          	zext.b	a3,a3
8020487a:	0026969b          	slliw	a3,a3,0x2
8020487e:	9ea5                	addw	a3,a3,s1
80204880:	4294                	lw	a3,0(a3)
80204882:	9ea5                	addw	a3,a3,s1
80204884:	8682                	jr	a3
80204886:	4689                	li	a3,2
80204888:	06c00613          	li	a2,108
8020488c:	00830c9b          	addiw	s9,t1,8
80204890:	1ec70963          	beq	a4,a2,80204a82 <rt_vsnprintf+0x418>
80204894:	04800613          	li	a2,72
80204898:	20c71f63          	bne	a4,a2,80204ab6 <rt_vsnprintf+0x44c>
8020489c:	00030603          	lb	a2,0(t1)
802048a0:	85e2                	mv	a1,s8
802048a2:	b29ff0ef          	jal	802043ca <print_number>
802048a6:	87aa                	mv	a5,a0
802048a8:	8366                	mv	t1,s9
802048aa:	a041                	j	8020492a <rt_vsnprintf+0x2c0>
802048ac:	0108f893          	andi	a7,a7,16
802048b0:	000c061b          	sext.w	a2,s8
802048b4:	02089f63          	bnez	a7,802048f2 <rt_vsnprintf+0x288>
802048b8:	86be                	mv	a3,a5
802048ba:	872a                	mv	a4,a0
802048bc:	02000593          	li	a1,32
802048c0:	a801                	j	802048d0 <rt_vsnprintf+0x266>
802048c2:	0007081b          	sext.w	a6,a4
802048c6:	00c87463          	bgeu	a6,a2,802048ce <rt_vsnprintf+0x264>
802048ca:	00b70023          	sb	a1,0(a4)
802048ce:	2705                	addiw	a4,a4,1
802048d0:	36fd                	addiw	a3,a3,-1
802048d2:	fed048e3          	bgtz	a3,802048c2 <rt_vsnprintf+0x258>
802048d6:	fff7871b          	addiw	a4,a5,-1
802048da:	4681                	li	a3,0
802048dc:	00f05363          	blez	a5,802048e2 <rt_vsnprintf+0x278>
802048e0:	86ba                	mv	a3,a4
802048e2:	9d35                	addw	a0,a0,a3
802048e4:	86be                	mv	a3,a5
802048e6:	00f04363          	bgtz	a5,802048ec <rt_vsnprintf+0x282>
802048ea:	4685                	li	a3,1
802048ec:	9f15                	subw	a4,a4,a3
802048ee:	0017079b          	addiw	a5,a4,1
802048f2:	0005071b          	sext.w	a4,a0
802048f6:	0083059b          	addiw	a1,t1,8
802048fa:	00c77663          	bgeu	a4,a2,80204906 <rt_vsnprintf+0x29c>
802048fe:	00032703          	lw	a4,0(t1)
80204902:	00e50023          	sb	a4,0(a0)
80204906:	0015071b          	addiw	a4,a0,1
8020490a:	86ba                	mv	a3,a4
8020490c:	9d3d                	addw	a0,a0,a5
8020490e:	02000893          	li	a7,32
80204912:	40d5083b          	subw	a6,a0,a3
80204916:	05004a63          	bgtz	a6,8020496a <rt_vsnprintf+0x300>
8020491a:	4681                	li	a3,0
8020491c:	00f05463          	blez	a5,80204924 <rt_vsnprintf+0x2ba>
80204920:	fff7869b          	addiw	a3,a5,-1
80204924:	00d707bb          	addw	a5,a4,a3
80204928:	832e                	mv	t1,a1
8020492a:	2a05                	addiw	s4,s4,1
8020492c:	853e                	mv	a0,a5
8020492e:	000a4783          	lbu	a5,0(s4)
80204932:	d80795e3          	bnez	a5,802046bc <rt_vsnprintf+0x52>
80204936:	000b0a63          	beqz	s6,8020494a <rt_vsnprintf+0x2e0>
8020493a:	0005079b          	sext.w	a5,a0
8020493e:	000c071b          	sext.w	a4,s8
80204942:	18e7fe63          	bgeu	a5,a4,80204ade <rt_vsnprintf+0x474>
80204946:	00050023          	sb	zero,0(a0)
8020494a:	60e6                	ld	ra,88(sp)
8020494c:	6446                	ld	s0,80(sp)
8020494e:	64a6                	ld	s1,72(sp)
80204950:	6906                	ld	s2,64(sp)
80204952:	79e2                	ld	s3,56(sp)
80204954:	7a42                	ld	s4,48(sp)
80204956:	7b02                	ld	s6,32(sp)
80204958:	6be2                	ld	s7,24(sp)
8020495a:	6c42                	ld	s8,16(sp)
8020495c:	6ca2                	ld	s9,8(sp)
8020495e:	4155053b          	subw	a0,a0,s5
80204962:	7aa2                	ld	s5,40(sp)
80204964:	0601011b          	addiw	sp,sp,96
80204968:	8082                	ret
8020496a:	0006881b          	sext.w	a6,a3
8020496e:	00c87463          	bgeu	a6,a2,80204976 <rt_vsnprintf+0x30c>
80204972:	01168023          	sb	a7,0(a3)
80204976:	2685                	addiw	a3,a3,1
80204978:	bf69                	j	80204912 <rt_vsnprintf+0x2a8>
8020497a:	00032703          	lw	a4,0(t1)
8020497e:	00830e1b          	addiw	t3,t1,8
80204982:	85ba                	mv	a1,a4
80204984:	e709                	bnez	a4,8020498e <rt_vsnprintf+0x324>
80204986:	00004597          	auipc	a1,0x4
8020498a:	82a58593          	addi	a1,a1,-2006 # 802081b0 <rt_system_timer_thread_init+0x1058>
8020498e:	4681                	li	a3,0
80204990:	00f68763          	beq	a3,a5,8020499e <rt_vsnprintf+0x334>
80204994:	00d5873b          	addw	a4,a1,a3
80204998:	00074703          	lbu	a4,0(a4)
8020499c:	e71d                	bnez	a4,802049ca <rt_vsnprintf+0x360>
8020499e:	01005863          	blez	a6,802049ae <rt_vsnprintf+0x344>
802049a2:	8736                	mv	a4,a3
802049a4:	00d85363          	bge	a6,a3,802049aa <rt_vsnprintf+0x340>
802049a8:	8742                	mv	a4,a6
802049aa:	0007069b          	sext.w	a3,a4
802049ae:	0108f893          	andi	a7,a7,16
802049b2:	04089b63          	bnez	a7,80204a08 <rt_vsnprintf+0x39e>
802049b6:	872a                	mv	a4,a0
802049b8:	0007861b          	sext.w	a2,a5
802049bc:	00f508bb          	addw	a7,a0,a5
802049c0:	000c031b          	sext.w	t1,s8
802049c4:	02000e93          	li	t4,32
802049c8:	a811                	j	802049dc <rt_vsnprintf+0x372>
802049ca:	2685                	addiw	a3,a3,1
802049cc:	b7d1                	j	80204990 <rt_vsnprintf+0x326>
802049ce:	0007081b          	sext.w	a6,a4
802049d2:	00687463          	bgeu	a6,t1,802049da <rt_vsnprintf+0x370>
802049d6:	01d70023          	sb	t4,0(a4)
802049da:	2705                	addiw	a4,a4,1
802049dc:	40e8883b          	subw	a6,a7,a4
802049e0:	ff06c7e3          	blt	a3,a6,802049ce <rt_vsnprintf+0x364>
802049e4:	00d7a833          	slt	a6,a5,a3
802049e8:	40d6073b          	subw	a4,a2,a3
802049ec:	00184893          	xori	a7,a6,1
802049f0:	4601                	li	a2,0
802049f2:	00081363          	bnez	a6,802049f8 <rt_vsnprintf+0x38e>
802049f6:	863a                	mv	a2,a4
802049f8:	9d31                	addw	a0,a0,a2
802049fa:	37fd                	addiw	a5,a5,-1
802049fc:	4601                	li	a2,0
802049fe:	00088463          	beqz	a7,80204a06 <rt_vsnprintf+0x39c>
80204a02:	40e0063b          	negw	a2,a4
80204a06:	9fb1                	addw	a5,a5,a2
80204a08:	4701                	li	a4,0
80204a0a:	000c089b          	sext.w	a7,s8
80204a0e:	02d71c63          	bne	a4,a3,80204a46 <rt_vsnprintf+0x3dc>
80204a12:	00d5073b          	addw	a4,a0,a3
80204a16:	0006859b          	sext.w	a1,a3
80204a1a:	863a                	mv	a2,a4
80204a1c:	0007851b          	sext.w	a0,a5
80204a20:	00f708bb          	addw	a7,a4,a5
80204a24:	000c031b          	sext.w	t1,s8
80204a28:	02000e93          	li	t4,32
80204a2c:	40c8883b          	subw	a6,a7,a2
80204a30:	0306c863          	blt	a3,a6,80204a60 <rt_vsnprintf+0x3f6>
80204a34:	4601                	li	a2,0
80204a36:	00d7c463          	blt	a5,a3,80204a3e <rt_vsnprintf+0x3d4>
80204a3a:	40b5063b          	subw	a2,a0,a1
80204a3e:	00c707bb          	addw	a5,a4,a2
80204a42:	8372                	mv	t1,t3
80204a44:	b5dd                	j	8020492a <rt_vsnprintf+0x2c0>
80204a46:	00e5033b          	addw	t1,a0,a4
80204a4a:	0007061b          	sext.w	a2,a4
80204a4e:	01137763          	bgeu	t1,a7,80204a5c <rt_vsnprintf+0x3f2>
80204a52:	9e2d                	addw	a2,a2,a1
80204a54:	00064603          	lbu	a2,0(a2)
80204a58:	00c30023          	sb	a2,0(t1)
80204a5c:	2705                	addiw	a4,a4,1
80204a5e:	bf45                	j	80204a0e <rt_vsnprintf+0x3a4>
80204a60:	0006081b          	sext.w	a6,a2
80204a64:	00687463          	bgeu	a6,t1,80204a6c <rt_vsnprintf+0x402>
80204a68:	01d60023          	sb	t4,0(a2)
80204a6c:	2605                	addiw	a2,a2,1
80204a6e:	bf7d                	j	80204a2c <rt_vsnprintf+0x3c2>
80204a70:	56fd                	li	a3,-1
80204a72:	00d79563          	bne	a5,a3,80204a7c <rt_vsnprintf+0x412>
80204a76:	0218e893          	ori	a7,a7,33
80204a7a:	47a9                	li	a5,10
80204a7c:	00830c9b          	addiw	s9,t1,8
80204a80:	46c1                	li	a3,16
80204a82:	00032603          	lw	a2,0(t1)
80204a86:	bd29                	j	802048a0 <rt_vsnprintf+0x236>
80204a88:	0005079b          	sext.w	a5,a0
80204a8c:	000c071b          	sext.w	a4,s8
80204a90:	c4e7f2e3          	bgeu	a5,a4,802046d4 <rt_vsnprintf+0x6a>
80204a94:	00d50023          	sb	a3,0(a0)
80204a98:	b935                	j	802046d4 <rt_vsnprintf+0x6a>
80204a9a:	46a1                	li	a3,8
80204a9c:	b3f5                	j	80204888 <rt_vsnprintf+0x21e>
80204a9e:	0408e893          	ori	a7,a7,64
80204aa2:	46c1                	li	a3,16
80204aa4:	b3d5                	j	80204888 <rt_vsnprintf+0x21e>
80204aa6:	0028e893          	ori	a7,a7,2
80204aaa:	46a9                	li	a3,10
80204aac:	bbf1                	j	80204888 <rt_vsnprintf+0x21e>
80204aae:	2321                	addiw	t1,t1,8
80204ab0:	b3b5                	j	8020481c <rt_vsnprintf+0x1b2>
80204ab2:	3a7d                	addiw	s4,s4,-1
80204ab4:	bd9d                	j	8020492a <rt_vsnprintf+0x2c0>
80204ab6:	06800613          	li	a2,104
80204aba:	fcc714e3          	bne	a4,a2,80204a82 <rt_vsnprintf+0x418>
80204abe:	0028f593          	andi	a1,a7,2
80204ac2:	00032603          	lw	a2,0(t1)
80204ac6:	e581                	bnez	a1,80204ace <rt_vsnprintf+0x464>
80204ac8:	1642                	slli	a2,a2,0x30
80204aca:	9241                	srli	a2,a2,0x30
80204acc:	bbd1                	j	802048a0 <rt_vsnprintf+0x236>
80204ace:	0106161b          	slliw	a2,a2,0x10
80204ad2:	4106561b          	sraiw	a2,a2,0x10
80204ad6:	b3e9                	j	802048a0 <rt_vsnprintf+0x236>
80204ad8:	8b2e                	mv	s6,a1
80204ada:	8c3e                	mv	s8,a5
80204adc:	b6c9                	j	8020469e <rt_vsnprintf+0x34>
80204ade:	fe0c0fa3          	sb	zero,-1(s8)
80204ae2:	b5a5                	j	8020494a <rt_vsnprintf+0x2e0>

80204ae4 <rt_snprintf>:
80204ae4:	fb01011b          	addiw	sp,sp,-80
80204ae8:	f436                	sd	a3,40(sp)
80204aea:	0281069b          	addiw	a3,sp,40
80204aee:	ec06                	sd	ra,24(sp)
80204af0:	f83a                	sd	a4,48(sp)
80204af2:	fc3e                	sd	a5,56(sp)
80204af4:	e0c2                	sd	a6,64(sp)
80204af6:	e4c6                	sd	a7,72(sp)
80204af8:	c636                	sw	a3,12(sp)
80204afa:	b71ff0ef          	jal	8020466a <rt_vsnprintf>
80204afe:	60e2                	ld	ra,24(sp)
80204b00:	0501011b          	addiw	sp,sp,80
80204b04:	8082                	ret

80204b06 <rt_set_errno>:
80204b06:	3141                	addiw	sp,sp,-16
80204b08:	e022                	sd	s0,0(sp)
80204b0a:	e406                	sd	ra,8(sp)
80204b0c:	842a                	mv	s0,a0
80204b0e:	889ff0ef          	jal	80204396 <rt_interrupt_get_nest>
80204b12:	c909                	beqz	a0,80204b24 <rt_set_errno+0x1e>
80204b14:	0000d797          	auipc	a5,0xd
80204b18:	a287ac23          	sw	s0,-1480(a5) # 8021154c <__rt_errno>
80204b1c:	60a2                	ld	ra,8(sp)
80204b1e:	6402                	ld	s0,0(sp)
80204b20:	2141                	addiw	sp,sp,16
80204b22:	8082                	ret
80204b24:	311010ef          	jal	80206634 <rt_thread_self>
80204b28:	0005079b          	sext.w	a5,a0
80204b2c:	d7e5                	beqz	a5,80204b14 <rt_set_errno+0xe>
80204b2e:	dd00                	sw	s0,56(a0)
80204b30:	b7f5                	j	80204b1c <rt_set_errno+0x16>

80204b32 <rt_memset>:
80204b32:	478d                	li	a5,3
80204b34:	0ff5f593          	zext.b	a1,a1
80204b38:	00c7e963          	bltu	a5,a2,80204b4a <rt_memset+0x18>
80204b3c:	87aa                	mv	a5,a0
80204b3e:	9e3d                	addw	a2,a2,a5
80204b40:	0007871b          	sext.w	a4,a5
80204b44:	06c71c63          	bne	a4,a2,80204bbc <rt_memset+0x8a>
80204b48:	8082                	ret
80204b4a:	00357713          	andi	a4,a0,3
80204b4e:	0005069b          	sext.w	a3,a0
80204b52:	87aa                	mv	a5,a0
80204b54:	f76d                	bnez	a4,80204b3e <rt_memset+0xc>
80204b56:	00859713          	slli	a4,a1,0x8
80204b5a:	01059813          	slli	a6,a1,0x10
80204b5e:	8f4d                	or	a4,a4,a1
80204b60:	01859793          	slli	a5,a1,0x18
80204b64:	01076733          	or	a4,a4,a6
80204b68:	8f5d                	or	a4,a4,a5
80204b6a:	2701                	sext.w	a4,a4
80204b6c:	87aa                	mv	a5,a0
80204b6e:	9eb1                	addw	a3,a3,a2
80204b70:	483d                	li	a6,15
80204b72:	40f688bb          	subw	a7,a3,a5
80204b76:	03186a63          	bltu	a6,a7,80204baa <rt_memset+0x78>
80204b7a:	0046579b          	srliw	a5,a2,0x4
80204b7e:	56c1                	li	a3,-16
80204b80:	02d787bb          	mulw	a5,a5,a3
80204b84:	480d                	li	a6,3
80204b86:	9e3d                	addw	a2,a2,a5
80204b88:	40f506bb          	subw	a3,a0,a5
80204b8c:	87b6                	mv	a5,a3
80204b8e:	00c6833b          	addw	t1,a3,a2
80204b92:	40d308bb          	subw	a7,t1,a3
80204b96:	03186063          	bltu	a6,a7,80204bb6 <rt_memset+0x84>
80204b9a:	0026571b          	srliw	a4,a2,0x2
80204b9e:	56f1                	li	a3,-4
80204ba0:	02d7073b          	mulw	a4,a4,a3
80204ba4:	9e39                	addw	a2,a2,a4
80204ba6:	9f99                	subw	a5,a5,a4
80204ba8:	bf59                	j	80204b3e <rt_memset+0xc>
80204baa:	c398                	sw	a4,0(a5)
80204bac:	c3d8                	sw	a4,4(a5)
80204bae:	c798                	sw	a4,8(a5)
80204bb0:	c7d8                	sw	a4,12(a5)
80204bb2:	27c1                	addiw	a5,a5,16
80204bb4:	bf7d                	j	80204b72 <rt_memset+0x40>
80204bb6:	c298                	sw	a4,0(a3)
80204bb8:	2691                	addiw	a3,a3,4
80204bba:	bfe1                	j	80204b92 <rt_memset+0x60>
80204bbc:	2785                	addiw	a5,a5,1
80204bbe:	feb78fa3          	sb	a1,-1(a5)
80204bc2:	bfbd                	j	80204b40 <rt_memset+0xe>

80204bc4 <rt_memcpy>:
80204bc4:	47bd                	li	a5,15
80204bc6:	00c7e763          	bltu	a5,a2,80204bd4 <rt_memcpy+0x10>
80204bca:	87aa                	mv	a5,a0
80204bcc:	4701                	li	a4,0
80204bce:	08e61663          	bne	a2,a4,80204c5a <rt_memcpy+0x96>
80204bd2:	8082                	ret
80204bd4:	00a5e8b3          	or	a7,a1,a0
80204bd8:	0038f893          	andi	a7,a7,3
80204bdc:	0005881b          	sext.w	a6,a1
80204be0:	0005071b          	sext.w	a4,a0
80204be4:	87aa                	mv	a5,a0
80204be6:	fe0893e3          	bnez	a7,80204bcc <rt_memcpy+0x8>
80204bea:	87ba                	mv	a5,a4
80204bec:	00c70e3b          	addw	t3,a4,a2
80204bf0:	433d                	li	t1,15
80204bf2:	00082e83          	lw	t4,0(a6)
80204bf6:	01d7a023          	sw	t4,0(a5)
80204bfa:	00482e83          	lw	t4,4(a6)
80204bfe:	01d7a223          	sw	t4,4(a5)
80204c02:	00882e83          	lw	t4,8(a6)
80204c06:	01d7a423          	sw	t4,8(a5)
80204c0a:	00c82683          	lw	a3,12(a6)
80204c0e:	2841                	addiw	a6,a6,16
80204c10:	c7d4                	sw	a3,12(a5)
80204c12:	27c1                	addiw	a5,a5,16
80204c14:	40fe073b          	subw	a4,t3,a5
80204c18:	fce36de3          	bltu	t1,a4,80204bf2 <rt_memcpy+0x2e>
80204c1c:	ff06079b          	addiw	a5,a2,-16
80204c20:	9bc1                	andi	a5,a5,-16
80204c22:	27c1                	addiw	a5,a5,16
80204c24:	9dbd                	addw	a1,a1,a5
80204c26:	00f67713          	andi	a4,a2,15
80204c2a:	9fa9                	addw	a5,a5,a0
80204c2c:	468d                	li	a3,3
80204c2e:	4117083b          	subw	a6,a4,a7
80204c32:	0106ea63          	bltu	a3,a6,80204c46 <rt_memcpy+0x82>
80204c36:	0027571b          	srliw	a4,a4,0x2
80204c3a:	0027171b          	slliw	a4,a4,0x2
80204c3e:	9fb9                	addw	a5,a5,a4
80204c40:	9db9                	addw	a1,a1,a4
80204c42:	8a0d                	andi	a2,a2,3
80204c44:	b761                	j	80204bcc <rt_memcpy+0x8>
80204c46:	0115883b          	addw	a6,a1,a7
80204c4a:	00082303          	lw	t1,0(a6)
80204c4e:	0117883b          	addw	a6,a5,a7
80204c52:	2891                	addiw	a7,a7,4
80204c54:	00682023          	sw	t1,0(a6)
80204c58:	bfd9                	j	80204c2e <rt_memcpy+0x6a>
80204c5a:	00e586bb          	addw	a3,a1,a4
80204c5e:	0006c803          	lbu	a6,0(a3)
80204c62:	00e786bb          	addw	a3,a5,a4
80204c66:	2705                	addiw	a4,a4,1
80204c68:	01068023          	sb	a6,0(a3)
80204c6c:	b78d                	j	80204bce <rt_memcpy+0xa>

80204c6e <rt_strncpy>:
80204c6e:	ca05                	beqz	a2,80204c9e <rt_strncpy+0x30>
80204c70:	87aa                	mv	a5,a0
80204c72:	0005c703          	lbu	a4,0(a1)
80204c76:	2585                	addiw	a1,a1,1
80204c78:	2785                	addiw	a5,a5,1
80204c7a:	fee78fa3          	sb	a4,-1(a5)
80204c7e:	0006069b          	sext.w	a3,a2
80204c82:	367d                	addiw	a2,a2,-1
80204c84:	ef01                	bnez	a4,80204c9c <rt_strncpy+0x2e>
80204c86:	0007871b          	sext.w	a4,a5
80204c8a:	9fb5                	addw	a5,a5,a3
80204c8c:	2705                	addiw	a4,a4,1
80204c8e:	86ba                	mv	a3,a4
80204c90:	00f71363          	bne	a4,a5,80204c96 <rt_strncpy+0x28>
80204c94:	8082                	ret
80204c96:	fe068fa3          	sb	zero,-1(a3)
80204c9a:	bfcd                	j	80204c8c <rt_strncpy+0x1e>
80204c9c:	fa79                	bnez	a2,80204c72 <rt_strncpy+0x4>
80204c9e:	8082                	ret

80204ca0 <rt_strncmp>:
80204ca0:	86aa                	mv	a3,a0
80204ca2:	4701                	li	a4,0
80204ca4:	00e61463          	bne	a2,a4,80204cac <rt_strncmp+0xc>
80204ca8:	4501                	li	a0,0
80204caa:	8082                	ret
80204cac:	00e687bb          	addw	a5,a3,a4
80204cb0:	0007c803          	lbu	a6,0(a5)
80204cb4:	00e587bb          	addw	a5,a1,a4
80204cb8:	0007c783          	lbu	a5,0(a5)
80204cbc:	40f807bb          	subw	a5,a6,a5
80204cc0:	0187951b          	slliw	a0,a5,0x18
80204cc4:	4185551b          	sraiw	a0,a0,0x18
80204cc8:	e501                	bnez	a0,80204cd0 <rt_strncmp+0x30>
80204cca:	2705                	addiw	a4,a4,1
80204ccc:	fc081ce3          	bnez	a6,80204ca4 <rt_strncmp+0x4>
80204cd0:	8082                	ret

80204cd2 <rt_strlen>:
80204cd2:	87aa                	mv	a5,a0
80204cd4:	0007c703          	lbu	a4,0(a5)
80204cd8:	e701                	bnez	a4,80204ce0 <rt_strlen+0xe>
80204cda:	40a7853b          	subw	a0,a5,a0
80204cde:	8082                	ret
80204ce0:	2785                	addiw	a5,a5,1
80204ce2:	bfcd                	j	80204cd4 <rt_strlen+0x2>

80204ce4 <rt_strnlen>:
80204ce4:	872a                	mv	a4,a0
80204ce6:	87aa                	mv	a5,a0
80204ce8:	0007c683          	lbu	a3,0(a5)
80204cec:	40e7853b          	subw	a0,a5,a4
80204cf0:	c299                	beqz	a3,80204cf6 <rt_strnlen+0x12>
80204cf2:	00b56363          	bltu	a0,a1,80204cf8 <rt_strnlen+0x14>
80204cf6:	8082                	ret
80204cf8:	2785                	addiw	a5,a5,1
80204cfa:	b7fd                	j	80204ce8 <rt_strnlen+0x4>

80204cfc <_heap_lock>:
80204cfc:	3141                	addiw	sp,sp,-16
80204cfe:	e406                	sd	ra,8(sp)
80204d00:	135010ef          	jal	80206634 <rt_thread_self>
80204d04:	2501                	sext.w	a0,a0
80204d06:	c911                	beqz	a0,80204d1a <_heap_lock+0x1e>
80204d08:	60a2                	ld	ra,8(sp)
80204d0a:	55fd                	li	a1,-1
80204d0c:	00011517          	auipc	a0,0x11
80204d10:	0bc50513          	addi	a0,a0,188 # 80215dc8 <_lock>
80204d14:	2141                	addiw	sp,sp,16
80204d16:	c12ff06f          	j	80204128 <rt_mutex_take>
80204d1a:	60a2                	ld	ra,8(sp)
80204d1c:	4501                	li	a0,0
80204d1e:	2141                	addiw	sp,sp,16
80204d20:	8082                	ret

80204d22 <rt_console_set_device>:
80204d22:	fd01011b          	addiw	sp,sp,-48
80204d26:	ec26                	sd	s1,24(sp)
80204d28:	0000d497          	auipc	s1,0xd
80204d2c:	83448493          	addi	s1,s1,-1996 # 8021155c <_console_device>
80204d30:	e44e                	sd	s3,8(sp)
80204d32:	0004a983          	lw	s3,0(s1)
80204d36:	e84a                	sd	s2,16(sp)
80204d38:	f406                	sd	ra,40(sp)
80204d3a:	f022                	sd	s0,32(sp)
80204d3c:	b91fc0ef          	jal	802018cc <rt_device_find>
80204d40:	0005079b          	sext.w	a5,a0
80204d44:	4901                	li	s2,0
80204d46:	00f98f63          	beq	s3,a5,80204d64 <rt_console_set_device+0x42>
80204d4a:	894e                	mv	s2,s3
80204d4c:	cf81                	beqz	a5,80204d64 <rt_console_set_device+0x42>
80204d4e:	4088                	lw	a0,0(s1)
80204d50:	843e                	mv	s0,a5
80204d52:	c119                	beqz	a0,80204d58 <rt_console_set_device+0x36>
80204d54:	cf9fc0ef          	jal	80201a4c <rt_device_close>
80204d58:	04300593          	li	a1,67
80204d5c:	8522                	mv	a0,s0
80204d5e:	bc7fc0ef          	jal	80201924 <rt_device_open>
80204d62:	c080                	sw	s0,0(s1)
80204d64:	70a2                	ld	ra,40(sp)
80204d66:	7402                	ld	s0,32(sp)
80204d68:	64e2                	ld	s1,24(sp)
80204d6a:	69a2                	ld	s3,8(sp)
80204d6c:	854a                	mv	a0,s2
80204d6e:	6942                	ld	s2,16(sp)
80204d70:	0301011b          	addiw	sp,sp,48
80204d74:	8082                	ret

80204d76 <_kputs>:
80204d76:	0000c797          	auipc	a5,0xc
80204d7a:	7e67a783          	lw	a5,2022(a5) # 8021155c <_console_device>
80204d7e:	862a                	mv	a2,a0
80204d80:	86ae                	mv	a3,a1
80204d82:	e399                	bnez	a5,80204d88 <_kputs+0x12>
80204d84:	c8afc06f          	j	8020120e <rt_hw_console_output>
80204d88:	4581                	li	a1,0
80204d8a:	853e                	mv	a0,a5
80204d8c:	d49fc06f          	j	80201ad4 <rt_device_write>

80204d90 <rt_kputs>:
80204d90:	0005079b          	sext.w	a5,a0
80204d94:	cf99                	beqz	a5,80204db2 <rt_kputs+0x22>
80204d96:	3141                	addiw	sp,sp,-16
80204d98:	e022                	sd	s0,0(sp)
80204d9a:	e406                	sd	ra,8(sp)
80204d9c:	843e                	mv	s0,a5
80204d9e:	f35ff0ef          	jal	80204cd2 <rt_strlen>
80204da2:	0005059b          	sext.w	a1,a0
80204da6:	8522                	mv	a0,s0
80204da8:	6402                	ld	s0,0(sp)
80204daa:	60a2                	ld	ra,8(sp)
80204dac:	2141                	addiw	sp,sp,16
80204dae:	fc9ff06f          	j	80204d76 <_kputs>
80204db2:	8082                	ret

80204db4 <rt_kprintf>:
80204db4:	fa01011b          	addiw	sp,sp,-96
80204db8:	f42e                	sd	a1,40(sp)
80204dba:	f832                	sd	a2,48(sp)
80204dbc:	fc36                	sd	a3,56(sp)
80204dbe:	862a                	mv	a2,a0
80204dc0:	0281069b          	addiw	a3,sp,40
80204dc4:	0ff00593          	li	a1,255
80204dc8:	00011517          	auipc	a0,0x11
80204dcc:	e7050513          	addi	a0,a0,-400 # 80215c38 <rt_log_buf.3>
80204dd0:	e822                	sd	s0,16(sp)
80204dd2:	e4be                	sd	a5,72(sp)
80204dd4:	ec06                	sd	ra,24(sp)
80204dd6:	e0ba                	sd	a4,64(sp)
80204dd8:	e8c2                	sd	a6,80(sp)
80204dda:	ecc6                	sd	a7,88(sp)
80204ddc:	c636                	sw	a3,12(sp)
80204dde:	88dff0ef          	jal	8020466a <rt_vsnprintf>
80204de2:	0005041b          	sext.w	s0,a0
80204de6:	0ff00793          	li	a5,255
80204dea:	2501                	sext.w	a0,a0
80204dec:	00a7f463          	bgeu	a5,a0,80204df4 <rt_kprintf+0x40>
80204df0:	0ff00413          	li	s0,255
80204df4:	85a2                	mv	a1,s0
80204df6:	00011517          	auipc	a0,0x11
80204dfa:	e4250513          	addi	a0,a0,-446 # 80215c38 <rt_log_buf.3>
80204dfe:	f79ff0ef          	jal	80204d76 <_kputs>
80204e02:	60e2                	ld	ra,24(sp)
80204e04:	8522                	mv	a0,s0
80204e06:	6442                	ld	s0,16(sp)
80204e08:	0601011b          	addiw	sp,sp,96
80204e0c:	8082                	ret

80204e0e <rt_show_version>:
80204e0e:	3141                	addiw	sp,sp,-16
80204e10:	00003517          	auipc	a0,0x3
80204e14:	3a850513          	addi	a0,a0,936 # 802081b8 <rt_system_timer_thread_init+0x1060>
80204e18:	e406                	sd	ra,8(sp)
80204e1a:	f9bff0ef          	jal	80204db4 <rt_kprintf>
80204e1e:	00003517          	auipc	a0,0x3
80204e22:	3aa50513          	addi	a0,a0,938 # 802081c8 <rt_system_timer_thread_init+0x1070>
80204e26:	f8fff0ef          	jal	80204db4 <rt_kprintf>
80204e2a:	00003797          	auipc	a5,0x3
80204e2e:	3c678793          	addi	a5,a5,966 # 802081f0 <rt_system_timer_thread_init+0x1098>
80204e32:	00003717          	auipc	a4,0x3
80204e36:	3ce70713          	addi	a4,a4,974 # 80208200 <rt_system_timer_thread_init+0x10a8>
80204e3a:	4681                	li	a3,0
80204e3c:	4609                	li	a2,2
80204e3e:	4595                	li	a1,5
80204e40:	00003517          	auipc	a0,0x3
80204e44:	3d050513          	addi	a0,a0,976 # 80208210 <rt_system_timer_thread_init+0x10b8>
80204e48:	f6dff0ef          	jal	80204db4 <rt_kprintf>
80204e4c:	60a2                	ld	ra,8(sp)
80204e4e:	00003517          	auipc	a0,0x3
80204e52:	3ea50513          	addi	a0,a0,1002 # 80208238 <rt_system_timer_thread_init+0x10e0>
80204e56:	2141                	addiw	sp,sp,16
80204e58:	f5dff06f          	j	80204db4 <rt_kprintf>

80204e5c <rt_backtrace_frame>:
80204e5c:	fd01011b          	addiw	sp,sp,-48
80204e60:	e84a                	sd	s2,16(sp)
80204e62:	892a                	mv	s2,a0
80204e64:	00003517          	auipc	a0,0x3
80204e68:	40450513          	addi	a0,a0,1028 # 80208268 <rt_system_timer_thread_init+0x1110>
80204e6c:	f022                	sd	s0,32(sp)
80204e6e:	ec26                	sd	s1,24(sp)
80204e70:	e44e                	sd	s3,8(sp)
80204e72:	f406                	sd	ra,40(sp)
80204e74:	842e                	mv	s0,a1
80204e76:	02000493          	li	s1,32
80204e7a:	f3bff0ef          	jal	80204db4 <rt_kprintf>
80204e7e:	00003997          	auipc	s3,0x3
80204e82:	41a98993          	addi	s3,s3,1050 # 80208298 <rt_system_timer_thread_init+0x1140>
80204e86:	404c                	lw	a1,4(s0)
80204e88:	854e                	mv	a0,s3
80204e8a:	f2bff0ef          	jal	80204db4 <rt_kprintf>
80204e8e:	85a2                	mv	a1,s0
80204e90:	854a                	mv	a0,s2
80204e92:	feffb0ef          	jal	80200e80 <rt_hw_backtrace_frame_unwind>
80204e96:	e119                	bnez	a0,80204e9c <rt_backtrace_frame+0x40>
80204e98:	34fd                	addiw	s1,s1,-1
80204e9a:	f4f5                	bnez	s1,80204e86 <rt_backtrace_frame+0x2a>
80204e9c:	00002517          	auipc	a0,0x2
80204ea0:	76450513          	addi	a0,a0,1892 # 80207600 <rt_system_timer_thread_init+0x4a8>
80204ea4:	f11ff0ef          	jal	80204db4 <rt_kprintf>
80204ea8:	70a2                	ld	ra,40(sp)
80204eaa:	7402                	ld	s0,32(sp)
80204eac:	64e2                	ld	s1,24(sp)
80204eae:	6942                	ld	s2,16(sp)
80204eb0:	69a2                	ld	s3,8(sp)
80204eb2:	4501                	li	a0,0
80204eb4:	0301011b          	addiw	sp,sp,48
80204eb8:	8082                	ret

80204eba <rt_backtrace>:
80204eba:	fd01011b          	addiw	sp,sp,-48
80204ebe:	f022                	sd	s0,32(sp)
80204ec0:	f406                	sd	ra,40(sp)
80204ec2:	0301041b          	addiw	s0,sp,48
80204ec6:	ec26                	sd	s1,24(sp)
80204ec8:	76c010ef          	jal	80206634 <rt_thread_self>
80204ecc:	00000797          	auipc	a5,0x0
80204ed0:	fee78793          	addi	a5,a5,-18 # 80204eba <rt_backtrace>
80204ed4:	fcf42e23          	sw	a5,-36(s0)
80204ed8:	fc842c23          	sw	s0,-40(s0)
80204edc:	0004071b          	sext.w	a4,s0
80204ee0:	57a9                	li	a5,-22
80204ee2:	cf01                	beqz	a4,80204efa <rt_backtrace+0x40>
80204ee4:	fd84059b          	addiw	a1,s0,-40
80204ee8:	84aa                	mv	s1,a0
80204eea:	f97fb0ef          	jal	80200e80 <rt_hw_backtrace_frame_unwind>
80204eee:	fd84059b          	addiw	a1,s0,-40
80204ef2:	8526                	mv	a0,s1
80204ef4:	f69ff0ef          	jal	80204e5c <rt_backtrace_frame>
80204ef8:	87aa                	mv	a5,a0
80204efa:	70a2                	ld	ra,40(sp)
80204efc:	7402                	ld	s0,32(sp)
80204efe:	64e2                	ld	s1,24(sp)
80204f00:	853e                	mv	a0,a5
80204f02:	0301011b          	addiw	sp,sp,48
80204f06:	8082                	ret

80204f08 <__rt_ffs>:
80204f08:	cd39                	beqz	a0,80204f66 <__rt_ffs+0x5e>
80204f0a:	0ff57713          	zext.b	a4,a0
80204f0e:	00004797          	auipc	a5,0x4
80204f12:	fca78793          	addi	a5,a5,-54 # 80208ed8 <__lowest_bit_bitmap>
80204f16:	c711                	beqz	a4,80204f22 <__rt_ffs+0x1a>
80204f18:	9fb9                	addw	a5,a5,a4
80204f1a:	0007c503          	lbu	a0,0(a5)
80204f1e:	0505                	addi	a0,a0,1
80204f20:	8082                	ret
80204f22:	00855713          	srli	a4,a0,0x8
80204f26:	0ff77713          	zext.b	a4,a4
80204f2a:	cb11                	beqz	a4,80204f3e <__rt_ffs+0x36>
80204f2c:	4085551b          	sraiw	a0,a0,0x8
80204f30:	0ff57513          	zext.b	a0,a0
80204f34:	9fa9                	addw	a5,a5,a0
80204f36:	0007c503          	lbu	a0,0(a5)
80204f3a:	0525                	addi	a0,a0,9
80204f3c:	8082                	ret
80204f3e:	01055713          	srli	a4,a0,0x10
80204f42:	0ff77713          	zext.b	a4,a4
80204f46:	cb11                	beqz	a4,80204f5a <__rt_ffs+0x52>
80204f48:	4105551b          	sraiw	a0,a0,0x10
80204f4c:	0ff57513          	zext.b	a0,a0
80204f50:	9fa9                	addw	a5,a5,a0
80204f52:	0007c503          	lbu	a0,0(a5)
80204f56:	0545                	addi	a0,a0,17
80204f58:	8082                	ret
80204f5a:	0185551b          	srliw	a0,a0,0x18
80204f5e:	9fa9                	addw	a5,a5,a0
80204f60:	0007c503          	lbu	a0,0(a5)
80204f64:	0565                	addi	a0,a0,25
80204f66:	8082                	ret

80204f68 <rt_assert_handler>:
80204f68:	3101                	addiw	sp,sp,-32
80204f6a:	ec06                	sd	ra,24(sp)
80204f6c:	000107a3          	sb	zero,15(sp)
80204f70:	0000c817          	auipc	a6,0xc
80204f74:	5e082803          	lw	a6,1504(a6) # 80211550 <rt_assert_hook>
80204f78:	02081463          	bnez	a6,80204fa0 <rt_assert_handler+0x38>
80204f7c:	86b2                	mv	a3,a2
80204f7e:	862e                	mv	a2,a1
80204f80:	85aa                	mv	a1,a0
80204f82:	00003517          	auipc	a0,0x3
80204f86:	31e50513          	addi	a0,a0,798 # 802082a0 <rt_system_timer_thread_init+0x1148>
80204f8a:	e2bff0ef          	jal	80204db4 <rt_kprintf>
80204f8e:	f2dff0ef          	jal	80204eba <rt_backtrace>
80204f92:	00f14783          	lbu	a5,15(sp)
80204f96:	dff5                	beqz	a5,80204f92 <rt_assert_handler+0x2a>
80204f98:	60e2                	ld	ra,24(sp)
80204f9a:	0201011b          	addiw	sp,sp,32
80204f9e:	8082                	ret
80204fa0:	60e2                	ld	ra,24(sp)
80204fa2:	0201011b          	addiw	sp,sp,32
80204fa6:	8802                	jr	a6

80204fa8 <rt_system_heap_init_generic>:
80204fa8:	3101                	addiw	sp,sp,-32
80204faa:	e822                	sd	s0,16(sp)
80204fac:	0035041b          	addiw	s0,a0,3
80204fb0:	9871                	andi	s0,s0,-4
80204fb2:	99f1                	andi	a1,a1,-4
80204fb4:	e426                	sd	s1,8(sp)
80204fb6:	ec06                	sd	ra,24(sp)
80204fb8:	2401                	sext.w	s0,s0
80204fba:	0005849b          	sext.w	s1,a1
80204fbe:	00946e63          	bltu	s0,s1,80204fda <rt_system_heap_init_generic+0x32>
80204fc2:	30f00613          	li	a2,783
80204fc6:	00004597          	auipc	a1,0x4
80204fca:	ef258593          	addi	a1,a1,-270 # 80208eb8 <__FUNCTION__.1>
80204fce:	00003517          	auipc	a0,0x3
80204fd2:	30a50513          	addi	a0,a0,778 # 802082d8 <rt_system_timer_thread_init+0x1180>
80204fd6:	f93ff0ef          	jal	80204f68 <rt_assert_handler>
80204fda:	408486bb          	subw	a3,s1,s0
80204fde:	8622                	mv	a2,s0
80204fe0:	00003597          	auipc	a1,0x3
80204fe4:	31058593          	addi	a1,a1,784 # 802082f0 <rt_system_timer_thread_init+0x1198>
80204fe8:	00011517          	auipc	a0,0x11
80204fec:	d5050513          	addi	a0,a0,-688 # 80215d38 <system_heap>
80204ff0:	0ee000ef          	jal	802050de <rt_memheap_init>
80204ff4:	6442                	ld	s0,16(sp)
80204ff6:	60e2                	ld	ra,24(sp)
80204ff8:	64a2                	ld	s1,8(sp)
80204ffa:	4785                	li	a5,1
80204ffc:	00011717          	auipc	a4,0x11
80205000:	dcf72423          	sw	a5,-568(a4) # 80215dc4 <system_heap+0x8c>
80205004:	4605                	li	a2,1
80205006:	00003597          	auipc	a1,0x3
8020500a:	2ea58593          	addi	a1,a1,746 # 802082f0 <rt_system_timer_thread_init+0x1198>
8020500e:	00011517          	auipc	a0,0x11
80205012:	dba50513          	addi	a0,a0,-582 # 80215dc8 <_lock>
80205016:	0201011b          	addiw	sp,sp,32
8020501a:	8a0ff06f          	j	802040ba <rt_mutex_init>

8020501e <rt_system_heap_init>:
8020501e:	f8bff06f          	j	80204fa8 <rt_system_heap_init_generic>

80205022 <_heap_unlock>:
80205022:	3141                	addiw	sp,sp,-16
80205024:	e406                	sd	ra,8(sp)
80205026:	cd09                	beqz	a0,80205040 <_heap_unlock+0x1e>
80205028:	2ab00613          	li	a2,683
8020502c:	00004597          	auipc	a1,0x4
80205030:	e7c58593          	addi	a1,a1,-388 # 80208ea8 <__FUNCTION__.0>
80205034:	00003517          	auipc	a0,0x3
80205038:	2c450513          	addi	a0,a0,708 # 802082f8 <rt_system_timer_thread_init+0x11a0>
8020503c:	f2dff0ef          	jal	80204f68 <rt_assert_handler>
80205040:	5f4010ef          	jal	80206634 <rt_thread_self>
80205044:	2501                	sext.w	a0,a0
80205046:	c909                	beqz	a0,80205058 <_heap_unlock+0x36>
80205048:	60a2                	ld	ra,8(sp)
8020504a:	00011517          	auipc	a0,0x11
8020504e:	d7e50513          	addi	a0,a0,-642 # 80215dc8 <_lock>
80205052:	2141                	addiw	sp,sp,16
80205054:	8daff06f          	j	8020412e <rt_mutex_release>
80205058:	60a2                	ld	ra,8(sp)
8020505a:	2141                	addiw	sp,sp,16
8020505c:	8082                	ret

8020505e <rt_malloc>:
8020505e:	fd01011b          	addiw	sp,sp,-48
80205062:	f406                	sd	ra,40(sp)
80205064:	f022                	sd	s0,32(sp)
80205066:	ec26                	sd	s1,24(sp)
80205068:	842a                	mv	s0,a0
8020506a:	c93ff0ef          	jal	80204cfc <_heap_lock>
8020506e:	84aa                	mv	s1,a0
80205070:	85a2                	mv	a1,s0
80205072:	00011517          	auipc	a0,0x11
80205076:	cc650513          	addi	a0,a0,-826 # 80215d38 <system_heap>
8020507a:	442000ef          	jal	802054bc <_memheap_alloc>
8020507e:	c62a                	sw	a0,12(sp)
80205080:	8526                	mv	a0,s1
80205082:	fa1ff0ef          	jal	80205022 <_heap_unlock>
80205086:	0000c797          	auipc	a5,0xc
8020508a:	4d27a783          	lw	a5,1234(a5) # 80211558 <rt_malloc_hook>
8020508e:	c789                	beqz	a5,80205098 <rt_malloc+0x3a>
80205090:	85a2                	mv	a1,s0
80205092:	00c1051b          	addiw	a0,sp,12
80205096:	9782                	jalr	a5
80205098:	70a2                	ld	ra,40(sp)
8020509a:	7402                	ld	s0,32(sp)
8020509c:	4532                	lw	a0,12(sp)
8020509e:	64e2                	ld	s1,24(sp)
802050a0:	0301011b          	addiw	sp,sp,48
802050a4:	8082                	ret

802050a6 <rt_free>:
802050a6:	3101                	addiw	sp,sp,-32
802050a8:	ec06                	sd	ra,24(sp)
802050aa:	e822                	sd	s0,16(sp)
802050ac:	c62a                	sw	a0,12(sp)
802050ae:	0000c797          	auipc	a5,0xc
802050b2:	4a67a783          	lw	a5,1190(a5) # 80211554 <rt_free_hook>
802050b6:	c781                	beqz	a5,802050be <rt_free+0x18>
802050b8:	00c1051b          	addiw	a0,sp,12
802050bc:	9782                	jalr	a5
802050be:	47b2                	lw	a5,12(sp)
802050c0:	cb91                	beqz	a5,802050d4 <rt_free+0x2e>
802050c2:	c3bff0ef          	jal	80204cfc <_heap_lock>
802050c6:	842a                	mv	s0,a0
802050c8:	4532                	lw	a0,12(sp)
802050ca:	47c000ef          	jal	80205546 <_memheap_free>
802050ce:	8522                	mv	a0,s0
802050d0:	f53ff0ef          	jal	80205022 <_heap_unlock>
802050d4:	60e2                	ld	ra,24(sp)
802050d6:	6442                	ld	s0,16(sp)
802050d8:	0201011b          	addiw	sp,sp,32
802050dc:	8082                	ret

802050de <rt_memheap_init>:
802050de:	fd01011b          	addiw	sp,sp,-48
802050e2:	f022                	sd	s0,32(sp)
802050e4:	ec26                	sd	s1,24(sp)
802050e6:	e84a                	sd	s2,16(sp)
802050e8:	e44e                	sd	s3,8(sp)
802050ea:	0005079b          	sext.w	a5,a0
802050ee:	f406                	sd	ra,40(sp)
802050f0:	843e                	mv	s0,a5
802050f2:	89ae                	mv	s3,a1
802050f4:	8932                	mv	s2,a2
802050f6:	84b6                	mv	s1,a3
802050f8:	ef89                	bnez	a5,80205112 <rt_memheap_init+0x34>
802050fa:	05600613          	li	a2,86
802050fe:	00004597          	auipc	a1,0x4
80205102:	f1258593          	addi	a1,a1,-238 # 80209010 <__FUNCTION__.5>
80205106:	00003517          	auipc	a0,0x3
8020510a:	20250513          	addi	a0,a0,514 # 80208308 <rt_system_timer_thread_init+0x11b0>
8020510e:	e5bff0ef          	jal	80204f68 <rt_assert_handler>
80205112:	864e                	mv	a2,s3
80205114:	8522                	mv	a0,s0
80205116:	459d                	li	a1,7
80205118:	636000ef          	jal	8020574e <rt_object_init>
8020511c:	ffc4f693          	andi	a3,s1,-4
80205120:	fd06879b          	addiw	a5,a3,-48
80205124:	d45c                	sw	a5,44(s0)
80205126:	03000793          	li	a5,48
8020512a:	d81c                	sw	a5,48(s0)
8020512c:	1ea027b7          	lui	a5,0x1ea02
80205130:	03c4071b          	addiw	a4,s0,60
80205134:	ea078793          	addi	a5,a5,-352 # 1ea01ea0 <__text_size+0x1e9f8b40>
80205138:	c478                	sw	a4,76(s0)
8020513a:	03242223          	sw	s2,36(s0)
8020513e:	d414                	sw	a3,40(s0)
80205140:	dc5c                	sw	a5,60(s0)
80205142:	c838                	sw	a4,80(s0)
80205144:	dc18                	sw	a4,56(s0)
80205146:	c020                	sw	s0,64(s0)
80205148:	04042223          	sw	zero,68(s0)
8020514c:	04042423          	sw	zero,72(s0)
80205150:	01292823          	sw	s2,16(s2)
80205154:	00f92023          	sw	a5,0(s2)
80205158:	fe86879b          	addiw	a5,a3,-24
8020515c:	00f907bb          	addw	a5,s2,a5
80205160:	4474                	lw	a3,76(s0)
80205162:	00892223          	sw	s0,4(s2)
80205166:	00f92423          	sw	a5,8(s2)
8020516a:	00f92623          	sw	a5,12(s2)
8020516e:	03242a23          	sw	s2,52(s0)
80205172:	00d92823          	sw	a3,16(s2)
80205176:	00e92a23          	sw	a4,20(s2)
8020517a:	0126aa23          	sw	s2,20(a3)
8020517e:	1ea02737          	lui	a4,0x1ea02
80205182:	05242623          	sw	s2,76(s0)
80205186:	ea170713          	addi	a4,a4,-351 # 1ea01ea1 <__text_size+0x1e9f8b41>
8020518a:	c3c0                	sw	s0,4(a5)
8020518c:	0127a423          	sw	s2,8(a5)
80205190:	0127a623          	sw	s2,12(a5)
80205194:	85ce                	mv	a1,s3
80205196:	0544051b          	addiw	a0,s0,84
8020519a:	c398                	sw	a4,0(a5)
8020519c:	0007aa23          	sw	zero,20(a5)
802051a0:	0007a823          	sw	zero,16(a5)
802051a4:	4685                	li	a3,1
802051a6:	4605                	li	a2,1
802051a8:	da5fe0ef          	jal	80203f4c <rt_sem_init>
802051ac:	70a2                	ld	ra,40(sp)
802051ae:	08042623          	sw	zero,140(s0)
802051b2:	7402                	ld	s0,32(sp)
802051b4:	64e2                	ld	s1,24(sp)
802051b6:	6942                	ld	s2,16(sp)
802051b8:	69a2                	ld	s3,8(sp)
802051ba:	4501                	li	a0,0
802051bc:	0301011b          	addiw	sp,sp,48
802051c0:	8082                	ret

802051c2 <rt_memheap_alloc>:
802051c2:	3101                	addiw	sp,sp,-32
802051c4:	e822                	sd	s0,16(sp)
802051c6:	e426                	sd	s1,8(sp)
802051c8:	0005079b          	sext.w	a5,a0
802051cc:	ec06                	sd	ra,24(sp)
802051ce:	e04a                	sd	s2,0(sp)
802051d0:	84be                	mv	s1,a5
802051d2:	842e                	mv	s0,a1
802051d4:	ef89                	bnez	a5,802051ee <rt_memheap_alloc+0x2c>
802051d6:	0c100613          	li	a2,193
802051da:	00004597          	auipc	a1,0x4
802051de:	e1e58593          	addi	a1,a1,-482 # 80208ff8 <__FUNCTION__.3>
802051e2:	00003517          	auipc	a0,0x3
802051e6:	1ae50513          	addi	a0,a0,430 # 80208390 <rt_system_timer_thread_init+0x1238>
802051ea:	d7fff0ef          	jal	80204f68 <rt_assert_handler>
802051ee:	8526                	mv	a0,s1
802051f0:	0a3000ef          	jal	80205a92 <rt_object_get_type>
802051f4:	479d                	li	a5,7
802051f6:	00f50e63          	beq	a0,a5,80205212 <rt_memheap_alloc+0x50>
802051fa:	0c200613          	li	a2,194
802051fe:	00004597          	auipc	a1,0x4
80205202:	dfa58593          	addi	a1,a1,-518 # 80208ff8 <__FUNCTION__.3>
80205206:	00003517          	auipc	a0,0x3
8020520a:	11a50513          	addi	a0,a0,282 # 80208320 <rt_system_timer_thread_init+0x11c8>
8020520e:	d5bff0ef          	jal	80204f68 <rt_assert_handler>
80205212:	0034059b          	addiw	a1,s0,3
80205216:	99f1                	andi	a1,a1,-4
80205218:	0005891b          	sext.w	s2,a1
8020521c:	47b1                	li	a5,12
8020521e:	2581                	sext.w	a1,a1
80205220:	00f5f363          	bgeu	a1,a5,80205226 <rt_memheap_alloc+0x64>
80205224:	4931                	li	s2,12
80205226:	54dc                	lw	a5,44(s1)
80205228:	00f96a63          	bltu	s2,a5,8020523c <rt_memheap_alloc+0x7a>
8020522c:	4501                	li	a0,0
8020522e:	60e2                	ld	ra,24(sp)
80205230:	6442                	ld	s0,16(sp)
80205232:	64a2                	ld	s1,8(sp)
80205234:	6902                	ld	s2,0(sp)
80205236:	0201011b          	addiw	sp,sp,32
8020523a:	8082                	ret
8020523c:	08c4a783          	lw	a5,140(s1)
80205240:	eb91                	bnez	a5,80205254 <rt_memheap_alloc+0x92>
80205242:	55fd                	li	a1,-1
80205244:	0544851b          	addiw	a0,s1,84
80205248:	daffe0ef          	jal	80203ff6 <rt_sem_take>
8020524c:	c501                	beqz	a0,80205254 <rt_memheap_alloc+0x92>
8020524e:	8b9ff0ef          	jal	80204b06 <rt_set_errno>
80205252:	bfe9                	j	8020522c <rt_memheap_alloc+0x6a>
80205254:	0384a303          	lw	t1,56(s1)
80205258:	4701                	li	a4,0
8020525a:	0003079b          	sext.w	a5,t1
8020525e:	4b80                	lw	s0,16(a5)
80205260:	863e                	mv	a2,a5
80205262:	0004069b          	sext.w	a3,s0
80205266:	0ad78263          	beq	a5,a3,8020530a <rt_memheap_alloc+0x148>
8020526a:	09276963          	bltu	a4,s2,802052fc <rt_memheap_alloc+0x13a>
8020526e:	4848                	lw	a0,20(s0)
80205270:	480c                	lw	a1,16(s0)
80205272:	0249081b          	addiw	a6,s2,36
80205276:	54d4                	lw	a3,44(s1)
80205278:	549c                	lw	a5,40(s1)
8020527a:	0304ae03          	lw	t3,48(s1)
8020527e:	8eaa                	mv	t4,a0
80205280:	88ae                	mv	a7,a1
80205282:	09076e63          	bltu	a4,a6,8020531e <rt_memheap_alloc+0x15c>
80205286:	0189071b          	addiw	a4,s2,24
8020528a:	1ea02837          	lui	a6,0x1ea02
8020528e:	9f21                	addw	a4,a4,s0
80205290:	ea080813          	addi	a6,a6,-352 # 1ea01ea0 <__text_size+0x1e9f8b40>
80205294:	01072023          	sw	a6,0(a4)
80205298:	00842803          	lw	a6,8(s0)
8020529c:	c344                	sw	s1,4(a4)
8020529e:	c740                	sw	s0,12(a4)
802052a0:	01072423          	sw	a6,8(a4)
802052a4:	00842803          	lw	a6,8(s0)
802052a8:	36a1                	addiw	a3,a3,-24
802052aa:	012787bb          	addw	a5,a5,s2
802052ae:	00e82623          	sw	a4,12(a6)
802052b2:	c418                	sw	a4,8(s0)
802052b4:	c9c8                	sw	a0,20(a1)
802052b6:	4848                	lw	a0,20(s0)
802052b8:	c90c                	sw	a1,16(a0)
802052ba:	00042823          	sw	zero,16(s0)
802052be:	4a0c                	lw	a1,16(a2)
802052c0:	00042a23          	sw	zero,20(s0)
802052c4:	00672a23          	sw	t1,20(a4)
802052c8:	cb0c                	sw	a1,16(a4)
802052ca:	c9d8                	sw	a4,20(a1)
802052cc:	ca18                	sw	a4,16(a2)
802052ce:	4126873b          	subw	a4,a3,s2
802052d2:	d4d8                	sw	a4,44(s1)
802052d4:	40d7873b          	subw	a4,a5,a3
802052d8:	00ee7363          	bgeu	t3,a4,802052de <rt_memheap_alloc+0x11c>
802052dc:	d898                	sw	a4,48(s1)
802052de:	1ea027b7          	lui	a5,0x1ea02
802052e2:	ea178793          	addi	a5,a5,-351 # 1ea01ea1 <__text_size+0x1e9f8b41>
802052e6:	c01c                	sw	a5,0(s0)
802052e8:	08c4a783          	lw	a5,140(s1)
802052ec:	e789                	bnez	a5,802052f6 <rt_memheap_alloc+0x134>
802052ee:	0544851b          	addiw	a0,s1,84
802052f2:	d0bfe0ef          	jal	80203ffc <rt_sem_release>
802052f6:	0184051b          	addiw	a0,s0,24
802052fa:	bf15                	j	8020522e <rt_memheap_alloc+0x6c>
802052fc:	4418                	lw	a4,8(s0)
802052fe:	9f01                	subw	a4,a4,s0
80205300:	3721                	addiw	a4,a4,-24
80205302:	f72770e3          	bgeu	a4,s2,80205262 <rt_memheap_alloc+0xa0>
80205306:	4800                	lw	s0,16(s0)
80205308:	bfa9                	j	80205262 <rt_memheap_alloc+0xa0>
8020530a:	f72772e3          	bgeu	a4,s2,8020526e <rt_memheap_alloc+0xac>
8020530e:	08c4a783          	lw	a5,140(s1)
80205312:	ff89                	bnez	a5,8020522c <rt_memheap_alloc+0x6a>
80205314:	0544851b          	addiw	a0,s1,84
80205318:	ce5fe0ef          	jal	80203ffc <rt_sem_release>
8020531c:	bf01                	j	8020522c <rt_memheap_alloc+0x6a>
8020531e:	40e6863b          	subw	a2,a3,a4
80205322:	9f95                	subw	a5,a5,a3
80205324:	d4d0                	sw	a2,44(s1)
80205326:	9f3d                	addw	a4,a4,a5
80205328:	00ee7363          	bgeu	t3,a4,8020532e <rt_memheap_alloc+0x16c>
8020532c:	d898                	sw	a4,48(s1)
8020532e:	00a8aa23          	sw	a0,20(a7)
80205332:	00bea823          	sw	a1,16(t4)
80205336:	00042823          	sw	zero,16(s0)
8020533a:	00042a23          	sw	zero,20(s0)
8020533e:	b745                	j	802052de <rt_memheap_alloc+0x11c>

80205340 <rt_memheap_free>:
80205340:	0005079b          	sext.w	a5,a0
80205344:	16078b63          	beqz	a5,802054ba <rt_memheap_free+0x17a>
80205348:	fd01011b          	addiw	sp,sp,-48
8020534c:	fe87a703          	lw	a4,-24(a5)
80205350:	f022                	sd	s0,32(sp)
80205352:	ec26                	sd	s1,24(sp)
80205354:	843e                	mv	s0,a5
80205356:	fe87849b          	addiw	s1,a5,-24
8020535a:	1ea027b7          	lui	a5,0x1ea02
8020535e:	f406                	sd	ra,40(sp)
80205360:	e84a                	sd	s2,16(sp)
80205362:	e44e                	sd	s3,8(sp)
80205364:	ea178793          	addi	a5,a5,-351 # 1ea01ea1 <__text_size+0x1e9f8b41>
80205368:	08f71d63          	bne	a4,a5,80205402 <rt_memheap_free+0xc2>
8020536c:	ff042783          	lw	a5,-16(s0)
80205370:	4398                	lw	a4,0(a5)
80205372:	1ea027b7          	lui	a5,0x1ea02
80205376:	ea078793          	addi	a5,a5,-352 # 1ea01ea0 <__text_size+0x1e9f8b40>
8020537a:	9b79                	andi	a4,a4,-2
8020537c:	00f70e63          	beq	a4,a5,80205398 <rt_memheap_free+0x58>
80205380:	26d00613          	li	a2,621
80205384:	00004597          	auipc	a1,0x4
80205388:	c6458593          	addi	a1,a1,-924 # 80208fe8 <__FUNCTION__.1>
8020538c:	00003517          	auipc	a0,0x3
80205390:	01450513          	addi	a0,a0,20 # 802083a0 <rt_system_timer_thread_init+0x1248>
80205394:	bd5ff0ef          	jal	80204f68 <rt_assert_handler>
80205398:	fec42983          	lw	s3,-20(s0)
8020539c:	894e                	mv	s2,s3
8020539e:	00099e63          	bnez	s3,802053ba <rt_memheap_free+0x7a>
802053a2:	27300613          	li	a2,627
802053a6:	00004597          	auipc	a1,0x4
802053aa:	c4258593          	addi	a1,a1,-958 # 80208fe8 <__FUNCTION__.1>
802053ae:	00003517          	auipc	a0,0x3
802053b2:	f4250513          	addi	a0,a0,-190 # 802082f0 <rt_system_timer_thread_init+0x1198>
802053b6:	bb3ff0ef          	jal	80204f68 <rt_assert_handler>
802053ba:	854e                	mv	a0,s3
802053bc:	6d6000ef          	jal	80205a92 <rt_object_get_type>
802053c0:	479d                	li	a5,7
802053c2:	00f50e63          	beq	a0,a5,802053de <rt_memheap_free+0x9e>
802053c6:	27400613          	li	a2,628
802053ca:	00004597          	auipc	a1,0x4
802053ce:	c1e58593          	addi	a1,a1,-994 # 80208fe8 <__FUNCTION__.1>
802053d2:	00003517          	auipc	a0,0x3
802053d6:	f4e50513          	addi	a0,a0,-178 # 80208320 <rt_system_timer_thread_init+0x11c8>
802053da:	b8fff0ef          	jal	80204f68 <rt_assert_handler>
802053de:	08c92783          	lw	a5,140(s2)
802053e2:	ef8d                	bnez	a5,8020541c <rt_memheap_free+0xdc>
802053e4:	55fd                	li	a1,-1
802053e6:	0549851b          	addiw	a0,s3,84
802053ea:	c0dfe0ef          	jal	80203ff6 <rt_sem_take>
802053ee:	c51d                	beqz	a0,8020541c <rt_memheap_free+0xdc>
802053f0:	7402                	ld	s0,32(sp)
802053f2:	70a2                	ld	ra,40(sp)
802053f4:	64e2                	ld	s1,24(sp)
802053f6:	6942                	ld	s2,16(sp)
802053f8:	69a2                	ld	s3,8(sp)
802053fa:	0301011b          	addiw	sp,sp,48
802053fe:	f08ff06f          	j	80204b06 <rt_set_errno>
80205402:	26b00613          	li	a2,619
80205406:	00004597          	auipc	a1,0x4
8020540a:	be258593          	addi	a1,a1,-1054 # 80208fe8 <__FUNCTION__.1>
8020540e:	00003517          	auipc	a0,0x3
80205412:	fd250513          	addi	a0,a0,-46 # 802083e0 <rt_system_timer_thread_init+0x1288>
80205416:	b53ff0ef          	jal	80204f68 <rt_assert_handler>
8020541a:	bf89                	j	8020536c <rt_memheap_free+0x2c>
8020541c:	1ea027b7          	lui	a5,0x1ea02
80205420:	ea078793          	addi	a5,a5,-352 # 1ea01ea0 <__text_size+0x1e9f8b40>
80205424:	fef42423          	sw	a5,-24(s0)
80205428:	ff042503          	lw	a0,-16(s0)
8020542c:	02c92783          	lw	a5,44(s2)
80205430:	ff442603          	lw	a2,-12(s0)
80205434:	4685                	li	a3,1
80205436:	9fa9                	addw	a5,a5,a0
80205438:	9f85                	subw	a5,a5,s1
8020543a:	fe87871b          	addiw	a4,a5,-24
8020543e:	02e92623          	sw	a4,44(s2)
80205442:	4218                	lw	a4,0(a2)
80205444:	8b05                	andi	a4,a4,1
80205446:	eb11                	bnez	a4,8020545a <rt_memheap_free+0x11a>
80205448:	02f92623          	sw	a5,44(s2)
8020544c:	c608                	sw	a0,8(a2)
8020544e:	ff042783          	lw	a5,-16(s0)
80205452:	4681                	li	a3,0
80205454:	c7d0                	sw	a2,12(a5)
80205456:	ff442483          	lw	s1,-12(s0)
8020545a:	449c                	lw	a5,8(s1)
8020545c:	4398                	lw	a4,0(a5)
8020545e:	8b05                	andi	a4,a4,1
80205460:	ef09                	bnez	a4,8020547a <rt_memheap_free+0x13a>
80205462:	02c92703          	lw	a4,44(s2)
80205466:	2761                	addiw	a4,a4,24
80205468:	02e92623          	sw	a4,44(s2)
8020546c:	4798                	lw	a4,8(a5)
8020546e:	c744                	sw	s1,12(a4)
80205470:	c498                	sw	a4,8(s1)
80205472:	4b98                	lw	a4,16(a5)
80205474:	4bdc                	lw	a5,20(a5)
80205476:	cb5c                	sw	a5,20(a4)
80205478:	cb98                	sw	a4,16(a5)
8020547a:	ca91                	beqz	a3,8020548e <rt_memheap_free+0x14e>
8020547c:	03892783          	lw	a5,56(s2)
80205480:	4b98                	lw	a4,16(a5)
80205482:	c898                	sw	a4,16(s1)
80205484:	87ba                	mv	a5,a4
80205486:	4b58                	lw	a4,20(a4)
80205488:	c8d8                	sw	a4,20(s1)
8020548a:	cb04                	sw	s1,16(a4)
8020548c:	cbc4                	sw	s1,20(a5)
8020548e:	08c92783          	lw	a5,140(s2)
80205492:	ef81                	bnez	a5,802054aa <rt_memheap_free+0x16a>
80205494:	7402                	ld	s0,32(sp)
80205496:	70a2                	ld	ra,40(sp)
80205498:	64e2                	ld	s1,24(sp)
8020549a:	6942                	ld	s2,16(sp)
8020549c:	0549851b          	addiw	a0,s3,84
802054a0:	69a2                	ld	s3,8(sp)
802054a2:	0301011b          	addiw	sp,sp,48
802054a6:	b57fe06f          	j	80203ffc <rt_sem_release>
802054aa:	70a2                	ld	ra,40(sp)
802054ac:	7402                	ld	s0,32(sp)
802054ae:	64e2                	ld	s1,24(sp)
802054b0:	6942                	ld	s2,16(sp)
802054b2:	69a2                	ld	s3,8(sp)
802054b4:	0301011b          	addiw	sp,sp,48
802054b8:	8082                	ret
802054ba:	8082                	ret

802054bc <_memheap_alloc>:
802054bc:	fd01011b          	addiw	sp,sp,-48
802054c0:	ec26                	sd	s1,24(sp)
802054c2:	e84a                	sd	s2,16(sp)
802054c4:	e052                	sd	s4,0(sp)
802054c6:	f406                	sd	ra,40(sp)
802054c8:	f022                	sd	s0,32(sp)
802054ca:	e44e                	sd	s3,8(sp)
802054cc:	0005091b          	sext.w	s2,a0
802054d0:	8a2e                	mv	s4,a1
802054d2:	cf1ff0ef          	jal	802051c2 <rt_memheap_alloc>
802054d6:	0005079b          	sext.w	a5,a0
802054da:	84be                	mv	s1,a5
802054dc:	eb9d                	bnez	a5,80205512 <_memheap_alloc+0x56>
802054de:	451d                	li	a0,7
802054e0:	23e000ef          	jal	8020571e <rt_object_get_information>
802054e4:	0005079b          	sext.w	a5,a0
802054e8:	843e                	mv	s0,a5
802054ea:	ef89                	bnez	a5,80205504 <_memheap_alloc+0x48>
802054ec:	31500613          	li	a2,789
802054f0:	00004597          	auipc	a1,0x4
802054f4:	ae858593          	addi	a1,a1,-1304 # 80208fd8 <__FUNCTION__.0>
802054f8:	00003517          	auipc	a0,0x3
802054fc:	f2850513          	addi	a0,a0,-216 # 80208420 <rt_system_timer_thread_init+0x12c8>
80205500:	a69ff0ef          	jal	80204f68 <rt_assert_handler>
80205504:	00442983          	lw	s3,4(s0)
80205508:	2411                	addiw	s0,s0,4
8020550a:	0009879b          	sext.w	a5,s3
8020550e:	00879c63          	bne	a5,s0,80205526 <_memheap_alloc+0x6a>
80205512:	70a2                	ld	ra,40(sp)
80205514:	7402                	ld	s0,32(sp)
80205516:	6942                	ld	s2,16(sp)
80205518:	69a2                	ld	s3,8(sp)
8020551a:	6a02                	ld	s4,0(sp)
8020551c:	8526                	mv	a0,s1
8020551e:	64e2                	ld	s1,24(sp)
80205520:	0301011b          	addiw	sp,sp,48
80205524:	8082                	ret
80205526:	fe49879b          	addiw	a5,s3,-28
8020552a:	853e                	mv	a0,a5
8020552c:	00f91563          	bne	s2,a5,80205536 <_memheap_alloc+0x7a>
80205530:	0009a983          	lw	s3,0(s3)
80205534:	bfd9                	j	8020550a <_memheap_alloc+0x4e>
80205536:	85d2                	mv	a1,s4
80205538:	c8bff0ef          	jal	802051c2 <rt_memheap_alloc>
8020553c:	0005079b          	sext.w	a5,a0
80205540:	dbe5                	beqz	a5,80205530 <_memheap_alloc+0x74>
80205542:	84aa                	mv	s1,a0
80205544:	b7f9                	j	80205512 <_memheap_alloc+0x56>

80205546 <_memheap_free>:
80205546:	dfbff06f          	j	80205340 <rt_memheap_free>

8020554a <rt_mp_create>:
8020554a:	fd01011b          	addiw	sp,sp,-48
8020554e:	f022                	sd	s0,32(sp)
80205550:	ec26                	sd	s1,24(sp)
80205552:	e44e                	sd	s3,8(sp)
80205554:	f406                	sd	ra,40(sp)
80205556:	e84a                	sd	s2,16(sp)
80205558:	e052                	sd	s4,0(sp)
8020555a:	842a                	mv	s0,a0
8020555c:	89ae                	mv	s3,a1
8020555e:	84b2                	mv	s1,a2
80205560:	e37fe0ef          	jal	80204396 <rt_interrupt_get_nest>
80205564:	c51d                	beqz	a0,80205592 <rt_mp_create+0x48>
80205566:	00004597          	auipc	a1,0x4
8020556a:	aba58593          	addi	a1,a1,-1350 # 80209020 <__FUNCTION__.2>
8020556e:	00003517          	auipc	a0,0x3
80205572:	82a50513          	addi	a0,a0,-2006 # 80207d98 <rt_system_timer_thread_init+0xc40>
80205576:	83fff0ef          	jal	80204db4 <rt_kprintf>
8020557a:	0b800613          	li	a2,184
8020557e:	00004597          	auipc	a1,0x4
80205582:	aa258593          	addi	a1,a1,-1374 # 80209020 <__FUNCTION__.2>
80205586:	00003517          	auipc	a0,0x3
8020558a:	13250513          	addi	a0,a0,306 # 802086b8 <rt_system_timer_thread_init+0x1560>
8020558e:	9dbff0ef          	jal	80204f68 <rt_assert_handler>
80205592:	0004079b          	sext.w	a5,s0
80205596:	ef89                	bnez	a5,802055b0 <rt_mp_create+0x66>
80205598:	0bb00613          	li	a2,187
8020559c:	00004597          	auipc	a1,0x4
802055a0:	a8458593          	addi	a1,a1,-1404 # 80209020 <__FUNCTION__.2>
802055a4:	00003517          	auipc	a0,0x3
802055a8:	ea450513          	addi	a0,a0,-348 # 80208448 <rt_system_timer_thread_init+0x12f0>
802055ac:	9bdff0ef          	jal	80204f68 <rt_assert_handler>
802055b0:	00098363          	beqz	s3,802055b6 <rt_mp_create+0x6c>
802055b4:	ec89                	bnez	s1,802055ce <rt_mp_create+0x84>
802055b6:	0bc00613          	li	a2,188
802055ba:	00004597          	auipc	a1,0x4
802055be:	a6658593          	addi	a1,a1,-1434 # 80209020 <__FUNCTION__.2>
802055c2:	00003517          	auipc	a0,0x3
802055c6:	ece50513          	addi	a0,a0,-306 # 80208490 <rt_system_timer_thread_init+0x1338>
802055ca:	99fff0ef          	jal	80204f68 <rt_assert_handler>
802055ce:	85a2                	mv	a1,s0
802055d0:	4521                	li	a0,8
802055d2:	304000ef          	jal	802058d6 <rt_object_allocate>
802055d6:	0005079b          	sext.w	a5,a0
802055da:	843e                	mv	s0,a5
802055dc:	c78d                	beqz	a5,80205606 <rt_mp_create+0xbc>
802055de:	248d                	addiw	s1,s1,3
802055e0:	98f1                	andi	s1,s1,-4
802055e2:	2481                	sext.w	s1,s1
802055e4:	00448a1b          	addiw	s4,s1,4
802055e8:	033a053b          	mulw	a0,s4,s3
802055ec:	d7c4                	sw	s1,44(a5)
802055ee:	84d2                	mv	s1,s4
802055f0:	d408                	sw	a0,40(s0)
802055f2:	892a                	mv	s2,a0
802055f4:	a6bff0ef          	jal	8020505e <rt_malloc>
802055f8:	d048                	sw	a0,36(s0)
802055fa:	0005079b          	sext.w	a5,a0
802055fe:	ef99                	bnez	a5,8020561c <rt_mp_create+0xd2>
80205600:	8522                	mv	a0,s0
80205602:	3a8000ef          	jal	802059aa <rt_object_delete>
80205606:	4401                	li	s0,0
80205608:	70a2                	ld	ra,40(sp)
8020560a:	8522                	mv	a0,s0
8020560c:	7402                	ld	s0,32(sp)
8020560e:	64e2                	ld	s1,24(sp)
80205610:	6942                	ld	s2,16(sp)
80205612:	69a2                	ld	s3,8(sp)
80205614:	6a02                	ld	s4,0(sp)
80205616:	0301011b          	addiw	sp,sp,48
8020561a:	8082                	ret
8020561c:	03c4071b          	addiw	a4,s0,60
80205620:	c038                	sw	a4,64(s0)
80205622:	dc58                	sw	a4,60(s0)
80205624:	03342a23          	sw	s3,52(s0)
80205628:	03342c23          	sw	s3,56(s0)
8020562c:	4701                	li	a4,0
8020562e:	01371e63          	bne	a4,s3,8020564a <rt_mp_create+0x100>
80205632:	4099093b          	subw	s2,s2,s1
80205636:	0125093b          	addw	s2,a0,s2
8020563a:	00092023          	sw	zero,0(s2)
8020563e:	d808                	sw	a0,48(s0)
80205640:	0444051b          	addiw	a0,s0,68
80205644:	80cfe0ef          	jal	80203650 <rt_spin_lock_init>
80205648:	b7c1                	j	80205608 <rt_mp_create+0xbe>
8020564a:	00fa06bb          	addw	a3,s4,a5
8020564e:	c394                	sw	a3,0(a5)
80205650:	2705                	addiw	a4,a4,1
80205652:	0006879b          	sext.w	a5,a3
80205656:	bfe1                	j	8020562e <rt_mp_create+0xe4>

80205658 <rt_mp_free>:
80205658:	0005079b          	sext.w	a5,a0
8020565c:	cbd9                	beqz	a5,802056f2 <rt_mp_free+0x9a>
8020565e:	fc01011b          	addiw	sp,sp,-64
80205662:	f04a                	sd	s2,32(sp)
80205664:	ffc7a903          	lw	s2,-4(a5)
80205668:	f822                	sd	s0,48(sp)
8020566a:	ec4e                	sd	s3,24(sp)
8020566c:	e456                	sd	s5,8(sp)
8020566e:	843e                	mv	s0,a5
80205670:	ffc78a9b          	addiw	s5,a5,-4
80205674:	fc06                	sd	ra,56(sp)
80205676:	f426                	sd	s1,40(sp)
80205678:	e852                	sd	s4,16(sp)
8020567a:	0000c797          	auipc	a5,0xc
8020567e:	ee67a783          	lw	a5,-282(a5) # 80211560 <rt_mp_free_hook>
80205682:	89ca                	mv	s3,s2
80205684:	c781                	beqz	a5,8020568c <rt_mp_free+0x34>
80205686:	85a2                	mv	a1,s0
80205688:	854a                	mv	a0,s2
8020568a:	9782                	jalr	a5
8020568c:	04490a1b          	addiw	s4,s2,68
80205690:	8552                	mv	a0,s4
80205692:	fcbfd0ef          	jal	8020365c <rt_spin_lock_irqsave>
80205696:	0389a783          	lw	a5,56(s3)
8020569a:	84aa                	mv	s1,a0
8020569c:	4581                	li	a1,0
8020569e:	2785                	addiw	a5,a5,1
802056a0:	02f9ac23          	sw	a5,56(s3)
802056a4:	0309a783          	lw	a5,48(s3)
802056a8:	03c9051b          	addiw	a0,s2,60
802056ac:	fef42e23          	sw	a5,-4(s0)
802056b0:	0359a823          	sw	s5,48(s3)
802056b4:	ba2fe0ef          	jal	80203a56 <rt_susp_list_dequeue>
802056b8:	2501                	sext.w	a0,a0
802056ba:	85a6                	mv	a1,s1
802056bc:	cd19                	beqz	a0,802056da <rt_mp_free+0x82>
802056be:	8552                	mv	a0,s4
802056c0:	fb7fd0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
802056c4:	7442                	ld	s0,48(sp)
802056c6:	70e2                	ld	ra,56(sp)
802056c8:	74a2                	ld	s1,40(sp)
802056ca:	7902                	ld	s2,32(sp)
802056cc:	69e2                	ld	s3,24(sp)
802056ce:	6a42                	ld	s4,16(sp)
802056d0:	6aa2                	ld	s5,8(sp)
802056d2:	0401011b          	addiw	sp,sp,64
802056d6:	1530006f          	j	80206028 <rt_schedule>
802056da:	7442                	ld	s0,48(sp)
802056dc:	70e2                	ld	ra,56(sp)
802056de:	74a2                	ld	s1,40(sp)
802056e0:	7902                	ld	s2,32(sp)
802056e2:	69e2                	ld	s3,24(sp)
802056e4:	6aa2                	ld	s5,8(sp)
802056e6:	8552                	mv	a0,s4
802056e8:	6a42                	ld	s4,16(sp)
802056ea:	0401011b          	addiw	sp,sp,64
802056ee:	f89fd06f          	j	80203676 <rt_spin_unlock_irqrestore>
802056f2:	8082                	ret

802056f4 <_match_name>:
802056f4:	3101                	addiw	sp,sp,-32
802056f6:	e822                	sd	s0,16(sp)
802056f8:	842e                	mv	s0,a1
802056fa:	418c                	lw	a1,0(a1)
802056fc:	4661                	li	a2,24
802056fe:	e426                	sd	s1,8(sp)
80205700:	ec06                	sd	ra,24(sp)
80205702:	84aa                	mv	s1,a0
80205704:	d9cff0ef          	jal	80204ca0 <rt_strncmp>
80205708:	e909                	bnez	a0,8020571a <_match_name+0x26>
8020570a:	c044                	sw	s1,4(s0)
8020570c:	4505                	li	a0,1
8020570e:	60e2                	ld	ra,24(sp)
80205710:	6442                	ld	s0,16(sp)
80205712:	64a2                	ld	s1,8(sp)
80205714:	0201011b          	addiw	sp,sp,32
80205718:	8082                	ret
8020571a:	4501                	li	a0,0
8020571c:	bfcd                	j	8020570e <_match_name+0x1a>

8020571e <rt_object_get_information>:
8020571e:	f7f57693          	andi	a3,a0,-129
80205722:	00004517          	auipc	a0,0x4
80205726:	c4650513          	addi	a0,a0,-954 # 80209368 <_object_container>
8020572a:	0005071b          	sext.w	a4,a0
8020572e:	4781                	li	a5,0
80205730:	4631                	li	a2,12
80205732:	430c                	lw	a1,0(a4)
80205734:	00d59763          	bne	a1,a3,80205742 <rt_object_get_information+0x24>
80205738:	4761                	li	a4,24
8020573a:	02f707bb          	mulw	a5,a4,a5
8020573e:	9d3d                	addw	a0,a0,a5
80205740:	8082                	ret
80205742:	2785                	addiw	a5,a5,1
80205744:	2761                	addiw	a4,a4,24
80205746:	fec796e3          	bne	a5,a2,80205732 <rt_object_get_information+0x14>
8020574a:	4501                	li	a0,0
8020574c:	8082                	ret

8020574e <rt_object_init>:
8020574e:	f901011b          	addiw	sp,sp,-112
80205752:	f0a2                	sd	s0,96(sp)
80205754:	842a                	mv	s0,a0
80205756:	852e                	mv	a0,a1
80205758:	eca6                	sd	s1,88(sp)
8020575a:	e8ca                	sd	s2,80(sp)
8020575c:	fc56                	sd	s5,56(sp)
8020575e:	f486                	sd	ra,104(sp)
80205760:	e4ce                	sd	s3,72(sp)
80205762:	e0d2                	sd	s4,64(sp)
80205764:	f85a                	sd	s6,48(sp)
80205766:	f45e                	sd	s7,40(sp)
80205768:	f062                	sd	s8,32(sp)
8020576a:	ec66                	sd	s9,24(sp)
8020576c:	e86a                	sd	s10,16(sp)
8020576e:	e46e                	sd	s11,8(sp)
80205770:	892e                	mv	s2,a1
80205772:	8ab2                	mv	s5,a2
80205774:	fabff0ef          	jal	8020571e <rt_object_get_information>
80205778:	0005079b          	sext.w	a5,a0
8020577c:	84be                	mv	s1,a5
8020577e:	ef89                	bnez	a5,80205798 <rt_object_init+0x4a>
80205780:	16700613          	li	a2,359
80205784:	00004597          	auipc	a1,0x4
80205788:	95458593          	addi	a1,a1,-1708 # 802090d8 <__FUNCTION__.7>
8020578c:	00003517          	auipc	a0,0x3
80205790:	c9450513          	addi	a0,a0,-876 # 80208420 <rt_system_timer_thread_init+0x12c8>
80205794:	fd4ff0ef          	jal	80204f68 <rt_assert_handler>
80205798:	0104899b          	addiw	s3,s1,16
8020579c:	854e                	mv	a0,s3
8020579e:	ebffd0ef          	jal	8020365c <rt_spin_lock_irqsave>
802057a2:	0044aa03          	lw	s4,4(s1)
802057a6:	00448c1b          	addiw	s8,s1,4
802057aa:	8b2a                	mv	s6,a0
802057ac:	8be2                	mv	s7,s8
802057ae:	00040c9b          	sext.w	s9,s0
802057b2:	00004d17          	auipc	s10,0x4
802057b6:	926d0d13          	addi	s10,s10,-1754 # 802090d8 <__FUNCTION__.7>
802057ba:	00003d97          	auipc	s11,0x3
802057be:	cfed8d93          	addi	s11,s11,-770 # 802084b8 <rt_system_timer_thread_init+0x1360>
802057c2:	000a079b          	sext.w	a5,s4
802057c6:	06fc1463          	bne	s8,a5,8020582e <rt_object_init+0xe0>
802057ca:	85da                	mv	a1,s6
802057cc:	854e                	mv	a0,s3
802057ce:	ea9fd0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
802057d2:	f8096913          	ori	s2,s2,-128
802057d6:	01240c23          	sb	s2,24(s0)
802057da:	4661                	li	a2,24
802057dc:	85d6                	mv	a1,s5
802057de:	8522                	mv	a0,s0
802057e0:	c8eff0ef          	jal	80204c6e <rt_strncpy>
802057e4:	0000c797          	auipc	a5,0xc
802057e8:	d907a783          	lw	a5,-624(a5) # 80211574 <rt_object_attach_hook>
802057ec:	c399                	beqz	a5,802057f2 <rt_object_init+0xa4>
802057ee:	8522                	mv	a0,s0
802057f0:	9782                	jalr	a5
802057f2:	854e                	mv	a0,s3
802057f4:	e69fd0ef          	jal	8020365c <rt_spin_lock_irqsave>
802057f8:	40d8                	lw	a4,4(s1)
802057fa:	01c4079b          	addiw	a5,s0,28
802057fe:	70a6                	ld	ra,104(sp)
80205800:	c35c                	sw	a5,4(a4)
80205802:	cc58                	sw	a4,28(s0)
80205804:	c0dc                	sw	a5,4(s1)
80205806:	03742023          	sw	s7,32(s0)
8020580a:	7406                	ld	s0,96(sp)
8020580c:	64e6                	ld	s1,88(sp)
8020580e:	6946                	ld	s2,80(sp)
80205810:	6a06                	ld	s4,64(sp)
80205812:	7ae2                	ld	s5,56(sp)
80205814:	7b42                	ld	s6,48(sp)
80205816:	7ba2                	ld	s7,40(sp)
80205818:	7c02                	ld	s8,32(sp)
8020581a:	6ce2                	ld	s9,24(sp)
8020581c:	6d42                	ld	s10,16(sp)
8020581e:	6da2                	ld	s11,8(sp)
80205820:	85aa                	mv	a1,a0
80205822:	854e                	mv	a0,s3
80205824:	69a6                	ld	s3,72(sp)
80205826:	0701011b          	addiw	sp,sp,112
8020582a:	e4dfd06f          	j	80203676 <rt_spin_unlock_irqrestore>
8020582e:	fe4a079b          	addiw	a5,s4,-28
80205832:	00fc9863          	bne	s9,a5,80205842 <rt_object_init+0xf4>
80205836:	17600613          	li	a2,374
8020583a:	85ea                	mv	a1,s10
8020583c:	856e                	mv	a0,s11
8020583e:	f2aff0ef          	jal	80204f68 <rt_assert_handler>
80205842:	000a2a03          	lw	s4,0(s4)
80205846:	bfb5                	j	802057c2 <rt_object_init+0x74>

80205848 <rt_object_detach>:
80205848:	3101                	addiw	sp,sp,-32
8020584a:	e822                	sd	s0,16(sp)
8020584c:	0005079b          	sext.w	a5,a0
80205850:	ec06                	sd	ra,24(sp)
80205852:	e426                	sd	s1,8(sp)
80205854:	843e                	mv	s0,a5
80205856:	ef89                	bnez	a5,80205870 <rt_object_detach+0x28>
80205858:	1a400613          	li	a2,420
8020585c:	00004597          	auipc	a1,0x4
80205860:	86458593          	addi	a1,a1,-1948 # 802090c0 <__FUNCTION__.6>
80205864:	00003517          	auipc	a0,0x3
80205868:	c6450513          	addi	a0,a0,-924 # 802084c8 <rt_system_timer_thread_init+0x1370>
8020586c:	efcff0ef          	jal	80204f68 <rt_assert_handler>
80205870:	0000c797          	auipc	a5,0xc
80205874:	d007a783          	lw	a5,-768(a5) # 80211570 <rt_object_detach_hook>
80205878:	c399                	beqz	a5,8020587e <rt_object_detach+0x36>
8020587a:	8522                	mv	a0,s0
8020587c:	9782                	jalr	a5
8020587e:	01844503          	lbu	a0,24(s0)
80205882:	e9dff0ef          	jal	8020571e <rt_object_get_information>
80205886:	0005079b          	sext.w	a5,a0
8020588a:	84be                	mv	s1,a5
8020588c:	ef89                	bnez	a5,802058a6 <rt_object_detach+0x5e>
8020588e:	1a900613          	li	a2,425
80205892:	00004597          	auipc	a1,0x4
80205896:	82e58593          	addi	a1,a1,-2002 # 802090c0 <__FUNCTION__.6>
8020589a:	00003517          	auipc	a0,0x3
8020589e:	b8650513          	addi	a0,a0,-1146 # 80208420 <rt_system_timer_thread_init+0x12c8>
802058a2:	ec6ff0ef          	jal	80204f68 <rt_assert_handler>
802058a6:	24c1                	addiw	s1,s1,16
802058a8:	8526                	mv	a0,s1
802058aa:	db3fd0ef          	jal	8020365c <rt_spin_lock_irqsave>
802058ae:	4c54                	lw	a3,28(s0)
802058b0:	5018                	lw	a4,32(s0)
802058b2:	01c4079b          	addiw	a5,s0,28
802058b6:	85aa                	mv	a1,a0
802058b8:	c2d8                	sw	a4,4(a3)
802058ba:	c314                	sw	a3,0(a4)
802058bc:	d01c                	sw	a5,32(s0)
802058be:	cc5c                	sw	a5,28(s0)
802058c0:	8526                	mv	a0,s1
802058c2:	db5fd0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
802058c6:	00040c23          	sb	zero,24(s0)
802058ca:	60e2                	ld	ra,24(sp)
802058cc:	6442                	ld	s0,16(sp)
802058ce:	64a2                	ld	s1,8(sp)
802058d0:	0201011b          	addiw	sp,sp,32
802058d4:	8082                	ret

802058d6 <rt_object_allocate>:
802058d6:	fd01011b          	addiw	sp,sp,-48
802058da:	e84a                	sd	s2,16(sp)
802058dc:	e44e                	sd	s3,8(sp)
802058de:	f406                	sd	ra,40(sp)
802058e0:	f022                	sd	s0,32(sp)
802058e2:	ec26                	sd	s1,24(sp)
802058e4:	892a                	mv	s2,a0
802058e6:	89ae                	mv	s3,a1
802058e8:	aaffe0ef          	jal	80204396 <rt_interrupt_get_nest>
802058ec:	c51d                	beqz	a0,8020591a <rt_object_allocate+0x44>
802058ee:	00003597          	auipc	a1,0x3
802058f2:	7ba58593          	addi	a1,a1,1978 # 802090a8 <__FUNCTION__.5>
802058f6:	00002517          	auipc	a0,0x2
802058fa:	4a250513          	addi	a0,a0,1186 # 80207d98 <rt_system_timer_thread_init+0xc40>
802058fe:	cb6ff0ef          	jal	80204db4 <rt_kprintf>
80205902:	1c600613          	li	a2,454
80205906:	00003597          	auipc	a1,0x3
8020590a:	7a258593          	addi	a1,a1,1954 # 802090a8 <__FUNCTION__.5>
8020590e:	00003517          	auipc	a0,0x3
80205912:	daa50513          	addi	a0,a0,-598 # 802086b8 <rt_system_timer_thread_init+0x1560>
80205916:	e52ff0ef          	jal	80204f68 <rt_assert_handler>
8020591a:	854a                	mv	a0,s2
8020591c:	e03ff0ef          	jal	8020571e <rt_object_get_information>
80205920:	0005079b          	sext.w	a5,a0
80205924:	84be                	mv	s1,a5
80205926:	ef89                	bnez	a5,80205940 <rt_object_allocate+0x6a>
80205928:	1ca00613          	li	a2,458
8020592c:	00003597          	auipc	a1,0x3
80205930:	77c58593          	addi	a1,a1,1916 # 802090a8 <__FUNCTION__.5>
80205934:	00003517          	auipc	a0,0x3
80205938:	aec50513          	addi	a0,a0,-1300 # 80208420 <rt_system_timer_thread_init+0x12c8>
8020593c:	e2cff0ef          	jal	80204f68 <rt_assert_handler>
80205940:	44c8                	lw	a0,12(s1)
80205942:	f1cff0ef          	jal	8020505e <rt_malloc>
80205946:	0005079b          	sext.w	a5,a0
8020594a:	843e                	mv	s0,a5
8020594c:	c7b1                	beqz	a5,80205998 <rt_object_allocate+0xc2>
8020594e:	44d0                	lw	a2,12(s1)
80205950:	4581                	li	a1,0
80205952:	9e0ff0ef          	jal	80204b32 <rt_memset>
80205956:	465d                	li	a2,23
80205958:	01240c23          	sb	s2,24(s0)
8020595c:	00040ca3          	sb	zero,25(s0)
80205960:	85ce                	mv	a1,s3
80205962:	8522                	mv	a0,s0
80205964:	b0aff0ef          	jal	80204c6e <rt_strncpy>
80205968:	0000c797          	auipc	a5,0xc
8020596c:	c0c7a783          	lw	a5,-1012(a5) # 80211574 <rt_object_attach_hook>
80205970:	c399                	beqz	a5,80205976 <rt_object_allocate+0xa0>
80205972:	8522                	mv	a0,s0
80205974:	9782                	jalr	a5
80205976:	0104891b          	addiw	s2,s1,16
8020597a:	854a                	mv	a0,s2
8020597c:	ce1fd0ef          	jal	8020365c <rt_spin_lock_irqsave>
80205980:	40d8                	lw	a4,4(s1)
80205982:	01c4079b          	addiw	a5,s0,28
80205986:	2491                	addiw	s1,s1,4
80205988:	c35c                	sw	a5,4(a4)
8020598a:	cc58                	sw	a4,28(s0)
8020598c:	c09c                	sw	a5,0(s1)
8020598e:	85aa                	mv	a1,a0
80205990:	d004                	sw	s1,32(s0)
80205992:	854a                	mv	a0,s2
80205994:	ce3fd0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80205998:	70a2                	ld	ra,40(sp)
8020599a:	8522                	mv	a0,s0
8020599c:	7402                	ld	s0,32(sp)
8020599e:	64e2                	ld	s1,24(sp)
802059a0:	6942                	ld	s2,16(sp)
802059a2:	69a2                	ld	s3,8(sp)
802059a4:	0301011b          	addiw	sp,sp,48
802059a8:	8082                	ret

802059aa <rt_object_delete>:
802059aa:	3101                	addiw	sp,sp,-32
802059ac:	e822                	sd	s0,16(sp)
802059ae:	0005079b          	sext.w	a5,a0
802059b2:	ec06                	sd	ra,24(sp)
802059b4:	e426                	sd	s1,8(sp)
802059b6:	843e                	mv	s0,a5
802059b8:	ef89                	bnez	a5,802059d2 <rt_object_delete+0x28>
802059ba:	20400613          	li	a2,516
802059be:	00003597          	auipc	a1,0x3
802059c2:	6d258593          	addi	a1,a1,1746 # 80209090 <__FUNCTION__.4>
802059c6:	00003517          	auipc	a0,0x3
802059ca:	b0250513          	addi	a0,a0,-1278 # 802084c8 <rt_system_timer_thread_init+0x1370>
802059ce:	d9aff0ef          	jal	80204f68 <rt_assert_handler>
802059d2:	01840783          	lb	a5,24(s0)
802059d6:	0007de63          	bgez	a5,802059f2 <rt_object_delete+0x48>
802059da:	20500613          	li	a2,517
802059de:	00003597          	auipc	a1,0x3
802059e2:	6b258593          	addi	a1,a1,1714 # 80209090 <__FUNCTION__.4>
802059e6:	00003517          	auipc	a0,0x3
802059ea:	afa50513          	addi	a0,a0,-1286 # 802084e0 <rt_system_timer_thread_init+0x1388>
802059ee:	d7aff0ef          	jal	80204f68 <rt_assert_handler>
802059f2:	0000c797          	auipc	a5,0xc
802059f6:	b7e7a783          	lw	a5,-1154(a5) # 80211570 <rt_object_detach_hook>
802059fa:	c399                	beqz	a5,80205a00 <rt_object_delete+0x56>
802059fc:	8522                	mv	a0,s0
802059fe:	9782                	jalr	a5
80205a00:	01844503          	lbu	a0,24(s0)
80205a04:	d1bff0ef          	jal	8020571e <rt_object_get_information>
80205a08:	0005079b          	sext.w	a5,a0
80205a0c:	84be                	mv	s1,a5
80205a0e:	ef89                	bnez	a5,80205a28 <rt_object_delete+0x7e>
80205a10:	20b00613          	li	a2,523
80205a14:	00003597          	auipc	a1,0x3
80205a18:	67c58593          	addi	a1,a1,1660 # 80209090 <__FUNCTION__.4>
80205a1c:	00003517          	auipc	a0,0x3
80205a20:	a0450513          	addi	a0,a0,-1532 # 80208420 <rt_system_timer_thread_init+0x12c8>
80205a24:	d44ff0ef          	jal	80204f68 <rt_assert_handler>
80205a28:	24c1                	addiw	s1,s1,16
80205a2a:	8526                	mv	a0,s1
80205a2c:	c31fd0ef          	jal	8020365c <rt_spin_lock_irqsave>
80205a30:	4c54                	lw	a3,28(s0)
80205a32:	5018                	lw	a4,32(s0)
80205a34:	01c4079b          	addiw	a5,s0,28
80205a38:	85aa                	mv	a1,a0
80205a3a:	c2d8                	sw	a4,4(a3)
80205a3c:	c314                	sw	a3,0(a4)
80205a3e:	8526                	mv	a0,s1
80205a40:	d01c                	sw	a5,32(s0)
80205a42:	cc5c                	sw	a5,28(s0)
80205a44:	c33fd0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80205a48:	00040c23          	sb	zero,24(s0)
80205a4c:	8522                	mv	a0,s0
80205a4e:	6442                	ld	s0,16(sp)
80205a50:	60e2                	ld	ra,24(sp)
80205a52:	64a2                	ld	s1,8(sp)
80205a54:	0201011b          	addiw	sp,sp,32
80205a58:	e4eff06f          	j	802050a6 <rt_free>

80205a5c <rt_object_is_systemobject>:
80205a5c:	3141                	addiw	sp,sp,-16
80205a5e:	e022                	sd	s0,0(sp)
80205a60:	0005079b          	sext.w	a5,a0
80205a64:	e406                	sd	ra,8(sp)
80205a66:	843e                	mv	s0,a5
80205a68:	ef89                	bnez	a5,80205a82 <rt_object_is_systemobject+0x26>
80205a6a:	22900613          	li	a2,553
80205a6e:	00003597          	auipc	a1,0x3
80205a72:	60258593          	addi	a1,a1,1538 # 80209070 <__FUNCTION__.3>
80205a76:	00003517          	auipc	a0,0x3
80205a7a:	a5250513          	addi	a0,a0,-1454 # 802084c8 <rt_system_timer_thread_init+0x1370>
80205a7e:	ceaff0ef          	jal	80204f68 <rt_assert_handler>
80205a82:	01840503          	lb	a0,24(s0)
80205a86:	60a2                	ld	ra,8(sp)
80205a88:	6402                	ld	s0,0(sp)
80205a8a:	01f5551b          	srliw	a0,a0,0x1f
80205a8e:	2141                	addiw	sp,sp,16
80205a90:	8082                	ret

80205a92 <rt_object_get_type>:
80205a92:	3141                	addiw	sp,sp,-16
80205a94:	e022                	sd	s0,0(sp)
80205a96:	0005079b          	sext.w	a5,a0
80205a9a:	e406                	sd	ra,8(sp)
80205a9c:	843e                	mv	s0,a5
80205a9e:	ef89                	bnez	a5,80205ab8 <rt_object_get_type+0x26>
80205aa0:	23c00613          	li	a2,572
80205aa4:	00003597          	auipc	a1,0x3
80205aa8:	5b458593          	addi	a1,a1,1460 # 80209058 <__FUNCTION__.2>
80205aac:	00003517          	auipc	a0,0x3
80205ab0:	a1c50513          	addi	a0,a0,-1508 # 802084c8 <rt_system_timer_thread_init+0x1370>
80205ab4:	cb4ff0ef          	jal	80204f68 <rt_assert_handler>
80205ab8:	01844503          	lbu	a0,24(s0)
80205abc:	60a2                	ld	ra,8(sp)
80205abe:	6402                	ld	s0,0(sp)
80205ac0:	07f57513          	andi	a0,a0,127
80205ac4:	2141                	addiw	sp,sp,16
80205ac6:	8082                	ret

80205ac8 <rt_object_for_each>:
80205ac8:	fc01011b          	addiw	sp,sp,-64
80205acc:	e456                	sd	s5,8(sp)
80205ace:	e05a                	sd	s6,0(sp)
80205ad0:	fc06                	sd	ra,56(sp)
80205ad2:	f822                	sd	s0,48(sp)
80205ad4:	f426                	sd	s1,40(sp)
80205ad6:	f04a                	sd	s2,32(sp)
80205ad8:	ec4e                	sd	s3,24(sp)
80205ada:	e852                	sd	s4,16(sp)
80205adc:	8aae                	mv	s5,a1
80205ade:	8b32                	mv	s6,a2
80205ae0:	c3fff0ef          	jal	8020571e <rt_object_get_information>
80205ae4:	0005079b          	sext.w	a5,a0
80205ae8:	5529                	li	a0,-22
80205aea:	cfb5                	beqz	a5,80205b66 <rt_object_for_each+0x9e>
80205aec:	843e                	mv	s0,a5
80205aee:	8a9fe0ef          	jal	80204396 <rt_interrupt_get_nest>
80205af2:	c51d                	beqz	a0,80205b20 <rt_object_for_each+0x58>
80205af4:	00003597          	auipc	a1,0x3
80205af8:	54c58593          	addi	a1,a1,1356 # 80209040 <__FUNCTION__.1>
80205afc:	00002517          	auipc	a0,0x2
80205b00:	29c50513          	addi	a0,a0,668 # 80207d98 <rt_system_timer_thread_init+0xc40>
80205b04:	ab0ff0ef          	jal	80204db4 <rt_kprintf>
80205b08:	25e00613          	li	a2,606
80205b0c:	00003597          	auipc	a1,0x3
80205b10:	53458593          	addi	a1,a1,1332 # 80209040 <__FUNCTION__.1>
80205b14:	00003517          	auipc	a0,0x3
80205b18:	ba450513          	addi	a0,a0,-1116 # 802086b8 <rt_system_timer_thread_init+0x1560>
80205b1c:	c4cff0ef          	jal	80204f68 <rt_assert_handler>
80205b20:	01040a1b          	addiw	s4,s0,16
80205b24:	8552                	mv	a0,s4
80205b26:	b37fd0ef          	jal	8020365c <rt_spin_lock_irqsave>
80205b2a:	892a                	mv	s2,a0
80205b2c:	00442983          	lw	s3,4(s0)
80205b30:	2411                	addiw	s0,s0,4
80205b32:	0009879b          	sext.w	a5,s3
80205b36:	00879863          	bne	a5,s0,80205b46 <rt_object_for_each+0x7e>
80205b3a:	8552                	mv	a0,s4
80205b3c:	85ca                	mv	a1,s2
80205b3e:	b39fd0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80205b42:	4501                	li	a0,0
80205b44:	a00d                	j	80205b66 <rt_object_for_each+0x9e>
80205b46:	85da                	mv	a1,s6
80205b48:	fe49851b          	addiw	a0,s3,-28
80205b4c:	9a82                	jalr	s5
80205b4e:	84aa                	mv	s1,a0
80205b50:	c515                	beqz	a0,80205b7c <rt_object_for_each+0xb4>
80205b52:	85ca                	mv	a1,s2
80205b54:	8552                	mv	a0,s4
80205b56:	b21fd0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80205b5a:	87a6                	mv	a5,s1
80205b5c:	00905363          	blez	s1,80205b62 <rt_object_for_each+0x9a>
80205b60:	4781                	li	a5,0
80205b62:	0007851b          	sext.w	a0,a5
80205b66:	70e2                	ld	ra,56(sp)
80205b68:	7442                	ld	s0,48(sp)
80205b6a:	74a2                	ld	s1,40(sp)
80205b6c:	7902                	ld	s2,32(sp)
80205b6e:	69e2                	ld	s3,24(sp)
80205b70:	6a42                	ld	s4,16(sp)
80205b72:	6aa2                	ld	s5,8(sp)
80205b74:	6b02                	ld	s6,0(sp)
80205b76:	0401011b          	addiw	sp,sp,64
80205b7a:	8082                	ret
80205b7c:	0009a983          	lw	s3,0(s3)
80205b80:	bf4d                	j	80205b32 <rt_object_for_each+0x6a>

80205b82 <rt_object_find>:
80205b82:	3101                	addiw	sp,sp,-32
80205b84:	ec06                	sd	ra,24(sp)
80205b86:	e822                	sd	s0,16(sp)
80205b88:	c42a                	sw	a0,8(sp)
80205b8a:	c602                	sw	zero,12(sp)
80205b8c:	0005079b          	sext.w	a5,a0
80205b90:	c7a9                	beqz	a5,80205bda <rt_object_find+0x58>
80205b92:	842e                	mv	s0,a1
80205b94:	803fe0ef          	jal	80204396 <rt_interrupt_get_nest>
80205b98:	c51d                	beqz	a0,80205bc6 <rt_object_find+0x44>
80205b9a:	00003597          	auipc	a1,0x3
80205b9e:	49658593          	addi	a1,a1,1174 # 80209030 <__FUNCTION__.0>
80205ba2:	00002517          	auipc	a0,0x2
80205ba6:	1f650513          	addi	a0,a0,502 # 80207d98 <rt_system_timer_thread_init+0xc40>
80205baa:	a0aff0ef          	jal	80204db4 <rt_kprintf>
80205bae:	2a200613          	li	a2,674
80205bb2:	00003597          	auipc	a1,0x3
80205bb6:	47e58593          	addi	a1,a1,1150 # 80209030 <__FUNCTION__.0>
80205bba:	00003517          	auipc	a0,0x3
80205bbe:	afe50513          	addi	a0,a0,-1282 # 802086b8 <rt_system_timer_thread_init+0x1560>
80205bc2:	ba6ff0ef          	jal	80204f68 <rt_assert_handler>
80205bc6:	0081061b          	addiw	a2,sp,8
80205bca:	00000597          	auipc	a1,0x0
80205bce:	b2a58593          	addi	a1,a1,-1238 # 802056f4 <_match_name>
80205bd2:	8522                	mv	a0,s0
80205bd4:	ef5ff0ef          	jal	80205ac8 <rt_object_for_each>
80205bd8:	4532                	lw	a0,12(sp)
80205bda:	60e2                	ld	ra,24(sp)
80205bdc:	6442                	ld	s0,16(sp)
80205bde:	0201011b          	addiw	sp,sp,32
80205be2:	8082                	ret

80205be4 <rt_sched_thread_init_ctx>:
80205be4:	04050223          	sb	zero,68(a0)
80205be8:	ac9d                	j	80205e5e <rt_sched_thread_init_priv>

80205bea <rt_sched_thread_timer_start>:
80205bea:	04554783          	lbu	a5,69(a0)
80205bee:	0027e793          	ori	a5,a5,2
80205bf2:	04f502a3          	sb	a5,69(a0)
80205bf6:	4501                	li	a0,0
80205bf8:	8082                	ret

80205bfa <rt_sched_thread_timer_stop>:
80205bfa:	04554783          	lbu	a5,69(a0)
80205bfe:	8b89                	andi	a5,a5,2
80205c00:	c395                	beqz	a5,80205c24 <rt_sched_thread_timer_stop+0x2a>
80205c02:	3141                	addiw	sp,sp,-16
80205c04:	e022                	sd	s0,0(sp)
80205c06:	842a                	mv	s0,a0
80205c08:	0585051b          	addiw	a0,a0,88
80205c0c:	e406                	sd	ra,8(sp)
80205c0e:	204010ef          	jal	80206e12 <rt_timer_stop>
80205c12:	04544783          	lbu	a5,69(s0)
80205c16:	60a2                	ld	ra,8(sp)
80205c18:	9bf5                	andi	a5,a5,-3
80205c1a:	04f402a3          	sb	a5,69(s0)
80205c1e:	6402                	ld	s0,0(sp)
80205c20:	2141                	addiw	sp,sp,16
80205c22:	8082                	ret
80205c24:	4501                	li	a0,0
80205c26:	8082                	ret

80205c28 <rt_sched_thread_get_stat>:
80205c28:	04454503          	lbu	a0,68(a0)
80205c2c:	891d                	andi	a0,a0,7
80205c2e:	8082                	ret

80205c30 <rt_sched_thread_get_curr_prio>:
80205c30:	05054503          	lbu	a0,80(a0)
80205c34:	8082                	ret

80205c36 <rt_sched_thread_get_init_prio>:
80205c36:	05154503          	lbu	a0,81(a0)
80205c3a:	8082                	ret

80205c3c <rt_sched_thread_is_suspended>:
80205c3c:	04454503          	lbu	a0,68(a0)
80205c40:	0025551b          	srliw	a0,a0,0x2
80205c44:	8905                	andi	a0,a0,1
80205c46:	8082                	ret

80205c48 <rt_sched_thread_close>:
80205c48:	4785                	li	a5,1
80205c4a:	04f50223          	sb	a5,68(a0)
80205c4e:	4501                	li	a0,0
80205c50:	8082                	ret

80205c52 <rt_sched_thread_yield>:
80205c52:	453c                	lw	a5,72(a0)
80205c54:	c57c                	sw	a5,76(a0)
80205c56:	04454783          	lbu	a5,68(a0)
80205c5a:	0087e793          	ori	a5,a5,8
80205c5e:	04f50223          	sb	a5,68(a0)
80205c62:	4501                	li	a0,0
80205c64:	8082                	ret

80205c66 <rt_sched_thread_ready>:
80205c66:	04454783          	lbu	a5,68(a0)
80205c6a:	8b91                	andi	a5,a5,4
80205c6c:	cf8d                	beqz	a5,80205ca6 <rt_sched_thread_ready+0x40>
80205c6e:	04554783          	lbu	a5,69(a0)
80205c72:	3141                	addiw	sp,sp,-16
80205c74:	e022                	sd	s0,0(sp)
80205c76:	e406                	sd	ra,8(sp)
80205c78:	8b89                	andi	a5,a5,2
80205c7a:	842a                	mv	s0,a0
80205c7c:	e38d                	bnez	a5,80205c9e <rt_sched_thread_ready+0x38>
80205c7e:	5c54                	lw	a3,60(s0)
80205c80:	4038                	lw	a4,64(s0)
80205c82:	03c4079b          	addiw	a5,s0,60
80205c86:	8522                	mv	a0,s0
80205c88:	c2d8                	sw	a4,4(a3)
80205c8a:	c314                	sw	a3,0(a4)
80205c8c:	c03c                	sw	a5,64(s0)
80205c8e:	dc5c                	sw	a5,60(s0)
80205c90:	226000ef          	jal	80205eb6 <rt_sched_insert_thread>
80205c94:	4501                	li	a0,0
80205c96:	60a2                	ld	ra,8(sp)
80205c98:	6402                	ld	s0,0(sp)
80205c9a:	2141                	addiw	sp,sp,16
80205c9c:	8082                	ret
80205c9e:	f5dff0ef          	jal	80205bfa <rt_sched_thread_timer_stop>
80205ca2:	dd71                	beqz	a0,80205c7e <rt_sched_thread_ready+0x18>
80205ca4:	bfcd                	j	80205c96 <rt_sched_thread_ready+0x30>
80205ca6:	5529                	li	a0,-22
80205ca8:	8082                	ret

80205caa <rt_sched_tick_increase>:
80205caa:	3101                	addiw	sp,sp,-32
80205cac:	ec06                	sd	ra,24(sp)
80205cae:	e822                	sd	s0,16(sp)
80205cb0:	185000ef          	jal	80206634 <rt_thread_self>
80205cb4:	842a                	mv	s0,a0
80205cb6:	00c1051b          	addiw	a0,sp,12
80205cba:	12e000ef          	jal	80205de8 <rt_sched_lock>
80205cbe:	447c                	lw	a5,76(s0)
80205cc0:	fff7871b          	addiw	a4,a5,-1
80205cc4:	c478                	sw	a4,76(s0)
80205cc6:	cb11                	beqz	a4,80205cda <rt_sched_tick_increase+0x30>
80205cc8:	4532                	lw	a0,12(sp)
80205cca:	140000ef          	jal	80205e0a <rt_sched_unlock>
80205cce:	60e2                	ld	ra,24(sp)
80205cd0:	6442                	ld	s0,16(sp)
80205cd2:	4501                	li	a0,0
80205cd4:	0201011b          	addiw	sp,sp,32
80205cd8:	8082                	ret
80205cda:	8522                	mv	a0,s0
80205cdc:	f77ff0ef          	jal	80205c52 <rt_sched_thread_yield>
80205ce0:	4532                	lw	a0,12(sp)
80205ce2:	4bc000ef          	jal	8020619e <rt_sched_unlock_n_resched>
80205ce6:	b7e5                	j	80205cce <rt_sched_tick_increase+0x24>

80205ce8 <rt_sched_thread_change_priority>:
80205ce8:	3101                	addiw	sp,sp,-32
80205cea:	e822                	sd	s0,16(sp)
80205cec:	e426                	sd	s1,8(sp)
80205cee:	ec06                	sd	ra,24(sp)
80205cf0:	e04a                	sd	s2,0(sp)
80205cf2:	47fd                	li	a5,31
80205cf4:	842a                	mv	s0,a0
80205cf6:	84ae                	mv	s1,a1
80205cf8:	00b7fe63          	bgeu	a5,a1,80205d14 <rt_sched_thread_change_priority+0x2c>
80205cfc:	0b100613          	li	a2,177
80205d00:	00003597          	auipc	a1,0x3
80205d04:	40858593          	addi	a1,a1,1032 # 80209108 <__FUNCTION__.1>
80205d08:	00003517          	auipc	a0,0x3
80205d0c:	80850513          	addi	a0,a0,-2040 # 80208510 <rt_system_timer_thread_init+0x13b8>
80205d10:	a58ff0ef          	jal	80204f68 <rt_assert_handler>
80205d14:	04444783          	lbu	a5,68(s0)
80205d18:	4905                	li	s2,1
80205d1a:	4709                	li	a4,2
80205d1c:	8b9d                	andi	a5,a5,7
80205d1e:	0099193b          	sllw	s2,s2,s1
80205d22:	02e79663          	bne	a5,a4,80205d4e <rt_sched_thread_change_priority+0x66>
80205d26:	8522                	mv	a0,s0
80205d28:	23e000ef          	jal	80205f66 <rt_sched_remove_thread>
80205d2c:	8522                	mv	a0,s0
80205d2e:	04940823          	sb	s1,80(s0)
80205d32:	05242a23          	sw	s2,84(s0)
80205d36:	04040223          	sb	zero,68(s0)
80205d3a:	17c000ef          	jal	80205eb6 <rt_sched_insert_thread>
80205d3e:	60e2                	ld	ra,24(sp)
80205d40:	6442                	ld	s0,16(sp)
80205d42:	64a2                	ld	s1,8(sp)
80205d44:	6902                	ld	s2,0(sp)
80205d46:	4501                	li	a0,0
80205d48:	0201011b          	addiw	sp,sp,32
80205d4c:	8082                	ret
80205d4e:	04940823          	sb	s1,80(s0)
80205d52:	05242a23          	sw	s2,84(s0)
80205d56:	b7e5                	j	80205d3e <rt_sched_thread_change_priority+0x56>

80205d58 <rt_scheduler_stack_check>:
80205d58:	3101                	addiw	sp,sp,-32
80205d5a:	0005079b          	sext.w	a5,a0
80205d5e:	ec06                	sd	ra,24(sp)
80205d60:	873e                	mv	a4,a5
80205d62:	ef99                	bnez	a5,80205d80 <rt_scheduler_stack_check+0x28>
80205d64:	0de00613          	li	a2,222
80205d68:	00003597          	auipc	a1,0x3
80205d6c:	38058593          	addi	a1,a1,896 # 802090e8 <__FUNCTION__.0>
80205d70:	00002517          	auipc	a0,0x2
80205d74:	7c850513          	addi	a0,a0,1992 # 80208538 <rt_system_timer_thread_init+0x13e0>
80205d78:	c63e                	sw	a5,12(sp)
80205d7a:	9eeff0ef          	jal	80204f68 <rt_assert_handler>
80205d7e:	4732                	lw	a4,12(sp)
80205d80:	5b10                	lw	a2,48(a4)
80205d82:	02300793          	li	a5,35
80205d86:	00064683          	lbu	a3,0(a2)
80205d8a:	00f69b63          	bne	a3,a5,80205da0 <rt_scheduler_stack_check+0x48>
80205d8e:	5354                	lw	a3,36(a4)
80205d90:	0006079b          	sext.w	a5,a2
80205d94:	00d67663          	bgeu	a2,a3,80205da0 <rt_scheduler_stack_check+0x48>
80205d98:	5b50                	lw	a2,52(a4)
80205d9a:	9e3d                	addw	a2,a2,a5
80205d9c:	00d67f63          	bgeu	a2,a3,80205dba <rt_scheduler_stack_check+0x62>
80205da0:	00002697          	auipc	a3,0x2
80205da4:	7b068693          	addi	a3,a3,1968 # 80208550 <rt_system_timer_thread_init+0x13f8>
80205da8:	4605                	li	a2,1
80205daa:	00002597          	auipc	a1,0x2
80205dae:	7c658593          	addi	a1,a1,1990 # 80208570 <rt_system_timer_thread_init+0x1418>
80205db2:	450d                	li	a0,3
80205db4:	fb9fa0ef          	jal	80200d6c <ulog_output>
80205db8:	a001                	j	80205db8 <rt_scheduler_stack_check+0x60>
80205dba:	0207879b          	addiw	a5,a5,32
80205dbe:	02d7e163          	bltu	a5,a3,80205de0 <rt_scheduler_stack_check+0x88>
80205dc2:	60e2                	ld	ra,24(sp)
80205dc4:	00002697          	auipc	a3,0x2
80205dc8:	7bc68693          	addi	a3,a3,1980 # 80208580 <rt_system_timer_thread_init+0x1428>
80205dcc:	4605                	li	a2,1
80205dce:	00002597          	auipc	a1,0x2
80205dd2:	7a258593          	addi	a1,a1,1954 # 80208570 <rt_system_timer_thread_init+0x1418>
80205dd6:	4511                	li	a0,4
80205dd8:	0201011b          	addiw	sp,sp,32
80205ddc:	f91fa06f          	j	80200d6c <ulog_output>
80205de0:	60e2                	ld	ra,24(sp)
80205de2:	0201011b          	addiw	sp,sp,32
80205de6:	8082                	ret

80205de8 <rt_sched_lock>:
80205de8:	0005079b          	sext.w	a5,a0
80205dec:	cf89                	beqz	a5,80205e06 <rt_sched_lock+0x1e>
80205dee:	3141                	addiw	sp,sp,-16
80205df0:	e022                	sd	s0,0(sp)
80205df2:	e406                	sd	ra,8(sp)
80205df4:	843e                	mv	s0,a5
80205df6:	e02fa0ef          	jal	802003f8 <rt_hw_interrupt_disable>
80205dfa:	c008                	sw	a0,0(s0)
80205dfc:	60a2                	ld	ra,8(sp)
80205dfe:	6402                	ld	s0,0(sp)
80205e00:	4501                	li	a0,0
80205e02:	2141                	addiw	sp,sp,16
80205e04:	8082                	ret
80205e06:	5529                	li	a0,-22
80205e08:	8082                	ret

80205e0a <rt_sched_unlock>:
80205e0a:	3141                	addiw	sp,sp,-16
80205e0c:	e406                	sd	ra,8(sp)
80205e0e:	de4fa0ef          	jal	802003f2 <rt_hw_interrupt_enable>
80205e12:	60a2                	ld	ra,8(sp)
80205e14:	4501                	li	a0,0
80205e16:	2141                	addiw	sp,sp,16
80205e18:	8082                	ret

80205e1a <rt_system_scheduler_init>:
80205e1a:	0000b797          	auipc	a5,0xb
80205e1e:	76079423          	sh	zero,1896(a5) # 80211582 <rt_scheduler_lock_nest>
80205e22:	00010797          	auipc	a5,0x10
80205e26:	fee78793          	addi	a5,a5,-18 # 80215e10 <rt_thread_priority_table>
80205e2a:	00010717          	auipc	a4,0x10
80205e2e:	0e670713          	addi	a4,a4,230 # 80215f10 <__bss_end>
80205e32:	2781                	sext.w	a5,a5
80205e34:	2701                	sext.w	a4,a4
80205e36:	c3dc                	sw	a5,4(a5)
80205e38:	c39c                	sw	a5,0(a5)
80205e3a:	27a1                	addiw	a5,a5,8
80205e3c:	fee79de3          	bne	a5,a4,80205e36 <rt_system_scheduler_init+0x1c>
80205e40:	0000b797          	auipc	a5,0xb
80205e44:	7407a223          	sw	zero,1860(a5) # 80211584 <rt_thread_ready_priority_group>
80205e48:	8082                	ret

80205e4a <rt_sched_thread_startup>:
80205e4a:	05054703          	lbu	a4,80(a0)
80205e4e:	4785                	li	a5,1
80205e50:	00e797bb          	sllw	a5,a5,a4
80205e54:	c97c                	sw	a5,84(a0)
80205e56:	4791                	li	a5,4
80205e58:	04f50223          	sb	a5,68(a0)
80205e5c:	8082                	ret

80205e5e <rt_sched_thread_init_priv>:
80205e5e:	3101                	addiw	sp,sp,-32
80205e60:	e822                	sd	s0,16(sp)
80205e62:	e426                	sd	s1,8(sp)
80205e64:	e04a                	sd	s2,0(sp)
80205e66:	03c5079b          	addiw	a5,a0,60
80205e6a:	ec06                	sd	ra,24(sp)
80205e6c:	c13c                	sw	a5,64(a0)
80205e6e:	dd5c                	sw	a5,60(a0)
80205e70:	47fd                	li	a5,31
80205e72:	842a                	mv	s0,a0
80205e74:	892e                	mv	s2,a1
80205e76:	84b2                	mv	s1,a2
80205e78:	00c7fe63          	bgeu	a5,a2,80205e94 <rt_sched_thread_init_priv+0x36>
80205e7c:	15c00613          	li	a2,348
80205e80:	00003597          	auipc	a1,0x3
80205e84:	2d858593          	addi	a1,a1,728 # 80209158 <__FUNCTION__.2>
80205e88:	00002517          	auipc	a0,0x2
80205e8c:	68850513          	addi	a0,a0,1672 # 80208510 <rt_system_timer_thread_init+0x13b8>
80205e90:	8d8ff0ef          	jal	80204f68 <rt_assert_handler>
80205e94:	049408a3          	sb	s1,81(s0)
80205e98:	04940823          	sb	s1,80(s0)
80205e9c:	05242423          	sw	s2,72(s0)
80205ea0:	05242623          	sw	s2,76(s0)
80205ea4:	60e2                	ld	ra,24(sp)
80205ea6:	04042a23          	sw	zero,84(s0)
80205eaa:	6442                	ld	s0,16(sp)
80205eac:	64a2                	ld	s1,8(sp)
80205eae:	6902                	ld	s2,0(sp)
80205eb0:	0201011b          	addiw	sp,sp,32
80205eb4:	8082                	ret

80205eb6 <rt_sched_insert_thread>:
80205eb6:	3101                	addiw	sp,sp,-32
80205eb8:	e822                	sd	s0,16(sp)
80205eba:	e04a                	sd	s2,0(sp)
80205ebc:	ec06                	sd	ra,24(sp)
80205ebe:	0005091b          	sext.w	s2,a0
80205ec2:	e426                	sd	s1,8(sp)
80205ec4:	844a                	mv	s0,s2
80205ec6:	00091e63          	bnez	s2,80205ee2 <rt_sched_insert_thread+0x2c>
80205eca:	17800613          	li	a2,376
80205ece:	00003597          	auipc	a1,0x3
80205ed2:	27258593          	addi	a1,a1,626 # 80209140 <__FUNCTION__.1>
80205ed6:	00002517          	auipc	a0,0x2
80205eda:	66250513          	addi	a0,a0,1634 # 80208538 <rt_system_timer_thread_init+0x13e0>
80205ede:	88aff0ef          	jal	80204f68 <rt_assert_handler>
80205ee2:	d16fa0ef          	jal	802003f8 <rt_hw_interrupt_disable>
80205ee6:	84aa                	mv	s1,a0
80205ee8:	74c000ef          	jal	80206634 <rt_thread_self>
80205eec:	2501                	sext.w	a0,a0
80205eee:	04444703          	lbu	a4,68(s0)
80205ef2:	03251063          	bne	a0,s2,80205f12 <rt_sched_insert_thread+0x5c>
80205ef6:	9b61                	andi	a4,a4,-8
80205ef8:	00376713          	ori	a4,a4,3
80205efc:	04e40223          	sb	a4,68(s0)
80205f00:	6442                	ld	s0,16(sp)
80205f02:	60e2                	ld	ra,24(sp)
80205f04:	6902                	ld	s2,0(sp)
80205f06:	8526                	mv	a0,s1
80205f08:	64a2                	ld	s1,8(sp)
80205f0a:	0201011b          	addiw	sp,sp,32
80205f0e:	ce4fa06f          	j	802003f2 <rt_hw_interrupt_enable>
80205f12:	05044683          	lbu	a3,80(s0)
80205f16:	ff877793          	andi	a5,a4,-8
80205f1a:	0027e793          	ori	a5,a5,2
80205f1e:	0036961b          	slliw	a2,a3,0x3
80205f22:	04f40223          	sb	a5,68(s0)
80205f26:	8b21                	andi	a4,a4,8
80205f28:	00010797          	auipc	a5,0x10
80205f2c:	ee878793          	addi	a5,a5,-280 # 80215e10 <rt_thread_priority_table>
80205f30:	9e3d                	addw	a2,a2,a5
80205f32:	03c4059b          	addiw	a1,s0,60
80205f36:	0036969b          	slliw	a3,a3,0x3
80205f3a:	cf19                	beqz	a4,80205f58 <rt_sched_insert_thread+0xa2>
80205f3c:	4258                	lw	a4,4(a2)
80205f3e:	c30c                	sw	a1,0(a4)
80205f40:	c038                	sw	a4,64(s0)
80205f42:	c24c                	sw	a1,4(a2)
80205f44:	dc50                	sw	a2,60(s0)
80205f46:	0000b717          	auipc	a4,0xb
80205f4a:	63e70713          	addi	a4,a4,1598 # 80211584 <rt_thread_ready_priority_group>
80205f4e:	4314                	lw	a3,0(a4)
80205f50:	487c                	lw	a5,84(s0)
80205f52:	8fd5                	or	a5,a5,a3
80205f54:	c31c                	sw	a5,0(a4)
80205f56:	b76d                	j	80205f00 <rt_sched_insert_thread+0x4a>
80205f58:	9fb5                	addw	a5,a5,a3
80205f5a:	4398                	lw	a4,0(a5)
80205f5c:	c34c                	sw	a1,4(a4)
80205f5e:	dc58                	sw	a4,60(s0)
80205f60:	c38c                	sw	a1,0(a5)
80205f62:	c030                	sw	a2,64(s0)
80205f64:	b7cd                	j	80205f46 <rt_sched_insert_thread+0x90>

80205f66 <rt_sched_remove_thread>:
80205f66:	3141                	addiw	sp,sp,-16
80205f68:	e022                	sd	s0,0(sp)
80205f6a:	0005079b          	sext.w	a5,a0
80205f6e:	e406                	sd	ra,8(sp)
80205f70:	843e                	mv	s0,a5
80205f72:	ef89                	bnez	a5,80205f8c <rt_sched_remove_thread+0x26>
80205f74:	1ac00613          	li	a2,428
80205f78:	00003597          	auipc	a1,0x3
80205f7c:	1b058593          	addi	a1,a1,432 # 80209128 <__FUNCTION__.0>
80205f80:	00002517          	auipc	a0,0x2
80205f84:	5b850513          	addi	a0,a0,1464 # 80208538 <rt_system_timer_thread_init+0x13e0>
80205f88:	fe1fe0ef          	jal	80204f68 <rt_assert_handler>
80205f8c:	c6cfa0ef          	jal	802003f8 <rt_hw_interrupt_disable>
80205f90:	4038                	lw	a4,64(s0)
80205f92:	5c54                	lw	a3,60(s0)
80205f94:	03c4079b          	addiw	a5,s0,60
80205f98:	c2d8                	sw	a4,4(a3)
80205f9a:	c314                	sw	a3,0(a4)
80205f9c:	c03c                	sw	a5,64(s0)
80205f9e:	dc5c                	sw	a5,60(s0)
80205fa0:	05044783          	lbu	a5,80(s0)
80205fa4:	00010717          	auipc	a4,0x10
80205fa8:	e6c70713          	addi	a4,a4,-404 # 80215e10 <rt_thread_priority_table>
80205fac:	0037979b          	slliw	a5,a5,0x3
80205fb0:	9fb9                	addw	a5,a5,a4
80205fb2:	4398                	lw	a4,0(a5)
80205fb4:	00f71c63          	bne	a4,a5,80205fcc <rt_sched_remove_thread+0x66>
80205fb8:	0000b717          	auipc	a4,0xb
80205fbc:	5cc70713          	addi	a4,a4,1484 # 80211584 <rt_thread_ready_priority_group>
80205fc0:	487c                	lw	a5,84(s0)
80205fc2:	4314                	lw	a3,0(a4)
80205fc4:	fff7c793          	not	a5,a5
80205fc8:	8ff5                	and	a5,a5,a3
80205fca:	c31c                	sw	a5,0(a4)
80205fcc:	6402                	ld	s0,0(sp)
80205fce:	60a2                	ld	ra,8(sp)
80205fd0:	2141                	addiw	sp,sp,16
80205fd2:	c20fa06f          	j	802003f2 <rt_hw_interrupt_enable>

80205fd6 <rt_system_scheduler_start>:
80205fd6:	3101                	addiw	sp,sp,-32
80205fd8:	0000b517          	auipc	a0,0xb
80205fdc:	5ac52503          	lw	a0,1452(a0) # 80211584 <rt_thread_ready_priority_group>
80205fe0:	ec06                	sd	ra,24(sp)
80205fe2:	e822                	sd	s0,16(sp)
80205fe4:	e426                	sd	s1,8(sp)
80205fe6:	e04a                	sd	s2,0(sp)
80205fe8:	f21fe0ef          	jal	80204f08 <__rt_ffs>
80205fec:	357d                	addiw	a0,a0,-1
80205fee:	0035151b          	slliw	a0,a0,0x3
80205ff2:	00010797          	auipc	a5,0x10
80205ff6:	e1e78793          	addi	a5,a5,-482 # 80215e10 <rt_thread_priority_table>
80205ffa:	9fa9                	addw	a5,a5,a0
80205ffc:	4380                	lw	s0,0(a5)
80205ffe:	e92fd0ef          	jal	80203690 <rt_cpu_self>
80206002:	fc44049b          	addiw	s1,s0,-60
80206006:	c104                	sw	s1,0(a0)
80206008:	8526                	mv	a0,s1
8020600a:	f5dff0ef          	jal	80205f66 <rt_sched_remove_thread>
8020600e:	478d                	li	a5,3
80206010:	00f40423          	sb	a5,8(s0)
80206014:	fe84051b          	addiw	a0,s0,-24
80206018:	6442                	ld	s0,16(sp)
8020601a:	60e2                	ld	ra,24(sp)
8020601c:	64a2                	ld	s1,8(sp)
8020601e:	6902                	ld	s2,0(sp)
80206020:	0201011b          	addiw	sp,sp,32
80206024:	894fa06f          	j	802000b8 <rt_hw_context_switch_to>

80206028 <rt_schedule>:
80206028:	fc01011b          	addiw	sp,sp,-64
8020602c:	fc06                	sd	ra,56(sp)
8020602e:	f822                	sd	s0,48(sp)
80206030:	ec4e                	sd	s3,24(sp)
80206032:	f426                	sd	s1,40(sp)
80206034:	f04a                	sd	s2,32(sp)
80206036:	e852                	sd	s4,16(sp)
80206038:	e456                	sd	s5,8(sp)
8020603a:	5fa000ef          	jal	80206634 <rt_thread_self>
8020603e:	842a                	mv	s0,a0
80206040:	bb8fa0ef          	jal	802003f8 <rt_hw_interrupt_disable>
80206044:	0000b797          	auipc	a5,0xb
80206048:	53e79783          	lh	a5,1342(a5) # 80211582 <rt_scheduler_lock_nest>
8020604c:	89aa                	mv	s3,a0
8020604e:	12079163          	bnez	a5,80206170 <rt_schedule+0x148>
80206052:	0000b517          	auipc	a0,0xb
80206056:	53252503          	lw	a0,1330(a0) # 80211584 <rt_thread_ready_priority_group>
8020605a:	10050b63          	beqz	a0,80206170 <rt_schedule+0x148>
8020605e:	eabfe0ef          	jal	80204f08 <__rt_ffs>
80206062:	fff5071b          	addiw	a4,a0,-1
80206066:	00010697          	auipc	a3,0x10
8020606a:	daa68693          	addi	a3,a3,-598 # 80215e10 <rt_thread_priority_table>
8020606e:	0037179b          	slliw	a5,a4,0x3
80206072:	9fb5                	addw	a5,a5,a3
80206074:	4384                	lw	s1,0(a5)
80206076:	04444783          	lbu	a5,68(s0)
8020607a:	468d                	li	a3,3
8020607c:	8a26                	mv	s4,s1
8020607e:	0077f613          	andi	a2,a5,7
80206082:	fc44891b          	addiw	s2,s1,-60
80206086:	4a81                	li	s5,0
80206088:	00d61c63          	bne	a2,a3,802060a0 <rt_schedule+0x78>
8020608c:	05044683          	lbu	a3,80(s0)
80206090:	0ee6ec63          	bltu	a3,a4,80206188 <rt_schedule+0x160>
80206094:	4a85                	li	s5,1
80206096:	00e69563          	bne	a3,a4,802060a0 <rt_schedule+0x78>
8020609a:	8ba1                	andi	a5,a5,8
8020609c:	0e078663          	beqz	a5,80206188 <rt_schedule+0x160>
802060a0:	0004079b          	sext.w	a5,s0
802060a4:	0009069b          	sext.w	a3,s2
802060a8:	0ed78063          	beq	a5,a3,80206188 <rt_schedule+0x160>
802060ac:	0000b797          	auipc	a5,0xb
802060b0:	4ce78a23          	sb	a4,1236(a5) # 80211580 <rt_current_priority>
802060b4:	ddcfd0ef          	jal	80203690 <rt_cpu_self>
802060b8:	01252023          	sw	s2,0(a0)
802060bc:	0000b797          	auipc	a5,0xb
802060c0:	4c07a783          	lw	a5,1216(a5) # 8021157c <rt_scheduler_hook>
802060c4:	c781                	beqz	a5,802060cc <rt_schedule+0xa4>
802060c6:	85ca                	mv	a1,s2
802060c8:	8522                	mv	a0,s0
802060ca:	9782                	jalr	a5
802060cc:	000a8563          	beqz	s5,802060d6 <rt_schedule+0xae>
802060d0:	8522                	mv	a0,s0
802060d2:	de5ff0ef          	jal	80205eb6 <rt_sched_insert_thread>
802060d6:	04444783          	lbu	a5,68(s0)
802060da:	0087f713          	andi	a4,a5,8
802060de:	c701                	beqz	a4,802060e6 <rt_schedule+0xbe>
802060e0:	9bdd                	andi	a5,a5,-9
802060e2:	04f40223          	sb	a5,68(s0)
802060e6:	854a                	mv	a0,s2
802060e8:	e7fff0ef          	jal	80205f66 <rt_sched_remove_thread>
802060ec:	008a4783          	lbu	a5,8(s4)
802060f0:	854a                	mv	a0,s2
802060f2:	34a1                	addiw	s1,s1,-24
802060f4:	9be1                	andi	a5,a5,-8
802060f6:	0037e793          	ori	a5,a5,3
802060fa:	00fa0423          	sb	a5,8(s4)
802060fe:	c5bff0ef          	jal	80205d58 <rt_scheduler_stack_check>
80206102:	0000b797          	auipc	a5,0xb
80206106:	43e7c783          	lbu	a5,1086(a5) # 80211540 <rt_interrupt_nest>
8020610a:	02440a1b          	addiw	s4,s0,36
8020610e:	eba9                	bnez	a5,80206160 <rt_schedule+0x138>
80206110:	0000b797          	auipc	a5,0xb
80206114:	4687a783          	lw	a5,1128(a5) # 80211578 <rt_scheduler_switch_hook>
80206118:	c399                	beqz	a5,8020611e <rt_schedule+0xf6>
8020611a:	8522                	mv	a0,s0
8020611c:	9782                	jalr	a5
8020611e:	0004859b          	sext.w	a1,s1
80206122:	000a051b          	sext.w	a0,s4
80206126:	fe5f90ef          	jal	8020010a <rt_hw_context_switch>
8020612a:	854e                	mv	a0,s3
8020612c:	ac6fa0ef          	jal	802003f2 <rt_hw_interrupt_enable>
80206130:	ac8fa0ef          	jal	802003f8 <rt_hw_interrupt_disable>
80206134:	04444783          	lbu	a5,68(s0)
80206138:	0407f713          	andi	a4,a5,64
8020613c:	cb1d                	beqz	a4,80206172 <rt_schedule+0x14a>
8020613e:	fbf7f793          	andi	a5,a5,-65
80206142:	04f40223          	sb	a5,68(s0)
80206146:	aacfa0ef          	jal	802003f2 <rt_hw_interrupt_enable>
8020614a:	7442                	ld	s0,48(sp)
8020614c:	70e2                	ld	ra,56(sp)
8020614e:	74a2                	ld	s1,40(sp)
80206150:	7902                	ld	s2,32(sp)
80206152:	69e2                	ld	s3,24(sp)
80206154:	6a42                	ld	s4,16(sp)
80206156:	6aa2                	ld	s5,8(sp)
80206158:	4505                	li	a0,1
8020615a:	0401011b          	addiw	sp,sp,64
8020615e:	a8d5                	j	80206252 <rt_thread_handle_sig>
80206160:	86ca                	mv	a3,s2
80206162:	8622                	mv	a2,s0
80206164:	0004859b          	sext.w	a1,s1
80206168:	000a051b          	sext.w	a0,s4
8020616c:	d91fa0ef          	jal	80200efc <rt_hw_context_switch_interrupt>
80206170:	854e                	mv	a0,s3
80206172:	7442                	ld	s0,48(sp)
80206174:	70e2                	ld	ra,56(sp)
80206176:	74a2                	ld	s1,40(sp)
80206178:	7902                	ld	s2,32(sp)
8020617a:	69e2                	ld	s3,24(sp)
8020617c:	6a42                	ld	s4,16(sp)
8020617e:	6aa2                	ld	s5,8(sp)
80206180:	0401011b          	addiw	sp,sp,64
80206184:	a6efa06f          	j	802003f2 <rt_hw_interrupt_enable>
80206188:	8522                	mv	a0,s0
8020618a:	dddff0ef          	jal	80205f66 <rt_sched_remove_thread>
8020618e:	04444783          	lbu	a5,68(s0)
80206192:	9be1                	andi	a5,a5,-8
80206194:	0037e793          	ori	a5,a5,3
80206198:	04f40223          	sb	a5,68(s0)
8020619c:	bfd1                	j	80206170 <rt_schedule+0x148>

8020619e <rt_sched_unlock_n_resched>:
8020619e:	3141                	addiw	sp,sp,-16
802061a0:	e022                	sd	s0,0(sp)
802061a2:	e406                	sd	ra,8(sp)
802061a4:	842a                	mv	s0,a0
802061a6:	48e000ef          	jal	80206634 <rt_thread_self>
802061aa:	2501                	sext.w	a0,a0
802061ac:	c119                	beqz	a0,802061b2 <rt_sched_unlock_n_resched+0x14>
802061ae:	e7bff0ef          	jal	80206028 <rt_schedule>
802061b2:	8522                	mv	a0,s0
802061b4:	a3efa0ef          	jal	802003f2 <rt_hw_interrupt_enable>
802061b8:	60a2                	ld	ra,8(sp)
802061ba:	6402                	ld	s0,0(sp)
802061bc:	4501                	li	a0,0
802061be:	2141                	addiw	sp,sp,16
802061c0:	8082                	ret

802061c2 <rt_enter_critical>:
802061c2:	3141                	addiw	sp,sp,-16
802061c4:	e406                	sd	ra,8(sp)
802061c6:	e022                	sd	s0,0(sp)
802061c8:	a30fa0ef          	jal	802003f8 <rt_hw_interrupt_disable>
802061cc:	0000b797          	auipc	a5,0xb
802061d0:	3b678793          	addi	a5,a5,950 # 80211582 <rt_scheduler_lock_nest>
802061d4:	0007d403          	lhu	s0,0(a5)
802061d8:	2405                	addiw	s0,s0,1
802061da:	0104141b          	slliw	s0,s0,0x10
802061de:	4104541b          	sraiw	s0,s0,0x10
802061e2:	00879023          	sh	s0,0(a5)
802061e6:	a0cfa0ef          	jal	802003f2 <rt_hw_interrupt_enable>
802061ea:	60a2                	ld	ra,8(sp)
802061ec:	8522                	mv	a0,s0
802061ee:	6402                	ld	s0,0(sp)
802061f0:	2141                	addiw	sp,sp,16
802061f2:	8082                	ret

802061f4 <rt_exit_critical>:
802061f4:	3141                	addiw	sp,sp,-16
802061f6:	e406                	sd	ra,8(sp)
802061f8:	a00fa0ef          	jal	802003f8 <rt_hw_interrupt_disable>
802061fc:	0000b717          	auipc	a4,0xb
80206200:	38670713          	addi	a4,a4,902 # 80211582 <rt_scheduler_lock_nest>
80206204:	00075783          	lhu	a5,0(a4)
80206208:	37fd                	addiw	a5,a5,-1
8020620a:	0107979b          	slliw	a5,a5,0x10
8020620e:	4107d79b          	sraiw	a5,a5,0x10
80206212:	00f71023          	sh	a5,0(a4)
80206216:	02f04063          	bgtz	a5,80206236 <rt_exit_critical+0x42>
8020621a:	0000b797          	auipc	a5,0xb
8020621e:	36079423          	sh	zero,872(a5) # 80211582 <rt_scheduler_lock_nest>
80206222:	9d0fa0ef          	jal	802003f2 <rt_hw_interrupt_enable>
80206226:	40e000ef          	jal	80206634 <rt_thread_self>
8020622a:	2501                	sext.w	a0,a0
8020622c:	c909                	beqz	a0,8020623e <rt_exit_critical+0x4a>
8020622e:	60a2                	ld	ra,8(sp)
80206230:	2141                	addiw	sp,sp,16
80206232:	df7ff06f          	j	80206028 <rt_schedule>
80206236:	60a2                	ld	ra,8(sp)
80206238:	2141                	addiw	sp,sp,16
8020623a:	9b8fa06f          	j	802003f2 <rt_hw_interrupt_enable>
8020623e:	60a2                	ld	ra,8(sp)
80206240:	2141                	addiw	sp,sp,16
80206242:	8082                	ret

80206244 <rt_exit_critical_safe>:
80206244:	fb1ff06f          	j	802061f4 <rt_exit_critical>

80206248 <rt_critical_level>:
80206248:	0000b517          	auipc	a0,0xb
8020624c:	33a55503          	lhu	a0,826(a0) # 80211582 <rt_scheduler_lock_nest>
80206250:	8082                	ret

80206252 <rt_thread_handle_sig>:
80206252:	fa01011b          	addiw	sp,sp,-96
80206256:	ec86                	sd	ra,88(sp)
80206258:	e8a2                	sd	s0,80(sp)
8020625a:	e4a6                	sd	s1,72(sp)
8020625c:	e0ca                	sd	s2,64(sp)
8020625e:	fc4e                	sd	s3,56(sp)
80206260:	f852                	sd	s4,48(sp)
80206262:	f456                	sd	s5,40(sp)
80206264:	f05a                	sd	s6,32(sp)
80206266:	ec5e                	sd	s7,24(sp)
80206268:	e862                	sd	s8,16(sp)
8020626a:	84aa                	mv	s1,a0
8020626c:	3c8000ef          	jal	80206634 <rt_thread_self>
80206270:	842a                	mv	s0,a0
80206272:	0000b517          	auipc	a0,0xb
80206276:	31e50513          	addi	a0,a0,798 # 80211590 <_thread_signal_lock>
8020627a:	be2fd0ef          	jal	8020365c <rt_spin_lock_irqsave>
8020627e:	0ac42783          	lw	a5,172(s0)
80206282:	0b042703          	lw	a4,176(s0)
80206286:	85aa                	mv	a1,a0
80206288:	8ff9                	and	a5,a5,a4
8020628a:	cbc5                	beqz	a5,8020633a <rt_thread_handle_sig+0xe8>
8020628c:	04444783          	lbu	a5,68(s0)
80206290:	0207f793          	andi	a5,a5,32
80206294:	e3dd                	bnez	a5,8020633a <rt_thread_handle_sig+0xe8>
80206296:	4985                	li	s3,1
80206298:	0000b917          	auipc	s2,0xb
8020629c:	2f890913          	addi	s2,s2,760 # 80211590 <_thread_signal_lock>
802062a0:	5a71                	li	s4,-4
802062a2:	0ac42683          	lw	a3,172(s0)
802062a6:	0b042783          	lw	a5,176(s0)
802062aa:	8ff5                	and	a5,a5,a3
802062ac:	c791                	beqz	a5,802062b8 <rt_thread_handle_sig+0x66>
802062ae:	0bc42a83          	lw	s5,188(s0)
802062b2:	8756                	mv	a4,s5
802062b4:	020a9263          	bnez	s5,802062d8 <rt_thread_handle_sig+0x86>
802062b8:	4785                	li	a5,1
802062ba:	06f48b63          	beq	s1,a5,80206330 <rt_thread_handle_sig+0xde>
802062be:	60e6                	ld	ra,88(sp)
802062c0:	6446                	ld	s0,80(sp)
802062c2:	64a6                	ld	s1,72(sp)
802062c4:	6906                	ld	s2,64(sp)
802062c6:	79e2                	ld	s3,56(sp)
802062c8:	7a42                	ld	s4,48(sp)
802062ca:	7aa2                	ld	s5,40(sp)
802062cc:	7b02                	ld	s6,32(sp)
802062ce:	6be2                	ld	s7,24(sp)
802062d0:	6c42                	ld	s8,16(sp)
802062d2:	0601011b          	addiw	sp,sp,96
802062d6:	8082                	ret
802062d8:	008aa783          	lw	a5,8(s5)
802062dc:	863e                	mv	a2,a5
802062de:	c399                	beqz	a5,802062e4 <rt_thread_handle_sig+0x92>
802062e0:	ff87861b          	addiw	a2,a5,-8
802062e4:	00075783          	lhu	a5,0(a4)
802062e8:	0ac42e23          	sw	a2,188(s0)
802062ec:	0b842603          	lw	a2,184(s0)
802062f0:	0027971b          	slliw	a4,a5,0x2
802062f4:	00078b1b          	sext.w	s6,a5
802062f8:	9f31                	addw	a4,a4,a2
802062fa:	00f997bb          	sllw	a5,s3,a5
802062fe:	00072b83          	lw	s7,0(a4)
80206302:	fff7c793          	not	a5,a5
80206306:	8ff5                	and	a5,a5,a3
80206308:	0af42623          	sw	a5,172(s0)
8020630c:	854a                	mv	a0,s2
8020630e:	b68fd0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80206312:	000b8463          	beqz	s7,8020631a <rt_thread_handle_sig+0xc8>
80206316:	855a                	mv	a0,s6
80206318:	9b82                	jalr	s7
8020631a:	854a                	mv	a0,s2
8020631c:	b40fd0ef          	jal	8020365c <rt_spin_lock_irqsave>
80206320:	e42a                	sd	a0,8(sp)
80206322:	8556                	mv	a0,s5
80206324:	b34ff0ef          	jal	80205658 <rt_mp_free>
80206328:	65a2                	ld	a1,8(sp)
8020632a:	03442c23          	sw	s4,56(s0)
8020632e:	bf95                	j	802062a2 <rt_thread_handle_sig+0x50>
80206330:	04444783          	lbu	a5,68(s0)
80206334:	9bbd                	andi	a5,a5,-17
80206336:	04f40223          	sb	a5,68(s0)
8020633a:	6446                	ld	s0,80(sp)
8020633c:	60e6                	ld	ra,88(sp)
8020633e:	64a6                	ld	s1,72(sp)
80206340:	6906                	ld	s2,64(sp)
80206342:	79e2                	ld	s3,56(sp)
80206344:	7a42                	ld	s4,48(sp)
80206346:	7aa2                	ld	s5,40(sp)
80206348:	7b02                	ld	s6,32(sp)
8020634a:	6be2                	ld	s7,24(sp)
8020634c:	6c42                	ld	s8,16(sp)
8020634e:	0000b517          	auipc	a0,0xb
80206352:	24250513          	addi	a0,a0,578 # 80211590 <_thread_signal_lock>
80206356:	0601011b          	addiw	sp,sp,96
8020635a:	b1cfd06f          	j	80203676 <rt_spin_unlock_irqrestore>

8020635e <rt_thread_free_sig>:
8020635e:	3101                	addiw	sp,sp,-32
80206360:	e822                	sd	s0,16(sp)
80206362:	842a                	mv	s0,a0
80206364:	0000b517          	auipc	a0,0xb
80206368:	22c50513          	addi	a0,a0,556 # 80211590 <_thread_signal_lock>
8020636c:	e426                	sd	s1,8(sp)
8020636e:	e04a                	sd	s2,0(sp)
80206370:	ec06                	sd	ra,24(sp)
80206372:	aeafd0ef          	jal	8020365c <rt_spin_lock_irqsave>
80206376:	0bc42483          	lw	s1,188(s0)
8020637a:	0b842903          	lw	s2,184(s0)
8020637e:	85aa                	mv	a1,a0
80206380:	0a042e23          	sw	zero,188(s0)
80206384:	0a042c23          	sw	zero,184(s0)
80206388:	0000b517          	auipc	a0,0xb
8020638c:	20850513          	addi	a0,a0,520 # 80211590 <_thread_signal_lock>
80206390:	ae6fd0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80206394:	c889                	beqz	s1,802063a6 <rt_thread_free_sig+0x48>
80206396:	24a1                	addiw	s1,s1,8
80206398:	4080                	lw	s0,0(s1)
8020639a:	8526                	mv	a0,s1
8020639c:	3561                	addiw	a0,a0,-8
8020639e:	84a2                	mv	s1,s0
802063a0:	ab8ff0ef          	jal	80205658 <rt_mp_free>
802063a4:	f875                	bnez	s0,80206398 <rt_thread_free_sig+0x3a>
802063a6:	00090b63          	beqz	s2,802063bc <rt_thread_free_sig+0x5e>
802063aa:	6442                	ld	s0,16(sp)
802063ac:	60e2                	ld	ra,24(sp)
802063ae:	64a2                	ld	s1,8(sp)
802063b0:	854a                	mv	a0,s2
802063b2:	6902                	ld	s2,0(sp)
802063b4:	0201011b          	addiw	sp,sp,32
802063b8:	ceffe06f          	j	802050a6 <rt_free>
802063bc:	60e2                	ld	ra,24(sp)
802063be:	6442                	ld	s0,16(sp)
802063c0:	64a2                	ld	s1,8(sp)
802063c2:	6902                	ld	s2,0(sp)
802063c4:	0201011b          	addiw	sp,sp,32
802063c8:	8082                	ret

802063ca <rt_system_signal_init>:
802063ca:	3141                	addiw	sp,sp,-16
802063cc:	4631                	li	a2,12
802063ce:	04000593          	li	a1,64
802063d2:	00002517          	auipc	a0,0x2
802063d6:	21e50513          	addi	a0,a0,542 # 802085f0 <rt_system_timer_thread_init+0x1498>
802063da:	e406                	sd	ra,8(sp)
802063dc:	96eff0ef          	jal	8020554a <rt_mp_create>
802063e0:	0000b797          	auipc	a5,0xb
802063e4:	1aa7a423          	sw	a0,424(a5) # 80211588 <_siginfo_pool>
802063e8:	2501                	sext.w	a0,a0
802063ea:	e90d                	bnez	a0,8020641c <rt_system_signal_init+0x52>
802063ec:	4605                	li	a2,1
802063ee:	00002597          	auipc	a1,0x2
802063f2:	1fa58593          	addi	a1,a1,506 # 802085e8 <rt_system_timer_thread_init+0x1490>
802063f6:	450d                	li	a0,3
802063f8:	00002697          	auipc	a3,0x2
802063fc:	20068693          	addi	a3,a3,512 # 802085f8 <rt_system_timer_thread_init+0x14a0>
80206400:	96dfa0ef          	jal	80200d6c <ulog_output>
80206404:	29d00613          	li	a2,669
80206408:	00003597          	auipc	a1,0x3
8020640c:	d7058593          	addi	a1,a1,-656 # 80209178 <__FUNCTION__.0>
80206410:	00002517          	auipc	a0,0x2
80206414:	2a850513          	addi	a0,a0,680 # 802086b8 <rt_system_timer_thread_init+0x1560>
80206418:	b51fe0ef          	jal	80204f68 <rt_assert_handler>
8020641c:	60a2                	ld	ra,8(sp)
8020641e:	4501                	li	a0,0
80206420:	2141                	addiw	sp,sp,16
80206422:	8082                	ret

80206424 <_thread_timeout>:
80206424:	3101                	addiw	sp,sp,-32
80206426:	e822                	sd	s0,16(sp)
80206428:	0005079b          	sext.w	a5,a0
8020642c:	ec06                	sd	ra,24(sp)
8020642e:	843e                	mv	s0,a5
80206430:	ef89                	bnez	a5,8020644a <_thread_timeout+0x26>
80206432:	07200613          	li	a2,114
80206436:	00003597          	auipc	a1,0x3
8020643a:	e0258593          	addi	a1,a1,-510 # 80209238 <__FUNCTION__.11>
8020643e:	00002517          	auipc	a0,0x2
80206442:	0fa50513          	addi	a0,a0,250 # 80208538 <rt_system_timer_thread_init+0x13e0>
80206446:	b23fe0ef          	jal	80204f68 <rt_assert_handler>
8020644a:	8522                	mv	a0,s0
8020644c:	e46ff0ef          	jal	80205a92 <rt_object_get_type>
80206450:	4785                	li	a5,1
80206452:	00f50e63          	beq	a0,a5,8020646e <_thread_timeout+0x4a>
80206456:	07300613          	li	a2,115
8020645a:	00003597          	auipc	a1,0x3
8020645e:	dde58593          	addi	a1,a1,-546 # 80209238 <__FUNCTION__.11>
80206462:	00002517          	auipc	a0,0x2
80206466:	1c650513          	addi	a0,a0,454 # 80208628 <rt_system_timer_thread_init+0x14d0>
8020646a:	afffe0ef          	jal	80204f68 <rt_assert_handler>
8020646e:	00c1051b          	addiw	a0,sp,12
80206472:	977ff0ef          	jal	80205de8 <rt_sched_lock>
80206476:	8522                	mv	a0,s0
80206478:	fc4ff0ef          	jal	80205c3c <rt_sched_thread_is_suspended>
8020647c:	ed09                	bnez	a0,80206496 <_thread_timeout+0x72>
8020647e:	07b00613          	li	a2,123
80206482:	00003597          	auipc	a1,0x3
80206486:	db658593          	addi	a1,a1,-586 # 80209238 <__FUNCTION__.11>
8020648a:	00002517          	auipc	a0,0x2
8020648e:	1e650513          	addi	a0,a0,486 # 80208670 <rt_system_timer_thread_init+0x1518>
80206492:	ad7fe0ef          	jal	80204f68 <rt_assert_handler>
80206496:	5c54                	lw	a3,60(s0)
80206498:	4038                	lw	a4,64(s0)
8020649a:	f8c00793          	li	a5,-116
8020649e:	dc1c                	sw	a5,56(s0)
802064a0:	c2d8                	sw	a4,4(a3)
802064a2:	03c4079b          	addiw	a5,s0,60
802064a6:	c314                	sw	a3,0(a4)
802064a8:	c03c                	sw	a5,64(s0)
802064aa:	dc5c                	sw	a5,60(s0)
802064ac:	8522                	mv	a0,s0
802064ae:	a09ff0ef          	jal	80205eb6 <rt_sched_insert_thread>
802064b2:	4532                	lw	a0,12(sp)
802064b4:	cebff0ef          	jal	8020619e <rt_sched_unlock_n_resched>
802064b8:	60e2                	ld	ra,24(sp)
802064ba:	6442                	ld	s0,16(sp)
802064bc:	0201011b          	addiw	sp,sp,32
802064c0:	8082                	ret

802064c2 <_thread_init.isra.0>:
802064c2:	fd01011b          	addiw	sp,sp,-48
802064c6:	e44e                	sd	s3,8(sp)
802064c8:	e052                	sd	s4,0(sp)
802064ca:	89b2                	mv	s3,a2
802064cc:	8a2e                	mv	s4,a1
802064ce:	863e                	mv	a2,a5
802064d0:	85c2                	mv	a1,a6
802064d2:	f406                	sd	ra,40(sp)
802064d4:	f022                	sd	s0,32(sp)
802064d6:	ec26                	sd	s1,24(sp)
802064d8:	842a                	mv	s0,a0
802064da:	e84a                	sd	s2,16(sp)
802064dc:	84b6                	mv	s1,a3
802064de:	893a                	mv	s2,a4
802064e0:	f04ff0ef          	jal	80205be4 <rt_sched_thread_init_ctx>
802064e4:	864a                	mv	a2,s2
802064e6:	03442423          	sw	s4,40(s0)
802064ea:	03342623          	sw	s3,44(s0)
802064ee:	d804                	sw	s1,48(s0)
802064f0:	03242a23          	sw	s2,52(s0)
802064f4:	02300593          	li	a1,35
802064f8:	8526                	mv	a0,s1
802064fa:	e38fe0ef          	jal	80204b32 <rt_memset>
802064fe:	585c                	lw	a5,52(s0)
80206500:	5810                	lw	a2,48(s0)
80206502:	544c                	lw	a1,44(s0)
80206504:	5408                	lw	a0,40(s0)
80206506:	37f1                	addiw	a5,a5,-4
80206508:	9e3d                	addw	a2,a2,a5
8020650a:	00000697          	auipc	a3,0x0
8020650e:	1aa68693          	addi	a3,a3,426 # 802066b4 <_thread_exit>
80206512:	9c3fa0ef          	jal	80200ed4 <rt_hw_stack_init>
80206516:	d048                	sw	a0,36(s0)
80206518:	0984071b          	addiw	a4,s0,152
8020651c:	0804079b          	addiw	a5,s0,128
80206520:	cfd8                	sw	a4,28(a5)
80206522:	cf98                	sw	a4,24(a5)
80206524:	86a2                	mv	a3,s0
80206526:	85a2                	mv	a1,s0
80206528:	0584051b          	addiw	a0,s0,88
8020652c:	0a042023          	sw	zero,160(s0)
80206530:	0a042223          	sw	zero,164(s0)
80206534:	0a040423          	sb	zero,168(s0)
80206538:	02042c23          	sw	zero,56(s0)
8020653c:	08042a23          	sw	zero,148(s0)
80206540:	0c042823          	sw	zero,208(s0)
80206544:	47a1                	li	a5,8
80206546:	4701                	li	a4,0
80206548:	00000617          	auipc	a2,0x0
8020654c:	edc60613          	addi	a2,a2,-292 # 80206424 <_thread_timeout>
80206550:	696000ef          	jal	80206be6 <rt_timer_init>
80206554:	0c84051b          	addiw	a0,s0,200
80206558:	0a042823          	sw	zero,176(s0)
8020655c:	0a042623          	sw	zero,172(s0)
80206560:	0a042a23          	sw	zero,180(s0)
80206564:	0a042c23          	sw	zero,184(s0)
80206568:	0a042e23          	sw	zero,188(s0)
8020656c:	8e4fd0ef          	jal	80203650 <rt_spin_lock_init>
80206570:	70a2                	ld	ra,40(sp)
80206572:	7402                	ld	s0,32(sp)
80206574:	64e2                	ld	s1,24(sp)
80206576:	6942                	ld	s2,16(sp)
80206578:	69a2                	ld	s3,8(sp)
8020657a:	6a02                	ld	s4,0(sp)
8020657c:	4501                	li	a0,0
8020657e:	0301011b          	addiw	sp,sp,48
80206582:	8082                	ret

80206584 <rt_thread_init>:
80206584:	fb01011b          	addiw	sp,sp,-80
80206588:	e0a2                	sd	s0,64(sp)
8020658a:	fc26                	sd	s1,56(sp)
8020658c:	f84a                	sd	s2,48(sp)
8020658e:	f44e                	sd	s3,40(sp)
80206590:	f052                	sd	s4,32(sp)
80206592:	ec56                	sd	s5,24(sp)
80206594:	e85a                	sd	s6,16(sp)
80206596:	e45e                	sd	s7,8(sp)
80206598:	8abe                	mv	s5,a5
8020659a:	e486                	sd	ra,72(sp)
8020659c:	0005079b          	sext.w	a5,a0
802065a0:	842a                	mv	s0,a0
802065a2:	8bae                	mv	s7,a1
802065a4:	89b2                	mv	s3,a2
802065a6:	8a36                	mv	s4,a3
802065a8:	84ba                	mv	s1,a4
802065aa:	8b42                	mv	s6,a6
802065ac:	8946                	mv	s2,a7
802065ae:	ef89                	bnez	a5,802065c8 <rt_thread_init+0x44>
802065b0:	14d00613          	li	a2,333
802065b4:	00003597          	auipc	a1,0x3
802065b8:	c9458593          	addi	a1,a1,-876 # 80209248 <__FUNCTION__.12>
802065bc:	00002517          	auipc	a0,0x2
802065c0:	f7c50513          	addi	a0,a0,-132 # 80208538 <rt_system_timer_thread_init+0x13e0>
802065c4:	9a5fe0ef          	jal	80204f68 <rt_assert_handler>
802065c8:	0004879b          	sext.w	a5,s1
802065cc:	ef89                	bnez	a5,802065e6 <rt_thread_init+0x62>
802065ce:	14e00613          	li	a2,334
802065d2:	00003597          	auipc	a1,0x3
802065d6:	c7658593          	addi	a1,a1,-906 # 80209248 <__FUNCTION__.12>
802065da:	00002517          	auipc	a0,0x2
802065de:	0be50513          	addi	a0,a0,190 # 80208698 <rt_system_timer_thread_init+0x1540>
802065e2:	987fe0ef          	jal	80204f68 <rt_assert_handler>
802065e6:	00091e63          	bnez	s2,80206602 <rt_thread_init+0x7e>
802065ea:	14f00613          	li	a2,335
802065ee:	00003597          	auipc	a1,0x3
802065f2:	c5a58593          	addi	a1,a1,-934 # 80209248 <__FUNCTION__.12>
802065f6:	00002517          	auipc	a0,0x2
802065fa:	0ba50513          	addi	a0,a0,186 # 802086b0 <rt_system_timer_thread_init+0x1558>
802065fe:	96bfe0ef          	jal	80204f68 <rt_assert_handler>
80206602:	865e                	mv	a2,s7
80206604:	8522                	mv	a0,s0
80206606:	4585                	li	a1,1
80206608:	946ff0ef          	jal	8020574e <rt_object_init>
8020660c:	8522                	mv	a0,s0
8020660e:	6406                	ld	s0,64(sp)
80206610:	60a6                	ld	ra,72(sp)
80206612:	6ba2                	ld	s7,8(sp)
80206614:	884a                	mv	a6,s2
80206616:	87da                	mv	a5,s6
80206618:	7942                	ld	s2,48(sp)
8020661a:	6b42                	ld	s6,16(sp)
8020661c:	8756                	mv	a4,s5
8020661e:	86a6                	mv	a3,s1
80206620:	6ae2                	ld	s5,24(sp)
80206622:	74e2                	ld	s1,56(sp)
80206624:	8652                	mv	a2,s4
80206626:	85ce                	mv	a1,s3
80206628:	7a02                	ld	s4,32(sp)
8020662a:	79a2                	ld	s3,40(sp)
8020662c:	0501011b          	addiw	sp,sp,80
80206630:	e93ff06f          	j	802064c2 <_thread_init.isra.0>

80206634 <rt_thread_self>:
80206634:	3141                	addiw	sp,sp,-16
80206636:	e406                	sd	ra,8(sp)
80206638:	858fd0ef          	jal	80203690 <rt_cpu_self>
8020663c:	60a2                	ld	ra,8(sp)
8020663e:	4108                	lw	a0,0(a0)
80206640:	2141                	addiw	sp,sp,16
80206642:	8082                	ret

80206644 <rt_thread_close>:
80206644:	3101                	addiw	sp,sp,-32
80206646:	e822                	sd	s0,16(sp)
80206648:	ec06                	sd	ra,24(sp)
8020664a:	842a                	mv	s0,a0
8020664c:	fe9ff0ef          	jal	80206634 <rt_thread_self>
80206650:	2501                	sext.w	a0,a0
80206652:	0004079b          	sext.w	a5,s0
80206656:	02f51163          	bne	a0,a5,80206678 <rt_thread_close+0x34>
8020665a:	befff0ef          	jal	80206248 <rt_critical_level>
8020665e:	ed09                	bnez	a0,80206678 <rt_thread_close+0x34>
80206660:	1a600613          	li	a2,422
80206664:	00003597          	auipc	a1,0x3
80206668:	bac58593          	addi	a1,a1,-1108 # 80209210 <__FUNCTION__.9>
8020666c:	00002517          	auipc	a0,0x2
80206670:	05450513          	addi	a0,a0,84 # 802086c0 <rt_system_timer_thread_init+0x1568>
80206674:	8f5fe0ef          	jal	80204f68 <rt_assert_handler>
80206678:	00c1051b          	addiw	a0,sp,12
8020667c:	f6cff0ef          	jal	80205de8 <rt_sched_lock>
80206680:	8522                	mv	a0,s0
80206682:	da6ff0ef          	jal	80205c28 <rt_sched_thread_get_stat>
80206686:	4785                	li	a5,1
80206688:	00f50d63          	beq	a0,a5,802066a2 <rt_thread_close+0x5e>
8020668c:	c501                	beqz	a0,80206694 <rt_thread_close+0x50>
8020668e:	8522                	mv	a0,s0
80206690:	8d7ff0ef          	jal	80205f66 <rt_sched_remove_thread>
80206694:	0584051b          	addiw	a0,s0,88
80206698:	608000ef          	jal	80206ca0 <rt_timer_detach>
8020669c:	8522                	mv	a0,s0
8020669e:	daaff0ef          	jal	80205c48 <rt_sched_thread_close>
802066a2:	4532                	lw	a0,12(sp)
802066a4:	f66ff0ef          	jal	80205e0a <rt_sched_unlock>
802066a8:	60e2                	ld	ra,24(sp)
802066aa:	6442                	ld	s0,16(sp)
802066ac:	4501                	li	a0,0
802066ae:	0201011b          	addiw	sp,sp,32
802066b2:	8082                	ret

802066b4 <_thread_exit>:
802066b4:	3101                	addiw	sp,sp,-32
802066b6:	ec06                	sd	ra,24(sp)
802066b8:	e822                	sd	s0,16(sp)
802066ba:	e426                	sd	s1,8(sp)
802066bc:	f79ff0ef          	jal	80206634 <rt_thread_self>
802066c0:	842a                	mv	s0,a0
802066c2:	b01ff0ef          	jal	802061c2 <rt_enter_critical>
802066c6:	84aa                	mv	s1,a0
802066c8:	8522                	mv	a0,s0
802066ca:	f7bff0ef          	jal	80206644 <rt_thread_close>
802066ce:	8522                	mv	a0,s0
802066d0:	fdbfc0ef          	jal	802036aa <rt_thread_defunct_enqueue>
802066d4:	8526                	mv	a0,s1
802066d6:	b6fff0ef          	jal	80206244 <rt_exit_critical_safe>
802066da:	6442                	ld	s0,16(sp)
802066dc:	60e2                	ld	ra,24(sp)
802066de:	64a2                	ld	s1,8(sp)
802066e0:	0201011b          	addiw	sp,sp,32
802066e4:	945ff06f          	j	80206028 <rt_schedule>

802066e8 <rt_thread_create>:
802066e8:	fc01011b          	addiw	sp,sp,-64
802066ec:	f822                	sd	s0,48(sp)
802066ee:	f426                	sd	s1,40(sp)
802066f0:	f04a                	sd	s2,32(sp)
802066f2:	ec4e                	sd	s3,24(sp)
802066f4:	e852                	sd	s4,16(sp)
802066f6:	e456                	sd	s5,8(sp)
802066f8:	fc06                	sd	ra,56(sp)
802066fa:	842a                	mv	s0,a0
802066fc:	89ae                	mv	s3,a1
802066fe:	8a32                	mv	s4,a2
80206700:	84b6                	mv	s1,a3
80206702:	8aba                	mv	s5,a4
80206704:	893e                	mv	s2,a5
80206706:	ef89                	bnez	a5,80206720 <rt_thread_create+0x38>
80206708:	20b00613          	li	a2,523
8020670c:	00003597          	auipc	a1,0x3
80206710:	aec58593          	addi	a1,a1,-1300 # 802091f8 <__FUNCTION__.7>
80206714:	00002517          	auipc	a0,0x2
80206718:	f9c50513          	addi	a0,a0,-100 # 802086b0 <rt_system_timer_thread_init+0x1558>
8020671c:	84dfe0ef          	jal	80204f68 <rt_assert_handler>
80206720:	85a2                	mv	a1,s0
80206722:	4505                	li	a0,1
80206724:	9b2ff0ef          	jal	802058d6 <rt_object_allocate>
80206728:	0005079b          	sext.w	a5,a0
8020672c:	843e                	mv	s0,a5
8020672e:	cb99                	beqz	a5,80206744 <rt_thread_create+0x5c>
80206730:	8526                	mv	a0,s1
80206732:	92dfe0ef          	jal	8020505e <rt_malloc>
80206736:	0005079b          	sext.w	a5,a0
8020673a:	86be                	mv	a3,a5
8020673c:	e385                	bnez	a5,8020675c <rt_thread_create+0x74>
8020673e:	8522                	mv	a0,s0
80206740:	a6aff0ef          	jal	802059aa <rt_object_delete>
80206744:	4401                	li	s0,0
80206746:	70e2                	ld	ra,56(sp)
80206748:	8522                	mv	a0,s0
8020674a:	7442                	ld	s0,48(sp)
8020674c:	74a2                	ld	s1,40(sp)
8020674e:	7902                	ld	s2,32(sp)
80206750:	69e2                	ld	s3,24(sp)
80206752:	6a42                	ld	s4,16(sp)
80206754:	6aa2                	ld	s5,8(sp)
80206756:	0401011b          	addiw	sp,sp,64
8020675a:	8082                	ret
8020675c:	884a                	mv	a6,s2
8020675e:	87d6                	mv	a5,s5
80206760:	8726                	mv	a4,s1
80206762:	8652                	mv	a2,s4
80206764:	85ce                	mv	a1,s3
80206766:	8522                	mv	a0,s0
80206768:	d5bff0ef          	jal	802064c2 <_thread_init.isra.0>
8020676c:	bfe9                	j	80206746 <rt_thread_create+0x5e>

8020676e <rt_thread_suspend_to_list>:
8020676e:	fc01011b          	addiw	sp,sp,-64
80206772:	f822                	sd	s0,48(sp)
80206774:	f426                	sd	s1,40(sp)
80206776:	f04a                	sd	s2,32(sp)
80206778:	ec4e                	sd	s3,24(sp)
8020677a:	e852                	sd	s4,16(sp)
8020677c:	0005099b          	sext.w	s3,a0
80206780:	fc06                	sd	ra,56(sp)
80206782:	844e                	mv	s0,s3
80206784:	892e                	mv	s2,a1
80206786:	8a32                	mv	s4,a2
80206788:	84b6                	mv	s1,a3
8020678a:	00099e63          	bnez	s3,802067a6 <rt_thread_suspend_to_list+0x38>
8020678e:	37f00613          	li	a2,895
80206792:	00003597          	auipc	a1,0x3
80206796:	a3658593          	addi	a1,a1,-1482 # 802091c8 <__FUNCTION__.2>
8020679a:	00002517          	auipc	a0,0x2
8020679e:	d9e50513          	addi	a0,a0,-610 # 80208538 <rt_system_timer_thread_init+0x13e0>
802067a2:	fc6fe0ef          	jal	80204f68 <rt_assert_handler>
802067a6:	8522                	mv	a0,s0
802067a8:	aeaff0ef          	jal	80205a92 <rt_object_get_type>
802067ac:	4785                	li	a5,1
802067ae:	00f50e63          	beq	a0,a5,802067ca <rt_thread_suspend_to_list+0x5c>
802067b2:	38000613          	li	a2,896
802067b6:	00003597          	auipc	a1,0x3
802067ba:	a1258593          	addi	a1,a1,-1518 # 802091c8 <__FUNCTION__.2>
802067be:	00002517          	auipc	a0,0x2
802067c2:	e6a50513          	addi	a0,a0,-406 # 80208628 <rt_system_timer_thread_init+0x14d0>
802067c6:	fa2fe0ef          	jal	80204f68 <rt_assert_handler>
802067ca:	e6bff0ef          	jal	80206634 <rt_thread_self>
802067ce:	2501                	sext.w	a0,a0
802067d0:	01350e63          	beq	a0,s3,802067ec <rt_thread_suspend_to_list+0x7e>
802067d4:	38100613          	li	a2,897
802067d8:	00003597          	auipc	a1,0x3
802067dc:	9f058593          	addi	a1,a1,-1552 # 802091c8 <__FUNCTION__.2>
802067e0:	00002517          	auipc	a0,0x2
802067e4:	f1850513          	addi	a0,a0,-232 # 802086f8 <rt_system_timer_thread_init+0x15a0>
802067e8:	f80fe0ef          	jal	80204f68 <rt_assert_handler>
802067ec:	00c1051b          	addiw	a0,sp,12
802067f0:	df8ff0ef          	jal	80205de8 <rt_sched_lock>
802067f4:	8522                	mv	a0,s0
802067f6:	c32ff0ef          	jal	80205c28 <rt_sched_thread_get_stat>
802067fa:	ffe5071b          	addiw	a4,a0,-2
802067fe:	4785                	li	a5,1
80206800:	02e7f063          	bgeu	a5,a4,80206820 <rt_thread_suspend_to_list+0xb2>
80206804:	4532                	lw	a0,12(sp)
80206806:	e04ff0ef          	jal	80205e0a <rt_sched_unlock>
8020680a:	f0100513          	li	a0,-255
8020680e:	70e2                	ld	ra,56(sp)
80206810:	7442                	ld	s0,48(sp)
80206812:	74a2                	ld	s1,40(sp)
80206814:	7902                	ld	s2,32(sp)
80206816:	69e2                	ld	s3,24(sp)
80206818:	6a42                	ld	s4,16(sp)
8020681a:	0401011b          	addiw	sp,sp,64
8020681e:	8082                	ret
80206820:	478d                	li	a5,3
80206822:	02f51363          	bne	a0,a5,80206848 <rt_thread_suspend_to_list+0xda>
80206826:	e0fff0ef          	jal	80206634 <rt_thread_self>
8020682a:	2501                	sext.w	a0,a0
8020682c:	01350e63          	beq	a0,s3,80206848 <rt_thread_suspend_to_list+0xda>
80206830:	39200613          	li	a2,914
80206834:	00003597          	auipc	a1,0x3
80206838:	99458593          	addi	a1,a1,-1644 # 802091c8 <__FUNCTION__.2>
8020683c:	00002517          	auipc	a0,0x2
80206840:	ebc50513          	addi	a0,a0,-324 # 802086f8 <rt_system_timer_thread_init+0x15a0>
80206844:	f24fe0ef          	jal	80204f68 <rt_assert_handler>
80206848:	8522                	mv	a0,s0
8020684a:	f1cff0ef          	jal	80205f66 <rt_sched_remove_thread>
8020684e:	00099e63          	bnez	s3,8020686a <rt_thread_suspend_to_list+0xfc>
80206852:	34c00613          	li	a2,844
80206856:	00003597          	auipc	a1,0x3
8020685a:	95258593          	addi	a1,a1,-1710 # 802091a8 <__FUNCTION__.1>
8020685e:	00002517          	auipc	a0,0x2
80206862:	cda50513          	addi	a0,a0,-806 # 80208538 <rt_system_timer_thread_init+0x13e0>
80206866:	f02fe0ef          	jal	80204f68 <rt_assert_handler>
8020686a:	4705                	li	a4,1
8020686c:	4799                	li	a5,6
8020686e:	02e48463          	beq	s1,a4,80206896 <rt_thread_suspend_to_list+0x128>
80206872:	4789                	li	a5,2
80206874:	02f48063          	beq	s1,a5,80206894 <rt_thread_suspend_to_list+0x126>
80206878:	4791                	li	a5,4
8020687a:	cc91                	beqz	s1,80206896 <rt_thread_suspend_to_list+0x128>
8020687c:	35900613          	li	a2,857
80206880:	00003597          	auipc	a1,0x3
80206884:	92858593          	addi	a1,a1,-1752 # 802091a8 <__FUNCTION__.1>
80206888:	00002517          	auipc	a0,0x2
8020688c:	e3050513          	addi	a0,a0,-464 # 802086b8 <rt_system_timer_thread_init+0x1560>
80206890:	ed8fe0ef          	jal	80204f68 <rt_assert_handler>
80206894:	479d                	li	a5,7
80206896:	04444703          	lbu	a4,68(s0)
8020689a:	9b61                	andi	a4,a4,-8
8020689c:	8fd9                	or	a5,a5,a4
8020689e:	04f40223          	sb	a5,68(s0)
802068a2:	0009079b          	sext.w	a5,s2
802068a6:	c791                	beqz	a5,802068b2 <rt_thread_suspend_to_list+0x144>
802068a8:	8652                	mv	a2,s4
802068aa:	85a2                	mv	a1,s0
802068ac:	854a                	mv	a0,s2
802068ae:	a62fd0ef          	jal	80203b10 <rt_susp_list_enqueue>
802068b2:	8522                	mv	a0,s0
802068b4:	b46ff0ef          	jal	80205bfa <rt_sched_thread_timer_stop>
802068b8:	4532                	lw	a0,12(sp)
802068ba:	d50ff0ef          	jal	80205e0a <rt_sched_unlock>
802068be:	0000b797          	auipc	a5,0xb
802068c2:	cde7a783          	lw	a5,-802(a5) # 8021159c <rt_thread_suspend_hook>
802068c6:	e399                	bnez	a5,802068cc <rt_thread_suspend_to_list+0x15e>
802068c8:	4501                	li	a0,0
802068ca:	b791                	j	8020680e <rt_thread_suspend_to_list+0xa0>
802068cc:	8522                	mv	a0,s0
802068ce:	9782                	jalr	a5
802068d0:	bfe5                	j	802068c8 <rt_thread_suspend_to_list+0x15a>

802068d2 <rt_thread_suspend_with_flag>:
802068d2:	86ae                	mv	a3,a1
802068d4:	4601                	li	a2,0
802068d6:	4581                	li	a1,0
802068d8:	e97ff06f          	j	8020676e <rt_thread_suspend_to_list>

802068dc <_thread_sleep>:
802068dc:	fc01011b          	addiw	sp,sp,-64
802068e0:	f426                	sd	s1,40(sp)
802068e2:	fc06                	sd	ra,56(sp)
802068e4:	f822                	sd	s0,48(sp)
802068e6:	f04a                	sd	s2,32(sp)
802068e8:	ec4e                	sd	s3,24(sp)
802068ea:	c62a                	sw	a0,12(sp)
802068ec:	54a9                	li	s1,-22
802068ee:	12050663          	beqz	a0,80206a1a <_thread_sleep+0x13e>
802068f2:	d43ff0ef          	jal	80206634 <rt_thread_self>
802068f6:	0005079b          	sext.w	a5,a0
802068fa:	843e                	mv	s0,a5
802068fc:	ef89                	bnez	a5,80206916 <_thread_sleep+0x3a>
802068fe:	26b00613          	li	a2,619
80206902:	00003597          	auipc	a1,0x3
80206906:	8e658593          	addi	a1,a1,-1818 # 802091e8 <__FUNCTION__.5>
8020690a:	00002517          	auipc	a0,0x2
8020690e:	c2e50513          	addi	a0,a0,-978 # 80208538 <rt_system_timer_thread_init+0x13e0>
80206912:	e56fe0ef          	jal	80204f68 <rt_assert_handler>
80206916:	8522                	mv	a0,s0
80206918:	97aff0ef          	jal	80205a92 <rt_object_get_type>
8020691c:	4785                	li	a5,1
8020691e:	00f50e63          	beq	a0,a5,8020693a <_thread_sleep+0x5e>
80206922:	26c00613          	li	a2,620
80206926:	00003597          	auipc	a1,0x3
8020692a:	8c258593          	addi	a1,a1,-1854 # 802091e8 <__FUNCTION__.5>
8020692e:	00002517          	auipc	a0,0x2
80206932:	cfa50513          	addi	a0,a0,-774 # 80208628 <rt_system_timer_thread_init+0x14d0>
80206936:	e32fe0ef          	jal	80204f68 <rt_assert_handler>
8020693a:	90fff0ef          	jal	80206248 <rt_critical_level>
8020693e:	c51d                	beqz	a0,8020696c <_thread_sleep+0x90>
80206940:	00003597          	auipc	a1,0x3
80206944:	8a858593          	addi	a1,a1,-1880 # 802091e8 <__FUNCTION__.5>
80206948:	00001517          	auipc	a0,0x1
8020694c:	3e850513          	addi	a0,a0,1000 # 80207d30 <rt_system_timer_thread_init+0xbd8>
80206950:	c64fe0ef          	jal	80204db4 <rt_kprintf>
80206954:	26f00613          	li	a2,623
80206958:	00003597          	auipc	a1,0x3
8020695c:	89058593          	addi	a1,a1,-1904 # 802091e8 <__FUNCTION__.5>
80206960:	00002517          	auipc	a0,0x2
80206964:	d5850513          	addi	a0,a0,-680 # 802086b8 <rt_system_timer_thread_init+0x1560>
80206968:	e00fe0ef          	jal	80204f68 <rt_assert_handler>
8020696c:	cc9ff0ef          	jal	80206634 <rt_thread_self>
80206970:	2501                	sext.w	a0,a0
80206972:	e51d                	bnez	a0,802069a0 <_thread_sleep+0xc4>
80206974:	00003597          	auipc	a1,0x3
80206978:	87458593          	addi	a1,a1,-1932 # 802091e8 <__FUNCTION__.5>
8020697c:	00001517          	auipc	a0,0x1
80206980:	3e450513          	addi	a0,a0,996 # 80207d60 <rt_system_timer_thread_init+0xc08>
80206984:	c30fe0ef          	jal	80204db4 <rt_kprintf>
80206988:	26f00613          	li	a2,623
8020698c:	00003597          	auipc	a1,0x3
80206990:	85c58593          	addi	a1,a1,-1956 # 802091e8 <__FUNCTION__.5>
80206994:	00002517          	auipc	a0,0x2
80206998:	d2450513          	addi	a0,a0,-732 # 802086b8 <rt_system_timer_thread_init+0x1560>
8020699c:	dccfe0ef          	jal	80204f68 <rt_assert_handler>
802069a0:	9f7fd0ef          	jal	80204396 <rt_interrupt_get_nest>
802069a4:	c51d                	beqz	a0,802069d2 <_thread_sleep+0xf6>
802069a6:	00003597          	auipc	a1,0x3
802069aa:	84258593          	addi	a1,a1,-1982 # 802091e8 <__FUNCTION__.5>
802069ae:	00001517          	auipc	a0,0x1
802069b2:	3ea50513          	addi	a0,a0,1002 # 80207d98 <rt_system_timer_thread_init+0xc40>
802069b6:	bfefe0ef          	jal	80204db4 <rt_kprintf>
802069ba:	26f00613          	li	a2,623
802069be:	00003597          	auipc	a1,0x3
802069c2:	82a58593          	addi	a1,a1,-2006 # 802091e8 <__FUNCTION__.5>
802069c6:	00002517          	auipc	a0,0x2
802069ca:	cf250513          	addi	a0,a0,-782 # 802086b8 <rt_system_timer_thread_init+0x1560>
802069ce:	d9afe0ef          	jal	80204f68 <rt_assert_handler>
802069d2:	02042c23          	sw	zero,56(s0)
802069d6:	fecff0ef          	jal	802061c2 <rt_enter_critical>
802069da:	892a                	mv	s2,a0
802069dc:	4581                	li	a1,0
802069de:	8522                	mv	a0,s0
802069e0:	ef3ff0ef          	jal	802068d2 <rt_thread_suspend_with_flag>
802069e4:	84aa                	mv	s1,a0
802069e6:	e139                	bnez	a0,80206a2c <_thread_sleep+0x150>
802069e8:	0584099b          	addiw	s3,s0,88
802069ec:	00c1061b          	addiw	a2,sp,12
802069f0:	4581                	li	a1,0
802069f2:	854e                	mv	a0,s3
802069f4:	4ce000ef          	jal	80206ec2 <rt_timer_control>
802069f8:	854e                	mv	a0,s3
802069fa:	34e000ef          	jal	80206d48 <rt_timer_start>
802069fe:	57f1                	li	a5,-4
80206a00:	dc1c                	sw	a5,56(s0)
80206a02:	e26ff0ef          	jal	80206028 <rt_schedule>
80206a06:	854a                	mv	a0,s2
80206a08:	83dff0ef          	jal	80206244 <rt_exit_critical_safe>
80206a0c:	5c18                	lw	a4,56(s0)
80206a0e:	f8c00793          	li	a5,-116
80206a12:	00f71463          	bne	a4,a5,80206a1a <_thread_sleep+0x13e>
80206a16:	02042c23          	sw	zero,56(s0)
80206a1a:	70e2                	ld	ra,56(sp)
80206a1c:	7442                	ld	s0,48(sp)
80206a1e:	7902                	ld	s2,32(sp)
80206a20:	69e2                	ld	s3,24(sp)
80206a22:	8526                	mv	a0,s1
80206a24:	74a2                	ld	s1,40(sp)
80206a26:	0401011b          	addiw	sp,sp,64
80206a2a:	8082                	ret
80206a2c:	854a                	mv	a0,s2
80206a2e:	817ff0ef          	jal	80206244 <rt_exit_critical_safe>
80206a32:	b7e5                	j	80206a1a <_thread_sleep+0x13e>

80206a34 <rt_thread_delay>:
80206a34:	ea9ff06f          	j	802068dc <_thread_sleep>

80206a38 <rt_thread_resume>:
80206a38:	fd01011b          	addiw	sp,sp,-48
80206a3c:	ec26                	sd	s1,24(sp)
80206a3e:	0005079b          	sext.w	a5,a0
80206a42:	f406                	sd	ra,40(sp)
80206a44:	f022                	sd	s0,32(sp)
80206a46:	84be                	mv	s1,a5
80206a48:	ef89                	bnez	a5,80206a62 <rt_thread_resume+0x2a>
80206a4a:	3f100613          	li	a2,1009
80206a4e:	00002597          	auipc	a1,0x2
80206a52:	74258593          	addi	a1,a1,1858 # 80209190 <__FUNCTION__.0>
80206a56:	00002517          	auipc	a0,0x2
80206a5a:	ae250513          	addi	a0,a0,-1310 # 80208538 <rt_system_timer_thread_init+0x13e0>
80206a5e:	d0afe0ef          	jal	80204f68 <rt_assert_handler>
80206a62:	8526                	mv	a0,s1
80206a64:	82eff0ef          	jal	80205a92 <rt_object_get_type>
80206a68:	4785                	li	a5,1
80206a6a:	00f50e63          	beq	a0,a5,80206a86 <rt_thread_resume+0x4e>
80206a6e:	3f200613          	li	a2,1010
80206a72:	00002597          	auipc	a1,0x2
80206a76:	71e58593          	addi	a1,a1,1822 # 80209190 <__FUNCTION__.0>
80206a7a:	00002517          	auipc	a0,0x2
80206a7e:	bae50513          	addi	a0,a0,-1106 # 80208628 <rt_system_timer_thread_init+0x14d0>
80206a82:	ce6fe0ef          	jal	80204f68 <rt_assert_handler>
80206a86:	00c1051b          	addiw	a0,sp,12
80206a8a:	b5eff0ef          	jal	80205de8 <rt_sched_lock>
80206a8e:	8526                	mv	a0,s1
80206a90:	9d6ff0ef          	jal	80205c66 <rt_sched_thread_ready>
80206a94:	842a                	mv	s0,a0
80206a96:	4532                	lw	a0,12(sp)
80206a98:	e015                	bnez	s0,80206abc <rt_thread_resume+0x84>
80206a9a:	f04ff0ef          	jal	8020619e <rt_sched_unlock_n_resched>
80206a9e:	842a                	mv	s0,a0
80206aa0:	0000b797          	auipc	a5,0xb
80206aa4:	af87a783          	lw	a5,-1288(a5) # 80211598 <rt_thread_resume_hook>
80206aa8:	c399                	beqz	a5,80206aae <rt_thread_resume+0x76>
80206aaa:	8526                	mv	a0,s1
80206aac:	9782                	jalr	a5
80206aae:	70a2                	ld	ra,40(sp)
80206ab0:	8522                	mv	a0,s0
80206ab2:	7402                	ld	s0,32(sp)
80206ab4:	64e2                	ld	s1,24(sp)
80206ab6:	0301011b          	addiw	sp,sp,48
80206aba:	8082                	ret
80206abc:	b4eff0ef          	jal	80205e0a <rt_sched_unlock>
80206ac0:	b7c5                	j	80206aa0 <rt_thread_resume+0x68>

80206ac2 <rt_thread_startup>:
80206ac2:	3141                	addiw	sp,sp,-16
80206ac4:	e022                	sd	s0,0(sp)
80206ac6:	0005079b          	sext.w	a5,a0
80206aca:	e406                	sd	ra,8(sp)
80206acc:	843e                	mv	s0,a5
80206ace:	ef89                	bnez	a5,80206ae8 <rt_thread_startup+0x26>
80206ad0:	18400613          	li	a2,388
80206ad4:	00002597          	auipc	a1,0x2
80206ad8:	74c58593          	addi	a1,a1,1868 # 80209220 <__FUNCTION__.10>
80206adc:	00002517          	auipc	a0,0x2
80206ae0:	a5c50513          	addi	a0,a0,-1444 # 80208538 <rt_system_timer_thread_init+0x13e0>
80206ae4:	c84fe0ef          	jal	80204f68 <rt_assert_handler>
80206ae8:	04444783          	lbu	a5,68(s0)
80206aec:	8b9d                	andi	a5,a5,7
80206aee:	cf89                	beqz	a5,80206b08 <rt_thread_startup+0x46>
80206af0:	18500613          	li	a2,389
80206af4:	00002597          	auipc	a1,0x2
80206af8:	72c58593          	addi	a1,a1,1836 # 80209220 <__FUNCTION__.10>
80206afc:	00002517          	auipc	a0,0x2
80206b00:	c1c50513          	addi	a0,a0,-996 # 80208718 <rt_system_timer_thread_init+0x15c0>
80206b04:	c64fe0ef          	jal	80204f68 <rt_assert_handler>
80206b08:	8522                	mv	a0,s0
80206b0a:	f89fe0ef          	jal	80205a92 <rt_object_get_type>
80206b0e:	4785                	li	a5,1
80206b10:	00f50e63          	beq	a0,a5,80206b2c <rt_thread_startup+0x6a>
80206b14:	18600613          	li	a2,390
80206b18:	00002597          	auipc	a1,0x2
80206b1c:	70858593          	addi	a1,a1,1800 # 80209220 <__FUNCTION__.10>
80206b20:	00002517          	auipc	a0,0x2
80206b24:	b0850513          	addi	a0,a0,-1272 # 80208628 <rt_system_timer_thread_init+0x14d0>
80206b28:	c40fe0ef          	jal	80204f68 <rt_assert_handler>
80206b2c:	8522                	mv	a0,s0
80206b2e:	b1cff0ef          	jal	80205e4a <rt_sched_thread_startup>
80206b32:	8522                	mv	a0,s0
80206b34:	f05ff0ef          	jal	80206a38 <rt_thread_resume>
80206b38:	60a2                	ld	ra,8(sp)
80206b3a:	6402                	ld	s0,0(sp)
80206b3c:	4501                	li	a0,0
80206b3e:	2141                	addiw	sp,sp,16
80206b40:	8082                	ret

80206b42 <_timer_remove>:
80206b42:	5154                	lw	a3,36(a0)
80206b44:	5518                	lw	a4,40(a0)
80206b46:	0245079b          	addiw	a5,a0,36
80206b4a:	c2d8                	sw	a4,4(a3)
80206b4c:	c314                	sw	a3,0(a4)
80206b4e:	d51c                	sw	a5,40(a0)
80206b50:	d15c                	sw	a5,36(a0)
80206b52:	8082                	ret

80206b54 <_timer_start.constprop.0>:
80206b54:	3141                	addiw	sp,sp,-16
80206b56:	e022                	sd	s0,0(sp)
80206b58:	e406                	sd	ra,8(sp)
80206b5a:	842a                	mv	s0,a0
80206b5c:	fe7ff0ef          	jal	80206b42 <_timer_remove>
80206b60:	01944783          	lbu	a5,25(s0)
80206b64:	9bf9                	andi	a5,a5,-2
80206b66:	00f40ca3          	sb	a5,25(s0)
80206b6a:	0000b797          	auipc	a5,0xb
80206b6e:	9fe7a783          	lw	a5,-1538(a5) # 80211568 <rt_object_take_hook>
80206b72:	c399                	beqz	a5,80206b78 <_timer_start.constprop.0+0x24>
80206b74:	8522                	mv	a0,s0
80206b76:	9782                	jalr	a5
80206b78:	8cbfc0ef          	jal	80203442 <rt_tick_get>
80206b7c:	585c                	lw	a5,52(s0)
80206b7e:	80000637          	lui	a2,0x80000
80206b82:	ffe64613          	xori	a2,a2,-2
80206b86:	00f5083b          	addw	a6,a0,a5
80206b8a:	0000b797          	auipc	a5,0xb
80206b8e:	a2e78793          	addi	a5,a5,-1490 # 802115b8 <_timer_list>
80206b92:	43c8                	lw	a0,4(a5)
80206b94:	03042c23          	sw	a6,56(s0)
80206b98:	4394                	lw	a3,0(a5)
80206b9a:	0007871b          	sext.w	a4,a5
80206b9e:	85b6                	mv	a1,a3
80206ba0:	02a71a63          	bne	a4,a0,80206bd4 <_timer_start.constprop.0+0x80>
80206ba4:	0000b617          	auipc	a2,0xb
80206ba8:	9fc60613          	addi	a2,a2,-1540 # 802115a0 <random_nr.3>
80206bac:	4218                	lw	a4,0(a2)
80206bae:	4501                	li	a0,0
80206bb0:	2705                	addiw	a4,a4,1
80206bb2:	c218                	sw	a4,0(a2)
80206bb4:	0244071b          	addiw	a4,s0,36
80206bb8:	c1d8                	sw	a4,4(a1)
80206bba:	d054                	sw	a3,36(s0)
80206bbc:	c398                	sw	a4,0(a5)
80206bbe:	d41c                	sw	a5,40(s0)
80206bc0:	01944783          	lbu	a5,25(s0)
80206bc4:	0017e793          	ori	a5,a5,1
80206bc8:	00f40ca3          	sb	a5,25(s0)
80206bcc:	60a2                	ld	ra,8(sp)
80206bce:	6402                	ld	s0,0(sp)
80206bd0:	2141                	addiw	sp,sp,16
80206bd2:	8082                	ret
80206bd4:	49d8                	lw	a4,20(a1)
80206bd6:	00e80663          	beq	a6,a4,80206be2 <_timer_start.constprop.0+0x8e>
80206bda:	4107073b          	subw	a4,a4,a6
80206bde:	fce673e3          	bgeu	a2,a4,80206ba4 <_timer_start.constprop.0+0x50>
80206be2:	87b6                	mv	a5,a3
80206be4:	bf55                	j	80206b98 <_timer_start.constprop.0+0x44>

80206be6 <rt_timer_init>:
80206be6:	fc01011b          	addiw	sp,sp,-64
80206bea:	f822                	sd	s0,48(sp)
80206bec:	f426                	sd	s1,40(sp)
80206bee:	f04a                	sd	s2,32(sp)
80206bf0:	ec4e                	sd	s3,24(sp)
80206bf2:	e852                	sd	s4,16(sp)
80206bf4:	e456                	sd	s5,8(sp)
80206bf6:	84be                	mv	s1,a5
80206bf8:	fc06                	sd	ra,56(sp)
80206bfa:	0005079b          	sext.w	a5,a0
80206bfe:	842a                	mv	s0,a0
80206c00:	8aae                	mv	s5,a1
80206c02:	89b2                	mv	s3,a2
80206c04:	8a36                	mv	s4,a3
80206c06:	893a                	mv	s2,a4
80206c08:	ef89                	bnez	a5,80206c22 <rt_timer_init+0x3c>
80206c0a:	11300613          	li	a2,275
80206c0e:	00002597          	auipc	a1,0x2
80206c12:	6ca58593          	addi	a1,a1,1738 # 802092d8 <__FUNCTION__.8>
80206c16:	00002517          	auipc	a0,0x2
80206c1a:	b4a50513          	addi	a0,a0,-1206 # 80208760 <rt_system_timer_thread_init+0x1608>
80206c1e:	b4afe0ef          	jal	80204f68 <rt_assert_handler>
80206c22:	0009879b          	sext.w	a5,s3
80206c26:	ef89                	bnez	a5,80206c40 <rt_timer_init+0x5a>
80206c28:	11400613          	li	a2,276
80206c2c:	00002597          	auipc	a1,0x2
80206c30:	6ac58593          	addi	a1,a1,1708 # 802092d8 <__FUNCTION__.8>
80206c34:	00002517          	auipc	a0,0x2
80206c38:	b4450513          	addi	a0,a0,-1212 # 80208778 <rt_system_timer_thread_init+0x1620>
80206c3c:	b2cfe0ef          	jal	80204f68 <rt_assert_handler>
80206c40:	800007b7          	lui	a5,0x80000
80206c44:	ffe7c793          	xori	a5,a5,-2
80206c48:	0127fe63          	bgeu	a5,s2,80206c64 <rt_timer_init+0x7e>
80206c4c:	11500613          	li	a2,277
80206c50:	00002597          	auipc	a1,0x2
80206c54:	68858593          	addi	a1,a1,1672 # 802092d8 <__FUNCTION__.8>
80206c58:	00002517          	auipc	a0,0x2
80206c5c:	b3850513          	addi	a0,a0,-1224 # 80208790 <rt_system_timer_thread_init+0x1638>
80206c60:	b08fe0ef          	jal	80204f68 <rt_assert_handler>
80206c64:	8656                	mv	a2,s5
80206c66:	8522                	mv	a0,s0
80206c68:	45a9                	li	a1,10
80206c6a:	ae5fe0ef          	jal	8020574e <rt_object_init>
80206c6e:	98f9                	andi	s1,s1,-2
80206c70:	00940ca3          	sb	s1,25(s0)
80206c74:	0244079b          	addiw	a5,s0,36
80206c78:	03342623          	sw	s3,44(s0)
80206c7c:	03442823          	sw	s4,48(s0)
80206c80:	03242a23          	sw	s2,52(s0)
80206c84:	70e2                	ld	ra,56(sp)
80206c86:	02042c23          	sw	zero,56(s0)
80206c8a:	d41c                	sw	a5,40(s0)
80206c8c:	d05c                	sw	a5,36(s0)
80206c8e:	7442                	ld	s0,48(sp)
80206c90:	74a2                	ld	s1,40(sp)
80206c92:	7902                	ld	s2,32(sp)
80206c94:	69e2                	ld	s3,24(sp)
80206c96:	6a42                	ld	s4,16(sp)
80206c98:	6aa2                	ld	s5,8(sp)
80206c9a:	0401011b          	addiw	sp,sp,64
80206c9e:	8082                	ret

80206ca0 <rt_timer_detach>:
80206ca0:	3101                	addiw	sp,sp,-32
80206ca2:	e822                	sd	s0,16(sp)
80206ca4:	0005079b          	sext.w	a5,a0
80206ca8:	ec06                	sd	ra,24(sp)
80206caa:	843e                	mv	s0,a5
80206cac:	ef89                	bnez	a5,80206cc6 <rt_timer_detach+0x26>
80206cae:	12b00613          	li	a2,299
80206cb2:	00002597          	auipc	a1,0x2
80206cb6:	61658593          	addi	a1,a1,1558 # 802092c8 <__FUNCTION__.7>
80206cba:	00002517          	auipc	a0,0x2
80206cbe:	aa650513          	addi	a0,a0,-1370 # 80208760 <rt_system_timer_thread_init+0x1608>
80206cc2:	aa6fe0ef          	jal	80204f68 <rt_assert_handler>
80206cc6:	8522                	mv	a0,s0
80206cc8:	dcbfe0ef          	jal	80205a92 <rt_object_get_type>
80206ccc:	47a9                	li	a5,10
80206cce:	00f50e63          	beq	a0,a5,80206cea <rt_timer_detach+0x4a>
80206cd2:	12c00613          	li	a2,300
80206cd6:	00002597          	auipc	a1,0x2
80206cda:	5f258593          	addi	a1,a1,1522 # 802092c8 <__FUNCTION__.7>
80206cde:	00002517          	auipc	a0,0x2
80206ce2:	aca50513          	addi	a0,a0,-1334 # 802087a8 <rt_system_timer_thread_init+0x1650>
80206ce6:	a82fe0ef          	jal	80204f68 <rt_assert_handler>
80206cea:	8522                	mv	a0,s0
80206cec:	d71fe0ef          	jal	80205a5c <rt_object_is_systemobject>
80206cf0:	ed09                	bnez	a0,80206d0a <rt_timer_detach+0x6a>
80206cf2:	12d00613          	li	a2,301
80206cf6:	00002597          	auipc	a1,0x2
80206cfa:	5d258593          	addi	a1,a1,1490 # 802092c8 <__FUNCTION__.7>
80206cfe:	00002517          	auipc	a0,0x2
80206d02:	aea50513          	addi	a0,a0,-1302 # 802087e8 <rt_system_timer_thread_init+0x1690>
80206d06:	a62fe0ef          	jal	80204f68 <rt_assert_handler>
80206d0a:	0000b517          	auipc	a0,0xb
80206d0e:	8a650513          	addi	a0,a0,-1882 # 802115b0 <_htimer_lock>
80206d12:	94bfc0ef          	jal	8020365c <rt_spin_lock_irqsave>
80206d16:	e42a                	sd	a0,8(sp)
80206d18:	8522                	mv	a0,s0
80206d1a:	e29ff0ef          	jal	80206b42 <_timer_remove>
80206d1e:	01944783          	lbu	a5,25(s0)
80206d22:	65a2                	ld	a1,8(sp)
80206d24:	0000b517          	auipc	a0,0xb
80206d28:	88c50513          	addi	a0,a0,-1908 # 802115b0 <_htimer_lock>
80206d2c:	9bf9                	andi	a5,a5,-2
80206d2e:	00f40ca3          	sb	a5,25(s0)
80206d32:	945fc0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80206d36:	8522                	mv	a0,s0
80206d38:	b11fe0ef          	jal	80205848 <rt_object_detach>
80206d3c:	60e2                	ld	ra,24(sp)
80206d3e:	6442                	ld	s0,16(sp)
80206d40:	4501                	li	a0,0
80206d42:	0201011b          	addiw	sp,sp,32
80206d46:	8082                	ret

80206d48 <rt_timer_start>:
80206d48:	fc01011b          	addiw	sp,sp,-64
80206d4c:	f822                	sd	s0,48(sp)
80206d4e:	0005079b          	sext.w	a5,a0
80206d52:	fc06                	sd	ra,56(sp)
80206d54:	f426                	sd	s1,40(sp)
80206d56:	843e                	mv	s0,a5
80206d58:	ef89                	bnez	a5,80206d72 <rt_timer_start+0x2a>
80206d5a:	23c00613          	li	a2,572
80206d5e:	00002597          	auipc	a1,0x2
80206d62:	55a58593          	addi	a1,a1,1370 # 802092b8 <__FUNCTION__.4>
80206d66:	00002517          	auipc	a0,0x2
80206d6a:	9fa50513          	addi	a0,a0,-1542 # 80208760 <rt_system_timer_thread_init+0x1608>
80206d6e:	9fafe0ef          	jal	80204f68 <rt_assert_handler>
80206d72:	8522                	mv	a0,s0
80206d74:	d1ffe0ef          	jal	80205a92 <rt_object_get_type>
80206d78:	47a9                	li	a5,10
80206d7a:	00f50e63          	beq	a0,a5,80206d96 <rt_timer_start+0x4e>
80206d7e:	23d00613          	li	a2,573
80206d82:	00002597          	auipc	a1,0x2
80206d86:	53658593          	addi	a1,a1,1334 # 802092b8 <__FUNCTION__.4>
80206d8a:	00002517          	auipc	a0,0x2
80206d8e:	a1e50513          	addi	a0,a0,-1506 # 802087a8 <rt_system_timer_thread_init+0x1650>
80206d92:	9d6fe0ef          	jal	80204f68 <rt_assert_handler>
80206d96:	01944783          	lbu	a5,25(s0)
80206d9a:	4481                	li	s1,0
80206d9c:	8ba1                	andi	a5,a5,8
80206d9e:	cf8d                	beqz	a5,80206dd8 <rt_timer_start+0x90>
80206da0:	01c1051b          	addiw	a0,sp,28
80206da4:	844ff0ef          	jal	80205de8 <rt_sched_lock>
80206da8:	fa84049b          	addiw	s1,s0,-88
80206dac:	8526                	mv	a0,s1
80206dae:	ce5fe0ef          	jal	80205a92 <rt_object_get_type>
80206db2:	4785                	li	a5,1
80206db4:	00f50e63          	beq	a0,a5,80206dd0 <rt_timer_start+0x88>
80206db8:	25800613          	li	a2,600
80206dbc:	00002597          	auipc	a1,0x2
80206dc0:	4fc58593          	addi	a1,a1,1276 # 802092b8 <__FUNCTION__.4>
80206dc4:	00002517          	auipc	a0,0x2
80206dc8:	a5450513          	addi	a0,a0,-1452 # 80208818 <rt_system_timer_thread_init+0x16c0>
80206dcc:	99cfe0ef          	jal	80204f68 <rt_assert_handler>
80206dd0:	8526                	mv	a0,s1
80206dd2:	e19fe0ef          	jal	80205bea <rt_sched_thread_timer_start>
80206dd6:	4485                	li	s1,1
80206dd8:	0000a517          	auipc	a0,0xa
80206ddc:	7d850513          	addi	a0,a0,2008 # 802115b0 <_htimer_lock>
80206de0:	87dfc0ef          	jal	8020365c <rt_spin_lock_irqsave>
80206de4:	e42a                	sd	a0,8(sp)
80206de6:	8522                	mv	a0,s0
80206de8:	d6dff0ef          	jal	80206b54 <_timer_start.constprop.0>
80206dec:	65a2                	ld	a1,8(sp)
80206dee:	842a                	mv	s0,a0
80206df0:	0000a517          	auipc	a0,0xa
80206df4:	7c050513          	addi	a0,a0,1984 # 802115b0 <_htimer_lock>
80206df8:	87ffc0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80206dfc:	c481                	beqz	s1,80206e04 <rt_timer_start+0xbc>
80206dfe:	4572                	lw	a0,28(sp)
80206e00:	80aff0ef          	jal	80205e0a <rt_sched_unlock>
80206e04:	70e2                	ld	ra,56(sp)
80206e06:	8522                	mv	a0,s0
80206e08:	7442                	ld	s0,48(sp)
80206e0a:	74a2                	ld	s1,40(sp)
80206e0c:	0401011b          	addiw	sp,sp,64
80206e10:	8082                	ret

80206e12 <rt_timer_stop>:
80206e12:	3101                	addiw	sp,sp,-32
80206e14:	e822                	sd	s0,16(sp)
80206e16:	0005079b          	sext.w	a5,a0
80206e1a:	ec06                	sd	ra,24(sp)
80206e1c:	843e                	mv	s0,a5
80206e1e:	ef89                	bnez	a5,80206e38 <rt_timer_stop+0x26>
80206e20:	27800613          	li	a2,632
80206e24:	00002597          	auipc	a1,0x2
80206e28:	48458593          	addi	a1,a1,1156 # 802092a8 <__FUNCTION__.2>
80206e2c:	00002517          	auipc	a0,0x2
80206e30:	93450513          	addi	a0,a0,-1740 # 80208760 <rt_system_timer_thread_init+0x1608>
80206e34:	934fe0ef          	jal	80204f68 <rt_assert_handler>
80206e38:	8522                	mv	a0,s0
80206e3a:	c59fe0ef          	jal	80205a92 <rt_object_get_type>
80206e3e:	47a9                	li	a5,10
80206e40:	00f50e63          	beq	a0,a5,80206e5c <rt_timer_stop+0x4a>
80206e44:	27900613          	li	a2,633
80206e48:	00002597          	auipc	a1,0x2
80206e4c:	46058593          	addi	a1,a1,1120 # 802092a8 <__FUNCTION__.2>
80206e50:	00002517          	auipc	a0,0x2
80206e54:	95850513          	addi	a0,a0,-1704 # 802087a8 <rt_system_timer_thread_init+0x1650>
80206e58:	910fe0ef          	jal	80204f68 <rt_assert_handler>
80206e5c:	0000a517          	auipc	a0,0xa
80206e60:	75450513          	addi	a0,a0,1876 # 802115b0 <_htimer_lock>
80206e64:	ff8fc0ef          	jal	8020365c <rt_spin_lock_irqsave>
80206e68:	01944783          	lbu	a5,25(s0)
80206e6c:	85aa                	mv	a1,a0
80206e6e:	8b85                	andi	a5,a5,1
80206e70:	ef91                	bnez	a5,80206e8c <rt_timer_stop+0x7a>
80206e72:	0000a517          	auipc	a0,0xa
80206e76:	73e50513          	addi	a0,a0,1854 # 802115b0 <_htimer_lock>
80206e7a:	ffcfc0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80206e7e:	f0100513          	li	a0,-255
80206e82:	60e2                	ld	ra,24(sp)
80206e84:	6442                	ld	s0,16(sp)
80206e86:	0201011b          	addiw	sp,sp,32
80206e8a:	8082                	ret
80206e8c:	0000a797          	auipc	a5,0xa
80206e90:	6d87a783          	lw	a5,1752(a5) # 80211564 <rt_object_put_hook>
80206e94:	c789                	beqz	a5,80206e9e <rt_timer_stop+0x8c>
80206e96:	e42a                	sd	a0,8(sp)
80206e98:	8522                	mv	a0,s0
80206e9a:	9782                	jalr	a5
80206e9c:	65a2                	ld	a1,8(sp)
80206e9e:	8522                	mv	a0,s0
80206ea0:	e42e                	sd	a1,8(sp)
80206ea2:	ca1ff0ef          	jal	80206b42 <_timer_remove>
80206ea6:	01944783          	lbu	a5,25(s0)
80206eaa:	65a2                	ld	a1,8(sp)
80206eac:	0000a517          	auipc	a0,0xa
80206eb0:	70450513          	addi	a0,a0,1796 # 802115b0 <_htimer_lock>
80206eb4:	9bf9                	andi	a5,a5,-2
80206eb6:	00f40ca3          	sb	a5,25(s0)
80206eba:	fbcfc0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80206ebe:	4501                	li	a0,0
80206ec0:	b7c9                	j	80206e82 <rt_timer_stop+0x70>

80206ec2 <rt_timer_control>:
80206ec2:	fd01011b          	addiw	sp,sp,-48
80206ec6:	f022                	sd	s0,32(sp)
80206ec8:	ec26                	sd	s1,24(sp)
80206eca:	e84a                	sd	s2,16(sp)
80206ecc:	0005079b          	sext.w	a5,a0
80206ed0:	f406                	sd	ra,40(sp)
80206ed2:	e44e                	sd	s3,8(sp)
80206ed4:	843e                	mv	s0,a5
80206ed6:	892e                	mv	s2,a1
80206ed8:	84b2                	mv	s1,a2
80206eda:	ef89                	bnez	a5,80206ef4 <rt_timer_control+0x32>
80206edc:	29f00613          	li	a2,671
80206ee0:	00002597          	auipc	a1,0x2
80206ee4:	3b058593          	addi	a1,a1,944 # 80209290 <__FUNCTION__.1>
80206ee8:	00002517          	auipc	a0,0x2
80206eec:	87850513          	addi	a0,a0,-1928 # 80208760 <rt_system_timer_thread_init+0x1608>
80206ef0:	878fe0ef          	jal	80204f68 <rt_assert_handler>
80206ef4:	8522                	mv	a0,s0
80206ef6:	b9dfe0ef          	jal	80205a92 <rt_object_get_type>
80206efa:	47a9                	li	a5,10
80206efc:	00f50e63          	beq	a0,a5,80206f18 <rt_timer_control+0x56>
80206f00:	2a000613          	li	a2,672
80206f04:	00002597          	auipc	a1,0x2
80206f08:	38c58593          	addi	a1,a1,908 # 80209290 <__FUNCTION__.1>
80206f0c:	00002517          	auipc	a0,0x2
80206f10:	89c50513          	addi	a0,a0,-1892 # 802087a8 <rt_system_timer_thread_init+0x1650>
80206f14:	854fe0ef          	jal	80204f68 <rt_assert_handler>
80206f18:	0000a517          	auipc	a0,0xa
80206f1c:	69850513          	addi	a0,a0,1688 # 802115b0 <_htimer_lock>
80206f20:	f3cfc0ef          	jal	8020365c <rt_spin_lock_irqsave>
80206f24:	47a5                	li	a5,9
80206f26:	89aa                	mv	s3,a0
80206f28:	0727e263          	bltu	a5,s2,80206f8c <rt_timer_control+0xca>
80206f2c:	00002797          	auipc	a5,0x2
80206f30:	32c78793          	addi	a5,a5,812 # 80209258 <__FUNCTION__.12+0x10>
80206f34:	0029191b          	slliw	s2,s2,0x2
80206f38:	00f9093b          	addw	s2,s2,a5
80206f3c:	00092703          	lw	a4,0(s2)
80206f40:	9fb9                	addw	a5,a5,a4
80206f42:	8782                	jr	a5
80206f44:	585c                	lw	a5,52(s0)
80206f46:	c09c                	sw	a5,0(s1)
80206f48:	a091                	j	80206f8c <rt_timer_control+0xca>
80206f4a:	4098                	lw	a4,0(s1)
80206f4c:	800007b7          	lui	a5,0x80000
80206f50:	ffe7c793          	xori	a5,a5,-2
80206f54:	00e7fe63          	bgeu	a5,a4,80206f70 <rt_timer_control+0xae>
80206f58:	2ac00613          	li	a2,684
80206f5c:	00002597          	auipc	a1,0x2
80206f60:	33458593          	addi	a1,a1,820 # 80209290 <__FUNCTION__.1>
80206f64:	00002517          	auipc	a0,0x2
80206f68:	8f450513          	addi	a0,a0,-1804 # 80208858 <rt_system_timer_thread_init+0x1700>
80206f6c:	ffdfd0ef          	jal	80204f68 <rt_assert_handler>
80206f70:	01944783          	lbu	a5,25(s0)
80206f74:	8b85                	andi	a5,a5,1
80206f76:	cb89                	beqz	a5,80206f88 <rt_timer_control+0xc6>
80206f78:	8522                	mv	a0,s0
80206f7a:	bc9ff0ef          	jal	80206b42 <_timer_remove>
80206f7e:	01944783          	lbu	a5,25(s0)
80206f82:	9bf9                	andi	a5,a5,-2
80206f84:	00f40ca3          	sb	a5,25(s0)
80206f88:	409c                	lw	a5,0(s1)
80206f8a:	d85c                	sw	a5,52(s0)
80206f8c:	85ce                	mv	a1,s3
80206f8e:	0000a517          	auipc	a0,0xa
80206f92:	62250513          	addi	a0,a0,1570 # 802115b0 <_htimer_lock>
80206f96:	ee0fc0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
80206f9a:	70a2                	ld	ra,40(sp)
80206f9c:	7402                	ld	s0,32(sp)
80206f9e:	64e2                	ld	s1,24(sp)
80206fa0:	6942                	ld	s2,16(sp)
80206fa2:	69a2                	ld	s3,8(sp)
80206fa4:	4501                	li	a0,0
80206fa6:	0301011b          	addiw	sp,sp,48
80206faa:	8082                	ret
80206fac:	01944783          	lbu	a5,25(s0)
80206fb0:	9bf5                	andi	a5,a5,-3
80206fb2:	00f40ca3          	sb	a5,25(s0)
80206fb6:	bfd9                	j	80206f8c <rt_timer_control+0xca>
80206fb8:	01944783          	lbu	a5,25(s0)
80206fbc:	0027e793          	ori	a5,a5,2
80206fc0:	bfcd                	j	80206fb2 <rt_timer_control+0xf0>
80206fc2:	01944783          	lbu	a5,25(s0)
80206fc6:	8b85                	andi	a5,a5,1
80206fc8:	c399                	beqz	a5,80206fce <rt_timer_control+0x10c>
80206fca:	4785                	li	a5,1
80206fcc:	bfad                	j	80206f46 <rt_timer_control+0x84>
80206fce:	0004a023          	sw	zero,0(s1)
80206fd2:	bf6d                	j	80206f8c <rt_timer_control+0xca>
80206fd4:	5c1c                	lw	a5,56(s0)
80206fd6:	bf85                	j	80206f46 <rt_timer_control+0x84>
80206fd8:	545c                	lw	a5,44(s0)
80206fda:	b7b5                	j	80206f46 <rt_timer_control+0x84>
80206fdc:	d444                	sw	s1,44(s0)
80206fde:	b77d                	j	80206f8c <rt_timer_control+0xca>
80206fe0:	581c                	lw	a5,48(s0)
80206fe2:	b795                	j	80206f46 <rt_timer_control+0x84>
80206fe4:	d804                	sw	s1,48(s0)
80206fe6:	b75d                	j	80206f8c <rt_timer_control+0xca>

80206fe8 <rt_timer_check>:
80206fe8:	f701011b          	addiw	sp,sp,-144
80206fec:	e506                	sd	ra,136(sp)
80206fee:	e122                	sd	s0,128(sp)
80206ff0:	fca6                	sd	s1,120(sp)
80206ff2:	f8ca                	sd	s2,112(sp)
80206ff4:	f4ce                	sd	s3,104(sp)
80206ff6:	f0d2                	sd	s4,96(sp)
80206ff8:	ecd6                	sd	s5,88(sp)
80206ffa:	e8da                	sd	s6,80(sp)
80206ffc:	e4de                	sd	s7,72(sp)
80206ffe:	e0e2                	sd	s8,64(sp)
80207000:	fc66                	sd	s9,56(sp)
80207002:	f86a                	sd	s10,48(sp)
80207004:	f46e                	sd	s11,40(sp)
80207006:	b90fd0ef          	jal	80204396 <rt_interrupt_get_nest>
8020700a:	ed09                	bnez	a0,80207024 <rt_timer_check+0x3c>
8020700c:	2ee00613          	li	a2,750
80207010:	00002597          	auipc	a1,0x2
80207014:	27058593          	addi	a1,a1,624 # 80209280 <__FUNCTION__.0>
80207018:	00001517          	auipc	a0,0x1
8020701c:	f9050513          	addi	a0,a0,-112 # 80207fa8 <rt_system_timer_thread_init+0xe50>
80207020:	f49fd0ef          	jal	80204f68 <rt_assert_handler>
80207024:	0000a517          	auipc	a0,0xa
80207028:	58c50513          	addi	a0,a0,1420 # 802115b0 <_htimer_lock>
8020702c:	01810d1b          	addiw	s10,sp,24
80207030:	e2cfc0ef          	jal	8020365c <rt_spin_lock_irqsave>
80207034:	0000aa97          	auipc	s5,0xa
80207038:	584a8a93          	addi	s5,s5,1412 # 802115b8 <_timer_list>
8020703c:	80000a37          	lui	s4,0x80000
80207040:	842a                	mv	s0,a0
80207042:	896a                	mv	s2,s10
80207044:	bfefc0ef          	jal	80203442 <rt_tick_get>
80207048:	000a8b9b          	sext.w	s7,s5
8020704c:	ce6a                	sw	s10,28(sp)
8020704e:	cc6a                	sw	s10,24(sp)
80207050:	ffea4a13          	xori	s4,s4,-2
80207054:	0000ac17          	auipc	s8,0xa
80207058:	554c0c13          	addi	s8,s8,1364 # 802115a8 <rt_timer_enter_hook>
8020705c:	0000ab17          	auipc	s6,0xa
80207060:	554b0b13          	addi	s6,s6,1364 # 802115b0 <_htimer_lock>
80207064:	0000ac97          	auipc	s9,0xa
80207068:	540c8c93          	addi	s9,s9,1344 # 802115a4 <rt_timer_exit_hook>
8020706c:	4d8d                	li	s11,3
8020706e:	000aa483          	lw	s1,0(s5)
80207072:	89a6                	mv	s3,s1
80207074:	01748c63          	beq	s1,s7,8020708c <rt_timer_check+0xa4>
80207078:	fdc4879b          	addiw	a5,s1,-36
8020707c:	c63e                	sw	a5,12(sp)
8020707e:	bc4fc0ef          	jal	80203442 <rt_tick_get>
80207082:	0149a703          	lw	a4,20(s3)
80207086:	9d19                	subw	a0,a0,a4
80207088:	02aa7963          	bgeu	s4,a0,802070ba <rt_timer_check+0xd2>
8020708c:	85a2                	mv	a1,s0
8020708e:	0000a517          	auipc	a0,0xa
80207092:	52250513          	addi	a0,a0,1314 # 802115b0 <_htimer_lock>
80207096:	de0fc0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
8020709a:	60aa                	ld	ra,136(sp)
8020709c:	640a                	ld	s0,128(sp)
8020709e:	74e6                	ld	s1,120(sp)
802070a0:	7946                	ld	s2,112(sp)
802070a2:	79a6                	ld	s3,104(sp)
802070a4:	7a06                	ld	s4,96(sp)
802070a6:	6ae6                	ld	s5,88(sp)
802070a8:	6b46                	ld	s6,80(sp)
802070aa:	6ba6                	ld	s7,72(sp)
802070ac:	6c06                	ld	s8,64(sp)
802070ae:	7ce2                	ld	s9,56(sp)
802070b0:	7d42                	ld	s10,48(sp)
802070b2:	7da2                	ld	s11,40(sp)
802070b4:	0901011b          	addiw	sp,sp,144
802070b8:	8082                	ret
802070ba:	000c2703          	lw	a4,0(s8)
802070be:	c319                	beqz	a4,802070c4 <rt_timer_check+0xdc>
802070c0:	4532                	lw	a0,12(sp)
802070c2:	9702                	jalr	a4
802070c4:	4532                	lw	a0,12(sp)
802070c6:	a7dff0ef          	jal	80206b42 <_timer_remove>
802070ca:	ff59c703          	lbu	a4,-11(s3)
802070ce:	00277693          	andi	a3,a4,2
802070d2:	e681                	bnez	a3,802070da <rt_timer_check+0xf2>
802070d4:	9b79                	andi	a4,a4,-2
802070d6:	fee98aa3          	sb	a4,-11(s3)
802070da:	4762                	lw	a4,24(sp)
802070dc:	85a2                	mv	a1,s0
802070de:	855a                	mv	a0,s6
802070e0:	c344                	sw	s1,4(a4)
802070e2:	00e9a023          	sw	a4,0(s3)
802070e6:	0129a223          	sw	s2,4(s3)
802070ea:	cc26                	sw	s1,24(sp)
802070ec:	d8afc0ef          	jal	80203676 <rt_spin_unlock_irqrestore>
802070f0:	0089a703          	lw	a4,8(s3)
802070f4:	00c9a503          	lw	a0,12(s3)
802070f8:	9702                	jalr	a4
802070fa:	000ca703          	lw	a4,0(s9)
802070fe:	c319                	beqz	a4,80207104 <rt_timer_check+0x11c>
80207100:	4532                	lw	a0,12(sp)
80207102:	9702                	jalr	a4
80207104:	855a                	mv	a0,s6
80207106:	d56fc0ef          	jal	8020365c <rt_spin_lock_irqsave>
8020710a:	4762                	lw	a4,24(sp)
8020710c:	842a                	mv	s0,a0
8020710e:	f7a700e3          	beq	a4,s10,8020706e <rt_timer_check+0x86>
80207112:	0009a683          	lw	a3,0(s3)
80207116:	0049a703          	lw	a4,4(s3)
8020711a:	c2d8                	sw	a4,4(a3)
8020711c:	c314                	sw	a3,0(a4)
8020711e:	ff59c703          	lbu	a4,-11(s3)
80207122:	0099a223          	sw	s1,4(s3)
80207126:	0099a023          	sw	s1,0(s3)
8020712a:	00377693          	andi	a3,a4,3
8020712e:	f5b690e3          	bne	a3,s11,8020706e <rt_timer_check+0x86>
80207132:	4532                	lw	a0,12(sp)
80207134:	9b79                	andi	a4,a4,-2
80207136:	fee98aa3          	sb	a4,-11(s3)
8020713a:	a1bff0ef          	jal	80206b54 <_timer_start.constprop.0>
8020713e:	bf05                	j	8020706e <rt_timer_check+0x86>

80207140 <rt_system_timer_init>:
80207140:	0000a797          	auipc	a5,0xa
80207144:	47878793          	addi	a5,a5,1144 # 802115b8 <_timer_list>
80207148:	0000a517          	auipc	a0,0xa
8020714c:	46850513          	addi	a0,a0,1128 # 802115b0 <_htimer_lock>
80207150:	c3dc                	sw	a5,4(a5)
80207152:	c39c                	sw	a5,0(a5)
80207154:	cfcfc06f          	j	80203650 <rt_spin_lock_init>

80207158 <rt_system_timer_thread_init>:
80207158:	8082                	ret
8020715a:	0000                	unimp
8020715c:	0000                	unimp
8020715e:	0000                	unimp
80207160:	736e6f63          	bltu	t3,s6,8020789e <rt_system_timer_thread_init+0x746>
80207164:	00656c6f          	jal	s8,8025d16a <__bss_end+0x4725a>
80207168:	00005b1b          	srliw	s6,zero,0x0
8020716c:	0000                	unimp
8020716e:	0000                	unimp
80207170:	6c75                	lui	s8,0x1d
80207172:	0000676f          	jal	a4,8020d172 <__global_pointer$+0x34ea>
80207176:	0000                	unimp
80207178:	7364                	ld	s1,224(a4)
8020717a:	0074                	addi	a3,sp,12
8020717c:	0000                	unimp
8020717e:	0000                	unimp
80207180:	00637273          	csrrci	tp,0x6,6
80207184:	0000                	unimp
80207186:	0000                	unimp
80207188:	2f4e                	fld	ft10,208(sp)
8020718a:	0041                	c.nop	16
8020718c:	0000                	unimp
8020718e:	0000                	unimp
80207190:	6f6c                	ld	a1,216(a4)
80207192:	75625f67          	.insn	4, 0x75625f67
80207196:	0066                	c.slli	zero,0x19
80207198:	656c                	ld	a1,200(a0)
8020719a:	6576                	ld	a0,344(sp)
8020719c:	206c                	fld	fa1,192(s0)
8020719e:	3d3c                	fld	fa5,120(a0)
802071a0:	4c20                	lw	s0,88(s0)
802071a2:	4c5f474f          	.insn	4, 0x4c5f474f
802071a6:	4c56                	lw	s8,84(sp)
802071a8:	445f 4742 0000      	.insn	6, 0x4742445f
802071ae:	0000                	unimp
802071b0:	6174                	ld	a3,192(a0)
802071b2:	00000067          	jr	zero # 0 <__STACKSIZE__-0x4000>
802071b6:	0000                	unimp
802071b8:	0020                	addi	s0,sp,8
802071ba:	0000                	unimp
802071bc:	0000                	unimp
802071be:	0000                	unimp
802071c0:	5349                	li	t1,-14
802071c2:	0052                	c.slli	zero,0x14
802071c4:	0000                	unimp
802071c6:	0000                	unimp
802071c8:	203a                	fld	ft0,392(sp)
802071ca:	0000                	unimp
802071cc:	0000                	unimp
802071ce:	0000                	unimp
802071d0:	0a0d                	addi	s4,s4,3 # 80000003 <__bss_end+0xffdea0f3>
802071d2:	0000                	unimp
802071d4:	0000                	unimp
802071d6:	0000                	unimp
802071d8:	6d305b1b          	.insn	4, 0x6d305b1b
802071dc:	0000                	unimp
802071de:	0000                	unimp
802071e0:	6f66                	ld	t5,88(sp)
802071e2:	6d72                	ld	s10,280(sp)
802071e4:	7461                	lui	s0,0xffff8
802071e6:	0000                	unimp
802071e8:	7562                	ld	a0,56(sp)
802071ea:	0066                	c.slli	zero,0x19
802071ec:	0000                	unimp
802071ee:	0000                	unimp
802071f0:	3025                	.insn	2, 0x3025
802071f2:	5834                	lw	a3,112(s0)
802071f4:	252d                	addiw	a0,a0,11
802071f6:	3430                	fld	fa2,104(s0)
802071f8:	3a58                	fld	fa4,176(a2)
802071fa:	0020                	addi	s0,sp,8
802071fc:	0000                	unimp
802071fe:	0000                	unimp
80207200:	3025                	.insn	2, 0x3025
80207202:	5832                	lw	a6,44(sp)
80207204:	0020                	addi	s0,sp,8
80207206:	0000                	unimp
80207208:	2020                	fld	fs0,64(s0)
8020720a:	0020                	addi	s0,sp,8
8020720c:	0000                	unimp
8020720e:	0000                	unimp
80207210:	2020                	fld	fs0,64(s0)
80207212:	0000                	unimp
80207214:	0000                	unimp
80207216:	0000                	unimp
80207218:	6325                	lui	t1,0x9
8020721a:	0000                	unimp
8020721c:	0000                	unimp
8020721e:	0000                	unimp
80207220:	6628                	ld	a0,72(a2)
80207222:	616d726f          	jal	tp,802de838 <__bss_end+0xc8928>
80207226:	2074                	fld	fa3,192(s0)
80207228:	2626                	fld	fa2,72(sp)
8020722a:	2120                	fld	fs0,64(a0)
8020722c:	6568                	ld	a0,200(a0)
8020722e:	5f78                	lw	a4,124(a4)
80207230:	7562                	ld	a0,56(sp)
80207232:	2966                	fld	fs2,88(sp)
80207234:	7c20                	ld	s0,120(s0)
80207236:	207c                	fld	fa5,192(s0)
80207238:	2128                	fld	fa0,64(a0)
8020723a:	6f66                	ld	t5,88(sp)
8020723c:	6d72                	ld	s10,280(sp)
8020723e:	7461                	lui	s0,0xffff8
80207240:	2620                	fld	fs0,72(a2)
80207242:	2026                	fld	ft0,72(sp)
80207244:	6568                	ld	a0,200(a0)
80207246:	5f78                	lw	a4,124(a4)
80207248:	7562                	ld	a0,56(sp)
8020724a:	2966                	fld	fs2,88(sp)
8020724c:	0000                	unimp
8020724e:	0000                	unimp
80207250:	7245                	lui	tp,0xffff1
80207252:	6f72                	ld	t5,280(sp)
80207254:	3a72                	fld	fs4,312(sp)
80207256:	4320                	lw	s0,64(a4)
80207258:	7275                	lui	tp,0xffffd
8020725a:	6572                	ld	a0,280(sp)
8020725c:	746e                	ld	s0,248(sp)
8020725e:	6d20                	ld	s0,88(a0)
80207260:	2065646f          	jal	s0,8025d466 <__bss_end+0x47556>
80207264:	6f6e                	ld	t5,216(sp)
80207266:	2074                	fld	fa3,192(s0)
80207268:	70707573          	csrrci	a0,0x707,0
8020726c:	6574726f          	jal	tp,8024f0c2 <__bss_end+0x391b2>
80207270:	2064                	fld	fs1,192(s0)
80207272:	7572                	ld	a0,312(sp)
80207274:	206e                	fld	ft0,216(sp)
80207276:	6e69                	lui	t3,0x1a
80207278:	4920                	lw	s0,80(a0)
8020727a:	202e5253          	.insn	4, 0x202e5253
8020727e:	6c50                	ld	a2,152(s0)
80207280:	6165                	addi	sp,sp,112
80207282:	65206573          	csrrsi	a0,0x652,0
80207286:	616e                	ld	sp,216(sp)
80207288:	6c62                	ld	s8,24(sp)
8020728a:	2065                	.insn	2, 0x2065
8020728c:	4c55                	li	s8,21
8020728e:	555f474f          	.insn	4, 0x555f474f
80207292:	474e4953          	.insn	4, 0x474e4953
80207296:	495f 5253 4c5f      	.insn	6, 0x4c5f5253495f
8020729c:	0a2e474f          	fnmadd.d	fa4,ft8,ft2,ft1,rmm
	...
802072a8:	6c75                	lui	s8,0x1d
802072aa:	692e676f          	jal	a4,802ed93c <__bss_end+0xd7a2c>
802072ae:	696e                	ld	s2,216(sp)
802072b0:	5f74                	lw	a3,124(a4)
802072b2:	00006b6f          	jal	s6,8020d2b2 <__global_pointer$+0x362a>
802072b6:	0000                	unimp
802072b8:	6162                	ld	sp,24(sp)
802072ba:	6e656b63          	bltu	a0,t1,802079b0 <rt_system_timer_thread_init+0x858>
802072be:	0064                	addi	s1,sp,12
802072c0:	616e                	ld	sp,216(sp)
802072c2:	656d                	lui	a0,0x1b
802072c4:	0000                	unimp
802072c6:	0000                	unimp
802072c8:	6162                	ld	sp,24(sp)
802072ca:	6e656b63          	bltu	a0,t1,802079c0 <rt_system_timer_thread_init+0x868>
802072ce:	2d64                	fld	fs1,216(a0)
802072d0:	6f3e                	ld	t5,456(sp)
802072d2:	7475                	lui	s0,0xffffd
802072d4:	7570                	ld	a2,232(a0)
802072d6:	0074                	addi	a3,sp,12
802072d8:	006d3533          	sltu	a0,s10,t1
802072dc:	0000                	unimp
802072de:	0000                	unimp
802072e0:	006d3133          	sltu	sp,s10,t1
802072e4:	0000                	unimp
802072e6:	0000                	unimp
802072e8:	006d3333          	sltu	t1,s10,t1
802072ec:	0000                	unimp
802072ee:	0000                	unimp
802072f0:	006d3233          	sltu	tp,s10,t1
802072f4:	0000                	unimp
802072f6:	0000                	unimp
802072f8:	2f41                	addiw	t5,t5,16
802072fa:	0000                	unimp
802072fc:	0000                	unimp
802072fe:	0000                	unimp
80207300:	2f45                	addiw	t5,t5,17
80207302:	0000                	unimp
80207304:	0000                	unimp
80207306:	0000                	unimp
80207308:	00002f57          	.insn	4, 0x2f57
8020730c:	0000                	unimp
8020730e:	0000                	unimp
80207310:	2f49                	addiw	t5,t5,18
80207312:	0000                	unimp
80207314:	0000                	unimp
80207316:	0000                	unimp
80207318:	2f44                	fld	fs1,152(a4)
8020731a:	0000                	unimp
8020731c:	0000                	unimp
8020731e:	0000                	unimp
80207320:	74756873          	csrrsi	a6,0x747,10
80207324:	6f64                	ld	s1,216(a4)
80207326:	2e2e6e77          	.insn	4, 0x2e2e6e77
8020732a:	0a2e                	slli	s4,s4,0xb
8020732c:	0000                	unimp
8020732e:	0000                	unimp
80207330:	4e55                	li	t3,21
80207332:	682d                	lui	a6,0xb
80207334:	6e61                	lui	t3,0x18
80207336:	6c64                	ld	s1,216(s0)
80207338:	6465                	lui	s0,0x19
8020733a:	6920                	ld	s0,80(a0)
8020733c:	746e                	ld	s0,248(sp)
8020733e:	7265                	lui	tp,0xffff9
80207340:	7572                	ld	a0,312(sp)
80207342:	7470                	ld	a2,232(s0)
80207344:	2520                	fld	fs0,72(a0)
80207346:	2064                	fld	fs1,192(s0)
80207348:	7563636f          	jal	t1,8023da9e <__bss_end+0x27b8e>
8020734c:	7272                	ld	tp,312(sp)
8020734e:	6465                	lui	s0,0x19
80207350:	2121                	addiw	sp,sp,8
80207352:	0a21                	addi	s4,s4,8
80207354:	0000                	unimp
80207356:	0000                	unimp
80207358:	6572                	ld	a0,280(sp)
8020735a:	2e74                	fld	fa3,216(a2)
8020735c:	7265                	lui	tp,0xffff9
8020735e:	6f72                	ld	t5,280(sp)
80207360:	2072                	fld	ft0,280(sp)
80207362:	3d3d                	addiw	s10,s10,-17
80207364:	5320                	lw	s0,96(a4)
80207366:	4942                	lw	s2,16(sp)
80207368:	535f 4355 4543      	.insn	6, 0x45434355535f
8020736e:	00005353          	fadd.s	ft6,ft0,ft0,unknown
80207372:	0000                	unimp
80207374:	0000                	unimp
80207376:	0000                	unimp
80207378:	65707553          	.insn	4, 0x65707553
8020737c:	7672                	ld	a2,312(sp)
8020737e:	7369                	lui	t1,0xffffa
80207380:	4920726f          	jal	tp,8020e812 <__stack_cpu0+0x1352>
80207384:	746e                	ld	s0,248(sp)
80207386:	7265                	lui	tp,0xffff9
80207388:	7572                	ld	a0,312(sp)
8020738a:	7470                	ld	a2,232(s0)
8020738c:	4520                	lw	s0,72(a0)
8020738e:	616e                	ld	sp,216(sp)
80207390:	6c62                	ld	s8,24(sp)
80207392:	6465                	lui	s0,0x19
80207394:	0000                	unimp
80207396:	0000                	unimp
80207398:	65707553          	.insn	4, 0x65707553
8020739c:	7672                	ld	a2,312(sp)
8020739e:	7369                	lui	t1,0xffffa
802073a0:	4920726f          	jal	tp,8020e832 <__stack_cpu0+0x1372>
802073a4:	746e                	ld	s0,248(sp)
802073a6:	7265                	lui	tp,0xffff9
802073a8:	7572                	ld	a0,312(sp)
802073aa:	7470                	ld	a2,232(s0)
802073ac:	4420                	lw	s0,72(s0)
802073ae:	7369                	lui	t1,0xffffa
802073b0:	6261                	lui	tp,0x18
802073b2:	656c                	ld	a1,200(a0)
802073b4:	0064                	addi	s1,sp,12
802073b6:	0000                	unimp
802073b8:	614c                	ld	a1,128(a0)
802073ba:	54207473          	csrrci	s0,0x542,0
802073be:	6d69                	lui	s10,0x1a
802073c0:	2065                	.insn	2, 0x2065
802073c2:	65707553          	.insn	4, 0x65707553
802073c6:	7672                	ld	a2,312(sp)
802073c8:	7369                	lui	t1,0xffffa
802073ca:	4920726f          	jal	tp,8020e85c <__stack_cpu0+0x139c>
802073ce:	746e                	ld	s0,248(sp)
802073d0:	7265                	lui	tp,0xffff9
802073d2:	7572                	ld	a0,312(sp)
802073d4:	7470                	ld	a2,232(s0)
802073d6:	4520                	lw	s0,72(a0)
802073d8:	616e                	ld	sp,216(sp)
802073da:	6c62                	ld	s8,24(sp)
802073dc:	6465                	lui	s0,0x19
802073de:	0000                	unimp
802073e0:	614c                	ld	a1,128(a0)
802073e2:	54207473          	csrrci	s0,0x542,0
802073e6:	6d69                	lui	s10,0x1a
802073e8:	2065                	.insn	2, 0x2065
802073ea:	65707553          	.insn	4, 0x65707553
802073ee:	7672                	ld	a2,312(sp)
802073f0:	7369                	lui	t1,0xffffa
802073f2:	4920726f          	jal	tp,8020e884 <__stack_cpu0+0x13c4>
802073f6:	746e                	ld	s0,248(sp)
802073f8:	7265                	lui	tp,0xffff9
802073fa:	7572                	ld	a0,312(sp)
802073fc:	7470                	ld	a2,232(s0)
802073fe:	4420                	lw	s0,72(s0)
80207400:	7369                	lui	t1,0xffffa
80207402:	6261                	lui	tp,0x18
80207404:	656c                	ld	a1,200(a0)
80207406:	0064                	addi	s1,sp,12
80207408:	614c                	ld	a1,128(a0)
8020740a:	50207473          	csrrci	s0,0x502,0
8020740e:	6972                	ld	s2,280(sp)
80207410:	6976                	ld	s2,344(sp)
80207412:	656c                	ld	a1,200(a0)
80207414:	69206567          	.insn	4, 0x69206567
80207418:	75532073          	csrs	0x755,t1
8020741c:	6570                	ld	a2,200(a0)
8020741e:	7672                	ld	a2,312(sp)
80207420:	7369                	lui	t1,0xffffa
80207422:	4d20726f          	jal	tp,8020e8f4 <__stack_cpu0+0x1434>
80207426:	0065646f          	jal	s0,8025d42c <__bss_end+0x4751c>
8020742a:	0000                	unimp
8020742c:	0000                	unimp
8020742e:	0000                	unimp
80207430:	614c                	ld	a1,128(a0)
80207432:	50207473          	csrrci	s0,0x502,0
80207436:	6972                	ld	s2,280(sp)
80207438:	6976                	ld	s2,344(sp)
8020743a:	656c                	ld	a1,200(a0)
8020743c:	69206567          	.insn	4, 0x69206567
80207440:	73552073          	csrs	mhpmevent21h,a0
80207444:	7265                	lui	tp,0xffff9
80207446:	4d20                	lw	s0,88(a0)
80207448:	0065646f          	jal	s0,8025d44e <__bss_end+0x4753e>
8020744c:	0000                	unimp
8020744e:	0000                	unimp
80207450:	6550                	ld	a2,136(a0)
80207452:	6d72                	ld	s10,280(sp)
80207454:	7469                	lui	s0,0xffffa
80207456:	7420                	ld	s0,104(s0)
80207458:	6341206f          	j	80219a8c <__bss_end+0x3b7c>
8020745c:	73736563          	bltu	t1,s7,80207b86 <rt_system_timer_thread_init+0xa2e>
80207460:	5520                	lw	s0,104(a0)
80207462:	20726573          	csrrsi	a0,0x207,4
80207466:	6150                	ld	a2,128(a0)
80207468:	00006567          	.insn	4, 0x6567
8020746c:	0000                	unimp
8020746e:	0000                	unimp
80207470:	6f4e                	ld	t5,208(sp)
80207472:	2074                	fld	fa3,192(s0)
80207474:	6550                	ld	a2,136(a0)
80207476:	6d72                	ld	s10,280(sp)
80207478:	7469                	lui	s0,0xffffa
8020747a:	7420                	ld	s0,104(s0)
8020747c:	6341206f          	j	80219ab0 <__bss_end+0x3ba0>
80207480:	73736563          	bltu	t1,s7,80207baa <rt_system_timer_thread_init+0xa52>
80207484:	5520                	lw	s0,104(a0)
80207486:	20726573          	csrrsi	a0,0x207,4
8020748a:	6150                	ld	a2,128(a0)
8020748c:	00006567          	.insn	4, 0x6567
80207490:	6550                	ld	a2,136(a0)
80207492:	6d72                	ld	s10,280(sp)
80207494:	7469                	lui	s0,0xffffa
80207496:	7420                	ld	s0,104(s0)
80207498:	6552206f          	j	8022a2ec <__bss_end+0x143dc>
8020749c:	6461                	lui	s0,0x18
8020749e:	4520                	lw	s0,72(a0)
802074a0:	6578                	ld	a4,200(a0)
802074a2:	61747563          	bgeu	s0,s7,80207aac <rt_system_timer_thread_init+0x954>
802074a6:	6c62                	ld	s8,24(sp)
802074a8:	2d65                	addiw	s10,s10,25 # 1a019 <__text_size+0x10cb9>
802074aa:	796c6e6f          	jal	t3,802cdc40 <__bss_end+0xb7d30>
802074ae:	5020                	lw	s0,96(s0)
802074b0:	6761                	lui	a4,0x18
802074b2:	0065                	c.nop	25
802074b4:	0000                	unimp
802074b6:	0000                	unimp
802074b8:	6f4e                	ld	t5,208(sp)
802074ba:	2074                	fld	fa3,192(s0)
802074bc:	6550                	ld	a2,136(a0)
802074be:	6d72                	ld	s10,280(sp)
802074c0:	7469                	lui	s0,0xffffa
802074c2:	7420                	ld	s0,104(s0)
802074c4:	6552206f          	j	8022a318 <__bss_end+0x14408>
802074c8:	6461                	lui	s0,0x18
802074ca:	4520                	lw	s0,72(a0)
802074cc:	6578                	ld	a4,200(a0)
802074ce:	61747563          	bgeu	s0,s7,80207ad8 <rt_system_timer_thread_init+0x980>
802074d2:	6c62                	ld	s8,24(sp)
802074d4:	2d65                	addiw	s10,s10,25
802074d6:	796c6e6f          	jal	t3,802cdc6c <__bss_end+0xb7d5c>
802074da:	5020                	lw	s0,96(s0)
802074dc:	6761                	lui	a4,0x18
802074de:	0065                	c.nop	25
802074e0:	2d2d                	addiw	s10,s10,11
802074e2:	2d2d                	addiw	s10,s10,11
802074e4:	2d2d                	addiw	s10,s10,11
802074e6:	2d2d                	addiw	s10,s10,11
802074e8:	2d2d                	addiw	s10,s10,11
802074ea:	2d2d                	addiw	s10,s10,11
802074ec:	2d2d                	addiw	s10,s10,11
802074ee:	7544                	ld	s1,168(a0)
802074f0:	706d                	c.lui	zero,0xffffb
802074f2:	5220                	lw	s0,96(a2)
802074f4:	6765                	lui	a4,0x19
802074f6:	7369                	lui	t1,0xffffa
802074f8:	6574                	ld	a3,200(a0)
802074fa:	7372                	ld	t1,312(sp)
802074fc:	2d2d                	addiw	s10,s10,11
802074fe:	2d2d                	addiw	s10,s10,11
80207500:	2d2d                	addiw	s10,s10,11
80207502:	2d2d                	addiw	s10,s10,11
80207504:	2d2d                	addiw	s10,s10,11
80207506:	2d2d                	addiw	s10,s10,11
80207508:	2d2d                	addiw	s10,s10,11
8020750a:	2d2d                	addiw	s10,s10,11
8020750c:	0a2d                	addi	s4,s4,11
8020750e:	0000                	unimp
80207510:	7546                	ld	a0,112(sp)
80207512:	636e                	ld	t1,216(sp)
80207514:	6974                	ld	a3,208(a0)
80207516:	52206e6f          	jal	t3,8020da38 <__stack_cpu0+0x578>
8020751a:	6765                	lui	a4,0x19
8020751c:	7369                	lui	t1,0xffffa
8020751e:	6574                	ld	a3,200(a0)
80207520:	7372                	ld	t1,312(sp)
80207522:	0a3a                	slli	s4,s4,0xe
80207524:	0000                	unimp
80207526:	0000                	unimp
80207528:	7209                	lui	tp,0xfffe2
8020752a:	2861                	addiw	a6,a6,24 # b018 <__text_size+0x1cb8>
8020752c:	3178                	fld	fa4,224(a0)
8020752e:	2029                	.insn	2, 0x2029
80207530:	203d                	.insn	2, 0x203d
80207532:	7830                	ld	a2,112(s0)
80207534:	7025                	c.lui	zero,0xfffe9
80207536:	7509                	lui	a0,0xfffe2
80207538:	5f726573          	csrrsi	a0,0x5f7,4
8020753c:	3d207073          	csrci	0x3d2,0
80207540:	3020                	fld	fs0,96(s0)
80207542:	2578                	fld	fa4,200(a0)
80207544:	0a70                	addi	a2,sp,284
80207546:	0000                	unimp
80207548:	6709                	lui	a4,0x2
8020754a:	2870                	fld	fa2,208(s0)
8020754c:	3378                	fld	fa4,224(a4)
8020754e:	2029                	.insn	2, 0x2029
80207550:	203d                	.insn	2, 0x203d
80207552:	7830                	ld	a2,112(s0)
80207554:	7025                	c.lui	zero,0xfffe9
80207556:	7409                	lui	s0,0xfffe2
80207558:	2870                	fld	fa2,208(s0)
8020755a:	3478                	fld	fa4,232(s0)
8020755c:	2029                	.insn	2, 0x2029
8020755e:	203d                	.insn	2, 0x203d
80207560:	7830                	ld	a2,112(s0)
80207562:	7025                	c.lui	zero,0xfffe9
80207564:	000a                	c.slli	zero,0x2
80207566:	0000                	unimp
80207568:	6554                	ld	a3,136(a0)
8020756a:	706d                	c.lui	zero,0xffffb
8020756c:	7261726f          	jal	tp,8021ec92 <__bss_end+0x8d82>
80207570:	2079                	.insn	2, 0x2079
80207572:	6552                	ld	a0,272(sp)
80207574:	74736967          	.insn	4, 0x74736967
80207578:	7265                	lui	tp,0xffff9
8020757a:	000a3a73          	csrrc	s4,ustatus,s4
8020757e:	0000                	unimp
80207580:	7409                	lui	s0,0xfffe2
80207582:	2830                	fld	fa2,80(s0)
80207584:	3578                	fld	fa4,232(a0)
80207586:	2029                	.insn	2, 0x2029
80207588:	203d                	.insn	2, 0x203d
8020758a:	7830                	ld	a2,112(s0)
8020758c:	7025                	c.lui	zero,0xfffe9
8020758e:	7409                	lui	s0,0xfffe2
80207590:	2831                	addiw	a6,a6,12
80207592:	3678                	fld	fa4,232(a2)
80207594:	2029                	.insn	2, 0x2029
80207596:	203d                	.insn	2, 0x203d
80207598:	7830                	ld	a2,112(s0)
8020759a:	7025                	c.lui	zero,0xfffe9
8020759c:	000a                	c.slli	zero,0x2
8020759e:	0000                	unimp
802075a0:	7409                	lui	s0,0xfffe2
802075a2:	2832                	fld	fa6,264(sp)
802075a4:	3778                	fld	fa4,232(a4)
802075a6:	2029                	.insn	2, 0x2029
802075a8:	203d                	.insn	2, 0x203d
802075aa:	7830                	ld	a2,112(s0)
802075ac:	7025                	c.lui	zero,0xfffe9
802075ae:	000a                	c.slli	zero,0x2
802075b0:	7409                	lui	s0,0xfffe2
802075b2:	32782833          	.insn	4, 0x32782833
802075b6:	2938                	fld	fa4,80(a0)
802075b8:	3d20                	fld	fs0,120(a0)
802075ba:	3020                	fld	fs0,96(s0)
802075bc:	2578                	fld	fa4,200(a0)
802075be:	0970                	addi	a2,sp,156
802075c0:	3474                	fld	fa3,232(s0)
802075c2:	7828                	ld	a0,112(s0)
802075c4:	3932                	fld	fs2,296(sp)
802075c6:	2029                	.insn	2, 0x2029
802075c8:	203d                	.insn	2, 0x203d
802075ca:	7830                	ld	a2,112(s0)
802075cc:	7025                	c.lui	zero,0xfffe9
802075ce:	000a                	c.slli	zero,0x2
802075d0:	7409                	lui	s0,0xfffe2
802075d2:	2835                	addiw	a6,a6,13
802075d4:	3378                	fld	fa4,224(a4)
802075d6:	2930                	fld	fa2,80(a0)
802075d8:	3d20                	fld	fs0,120(a0)
802075da:	3020                	fld	fs0,96(s0)
802075dc:	2578                	fld	fa4,200(a0)
802075de:	0970                	addi	a2,sp,156
802075e0:	3674                	fld	fa3,232(a2)
802075e2:	7828                	ld	a0,112(s0)
802075e4:	20293133          	.insn	4, 0x20293133
802075e8:	203d                	.insn	2, 0x203d
802075ea:	7830                	ld	a2,112(s0)
802075ec:	7025                	c.lui	zero,0xfffe9
802075ee:	000a                	c.slli	zero,0x2
802075f0:	65766153          	.insn	4, 0x65766153
802075f4:	2064                	fld	fs1,192(s0)
802075f6:	6552                	ld	a0,272(sp)
802075f8:	74736967          	.insn	4, 0x74736967
802075fc:	7265                	lui	tp,0xffff9
802075fe:	000a3a73          	csrrc	s4,ustatus,s4
80207602:	0000                	unimp
80207604:	0000                	unimp
80207606:	0000                	unimp
80207608:	7309                	lui	t1,0xfffe2
8020760a:	2f30                	fld	fa2,88(a4)
8020760c:	7066                	.insn	2, 0x7066
8020760e:	7828                	ld	a0,112(s0)
80207610:	2938                	fld	fa4,80(a0)
80207612:	3d20                	fld	fs0,120(a0)
80207614:	3020                	fld	fs0,96(s0)
80207616:	2578                	fld	fa4,200(a0)
80207618:	0970                	addi	a2,sp,156
8020761a:	78283173          	csrrc	sp,0x782,a6
8020761e:	2939                	addiw	s2,s2,14
80207620:	3d20                	fld	fs0,120(a0)
80207622:	3020                	fld	fs0,96(s0)
80207624:	2578                	fld	fa4,200(a0)
80207626:	0a70                	addi	a2,sp,284
	...
80207630:	7309                	lui	t1,0xfffe2
80207632:	2832                	fld	fa6,264(sp)
80207634:	3178                	fld	fa4,224(a0)
80207636:	2938                	fld	fa4,80(a0)
80207638:	3d20                	fld	fs0,120(a0)
8020763a:	3020                	fld	fs0,96(s0)
8020763c:	2578                	fld	fa4,200(a0)
8020763e:	0970                	addi	a2,sp,156
80207640:	78283373          	csrrc	t1,0x782,a6
80207644:	3931                	addiw	s2,s2,-20
80207646:	2029                	.insn	2, 0x2029
80207648:	203d                	.insn	2, 0x203d
8020764a:	7830                	ld	a2,112(s0)
8020764c:	7025                	c.lui	zero,0xfffe9
8020764e:	000a                	c.slli	zero,0x2
80207650:	7309                	lui	t1,0xfffe2
80207652:	2834                	fld	fa3,80(s0)
80207654:	3278                	fld	fa4,224(a2)
80207656:	2930                	fld	fa2,80(a0)
80207658:	3d20                	fld	fs0,120(a0)
8020765a:	3020                	fld	fs0,96(s0)
8020765c:	2578                	fld	fa4,200(a0)
8020765e:	0970                	addi	a2,sp,156
80207660:	78283573          	csrrc	a0,0x782,a6
80207664:	3132                	fld	ft2,296(sp)
80207666:	2029                	.insn	2, 0x2029
80207668:	203d                	.insn	2, 0x203d
8020766a:	7830                	ld	a2,112(s0)
8020766c:	7025                	c.lui	zero,0xfffe9
8020766e:	000a                	c.slli	zero,0x2
80207670:	7309                	lui	t1,0xfffe2
80207672:	2836                	fld	fa6,328(sp)
80207674:	3278                	fld	fa4,224(a2)
80207676:	2932                	fld	fs2,264(sp)
80207678:	3d20                	fld	fs0,120(a0)
8020767a:	3020                	fld	fs0,96(s0)
8020767c:	2578                	fld	fa4,200(a0)
8020767e:	0970                	addi	a2,sp,156
80207680:	78283773          	csrrc	a4,0x782,a6
80207684:	3332                	fld	ft6,296(sp)
80207686:	2029                	.insn	2, 0x2029
80207688:	203d                	.insn	2, 0x203d
8020768a:	7830                	ld	a2,112(s0)
8020768c:	7025                	c.lui	zero,0xfffe9
8020768e:	000a                	c.slli	zero,0x2
80207690:	7309                	lui	t1,0xfffe2
80207692:	2838                	fld	fa4,80(s0)
80207694:	3278                	fld	fa4,224(a2)
80207696:	2934                	fld	fa3,80(a0)
80207698:	3d20                	fld	fs0,120(a0)
8020769a:	3020                	fld	fs0,96(s0)
8020769c:	2578                	fld	fa4,200(a0)
8020769e:	0970                	addi	a2,sp,156
802076a0:	78283973          	csrrc	s2,0x782,a6
802076a4:	3532                	fld	fa0,296(sp)
802076a6:	2029                	.insn	2, 0x2029
802076a8:	203d                	.insn	2, 0x203d
802076aa:	7830                	ld	a2,112(s0)
802076ac:	7025                	c.lui	zero,0xfffe9
802076ae:	000a                	c.slli	zero,0x2
802076b0:	7309                	lui	t1,0xfffe2
802076b2:	3031                	.insn	2, 0x3031
802076b4:	7828                	ld	a0,112(s0)
802076b6:	3632                	fld	fa2,296(sp)
802076b8:	2029                	.insn	2, 0x2029
802076ba:	203d                	.insn	2, 0x203d
802076bc:	7830                	ld	a2,112(s0)
802076be:	7025                	c.lui	zero,0xfffe9
802076c0:	7309                	lui	t1,0xfffe2
802076c2:	3131                	addiw	sp,sp,-20
802076c4:	7828                	ld	a0,112(s0)
802076c6:	3732                	fld	fa4,296(sp)
802076c8:	2029                	.insn	2, 0x2029
802076ca:	203d                	.insn	2, 0x203d
802076cc:	7830                	ld	a2,112(s0)
802076ce:	7025                	c.lui	zero,0xfffe9
802076d0:	000a                	c.slli	zero,0x2
802076d2:	0000                	unimp
802076d4:	0000                	unimp
802076d6:	0000                	unimp
802076d8:	7546                	ld	a0,112(sp)
802076da:	636e                	ld	t1,216(sp)
802076dc:	6974                	ld	a3,208(a0)
802076de:	41206e6f          	jal	t3,8020daf0 <__stack_cpu0+0x630>
802076e2:	6772                	ld	a4,280(sp)
802076e4:	6d75                	lui	s10,0x1d
802076e6:	6e65                	lui	t3,0x19
802076e8:	7374                	ld	a3,224(a4)
802076ea:	5220                	lw	s0,96(a2)
802076ec:	6765                	lui	a4,0x19
802076ee:	7369                	lui	t1,0xffffa
802076f0:	6574                	ld	a3,200(a0)
802076f2:	7372                	ld	t1,312(sp)
802076f4:	0a3a                	slli	s4,s4,0xe
802076f6:	0000                	unimp
802076f8:	6109                	addi	sp,sp,128
802076fa:	2830                	fld	fa2,80(s0)
802076fc:	3178                	fld	fa4,224(a0)
802076fe:	2930                	fld	fa2,80(a0)
80207700:	3d20                	fld	fs0,120(a0)
80207702:	3020                	fld	fs0,96(s0)
80207704:	2578                	fld	fa4,200(a0)
80207706:	0970                	addi	a2,sp,156
80207708:	3161                	addiw	sp,sp,-8
8020770a:	7828                	ld	a0,112(s0)
8020770c:	3131                	addiw	sp,sp,-20
8020770e:	2029                	.insn	2, 0x2029
80207710:	203d                	.insn	2, 0x203d
80207712:	7830                	ld	a2,112(s0)
80207714:	7025                	c.lui	zero,0xfffe9
80207716:	000a                	c.slli	zero,0x2
80207718:	6109                	addi	sp,sp,128
8020771a:	2832                	fld	fa6,264(sp)
8020771c:	3178                	fld	fa4,224(a0)
8020771e:	2932                	fld	fs2,264(sp)
80207720:	3d20                	fld	fs0,120(a0)
80207722:	3020                	fld	fs0,96(s0)
80207724:	2578                	fld	fa4,200(a0)
80207726:	0970                	addi	a2,sp,156
80207728:	3361                	addiw	t1,t1,-8 # ffff9ff8 <__bss_end+0x7fde40e8>
8020772a:	7828                	ld	a0,112(s0)
8020772c:	3331                	addiw	t1,t1,-20
8020772e:	2029                	.insn	2, 0x2029
80207730:	203d                	.insn	2, 0x203d
80207732:	7830                	ld	a2,112(s0)
80207734:	7025                	c.lui	zero,0xfffe9
80207736:	000a                	c.slli	zero,0x2
80207738:	6109                	addi	sp,sp,128
8020773a:	2834                	fld	fa3,80(s0)
8020773c:	3178                	fld	fa4,224(a0)
8020773e:	2934                	fld	fa3,80(a0)
80207740:	3d20                	fld	fs0,120(a0)
80207742:	3020                	fld	fs0,96(s0)
80207744:	2578                	fld	fa4,200(a0)
80207746:	0970                	addi	a2,sp,156
80207748:	3561                	addiw	a0,a0,-8 # fffe1ff8 <__bss_end+0x7fdcc0e8>
8020774a:	7828                	ld	a0,112(s0)
8020774c:	3531                	addiw	a0,a0,-20
8020774e:	2029                	.insn	2, 0x2029
80207750:	203d                	.insn	2, 0x203d
80207752:	7830                	ld	a2,112(s0)
80207754:	7025                	c.lui	zero,0xfffe9
80207756:	000a                	c.slli	zero,0x2
80207758:	6109                	addi	sp,sp,128
8020775a:	2836                	fld	fa6,328(sp)
8020775c:	3178                	fld	fa4,224(a0)
8020775e:	2936                	fld	fs2,328(sp)
80207760:	3d20                	fld	fs0,120(a0)
80207762:	3020                	fld	fs0,96(s0)
80207764:	2578                	fld	fa4,200(a0)
80207766:	0970                	addi	a2,sp,156
80207768:	3761                	addiw	a4,a4,-8 # 18ff8 <__text_size+0xfc98>
8020776a:	7828                	ld	a0,112(s0)
8020776c:	3731                	addiw	a4,a4,-20
8020776e:	2029                	.insn	2, 0x2029
80207770:	203d                	.insn	2, 0x203d
80207772:	7830                	ld	a2,112(s0)
80207774:	7025                	c.lui	zero,0xfffe9
80207776:	000a                	c.slli	zero,0x2
80207778:	61747373          	csrrci	t1,0x617,8
8020777c:	7574                	ld	a3,232(a0)
8020777e:	203d2073          	csrs	0x203,s10
80207782:	7830                	ld	a2,112(s0)
80207784:	7025                	c.lui	zero,0xfffe9
80207786:	000a                	c.slli	zero,0x2
80207788:	2509                	addiw	a0,a0,2
8020778a:	00000a73          	.insn	4, 0x0a73
8020778e:	0000                	unimp
80207790:	70746173          	csrrsi	sp,0x707,8
80207794:	3d20                	fld	fs0,120(a0)
80207796:	3020                	fld	fs0,96(s0)
80207798:	2578                	fld	fa4,200(a0)
8020779a:	0a70                	addi	a2,sp,284
8020779c:	0000                	unimp
8020779e:	0000                	unimp
802077a0:	6f4e                	ld	t5,208(sp)
802077a2:	4120                	lw	s0,64(a0)
802077a4:	6464                	ld	s1,200(s0)
802077a6:	6572                	ld	a0,280(sp)
802077a8:	54207373          	csrrci	t1,0x542,0
802077ac:	6172                	ld	sp,280(sp)
802077ae:	736e                	ld	t1,248(sp)
802077b0:	616c                	ld	a1,192(a0)
802077b2:	6974                	ld	a3,208(a0)
802077b4:	502f6e6f          	jal	t3,802fdcb6 <__bss_end+0xe7da6>
802077b8:	6f72                	ld	t5,280(sp)
802077ba:	6574                	ld	a3,200(a0)
802077bc:	6f697463          	bgeu	s2,s6,80207ea4 <rt_system_timer_thread_init+0xd4c>
802077c0:	206e                	fld	ft0,216(sp)
802077c2:	6f4d                	lui	t5,0x13
802077c4:	6564                	ld	s1,200(a0)
802077c6:	0000                	unimp
802077c8:	4d09                	li	s10,2
802077ca:	2065646f          	jal	s0,8025d9d0 <__bss_end+0x47ac0>
802077ce:	203d                	.insn	2, 0x203d
802077d0:	7325                	lui	t1,0xfffe9
802077d2:	000a                	c.slli	zero,0x2
802077d4:	0000                	unimp
802077d6:	0000                	unimp
802077d8:	2d2d                	addiw	s10,s10,11 # 1d00b <__text_size+0x13cab>
802077da:	2d2d                	addiw	s10,s10,11
802077dc:	2d2d                	addiw	s10,s10,11
802077de:	2d2d                	addiw	s10,s10,11
802077e0:	2d2d                	addiw	s10,s10,11
802077e2:	2d2d                	addiw	s10,s10,11
802077e4:	2d2d                	addiw	s10,s10,11
802077e6:	2d2d                	addiw	s10,s10,11
802077e8:	442d                	li	s0,11
802077ea:	6d75                	lui	s10,0x1d
802077ec:	2070                	fld	fa2,192(s0)
802077ee:	2d2d4b4f          	.insn	4, 0x2d2d4b4f
802077f2:	2d2d                	addiw	s10,s10,11 # 1d00b <__text_size+0x13cab>
802077f4:	2d2d                	addiw	s10,s10,11
802077f6:	2d2d                	addiw	s10,s10,11
802077f8:	2d2d                	addiw	s10,s10,11
802077fa:	2d2d                	addiw	s10,s10,11
802077fc:	2d2d                	addiw	s10,s10,11
802077fe:	2d2d                	addiw	s10,s10,11
80207800:	2d2d                	addiw	s10,s10,11
80207802:	2d2d                	addiw	s10,s10,11
80207804:	0a2d                	addi	s4,s4,11
80207806:	0000                	unimp
80207808:	6e55                	lui	t3,0x15
8020780a:	776f6e6b          	.insn	4, 0x776f6e6b
8020780e:	206e                	fld	ft0,216(sp)
80207810:	6e49                	lui	t3,0x12
80207812:	6574                	ld	a3,200(a0)
80207814:	7272                	ld	tp,312(sp)
80207816:	7075                	c.lui	zero,0xffffd
80207818:	0074                	addi	a3,sp,12
8020781a:	0000                	unimp
8020781c:	0000                	unimp
8020781e:	0000                	unimp
80207820:	6e55                	lui	t3,0x15
80207822:	776f6e6b          	.insn	4, 0x776f6e6b
80207826:	206e                	fld	ft0,216(sp)
80207828:	7845                	lui	a6,0xffff1
8020782a:	74706563          	bltu	zero,t2,80207f74 <rt_system_timer_thread_init+0xe1c>
8020782e:	6f69                	lui	t5,0x1a
80207830:	006e                	c.slli	zero,0x1b
80207832:	0000                	unimp
80207834:	0000                	unimp
80207836:	0000                	unimp
80207838:	2d0a                	fld	fs10,128(sp)
8020783a:	2d2d                	addiw	s10,s10,11
8020783c:	2d2d                	addiw	s10,s10,11
8020783e:	2d2d                	addiw	s10,s10,11
80207840:	202d                	.insn	2, 0x202d
80207842:	5645535b          	.insn	4, 0x5645535b
80207846:	5245                	li	tp,-15
80207848:	4520                	lw	s0,72(a0)
8020784a:	5252                	lw	tp,52(sp)
8020784c:	205d524f          	fnmadd.s	ft4,fs10,ft5,ft4,unknown
80207850:	2d2d                	addiw	s10,s10,11
80207852:	2d2d                	addiw	s10,s10,11
80207854:	2d2d                	addiw	s10,s10,11
80207856:	2d2d                	addiw	s10,s10,11
	...
80207860:	696c                	ld	a1,208(a0)
80207862:	6362                	ld	t1,24(sp)
80207864:	7570                	ld	a2,232(a0)
80207866:	742e                	ld	s0,232(sp)
80207868:	6172                	ld	sp,280(sp)
8020786a:	0070                	addi	a2,sp,12
8020786c:	0000                	unimp
8020786e:	0000                	unimp
80207870:	654e                	ld	a0,208(sp)
80207872:	64657473          	csrrci	s0,hviprio1,10
80207876:	7420                	ld	s0,104(s0)
80207878:	6172                	ld	sp,280(sp)
8020787a:	2070                	fld	fa2,192(s0)
8020787c:	6564                	ld	s1,200(a0)
8020787e:	6574                	ld	a3,200(a0)
80207880:	64657463          	bgeu	a0,t1,80207ec8 <rt_system_timer_thread_init+0xd70>
80207884:	0000                	unimp
80207886:	0000                	unimp
80207888:	75616373          	csrrsi	t1,0x756,2
8020788c:	303a6573          	csrrsi	a0,mideleg,20
80207890:	2578                	fld	fa4,200(a0)
80207892:	2c70                	fld	fa2,216(s0)
80207894:	61767473          	csrrci	s0,0x617,12
80207898:	3a6c                	fld	fa1,240(a2)
8020789a:	7830                	ld	a2,112(s0)
8020789c:	7025                	c.lui	zero,0xfffe9
8020789e:	732c                	ld	a1,96(a4)
802078a0:	7065                	c.lui	zero,0xffff9
802078a2:	78303a63          	.insn	4, 0x78303a63
802078a6:	7025                	c.lui	zero,0xfffe9
802078a8:	000a                	c.slli	zero,0x2
802078aa:	0000                	unimp
802078ac:	0000                	unimp
802078ae:	0000                	unimp
802078b0:	6e55                	lui	t3,0x15
802078b2:	6168                	ld	a0,192(a0)
802078b4:	646e                	ld	s0,216(sp)
802078b6:	656c                	ld	a1,200(a0)
802078b8:	2064                	fld	fs1,192(s0)
802078ba:	6e49                	lui	t3,0x12
802078bc:	6574                	ld	a3,200(a0)
802078be:	7272                	ld	tp,312(sp)
802078c0:	7075                	c.lui	zero,0xffffd
802078c2:	2074                	fld	fa3,192(s0)
802078c4:	6c25                	lui	s8,0x9
802078c6:	3a64                	fld	fs1,240(a2)
802078c8:	7325                	lui	t1,0xfffe9
802078ca:	000a                	c.slli	zero,0x2
802078cc:	0000                	unimp
802078ce:	0000                	unimp
802078d0:	6e55                	lui	t3,0x15
802078d2:	6168                	ld	a0,192(a0)
802078d4:	646e                	ld	s0,216(sp)
802078d6:	656c                	ld	a1,200(a0)
802078d8:	2064                	fld	fs1,192(s0)
802078da:	7845                	lui	a6,0xffff1
802078dc:	74706563          	bltu	zero,t2,80208026 <rt_system_timer_thread_init+0xece>
802078e0:	6f69                	lui	t5,0x1a
802078e2:	206e                	fld	ft0,216(sp)
802078e4:	6c25                	lui	s8,0x9
802078e6:	3a64                	fld	fs1,240(a2)
802078e8:	7325                	lui	t1,0xfffe9
802078ea:	000a                	c.slli	zero,0x2
802078ec:	0000                	unimp
802078ee:	0000                	unimp
802078f0:	2d2d                	addiw	s10,s10,11
802078f2:	2d2d                	addiw	s10,s10,11
802078f4:	2d2d                	addiw	s10,s10,11
802078f6:	2d2d                	addiw	s10,s10,11
802078f8:	2d2d                	addiw	s10,s10,11
802078fa:	2d2d                	addiw	s10,s10,11
802078fc:	2d2d                	addiw	s10,s10,11
802078fe:	6854                	ld	a3,144(s0)
80207900:	6572                	ld	a0,280(sp)
80207902:	6461                	lui	s0,0x18
80207904:	6c20                	ld	s0,88(s0)
80207906:	7369                	lui	t1,0xffffa
80207908:	2d74                	fld	fa3,216(a0)
8020790a:	2d2d                	addiw	s10,s10,11
8020790c:	2d2d                	addiw	s10,s10,11
8020790e:	2d2d                	addiw	s10,s10,11
80207910:	2d2d                	addiw	s10,s10,11
80207912:	2d2d                	addiw	s10,s10,11
80207914:	2d2d                	addiw	s10,s10,11
80207916:	0a2d                	addi	s4,s4,11
	...
80207920:	72727563          	bgeu	tp,t2,8020804a <rt_system_timer_thread_init+0xef2>
80207924:	6e65                	lui	t3,0x19
80207926:	2074                	fld	fa3,192(s0)
80207928:	6874                	ld	a3,208(s0)
8020792a:	6572                	ld	a0,280(sp)
8020792c:	6461                	lui	s0,0x18
8020792e:	203a                	fld	ft0,392(sp)
80207930:	7325                	lui	t1,0xfffe9
80207932:	000a                	c.slli	zero,0x2
80207934:	0000                	unimp
80207936:	0000                	unimp
80207938:	2d2d                	addiw	s10,s10,11
8020793a:	2d2d                	addiw	s10,s10,11
8020793c:	2d2d                	addiw	s10,s10,11
8020793e:	2d2d                	addiw	s10,s10,11
80207940:	2d2d                	addiw	s10,s10,11
80207942:	2d2d                	addiw	s10,s10,11
80207944:	2d2d                	addiw	s10,s10,11
80207946:	6142                	ld	sp,16(sp)
80207948:	72746b63          	bltu	s0,t2,8020807e <rt_system_timer_thread_init+0xf26>
8020794c:	6361                	lui	t1,0x18
8020794e:	2d65                	addiw	s10,s10,25
80207950:	2d2d                	addiw	s10,s10,11
80207952:	2d2d                	addiw	s10,s10,11
80207954:	2d2d                	addiw	s10,s10,11
80207956:	2d2d                	addiw	s10,s10,11
80207958:	2d2d                	addiw	s10,s10,11
8020795a:	2d2d                	addiw	s10,s10,11
8020795c:	0a2d                	addi	s4,s4,11
8020795e:	0000                	unimp
80207960:	7066                	.insn	2, 0x7066
80207962:	3d20                	fld	fs0,120(a0)
80207964:	2520                	fld	fs0,72(a0)
80207966:	0070                	addi	a2,sp,12
80207968:	7355                	lui	t1,0xffff5
8020796a:	7265                	lui	tp,0xffff9
8020796c:	5320                	lw	s0,96(a4)
8020796e:	7774666f          	jal	a2,8024e8e4 <__bss_end+0x389d4>
80207972:	7261                	lui	tp,0xffff8
80207974:	2065                	.insn	2, 0x2065
80207976:	6e49                	lui	t3,0x12
80207978:	6574                	ld	a3,200(a0)
8020797a:	7272                	ld	tp,312(sp)
8020797c:	7075                	c.lui	zero,0xffffd
8020797e:	0074                	addi	a3,sp,12
80207980:	65707553          	.insn	4, 0x65707553
80207984:	7672                	ld	a2,312(sp)
80207986:	7369                	lui	t1,0xffffa
80207988:	5320726f          	jal	tp,8020eeba <__stack_cpu0+0x19fa>
8020798c:	7774666f          	jal	a2,8024e902 <__bss_end+0x389f2>
80207990:	7261                	lui	tp,0xffff8
80207992:	2065                	.insn	2, 0x2065
80207994:	6e49                	lui	t3,0x12
80207996:	6574                	ld	a3,200(a0)
80207998:	7272                	ld	tp,312(sp)
8020799a:	7075                	c.lui	zero,0xffffd
8020799c:	0074                	addi	a3,sp,12
8020799e:	0000                	unimp
802079a0:	6552                	ld	a0,272(sp)
802079a2:	6576                	ld	a0,344(sp)
802079a4:	7372                	ld	t1,312(sp)
802079a6:	6465                	lui	s0,0x19
802079a8:	322d                	addiw	tp,tp,-21 # ffff7feb <__bss_end+0x7fde20db>
802079aa:	0000                	unimp
802079ac:	0000                	unimp
802079ae:	0000                	unimp
802079b0:	6552                	ld	a0,272(sp)
802079b2:	6576                	ld	a0,344(sp)
802079b4:	7372                	ld	t1,312(sp)
802079b6:	6465                	lui	s0,0x19
802079b8:	332d                	addiw	t1,t1,-21 # ffff9feb <__bss_end+0x7fde40db>
802079ba:	0000                	unimp
802079bc:	0000                	unimp
802079be:	0000                	unimp
802079c0:	7355                	lui	t1,0xffff5
802079c2:	7265                	lui	tp,0xffff9
802079c4:	5420                	lw	s0,104(s0)
802079c6:	6d69                	lui	s10,0x1a
802079c8:	7265                	lui	tp,0xffff9
802079ca:	4920                	lw	s0,80(a0)
802079cc:	746e                	ld	s0,248(sp)
802079ce:	7265                	lui	tp,0xffff9
802079d0:	7572                	ld	a0,312(sp)
802079d2:	7470                	ld	a2,232(s0)
802079d4:	0000                	unimp
802079d6:	0000                	unimp
802079d8:	65707553          	.insn	4, 0x65707553
802079dc:	7672                	ld	a2,312(sp)
802079de:	7369                	lui	t1,0xffffa
802079e0:	5420726f          	jal	tp,8020ef22 <__stack_cpu0+0x1a62>
802079e4:	6d69                	lui	s10,0x1a
802079e6:	7265                	lui	tp,0xffff9
802079e8:	4920                	lw	s0,80(a0)
802079ea:	746e                	ld	s0,248(sp)
802079ec:	7265                	lui	tp,0xffff9
802079ee:	7572                	ld	a0,312(sp)
802079f0:	7470                	ld	a2,232(s0)
802079f2:	0000                	unimp
802079f4:	0000                	unimp
802079f6:	0000                	unimp
802079f8:	6552                	ld	a0,272(sp)
802079fa:	6576                	ld	a0,344(sp)
802079fc:	7372                	ld	t1,312(sp)
802079fe:	6465                	lui	s0,0x19
80207a00:	362d                	addiw	a2,a2,-21
80207a02:	0000                	unimp
80207a04:	0000                	unimp
80207a06:	0000                	unimp
80207a08:	6552                	ld	a0,272(sp)
80207a0a:	6576                	ld	a0,344(sp)
80207a0c:	7372                	ld	t1,312(sp)
80207a0e:	6465                	lui	s0,0x19
80207a10:	372d                	addiw	a4,a4,-21
80207a12:	0000                	unimp
80207a14:	0000                	unimp
80207a16:	0000                	unimp
80207a18:	7355                	lui	t1,0xffff5
80207a1a:	7265                	lui	tp,0xffff9
80207a1c:	4520                	lw	s0,72(a0)
80207a1e:	7478                	ld	a4,232(s0)
80207a20:	7265                	lui	tp,0xffff9
80207a22:	616e                	ld	sp,216(sp)
80207a24:	206c                	fld	fa1,192(s0)
80207a26:	6e49                	lui	t3,0x12
80207a28:	6574                	ld	a3,200(a0)
80207a2a:	7272                	ld	tp,312(sp)
80207a2c:	7075                	c.lui	zero,0xffffd
80207a2e:	0074                	addi	a3,sp,12
80207a30:	65707553          	.insn	4, 0x65707553
80207a34:	7672                	ld	a2,312(sp)
80207a36:	7369                	lui	t1,0xffffa
80207a38:	4520726f          	jal	tp,8020ee8a <__stack_cpu0+0x19ca>
80207a3c:	7478                	ld	a4,232(s0)
80207a3e:	7265                	lui	tp,0xffff9
80207a40:	616e                	ld	sp,216(sp)
80207a42:	206c                	fld	fa1,192(s0)
80207a44:	6e49                	lui	t3,0x12
80207a46:	6574                	ld	a3,200(a0)
80207a48:	7272                	ld	tp,312(sp)
80207a4a:	7075                	c.lui	zero,0xffffd
80207a4c:	0074                	addi	a3,sp,12
80207a4e:	0000                	unimp
80207a50:	6552                	ld	a0,272(sp)
80207a52:	76726573          	csrrsi	a0,0x767,4
80207a56:	6465                	lui	s0,0x19
80207a58:	312d                	addiw	sp,sp,-21
80207a5a:	0030                	addi	a2,sp,8
80207a5c:	0000                	unimp
80207a5e:	0000                	unimp
80207a60:	6552                	ld	a0,272(sp)
80207a62:	76726573          	csrrsi	a0,0x767,4
80207a66:	6465                	lui	s0,0x19
80207a68:	312d                	addiw	sp,sp,-21
80207a6a:	0031                	c.nop	12
80207a6c:	0000                	unimp
80207a6e:	0000                	unimp
80207a70:	6e49                	lui	t3,0x12
80207a72:	75727473          	csrrci	s0,0x757,4
80207a76:	6f697463          	bgeu	s2,s6,8020815e <rt_system_timer_thread_init+0x1006>
80207a7a:	206e                	fld	ft0,216(sp)
80207a7c:	6441                	lui	s0,0x10
80207a7e:	7264                	ld	s1,224(a2)
80207a80:	7365                	lui	t1,0xffff9
80207a82:	694d2073          	csrs	0x694,s10
80207a86:	696c6173          	csrrsi	sp,0x696,24
80207a8a:	64656e67          	.insn	4, 0x64656e67
80207a8e:	0000                	unimp
80207a90:	6e49                	lui	t3,0x12
80207a92:	75727473          	csrrci	s0,0x757,4
80207a96:	6f697463          	bgeu	s2,s6,8020817e <rt_system_timer_thread_init+0x1026>
80207a9a:	206e                	fld	ft0,216(sp)
80207a9c:	6341                	lui	t1,0x10
80207a9e:	73736563          	bltu	t1,s7,802081c8 <rt_system_timer_thread_init+0x1070>
80207aa2:	4620                	lw	s0,72(a2)
80207aa4:	7561                	lui	a0,0xffff8
80207aa6:	746c                	ld	a1,232(s0)
	...
80207ab0:	6c49                	lui	s8,0x12
80207ab2:	656c                	ld	a1,200(a0)
80207ab4:	206c6167          	.insn	4, 0x206c6167
80207ab8:	6e49                	lui	t3,0x12
80207aba:	75727473          	csrrci	s0,0x757,4
80207abe:	6f697463          	bgeu	s2,s6,802081a6 <rt_system_timer_thread_init+0x104e>
80207ac2:	006e                	c.slli	zero,0x1b
80207ac4:	0000                	unimp
80207ac6:	0000                	unimp
80207ac8:	7242                	ld	tp,48(sp)
80207aca:	6165                	addi	sp,sp,112
80207acc:	696f706b          	.insn	4, 0x696f706b
80207ad0:	746e                	ld	s0,248(sp)
80207ad2:	0000                	unimp
80207ad4:	0000                	unimp
80207ad6:	0000                	unimp
80207ad8:	6f4c                	ld	a1,152(a4)
80207ada:	6461                	lui	s0,0x18
80207adc:	4120                	lw	s0,64(a0)
80207ade:	6464                	ld	s1,200(s0)
80207ae0:	6572                	ld	a0,280(sp)
80207ae2:	4d207373          	csrrci	t1,0x4d2,0
80207ae6:	7369                	lui	t1,0xffffa
80207ae8:	6c61                	lui	s8,0x18
80207aea:	6769                	lui	a4,0x1a
80207aec:	656e                	ld	a0,216(sp)
80207aee:	0064                	addi	s1,sp,12
80207af0:	6f4c                	ld	a1,152(a4)
80207af2:	6461                	lui	s0,0x18
80207af4:	4120                	lw	s0,64(a0)
80207af6:	73656363          	bltu	a0,s6,8020821c <rt_system_timer_thread_init+0x10c4>
80207afa:	61462073          	csrs	0x614,a2
80207afe:	6c75                	lui	s8,0x1d
80207b00:	0074                	addi	a3,sp,12
80207b02:	0000                	unimp
80207b04:	0000                	unimp
80207b06:	0000                	unimp
80207b08:	726f7453          	.insn	4, 0x726f7453
80207b0c:	2f65                	addiw	t5,t5,25 # 1a019 <__text_size+0x10cb9>
80207b0e:	4d41                	li	s10,16
80207b10:	6441204f          	.insn	4, 0x6441204f
80207b14:	7264                	ld	s1,224(a2)
80207b16:	7365                	lui	t1,0xffff9
80207b18:	694d2073          	csrs	0x694,s10
80207b1c:	696c6173          	csrrsi	sp,0x696,24
80207b20:	64656e67          	.insn	4, 0x64656e67
80207b24:	0000                	unimp
80207b26:	0000                	unimp
80207b28:	726f7453          	.insn	4, 0x726f7453
80207b2c:	2f65                	addiw	t5,t5,25
80207b2e:	4d41                	li	s10,16
80207b30:	6341204f          	fnmadd.d	ft0,ft2,fs4,fa2,rdn
80207b34:	73736563          	bltu	t1,s7,8020825e <rt_system_timer_thread_init+0x1106>
80207b38:	4620                	lw	s0,72(a2)
80207b3a:	7561                	lui	a0,0xffff8
80207b3c:	746c                	ld	a1,232(s0)
80207b3e:	0000                	unimp
80207b40:	6e45                	lui	t3,0x11
80207b42:	6976                	ld	s2,344(sp)
80207b44:	6f72                	ld	t5,280(sp)
80207b46:	6d6e                	ld	s10,216(sp)
80207b48:	6e65                	lui	t3,0x19
80207b4a:	2074                	fld	fa3,192(s0)
80207b4c:	6c6c6163          	bltu	s8,t1,8020820e <rt_system_timer_thread_init+0x10b6>
80207b50:	6620                	ld	s0,72(a2)
80207b52:	6f72                	ld	t5,280(sp)
80207b54:	206d                	.insn	2, 0x206d
80207b56:	2d55                	addiw	s10,s10,21 # 1a015 <__text_size+0x10cb5>
80207b58:	6f6d                	lui	t5,0x1b
80207b5a:	6564                	ld	s1,200(a0)
80207b5c:	0000                	unimp
80207b5e:	0000                	unimp
80207b60:	6e45                	lui	t3,0x11
80207b62:	6976                	ld	s2,344(sp)
80207b64:	6f72                	ld	t5,280(sp)
80207b66:	6d6e                	ld	s10,216(sp)
80207b68:	6e65                	lui	t3,0x19
80207b6a:	2074                	fld	fa3,192(s0)
80207b6c:	6c6c6163          	bltu	s8,t1,8020822e <rt_system_timer_thread_init+0x10d6>
80207b70:	6620                	ld	s0,72(a2)
80207b72:	6f72                	ld	t5,280(sp)
80207b74:	206d                	.insn	2, 0x206d
80207b76:	6f6d2d53          	.insn	4, 0x6f6d2d53
80207b7a:	6564                	ld	s1,200(a0)
80207b7c:	0000                	unimp
80207b7e:	0000                	unimp
80207b80:	6e49                	lui	t3,0x12
80207b82:	75727473          	csrrci	s0,0x757,4
80207b86:	6f697463          	bgeu	s2,s6,8020826e <rt_system_timer_thread_init+0x1116>
80207b8a:	206e                	fld	ft0,216(sp)
80207b8c:	6150                	ld	a2,128(a0)
80207b8e:	46206567          	.insn	4, 0x46206567
80207b92:	7561                	lui	a0,0xffff8
80207b94:	746c                	ld	a1,232(s0)
80207b96:	0000                	unimp
80207b98:	6f4c                	ld	a1,152(a4)
80207b9a:	6461                	lui	s0,0x18
80207b9c:	5020                	lw	s0,96(s0)
80207b9e:	6761                	lui	a4,0x18
80207ba0:	2065                	.insn	2, 0x2065
80207ba2:	6146                	ld	sp,80(sp)
80207ba4:	6c75                	lui	s8,0x1d
80207ba6:	0074                	addi	a3,sp,12
80207ba8:	6552                	ld	a0,272(sp)
80207baa:	76726573          	csrrsi	a0,0x767,4
80207bae:	6465                	lui	s0,0x19
80207bb0:	312d                	addiw	sp,sp,-21
80207bb2:	0034                	addi	a3,sp,8
80207bb4:	0000                	unimp
80207bb6:	0000                	unimp
80207bb8:	726f7453          	.insn	4, 0x726f7453
80207bbc:	2f65                	addiw	t5,t5,25 # 1b019 <__text_size+0x11cb9>
80207bbe:	4d41                	li	s10,16
80207bc0:	6150204f          	fnmadd.s	ft0,ft0,fs5,fa2,rdn
80207bc4:	46206567          	.insn	4, 0x46206567
80207bc8:	7561                	lui	a0,0xffff8
80207bca:	746c                	ld	a1,232(s0)
80207bcc:	0000                	unimp
80207bce:	0000                	unimp
80207bd0:	7375                	lui	t1,0xffffd
80207bd2:	0072                	c.slli	zero,0x1c
80207bd4:	0000                	unimp
80207bd6:	0000                	unimp
80207bd8:	6175                	addi	sp,sp,368
80207bda:	7472                	ld	s0,312(sp)
80207bdc:	0030                	addi	a2,sp,8
80207bde:	0000                	unimp
80207be0:	6568                	ld	a0,200(a0)
80207be2:	7061                	c.lui	zero,0xffff8
80207be4:	203a                	fld	ft0,392(sp)
80207be6:	2578305b          	.insn	4, 0x2578305b
80207bea:	3830                	fld	fa2,112(s0)
80207bec:	2078                	fld	fa4,192(s0)
80207bee:	202d                	.insn	2, 0x202d
80207bf0:	7830                	ld	a2,112(s0)
80207bf2:	3025                	.insn	2, 0x3025
80207bf4:	7838                	ld	a4,112(s0)
80207bf6:	0a5d                	addi	s4,s4,23
	...
80207c00:	6564                	ld	s1,200(a0)
80207c02:	2076                	fld	ft0,344(sp)
80207c04:	3d21                	addiw	s10,s10,-24
80207c06:	5220                	lw	s0,96(a2)
80207c08:	5f54                	lw	a3,60(a4)
80207c0a:	554e                	lw	a0,240(sp)
80207c0c:	4c4c                	lw	a1,28(s0)
80207c0e:	0000                	unimp
80207c10:	7472                	ld	s0,312(sp)
80207c12:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
80207c18:	5f74                	lw	a3,124(a4)
80207c1a:	5f746567          	.insn	4, 0x5f746567
80207c1e:	7974                	ld	a3,240(a0)
80207c20:	6570                	ld	a2,200(a0)
80207c22:	2628                	fld	fa0,72(a2)
80207c24:	6564                	ld	s1,200(a0)
80207c26:	2d76                	fld	fs10,344(sp)
80207c28:	703e                	.insn	2, 0x703e
80207c2a:	7261                	lui	tp,0xffff8
80207c2c:	6e65                	lui	t3,0x19
80207c2e:	2974                	fld	fa3,208(a0)
80207c30:	3d20                	fld	fs0,120(a0)
80207c32:	203d                	.insn	2, 0x203d
80207c34:	5452                	lw	s0,52(sp)
80207c36:	4f5f 6a62 6365      	.insn	6, 0x63656a624f5f
80207c3c:	5f74                	lw	a3,124(a4)
80207c3e:	73616c43          	fmadd.d	fs8,ft2,fs6,fa4,unknown
80207c42:	65445f73          	csrrwi	t5,0x654,8
80207c46:	6976                	ld	s2,344(sp)
80207c48:	00006563          	bltu	zero,zero,80207c52 <rt_system_timer_thread_init+0xafa>
80207c4c:	0000                	unimp
80207c4e:	0000                	unimp
80207c50:	7472                	ld	s0,312(sp)
80207c52:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
80207c58:	5f74                	lw	a3,124(a4)
80207c5a:	7369                	lui	t1,0xffffa
80207c5c:	735f 7379 6574      	.insn	6, 0x65747379735f
80207c62:	6f6d                	lui	t5,0x1b
80207c64:	6a62                	ld	s4,24(sp)
80207c66:	6365                	lui	t1,0x19
80207c68:	2874                	fld	fa3,208(s0)
80207c6a:	6426                	ld	s0,72(sp)
80207c6c:	7665                	lui	a2,0xffff9
80207c6e:	3e2d                	addiw	t3,t3,-21 # 18feb <__text_size+0xfc8b>
80207c70:	6170                	ld	a2,192(a0)
80207c72:	6572                	ld	a0,280(sp)
80207c74:	746e                	ld	s0,248(sp)
80207c76:	0029                	c.nop	10
80207c78:	6f54                	ld	a3,152(a4)
80207c7a:	6920                	ld	s0,80(a0)
80207c7c:	696e                	ld	s2,216(sp)
80207c7e:	6974                	ld	a3,208(a0)
80207c80:	6c61                	lui	s8,0x18
80207c82:	7a69                	lui	s4,0xffffa
80207c84:	2065                	.insn	2, 0x2065
80207c86:	6564                	ld	s1,200(a0)
80207c88:	6976                	ld	s2,344(sp)
80207c8a:	253a6563          	bltu	s4,s3,80207ed4 <rt_system_timer_thread_init+0xd7c>
80207c8e:	61662073          	csrs	0x616,a2
80207c92:	6c69                	lui	s8,0x1a
80207c94:	6465                	lui	s0,0x19
80207c96:	202e                	fld	ft0,200(sp)
80207c98:	6854                	ld	a3,144(s0)
80207c9a:	2065                	.insn	2, 0x2065
80207c9c:	7265                	lui	tp,0xffff9
80207c9e:	6f72                	ld	t5,280(sp)
80207ca0:	2072                	fld	ft0,280(sp)
80207ca2:	65646f63          	bltu	s0,s6,80208300 <rt_system_timer_thread_init+0x11a8>
80207ca6:	6920                	ld	s0,80(a0)
80207ca8:	64252073          	csrs	0x642,a0
80207cac:	0000                	unimp
80207cae:	0000                	unimp
80207cb0:	6e72656b          	.insn	4, 0x6e72656b
80207cb4:	6c65                	lui	s8,0x19
80207cb6:	642e                	ld	s0,200(sp)
80207cb8:	7665                	lui	a2,0xffff9
80207cba:	6369                	lui	t1,0x1a
80207cbc:	0065                	c.nop	25
80207cbe:	0000                	unimp
80207cc0:	6564                	ld	s1,200(a0)
80207cc2:	2d76                	fld	fs10,344(sp)
80207cc4:	723e                	ld	tp,488(sp)
80207cc6:	6665                	lui	a2,0x19
80207cc8:	635f 756f 746e      	.insn	6, 0x746e756f635f
80207cce:	2120                	fld	fs0,64(a0)
80207cd0:	203d                	.insn	2, 0x203d
80207cd2:	0030                	addi	a2,sp,8
80207cd4:	0000                	unimp
80207cd6:	0000                	unimp
80207cd8:	2d73706f          	j	8023f7ae <__bss_end+0x2989e>
80207cdc:	633e                	ld	t1,456(sp)
80207cde:	7570                	ld	a2,232(a0)
80207ce0:	6974                	ld	a3,208(a0)
80207ce2:	656d                	lui	a0,0x1b
80207ce4:	675f 7465 6572      	.insn	6, 0x65727465675f
80207cea:	3d212073          	csrs	0x3d2,sp
80207cee:	5220                	lw	s0,96(a2)
80207cf0:	5f54                	lw	a3,60(a4)
80207cf2:	554e                	lw	a0,240(sp)
80207cf4:	4c4c                	lw	a1,28(s0)
80207cf6:	0000                	unimp
80207cf8:	2d73706f          	j	8023f7ce <__bss_end+0x298be>
80207cfc:	633e                	ld	t1,456(sp)
80207cfe:	7570                	ld	a2,232(a0)
80207d00:	6974                	ld	a3,208(a0)
80207d02:	656d                	lui	a0,0x1b
80207d04:	675f 7465 6974      	.insn	6, 0x69747465675f
80207d0a:	656d                	lui	a0,0x1b
80207d0c:	2120                	fld	fs0,64(a0)
80207d0e:	203d                	.insn	2, 0x203d
80207d10:	5452                	lw	s0,52(sp)
80207d12:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80207d18:	706d6f63          	bltu	s10,t1,80208436 <rt_system_timer_thread_init+0x12de>
80207d1c:	656c                	ld	a1,200(a0)
80207d1e:	6974                	ld	a3,208(a0)
80207d20:	21206e6f          	jal	t3,8020df32 <__stack_cpu0+0xa72>
80207d24:	203d                	.insn	2, 0x203d
80207d26:	5452                	lw	s0,52(sp)
80207d28:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80207d2e:	0000                	unimp
80207d30:	7546                	ld	a0,112(sp)
80207d32:	636e                	ld	t1,216(sp)
80207d34:	6974                	ld	a3,208(a0)
80207d36:	255b6e6f          	jal	t3,802be78a <__bss_end+0xa887a>
80207d3a:	203a5d73          	csrrwi	s10,0x203,20
80207d3e:	65686373          	csrrsi	t1,hviprio1h,16
80207d42:	7564                	ld	s1,232(a0)
80207d44:	656c                	ld	a1,200(a0)
80207d46:	2072                	fld	ft0,280(sp)
80207d48:	7369                	lui	t1,0xffffa
80207d4a:	6e20                	ld	s0,88(a2)
80207d4c:	6120746f          	jal	s0,8020f35e <__stack_cpu0+0x1e9e>
80207d50:	6176                	ld	sp,344(sp)
80207d52:	6c69                	lui	s8,0x1a
80207d54:	6261                	lui	tp,0x18
80207d56:	656c                	ld	a1,200(a0)
80207d58:	000a                	c.slli	zero,0x2
80207d5a:	0000                	unimp
80207d5c:	0000                	unimp
80207d5e:	0000                	unimp
80207d60:	7546                	ld	a0,112(sp)
80207d62:	636e                	ld	t1,216(sp)
80207d64:	6974                	ld	a3,208(a0)
80207d66:	255b6e6f          	jal	t3,802be7ba <__bss_end+0xa88aa>
80207d6a:	73205d73          	csrrwi	s10,mhpmevent18h,0
80207d6e:	6168                	ld	a0,192(a0)
80207d70:	6c6c                	ld	a1,216(s0)
80207d72:	6e20                	ld	s0,88(a2)
80207d74:	6220746f          	jal	s0,8020f396 <__stack_cpu0+0x1ed6>
80207d78:	2065                	.insn	2, 0x2065
80207d7a:	7375                	lui	t1,0xffffd
80207d7c:	6465                	lui	s0,0x19
80207d7e:	6220                	ld	s0,64(a2)
80207d80:	6665                	lui	a2,0x19
80207d82:	2065726f          	jal	tp,8025ef88 <__bss_end+0x49078>
80207d86:	65686373          	csrrsi	t1,hviprio1h,16
80207d8a:	7564                	ld	s1,232(a0)
80207d8c:	656c                	ld	a1,200(a0)
80207d8e:	2072                	fld	ft0,280(sp)
80207d90:	72617473          	csrrci	s0,mhpmevent6h,2
80207d94:	0a74                	addi	a3,sp,284
80207d96:	0000                	unimp
80207d98:	7546                	ld	a0,112(sp)
80207d9a:	636e                	ld	t1,216(sp)
80207d9c:	6974                	ld	a3,208(a0)
80207d9e:	255b6e6f          	jal	t3,802be7f2 <__bss_end+0xa88e2>
80207da2:	73205d73          	csrrwi	s10,mhpmevent18h,0
80207da6:	6168                	ld	a0,192(a0)
80207da8:	6c6c                	ld	a1,216(s0)
80207daa:	6e20                	ld	s0,88(a2)
80207dac:	6220746f          	jal	s0,8020f3ce <__stack_cpu0+0x1f0e>
80207db0:	2065                	.insn	2, 0x2065
80207db2:	7375                	lui	t1,0xffffd
80207db4:	6465                	lui	s0,0x19
80207db6:	6920                	ld	s0,80(a0)
80207db8:	206e                	fld	ft0,216(sp)
80207dba:	5349                	li	t1,-14
80207dbc:	0a52                	slli	s4,s4,0x14
80207dbe:	0000                	unimp
80207dc0:	5452                	lw	s0,52(sp)
80207dc2:	435f 4d4f 4c50      	.insn	6, 0x4c504d4f435f
80207dc8:	5445                	li	s0,-15
80207dca:	4f49                	li	t5,18
80207dcc:	5f4e                	lw	t5,240(sp)
80207dce:	4854                	lw	a3,20(s0)
80207dd0:	4552                	lw	a0,20(sp)
80207dd2:	4441                	li	s0,16
80207dd4:	6328                	ld	a0,64(a4)
80207dd6:	6c706d6f          	jal	s10,8020ec9c <__stack_cpu0+0x17dc>
80207dda:	7465                	lui	s0,0xffff9
80207ddc:	6f69                	lui	t5,0x1a
80207dde:	296e                	fld	fs2,216(sp)
80207de0:	3d20                	fld	fs0,120(a0)
80207de2:	203d                	.insn	2, 0x203d
80207de4:	5452                	lw	s0,52(sp)
80207de6:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80207dec:	0000                	unimp
80207dee:	0000                	unimp
80207df0:	6572                	ld	a0,280(sp)
80207df2:	746c7573          	csrrci	a0,0x746,24
80207df6:	2120                	fld	fs0,64(a0)
80207df8:	203d                	.insn	2, 0x203d
80207dfa:	5452                	lw	s0,52(sp)
80207dfc:	455f 4b4f 0000      	.insn	6, 0x4b4f455f
80207e02:	0000                	unimp
80207e04:	0000                	unimp
80207e06:	0000                	unimp
80207e08:	7571                	lui	a0,0xffffc
80207e0a:	7565                	lui	a0,0xffff9
80207e0c:	2065                	.insn	2, 0x2065
80207e0e:	3d21                	addiw	s10,s10,-24
80207e10:	5220                	lw	s0,96(a2)
80207e12:	5f54                	lw	a3,60(a4)
80207e14:	554e                	lw	a0,240(sp)
80207e16:	4c4c                	lw	a1,28(s0)
	...
80207e20:	657a6973          	csrrsi	s2,hviprio2h,20
80207e24:	3e20                	fld	fs0,120(a2)
80207e26:	3020                	fld	fs0,96(s0)
	...
80207e30:	7571                	lui	a0,0xffffc
80207e32:	7565                	lui	a0,0xffff9
80207e34:	2d65                	addiw	s10,s10,25
80207e36:	6d3e                	ld	s10,456(sp)
80207e38:	6761                	lui	a4,0x18
80207e3a:	6369                	lui	t1,0x1a
80207e3c:	3d20                	fld	fs0,120(a0)
80207e3e:	203d                	.insn	2, 0x203d
80207e40:	4144                	lw	s1,4(a0)
80207e42:	4154                	lw	a3,4(a0)
80207e44:	5551                	li	a0,-12
80207e46:	5545                	li	a0,-15
80207e48:	5f45                	li	t5,-15
80207e4a:	414d                	li	sp,19
80207e4c:	00434947          	fmsub.s	fs2,ft6,ft4,ft0,rmm
80207e50:	6164                	ld	s1,192(a0)
80207e52:	6174                	ld	a3,192(a0)
80207e54:	705f 7274 2120      	.insn	6, 0x21207274705f
80207e5a:	203d                	.insn	2, 0x203d
80207e5c:	5452                	lw	s0,52(sp)
80207e5e:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80207e64:	0000                	unimp
80207e66:	0000                	unimp
80207e68:	657a6973          	csrrsi	s2,hviprio2h,20
80207e6c:	2120                	fld	fs0,64(a0)
80207e6e:	203d                	.insn	2, 0x203d
80207e70:	5452                	lw	s0,52(sp)
80207e72:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80207e78:	7872                	ld	a6,312(sp)
80207e7a:	665f 6669 206f      	.insn	6, 0x206f6669665f
80207e80:	3d21                	addiw	s10,s10,-24
80207e82:	5220                	lw	s0,96(a2)
80207e84:	5f54                	lw	a3,60(a4)
80207e86:	554e                	lw	a0,240(sp)
80207e88:	4c4c                	lw	a1,28(s0)
80207e8a:	0000                	unimp
80207e8c:	0000                	unimp
80207e8e:	0000                	unimp
80207e90:	7872                	ld	a6,312(sp)
80207e92:	645f 616d 2120      	.insn	6, 0x2120616d645f
80207e98:	203d                	.insn	2, 0x203d
80207e9a:	5452                	lw	s0,52(sp)
80207e9c:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80207ea2:	0000                	unimp
80207ea4:	0000                	unimp
80207ea6:	0000                	unimp
80207ea8:	7874                	ld	a3,240(s0)
80207eaa:	665f 6669 206f      	.insn	6, 0x206f6669665f
80207eb0:	3d21                	addiw	s10,s10,-24
80207eb2:	5220                	lw	s0,96(a2)
80207eb4:	5f54                	lw	a3,60(a4)
80207eb6:	554e                	lw	a0,240(sp)
80207eb8:	4c4c                	lw	a1,28(s0)
80207eba:	0000                	unimp
80207ebc:	0000                	unimp
80207ebe:	0000                	unimp
80207ec0:	7874                	ld	a3,240(s0)
80207ec2:	645f 616d 2120      	.insn	6, 0x2120616d645f
80207ec8:	203d                	.insn	2, 0x203d
80207eca:	5452                	lw	s0,52(sp)
80207ecc:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80207ed2:	0000                	unimp
80207ed4:	0000                	unimp
80207ed6:	0000                	unimp
80207ed8:	7874                	ld	a3,240(s0)
80207eda:	2120                	fld	fs0,64(a0)
80207edc:	203d                	.insn	2, 0x203d
80207ede:	5452                	lw	s0,52(sp)
80207ee0:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80207ee6:	0000                	unimp
80207ee8:	7328                	ld	a0,96(a4)
80207eea:	7265                	lui	tp,0xffff9
80207eec:	6169                	addi	sp,sp,208
80207eee:	206c                	fld	fa1,192(s0)
80207ef0:	3d21                	addiw	s10,s10,-24
80207ef2:	5220                	lw	s0,96(a2)
80207ef4:	5f54                	lw	a3,60(a4)
80207ef6:	554e                	lw	a0,240(sp)
80207ef8:	4c4c                	lw	a1,28(s0)
80207efa:	2029                	.insn	2, 0x2029
80207efc:	2626                	fld	fa2,72(sp)
80207efe:	2820                	fld	fs0,80(s0)
80207f00:	6164                	ld	s1,192(a0)
80207f02:	6174                	ld	a3,192(a0)
80207f04:	2120                	fld	fs0,64(a0)
80207f06:	203d                	.insn	2, 0x203d
80207f08:	5452                	lw	s0,52(sp)
80207f0a:	4e5f 4c55 294c      	.insn	6, 0x294c4c554e5f
	...
80207f18:	69726573          	csrrsi	a0,0x697,4
80207f1c:	6c61                	lui	s8,0x18
80207f1e:	3e2d                	addiw	t3,t3,-21
80207f20:	2d73706f          	j	8023f9f6 <__bss_end+0x29ae6>
80207f24:	643e                	ld	s0,456(sp)
80207f26:	616d                	addi	sp,sp,240
80207f28:	745f 6172 736e      	.insn	6, 0x736e6172745f
80207f2e:	696d                	lui	s2,0x1b
80207f30:	2074                	fld	fa3,192(s0)
80207f32:	3d21                	addiw	s10,s10,-24
80207f34:	5220                	lw	s0,96(a2)
80207f36:	5f54                	lw	a3,60(a4)
80207f38:	554e                	lw	a0,240(sp)
80207f3a:	4c4c                	lw	a1,28(s0)
80207f3c:	0000                	unimp
80207f3e:	0000                	unimp
80207f40:	656c                	ld	a1,200(a0)
80207f42:	206e                	fld	ft0,216(sp)
80207f44:	3d3c                	fld	fa5,120(a0)
80207f46:	7220                	ld	s0,96(a2)
80207f48:	5f74                	lw	a3,124(a4)
80207f4a:	6d64                	ld	s1,216(a0)
80207f4c:	5f61                	li	t5,-8
80207f4e:	636c6163          	bltu	s8,s6,80208570 <rt_system_timer_thread_init+0x1418>
80207f52:	725f 6365 6576      	.insn	6, 0x65766365725f
80207f58:	5f64                	lw	s1,124(a4)
80207f5a:	656c                	ld	a1,200(a0)
80207f5c:	286e                	fld	fa6,216(sp)
80207f5e:	69726573          	csrrsi	a0,0x697,4
80207f62:	6c61                	lui	s8,0x18
80207f64:	0029                	c.nop	10
80207f66:	0000                	unimp
80207f68:	69726573          	csrrsi	a0,0x697,4
80207f6c:	6c61                	lui	s8,0x18
80207f6e:	2120                	fld	fs0,64(a0)
80207f70:	203d                	.insn	2, 0x203d
80207f72:	5452                	lw	s0,52(sp)
80207f74:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80207f7a:	0000                	unimp
80207f7c:	0000                	unimp
80207f7e:	0000                	unimp
80207f80:	69726573          	csrrsi	a0,0x697,4
80207f84:	6c61                	lui	s8,0x18
80207f86:	3e2d                	addiw	t3,t3,-21
80207f88:	6170                	ld	a2,192(a0)
80207f8a:	6572                	ld	a0,280(sp)
80207f8c:	746e                	ld	s0,248(sp)
80207f8e:	722e                	ld	tp,232(sp)
80207f90:	5f78                	lw	a4,124(a4)
80207f92:	6e69                	lui	t3,0x1a
80207f94:	6964                	ld	s1,208(a0)
80207f96:	65746163          	bltu	s0,s7,802085d8 <rt_system_timer_thread_init+0x1480>
80207f9a:	2120                	fld	fs0,64(a0)
80207f9c:	203d                	.insn	2, 0x203d
80207f9e:	5452                	lw	s0,52(sp)
80207fa0:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80207fa6:	0000                	unimp
80207fa8:	7472                	ld	s0,312(sp)
80207faa:	695f 746e 7265      	.insn	6, 0x7265746e695f
80207fb0:	7572                	ld	a0,312(sp)
80207fb2:	7470                	ld	a2,232(s0)
80207fb4:	675f 7465 6e5f      	.insn	6, 0x6e5f7465675f
80207fba:	7365                	lui	t1,0xffff9
80207fbc:	2874                	fld	fa3,208(s0)
80207fbe:	2029                	.insn	2, 0x2029
80207fc0:	203e                	fld	ft0,456(sp)
80207fc2:	0030                	addi	a2,sp,8
80207fc4:	0000                	unimp
80207fc6:	0000                	unimp
80207fc8:	6e69                	lui	t3,0x1a
80207fca:	7469                	lui	s0,0xffffa
80207fcc:	6169                	addi	sp,sp,208
80207fce:	696c                	ld	a1,208(a0)
80207fd0:	657a                	ld	a0,408(sp)
80207fd2:	2520                	fld	fs0,72(a0)
80207fd4:	00000073          	ecall
80207fd8:	253a                	fld	fa0,392(sp)
80207fda:	2064                	fld	fs1,192(s0)
80207fdc:	6f64                	ld	s1,216(a4)
80207fde:	656e                	ld	a0,216(sp)
80207fe0:	000a                	c.slli	zero,0x2
80207fe2:	0000                	unimp
80207fe4:	0000                	unimp
80207fe6:	0000                	unimp
80207fe8:	6f64                	ld	s1,216(a4)
80207fea:	6320                	ld	s0,64(a4)
80207fec:	6f706d6f          	jal	s10,8020eee2 <__stack_cpu0+0x1a22>
80207ff0:	656e                	ld	a0,216(sp)
80207ff2:	746e                	ld	s0,248(sp)
80207ff4:	6e692073          	csrs	0x6e6,s2
80207ff8:	7469                	lui	s0,0xffffa
80207ffa:	6169                	addi	sp,sp,208
80207ffc:	696c                	ld	a1,208(a0)
80207ffe:	617a                	ld	sp,408(sp)
80208000:	6974                	ld	a3,208(a0)
80208002:	0a2e6e6f          	jal	t3,802ee0a4 <__bss_end+0xd8194>
80208006:	0000                	unimp
80208008:	616d                	addi	sp,sp,240
8020800a:	6e69                	lui	t3,0x1a
8020800c:	0000                	unimp
8020800e:	0000                	unimp
80208010:	6974                	ld	a3,208(a0)
80208012:	2064                	fld	fs1,192(s0)
80208014:	3d21                	addiw	s10,s10,-24
80208016:	5220                	lw	s0,96(a2)
80208018:	5f54                	lw	a3,60(a4)
8020801a:	554e                	lw	a0,240(sp)
8020801c:	4c4c                	lw	a1,28(s0)
8020801e:	0000                	unimp
80208020:	6974                	ld	a3,208(a0)
80208022:	6c64                	ld	s1,216(s0)
80208024:	2565                	addiw	a0,a0,25 # ffff9019 <__bss_end+0x7fde3109>
80208026:	0064                	addi	s1,sp,12
80208028:	206d6573          	csrrsi	a0,0x206,26
8020802c:	3d21                	addiw	s10,s10,-24
8020802e:	5220                	lw	s0,96(a2)
80208030:	5f54                	lw	a3,60(a4)
80208032:	554e                	lw	a0,240(sp)
80208034:	4c4c                	lw	a1,28(s0)
80208036:	0000                	unimp
80208038:	7472                	ld	s0,312(sp)
8020803a:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
80208040:	5f74                	lw	a3,124(a4)
80208042:	5f746567          	.insn	4, 0x5f746567
80208046:	7974                	ld	a3,240(a0)
80208048:	6570                	ld	a2,200(a0)
8020804a:	2628                	fld	fa0,72(a2)
8020804c:	2d6d6573          	csrrsi	a0,0x2d6,26
80208050:	703e                	.insn	2, 0x703e
80208052:	7261                	lui	tp,0xffff8
80208054:	6e65                	lui	t3,0x19
80208056:	2e74                	fld	fa3,216(a2)
80208058:	6170                	ld	a2,192(a0)
8020805a:	6572                	ld	a0,280(sp)
8020805c:	746e                	ld	s0,248(sp)
8020805e:	2029                	.insn	2, 0x2029
80208060:	3d3d                	addiw	s10,s10,-17
80208062:	5220                	lw	s0,96(a2)
80208064:	5f54                	lw	a3,60(a4)
80208066:	656a624f          	.insn	4, 0x656a624f
8020806a:	435f7463          	bgeu	t5,s5,80208492 <rt_system_timer_thread_init+0x133a>
8020806e:	616c                	ld	a1,192(a0)
80208070:	535f7373          	csrrci	t1,0x535,30
80208074:	6d65                	lui	s10,0x19
80208076:	7061                	c.lui	zero,0xffff8
80208078:	6f68                	ld	a0,216(a4)
8020807a:	6572                	ld	a0,280(sp)
8020807c:	0000                	unimp
8020807e:	0000                	unimp
80208080:	70737573          	csrrci	a0,0x707,6
80208084:	6c5f 7369 2074      	.insn	6, 0x207473696c5f
8020808a:	3d21                	addiw	s10,s10,-24 # 18fe8 <__text_size+0xfc88>
8020808c:	5220                	lw	s0,96(a2)
8020808e:	5f54                	lw	a3,60(a4)
80208090:	554e                	lw	a0,240(sp)
80208092:	4c4c                	lw	a1,28(s0)
80208094:	0000                	unimp
80208096:	0000                	unimp
80208098:	756d                	lui	a0,0xffffb
8020809a:	6574                	ld	a3,200(a0)
8020809c:	2078                	fld	fa4,192(s0)
8020809e:	3d21                	addiw	s10,s10,-24
802080a0:	5220                	lw	s0,96(a2)
802080a2:	5f54                	lw	a3,60(a4)
802080a4:	554e                	lw	a0,240(sp)
802080a6:	4c4c                	lw	a1,28(s0)
	...
802080b0:	7472                	ld	s0,312(sp)
802080b2:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
802080b8:	5f74                	lw	a3,124(a4)
802080ba:	5f746567          	.insn	4, 0x5f746567
802080be:	7974                	ld	a3,240(a0)
802080c0:	6570                	ld	a2,200(a0)
802080c2:	2628                	fld	fa0,72(a2)
802080c4:	756d                	lui	a0,0xffffb
802080c6:	6574                	ld	a3,200(a0)
802080c8:	2d78                	fld	fa4,216(a0)
802080ca:	703e                	.insn	2, 0x703e
802080cc:	7261                	lui	tp,0xffff8
802080ce:	6e65                	lui	t3,0x19
802080d0:	2e74                	fld	fa3,216(a2)
802080d2:	6170                	ld	a2,192(a0)
802080d4:	6572                	ld	a0,280(sp)
802080d6:	746e                	ld	s0,248(sp)
802080d8:	2029                	.insn	2, 0x2029
802080da:	3d3d                	addiw	s10,s10,-17
802080dc:	5220                	lw	s0,96(a2)
802080de:	5f54                	lw	a3,60(a4)
802080e0:	656a624f          	.insn	4, 0x656a624f
802080e4:	435f7463          	bgeu	t5,s5,8020850c <rt_system_timer_thread_init+0x13b4>
802080e8:	616c                	ld	a1,192(a0)
802080ea:	4d5f7373          	csrrci	t1,0x4d5,30
802080ee:	7475                	lui	s0,0xffffd
802080f0:	7865                	lui	a6,0xffff9
802080f2:	0000                	unimp
802080f4:	0000                	unimp
802080f6:	0000                	unimp
802080f8:	756d                	lui	a0,0xffffb
802080fa:	6574                	ld	a3,200(a0)
802080fc:	2d78                	fld	fa4,216(a0)
802080fe:	6f3e                	ld	t5,456(sp)
80208100:	72656e77          	.insn	4, 0x72656e77
80208104:	3d20                	fld	fs0,120(a0)
80208106:	203d                	.insn	2, 0x203d
80208108:	6874                	ld	a3,208(s0)
8020810a:	6572                	ld	a0,280(sp)
8020810c:	6461                	lui	s0,0x18
8020810e:	0000                	unimp
80208110:	756d                	lui	a0,0xffffb
80208112:	6574                	ld	a3,200(a0)
80208114:	2d78                	fld	fa4,216(a0)
80208116:	6f3e                	ld	t5,456(sp)
80208118:	72656e77          	.insn	4, 0x72656e77
8020811c:	2120                	fld	fs0,64(a0)
8020811e:	203d                	.insn	2, 0x203d
80208120:	6874                	ld	a3,208(s0)
80208122:	6572                	ld	a0,280(sp)
80208124:	6461                	lui	s0,0x18
80208126:	0000                	unimp
80208128:	6176                	ld	sp,344(sp)
8020812a:	756c                	ld	a1,232(a0)
8020812c:	2065                	.insn	2, 0x2065
8020812e:	203c                	fld	fa5,64(s0)
80208130:	7830                	ld	a2,112(s0)
80208132:	3031                	.insn	2, 0x3031
80208134:	3030                	fld	fa2,96(s0)
80208136:	5530                	lw	a2,104(a0)
	...
80208140:	6628                	ld	a0,72(a2)
80208142:	616c                	ld	a1,192(a0)
80208144:	3d3d2067          	.insn	4, 0x3d3d2067
80208148:	5220                	lw	s0,96(a2)
8020814a:	5f54                	lw	a3,60(a4)
8020814c:	5049                	c.li	zero,-14
8020814e:	4c465f43          	.insn	4, 0x4c465f43
80208152:	4741                	li	a4,16
80208154:	465f 4649 294f      	.insn	6, 0x294f4649465f
8020815a:	7c20                	ld	s0,120(s0)
8020815c:	207c                	fld	fa5,192(s0)
8020815e:	6628                	ld	a0,72(a2)
80208160:	616c                	ld	a1,192(a0)
80208162:	3d3d2067          	.insn	4, 0x3d3d2067
80208166:	5220                	lw	s0,96(a2)
80208168:	5f54                	lw	a3,60(a4)
8020816a:	5049                	c.li	zero,-14
8020816c:	4c465f43          	.insn	4, 0x4c465f43
80208170:	4741                	li	a4,16
80208172:	505f 4952 294f      	.insn	6, 0x294f4952505f
	...
80208180:	7472                	ld	s0,312(sp)
80208182:	735f 6863 6465      	.insn	6, 0x64656863735f
80208188:	745f 7268 6165      	.insn	6, 0x61657268745f
8020818e:	5f64                	lw	s1,124(a4)
80208190:	7369                	lui	t1,0xffffa
80208192:	735f 7375 6570      	.insn	6, 0x65707375735f
80208198:	646e                	ld	s0,216(sp)
8020819a:	6465                	lui	s0,0x19
8020819c:	6e28                	ld	a0,88(a2)
8020819e:	7865                	lui	a6,0xffff9
802081a0:	5f74                	lw	a3,124(a4)
802081a2:	6874                	ld	a3,208(s0)
802081a4:	6572                	ld	a0,280(sp)
802081a6:	6461                	lui	s0,0x18
802081a8:	0029                	c.nop	10
802081aa:	0000                	unimp
802081ac:	0000                	unimp
802081ae:	0000                	unimp
802081b0:	4e28                	lw	a0,88(a2)
802081b2:	4c55                	li	s8,21
802081b4:	294c                	fld	fa1,144(a0)
802081b6:	0000                	unimp
802081b8:	200a                	fld	ft0,128(sp)
802081ba:	205c                	fld	fa5,128(s0)
802081bc:	207c                	fld	fa5,192(s0)
802081be:	00000a2f          	.insn	4, 0x0a2f
802081c2:	0000                	unimp
802081c4:	0000                	unimp
802081c6:	0000                	unimp
802081c8:	202d                	.insn	2, 0x202d
802081ca:	5452                	lw	s0,52(sp)
802081cc:	2d20                	fld	fs0,88(a0)
802081ce:	2020                	fld	fs0,64(s0)
802081d0:	2020                	fld	fs0,64(s0)
802081d2:	5420                	lw	s0,104(s0)
802081d4:	7268                	ld	a0,224(a2)
802081d6:	6165                	addi	sp,sp,112
802081d8:	2064                	fld	fs1,192(s0)
802081da:	7265704f          	fnmadd.d	ft0,fa0,ft6,fa4
802081de:	7461                	lui	s0,0xffff8
802081e0:	6e69                	lui	t3,0x1a
802081e2:	79532067          	.insn	4, 0x79532067
802081e6:	6d657473          	csrrci	s0,0x6d6,10
802081ea:	000a                	c.slli	zero,0x2
802081ec:	0000                	unimp
802081ee:	0000                	unimp
802081f0:	3731                	addiw	a4,a4,-20 # 17fec <__text_size+0xec8c>
802081f2:	313a                	fld	ft2,424(sp)
802081f4:	3a30                	fld	fa2,112(a2)
802081f6:	3531                	addiw	a0,a0,-20 # ffffafec <__bss_end+0x7fde50dc>
	...
80208200:	754a                	ld	a0,176(sp)
80208202:	206c                	fld	fa1,192(s0)
80208204:	3131                	addiw	sp,sp,-20
80208206:	3220                	fld	fs0,96(a2)
80208208:	3230                	fld	fa2,96(a2)
8020820a:	0034                	addi	a3,sp,8
8020820c:	0000                	unimp
8020820e:	0000                	unimp
80208210:	2f20                	fld	fs0,88(a4)
80208212:	7c20                	ld	s0,120(s0)
80208214:	5c20                	lw	s0,120(s0)
80208216:	2020                	fld	fs0,64(s0)
80208218:	2020                	fld	fs0,64(s0)
8020821a:	2520                	fld	fs0,72(a0)
8020821c:	2e64                	fld	fs1,216(a2)
8020821e:	6425                	lui	s0,0x9
80208220:	252e                	fld	fa0,200(sp)
80208222:	2064                	fld	fs1,192(s0)
80208224:	7562                	ld	a0,56(sp)
80208226:	6c69                	lui	s8,0x1a
80208228:	2064                	fld	fs1,192(s0)
8020822a:	7325                	lui	t1,0xfffe9
8020822c:	2520                	fld	fs0,72(a0)
8020822e:	00000a73          	.insn	4, 0x0a73
80208232:	0000                	unimp
80208234:	0000                	unimp
80208236:	0000                	unimp
80208238:	3220                	fld	fs0,96(a2)
8020823a:	3030                	fld	fa2,96(s0)
8020823c:	2036                	fld	ft0,328(sp)
8020823e:	202d                	.insn	2, 0x202d
80208240:	3032                	fld	ft0,296(sp)
80208242:	3432                	fld	fs0,296(sp)
80208244:	4320                	lw	s0,64(a4)
80208246:	7279706f          	j	802a016c <__bss_end+0x8a25c>
8020824a:	6769                	lui	a4,0x1a
8020824c:	7468                	ld	a0,232(s0)
8020824e:	6220                	ld	s0,64(a2)
80208250:	2079                	.insn	2, 0x2079
80208252:	5452                	lw	s0,52(sp)
80208254:	542d                	li	s0,-21
80208256:	7268                	ld	a0,224(a2)
80208258:	6165                	addi	sp,sp,112
8020825a:	2064                	fld	fs1,192(s0)
8020825c:	6574                	ld	a3,200(a0)
8020825e:	6d61                	lui	s10,0x18
80208260:	000a                	c.slli	zero,0x2
80208262:	0000                	unimp
80208264:	0000                	unimp
80208266:	0000                	unimp
80208268:	6c70                	ld	a2,216(s0)
8020826a:	6165                	addi	sp,sp,112
8020826c:	75206573          	csrrsi	a0,0x752,0
80208270:	203a6573          	csrrsi	a0,0x203,20
80208274:	6461                	lui	s0,0x18
80208276:	7264                	ld	s1,224(a2)
80208278:	6c32                	ld	s8,264(sp)
8020827a:	6e69                	lui	t3,0x1a
8020827c:	2065                	.insn	2, 0x2065
8020827e:	652d                	lui	a0,0xb
80208280:	7220                	ld	s0,96(a2)
80208282:	7474                	ld	a3,232(s0)
80208284:	7268                	ld	a0,224(a2)
80208286:	6165                	addi	sp,sp,112
80208288:	2e64                	fld	fs1,216(a2)
8020828a:	6c65                	lui	s8,0x19
8020828c:	2066                	fld	ft0,88(sp)
8020828e:	612d                	addi	sp,sp,224
80208290:	2d20                	fld	fs0,88(a0)
80208292:	0066                	c.slli	zero,0x19
80208294:	0000                	unimp
80208296:	0000                	unimp
80208298:	3020                	fld	fs0,96(s0)
8020829a:	2578                	fld	fa4,200(a0)
8020829c:	786c                	ld	a1,240(s0)
8020829e:	0000                	unimp
802082a0:	2528                	fld	fa0,72(a0)
802082a2:	61202973          	csrr	s2,0x612
802082a6:	72657373          	csrrci	t1,mhpmevent6h,10
802082aa:	6974                	ld	a3,208(a0)
802082ac:	66206e6f          	jal	t3,8020e90e <__stack_cpu0+0x144e>
802082b0:	6961                	lui	s2,0x18
802082b2:	656c                	ld	a1,200(a0)
802082b4:	2064                	fld	fs1,192(s0)
802082b6:	7461                	lui	s0,0xffff8
802082b8:	6620                	ld	s0,72(a2)
802082ba:	6e75                	lui	t3,0x1d
802082bc:	6f697463          	bgeu	s2,s6,802089a4 <Interrupt_Name+0x4>
802082c0:	3a6e                	fld	fs4,248(sp)
802082c2:	7325                	lui	t1,0xfffe9
802082c4:	202c                	fld	fa1,64(s0)
802082c6:	696c                	ld	a1,208(a0)
802082c8:	656e                	ld	a0,216(sp)
802082ca:	6e20                	ld	s0,88(a2)
802082cc:	6d75                	lui	s10,0x1d
802082ce:	6562                	ld	a0,24(sp)
802082d0:	3a72                	fld	fs4,312(sp)
802082d2:	6425                	lui	s0,0x9
802082d4:	0a20                	addi	s0,sp,280
802082d6:	0000                	unimp
802082d8:	6e65                	lui	t3,0x19
802082da:	5f64                	lw	s1,124(a4)
802082dc:	6c61                	lui	s8,0x18
802082de:	6769                	lui	a4,0x1a
802082e0:	206e                	fld	ft0,216(sp)
802082e2:	203e                	fld	ft0,456(sp)
802082e4:	6562                	ld	a0,24(sp)
802082e6:	5f6e6967          	.insn	4, 0x5f6e6967
802082ea:	6c61                	lui	s8,0x18
802082ec:	6769                	lui	a4,0x1a
802082ee:	006e                	c.slli	zero,0x1b
802082f0:	6568                	ld	a0,200(a0)
802082f2:	7061                	c.lui	zero,0xffff8
802082f4:	0000                	unimp
802082f6:	0000                	unimp
802082f8:	656c                	ld	a1,200(a0)
802082fa:	6576                	ld	a0,344(sp)
802082fc:	206c                	fld	fa1,192(s0)
802082fe:	3d3d                	addiw	s10,s10,-17 # 1cfef <__text_size+0x13c8f>
80208300:	5220                	lw	s0,96(a2)
80208302:	5f54                	lw	a3,60(a4)
80208304:	4f45                	li	t5,17
80208306:	656d004b          	.insn	4, 0x656d004b
8020830a:	686d                	lui	a6,0x1b
8020830c:	6165                	addi	sp,sp,112
8020830e:	2070                	fld	fa2,192(s0)
80208310:	3d21                	addiw	s10,s10,-24
80208312:	5220                	lw	s0,96(a2)
80208314:	5f54                	lw	a3,60(a4)
80208316:	554e                	lw	a0,240(sp)
80208318:	4c4c                	lw	a1,28(s0)
8020831a:	0000                	unimp
8020831c:	0000                	unimp
8020831e:	0000                	unimp
80208320:	7472                	ld	s0,312(sp)
80208322:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
80208328:	5f74                	lw	a3,124(a4)
8020832a:	5f746567          	.insn	4, 0x5f746567
8020832e:	7974                	ld	a3,240(a0)
80208330:	6570                	ld	a2,200(a0)
80208332:	2628                	fld	fa0,72(a2)
80208334:	6568                	ld	a0,200(a0)
80208336:	7061                	c.lui	zero,0xffff8
80208338:	3e2d                	addiw	t3,t3,-21 # 18feb <__text_size+0xfc8b>
8020833a:	6170                	ld	a2,192(a0)
8020833c:	6572                	ld	a0,280(sp)
8020833e:	746e                	ld	s0,248(sp)
80208340:	2029                	.insn	2, 0x2029
80208342:	3d3d                	addiw	s10,s10,-17
80208344:	5220                	lw	s0,96(a2)
80208346:	5f54                	lw	a3,60(a4)
80208348:	656a624f          	.insn	4, 0x656a624f
8020834c:	435f7463          	bgeu	t5,s5,80208774 <rt_system_timer_thread_init+0x161c>
80208350:	616c                	ld	a1,192(a0)
80208352:	4d5f7373          	csrrci	t1,0x4d5,30
80208356:	6d65                	lui	s10,0x19
80208358:	6548                	ld	a0,136(a0)
8020835a:	7061                	c.lui	zero,0xffff8
8020835c:	0000                	unimp
8020835e:	0000                	unimp
80208360:	7472                	ld	s0,312(sp)
80208362:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
80208368:	5f74                	lw	a3,124(a4)
8020836a:	7369                	lui	t1,0xffffa
8020836c:	735f 7379 6574      	.insn	6, 0x65747379735f
80208372:	6f6d                	lui	t5,0x1b
80208374:	6a62                	ld	s4,24(sp)
80208376:	6365                	lui	t1,0x19
80208378:	2874                	fld	fa3,208(s0)
8020837a:	6826                	ld	a6,72(sp)
8020837c:	6165                	addi	sp,sp,112
8020837e:	2d70                	fld	fa2,216(a0)
80208380:	703e                	.insn	2, 0x703e
80208382:	7261                	lui	tp,0xffff8
80208384:	6e65                	lui	t3,0x19
80208386:	2974                	fld	fa3,208(a0)
	...
80208390:	6568                	ld	a0,200(a0)
80208392:	7061                	c.lui	zero,0xffff8
80208394:	2120                	fld	fs0,64(a0)
80208396:	203d                	.insn	2, 0x203d
80208398:	5452                	lw	s0,52(sp)
8020839a:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
802083a0:	6828                	ld	a0,80(s0)
802083a2:	6165                	addi	sp,sp,112
802083a4:	6564                	ld	s1,200(a0)
802083a6:	5f72                	lw	t5,60(sp)
802083a8:	7470                	ld	a2,232(s0)
802083aa:	2d72                	fld	fs10,280(sp)
802083ac:	6e3e                	ld	t3,456(sp)
802083ae:	7865                	lui	a6,0xffff9
802083b0:	2d74                	fld	fa3,216(a0)
802083b2:	6d3e                	ld	s10,456(sp)
802083b4:	6761                	lui	a4,0x18
802083b6:	6369                	lui	t1,0x1a
802083b8:	2620                	fld	fs0,72(a2)
802083ba:	5220                	lw	s0,96(a2)
802083bc:	5f54                	lw	a3,60(a4)
802083be:	454d                	li	a0,19
802083c0:	484d                	li	a6,19
802083c2:	4145                	li	sp,17
802083c4:	5f50                	lw	a2,60(a4)
802083c6:	414d                	li	sp,19
802083c8:	20294b53          	.insn	4, 0x20294b53
802083cc:	3d3d                	addiw	s10,s10,-17 # 18fef <__text_size+0xfc8f>
802083ce:	5220                	lw	s0,96(a2)
802083d0:	5f54                	lw	a3,60(a4)
802083d2:	454d                	li	a0,19
802083d4:	484d                	li	a6,19
802083d6:	4145                	li	sp,17
802083d8:	5f50                	lw	a2,60(a4)
802083da:	414d                	li	sp,19
802083dc:	00434947          	fmsub.s	fs2,ft6,ft4,ft0,rmm
802083e0:	6568                	ld	a0,200(a0)
802083e2:	6461                	lui	s0,0x18
802083e4:	7265                	lui	tp,0xffff9
802083e6:	705f 7274 3e2d      	.insn	6, 0x3e2d7274705f
802083ec:	616d                	addi	sp,sp,240
802083ee:	20636967          	.insn	4, 0x20636967
802083f2:	3d3d                	addiw	s10,s10,-17
802083f4:	2820                	fld	fs0,80(s0)
802083f6:	5452                	lw	s0,52(sp)
802083f8:	4d5f 4d45 4548      	.insn	6, 0x45484d454d5f
802083fe:	5041                	c.li	zero,-16
80208400:	4d5f 4741 4349      	.insn	6, 0x434947414d5f
80208406:	7c20                	ld	s0,120(s0)
80208408:	5220                	lw	s0,96(a2)
8020840a:	5f54                	lw	a3,60(a4)
8020840c:	454d                	li	a0,19
8020840e:	484d                	li	a6,19
80208410:	4145                	li	sp,17
80208412:	5f50                	lw	a2,60(a4)
80208414:	5355                	li	t1,-11
80208416:	4445                	li	s0,17
80208418:	0029                	c.nop	10
8020841a:	0000                	unimp
8020841c:	0000                	unimp
8020841e:	0000                	unimp
80208420:	6e69                	lui	t3,0x1a
80208422:	6f66                	ld	t5,88(sp)
80208424:	6d72                	ld	s10,280(sp)
80208426:	7461                	lui	s0,0xffff8
80208428:	6f69                	lui	t5,0x1a
8020842a:	206e                	fld	ft0,216(sp)
8020842c:	3d21                	addiw	s10,s10,-24
8020842e:	5220                	lw	s0,96(a2)
80208430:	5f54                	lw	a3,60(a4)
80208432:	554e                	lw	a0,240(sp)
80208434:	4c4c                	lw	a1,28(s0)
80208436:	0000                	unimp
80208438:	706d                	c.lui	zero,0xffffb
8020843a:	2120                	fld	fs0,64(a0)
8020843c:	203d                	.insn	2, 0x203d
8020843e:	5452                	lw	s0,52(sp)
80208440:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80208446:	0000                	unimp
80208448:	616e                	ld	sp,216(sp)
8020844a:	656d                	lui	a0,0x1b
8020844c:	2120                	fld	fs0,64(a0)
8020844e:	203d                	.insn	2, 0x203d
80208450:	5452                	lw	s0,52(sp)
80208452:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80208458:	72617473          	csrrci	s0,mhpmevent6h,2
8020845c:	2074                	fld	fa3,192(s0)
8020845e:	3d21                	addiw	s10,s10,-24
80208460:	5220                	lw	s0,96(a2)
80208462:	5f54                	lw	a3,60(a4)
80208464:	554e                	lw	a0,240(sp)
80208466:	4c4c                	lw	a1,28(s0)
	...
80208470:	657a6973          	csrrsi	s2,hviprio2h,20
80208474:	3e20                	fld	fs0,120(a2)
80208476:	3020                	fld	fs0,96(s0)
80208478:	2620                	fld	fs0,72(a2)
8020847a:	2026                	fld	ft0,72(sp)
8020847c:	6c62                	ld	s8,24(sp)
8020847e:	5f6b636f          	jal	t1,802bea74 <__bss_end+0xa8b64>
80208482:	657a6973          	csrrsi	s2,hviprio2h,20
80208486:	3e20                	fld	fs0,120(a2)
80208488:	3020                	fld	fs0,96(s0)
8020848a:	0000                	unimp
8020848c:	0000                	unimp
8020848e:	0000                	unimp
80208490:	6c62                	ld	s8,24(sp)
80208492:	5f6b636f          	jal	t1,802bea88 <__bss_end+0xa8b78>
80208496:	6e756f63          	bltu	a0,t2,80208b94 <__FUNCTION__.6+0x14>
8020849a:	2074                	fld	fa3,192(s0)
8020849c:	203e                	fld	ft0,456(sp)
8020849e:	2030                	fld	fa2,64(s0)
802084a0:	2626                	fld	fa2,72(sp)
802084a2:	6220                	ld	s0,64(a2)
802084a4:	6f6c                	ld	a1,216(a4)
802084a6:	735f6b63          	bltu	t5,s5,80208bdc <__FUNCTION__.2+0x4>
802084aa:	7a69                	lui	s4,0xffffa
802084ac:	2065                	.insn	2, 0x2065
802084ae:	203e                	fld	ft0,456(sp)
802084b0:	0030                	addi	a2,sp,8
802084b2:	0000                	unimp
802084b4:	0000                	unimp
802084b6:	0000                	unimp
802084b8:	206a626f          	jal	tp,802ae6be <__bss_end+0x987ae>
802084bc:	3d21                	addiw	s10,s10,-24
802084be:	6f20                	ld	s0,88(a4)
802084c0:	6a62                	ld	s4,24(sp)
802084c2:	6365                	lui	t1,0x19
802084c4:	0074                	addi	a3,sp,12
802084c6:	0000                	unimp
802084c8:	656a626f          	jal	tp,802aeb1e <__bss_end+0x98c0e>
802084cc:	21207463          	bgeu	zero,s2,802086d4 <rt_system_timer_thread_init+0x157c>
802084d0:	203d                	.insn	2, 0x203d
802084d2:	5452                	lw	s0,52(sp)
802084d4:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
802084da:	0000                	unimp
802084dc:	0000                	unimp
802084de:	0000                	unimp
802084e0:	2821                	addiw	a6,a6,8 # ffff9008 <__bss_end+0x7fde30f8>
802084e2:	656a626f          	jal	tp,802aeb38 <__bss_end+0x98c28>
802084e6:	3e2d7463          	bgeu	s10,sp,802088ce <__FUNCTION__.11+0x6>
802084ea:	7974                	ld	a3,240(a0)
802084ec:	6570                	ld	a2,200(a0)
802084ee:	2620                	fld	fs0,72(a2)
802084f0:	5220                	lw	s0,96(a2)
802084f2:	5f54                	lw	a3,60(a4)
802084f4:	656a624f          	.insn	4, 0x656a624f
802084f8:	435f7463          	bgeu	t5,s5,80208920 <__FUNCTION__.20>
802084fc:	616c                	ld	a1,192(a0)
802084fe:	535f7373          	csrrci	t1,0x535,30
80208502:	6174                	ld	a3,192(a0)
80208504:	6974                	ld	a3,208(a0)
80208506:	00002963          	.insn	4, 0x2963
8020850a:	0000                	unimp
8020850c:	0000                	unimp
8020850e:	0000                	unimp
80208510:	7270                	ld	a2,224(a2)
80208512:	6f69                	lui	t5,0x1a
80208514:	6972                	ld	s2,280(sp)
80208516:	7974                	ld	a3,240(a0)
80208518:	3c20                	fld	fs0,120(s0)
8020851a:	5220                	lw	s0,96(a2)
8020851c:	5f54                	lw	a3,60(a4)
8020851e:	4854                	lw	a3,20(s0)
80208520:	4552                	lw	a0,20(sp)
80208522:	4441                	li	s0,16
80208524:	505f 4952 524f      	.insn	6, 0x524f4952505f
8020852a:	5449                	li	s0,-14
8020852c:	5f59                	li	t5,-10
8020852e:	414d                	li	sp,19
80208530:	0058                	addi	a4,sp,4
80208532:	0000                	unimp
80208534:	0000                	unimp
80208536:	0000                	unimp
80208538:	6874                	ld	a3,208(s0)
8020853a:	6572                	ld	a0,280(sp)
8020853c:	6461                	lui	s0,0x18
8020853e:	2120                	fld	fs0,64(a0)
80208540:	203d                	.insn	2, 0x203d
80208542:	5452                	lw	s0,52(sp)
80208544:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
8020854a:	0000                	unimp
8020854c:	0000                	unimp
8020854e:	0000                	unimp
80208550:	6874                	ld	a3,208(s0)
80208552:	6572                	ld	a0,280(sp)
80208554:	6461                	lui	s0,0x18
80208556:	253a                	fld	fa0,392(sp)
80208558:	74732073          	csrs	0x747,t1
8020855c:	6361                	lui	t1,0x18
8020855e:	766f206b          	.insn	4, 0x766f206b
80208562:	7265                	lui	tp,0xffff9
80208564:	6c66                	ld	s8,88(sp)
80208566:	000a776f          	jal	a4,802af566 <__bss_end+0x99656>
8020856a:	0000                	unimp
8020856c:	0000                	unimp
8020856e:	0000                	unimp
80208570:	6e72656b          	.insn	4, 0x6e72656b
80208574:	6c65                	lui	s8,0x19
80208576:	732e                	ld	t1,232(sp)
80208578:	64656863          	bltu	a0,t1,80208bc8 <__FUNCTION__.0+0x10>
8020857c:	0000                	unimp
8020857e:	0000                	unimp
80208580:	6e726177          	.insn	4, 0x6e726177
80208584:	6e69                	lui	t3,0x1a
80208586:	25203a67          	.insn	4, 0x25203a67
8020858a:	74732073          	csrs	0x747,t1
8020858e:	6361                	lui	t1,0x18
80208590:	7369206b          	.insn	4, 0x7369206b
80208594:	6320                	ld	s0,64(a4)
80208596:	6f6c                	ld	a1,216(a4)
80208598:	74206573          	csrrsi	a0,0x742,0
8020859c:	6e65206f          	j	8025ac82 <__bss_end+0x44d72>
802085a0:	2064                	fld	fs1,192(s0)
802085a2:	7320666f          	jal	a2,8020ecd4 <__stack_cpu0+0x1814>
802085a6:	6174                	ld	a3,192(a0)
802085a8:	61206b63          	bltu	zero,s2,80208bbe <__FUNCTION__.0+0x6>
802085ac:	6464                	ld	s1,200(s0)
802085ae:	6572                	ld	a0,280(sp)
802085b0:	0a2e7373          	csrrci	t1,0xa2,28
802085b4:	0000                	unimp
802085b6:	0000                	unimp
802085b8:	6854                	ld	a3,144(s0)
802085ba:	2065                	.insn	2, 0x2065
802085bc:	6c61                	lui	s8,0x18
802085be:	6f6c                	ld	a1,216(a4)
802085c0:	69746163          	bltu	s0,s7,80208c42 <__FUNCTION__.8+0x2>
802085c4:	6f206e6f          	jal	t3,8020ecb6 <__stack_cpu0+0x17f6>
802085c8:	2066                	fld	ft0,88(sp)
802085ca:	6e676973          	csrrsi	s2,0x6e6,14
802085ce:	6c61                	lui	s8,0x18
802085d0:	6920                	ld	s0,80(a0)
802085d2:	666e                	ld	a2,216(sp)
802085d4:	6f6e206f          	j	802eacca <__bss_end+0xd4dba>
802085d8:	6564                	ld	s1,200(a0)
802085da:	6620                	ld	s0,72(a2)
802085dc:	6961                	lui	s2,0x18
802085de:	656c                	ld	a1,200(a0)
802085e0:	2e64                	fld	fs1,216(a2)
802085e2:	0000                	unimp
802085e4:	0000                	unimp
802085e6:	0000                	unimp
802085e8:	4e474953          	.insn	4, 0x4e474953
802085ec:	0000                	unimp
802085ee:	0000                	unimp
802085f0:	6e676973          	csrrsi	s2,0x6e6,14
802085f4:	6c61                	lui	s8,0x18
802085f6:	0000                	unimp
802085f8:	61657263          	bgeu	a0,s6,80208bfc <__FUNCTION__.3+0xc>
802085fc:	6574                	ld	a3,200(a0)
802085fe:	6d20                	ld	s0,88(a0)
80208600:	6d65                	lui	s10,0x19
80208602:	2079726f          	jal	tp,802a0008 <__bss_end+0x8a0f8>
80208606:	6f70                	ld	a2,216(a4)
80208608:	66206c6f          	jal	s8,8020ec6a <__stack_cpu0+0x17aa>
8020860c:	7320726f          	jal	tp,8020fd3e <__stack_cpu0+0x287e>
80208610:	6769                	lui	a4,0x1a
80208612:	616e                	ld	sp,216(sp)
80208614:	206c                	fld	fa1,192(s0)
80208616:	6e69                	lui	t3,0x1a
80208618:	6f66                	ld	t5,88(sp)
8020861a:	6620                	ld	s0,72(a2)
8020861c:	6961                	lui	s2,0x18
8020861e:	656c                	ld	a1,200(a0)
80208620:	2e64                	fld	fs1,216(a2)
80208622:	0000                	unimp
80208624:	0000                	unimp
80208626:	0000                	unimp
80208628:	7472                	ld	s0,312(sp)
8020862a:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
80208630:	5f74                	lw	a3,124(a4)
80208632:	5f746567          	.insn	4, 0x5f746567
80208636:	7974                	ld	a3,240(a0)
80208638:	6570                	ld	a2,200(a0)
8020863a:	2828                	fld	fa0,80(s0)
8020863c:	7472                	ld	s0,312(sp)
8020863e:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
80208644:	5f74                	lw	a3,124(a4)
80208646:	2974                	fld	fa3,208(a0)
80208648:	6874                	ld	a3,208(s0)
8020864a:	6572                	ld	a0,280(sp)
8020864c:	6461                	lui	s0,0x18
8020864e:	2029                	.insn	2, 0x2029
80208650:	3d3d                	addiw	s10,s10,-17 # 18fef <__text_size+0xfc8f>
80208652:	5220                	lw	s0,96(a2)
80208654:	5f54                	lw	a3,60(a4)
80208656:	656a624f          	.insn	4, 0x656a624f
8020865a:	435f7463          	bgeu	t5,s5,80208a82 <__rti_riscv_cputime_init_name+0x12>
8020865e:	616c                	ld	a1,192(a0)
80208660:	545f7373          	csrrci	t1,0x545,30
80208664:	7268                	ld	a0,224(a2)
80208666:	6165                	addi	sp,sp,112
80208668:	0064                	addi	s1,sp,12
8020866a:	0000                	unimp
8020866c:	0000                	unimp
8020866e:	0000                	unimp
80208670:	7472                	ld	s0,312(sp)
80208672:	735f 6863 6465      	.insn	6, 0x64656863735f
80208678:	745f 7268 6165      	.insn	6, 0x61657268745f
8020867e:	5f64                	lw	s1,124(a4)
80208680:	7369                	lui	t1,0xffffa
80208682:	735f 7375 6570      	.insn	6, 0x65707375735f
80208688:	646e                	ld	s0,216(sp)
8020868a:	6465                	lui	s0,0x19
8020868c:	7428                	ld	a0,104(s0)
8020868e:	7268                	ld	a0,224(a2)
80208690:	6165                	addi	sp,sp,112
80208692:	2964                	fld	fs1,208(a0)
80208694:	0000                	unimp
80208696:	0000                	unimp
80208698:	63617473          	csrrci	s0,0x636,2
8020869c:	74735f6b          	.insn	4, 0x74735f6b
802086a0:	7261                	lui	tp,0xffff8
802086a2:	2074                	fld	fa3,192(s0)
802086a4:	3d21                	addiw	s10,s10,-24
802086a6:	5220                	lw	s0,96(a2)
802086a8:	5f54                	lw	a3,60(a4)
802086aa:	554e                	lw	a0,240(sp)
802086ac:	4c4c                	lw	a1,28(s0)
802086ae:	0000                	unimp
802086b0:	6974                	ld	a3,208(a0)
802086b2:	21206b63          	bltu	zero,s2,802088c8 <__FUNCTION__.11>
802086b6:	203d                	.insn	2, 0x203d
802086b8:	0030                	addi	a2,sp,8
802086ba:	0000                	unimp
802086bc:	0000                	unimp
802086be:	0000                	unimp
802086c0:	6874                	ld	a3,208(s0)
802086c2:	6572                	ld	a0,280(sp)
802086c4:	6461                	lui	s0,0x18
802086c6:	2120                	fld	fs0,64(a0)
802086c8:	203d                	.insn	2, 0x203d
802086ca:	7472                	ld	s0,312(sp)
802086cc:	745f 7268 6165      	.insn	6, 0x61657268745f
802086d2:	5f64                	lw	s1,124(a4)
802086d4:	666c6573          	csrrsi	a0,0x666,24
802086d8:	2928                	fld	fa0,80(a0)
802086da:	7c20                	ld	s0,120(s0)
802086dc:	207c                	fld	fa5,192(s0)
802086de:	7472                	ld	s0,312(sp)
802086e0:	635f 6972 6974      	.insn	6, 0x69746972635f
802086e6:	5f6c6163          	bltu	s8,s6,80208cc8 <__FUNCTION__.16>
802086ea:	656c                	ld	a1,200(a0)
802086ec:	6576                	ld	a0,344(sp)
802086ee:	286c                	fld	fa1,208(s0)
802086f0:	0029                	c.nop	10
802086f2:	0000                	unimp
802086f4:	0000                	unimp
802086f6:	0000                	unimp
802086f8:	6874                	ld	a3,208(s0)
802086fa:	6572                	ld	a0,280(sp)
802086fc:	6461                	lui	s0,0x18
802086fe:	3d20                	fld	fs0,120(a0)
80208700:	203d                	.insn	2, 0x203d
80208702:	7472                	ld	s0,312(sp)
80208704:	745f 7268 6165      	.insn	6, 0x61657268745f
8020870a:	5f64                	lw	s1,124(a4)
8020870c:	666c6573          	csrrsi	a0,0x666,24
80208710:	2928                	fld	fa0,80(a0)
80208712:	0000                	unimp
80208714:	0000                	unimp
80208716:	0000                	unimp
80208718:	5228                	lw	a0,96(a2)
8020871a:	5f54                	lw	a3,60(a4)
8020871c:	45484353          	.insn	4, 0x45484353
80208720:	5f44                	lw	s1,60(a4)
80208722:	28585443          	fmadd.s	fs0,fa6,ft5,ft5,unknown
80208726:	6874                	ld	a3,208(s0)
80208728:	6572                	ld	a0,280(sp)
8020872a:	6461                	lui	s0,0x18
8020872c:	2e29                	addiw	t3,t3,10 # 1a00a <__text_size+0x10caa>
8020872e:	74617473          	csrrci	s0,0x746,2
80208732:	2620                	fld	fs0,72(a2)
80208734:	5220                	lw	s0,96(a2)
80208736:	5f54                	lw	a3,60(a4)
80208738:	4854                	lw	a3,20(s0)
8020873a:	4552                	lw	a0,20(sp)
8020873c:	4441                	li	s0,16
8020873e:	535f 4154 5f54      	.insn	6, 0x5f544154535f
80208744:	414d                	li	sp,19
80208746:	20294b53          	.insn	4, 0x20294b53
8020874a:	3d3d                	addiw	s10,s10,-17
8020874c:	5220                	lw	s0,96(a2)
8020874e:	5f54                	lw	a3,60(a4)
80208750:	4854                	lw	a3,20(s0)
80208752:	4552                	lw	a0,20(sp)
80208754:	4441                	li	s0,16
80208756:	495f 494e 0054      	.insn	6, 0x0054494e495f
8020875c:	0000                	unimp
8020875e:	0000                	unimp
80208760:	6974                	ld	a3,208(a0)
80208762:	656d                	lui	a0,0x1b
80208764:	2072                	fld	ft0,280(sp)
80208766:	3d21                	addiw	s10,s10,-24
80208768:	5220                	lw	s0,96(a2)
8020876a:	5f54                	lw	a3,60(a4)
8020876c:	554e                	lw	a0,240(sp)
8020876e:	4c4c                	lw	a1,28(s0)
	...
80208778:	6974                	ld	a3,208(a0)
8020877a:	656d                	lui	a0,0x1b
8020877c:	2074756f          	jal	a0,80250182 <__bss_end+0x3a272>
80208780:	3d21                	addiw	s10,s10,-24
80208782:	5220                	lw	s0,96(a2)
80208784:	5f54                	lw	a3,60(a4)
80208786:	554e                	lw	a0,240(sp)
80208788:	4c4c                	lw	a1,28(s0)
8020878a:	0000                	unimp
8020878c:	0000                	unimp
8020878e:	0000                	unimp
80208790:	6974                	ld	a3,208(a0)
80208792:	656d                	lui	a0,0x1b
80208794:	3c20                	fld	fs0,120(s0)
80208796:	5220                	lw	s0,96(a2)
80208798:	5f54                	lw	a3,60(a4)
8020879a:	4954                	lw	a3,20(a0)
8020879c:	4d5f4b43          	.insn	4, 0x4d5f4b43
802087a0:	5841                	li	a6,-16
802087a2:	2f20                	fld	fs0,88(a4)
802087a4:	3220                	fld	fs0,96(a2)
802087a6:	0000                	unimp
802087a8:	7472                	ld	s0,312(sp)
802087aa:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
802087b0:	5f74                	lw	a3,124(a4)
802087b2:	5f746567          	.insn	4, 0x5f746567
802087b6:	7974                	ld	a3,240(a0)
802087b8:	6570                	ld	a2,200(a0)
802087ba:	2628                	fld	fa0,72(a2)
802087bc:	6974                	ld	a3,208(a0)
802087be:	656d                	lui	a0,0x1b
802087c0:	2d72                	fld	fs10,280(sp)
802087c2:	703e                	.insn	2, 0x703e
802087c4:	7261                	lui	tp,0xffff8
802087c6:	6e65                	lui	t3,0x19
802087c8:	2974                	fld	fa3,208(a0)
802087ca:	3d20                	fld	fs0,120(a0)
802087cc:	203d                	.insn	2, 0x203d
802087ce:	5452                	lw	s0,52(sp)
802087d0:	4f5f 6a62 6365      	.insn	6, 0x63656a624f5f
802087d6:	5f74                	lw	a3,124(a4)
802087d8:	73616c43          	fmadd.d	fs8,ft2,fs6,fa4,unknown
802087dc:	69545f73          	csrrwi	t5,0x695,8
802087e0:	656d                	lui	a0,0x1b
802087e2:	0072                	c.slli	zero,0x1c
802087e4:	0000                	unimp
802087e6:	0000                	unimp
802087e8:	7472                	ld	s0,312(sp)
802087ea:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
802087f0:	5f74                	lw	a3,124(a4)
802087f2:	7369                	lui	t1,0xffffa
802087f4:	735f 7379 6574      	.insn	6, 0x65747379735f
802087fa:	6f6d                	lui	t5,0x1b
802087fc:	6a62                	ld	s4,24(sp)
802087fe:	6365                	lui	t1,0x19
80208800:	2874                	fld	fa3,208(s0)
80208802:	7426                	ld	s0,104(sp)
80208804:	6d69                	lui	s10,0x1a
80208806:	7265                	lui	tp,0xffff9
80208808:	3e2d                	addiw	t3,t3,-21 # 18feb <__text_size+0xfc8b>
8020880a:	6170                	ld	a2,192(a0)
8020880c:	6572                	ld	a0,280(sp)
8020880e:	746e                	ld	s0,248(sp)
80208810:	0029                	c.nop	10
80208812:	0000                	unimp
80208814:	0000                	unimp
80208816:	0000                	unimp
80208818:	7472                	ld	s0,312(sp)
8020881a:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
80208820:	5f74                	lw	a3,124(a4)
80208822:	5f746567          	.insn	4, 0x5f746567
80208826:	7974                	ld	a3,240(a0)
80208828:	6570                	ld	a2,200(a0)
8020882a:	2628                	fld	fa0,72(a2)
8020882c:	6874                	ld	a3,208(s0)
8020882e:	6572                	ld	a0,280(sp)
80208830:	6461                	lui	s0,0x18
80208832:	3e2d                	addiw	t3,t3,-21
80208834:	6170                	ld	a2,192(a0)
80208836:	6572                	ld	a0,280(sp)
80208838:	746e                	ld	s0,248(sp)
8020883a:	2029                	.insn	2, 0x2029
8020883c:	3d3d                	addiw	s10,s10,-17 # 19fef <__text_size+0x10c8f>
8020883e:	5220                	lw	s0,96(a2)
80208840:	5f54                	lw	a3,60(a4)
80208842:	656a624f          	.insn	4, 0x656a624f
80208846:	435f7463          	bgeu	t5,s5,80208c6e <__FUNCTION__.9+0xe>
8020884a:	616c                	ld	a1,192(a0)
8020884c:	545f7373          	csrrci	t1,0x545,30
80208850:	7268                	ld	a0,224(a2)
80208852:	6165                	addi	sp,sp,112
80208854:	0064                	addi	s1,sp,12
80208856:	0000                	unimp
80208858:	2a28                	fld	fa0,80(a2)
8020885a:	7228                	ld	a0,96(a2)
8020885c:	5f74                	lw	a3,124(a4)
8020885e:	6974                	ld	a3,208(a0)
80208860:	745f6b63          	bltu	t5,t0,80208fb6 <__lowest_bit_bitmap+0xde>
80208864:	2a20                	fld	fs0,80(a2)
80208866:	6129                	addi	sp,sp,192
80208868:	6772                	ld	a4,280(sp)
8020886a:	2029                	.insn	2, 0x2029
8020886c:	203c                	fld	fa5,64(s0)
8020886e:	5452                	lw	s0,52(sp)
80208870:	545f 4349 5f4b      	.insn	6, 0x5f4b4349545f
80208876:	414d                	li	sp,19
80208878:	2058                	fld	fa4,128(s0)
8020887a:	0032202f          	amoadd.w	zero,gp,(tp)
	...

80208880 <__rti_ulog_console_backend_init_name>:
80208880:	676f6c75 6e6f635f 656c6f73 6361625f     ulog_console_bac
80208890:	646e656b 696e695f 00000074 00000000     kend_init.......

802088a0 <__FUNCTION__.3>:
802088a0:	676f6c75 6361625f 646e656b 6765725f     ulog_backend_reg
802088b0:	65747369 00000072                       ister...

802088b8 <__FUNCTION__.7>:
802088b8:	676f6c75 756f765f 74757074 00000000     ulog_voutput....

802088c8 <__FUNCTION__.11>:
802088c8:	676f6c75 7865685f 726f665f 6574616d     ulog_hex_formate
802088d8:	00000072 00000000                       r.......

802088e0 <__FUNCTION__.14>:
802088e0:	676f6c75 726f665f 6574616d 00000072     ulog_formater...

802088f0 <__FUNCTION__.16>:
802088f0:	676f6c75 6961745f 6f665f6c 74616d72     ulog_tail_format
80208900:	00007265 00000000                       er......

80208908 <__FUNCTION__.19>:
80208908:	676f6c75 6165685f 6f665f64 74616d72     ulog_head_format
80208918:	00007265 00000000                       er......

80208920 <__FUNCTION__.20>:
80208920:	676f6c75 7274735f 00797063 00000000     ulog_strcpy.....

80208930 <__rti_ulog_init_name>:
80208930:	676f6c75 696e695f 00000074 00000000     ulog_init.......

80208940 <color_output_info>:
80208940:	802072d8 00000000 00000000 802072e0     .r ..........r .
80208950:	802072e8 00000000 802072f0 00000000     .r ......r .....

80208960 <level_output_info>:
80208960:	802072f8 00000000 00000000 80207300     .r ..........s .
80208970:	80207308 00000000 80207310 80207318     .s ......s ..s .

80208980 <__FUNCTION__.0>:
80208980:	5f696273 5f746573 656d6974 00000072     sbi_set_timer...

80208990 <__FUNCTION__.0>:
80208990:	646e6168 745f656c 00706172 00000000     handle_trap.....

802089a0 <Interrupt_Name>:
802089a0:	80207968 80207980 802079a0 802079b0     hy ..y ..y ..y .
802089b0:	802079c0 802079d8 802079f8 80207a08     .y ..y ..y ..z .
802089c0:	80207a18 80207a30 80207a50 80207a60     .z .0z .Pz .`z .

802089d0 <Exception_Name>:
802089d0:	80207a70 80207a90 80207ab0 80207ac8     pz ..z ..z ..z .
802089e0:	80207ad8 80207af0 80207b08 80207b28     .z ..z ..{ .({ .
802089f0:	80207b40 80207b60 80207a50 80207a60     @{ .`{ .Pz .`z .
80208a00:	80207b80 80207b98 80207ba8 80207bb8     .{ ..{ ..{ ..{ .

80208a10 <_uart_ops>:
80208a10:	80201786 802017fc 8020178a 802017a8     .. ... ... ... .
	...

80208a28 <__FUNCTION__.3>:
80208a28:	645f7472 63697665 72775f65 00657469     rt_device_write.

80208a38 <__FUNCTION__.5>:
80208a38:	645f7472 63697665 6c635f65 0065736f     rt_device_close.

80208a48 <__FUNCTION__.6>:
80208a48:	645f7472 63697665 706f5f65 00006e65     rt_device_open..

80208a58 <__FUNCTION__.0>:
80208a58:	636f6c63 70635f6b 65735f75 73706f74     clock_cpu_setops
	...

80208a70 <__rti_riscv_cputime_init_name>:
80208a70:	63736972 70635f76 6d697475 6e695f65     riscv_cputime_in
80208a80:	00007469 00000000                       it......

80208a88 <_riscv_ops>:
80208a88:	80201bcc 80201bd6 00000000 00000000     .. ... .........

80208a98 <__FUNCTION__.0>:
80208a98:	635f7472 6c706d6f 6f697465 61775f6e     rt_completion_wa
80208aa8:	7075656b 5f79625f 6e727265 0000006f     keup_by_errno...

80208ab8 <__FUNCTION__.1>:
80208ab8:	635f7472 6c706d6f 6f697465 61775f6e     rt_completion_wa
80208ac8:	665f7469 7367616c 00000000 00000000     it_flags........

80208ad8 <__FUNCTION__.2>:
80208ad8:	635f7472 6c706d6f 6f697465 6e695f6e     rt_completion_in
80208ae8:	00007469 00000000                       it......

80208af0 <__FUNCTION__.0>:
80208af0:	645f7472 5f617461 75657571 656c5f65     rt_data_queue_le
80208b00:	0000006e 00000000                       n.......

80208b08 <__FUNCTION__.1>:
80208b08:	645f7472 5f617461 75657571 65645f65     rt_data_queue_de
80208b18:	74696e69 00000000                       init....

80208b20 <__FUNCTION__.2>:
80208b20:	645f7472 5f617461 75657571 65725f65     rt_data_queue_re
80208b30:	00746573 00000000                       set.....

80208b38 <__FUNCTION__.3>:
80208b38:	645f7472 5f617461 75657571 65705f65     rt_data_queue_pe
80208b48:	00006b65 00000000                       ek......

80208b50 <__FUNCTION__.4>:
80208b50:	645f7472 5f617461 75657571 6f705f65     rt_data_queue_po
80208b60:	00000070 00000000                       p.......

80208b68 <__FUNCTION__.5>:
80208b68:	645f7472 5f617461 75657571 75705f65     rt_data_queue_pu
80208b78:	00006873 00000000                       sh......

80208b80 <__FUNCTION__.6>:
80208b80:	645f7472 5f617461 75657571 6e695f65     rt_data_queue_in
80208b90:	00007469 ffff9bf4 ffff9bd8 ffff9bfe     it..............
80208ba0:	ffff9c5e ffff9c3a ffff9c5e ffff9c5e     ^...:...^...^...
80208bb0:	ffff9c5e ffff9c4e                       ^...N...

80208bb8 <__FUNCTION__.0>:
80208bb8:	645f7472 725f616d 5f766365 61647075     rt_dma_recv_upda
80208bc8:	705f6574 695f7475 7865646e 00000000     te_put_index....

80208bd8 <__FUNCTION__.2>:
80208bd8:	685f7472 65735f77 6c616972 7273695f     rt_hw_serial_isr
	...

80208bf0 <__FUNCTION__.3>:
80208bf0:	735f7472 61697265 6e695f6c 00007469     rt_serial_init..

80208c00 <__FUNCTION__.4>:
80208c00:	735f7472 61697265 706f5f6c 00006e65     rt_serial_open..

80208c10 <__FUNCTION__.5>:
80208c10:	735f7472 61697265 6c635f6c 0065736f     rt_serial_close.

80208c20 <__FUNCTION__.7>:
80208c20:	645f7472 725f616d 5f766365 61647075     rt_dma_recv_upda
80208c30:	675f6574 695f7465 7865646e 00000000     te_get_index....

80208c40 <__FUNCTION__.8>:
80208c40:	7265735f 5f6c6169 6f666966 6c61635f     _serial_fifo_cal
80208c50:	65725f63 64657663 6e656c5f 00000000     c_recved_len....

80208c60 <__FUNCTION__.9>:
80208c60:	7265735f 5f6c6169 5f616d64 00007872     _serial_dma_rx..

80208c70 <__FUNCTION__.10>:
80208c70:	7265735f 5f6c6169 5f746e69 00007872     _serial_int_rx..

80208c80 <__FUNCTION__.11>:
80208c80:	735f7472 61697265 65725f6c 00006461     rt_serial_read..

80208c90 <__FUNCTION__.13>:
80208c90:	7265735f 5f6c6169 5f746e69 00007874     _serial_int_tx..

80208ca0 <__FUNCTION__.14>:
80208ca0:	735f7472 61697265 72775f6c 00657469     rt_serial_write.

80208cb0 <__FUNCTION__.15>:
80208cb0:	735f7472 61697265 6f635f6c 6f72746e     rt_serial_contro
80208cc0:	0000006c 00000000                       l.......

80208cc8 <__FUNCTION__.16>:
80208cc8:	685f7472 65735f77 6c616972 6765725f     rt_hw_serial_reg
80208cd8:	65747369 00000072                       ister...

80208ce0 <serial_ops>:
80208ce0:	8020280a 80202862 80202f56 80202c80     .( .b( .V/ .., .
80208cf0:	80202b1c 80202720                       .+ . ' .

80208cf8 <__FUNCTION__.0>:
80208cf8:	745f7472 5f6b6369 72636e69 65736165     rt_tick_increase
	...

80208d10 <__FUNCTION__.0>:
80208d10:	615f7472 696c7070 69746163 695f6e6f     rt_application_i
80208d20:	0074696e 00000000                       nit.....

80208d28 <__rti_rti_board_end_name>:
80208d28:	5f697472 72616f62 6e655f64 00000064     rti_board_end...

80208d38 <__rti_rti_board_start_name>:
80208d38:	5f697472 72616f62 74735f64 00747261     rti_board_start.

80208d48 <__rti_rti_start_name>:
80208d48:	5f697472 72617473 00000074 00000000     rti_start.......

80208d58 <__FUNCTION__.23>:
80208d58:	6d5f7472 78657475 6c65725f 65736165     rt_mutex_release
	...

80208d70 <__FUNCTION__.24>:
80208d70:	5f74725f 6574756d 61745f78 0000656b     _rt_mutex_take..

80208d80 <__FUNCTION__.31>:
80208d80:	6d5f7472 78657475 696e695f 00000074     rt_mutex_init...

80208d90 <__FUNCTION__.33>:
80208d90:	735f7472 725f6d65 61656c65 00006573     rt_sem_release..

80208da0 <__FUNCTION__.34>:
80208da0:	5f74725f 5f6d6573 656b6174 00000000     _rt_sem_take....

80208db0 <__FUNCTION__.38>:
80208db0:	735f7472 695f6d65 0074696e 00000000     rt_sem_init.....

80208dc0 <__FUNCTION__.39>:
80208dc0:	735f7472 5f707375 7473696c 716e655f     rt_susp_list_enq
80208dd0:	65756575 00000000                       ueue....

80208dd8 <__FUNCTION__.40>:
80208dd8:	735f7472 5f707375 7473696c 7165645f     rt_susp_list_deq
80208de8:	65756575 00000000 ffffbcae ffffba2c     ueue........,...
80208df8:	ffffba2c ffffba2c ffffba2c ffffba2c     ,...,...,...,...
80208e08:	ffffba2c ffffba2c ffffba2c ffffba2c     ,...,...,...,...
80208e18:	ffffba96 ffffbabc ffffbcb6 ffffbcbe     ................
80208e28:	ffffbcbe ffffbcbe ffffba2c ffffbcb6     ........,.......
80208e38:	ffffba2c ffffba2c ffffba2c ffffba2c     ,...,...,...,...
80208e48:	ffffba2c ffffbcaa ffffbc80 ffffba2c     ,...........,...
80208e58:	ffffba2c ffffbb8a ffffba2c ffffbcba     ,.......,.......
80208e68:	ffffba2c ffffba2c ffffbcb2 00000000     ,...,...........

80208e78 <small_digits.0>:
80208e78:	33323130 37363534 62613938 66656463     0123456789abcdef
	...

80208e90 <large_digits.1>:
80208e90:	33323130 37363534 42413938 46454443     0123456789ABCDEF
	...

80208ea8 <__FUNCTION__.0>:
80208ea8:	6165685f 6e755f70 6b636f6c 00000000     _heap_unlock....

80208eb8 <__FUNCTION__.1>:
80208eb8:	735f7472 65747379 65685f6d 695f7061     rt_system_heap_i
80208ec8:	5f74696e 656e6567 00636972 00000000     nit_generic.....

80208ed8 <__lowest_bit_bitmap>:
80208ed8:	00010000 00010002 00010003 00010002     ................
80208ee8:	00010004 00010002 00010003 00010002     ................
80208ef8:	00010005 00010002 00010003 00010002     ................
80208f08:	00010004 00010002 00010003 00010002     ................
80208f18:	00010006 00010002 00010003 00010002     ................
80208f28:	00010004 00010002 00010003 00010002     ................
80208f38:	00010005 00010002 00010003 00010002     ................
80208f48:	00010004 00010002 00010003 00010002     ................
80208f58:	00010007 00010002 00010003 00010002     ................
80208f68:	00010004 00010002 00010003 00010002     ................
80208f78:	00010005 00010002 00010003 00010002     ................
80208f88:	00010004 00010002 00010003 00010002     ................
80208f98:	00010006 00010002 00010003 00010002     ................
80208fa8:	00010004 00010002 00010003 00010002     ................
80208fb8:	00010005 00010002 00010003 00010002     ................
80208fc8:	00010004 00010002 00010003 00010002     ................

80208fd8 <__FUNCTION__.0>:
80208fd8:	6d656d5f 70616568 6c6c615f 0000636f     _memheap_alloc..

80208fe8 <__FUNCTION__.1>:
80208fe8:	6d5f7472 65686d65 665f7061 00656572     rt_memheap_free.

80208ff8 <__FUNCTION__.3>:
80208ff8:	6d5f7472 65686d65 615f7061 636f6c6c     rt_memheap_alloc
	...

80209010 <__FUNCTION__.5>:
80209010:	6d5f7472 65686d65 695f7061 0074696e     rt_memheap_init.

80209020 <__FUNCTION__.2>:
80209020:	6d5f7472 72635f70 65746165 00000000     rt_mp_create....

80209030 <__FUNCTION__.0>:
80209030:	6f5f7472 63656a62 69665f74 0000646e     rt_object_find..

80209040 <__FUNCTION__.1>:
80209040:	6f5f7472 63656a62 6f665f74 61655f72     rt_object_for_ea
80209050:	00006863 00000000                       ch......

80209058 <__FUNCTION__.2>:
80209058:	6f5f7472 63656a62 65675f74 79745f74     rt_object_get_ty
80209068:	00006570 00000000                       pe......

80209070 <__FUNCTION__.3>:
80209070:	6f5f7472 63656a62 73695f74 7379735f     rt_object_is_sys
80209080:	6f6d6574 63656a62 00000074 00000000     temobject.......

80209090 <__FUNCTION__.4>:
80209090:	6f5f7472 63656a62 65645f74 6574656c     rt_object_delete
	...

802090a8 <__FUNCTION__.5>:
802090a8:	6f5f7472 63656a62 6c615f74 61636f6c     rt_object_alloca
802090b8:	00006574 00000000                       te......

802090c0 <__FUNCTION__.6>:
802090c0:	6f5f7472 63656a62 65645f74 68636174     rt_object_detach
	...

802090d8 <__FUNCTION__.7>:
802090d8:	6f5f7472 63656a62 6e695f74 00007469     rt_object_init..

802090e8 <__FUNCTION__.0>:
802090e8:	735f7472 64656863 72656c75 6174735f     rt_scheduler_sta
802090f8:	635f6b63 6b636568 00000000 00000000     ck_check........

80209108 <__FUNCTION__.1>:
80209108:	735f7472 64656863 7268745f 5f646165     rt_sched_thread_
80209118:	6e616863 705f6567 726f6972 00797469     change_priority.

80209128 <__FUNCTION__.0>:
80209128:	735f7472 64656863 6d65725f 5f65766f     rt_sched_remove_
80209138:	65726874 00006461                       thread..

80209140 <__FUNCTION__.1>:
80209140:	735f7472 64656863 736e695f 5f747265     rt_sched_insert_
80209150:	65726874 00006461                       thread..

80209158 <__FUNCTION__.2>:
80209158:	735f7472 64656863 7268745f 5f646165     rt_sched_thread_
80209168:	74696e69 6972705f 00000076 00000000     init_priv.......

80209178 <__FUNCTION__.0>:
80209178:	735f7472 65747379 69735f6d 6c616e67     rt_system_signal
80209188:	696e695f 00000074                       _init...

80209190 <__FUNCTION__.0>:
80209190:	745f7472 61657268 65725f64 656d7573     rt_thread_resume
	...

802091a8 <__FUNCTION__.1>:
802091a8:	7268745f 5f646165 5f746573 70737573     _thread_set_susp
802091b8:	5f646e65 74617473 00000065 00000000     end_state.......

802091c8 <__FUNCTION__.2>:
802091c8:	745f7472 61657268 75735f64 6e657073     rt_thread_suspen
802091d8:	6f745f64 73696c5f 00000074 00000000     d_to_list.......

802091e8 <__FUNCTION__.5>:
802091e8:	7268745f 5f646165 65656c73 00000070     _thread_sleep...

802091f8 <__FUNCTION__.7>:
802091f8:	745f7472 61657268 72635f64 65746165     rt_thread_create
	...

80209210 <__FUNCTION__.9>:
80209210:	745f7472 61657268 6c635f64 0065736f     rt_thread_close.

80209220 <__FUNCTION__.10>:
80209220:	745f7472 61657268 74735f64 75747261     rt_thread_startu
80209230:	00000070 00000000                       p.......

80209238 <__FUNCTION__.11>:
80209238:	7268745f 5f646165 656d6974 0074756f     _thread_timeout.

80209248 <__FUNCTION__.12>:
80209248:	745f7472 61657268 6e695f64 00007469     rt_thread_init..
80209258:	ffffdcf2 ffffdcec ffffdd54 ffffdd60     ........T...`...
80209268:	ffffdd6a ffffdd7c ffffdd80 ffffdd84     j...|...........
80209278:	ffffdd88 ffffdd8c                       ........

80209280 <__FUNCTION__.0>:
80209280:	745f7472 72656d69 6568635f 00006b63     rt_timer_check..

80209290 <__FUNCTION__.1>:
80209290:	745f7472 72656d69 6e6f635f 6c6f7274     rt_timer_control
	...

802092a8 <__FUNCTION__.2>:
802092a8:	745f7472 72656d69 6f74735f 00000070     rt_timer_stop...

802092b8 <__FUNCTION__.4>:
802092b8:	745f7472 72656d69 6174735f 00007472     rt_timer_start..

802092c8 <__FUNCTION__.7>:
802092c8:	745f7472 72656d69 7465645f 00686361     rt_timer_detach.

802092d8 <__FUNCTION__.8>:
802092d8:	745f7472 72656d69 696e695f 00000074     rt_timer_init...

802092e8 <__rt_init_desc_rti_start>:
802092e8:	80208d48 802034d2                       H. ..4 .

802092f0 <__rt_init_desc_rti_board_start>:
802092f0:	80208d38 802034da                       8. ..4 .

802092f8 <__rt_init_desc_ulog_init>:
802092f8:	80208930 802005de                       0. ... .

80209300 <__rt_init_desc_riscv_cputime_init>:
80209300:	80208a70 80201bdc                       p. ... .

80209308 <__rt_init_desc_rti_board_end>:
80209308:	80208d28 802034de                       (. ..4 .

80209310 <__rt_init_desc_ulog_console_backend_init>:
80209310:	80208880 80200404                       .. ... .

80209318 <__rt_init_desc_rti_end>:
80209318:	80209358 802034d6                       X. ..4 .
