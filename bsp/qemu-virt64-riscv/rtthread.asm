
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
8020001c:	19028293          	addi	t0,t0,400 # 802091a8 <__text_end>
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
8020008e:	a4618193          	addi	gp,gp,-1466 # 80209ad0 <__global_pointer$>
80200092:	83018113          	addi	sp,gp,-2000 # 80209300 <__stack_start__>
80200096:	6291                	lui	t0,0x4
80200098:	9116                	add	sp,sp,t0
8020009a:	14001073          	csrw	sscratch,zero
8020009e:	196010ef          	jal	80201234 <init_bss>
802000a2:	0d4010ef          	jal	80201176 <sbi_init>
802000a6:	636010ef          	jal	802016dc <primary_cpu_entry>

802000aa <_never_return_here>:
802000aa:	a001                	j	802000aa <_never_return_here>

802000ac <_start_link_addr>:
802000ac:	80200000          	.word	0x80200000
802000b0:	00000000          	.word	0x00000000

Disassembly of section .text:

802000b8 <rt_hw_context_switch_to>:
802000b8:	00053103          	ld	sp,0(a0)
802000bc:	53a060ef          	jal	802065f6 <rt_thread_self>
802000c0:	84aa                	mv	s1,a0
802000c2:	6d82                	ld	s11,0(sp)
802000c4:	0111                	addi	sp,sp,4
802000c6:	100d9073          	csrw	sstatus,s11
802000ca:	6d82                	ld	s11,0(sp)
802000cc:	0111                	addi	sp,sp,4
802000ce:	6d02                	ld	s10,0(sp)
802000d0:	0111                	addi	sp,sp,4
802000d2:	6c82                	ld	s9,0(sp)
802000d4:	0111                	addi	sp,sp,4
802000d6:	6c02                	ld	s8,0(sp)
802000d8:	0111                	addi	sp,sp,4
802000da:	6b82                	ld	s7,0(sp)
802000dc:	0111                	addi	sp,sp,4
802000de:	6b02                	ld	s6,0(sp)
802000e0:	0111                	addi	sp,sp,4
802000e2:	6a82                	ld	s5,0(sp)
802000e4:	0111                	addi	sp,sp,4
802000e6:	6a02                	ld	s4,0(sp)
802000e8:	0111                	addi	sp,sp,4
802000ea:	6982                	ld	s3,0(sp)
802000ec:	0111                	addi	sp,sp,4
802000ee:	6902                	ld	s2,0(sp)
802000f0:	0111                	addi	sp,sp,4
802000f2:	6482                	ld	s1,0(sp)
802000f4:	0111                	addi	sp,sp,4
802000f6:	6402                	ld	s0,0(sp)
802000f8:	0111                	addi	sp,sp,4
802000fa:	6082                	ld	ra,0(sp)
802000fc:	0111                	addi	sp,sp,4
802000fe:	6202                	ld	tp,0(sp)
80200100:	0111                	addi	sp,sp,4
80200102:	14109073          	csrw	sepc,ra
80200106:	10200073          	sret

8020010a <rt_hw_context_switch>:
8020010a:	1171                	addi	sp,sp,-4
8020010c:	e012                	sd	tp,0(sp)
8020010e:	1171                	addi	sp,sp,-4
80200110:	e006                	sd	ra,0(sp)
80200112:	1171                	addi	sp,sp,-4
80200114:	e022                	sd	s0,0(sp)
80200116:	1171                	addi	sp,sp,-4
80200118:	e026                	sd	s1,0(sp)
8020011a:	1171                	addi	sp,sp,-4
8020011c:	e04a                	sd	s2,0(sp)
8020011e:	1171                	addi	sp,sp,-4
80200120:	e04e                	sd	s3,0(sp)
80200122:	1171                	addi	sp,sp,-4
80200124:	e052                	sd	s4,0(sp)
80200126:	1171                	addi	sp,sp,-4
80200128:	e056                	sd	s5,0(sp)
8020012a:	1171                	addi	sp,sp,-4
8020012c:	e05a                	sd	s6,0(sp)
8020012e:	1171                	addi	sp,sp,-4
80200130:	e05e                	sd	s7,0(sp)
80200132:	1171                	addi	sp,sp,-4
80200134:	e062                	sd	s8,0(sp)
80200136:	1171                	addi	sp,sp,-4
80200138:	e066                	sd	s9,0(sp)
8020013a:	1171                	addi	sp,sp,-4
8020013c:	e06a                	sd	s10,0(sp)
8020013e:	1171                	addi	sp,sp,-4
80200140:	e06e                	sd	s11,0(sp)
80200142:	10002df3          	csrr	s11,sstatus
80200146:	10000d13          	li	s10,256
8020014a:	01adedb3          	or	s11,s11,s10
8020014e:	1171                	addi	sp,sp,-4
80200150:	e06e                	sd	s11,0(sp)
80200152:	00253023          	sd	sp,0(a0)
80200156:	0005b103          	ld	sp,0(a1)
8020015a:	49c060ef          	jal	802065f6 <rt_thread_self>
8020015e:	84aa                	mv	s1,a0
80200160:	6d82                	ld	s11,0(sp)
80200162:	0111                	addi	sp,sp,4
80200164:	100d9073          	csrw	sstatus,s11
80200168:	6d82                	ld	s11,0(sp)
8020016a:	0111                	addi	sp,sp,4
8020016c:	6d02                	ld	s10,0(sp)
8020016e:	0111                	addi	sp,sp,4
80200170:	6c82                	ld	s9,0(sp)
80200172:	0111                	addi	sp,sp,4
80200174:	6c02                	ld	s8,0(sp)
80200176:	0111                	addi	sp,sp,4
80200178:	6b82                	ld	s7,0(sp)
8020017a:	0111                	addi	sp,sp,4
8020017c:	6b02                	ld	s6,0(sp)
8020017e:	0111                	addi	sp,sp,4
80200180:	6a82                	ld	s5,0(sp)
80200182:	0111                	addi	sp,sp,4
80200184:	6a02                	ld	s4,0(sp)
80200186:	0111                	addi	sp,sp,4
80200188:	6982                	ld	s3,0(sp)
8020018a:	0111                	addi	sp,sp,4
8020018c:	6902                	ld	s2,0(sp)
8020018e:	0111                	addi	sp,sp,4
80200190:	6482                	ld	s1,0(sp)
80200192:	0111                	addi	sp,sp,4
80200194:	6402                	ld	s0,0(sp)
80200196:	0111                	addi	sp,sp,4
80200198:	6082                	ld	ra,0(sp)
8020019a:	0111                	addi	sp,sp,4
8020019c:	6202                	ld	tp,0(sp)
8020019e:	0111                	addi	sp,sp,4
802001a0:	14109073          	csrw	sepc,ra
802001a4:	10200073          	sret

802001a8 <_rt_thread_entry>:
802001a8:	6082                	ld	ra,0(sp)
802001aa:	0111                	addi	sp,sp,4
802001ac:	6502                	ld	a0,0(sp)
802001ae:	0111                	addi	sp,sp,4
802001b0:	6282                	ld	t0,0(sp)
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
802001ca:	7111                	addi	sp,sp,-256
802001cc:	ef810113          	addi	sp,sp,-264
802001d0:	e406                	sd	ra,8(sp)
802001d2:	100020f3          	csrr	ra,sstatus
802001d6:	e806                	sd	ra,16(sp)
802001d8:	141020f3          	csrr	ra,sepc
802001dc:	e006                	sd	ra,0(sp)
802001de:	ec0e                	sd	gp,24(sp)
802001e0:	f012                	sd	tp,32(sp)
802001e2:	f416                	sd	t0,40(sp)
802001e4:	f81a                	sd	t1,48(sp)
802001e6:	fc1e                	sd	t2,56(sp)
802001e8:	e0a2                	sd	s0,64(sp)
802001ea:	e4a6                	sd	s1,72(sp)
802001ec:	e8aa                	sd	a0,80(sp)
802001ee:	ecae                	sd	a1,88(sp)
802001f0:	f0b2                	sd	a2,96(sp)
802001f2:	f4b6                	sd	a3,104(sp)
802001f4:	f8ba                	sd	a4,112(sp)
802001f6:	fcbe                	sd	a5,120(sp)
802001f8:	e142                	sd	a6,128(sp)
802001fa:	e546                	sd	a7,136(sp)
802001fc:	e94a                	sd	s2,144(sp)
802001fe:	ed4e                	sd	s3,152(sp)
80200200:	f152                	sd	s4,160(sp)
80200202:	f556                	sd	s5,168(sp)
80200204:	f95a                	sd	s6,176(sp)
80200206:	fd5e                	sd	s7,184(sp)
80200208:	e1e2                	sd	s8,192(sp)
8020020a:	e5e6                	sd	s9,200(sp)
8020020c:	e9ea                	sd	s10,208(sp)
8020020e:	edee                	sd	s11,216(sp)
80200210:	f1f2                	sd	t3,224(sp)
80200212:	f5f6                	sd	t4,232(sp)
80200214:	f9fa                	sd	t5,240(sp)
80200216:	fdfe                	sd	t6,248(sp)
80200218:	140022f3          	csrr	t0,sscratch
8020021c:	e216                	sd	t0,256(sp)
8020021e:	830a                	mv	t1,sp
80200220:	10830313          	addi	t1,t1,264
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
802002bc:	81818193          	addi	gp,gp,-2024 # 80209ad0 <__global_pointer$>

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
802002d8:	04c40413          	addi	s0,s0,76 # 80211320 <rt_thread_switch_interrupt_flag>
802002dc:	00042903          	lw	s2,0(s0)
802002e0:	02090263          	beqz	s2,80200304 <_resume_execution>
802002e4:	00042023          	sw	zero,0(s0)

802002e8 <_context_switch>:
802002e8:	00011297          	auipc	t0,0x11
802002ec:	04028293          	addi	t0,t0,64 # 80211328 <rt_interrupt_from_thread>
802002f0:	0002b503          	ld	a0,0(t0)
802002f4:	00011297          	auipc	t0,0x11
802002f8:	03028293          	addi	t0,t0,48 # 80211324 <rt_interrupt_to_thread>
802002fc:	0002b583          	ld	a1,0(t0)
80200300:	e0bff0ef          	jal	8020010a <rt_hw_context_switch>

80200304 <_resume_execution>:
80200304:	10810393          	addi	t2,sp,264
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
80200398:	20810293          	addi	t0,sp,520
8020039c:	14029073          	csrw	sscratch,t0
802003a0:	6082                	ld	ra,0(sp)
802003a2:	14109073          	csrw	sepc,ra
802003a6:	60c2                	ld	ra,16(sp)
802003a8:	10009073          	csrw	sstatus,ra
802003ac:	60a2                	ld	ra,8(sp)
802003ae:	61e2                	ld	gp,24(sp)
802003b0:	7202                	ld	tp,32(sp)
802003b2:	72a2                	ld	t0,40(sp)
802003b4:	7342                	ld	t1,48(sp)
802003b6:	73e2                	ld	t2,56(sp)
802003b8:	6406                	ld	s0,64(sp)
802003ba:	64a6                	ld	s1,72(sp)
802003bc:	6546                	ld	a0,80(sp)
802003be:	65e6                	ld	a1,88(sp)
802003c0:	7606                	ld	a2,96(sp)
802003c2:	76a6                	ld	a3,104(sp)
802003c4:	7746                	ld	a4,112(sp)
802003c6:	77e6                	ld	a5,120(sp)
802003c8:	680a                	ld	a6,128(sp)
802003ca:	68aa                	ld	a7,136(sp)
802003cc:	694a                	ld	s2,144(sp)
802003ce:	69ea                	ld	s3,152(sp)
802003d0:	7a0a                	ld	s4,160(sp)
802003d2:	7aaa                	ld	s5,168(sp)
802003d4:	7b4a                	ld	s6,176(sp)
802003d6:	7bea                	ld	s7,184(sp)
802003d8:	6c0e                	ld	s8,192(sp)
802003da:	6cae                	ld	s9,200(sp)
802003dc:	6d4e                	ld	s10,208(sp)
802003de:	6dee                	ld	s11,216(sp)
802003e0:	7e0e                	ld	t3,224(sp)
802003e2:	7eae                	ld	t4,232(sp)
802003e4:	7f4e                	ld	t5,240(sp)
802003e6:	7fee                	ld	t6,248(sp)
802003e8:	6112                	ld	sp,256(sp)
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
80200400:	1530406f          	j	80204d52 <rt_kputs>

80200404 <ulog_console_backend_init>:
80200404:	3141                	addiw	sp,sp,-16
80200406:	e406                	sd	ra,8(sp)
80200408:	1d6000ef          	jal	802005de <ulog_init>
8020040c:	00011517          	auipc	a0,0x11
80200410:	ff450513          	addi	a0,a0,-12 # 80211400 <console>
80200414:	00000797          	auipc	a5,0x0
80200418:	fea78793          	addi	a5,a5,-22 # 802003fe <ulog_console_backend_output>
8020041c:	4605                	li	a2,1
8020041e:	00007597          	auipc	a1,0x7
80200422:	ba258593          	addi	a1,a1,-1118 # 80206fc0 <rt_system_timer_thread_init+0x2>
80200426:	d15c                	sw	a5,36(a0)
80200428:	171000ef          	jal	80200d98 <ulog_backend_register>
8020042c:	60a2                	ld	ra,8(sp)
8020042e:	4501                	li	a0,0
80200430:	2141                	addiw	sp,sp,16
80200432:	8082                	ret

80200434 <rt_scheduler_is_available>:
80200434:	3141                	addiw	sp,sp,-16
80200436:	e406                	sd	ra,8(sp)
80200438:	5d3050ef          	jal	8020620a <rt_critical_level>
8020043c:	c509                	beqz	a0,80200446 <rt_scheduler_is_available+0x12>
8020043e:	4501                	li	a0,0
80200440:	60a2                	ld	ra,8(sp)
80200442:	2141                	addiw	sp,sp,16
80200444:	8082                	ret
80200446:	1b0060ef          	jal	802065f6 <rt_thread_self>
8020044a:	2501                	sext.w	a0,a0
8020044c:	d96d                	beqz	a0,8020043e <rt_scheduler_is_available+0xa>
8020044e:	70b030ef          	jal	80204358 <rt_interrupt_get_nest>
80200452:	00153513          	seqz	a0,a0
80200456:	b7ed                	j	80200440 <rt_scheduler_is_available+0xc>

80200458 <output_lock>:
80200458:	00011797          	auipc	a5,0x11
8020045c:	fe47a783          	lw	a5,-28(a5) # 8021143c <ulog+0x4>
80200460:	c395                	beqz	a5,80200484 <output_lock+0x2c>
80200462:	3141                	addiw	sp,sp,-16
80200464:	e406                	sd	ra,8(sp)
80200466:	fcfff0ef          	jal	80200434 <rt_scheduler_is_available>
8020046a:	c911                	beqz	a0,8020047e <output_lock+0x26>
8020046c:	60a2                	ld	ra,8(sp)
8020046e:	55fd                	li	a1,-1
80200470:	00011517          	auipc	a0,0x11
80200474:	fd050513          	addi	a0,a0,-48 # 80211440 <ulog+0x8>
80200478:	2141                	addiw	sp,sp,16
8020047a:	4710306f          	j	802040ea <rt_mutex_take>
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
802004a8:	6b1030ef          	jal	80204358 <rt_interrupt_get_nest>
802004ac:	e165                	bnez	a0,8020058c <do_output+0x106>
802004ae:	00011797          	auipc	a5,0x11
802004b2:	f8a78793          	addi	a5,a5,-118 # 80211438 <ulog>
802004b6:	4398                	lw	a4,0(a5)
802004b8:	cf3d                	beqz	a4,80200536 <do_output+0xb0>
802004ba:	47fc                	lw	a5,76(a5)
802004bc:	893e                	mv	s2,a5
802004be:	c3a9                	beqz	a5,80200500 <do_output+0x7a>
802004c0:	0024179b          	slliw	a5,s0,0x2
802004c4:	00008b17          	auipc	s6,0x8
802004c8:	2d4b0b13          	addi	s6,s6,724 # 80208798 <color_output_info>
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
8020051a:	0390406f          	j	80204d52 <rt_kputs>
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
80200564:	730040ef          	jal	80204c94 <rt_strlen>
80200568:	00050c1b          	sext.w	s8,a0
8020056c:	f80c04e3          	beqz	s8,802004f4 <do_output+0x6e>
80200570:	00007517          	auipc	a0,0x7
80200574:	a5850513          	addi	a0,a0,-1448 # 80206fc8 <rt_system_timer_thread_init+0xa>
80200578:	71c040ef          	jal	80204c94 <rt_strlen>
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
802005b6:	e8a7a783          	lw	a5,-374(a5) # 8021143c <ulog+0x4>
802005ba:	c38d                	beqz	a5,802005dc <output_unlock+0x2a>
802005bc:	3141                	addiw	sp,sp,-16
802005be:	e406                	sd	ra,8(sp)
802005c0:	e75ff0ef          	jal	80200434 <rt_scheduler_is_available>
802005c4:	c909                	beqz	a0,802005d6 <output_unlock+0x24>
802005c6:	60a2                	ld	ra,8(sp)
802005c8:	00011517          	auipc	a0,0x11
802005cc:	e7850513          	addi	a0,a0,-392 # 80211440 <ulog+0x8>
802005d0:	2141                	addiw	sp,sp,16
802005d2:	31f0306f          	j	802040f0 <rt_mutex_release>
802005d6:	60a2                	ld	ra,8(sp)
802005d8:	2141                	addiw	sp,sp,16
802005da:	8082                	ret
802005dc:	8082                	ret

802005de <ulog_init>:
802005de:	3141                	addiw	sp,sp,-16
802005e0:	e022                	sd	s0,0(sp)
802005e2:	00011417          	auipc	s0,0x11
802005e6:	e5640413          	addi	s0,s0,-426 # 80211438 <ulog>
802005ea:	401c                	lw	a5,0(s0)
802005ec:	e406                	sd	ra,8(sp)
802005ee:	e785                	bnez	a5,80200616 <ulog_init+0x38>
802005f0:	4605                	li	a2,1
802005f2:	00007597          	auipc	a1,0x7
802005f6:	9de58593          	addi	a1,a1,-1570 # 80206fd0 <rt_system_timer_thread_init+0x12>
802005fa:	00011517          	auipc	a0,0x11
802005fe:	e4650513          	addi	a0,a0,-442 # 80211440 <ulog+0x8>
80200602:	27b030ef          	jal	8020407c <rt_mutex_init>
80200606:	00011797          	auipc	a5,0x11
8020060a:	e607af23          	sw	zero,-386(a5) # 80211484 <ulog+0x4c>
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
8020063e:	13e58593          	addi	a1,a1,318 # 80208778 <__FUNCTION__.20>
80200642:	00007517          	auipc	a0,0x7
80200646:	99650513          	addi	a0,a0,-1642 # 80206fd8 <rt_system_timer_thread_init+0x1a>
8020064a:	0e1040ef          	jal	80204f2a <rt_assert_handler>
8020064e:	0004879b          	sext.w	a5,s1
80200652:	ef89                	bnez	a5,8020066c <ulog_strcpy+0x4c>
80200654:	09400613          	li	a2,148
80200658:	00008597          	auipc	a1,0x8
8020065c:	12058593          	addi	a1,a1,288 # 80208778 <__FUNCTION__.20>
80200660:	00007517          	auipc	a0,0x7
80200664:	98050513          	addi	a0,a0,-1664 # 80206fe0 <rt_system_timer_thread_init+0x22>
80200668:	0c3040ef          	jal	80204f2a <rt_assert_handler>
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
8020071e:	04658593          	addi	a1,a1,70 # 80208760 <__FUNCTION__.19>
80200722:	00007517          	auipc	a0,0x7
80200726:	8ce50513          	addi	a0,a0,-1842 # 80206ff0 <rt_system_timer_thread_init+0x32>
8020072a:	001040ef          	jal	80204f2a <rt_assert_handler>
8020072e:	479d                	li	a5,7
80200730:	0127fe63          	bgeu	a5,s2,8020074c <ulog_head_formater+0x52>
80200734:	10000613          	li	a2,256
80200738:	00008597          	auipc	a1,0x8
8020073c:	02858593          	addi	a1,a1,40 # 80208760 <__FUNCTION__.19>
80200740:	00007517          	auipc	a0,0x7
80200744:	8b850513          	addi	a0,a0,-1864 # 80206ff8 <rt_system_timer_thread_init+0x3a>
80200748:	7e2040ef          	jal	80204f2a <rt_assert_handler>
8020074c:	000a079b          	sext.w	a5,s4
80200750:	ef89                	bnez	a5,8020076a <ulog_head_formater+0x70>
80200752:	10100613          	li	a2,257
80200756:	00008597          	auipc	a1,0x8
8020075a:	00a58593          	addi	a1,a1,10 # 80208760 <__FUNCTION__.19>
8020075e:	00007517          	auipc	a0,0x7
80200762:	8b250513          	addi	a0,a0,-1870 # 80207010 <rt_system_timer_thread_init+0x52>
80200766:	7c4040ef          	jal	80204f2a <rt_assert_handler>
8020076a:	00011797          	auipc	a5,0x11
8020076e:	ba07a523          	sw	zero,-1110(a5) # 80211314 <log_len.18>
80200772:	0029191b          	slliw	s2,s2,0x2
80200776:	00008797          	auipc	a5,0x8
8020077a:	02278793          	addi	a5,a5,34 # 80208798 <color_output_info>
8020077e:	012787bb          	addw	a5,a5,s2
80200782:	0007a983          	lw	s3,0(a5)
80200786:	00011417          	auipc	s0,0x11
8020078a:	b8e40413          	addi	s0,s0,-1138 # 80211314 <log_len.18>
8020078e:	02098563          	beqz	s3,802007b8 <ulog_head_formater+0xbe>
80200792:	00007617          	auipc	a2,0x7
80200796:	83660613          	addi	a2,a2,-1994 # 80206fc8 <rt_system_timer_thread_init+0xa>
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
802007cc:	439020ef          	jal	80203404 <rt_tick_get>
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
802007f2:	4a2040ef          	jal	80204c94 <rt_strlen>
802007f6:	401c                	lw	a5,0(s0)
802007f8:	00007617          	auipc	a2,0x7
802007fc:	82060613          	addi	a2,a2,-2016 # 80207018 <rt_system_timer_thread_init+0x5a>
80200800:	9d3d                	addw	a0,a0,a5
80200802:	00a485bb          	addw	a1,s1,a0
80200806:	c008                	sw	a0,0(s0)
80200808:	e19ff0ef          	jal	80200620 <ulog_strcpy>
8020080c:	401c                	lw	a5,0(s0)
8020080e:	9d3d                	addw	a0,a0,a5
80200810:	00008797          	auipc	a5,0x8
80200814:	fa878793          	addi	a5,a5,-88 # 802087b8 <level_output_info>
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
8020083a:	00006617          	auipc	a2,0x6
8020083e:	7de60613          	addi	a2,a2,2014 # 80207018 <rt_system_timer_thread_init+0x5a>
80200842:	9d3d                	addw	a0,a0,a5
80200844:	00a485bb          	addw	a1,s1,a0
80200848:	c008                	sw	a0,0(s0)
8020084a:	dd7ff0ef          	jal	80200620 <ulog_strcpy>
8020084e:	401c                	lw	a5,0(s0)
80200850:	9d3d                	addw	a0,a0,a5
80200852:	c008                	sw	a0,0(s0)
80200854:	305030ef          	jal	80204358 <rt_interrupt_get_nest>
80200858:	e125                	bnez	a0,802008b8 <ulog_head_formater+0x1be>
8020085a:	59d050ef          	jal	802065f6 <rt_thread_self>
8020085e:	2501                	sext.w	a0,a0
80200860:	00006917          	auipc	s2,0x6
80200864:	78890913          	addi	s2,s2,1928 # 80206fe8 <rt_system_timer_thread_init+0x2a>
80200868:	c501                	beqz	a0,80200870 <ulog_head_formater+0x176>
8020086a:	58d050ef          	jal	802065f6 <rt_thread_self>
8020086e:	892a                	mv	s2,a0
80200870:	45e1                	li	a1,24
80200872:	854a                	mv	a0,s2
80200874:	432040ef          	jal	80204ca6 <rt_strnlen>
80200878:	0005099b          	sext.w	s3,a0
8020087c:	4008                	lw	a0,0(s0)
8020087e:	864e                	mv	a2,s3
80200880:	85ca                	mv	a1,s2
80200882:	9d25                	addw	a0,a0,s1
80200884:	3ac040ef          	jal	80204c30 <rt_strncpy>
80200888:	4008                	lw	a0,0(s0)
8020088a:	0135053b          	addw	a0,a0,s3
8020088e:	00a485bb          	addw	a1,s1,a0
80200892:	00006617          	auipc	a2,0x6
80200896:	79660613          	addi	a2,a2,1942 # 80207028 <rt_system_timer_thread_init+0x6a>
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
802008ba:	00006617          	auipc	a2,0x6
802008be:	76660613          	addi	a2,a2,1894 # 80207020 <rt_system_timer_thread_init+0x62>
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
802008f4:	e5858593          	addi	a1,a1,-424 # 80208748 <__FUNCTION__.16>
802008f8:	00006517          	auipc	a0,0x6
802008fc:	6f850513          	addi	a0,a0,1784 # 80206ff0 <rt_system_timer_thread_init+0x32>
80200900:	62a040ef          	jal	80204f2a <rt_assert_handler>
80200904:	00006517          	auipc	a0,0x6
80200908:	72c50513          	addi	a0,a0,1836 # 80207030 <rt_system_timer_thread_init+0x72>
8020090c:	388040ef          	jal	80204c94 <rt_strlen>
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
80200932:	00006617          	auipc	a2,0x6
80200936:	6fe60613          	addi	a2,a2,1790 # 80207030 <rt_system_timer_thread_init+0x72>
8020093a:	ce7ff0ef          	jal	80200620 <ulog_strcpy>
8020093e:	9c29                	addw	s0,s0,a0
80200940:	0029191b          	slliw	s2,s2,0x2
80200944:	00008797          	auipc	a5,0x8
80200948:	e5478793          	addi	a5,a5,-428 # 80208798 <color_output_info>
8020094c:	012787bb          	addw	a5,a5,s2
80200950:	439c                	lw	a5,0(a5)
80200952:	cb99                	beqz	a5,80200968 <ulog_tail_formater+0x98>
80200954:	008485bb          	addw	a1,s1,s0
80200958:	8522                	mv	a0,s0
8020095a:	00006617          	auipc	a2,0x6
8020095e:	6de60613          	addi	a2,a2,1758 # 80207038 <rt_system_timer_thread_init+0x7a>
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
802009ac:	d9058593          	addi	a1,a1,-624 # 80208738 <__FUNCTION__.14>
802009b0:	00006517          	auipc	a0,0x6
802009b4:	64050513          	addi	a0,a0,1600 # 80206ff0 <rt_system_timer_thread_init+0x32>
802009b8:	572040ef          	jal	80204f2a <rt_assert_handler>
802009bc:	0009079b          	sext.w	a5,s2
802009c0:	ef89                	bnez	a5,802009da <ulog_formater+0x5a>
802009c2:	1ae00613          	li	a2,430
802009c6:	00008597          	auipc	a1,0x8
802009ca:	d7258593          	addi	a1,a1,-654 # 80208738 <__FUNCTION__.14>
802009ce:	00006517          	auipc	a0,0x6
802009d2:	67250513          	addi	a0,a0,1650 # 80207040 <rt_system_timer_thread_init+0x82>
802009d6:	554040ef          	jal	80204f2a <rt_assert_handler>
802009da:	8652                	mv	a2,s4
802009dc:	85a6                	mv	a1,s1
802009de:	8522                	mv	a0,s0
802009e0:	d1bff0ef          	jal	802006fa <ulog_head_formater>
802009e4:	2501                	sext.w	a0,a0
802009e6:	00011a17          	auipc	s4,0x11
802009ea:	92aa0a13          	addi	s4,s4,-1750 # 80211310 <log_len.13>
802009ee:	08000593          	li	a1,128
802009f2:	9d89                	subw	a1,a1,a0
802009f4:	00aa2023          	sw	a0,0(s4)
802009f8:	86d6                	mv	a3,s5
802009fa:	864a                	mv	a2,s2
802009fc:	9d21                	addw	a0,a0,s0
802009fe:	42f030ef          	jal	8020462c <rt_vsnprintf>
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
80200a6a:	cba58593          	addi	a1,a1,-838 # 80208720 <__FUNCTION__.11>
80200a6e:	00006517          	auipc	a0,0x6
80200a72:	58250513          	addi	a0,a0,1410 # 80206ff0 <rt_system_timer_thread_init+0x32>
80200a76:	4b4040ef          	jal	80204f2a <rt_assert_handler>
80200a7a:	000a079b          	sext.w	a5,s4
80200a7e:	ef89                	bnez	a5,80200a98 <ulog_hex_formater+0x60>
80200a80:	1cb00613          	li	a2,459
80200a84:	00008597          	auipc	a1,0x8
80200a88:	c9c58593          	addi	a1,a1,-868 # 80208720 <__FUNCTION__.11>
80200a8c:	00006517          	auipc	a0,0x6
80200a90:	5bc50513          	addi	a0,a0,1468 # 80207048 <rt_system_timer_thread_init+0x8a>
80200a94:	496040ef          	jal	80204f2a <rt_assert_handler>
80200a98:	8622                	mv	a2,s0
80200a9a:	459d                	li	a1,7
80200a9c:	8526                	mv	a0,s1
80200a9e:	c5dff0ef          	jal	802006fa <ulog_head_formater>
80200aa2:	2501                	sext.w	a0,a0
80200aa4:	00011417          	auipc	s0,0x11
80200aa8:	86840413          	addi	s0,s0,-1944 # 8021130c <log_len.10>
80200aac:	c008                	sw	a0,0(s0)
80200aae:	0129873b          	addw	a4,s3,s2
80200ab2:	86ce                	mv	a3,s3
80200ab4:	00006617          	auipc	a2,0x6
80200ab8:	59c60613          	addi	a2,a2,1436 # 80207050 <rt_system_timer_thread_init+0x92>
80200abc:	08000593          	li	a1,128
80200ac0:	9d25                	addw	a0,a0,s1
80200ac2:	7e5030ef          	jal	80204aa6 <rt_snprintf>
80200ac6:	2501                	sext.w	a0,a0
80200ac8:	08000793          	li	a5,128
80200acc:	00a7e463          	bltu	a5,a0,80200ad4 <ulog_hex_formater+0x9c>
80200ad0:	401c                	lw	a5,0(s0)
80200ad2:	9fa9                	addw	a5,a5,a0
80200ad4:	c01c                	sw	a5,0(s0)
80200ad6:	00011997          	auipc	s3,0x11
80200ada:	83298993          	addi	s3,s3,-1998 # 80211308 <j.8>
80200ade:	4781                	li	a5,0
80200ae0:	00006b17          	auipc	s6,0x6
80200ae4:	588b0b13          	addi	s6,s6,1416 # 80207068 <rt_system_timer_thread_init+0xaa>
80200ae8:	00006b97          	auipc	s7,0x6
80200aec:	578b8b93          	addi	s7,s7,1400 # 80207060 <rt_system_timer_thread_init+0xa2>
80200af0:	00006c17          	auipc	s8,0x6
80200af4:	528c0c13          	addi	s8,s8,1320 # 80207018 <rt_system_timer_thread_init+0x5a>
80200af8:	00f9a023          	sw	a5,0(s3)
80200afc:	0557ed63          	bltu	a5,s5,80200b56 <ulog_hex_formater+0x11e>
80200b00:	4008                	lw	a0,0(s0)
80200b02:	00006617          	auipc	a2,0x6
80200b06:	56e60613          	addi	a2,a2,1390 # 80207070 <rt_system_timer_thread_init+0xb2>
80200b0a:	05e00b13          	li	s6,94
80200b0e:	00a485bb          	addw	a1,s1,a0
80200b12:	b0fff0ef          	jal	80200620 <ulog_strcpy>
80200b16:	401c                	lw	a5,0(s0)
80200b18:	00006a97          	auipc	s5,0x6
80200b1c:	560a8a93          	addi	s5,s5,1376 # 80207078 <rt_system_timer_thread_init+0xba>
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
80200b6a:	73d030ef          	jal	80204aa6 <rt_snprintf>
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
80200bac:	084040ef          	jal	80204c30 <rt_strncpy>
80200bb0:	bf7d                	j	80200b6e <ulog_hex_formater+0x136>
80200bb2:	00fa07bb          	addw	a5,s4,a5
80200bb6:	0007c683          	lbu	a3,0(a5)
80200bba:	fe06879b          	addiw	a5,a3,-32
80200bbe:	00fb7463          	bgeu	s6,a5,80200bc6 <ulog_hex_formater+0x18e>
80200bc2:	02e00693          	li	a3,46
80200bc6:	8656                	mv	a2,s5
80200bc8:	45a1                	li	a1,8
80200bca:	0081051b          	addiw	a0,sp,8
80200bce:	6d9030ef          	jal	80204aa6 <rt_snprintf>
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
80200c2c:	ae858593          	addi	a1,a1,-1304 # 80208710 <__FUNCTION__.7>
80200c30:	00006517          	auipc	a0,0x6
80200c34:	3e050513          	addi	a0,a0,992 # 80207010 <rt_system_timer_thread_init+0x52>
80200c38:	2f2040ef          	jal	80204f2a <rt_assert_handler>
80200c3c:	0009079b          	sext.w	a5,s2
80200c40:	000a0b1b          	sext.w	s6,s4
80200c44:	c3c5                	beqz	a5,80200ce4 <ulog_voutput+0xf6>
80200c46:	0a0b1163          	bnez	s6,80200ce8 <ulog_voutput+0xfa>
80200c4a:	479d                	li	a5,7
80200c4c:	0097fe63          	bgeu	a5,s1,80200c68 <ulog_voutput+0x7a>
80200c50:	28c00613          	li	a2,652
80200c54:	00008597          	auipc	a1,0x8
80200c58:	abc58593          	addi	a1,a1,-1348 # 80208710 <__FUNCTION__.7>
80200c5c:	00006517          	auipc	a0,0x6
80200c60:	39c50513          	addi	a0,a0,924 # 80206ff8 <rt_system_timer_thread_init+0x3a>
80200c64:	2c6040ef          	jal	80204f2a <rt_assert_handler>
80200c68:	00010797          	auipc	a5,0x10
80200c6c:	7d07a783          	lw	a5,2000(a5) # 80211438 <ulog>
80200c70:	0c078e63          	beqz	a5,80200d4c <ulog_voutput+0x15e>
80200c74:	6e4030ef          	jal	80204358 <rt_interrupt_get_nest>
80200c78:	00011997          	auipc	s3,0x11
80200c7c:	81098993          	addi	s3,s3,-2032 # 80211488 <ulog+0x50>
80200c80:	c901                	beqz	a0,80200c90 <ulog_voutput+0xa2>
80200c82:	00006517          	auipc	a0,0x6
80200c86:	42e50513          	addi	a0,a0,1070 # 802070b0 <rt_system_timer_thread_init+0xf2>
80200c8a:	0ec040ef          	jal	80204d76 <rt_kprintf>
80200c8e:	4981                	li	s3,0
80200c90:	fc8ff0ef          	jal	80200458 <output_lock>
80200c94:	00010797          	auipc	a5,0x10
80200c98:	67078793          	addi	a5,a5,1648 # 80211304 <ulog_voutput_recursion.6>
80200c9c:	0007ad83          	lw	s11,0(a5)
80200ca0:	4705                	li	a4,1
80200ca2:	06ed9063          	bne	s11,a4,80200d02 <ulog_voutput+0x114>
80200ca6:	080b1a63          	bnez	s6,80200d3a <ulog_voutput+0x14c>
80200caa:	85ea                	mv	a1,s10
80200cac:	854a                	mv	a0,s2
80200cae:	0c8040ef          	jal	80204d76 <rt_kprintf>
80200cb2:	01ba9863          	bne	s5,s11,80200cc2 <ulog_voutput+0xd4>
80200cb6:	00006517          	auipc	a0,0x6
80200cba:	37a50513          	addi	a0,a0,890 # 80207030 <rt_system_timer_thread_init+0x72>
80200cbe:	0b8040ef          	jal	80204d76 <rt_kprintf>
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
80200cf0:	a2458593          	addi	a1,a1,-1500 # 80208710 <__FUNCTION__.7>
80200cf4:	00006517          	auipc	a0,0x6
80200cf8:	38c50513          	addi	a0,a0,908 # 80207080 <rt_system_timer_thread_init+0xc2>
80200cfc:	22e040ef          	jal	80204f2a <rt_assert_handler>
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
80200d28:	5ce7ae23          	sw	a4,1500(a5) # 80211300 <log_len.5>
80200d2c:	f5aff0ef          	jal	80200486 <do_output>
80200d30:	00010797          	auipc	a5,0x10
80200d34:	5c07aa23          	sw	zero,1492(a5) # 80211304 <ulog_voutput_recursion.6>
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
80200db6:	94658593          	addi	a1,a1,-1722 # 802086f8 <__FUNCTION__.3>
80200dba:	00006517          	auipc	a0,0x6
80200dbe:	35e50513          	addi	a0,a0,862 # 80207118 <rt_system_timer_thread_init+0x15a>
80200dc2:	168040ef          	jal	80204f2a <rt_assert_handler>
80200dc6:	0004879b          	sext.w	a5,s1
80200dca:	ef89                	bnez	a5,80200de4 <ulog_backend_register+0x4c>
80200dcc:	4f400613          	li	a2,1268
80200dd0:	00008597          	auipc	a1,0x8
80200dd4:	92858593          	addi	a1,a1,-1752 # 802086f8 <__FUNCTION__.3>
80200dd8:	00006517          	auipc	a0,0x6
80200ddc:	34850513          	addi	a0,a0,840 # 80207120 <rt_system_timer_thread_init+0x162>
80200de0:	14a040ef          	jal	80204f2a <rt_assert_handler>
80200de4:	00010797          	auipc	a5,0x10
80200de8:	6547a783          	lw	a5,1620(a5) # 80211438 <ulog>
80200dec:	ef89                	bnez	a5,80200e06 <ulog_backend_register+0x6e>
80200dee:	4f500613          	li	a2,1269
80200df2:	00008597          	auipc	a1,0x8
80200df6:	90658593          	addi	a1,a1,-1786 # 802086f8 <__FUNCTION__.3>
80200dfa:	00006517          	auipc	a0,0x6
80200dfe:	30e50513          	addi	a0,a0,782 # 80207108 <rt_system_timer_thread_init+0x14a>
80200e02:	128040ef          	jal	80204f2a <rt_assert_handler>
80200e06:	505c                	lw	a5,36(s0)
80200e08:	ef89                	bnez	a5,80200e22 <ulog_backend_register+0x8a>
80200e0a:	4f600613          	li	a2,1270
80200e0e:	00008597          	auipc	a1,0x8
80200e12:	8ea58593          	addi	a1,a1,-1814 # 802086f8 <__FUNCTION__.3>
80200e16:	00006517          	auipc	a0,0x6
80200e1a:	31250513          	addi	a0,a0,786 # 80207128 <rt_system_timer_thread_init+0x16a>
80200e1e:	10c040ef          	jal	80204f2a <rt_assert_handler>
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
80200e38:	5f9030ef          	jal	80204c30 <rt_strncpy>
80200e3c:	00010517          	auipc	a0,0x10
80200e40:	4dc50513          	addi	a0,a0,1244 # 80211318 <_spinlock>
80200e44:	7da020ef          	jal	8020361e <rt_spin_lock_irqsave>
80200e48:	85aa                	mv	a1,a0
80200e4a:	0344061b          	addiw	a2,s0,52
80200e4e:	00010697          	auipc	a3,0x10
80200e52:	63668693          	addi	a3,a3,1590 # 80211484 <ulog+0x4c>
80200e56:	4298                	lw	a4,0(a3)
80200e58:	87b6                	mv	a5,a3
80200e5a:	86ba                	mv	a3,a4
80200e5c:	ff6d                	bnez	a4,80200e56 <ulog_backend_register+0xbe>
80200e5e:	c390                	sw	a2,0(a5)
80200e60:	02042a23          	sw	zero,52(s0)
80200e64:	00010517          	auipc	a0,0x10
80200e68:	4b450513          	addi	a0,a0,1204 # 80211318 <_spinlock>
80200e6c:	7cc020ef          	jal	80203638 <rt_spin_unlock_irqrestore>
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
80200ef0:	12060613          	addi	a2,a2,288 # 46120 <__text_size+0x3cf78>
80200ef4:	2581                	sext.w	a1,a1
80200ef6:	ff47851b          	addiw	a0,a5,-12
80200efa:	bf61                	j	80200e92 <_rt_hw_stack_init>

80200efc <rt_hw_context_switch_interrupt>:
80200efc:	00010797          	auipc	a5,0x10
80200f00:	42478793          	addi	a5,a5,1060 # 80211320 <rt_thread_switch_interrupt_flag>
80200f04:	4398                	lw	a4,0(a5)
80200f06:	e709                	bnez	a4,80200f10 <rt_hw_context_switch_interrupt+0x14>
80200f08:	00010717          	auipc	a4,0x10
80200f0c:	42a72023          	sw	a0,1056(a4) # 80211328 <rt_interrupt_from_thread>
80200f10:	00010717          	auipc	a4,0x10
80200f14:	40b72a23          	sw	a1,1044(a4) # 80211324 <rt_interrupt_to_thread>
80200f18:	4705                	li	a4,1
80200f1a:	c398                	sw	a4,0(a5)
80200f1c:	8082                	ret

80200f1e <rt_hw_cpu_shutdown>:
80200f1e:	3141                	addiw	sp,sp,-16
80200f20:	00006517          	auipc	a0,0x6
80200f24:	26050513          	addi	a0,a0,608 # 80207180 <rt_system_timer_thread_init+0x1c2>
80200f28:	e406                	sd	ra,8(sp)
80200f2a:	64d030ef          	jal	80204d76 <rt_kprintf>
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
80200f4e:	24650513          	addi	a0,a0,582 # 80207190 <rt_system_timer_thread_init+0x1d2>
80200f52:	e406                	sd	ra,8(sp)
80200f54:	623030ef          	jal	80204d76 <rt_kprintf>
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
80200f88:	58c78793          	addi	a5,a5,1420 # 80211510 <irq_desc>
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
80200fa4:	57078793          	addi	a5,a5,1392 # 80211510 <irq_desc>
80200fa8:	00011717          	auipc	a4,0x11
80200fac:	96870713          	addi	a4,a4,-1688 # 80211910 <serial0>
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
80200fd0:	3047a783          	lw	a5,772(a5) # 802092d0 <plic_base>
80200fd4:	0025151b          	slliw	a0,a0,0x2
80200fd8:	9d3d                	addw	a0,a0,a5
80200fda:	c10c                	sw	a1,0(a0)
80200fdc:	8082                	ret

80200fde <plic_irq_enable>:
80200fde:	6709                	lui	a4,0x2
80200fe0:	00008797          	auipc	a5,0x8
80200fe4:	1c87a783          	lw	a5,456(a5) # 802091a8 <__text_end>
80200fe8:	00008697          	auipc	a3,0x8
80200fec:	2e86a683          	lw	a3,744(a3) # 802092d0 <plic_base>
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
8020101a:	1927a783          	lw	a5,402(a5) # 802091a8 <__text_end>
8020101e:	00008697          	auipc	a3,0x8
80201022:	2b26a683          	lw	a3,690(a3) # 802092d0 <plic_base>
80201026:	00201737          	lui	a4,0x201
8020102a:	00d7979b          	slliw	a5,a5,0xd
8020102e:	9f35                	addw	a4,a4,a3
80201030:	9fb9                	addw	a5,a5,a4
80201032:	c388                	sw	a0,0(a5)
80201034:	8082                	ret

80201036 <plic_claim>:
80201036:	00201737          	lui	a4,0x201
8020103a:	00008797          	auipc	a5,0x8
8020103e:	16e7a783          	lw	a5,366(a5) # 802091a8 <__text_end>
80201042:	00008697          	auipc	a3,0x8
80201046:	28e6a683          	lw	a3,654(a3) # 802092d0 <plic_base>
8020104a:	2711                	addiw	a4,a4,4 # 201004 <__text_size+0x1f7e5c>
8020104c:	9f35                	addw	a4,a4,a3
8020104e:	00d7979b          	slliw	a5,a5,0xd
80201052:	9fb9                	addw	a5,a5,a4
80201054:	4388                	lw	a0,0(a5)
80201056:	8082                	ret

80201058 <plic_complete>:
80201058:	00201737          	lui	a4,0x201
8020105c:	00008797          	auipc	a5,0x8
80201060:	14c7a783          	lw	a5,332(a5) # 802091a8 <__text_end>
80201064:	00008697          	auipc	a3,0x8
80201068:	26c6a683          	lw	a3,620(a3) # 802092d0 <plic_base>
8020106c:	2711                	addiw	a4,a4,4 # 201004 <__text_size+0x1f7e5c>
8020106e:	00d7979b          	slliw	a5,a5,0xd
80201072:	9f35                	addw	a4,a4,a3
80201074:	9fb9                	addw	a5,a5,a4
80201076:	c388                	sw	a0,0(a5)
80201078:	8082                	ret

8020107a <plic_set_ie>:
8020107a:	6789                	lui	a5,0x2
8020107c:	00008717          	auipc	a4,0x8
80201080:	25472703          	lw	a4,596(a4) # 802092d0 <plic_base>
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
802010be:	0ee42403          	lw	s0,238(s0) # 802091a8 <__text_end>
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
80201124:	20c7c783          	lbu	a5,524(a5) # 8021132c <has_time_extension>
80201128:	862a                	mv	a2,a0
8020112a:	cf8d                	beqz	a5,80201164 <sbi_set_timer+0x44>
8020112c:	54495537          	lui	a0,0x54495
80201130:	3101                	addiw	sp,sp,-32
80201132:	4701                	li	a4,0
80201134:	4681                	li	a3,0
80201136:	4581                	li	a1,0
80201138:	d4550513          	addi	a0,a0,-699 # 54494d45 <__text_size+0x5448bb9d>
8020113c:	ec06                	sd	ra,24(sp)
8020113e:	fa7ff0ef          	jal	802010e4 <sbi_call.constprop.0>
80201142:	2501                	sext.w	a0,a0
80201144:	c50d                	beqz	a0,8020116e <sbi_set_timer+0x4e>
80201146:	60e2                	ld	ra,24(sp)
80201148:	07c00613          	li	a2,124
8020114c:	00007597          	auipc	a1,0x7
80201150:	68c58593          	addi	a1,a1,1676 # 802087d8 <__FUNCTION__.0>
80201154:	00006517          	auipc	a0,0x6
80201158:	06450513          	addi	a0,a0,100 # 802071b8 <rt_system_timer_thread_init+0x1fa>
8020115c:	0201011b          	addiw	sp,sp,32
80201160:	5cb0306f          	j	80204f2a <rt_assert_handler>
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
80201198:	1a07a223          	sw	zero,420(a5) # 80211338 <sbi_spec_version>
8020119c:	0301011b          	addiw	sp,sp,48
802011a0:	8082                	ret
802011a2:	00010717          	auipc	a4,0x10
802011a6:	18f72b23          	sw	a5,406(a4) # 80211338 <sbi_spec_version>
802011aa:	4701                	li	a4,0
802011ac:	4681                	li	a3,0
802011ae:	4601                	li	a2,0
802011b0:	4585                	li	a1,1
802011b2:	4541                	li	a0,16
802011b4:	f31ff0ef          	jal	802010e4 <sbi_call.constprop.0>
802011b8:	9501                	srai	a0,a0,0x20
802011ba:	00010797          	auipc	a5,0x10
802011be:	16a7ad23          	sw	a0,378(a5) # 80211334 <sbi_impl_id>
802011c2:	4701                	li	a4,0
802011c4:	4681                	li	a3,0
802011c6:	4601                	li	a2,0
802011c8:	4589                	li	a1,2
802011ca:	4541                	li	a0,16
802011cc:	f19ff0ef          	jal	802010e4 <sbi_call.constprop.0>
802011d0:	9501                	srai	a0,a0,0x20
802011d2:	00010797          	auipc	a5,0x10
802011d6:	14a7af23          	sw	a0,350(a5) # 80211330 <sbi_impl_version>
802011da:	54495537          	lui	a0,0x54495
802011de:	d4550513          	addi	a0,a0,-699 # 54494d45 <__text_size+0x5448bb9d>
802011e2:	f23ff0ef          	jal	80201104 <sbi_probe_extension>
802011e6:	c511                	beqz	a0,802011f2 <sbi_init+0x7c>
802011e8:	4785                	li	a5,1
802011ea:	00010717          	auipc	a4,0x10
802011ee:	14f70123          	sb	a5,322(a4) # 8021132c <has_time_extension>
802011f2:	00735537          	lui	a0,0x735
802011f6:	04950513          	addi	a0,a0,73 # 735049 <__text_size+0x72bea1>
802011fa:	f0bff0ef          	jal	80201104 <sbi_probe_extension>
802011fe:	70a2                	ld	ra,40(sp)
80201200:	52465537          	lui	a0,0x52465
80201204:	e4350513          	addi	a0,a0,-445 # 52464e43 <__text_size+0x5245bc9b>
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
80201238:	0cc78793          	addi	a5,a5,204 # 80211300 <log_len.5>
8020123c:	00015717          	auipc	a4,0x15
80201240:	b1470713          	addi	a4,a4,-1260 # 80215d50 <__bss_end>
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
8020125c:	1c8020ef          	jal	80203424 <rt_tick_increase>
80201260:	c0102773          	rdtime	a4
80201264:	00010797          	auipc	a5,0x10
80201268:	0dc78793          	addi	a5,a5,220 # 80211340 <time_elapsed>
8020126c:	e398                	sd	a4,0(a5)
8020126e:	639c                	ld	a5,0(a5)
80201270:	00010517          	auipc	a0,0x10
80201274:	0cc56503          	lwu	a0,204(a0) # 8021133c <tick_cycles>
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
8020129a:	0a670713          	addi	a4,a4,166 # 8021133c <tick_cycles>
8020129e:	6a078793          	addi	a5,a5,1696 # 186a0 <__text_size+0xf4f8>
802012a2:	c31c                	sw	a5,0(a4)
802012a4:	c01026f3          	rdtime	a3
802012a8:	00010797          	auipc	a5,0x10
802012ac:	09878793          	addi	a5,a5,152 # 80211340 <time_elapsed>
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
802012d8:	06c50513          	addi	a0,a0,108 # 80207340 <rt_system_timer_thread_init+0x382>
802012dc:	e406                	sd	ra,8(sp)
802012de:	299030ef          	jal	80204d76 <rt_kprintf>
802012e2:	00006517          	auipc	a0,0x6
802012e6:	08e50513          	addi	a0,a0,142 # 80207370 <rt_system_timer_thread_init+0x3b2>
802012ea:	28d030ef          	jal	80204d76 <rt_kprintf>
802012ee:	08042603          	lw	a2,128(s0)
802012f2:	404c                	lw	a1,4(s0)
802012f4:	00006517          	auipc	a0,0x6
802012f8:	09450513          	addi	a0,a0,148 # 80207388 <rt_system_timer_thread_init+0x3ca>
802012fc:	27b030ef          	jal	80204d76 <rt_kprintf>
80201300:	4810                	lw	a2,16(s0)
80201302:	444c                	lw	a1,12(s0)
80201304:	00006517          	auipc	a0,0x6
80201308:	0a450513          	addi	a0,a0,164 # 802073a8 <rt_system_timer_thread_init+0x3ea>
8020130c:	26b030ef          	jal	80204d76 <rt_kprintf>
80201310:	00006517          	auipc	a0,0x6
80201314:	0b850513          	addi	a0,a0,184 # 802073c8 <rt_system_timer_thread_init+0x40a>
80201318:	25f030ef          	jal	80204d76 <rt_kprintf>
8020131c:	4c10                	lw	a2,24(s0)
8020131e:	484c                	lw	a1,20(s0)
80201320:	00006517          	auipc	a0,0x6
80201324:	0c050513          	addi	a0,a0,192 # 802073e0 <rt_system_timer_thread_init+0x422>
80201328:	24f030ef          	jal	80204d76 <rt_kprintf>
8020132c:	4c4c                	lw	a1,28(s0)
8020132e:	00006517          	auipc	a0,0x6
80201332:	0d250513          	addi	a0,a0,210 # 80207400 <rt_system_timer_thread_init+0x442>
80201336:	241030ef          	jal	80204d76 <rt_kprintf>
8020133a:	5870                	lw	a2,116(s0)
8020133c:	582c                	lw	a1,112(s0)
8020133e:	00006517          	auipc	a0,0x6
80201342:	0d250513          	addi	a0,a0,210 # 80207410 <rt_system_timer_thread_init+0x452>
80201346:	231030ef          	jal	80204d76 <rt_kprintf>
8020134a:	5c70                	lw	a2,124(s0)
8020134c:	5c2c                	lw	a1,120(s0)
8020134e:	00006517          	auipc	a0,0x6
80201352:	0e250513          	addi	a0,a0,226 # 80207430 <rt_system_timer_thread_init+0x472>
80201356:	221030ef          	jal	80204d76 <rt_kprintf>
8020135a:	00006517          	auipc	a0,0x6
8020135e:	0f650513          	addi	a0,a0,246 # 80207450 <rt_system_timer_thread_init+0x492>
80201362:	215030ef          	jal	80204d76 <rt_kprintf>
80201366:	5050                	lw	a2,36(s0)
80201368:	500c                	lw	a1,32(s0)
8020136a:	00006517          	auipc	a0,0x6
8020136e:	0fe50513          	addi	a0,a0,254 # 80207468 <rt_system_timer_thread_init+0x4aa>
80201372:	205030ef          	jal	80204d76 <rt_kprintf>
80201376:	4470                	lw	a2,76(s0)
80201378:	442c                	lw	a1,72(s0)
8020137a:	00006517          	auipc	a0,0x6
8020137e:	11650513          	addi	a0,a0,278 # 80207490 <rt_system_timer_thread_init+0x4d2>
80201382:	1f5030ef          	jal	80204d76 <rt_kprintf>
80201386:	4870                	lw	a2,84(s0)
80201388:	482c                	lw	a1,80(s0)
8020138a:	00006517          	auipc	a0,0x6
8020138e:	12650513          	addi	a0,a0,294 # 802074b0 <rt_system_timer_thread_init+0x4f2>
80201392:	1e5030ef          	jal	80204d76 <rt_kprintf>
80201396:	4c70                	lw	a2,92(s0)
80201398:	4c2c                	lw	a1,88(s0)
8020139a:	00006517          	auipc	a0,0x6
8020139e:	13650513          	addi	a0,a0,310 # 802074d0 <rt_system_timer_thread_init+0x512>
802013a2:	1d5030ef          	jal	80204d76 <rt_kprintf>
802013a6:	5070                	lw	a2,100(s0)
802013a8:	502c                	lw	a1,96(s0)
802013aa:	00006517          	auipc	a0,0x6
802013ae:	14650513          	addi	a0,a0,326 # 802074f0 <rt_system_timer_thread_init+0x532>
802013b2:	1c5030ef          	jal	80204d76 <rt_kprintf>
802013b6:	5470                	lw	a2,108(s0)
802013b8:	542c                	lw	a1,104(s0)
802013ba:	00006517          	auipc	a0,0x6
802013be:	15650513          	addi	a0,a0,342 # 80207510 <rt_system_timer_thread_init+0x552>
802013c2:	1b5030ef          	jal	80204d76 <rt_kprintf>
802013c6:	00006517          	auipc	a0,0x6
802013ca:	17250513          	addi	a0,a0,370 # 80207538 <rt_system_timer_thread_init+0x57a>
802013ce:	1a9030ef          	jal	80204d76 <rt_kprintf>
802013d2:	5450                	lw	a2,44(s0)
802013d4:	540c                	lw	a1,40(s0)
802013d6:	00006517          	auipc	a0,0x6
802013da:	18250513          	addi	a0,a0,386 # 80207558 <rt_system_timer_thread_init+0x59a>
802013de:	199030ef          	jal	80204d76 <rt_kprintf>
802013e2:	5850                	lw	a2,52(s0)
802013e4:	580c                	lw	a1,48(s0)
802013e6:	00006517          	auipc	a0,0x6
802013ea:	19250513          	addi	a0,a0,402 # 80207578 <rt_system_timer_thread_init+0x5ba>
802013ee:	189030ef          	jal	80204d76 <rt_kprintf>
802013f2:	5c50                	lw	a2,60(s0)
802013f4:	5c0c                	lw	a1,56(s0)
802013f6:	00006517          	auipc	a0,0x6
802013fa:	1a250513          	addi	a0,a0,418 # 80207598 <rt_system_timer_thread_init+0x5da>
802013fe:	179030ef          	jal	80204d76 <rt_kprintf>
80201402:	4070                	lw	a2,68(s0)
80201404:	402c                	lw	a1,64(s0)
80201406:	00006517          	auipc	a0,0x6
8020140a:	1b250513          	addi	a0,a0,434 # 802075b8 <rt_system_timer_thread_init+0x5fa>
8020140e:	169030ef          	jal	80204d76 <rt_kprintf>
80201412:	440c                	lw	a1,8(s0)
80201414:	00006517          	auipc	a0,0x6
80201418:	1c450513          	addi	a0,a0,452 # 802075d8 <rt_system_timer_thread_init+0x61a>
8020141c:	15b030ef          	jal	80204d76 <rt_kprintf>
80201420:	441c                	lw	a5,8(s0)
80201422:	00006597          	auipc	a1,0x6
80201426:	db658593          	addi	a1,a1,-586 # 802071d8 <rt_system_timer_thread_init+0x21a>
8020142a:	8b89                	andi	a5,a5,2
8020142c:	e789                	bnez	a5,80201436 <dump_regs+0x168>
8020142e:	00006597          	auipc	a1,0x6
80201432:	dca58593          	addi	a1,a1,-566 # 802071f8 <rt_system_timer_thread_init+0x23a>
80201436:	00006517          	auipc	a0,0x6
8020143a:	1b250513          	addi	a0,a0,434 # 802075e8 <rt_system_timer_thread_init+0x62a>
8020143e:	139030ef          	jal	80204d76 <rt_kprintf>
80201442:	441c                	lw	a5,8(s0)
80201444:	00006597          	auipc	a1,0x6
80201448:	dfc58593          	addi	a1,a1,-516 # 80207240 <rt_system_timer_thread_init+0x282>
8020144c:	0207f793          	andi	a5,a5,32
80201450:	c789                	beqz	a5,8020145a <dump_regs+0x18c>
80201452:	00006597          	auipc	a1,0x6
80201456:	dc658593          	addi	a1,a1,-570 # 80207218 <rt_system_timer_thread_init+0x25a>
8020145a:	00006517          	auipc	a0,0x6
8020145e:	18e50513          	addi	a0,a0,398 # 802075e8 <rt_system_timer_thread_init+0x62a>
80201462:	115030ef          	jal	80204d76 <rt_kprintf>
80201466:	441c                	lw	a5,8(s0)
80201468:	00006597          	auipc	a1,0x6
8020146c:	e2858593          	addi	a1,a1,-472 # 80207290 <rt_system_timer_thread_init+0x2d2>
80201470:	1007f793          	andi	a5,a5,256
80201474:	c789                	beqz	a5,8020147e <dump_regs+0x1b0>
80201476:	00006597          	auipc	a1,0x6
8020147a:	df258593          	addi	a1,a1,-526 # 80207268 <rt_system_timer_thread_init+0x2aa>
8020147e:	00006517          	auipc	a0,0x6
80201482:	16a50513          	addi	a0,a0,362 # 802075e8 <rt_system_timer_thread_init+0x62a>
80201486:	0f1030ef          	jal	80204d76 <rt_kprintf>
8020148a:	441c                	lw	a5,8(s0)
8020148c:	00006597          	auipc	a1,0x6
80201490:	e4458593          	addi	a1,a1,-444 # 802072d0 <rt_system_timer_thread_init+0x312>
80201494:	02d79713          	slli	a4,a5,0x2d
80201498:	00075663          	bgez	a4,802014a4 <dump_regs+0x1d6>
8020149c:	00006597          	auipc	a1,0x6
802014a0:	e1458593          	addi	a1,a1,-492 # 802072b0 <rt_system_timer_thread_init+0x2f2>
802014a4:	00006517          	auipc	a0,0x6
802014a8:	14450513          	addi	a0,a0,324 # 802075e8 <rt_system_timer_thread_init+0x62a>
802014ac:	0cb030ef          	jal	80204d76 <rt_kprintf>
802014b0:	441c                	lw	a5,8(s0)
802014b2:	00006597          	auipc	a1,0x6
802014b6:	e6658593          	addi	a1,a1,-410 # 80207318 <rt_system_timer_thread_init+0x35a>
802014ba:	02c79713          	slli	a4,a5,0x2c
802014be:	00075663          	bgez	a4,802014ca <dump_regs+0x1fc>
802014c2:	00006597          	auipc	a1,0x6
802014c6:	e2e58593          	addi	a1,a1,-466 # 802072f0 <rt_system_timer_thread_init+0x332>
802014ca:	00006517          	auipc	a0,0x6
802014ce:	11e50513          	addi	a0,a0,286 # 802075e8 <rt_system_timer_thread_init+0x62a>
802014d2:	0a5030ef          	jal	80204d76 <rt_kprintf>
802014d6:	180025f3          	csrr	a1,satp
802014da:	1582                	slli	a1,a1,0x20
802014dc:	9181                	srli	a1,a1,0x20
802014de:	00006517          	auipc	a0,0x6
802014e2:	11250513          	addi	a0,a0,274 # 802075f0 <rt_system_timer_thread_init+0x632>
802014e6:	091030ef          	jal	80204d76 <rt_kprintf>
802014ea:	00006597          	auipc	a1,0x6
802014ee:	11658593          	addi	a1,a1,278 # 80207600 <rt_system_timer_thread_init+0x642>
802014f2:	00006517          	auipc	a0,0x6
802014f6:	13650513          	addi	a0,a0,310 # 80207628 <rt_system_timer_thread_init+0x66a>
802014fa:	07d030ef          	jal	80204d76 <rt_kprintf>
802014fe:	6402                	ld	s0,0(sp)
80201500:	60a2                	ld	ra,8(sp)
80201502:	00006517          	auipc	a0,0x6
80201506:	13650513          	addi	a0,a0,310 # 80207638 <rt_system_timer_thread_init+0x67a>
8020150a:	2141                	addiw	sp,sp,16
8020150c:	06b0306f          	j	80204d76 <rt_kprintf>

80201510 <handle_trap>:
80201510:	fc01011b          	addiw	sp,sp,-64
80201514:	f426                	sd	s1,40(sp)
80201516:	00010497          	auipc	s1,0x10
8020151a:	e3248493          	addi	s1,s1,-462 # 80211348 <nested>
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
80201538:	5c3020ef          	jal	802042fa <rt_interrupt_enter>
8020153c:	d1dff0ef          	jal	80201258 <tick_isr>
80201540:	5ed020ef          	jal	8020432c <rt_interrupt_leave>
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
80201568:	593020ef          	jal	802042fa <rt_interrupt_enter>
8020156c:	acbff0ef          	jal	80201036 <plic_claim>
80201570:	842a                	mv	s0,a0
80201572:	ae7ff0ef          	jal	80201058 <plic_complete>
80201576:	0034171b          	slliw	a4,s0,0x3
8020157a:	00010797          	auipc	a5,0x10
8020157e:	f9678793          	addi	a5,a5,-106 # 80211510 <irq_desc>
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
802015a0:	0fc68693          	addi	a3,a3,252 # 80207698 <rt_system_timer_thread_init+0x6da>
802015a4:	4605                	li	a2,1
802015a6:	00006597          	auipc	a1,0x6
802015aa:	11a58593          	addi	a1,a1,282 # 802076c0 <rt_system_timer_thread_init+0x702>
802015ae:	450d                	li	a0,3
802015b0:	fbcff0ef          	jal	80200d6c <ulog_output>
802015b4:	00006697          	auipc	a3,0x6
802015b8:	11c68693          	addi	a3,a3,284 # 802076d0 <rt_system_timer_thread_init+0x712>
802015bc:	4605                	li	a2,1
802015be:	00006597          	auipc	a1,0x6
802015c2:	10258593          	addi	a1,a1,258 # 802076c0 <rt_system_timer_thread_init+0x702>
802015c6:	450d                	li	a0,3
802015c8:	fa4ff0ef          	jal	80200d6c <ulog_output>
802015cc:	0009081b          	sext.w	a6,s2
802015d0:	000a079b          	sext.w	a5,s4
802015d4:	0004071b          	sext.w	a4,s0
802015d8:	00006697          	auipc	a3,0x6
802015dc:	11068693          	addi	a3,a3,272 # 802076e8 <rt_system_timer_thread_init+0x72a>
802015e0:	4605                	li	a2,1
802015e2:	00006597          	auipc	a1,0x6
802015e6:	0de58593          	addi	a1,a1,222 # 802076c0 <rt_system_timer_thread_init+0x702>
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
8020160c:	06060613          	addi	a2,a2,96 # 80207668 <rt_system_timer_thread_init+0x6aa>
80201610:	00b7ea63          	bltu	a5,a1,80201624 <handle_trap+0x114>
80201614:	0025971b          	slliw	a4,a1,0x2
80201618:	00007797          	auipc	a5,0x7
8020161c:	1e078793          	addi	a5,a5,480 # 802087f8 <Interrupt_Name>
80201620:	9fb9                	addw	a5,a5,a4
80201622:	4390                	lw	a2,0(a5)
80201624:	00006517          	auipc	a0,0x6
80201628:	0ec50513          	addi	a0,a0,236 # 80207710 <rt_system_timer_thread_init+0x752>
8020162c:	74a030ef          	jal	80204d76 <rt_kprintf>
80201630:	8652                	mv	a2,s4
80201632:	86ca                	mv	a3,s2
80201634:	85a2                	mv	a1,s0
80201636:	00006517          	auipc	a0,0x6
8020163a:	0b250513          	addi	a0,a0,178 # 802076e8 <rt_system_timer_thread_init+0x72a>
8020163e:	738030ef          	jal	80204d76 <rt_kprintf>
80201642:	854e                	mv	a0,s3
80201644:	c8bff0ef          	jal	802012ce <dump_regs>
80201648:	00006517          	auipc	a0,0x6
8020164c:	10850513          	addi	a0,a0,264 # 80207750 <rt_system_timer_thread_init+0x792>
80201650:	726030ef          	jal	80204d76 <rt_kprintf>
80201654:	7a3040ef          	jal	802065f6 <rt_thread_self>
80201658:	85aa                	mv	a1,a0
8020165a:	00006517          	auipc	a0,0x6
8020165e:	12650513          	addi	a0,a0,294 # 80207780 <rt_system_timer_thread_init+0x7c2>
80201662:	714030ef          	jal	80204d76 <rt_kprintf>
80201666:	00006517          	auipc	a0,0x6
8020166a:	13250513          	addi	a0,a0,306 # 80207798 <rt_system_timer_thread_init+0x7da>
8020166e:	708030ef          	jal	80204d76 <rt_kprintf>
80201672:	0209a583          	lw	a1,32(s3)
80201676:	00006517          	auipc	a0,0x6
8020167a:	14a50513          	addi	a0,a0,330 # 802077c0 <rt_system_timer_thread_init+0x802>
8020167e:	c64a                	sw	s2,12(sp)
80201680:	c42e                	sw	a1,8(sp)
80201682:	6f4030ef          	jal	80204d76 <rt_kprintf>
80201686:	771040ef          	jal	802065f6 <rt_thread_self>
8020168a:	0081059b          	addiw	a1,sp,8
8020168e:	790030ef          	jal	80204e1e <rt_backtrace_frame>
80201692:	17300613          	li	a2,371
80201696:	00007597          	auipc	a1,0x7
8020169a:	15258593          	addi	a1,a1,338 # 802087e8 <__FUNCTION__.0>
8020169e:	00007517          	auipc	a0,0x7
802016a2:	e7250513          	addi	a0,a0,-398 # 80208510 <rt_system_timer_thread_init+0x1552>
802016a6:	085030ef          	jal	80204f2a <rt_assert_handler>
802016aa:	bd69                	j	80201544 <handle_trap+0x34>
802016ac:	0005879b          	sext.w	a5,a1
802016b0:	473d                	li	a4,15
802016b2:	00006617          	auipc	a2,0x6
802016b6:	fce60613          	addi	a2,a2,-50 # 80207680 <rt_system_timer_thread_init+0x6c2>
802016ba:	00f76a63          	bltu	a4,a5,802016ce <handle_trap+0x1be>
802016be:	0025971b          	slliw	a4,a1,0x2
802016c2:	00007797          	auipc	a5,0x7
802016c6:	16678793          	addi	a5,a5,358 # 80208828 <Exception_Name>
802016ca:	9fb9                	addw	a5,a5,a4
802016cc:	4390                	lw	a2,0(a5)
802016ce:	00006517          	auipc	a0,0x6
802016d2:	06250513          	addi	a0,a0,98 # 80207730 <rt_system_timer_thread_init+0x772>
802016d6:	bf99                	j	8020162c <handle_trap+0x11c>

802016d8 <main>:
802016d8:	4501                	li	a0,0
802016da:	8082                	ret

802016dc <primary_cpu_entry>:
802016dc:	3141                	addiw	sp,sp,-16
802016de:	e406                	sd	ra,8(sp)
802016e0:	d19fe0ef          	jal	802003f8 <rt_hw_interrupt_disable>
802016e4:	60a2                	ld	ra,8(sp)
802016e6:	2141                	addiw	sp,sp,16
802016e8:	71b0106f          	j	80203602 <entry>

802016ec <rt_hw_board_init>:
802016ec:	3141                	addiw	sp,sp,-16
802016ee:	04014597          	auipc	a1,0x4014
802016f2:	66258593          	addi	a1,a1,1634 # 84215d50 <__bss_end+0x4000000>
802016f6:	00014517          	auipc	a0,0x14
802016fa:	65a50513          	addi	a0,a0,1626 # 80215d50 <__bss_end>
802016fe:	e406                	sd	ra,8(sp)
80201700:	0e1030ef          	jal	80204fe0 <rt_system_heap_init>
80201704:	995ff0ef          	jal	80201098 <plic_init>
80201708:	899ff0ef          	jal	80200fa0 <rt_hw_interrupt_init>
8020170c:	108000ef          	jal	80201814 <rt_hw_uart_init>
80201710:	00006517          	auipc	a0,0x6
80201714:	32050513          	addi	a0,a0,800 # 80207a30 <rt_system_timer_thread_init+0xa72>
80201718:	5cc030ef          	jal	80204ce4 <rt_console_set_device>
8020171c:	b6bff0ef          	jal	80201286 <rt_hw_tick_init>
80201720:	585010ef          	jal	802034a4 <rt_components_board_init>
80201724:	60a2                	ld	ra,8(sp)
80201726:	04014617          	auipc	a2,0x4014
8020172a:	62a60613          	addi	a2,a2,1578 # 84215d50 <__bss_end+0x4000000>
8020172e:	00014597          	auipc	a1,0x14
80201732:	62258593          	addi	a1,a1,1570 # 80215d50 <__bss_end>
80201736:	2601                	sext.w	a2,a2
80201738:	2581                	sext.w	a1,a1
8020173a:	00006517          	auipc	a0,0x6
8020173e:	2fe50513          	addi	a0,a0,766 # 80207a38 <rt_system_timer_thread_init+0xa7a>
80201742:	2141                	addiw	sp,sp,16
80201744:	6320306f          	j	80204d76 <rt_kprintf>

80201748 <_uart_configure>:
80201748:	4501                	li	a0,0
8020174a:	8082                	ret

8020174c <_uart_putc>:
8020174c:	00008797          	auipc	a5,0x8
80201750:	b887a783          	lw	a5,-1144(a5) # 802092d4 <uart0_base>
80201754:	86be                	mv	a3,a5
80201756:	2795                	addiw	a5,a5,5
80201758:	00078703          	lb	a4,0(a5)
8020175c:	02077713          	andi	a4,a4,32
80201760:	df65                	beqz	a4,80201758 <_uart_putc+0xc>
80201762:	00b68023          	sb	a1,0(a3)
80201766:	4505                	li	a0,1
80201768:	8082                	ret

8020176a <_uart_getc>:
8020176a:	00008717          	auipc	a4,0x8
8020176e:	b6a72703          	lw	a4,-1174(a4) # 802092d4 <uart0_base>
80201772:	3141                	addiw	sp,sp,-16
80201774:	0057079b          	addiw	a5,a4,5
80201778:	00078783          	lb	a5,0(a5)
8020177c:	0ff7f793          	zext.b	a5,a5
80201780:	c63e                	sw	a5,12(sp)
80201782:	47b2                	lw	a5,12(sp)
80201784:	557d                	li	a0,-1
80201786:	8b85                	andi	a5,a5,1
80201788:	c789                	beqz	a5,80201792 <_uart_getc+0x28>
8020178a:	00070703          	lb	a4,0(a4)
8020178e:	0ff77513          	zext.b	a0,a4
80201792:	2141                	addiw	sp,sp,16
80201794:	8082                	ret

80201796 <rt_hw_uart_isr>:
80201796:	3101                	addiw	sp,sp,-32
80201798:	ec06                	sd	ra,24(sp)
8020179a:	e822                	sd	s0,16(sp)
8020179c:	e426                	sd	s1,8(sp)
8020179e:	84ae                	mv	s1,a1
802017a0:	c59fe0ef          	jal	802003f8 <rt_hw_interrupt_disable>
802017a4:	842a                	mv	s0,a0
802017a6:	4585                	li	a1,1
802017a8:	8526                	mv	a0,s1
802017aa:	15d010ef          	jal	80203106 <rt_hw_serial_isr>
802017ae:	8522                	mv	a0,s0
802017b0:	6442                	ld	s0,16(sp)
802017b2:	60e2                	ld	ra,24(sp)
802017b4:	64a2                	ld	s1,8(sp)
802017b6:	0201011b          	addiw	sp,sp,32
802017ba:	c39fe06f          	j	802003f2 <rt_hw_interrupt_enable>

802017be <_uart_control>:
802017be:	4799                	li	a5,6
802017c0:	02f58763          	beq	a1,a5,802017ee <_uart_control+0x30>
802017c4:	479d                	li	a5,7
802017c6:	02f59263          	bne	a1,a5,802017ea <_uart_control+0x2c>
802017ca:	2601                	sext.w	a2,a2
802017cc:	10000793          	li	a5,256
802017d0:	00f61d63          	bne	a2,a5,802017ea <_uart_control+0x2c>
802017d4:	00008797          	auipc	a5,0x8
802017d8:	b007a783          	lw	a5,-1280(a5) # 802092d4 <uart0_base>
802017dc:	2785                	addiw	a5,a5,1
802017de:	00078703          	lb	a4,0(a5)
802017e2:	0fe77713          	andi	a4,a4,254
802017e6:	00e78023          	sb	a4,0(a5)
802017ea:	4501                	li	a0,0
802017ec:	8082                	ret
802017ee:	2601                	sext.w	a2,a2
802017f0:	10000793          	li	a5,256
802017f4:	fef61be3          	bne	a2,a5,802017ea <_uart_control+0x2c>
802017f8:	00008717          	auipc	a4,0x8
802017fc:	adc72703          	lw	a4,-1316(a4) # 802092d4 <uart0_base>
80201800:	2705                	addiw	a4,a4,1
80201802:	00070783          	lb	a5,0(a4)
80201806:	0ff7f793          	zext.b	a5,a5
8020180a:	0017e793          	ori	a5,a5,1
8020180e:	00f70023          	sb	a5,0(a4)
80201812:	bfe1                	j	802017ea <_uart_control+0x2c>

80201814 <rt_hw_uart_init>:
80201814:	3101                	addiw	sp,sp,-32
80201816:	ec06                	sd	ra,24(sp)
80201818:	e822                	sd	s0,16(sp)
8020181a:	e426                	sd	s1,8(sp)
8020181c:	00007797          	auipc	a5,0x7
80201820:	04c78793          	addi	a5,a5,76 # 80208868 <_uart_ops>
80201824:	00010497          	auipc	s1,0x10
80201828:	0ec48493          	addi	s1,s1,236 # 80211910 <serial0>
8020182c:	c0fc                	sw	a5,68(s1)
8020182e:	00008797          	auipc	a5,0x8
80201832:	96a7b783          	ld	a5,-1686(a5) # 80209198 <__rt_init_end+0x30>
80201836:	00010417          	auipc	s0,0x10
8020183a:	b1a40413          	addi	s0,s0,-1254 # 80211350 <uart0>
8020183e:	e4bc                	sd	a5,72(s1)
80201840:	00008797          	auipc	a5,0x8
80201844:	a947a783          	lw	a5,-1388(a5) # 802092d4 <uart0_base>
80201848:	c01c                	sw	a5,0(s0)
8020184a:	86a2                	mv	a3,s0
8020184c:	47a9                	li	a5,10
8020184e:	14300613          	li	a2,323
80201852:	00006597          	auipc	a1,0x6
80201856:	1de58593          	addi	a1,a1,478 # 80207a30 <rt_system_timer_thread_init+0xa72>
8020185a:	8526                	mv	a0,s1
8020185c:	c05c                	sw	a5,4(s0)
8020185e:	037010ef          	jal	80203094 <rt_hw_serial_register>
80201862:	4048                	lw	a0,4(s0)
80201864:	8626                	mv	a2,s1
80201866:	00006697          	auipc	a3,0x6
8020186a:	1ca68693          	addi	a3,a3,458 # 80207a30 <rt_system_timer_thread_init+0xa72>
8020186e:	00000597          	auipc	a1,0x0
80201872:	f2858593          	addi	a1,a1,-216 # 80201796 <rt_hw_uart_isr>
80201876:	f02ff0ef          	jal	80200f78 <rt_hw_interrupt_install>
8020187a:	4048                	lw	a0,4(s0)
8020187c:	ee4ff0ef          	jal	80200f60 <rt_hw_interrupt_umask>
80201880:	60e2                	ld	ra,24(sp)
80201882:	6442                	ld	s0,16(sp)
80201884:	64a2                	ld	s1,8(sp)
80201886:	4501                	li	a0,0
80201888:	0201011b          	addiw	sp,sp,32
8020188c:	8082                	ret

8020188e <rt_device_find>:
8020188e:	45a5                	li	a1,9
80201890:	2b40406f          	j	80205b44 <rt_object_find>

80201894 <rt_device_register>:
80201894:	0005079b          	sext.w	a5,a0
80201898:	ef89                	bnez	a5,802018b2 <rt_device_register+0x1e>
8020189a:	f0100513          	li	a0,-255
8020189e:	8082                	ret
802018a0:	f0100513          	li	a0,-255
802018a4:	60e2                	ld	ra,24(sp)
802018a6:	6442                	ld	s0,16(sp)
802018a8:	64a2                	ld	s1,8(sp)
802018aa:	6902                	ld	s2,0(sp)
802018ac:	0201011b          	addiw	sp,sp,32
802018b0:	8082                	ret
802018b2:	3101                	addiw	sp,sp,-32
802018b4:	852e                	mv	a0,a1
802018b6:	e822                	sd	s0,16(sp)
802018b8:	e426                	sd	s1,8(sp)
802018ba:	e04a                	sd	s2,0(sp)
802018bc:	ec06                	sd	ra,24(sp)
802018be:	843e                	mv	s0,a5
802018c0:	84ae                	mv	s1,a1
802018c2:	8932                	mv	s2,a2
802018c4:	fcbff0ef          	jal	8020188e <rt_device_find>
802018c8:	2501                	sext.w	a0,a0
802018ca:	f979                	bnez	a0,802018a0 <rt_device_register+0xc>
802018cc:	8522                	mv	a0,s0
802018ce:	8626                	mv	a2,s1
802018d0:	45a5                	li	a1,9
802018d2:	63f030ef          	jal	80205710 <rt_object_init>
802018d6:	4501                	li	a0,0
802018d8:	03241423          	sh	s2,40(s0)
802018dc:	02040623          	sb	zero,44(s0)
802018e0:	02041523          	sh	zero,42(s0)
802018e4:	b7c1                	j	802018a4 <rt_device_register+0x10>

802018e6 <rt_device_open>:
802018e6:	3101                	addiw	sp,sp,-32
802018e8:	e822                	sd	s0,16(sp)
802018ea:	e04a                	sd	s2,0(sp)
802018ec:	0005079b          	sext.w	a5,a0
802018f0:	ec06                	sd	ra,24(sp)
802018f2:	e426                	sd	s1,8(sp)
802018f4:	843e                	mv	s0,a5
802018f6:	892e                	mv	s2,a1
802018f8:	ef89                	bnez	a5,80201912 <rt_device_open+0x2c>
802018fa:	0e100613          	li	a2,225
802018fe:	00007597          	auipc	a1,0x7
80201902:	fa258593          	addi	a1,a1,-94 # 802088a0 <__FUNCTION__.6>
80201906:	00006517          	auipc	a0,0x6
8020190a:	15250513          	addi	a0,a0,338 # 80207a58 <rt_system_timer_thread_init+0xa9a>
8020190e:	61c030ef          	jal	80204f2a <rt_assert_handler>
80201912:	8522                	mv	a0,s0
80201914:	140040ef          	jal	80205a54 <rt_object_get_type>
80201918:	47a5                	li	a5,9
8020191a:	00f50e63          	beq	a0,a5,80201936 <rt_device_open+0x50>
8020191e:	0e200613          	li	a2,226
80201922:	00007597          	auipc	a1,0x7
80201926:	f7e58593          	addi	a1,a1,-130 # 802088a0 <__FUNCTION__.6>
8020192a:	00006517          	auipc	a0,0x6
8020192e:	13e50513          	addi	a0,a0,318 # 80207a68 <rt_system_timer_thread_init+0xaaa>
80201932:	5f8030ef          	jal	80204f2a <rt_assert_handler>
80201936:	02845783          	lhu	a5,40(s0)
8020193a:	8bc1                	andi	a5,a5,16
8020193c:	e7a9                	bnez	a5,80201986 <rt_device_open+0xa0>
8020193e:	5c1c                	lw	a5,56(s0)
80201940:	cf8d                	beqz	a5,8020197a <rt_device_open+0x94>
80201942:	439c                	lw	a5,0(a5)
80201944:	cb9d                	beqz	a5,8020197a <rt_device_open+0x94>
80201946:	8522                	mv	a0,s0
80201948:	9782                	jalr	a5
8020194a:	84aa                	mv	s1,a0
8020194c:	c51d                	beqz	a0,8020197a <rt_device_open+0x94>
8020194e:	87aa                	mv	a5,a0
80201950:	8722                	mv	a4,s0
80201952:	00006697          	auipc	a3,0x6
80201956:	17e68693          	addi	a3,a3,382 # 80207ad0 <rt_system_timer_thread_init+0xb12>
8020195a:	4605                	li	a2,1
8020195c:	00006597          	auipc	a1,0x6
80201960:	1ac58593          	addi	a1,a1,428 # 80207b08 <rt_system_timer_thread_init+0xb4a>
80201964:	450d                	li	a0,3
80201966:	c06ff0ef          	jal	80200d6c <ulog_output>
8020196a:	60e2                	ld	ra,24(sp)
8020196c:	6442                	ld	s0,16(sp)
8020196e:	6902                	ld	s2,0(sp)
80201970:	8526                	mv	a0,s1
80201972:	64a2                	ld	s1,8(sp)
80201974:	0201011b          	addiw	sp,sp,32
80201978:	8082                	ret
8020197a:	02845783          	lhu	a5,40(s0)
8020197e:	0107e793          	ori	a5,a5,16
80201982:	02f41423          	sh	a5,40(s0)
80201986:	02845703          	lhu	a4,40(s0)
8020198a:	02a45783          	lhu	a5,42(s0)
8020198e:	8b21                	andi	a4,a4,8
80201990:	0087f693          	andi	a3,a5,8
80201994:	c30d                	beqz	a4,802019b6 <rt_device_open+0xd0>
80201996:	54c1                	li	s1,-16
80201998:	fae9                	bnez	a3,8020196a <rt_device_open+0x84>
8020199a:	5c1c                	lw	a5,56(s0)
8020199c:	c3ad                	beqz	a5,802019fe <rt_device_open+0x118>
8020199e:	43dc                	lw	a5,4(a5)
802019a0:	cfb9                	beqz	a5,802019fe <rt_device_open+0x118>
802019a2:	85ca                	mv	a1,s2
802019a4:	8522                	mv	a0,s0
802019a6:	9782                	jalr	a5
802019a8:	84aa                	mv	s1,a0
802019aa:	cd11                	beqz	a0,802019c6 <rt_device_open+0xe0>
802019ac:	fa800793          	li	a5,-88
802019b0:	faf51de3          	bne	a0,a5,8020196a <rt_device_open+0x84>
802019b4:	a811                	j	802019c8 <rt_device_open+0xe2>
802019b6:	d2f5                	beqz	a3,8020199a <rt_device_open+0xb4>
802019b8:	6705                	lui	a4,0x1
802019ba:	00f947b3          	xor	a5,s2,a5
802019be:	f0f70713          	addi	a4,a4,-241 # f0f <__STACKSIZE__-0x30f1>
802019c2:	8ff9                	and	a5,a5,a4
802019c4:	fbf9                	bnez	a5,8020199a <rt_device_open+0xb4>
802019c6:	4481                	li	s1,0
802019c8:	02a45783          	lhu	a5,42(s0)
802019cc:	0087e793          	ori	a5,a5,8
802019d0:	02f41523          	sh	a5,42(s0)
802019d4:	02c44783          	lbu	a5,44(s0)
802019d8:	2785                	addiw	a5,a5,1
802019da:	0ff7f793          	zext.b	a5,a5
802019de:	02f40623          	sb	a5,44(s0)
802019e2:	f7c1                	bnez	a5,8020196a <rt_device_open+0x84>
802019e4:	11400613          	li	a2,276
802019e8:	00007597          	auipc	a1,0x7
802019ec:	eb858593          	addi	a1,a1,-328 # 802088a0 <__FUNCTION__.6>
802019f0:	00006517          	auipc	a0,0x6
802019f4:	12850513          	addi	a0,a0,296 # 80207b18 <rt_system_timer_thread_init+0xb5a>
802019f8:	532030ef          	jal	80204f2a <rt_assert_handler>
802019fc:	b7bd                	j	8020196a <rt_device_open+0x84>
802019fe:	6785                	lui	a5,0x1
80201a00:	f0f78793          	addi	a5,a5,-241 # f0f <__STACKSIZE__-0x30f1>
80201a04:	00f97933          	and	s2,s2,a5
80201a08:	03241523          	sh	s2,42(s0)
80201a0c:	bf6d                	j	802019c6 <rt_device_open+0xe0>

80201a0e <rt_device_close>:
80201a0e:	3141                	addiw	sp,sp,-16
80201a10:	e022                	sd	s0,0(sp)
80201a12:	0005079b          	sext.w	a5,a0
80201a16:	e406                	sd	ra,8(sp)
80201a18:	843e                	mv	s0,a5
80201a1a:	ef89                	bnez	a5,80201a34 <rt_device_close+0x26>
80201a1c:	12700613          	li	a2,295
80201a20:	00007597          	auipc	a1,0x7
80201a24:	e7058593          	addi	a1,a1,-400 # 80208890 <__FUNCTION__.5>
80201a28:	00006517          	auipc	a0,0x6
80201a2c:	03050513          	addi	a0,a0,48 # 80207a58 <rt_system_timer_thread_init+0xa9a>
80201a30:	4fa030ef          	jal	80204f2a <rt_assert_handler>
80201a34:	8522                	mv	a0,s0
80201a36:	01e040ef          	jal	80205a54 <rt_object_get_type>
80201a3a:	47a5                	li	a5,9
80201a3c:	00f50e63          	beq	a0,a5,80201a58 <rt_device_close+0x4a>
80201a40:	12800613          	li	a2,296
80201a44:	00007597          	auipc	a1,0x7
80201a48:	e4c58593          	addi	a1,a1,-436 # 80208890 <__FUNCTION__.5>
80201a4c:	00006517          	auipc	a0,0x6
80201a50:	01c50513          	addi	a0,a0,28 # 80207a68 <rt_system_timer_thread_init+0xaaa>
80201a54:	4d6030ef          	jal	80204f2a <rt_assert_handler>
80201a58:	02c44783          	lbu	a5,44(s0)
80201a5c:	f0100513          	li	a0,-255
80201a60:	c79d                	beqz	a5,80201a8e <rt_device_close+0x80>
80201a62:	37fd                	addiw	a5,a5,-1
80201a64:	0ff7f793          	zext.b	a5,a5
80201a68:	02f40623          	sb	a5,44(s0)
80201a6c:	4501                	li	a0,0
80201a6e:	e385                	bnez	a5,80201a8e <rt_device_close+0x80>
80201a70:	5c1c                	lw	a5,56(s0)
80201a72:	e789                	bnez	a5,80201a7c <rt_device_close+0x6e>
80201a74:	4501                	li	a0,0
80201a76:	02041523          	sh	zero,42(s0)
80201a7a:	a811                	j	80201a8e <rt_device_close+0x80>
80201a7c:	479c                	lw	a5,8(a5)
80201a7e:	dbfd                	beqz	a5,80201a74 <rt_device_close+0x66>
80201a80:	8522                	mv	a0,s0
80201a82:	9782                	jalr	a5
80201a84:	d965                	beqz	a0,80201a74 <rt_device_close+0x66>
80201a86:	fa800793          	li	a5,-88
80201a8a:	fef506e3          	beq	a0,a5,80201a76 <rt_device_close+0x68>
80201a8e:	60a2                	ld	ra,8(sp)
80201a90:	6402                	ld	s0,0(sp)
80201a92:	2141                	addiw	sp,sp,16
80201a94:	8082                	ret

80201a96 <rt_device_write>:
80201a96:	fd01011b          	addiw	sp,sp,-48
80201a9a:	f022                	sd	s0,32(sp)
80201a9c:	ec26                	sd	s1,24(sp)
80201a9e:	e84a                	sd	s2,16(sp)
80201aa0:	e44e                	sd	s3,8(sp)
80201aa2:	0005079b          	sext.w	a5,a0
80201aa6:	f406                	sd	ra,40(sp)
80201aa8:	843e                	mv	s0,a5
80201aaa:	84ae                	mv	s1,a1
80201aac:	8932                	mv	s2,a2
80201aae:	89b6                	mv	s3,a3
80201ab0:	ef89                	bnez	a5,80201aca <rt_device_write+0x34>
80201ab2:	18000613          	li	a2,384
80201ab6:	00007597          	auipc	a1,0x7
80201aba:	dca58593          	addi	a1,a1,-566 # 80208880 <__FUNCTION__.3>
80201abe:	00006517          	auipc	a0,0x6
80201ac2:	f9a50513          	addi	a0,a0,-102 # 80207a58 <rt_system_timer_thread_init+0xa9a>
80201ac6:	464030ef          	jal	80204f2a <rt_assert_handler>
80201aca:	8522                	mv	a0,s0
80201acc:	789030ef          	jal	80205a54 <rt_object_get_type>
80201ad0:	47a5                	li	a5,9
80201ad2:	00f50e63          	beq	a0,a5,80201aee <rt_device_write+0x58>
80201ad6:	18100613          	li	a2,385
80201ada:	00007597          	auipc	a1,0x7
80201ade:	da658593          	addi	a1,a1,-602 # 80208880 <__FUNCTION__.3>
80201ae2:	00006517          	auipc	a0,0x6
80201ae6:	f8650513          	addi	a0,a0,-122 # 80207a68 <rt_system_timer_thread_init+0xaaa>
80201aea:	440030ef          	jal	80204f2a <rt_assert_handler>
80201aee:	02c44783          	lbu	a5,44(s0)
80201af2:	f0100513          	li	a0,-255
80201af6:	c39d                	beqz	a5,80201b1c <rt_device_write+0x86>
80201af8:	5c1c                	lw	a5,56(s0)
80201afa:	cf99                	beqz	a5,80201b18 <rt_device_write+0x82>
80201afc:	4b9c                	lw	a5,16(a5)
80201afe:	cf89                	beqz	a5,80201b18 <rt_device_write+0x82>
80201b00:	8522                	mv	a0,s0
80201b02:	7402                	ld	s0,32(sp)
80201b04:	70a2                	ld	ra,40(sp)
80201b06:	86ce                	mv	a3,s3
80201b08:	864a                	mv	a2,s2
80201b0a:	69a2                	ld	s3,8(sp)
80201b0c:	6942                	ld	s2,16(sp)
80201b0e:	85a6                	mv	a1,s1
80201b10:	64e2                	ld	s1,24(sp)
80201b12:	0301011b          	addiw	sp,sp,48
80201b16:	8782                	jr	a5
80201b18:	fa800513          	li	a0,-88
80201b1c:	7ad020ef          	jal	80204ac8 <rt_set_errno>
80201b20:	70a2                	ld	ra,40(sp)
80201b22:	7402                	ld	s0,32(sp)
80201b24:	64e2                	ld	s1,24(sp)
80201b26:	6942                	ld	s2,16(sp)
80201b28:	69a2                	ld	s3,8(sp)
80201b2a:	4501                	li	a0,0
80201b2c:	0301011b          	addiw	sp,sp,48
80201b30:	8082                	ret

80201b32 <clock_cpu_setops>:
80201b32:	00010797          	auipc	a5,0x10
80201b36:	82a7a323          	sw	a0,-2010(a5) # 80211358 <_cputime_ops>
80201b3a:	0005079b          	sext.w	a5,a0
80201b3e:	c7b1                	beqz	a5,80201b8a <clock_cpu_setops+0x58>
80201b40:	411c                	lw	a5,0(a0)
80201b42:	3141                	addiw	sp,sp,-16
80201b44:	e022                	sd	s0,0(sp)
80201b46:	e406                	sd	ra,8(sp)
80201b48:	842a                	mv	s0,a0
80201b4a:	ef89                	bnez	a5,80201b64 <clock_cpu_setops+0x32>
80201b4c:	06f00613          	li	a2,111
80201b50:	00007597          	auipc	a1,0x7
80201b54:	d6058593          	addi	a1,a1,-672 # 802088b0 <__FUNCTION__.0>
80201b58:	00006517          	auipc	a0,0x6
80201b5c:	fd850513          	addi	a0,a0,-40 # 80207b30 <rt_system_timer_thread_init+0xb72>
80201b60:	3ca030ef          	jal	80204f2a <rt_assert_handler>
80201b64:	405c                	lw	a5,4(s0)
80201b66:	ef89                	bnez	a5,80201b80 <clock_cpu_setops+0x4e>
80201b68:	07000613          	li	a2,112
80201b6c:	00007597          	auipc	a1,0x7
80201b70:	d4458593          	addi	a1,a1,-700 # 802088b0 <__FUNCTION__.0>
80201b74:	00006517          	auipc	a0,0x6
80201b78:	fdc50513          	addi	a0,a0,-36 # 80207b50 <rt_system_timer_thread_init+0xb92>
80201b7c:	3ae030ef          	jal	80204f2a <rt_assert_handler>
80201b80:	60a2                	ld	ra,8(sp)
80201b82:	6402                	ld	s0,0(sp)
80201b84:	4501                	li	a0,0
80201b86:	2141                	addiw	sp,sp,16
80201b88:	8082                	ret
80201b8a:	4501                	li	a0,0
80201b8c:	8082                	ret

80201b8e <riscv_cputime_getres>:
80201b8e:	05f5e537          	lui	a0,0x5f5e
80201b92:	10050513          	addi	a0,a0,256 # 5f5e100 <__text_size+0x5f54f58>
80201b96:	8082                	ret

80201b98 <riscv_cputime_gettime>:
80201b98:	c0102573          	rdtime	a0
80201b9c:	8082                	ret

80201b9e <riscv_cputime_init>:
80201b9e:	3141                	addiw	sp,sp,-16
80201ba0:	00007517          	auipc	a0,0x7
80201ba4:	d4050513          	addi	a0,a0,-704 # 802088e0 <_riscv_ops>
80201ba8:	e406                	sd	ra,8(sp)
80201baa:	f89ff0ef          	jal	80201b32 <clock_cpu_setops>
80201bae:	60a2                	ld	ra,8(sp)
80201bb0:	4501                	li	a0,0
80201bb2:	2141                	addiw	sp,sp,16
80201bb4:	8082                	ret

80201bb6 <rt_completion_done>:
80201bb6:	55fd                	li	a1,-1
80201bb8:	a4a1                	j	80201e00 <rt_completion_wakeup_by_errno>

80201bba <rt_completion_wait>:
80201bba:	4609                	li	a2,2
80201bbc:	a815                	j	80201bf0 <rt_completion_wait_flags>

80201bbe <rt_completion_init>:
80201bbe:	3141                	addiw	sp,sp,-16
80201bc0:	e022                	sd	s0,0(sp)
80201bc2:	0005079b          	sext.w	a5,a0
80201bc6:	e406                	sd	ra,8(sp)
80201bc8:	843e                	mv	s0,a5
80201bca:	ef89                	bnez	a5,80201be4 <rt_completion_init+0x26>
80201bcc:	02a00613          	li	a2,42
80201bd0:	00007597          	auipc	a1,0x7
80201bd4:	d6058593          	addi	a1,a1,-672 # 80208930 <__FUNCTION__.2>
80201bd8:	00006517          	auipc	a0,0x6
80201bdc:	f9850513          	addi	a0,a0,-104 # 80207b70 <rt_system_timer_thread_init+0xbb2>
80201be0:	34a030ef          	jal	80204f2a <rt_assert_handler>
80201be4:	60a2                	ld	ra,8(sp)
80201be6:	00042023          	sw	zero,0(s0)
80201bea:	6402                	ld	s0,0(sp)
80201bec:	2141                	addiw	sp,sp,16
80201bee:	8082                	ret

80201bf0 <rt_completion_wait_flags>:
80201bf0:	f901011b          	addiw	sp,sp,-112
80201bf4:	e8ca                	sd	s2,80(sp)
80201bf6:	fc56                	sd	s5,56(sp)
80201bf8:	0005079b          	sext.w	a5,a0
80201bfc:	f486                	sd	ra,104(sp)
80201bfe:	f0a2                	sd	s0,96(sp)
80201c00:	eca6                	sd	s1,88(sp)
80201c02:	e4ce                	sd	s3,72(sp)
80201c04:	e0d2                	sd	s4,64(sp)
80201c06:	f85a                	sd	s6,48(sp)
80201c08:	f45e                	sd	s7,40(sp)
80201c0a:	f062                	sd	s8,32(sp)
80201c0c:	ec66                	sd	s9,24(sp)
80201c0e:	e86a                	sd	s10,16(sp)
80201c10:	c62e                	sw	a1,12(sp)
80201c12:	893e                	mv	s2,a5
80201c14:	8ab2                	mv	s5,a2
80201c16:	ef89                	bnez	a5,80201c30 <rt_completion_wait_flags+0x40>
80201c18:	04700613          	li	a2,71
80201c1c:	00007597          	auipc	a1,0x7
80201c20:	cf458593          	addi	a1,a1,-780 # 80208910 <__FUNCTION__.1>
80201c24:	00006517          	auipc	a0,0x6
80201c28:	f4c50513          	addi	a0,a0,-180 # 80207b70 <rt_system_timer_thread_init+0xbb2>
80201c2c:	2fe030ef          	jal	80204f2a <rt_assert_handler>
80201c30:	47b2                	lw	a5,12(sp)
80201c32:	cfc9                	beqz	a5,80201ccc <rt_completion_wait_flags+0xdc>
80201c34:	5d6040ef          	jal	8020620a <rt_critical_level>
80201c38:	c51d                	beqz	a0,80201c66 <rt_completion_wait_flags+0x76>
80201c3a:	00007597          	auipc	a1,0x7
80201c3e:	cd658593          	addi	a1,a1,-810 # 80208910 <__FUNCTION__.1>
80201c42:	00006517          	auipc	a0,0x6
80201c46:	f4650513          	addi	a0,a0,-186 # 80207b88 <rt_system_timer_thread_init+0xbca>
80201c4a:	12c030ef          	jal	80204d76 <rt_kprintf>
80201c4e:	04a00613          	li	a2,74
80201c52:	00007597          	auipc	a1,0x7
80201c56:	cbe58593          	addi	a1,a1,-834 # 80208910 <__FUNCTION__.1>
80201c5a:	00007517          	auipc	a0,0x7
80201c5e:	8b650513          	addi	a0,a0,-1866 # 80208510 <rt_system_timer_thread_init+0x1552>
80201c62:	2c8030ef          	jal	80204f2a <rt_assert_handler>
80201c66:	191040ef          	jal	802065f6 <rt_thread_self>
80201c6a:	2501                	sext.w	a0,a0
80201c6c:	e51d                	bnez	a0,80201c9a <rt_completion_wait_flags+0xaa>
80201c6e:	00007597          	auipc	a1,0x7
80201c72:	ca258593          	addi	a1,a1,-862 # 80208910 <__FUNCTION__.1>
80201c76:	00006517          	auipc	a0,0x6
80201c7a:	f4250513          	addi	a0,a0,-190 # 80207bb8 <rt_system_timer_thread_init+0xbfa>
80201c7e:	0f8030ef          	jal	80204d76 <rt_kprintf>
80201c82:	04a00613          	li	a2,74
80201c86:	00007597          	auipc	a1,0x7
80201c8a:	c8a58593          	addi	a1,a1,-886 # 80208910 <__FUNCTION__.1>
80201c8e:	00007517          	auipc	a0,0x7
80201c92:	88250513          	addi	a0,a0,-1918 # 80208510 <rt_system_timer_thread_init+0x1552>
80201c96:	294030ef          	jal	80204f2a <rt_assert_handler>
80201c9a:	6be020ef          	jal	80204358 <rt_interrupt_get_nest>
80201c9e:	c51d                	beqz	a0,80201ccc <rt_completion_wait_flags+0xdc>
80201ca0:	00007597          	auipc	a1,0x7
80201ca4:	c7058593          	addi	a1,a1,-912 # 80208910 <__FUNCTION__.1>
80201ca8:	00006517          	auipc	a0,0x6
80201cac:	f4850513          	addi	a0,a0,-184 # 80207bf0 <rt_system_timer_thread_init+0xc32>
80201cb0:	0c6030ef          	jal	80204d76 <rt_kprintf>
80201cb4:	04a00613          	li	a2,74
80201cb8:	00007597          	auipc	a1,0x7
80201cbc:	c5858593          	addi	a1,a1,-936 # 80208910 <__FUNCTION__.1>
80201cc0:	00007517          	auipc	a0,0x7
80201cc4:	85050513          	addi	a0,a0,-1968 # 80208510 <rt_system_timer_thread_init+0x1552>
80201cc8:	262030ef          	jal	80204f2a <rt_assert_handler>
80201ccc:	12b040ef          	jal	802065f6 <rt_thread_self>
80201cd0:	89aa                	mv	s3,a0
80201cd2:	0000f517          	auipc	a0,0xf
80201cd6:	68e50513          	addi	a0,a0,1678 # 80211360 <_completion_lock>
80201cda:	145010ef          	jal	8020361e <rt_spin_lock_irqsave>
80201cde:	ffe9fa13          	andi	s4,s3,-2
80201ce2:	84aa                	mv	s1,a0
80201ce4:	4c05                	li	s8,1
80201ce6:	00007b17          	auipc	s6,0x7
80201cea:	c2ab0b13          	addi	s6,s6,-982 # 80208910 <__FUNCTION__.1>
80201cee:	00006c97          	auipc	s9,0x6
80201cf2:	f2ac8c93          	addi	s9,s9,-214 # 80207c18 <rt_system_timer_thread_init+0xc5a>
80201cf6:	2a01                	sext.w	s4,s4
80201cf8:	00006d17          	auipc	s10,0x6
80201cfc:	ef8d0d13          	addi	s10,s10,-264 # 80207bf0 <rt_system_timer_thread_init+0xc32>
80201d00:	05898b9b          	addiw	s7,s3,88
80201d04:	00092783          	lw	a5,0(s2)
80201d08:	0017f713          	andi	a4,a5,1
80201d0c:	0e071563          	bnez	a4,80201df6 <rt_completion_wait_flags+0x206>
80201d10:	00fc7863          	bgeu	s8,a5,80201d20 <rt_completion_wait_flags+0x130>
80201d14:	05500613          	li	a2,85
80201d18:	85da                	mv	a1,s6
80201d1a:	8566                	mv	a0,s9
80201d1c:	20e030ef          	jal	80204f2a <rt_assert_handler>
80201d20:	47b2                	lw	a5,12(sp)
80201d22:	0c078c63          	beqz	a5,80201dfa <rt_completion_wait_flags+0x20a>
80201d26:	0209ac23          	sw	zero,56(s3)
80201d2a:	85d6                	mv	a1,s5
80201d2c:	854e                	mv	a0,s3
80201d2e:	367040ef          	jal	80206894 <rt_thread_suspend_with_flag>
80201d32:	842a                	mv	s0,a0
80201d34:	e941                	bnez	a0,80201dc4 <rt_completion_wait_flags+0x1d4>
80201d36:	01492023          	sw	s4,0(s2)
80201d3a:	61e020ef          	jal	80204358 <rt_interrupt_get_nest>
80201d3e:	cd11                	beqz	a0,80201d5a <rt_completion_wait_flags+0x16a>
80201d40:	85da                	mv	a1,s6
80201d42:	856a                	mv	a0,s10
80201d44:	032030ef          	jal	80204d76 <rt_kprintf>
80201d48:	06a00613          	li	a2,106
80201d4c:	85da                	mv	a1,s6
80201d4e:	00006517          	auipc	a0,0x6
80201d52:	7c250513          	addi	a0,a0,1986 # 80208510 <rt_system_timer_thread_init+0x1552>
80201d56:	1d4030ef          	jal	80204f2a <rt_assert_handler>
80201d5a:	47b2                	lw	a5,12(sp)
80201d5c:	00f05b63          	blez	a5,80201d72 <rt_completion_wait_flags+0x182>
80201d60:	00c1061b          	addiw	a2,sp,12
80201d64:	4581                	li	a1,0
80201d66:	855e                	mv	a0,s7
80201d68:	7c1040ef          	jal	80206d28 <rt_timer_control>
80201d6c:	855e                	mv	a0,s7
80201d6e:	641040ef          	jal	80206bae <rt_timer_start>
80201d72:	85a6                	mv	a1,s1
80201d74:	0000f517          	auipc	a0,0xf
80201d78:	5ec50513          	addi	a0,a0,1516 # 80211360 <_completion_lock>
80201d7c:	0bd010ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80201d80:	26a040ef          	jal	80205fea <rt_schedule>
80201d84:	0000f517          	auipc	a0,0xf
80201d88:	5dc50513          	addi	a0,a0,1500 # 80211360 <_completion_lock>
80201d8c:	093010ef          	jal	8020361e <rt_spin_lock_irqsave>
80201d90:	00092783          	lw	a5,0(s2)
80201d94:	84aa                	mv	s1,a0
80201d96:	01478463          	beq	a5,s4,80201d9e <rt_completion_wait_flags+0x1ae>
80201d9a:	c602                	sw	zero,12(sp)
80201d9c:	b7a5                	j	80201d04 <rt_completion_wait_flags+0x114>
80201d9e:	0389a783          	lw	a5,56(s3)
80201da2:	41f7d41b          	sraiw	s0,a5,0x1f
80201da6:	8fa1                	xor	a5,a5,s0
80201da8:	9c1d                	subw	s0,s0,a5
80201daa:	ec09                	bnez	s0,80201dc4 <rt_completion_wait_flags+0x1d4>
80201dac:	08800613          	li	a2,136
80201db0:	00007597          	auipc	a1,0x7
80201db4:	b6058593          	addi	a1,a1,-1184 # 80208910 <__FUNCTION__.1>
80201db8:	00006517          	auipc	a0,0x6
80201dbc:	e9050513          	addi	a0,a0,-368 # 80207c48 <rt_system_timer_thread_init+0xc8a>
80201dc0:	16a030ef          	jal	80204f2a <rt_assert_handler>
80201dc4:	00092023          	sw	zero,0(s2)
80201dc8:	85a6                	mv	a1,s1
80201dca:	0000f517          	auipc	a0,0xf
80201dce:	59650513          	addi	a0,a0,1430 # 80211360 <_completion_lock>
80201dd2:	067010ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80201dd6:	70a6                	ld	ra,104(sp)
80201dd8:	8522                	mv	a0,s0
80201dda:	7406                	ld	s0,96(sp)
80201ddc:	64e6                	ld	s1,88(sp)
80201dde:	6946                	ld	s2,80(sp)
80201de0:	69a6                	ld	s3,72(sp)
80201de2:	6a06                	ld	s4,64(sp)
80201de4:	7ae2                	ld	s5,56(sp)
80201de6:	7b42                	ld	s6,48(sp)
80201de8:	7ba2                	ld	s7,40(sp)
80201dea:	7c02                	ld	s8,32(sp)
80201dec:	6ce2                	ld	s9,24(sp)
80201dee:	6d42                	ld	s10,16(sp)
80201df0:	0701011b          	addiw	sp,sp,112
80201df4:	8082                	ret
80201df6:	4401                	li	s0,0
80201df8:	b7f1                	j	80201dc4 <rt_completion_wait_flags+0x1d4>
80201dfa:	f8c00413          	li	s0,-116
80201dfe:	b7e9                	j	80201dc8 <rt_completion_wait_flags+0x1d8>

80201e00 <rt_completion_wakeup_by_errno>:
80201e00:	fd01011b          	addiw	sp,sp,-48
80201e04:	f022                	sd	s0,32(sp)
80201e06:	ec26                	sd	s1,24(sp)
80201e08:	0005079b          	sext.w	a5,a0
80201e0c:	f406                	sd	ra,40(sp)
80201e0e:	84be                	mv	s1,a5
80201e10:	842e                	mv	s0,a1
80201e12:	ef89                	bnez	a5,80201e2c <rt_completion_wakeup_by_errno+0x2c>
80201e14:	0a800613          	li	a2,168
80201e18:	00007597          	auipc	a1,0x7
80201e1c:	ad858593          	addi	a1,a1,-1320 # 802088f0 <__FUNCTION__.0>
80201e20:	00006517          	auipc	a0,0x6
80201e24:	d5050513          	addi	a0,a0,-688 # 80207b70 <rt_system_timer_thread_init+0xbb2>
80201e28:	102030ef          	jal	80204f2a <rt_assert_handler>
80201e2c:	0000f517          	auipc	a0,0xf
80201e30:	53450513          	addi	a0,a0,1332 # 80211360 <_completion_lock>
80201e34:	7ea010ef          	jal	8020361e <rt_spin_lock_irqsave>
80201e38:	409c                	lw	a5,0(s1)
80201e3a:	85aa                	mv	a1,a0
80201e3c:	0017f713          	andi	a4,a5,1
80201e40:	cf19                	beqz	a4,80201e5e <rt_completion_wakeup_by_errno+0x5e>
80201e42:	0000f517          	auipc	a0,0xf
80201e46:	51e50513          	addi	a0,a0,1310 # 80211360 <_completion_lock>
80201e4a:	7ee010ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80201e4e:	5441                	li	s0,-16
80201e50:	70a2                	ld	ra,40(sp)
80201e52:	8522                	mv	a0,s0
80201e54:	7402                	ld	s0,32(sp)
80201e56:	64e2                	ld	s1,24(sp)
80201e58:	0301011b          	addiw	sp,sp,48
80201e5c:	8082                	ret
80201e5e:	4705                	li	a4,1
80201e60:	00f77d63          	bgeu	a4,a5,80201e7a <rt_completion_wakeup_by_errno+0x7a>
80201e64:	ffe7f513          	andi	a0,a5,-2
80201e68:	00044363          	bltz	s0,80201e6e <rt_completion_wakeup_by_errno+0x6e>
80201e6c:	dd00                	sw	s0,56(a0)
80201e6e:	e42e                	sd	a1,8(sp)
80201e70:	22f040ef          	jal	8020689e <rt_thread_resume>
80201e74:	65a2                	ld	a1,8(sp)
80201e76:	842a                	mv	s0,a0
80201e78:	c119                	beqz	a0,80201e7e <rt_completion_wakeup_by_errno+0x7e>
80201e7a:	fc300413          	li	s0,-61
80201e7e:	4785                	li	a5,1
80201e80:	c09c                	sw	a5,0(s1)
80201e82:	0000f517          	auipc	a0,0xf
80201e86:	4de50513          	addi	a0,a0,1246 # 80211360 <_completion_lock>
80201e8a:	7ae010ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80201e8e:	b7c9                	j	80201e50 <rt_completion_wakeup_by_errno+0x50>

80201e90 <rt_data_queue_init>:
80201e90:	fd01011b          	addiw	sp,sp,-48
80201e94:	f022                	sd	s0,32(sp)
80201e96:	ec26                	sd	s1,24(sp)
80201e98:	e84a                	sd	s2,16(sp)
80201e9a:	e44e                	sd	s3,8(sp)
80201e9c:	0005079b          	sext.w	a5,a0
80201ea0:	f406                	sd	ra,40(sp)
80201ea2:	843e                	mv	s0,a5
80201ea4:	84ae                	mv	s1,a1
80201ea6:	8932                	mv	s2,a2
80201ea8:	89b6                	mv	s3,a3
80201eaa:	ef89                	bnez	a5,80201ec4 <rt_data_queue_init+0x34>
80201eac:	03000613          	li	a2,48
80201eb0:	00007597          	auipc	a1,0x7
80201eb4:	b2858593          	addi	a1,a1,-1240 # 802089d8 <__FUNCTION__.6>
80201eb8:	00006517          	auipc	a0,0x6
80201ebc:	da850513          	addi	a0,a0,-600 # 80207c60 <rt_system_timer_thread_init+0xca2>
80201ec0:	06a030ef          	jal	80204f2a <rt_assert_handler>
80201ec4:	ec89                	bnez	s1,80201ede <rt_data_queue_init+0x4e>
80201ec6:	03100613          	li	a2,49
80201eca:	00007597          	auipc	a1,0x7
80201ece:	b0e58593          	addi	a1,a1,-1266 # 802089d8 <__FUNCTION__.6>
80201ed2:	00006517          	auipc	a0,0x6
80201ed6:	da650513          	addi	a0,a0,-602 # 80207c78 <rt_system_timer_thread_init+0xcba>
80201eda:	050030ef          	jal	80204f2a <rt_assert_handler>
80201ede:	bead17b7          	lui	a5,0xbead1
80201ee2:	e0e78793          	addi	a5,a5,-498 # bead0e0e <__bss_end+0x3e8bb0be>
80201ee6:	c01c                	sw	a5,0(s0)
80201ee8:	67a1                	lui	a5,0x8
80201eea:	c41c                	sw	a5,8(s0)
80201eec:	0104051b          	addiw	a0,s0,16
80201ef0:	03342423          	sw	s3,40(s0)
80201ef4:	00941223          	sh	s1,4(s0)
80201ef8:	01241323          	sh	s2,6(s0)
80201efc:	716010ef          	jal	80203612 <rt_spin_lock_init>
80201f00:	0184079b          	addiw	a5,s0,24
80201f04:	cc5c                	sw	a5,28(s0)
80201f06:	cc1c                	sw	a5,24(s0)
80201f08:	0204079b          	addiw	a5,s0,32
80201f0c:	d05c                	sw	a5,36(s0)
80201f0e:	d01c                	sw	a5,32(s0)
80201f10:	00349513          	slli	a0,s1,0x3
80201f14:	10c030ef          	jal	80205020 <rt_malloc>
80201f18:	c448                	sw	a0,12(s0)
80201f1a:	0005079b          	sext.w	a5,a0
80201f1e:	5551                	li	a0,-12
80201f20:	c391                	beqz	a5,80201f24 <rt_data_queue_init+0x94>
80201f22:	4501                	li	a0,0
80201f24:	70a2                	ld	ra,40(sp)
80201f26:	7402                	ld	s0,32(sp)
80201f28:	64e2                	ld	s1,24(sp)
80201f2a:	6942                	ld	s2,16(sp)
80201f2c:	69a2                	ld	s3,8(sp)
80201f2e:	0301011b          	addiw	sp,sp,48
80201f32:	8082                	ret

80201f34 <rt_data_queue_push>:
80201f34:	fa01011b          	addiw	sp,sp,-96
80201f38:	e8a2                	sd	s0,80(sp)
80201f3a:	f852                	sd	s4,48(sp)
80201f3c:	f456                	sd	s5,40(sp)
80201f3e:	0005079b          	sext.w	a5,a0
80201f42:	ec86                	sd	ra,88(sp)
80201f44:	e4a6                	sd	s1,72(sp)
80201f46:	e0ca                	sd	s2,64(sp)
80201f48:	fc4e                	sd	s3,56(sp)
80201f4a:	f05a                	sd	s6,32(sp)
80201f4c:	ec5e                	sd	s7,24(sp)
80201f4e:	e862                	sd	s8,16(sp)
80201f50:	c636                	sw	a3,12(sp)
80201f52:	843e                	mv	s0,a5
80201f54:	8aae                	mv	s5,a1
80201f56:	8a32                	mv	s4,a2
80201f58:	ef89                	bnez	a5,80201f72 <rt_data_queue_push+0x3e>
80201f5a:	06500613          	li	a2,101
80201f5e:	00007597          	auipc	a1,0x7
80201f62:	a6258593          	addi	a1,a1,-1438 # 802089c0 <__FUNCTION__.5>
80201f66:	00006517          	auipc	a0,0x6
80201f6a:	cfa50513          	addi	a0,a0,-774 # 80207c60 <rt_system_timer_thread_init+0xca2>
80201f6e:	7bd020ef          	jal	80204f2a <rt_assert_handler>
80201f72:	4018                	lw	a4,0(s0)
80201f74:	bead17b7          	lui	a5,0xbead1
80201f78:	e0e78793          	addi	a5,a5,-498 # bead0e0e <__bss_end+0x3e8bb0be>
80201f7c:	00f70e63          	beq	a4,a5,80201f98 <rt_data_queue_push+0x64>
80201f80:	06600613          	li	a2,102
80201f84:	00007597          	auipc	a1,0x7
80201f88:	a3c58593          	addi	a1,a1,-1476 # 802089c0 <__FUNCTION__.5>
80201f8c:	00006517          	auipc	a0,0x6
80201f90:	cfc50513          	addi	a0,a0,-772 # 80207c88 <rt_system_timer_thread_init+0xcca>
80201f94:	797020ef          	jal	80204f2a <rt_assert_handler>
80201f98:	47b2                	lw	a5,12(sp)
80201f9a:	cfc9                	beqz	a5,80202034 <rt_data_queue_push+0x100>
80201f9c:	26e040ef          	jal	8020620a <rt_critical_level>
80201fa0:	c51d                	beqz	a0,80201fce <rt_data_queue_push+0x9a>
80201fa2:	00007597          	auipc	a1,0x7
80201fa6:	a1e58593          	addi	a1,a1,-1506 # 802089c0 <__FUNCTION__.5>
80201faa:	00006517          	auipc	a0,0x6
80201fae:	bde50513          	addi	a0,a0,-1058 # 80207b88 <rt_system_timer_thread_init+0xbca>
80201fb2:	5c5020ef          	jal	80204d76 <rt_kprintf>
80201fb6:	06900613          	li	a2,105
80201fba:	00007597          	auipc	a1,0x7
80201fbe:	a0658593          	addi	a1,a1,-1530 # 802089c0 <__FUNCTION__.5>
80201fc2:	00006517          	auipc	a0,0x6
80201fc6:	54e50513          	addi	a0,a0,1358 # 80208510 <rt_system_timer_thread_init+0x1552>
80201fca:	761020ef          	jal	80204f2a <rt_assert_handler>
80201fce:	628040ef          	jal	802065f6 <rt_thread_self>
80201fd2:	2501                	sext.w	a0,a0
80201fd4:	e51d                	bnez	a0,80202002 <rt_data_queue_push+0xce>
80201fd6:	00007597          	auipc	a1,0x7
80201fda:	9ea58593          	addi	a1,a1,-1558 # 802089c0 <__FUNCTION__.5>
80201fde:	00006517          	auipc	a0,0x6
80201fe2:	bda50513          	addi	a0,a0,-1062 # 80207bb8 <rt_system_timer_thread_init+0xbfa>
80201fe6:	591020ef          	jal	80204d76 <rt_kprintf>
80201fea:	06900613          	li	a2,105
80201fee:	00007597          	auipc	a1,0x7
80201ff2:	9d258593          	addi	a1,a1,-1582 # 802089c0 <__FUNCTION__.5>
80201ff6:	00006517          	auipc	a0,0x6
80201ffa:	51a50513          	addi	a0,a0,1306 # 80208510 <rt_system_timer_thread_init+0x1552>
80201ffe:	72d020ef          	jal	80204f2a <rt_assert_handler>
80202002:	356020ef          	jal	80204358 <rt_interrupt_get_nest>
80202006:	c51d                	beqz	a0,80202034 <rt_data_queue_push+0x100>
80202008:	00007597          	auipc	a1,0x7
8020200c:	9b858593          	addi	a1,a1,-1608 # 802089c0 <__FUNCTION__.5>
80202010:	00006517          	auipc	a0,0x6
80202014:	be050513          	addi	a0,a0,-1056 # 80207bf0 <rt_system_timer_thread_init+0xc32>
80202018:	55f020ef          	jal	80204d76 <rt_kprintf>
8020201c:	06900613          	li	a2,105
80202020:	00007597          	auipc	a1,0x7
80202024:	9a058593          	addi	a1,a1,-1632 # 802089c0 <__FUNCTION__.5>
80202028:	00006517          	auipc	a0,0x6
8020202c:	4e850513          	addi	a0,a0,1256 # 80208510 <rt_system_timer_thread_init+0x1552>
80202030:	6fb020ef          	jal	80204f2a <rt_assert_handler>
80202034:	5c2040ef          	jal	802065f6 <rt_thread_self>
80202038:	0104091b          	addiw	s2,s0,16
8020203c:	8b2a                	mv	s6,a0
8020203e:	854a                	mv	a0,s2
80202040:	5de010ef          	jal	8020361e <rt_spin_lock_irqsave>
80202044:	84aa                	mv	s1,a0
80202046:	01840c1b          	addiw	s8,s0,24
8020204a:	058b0b9b          	addiw	s7,s6,88
8020204e:	441c                	lw	a5,8(s0)
80202050:	0a07c163          	bltz	a5,802020f2 <rt_data_queue_push+0x1be>
80202054:	66a1                	lui	a3,0x8
80202056:	16fd                	addi	a3,a3,-1 # 7fff <__STACKSIZE__+0x3fff>
80202058:	0107d79b          	srliw	a5,a5,0x10
8020205c:	8ff5                	and	a5,a5,a3
8020205e:	4450                	lw	a2,12(s0)
80202060:	17c2                	slli	a5,a5,0x30
80202062:	93c1                	srli	a5,a5,0x30
80202064:	0037971b          	slliw	a4,a5,0x3
80202068:	9f31                	addw	a4,a4,a2
8020206a:	2785                	addiw	a5,a5,1
8020206c:	01572023          	sw	s5,0(a4)
80202070:	01472223          	sw	s4,4(a4)
80202074:	8ff5                	and	a5,a5,a3
80202076:	00445703          	lhu	a4,4(s0)
8020207a:	17c2                	slli	a5,a5,0x30
8020207c:	93c1                	srli	a5,a5,0x30
8020207e:	00f71363          	bne	a4,a5,80202084 <rt_data_queue_push+0x150>
80202082:	4781                	li	a5,0
80202084:	4418                	lw	a4,8(s0)
80202086:	800105b7          	lui	a1,0x80010
8020208a:	00d7f633          	and	a2,a5,a3
8020208e:	15fd                	addi	a1,a1,-1 # 8000ffff <__bss_end+0xffdfa2af>
80202090:	0106161b          	slliw	a2,a2,0x10
80202094:	8f6d                	and	a4,a4,a1
80202096:	8f51                	or	a4,a4,a2
80202098:	7661                	lui	a2,0xffff8
8020209a:	2701                	sext.w	a4,a4
8020209c:	167d                	addi	a2,a2,-1 # ffff7fff <__bss_end+0x7fde22af>
8020209e:	8f71                	and	a4,a4,a2
802020a0:	8ef9                	and	a3,a3,a4
802020a2:	0106969b          	slliw	a3,a3,0x10
802020a6:	c418                	sw	a4,8(s0)
802020a8:	0106d69b          	srliw	a3,a3,0x10
802020ac:	00d79663          	bne	a5,a3,802020b8 <rt_data_queue_push+0x184>
802020b0:	800007b7          	lui	a5,0x80000
802020b4:	8f5d                	or	a4,a4,a5
802020b6:	c418                	sw	a4,8(s0)
802020b8:	55fd                	li	a1,-1
802020ba:	0204051b          	addiw	a0,s0,32
802020be:	15b010ef          	jal	80203a18 <rt_susp_list_dequeue>
802020c2:	2501                	sext.w	a0,a0
802020c4:	4981                	li	s3,0
802020c6:	cd25                	beqz	a0,8020213e <rt_data_queue_push+0x20a>
802020c8:	85a6                	mv	a1,s1
802020ca:	854a                	mv	a0,s2
802020cc:	56c010ef          	jal	80203638 <rt_spin_unlock_irqrestore>
802020d0:	71b030ef          	jal	80205fea <rt_schedule>
802020d4:	4981                	li	s3,0
802020d6:	60e6                	ld	ra,88(sp)
802020d8:	6446                	ld	s0,80(sp)
802020da:	64a6                	ld	s1,72(sp)
802020dc:	6906                	ld	s2,64(sp)
802020de:	7a42                	ld	s4,48(sp)
802020e0:	7aa2                	ld	s5,40(sp)
802020e2:	7b02                	ld	s6,32(sp)
802020e4:	6be2                	ld	s7,24(sp)
802020e6:	6c42                	ld	s8,16(sp)
802020e8:	854e                	mv	a0,s3
802020ea:	79e2                	ld	s3,56(sp)
802020ec:	0601011b          	addiw	sp,sp,96
802020f0:	8082                	ret
802020f2:	47b2                	lw	a5,12(sp)
802020f4:	c3ad                	beqz	a5,80202156 <rt_data_queue_push+0x222>
802020f6:	020b2c23          	sw	zero,56(s6)
802020fa:	4689                	li	a3,2
802020fc:	4601                	li	a2,0
802020fe:	85e2                	mv	a1,s8
80202100:	855a                	mv	a0,s6
80202102:	62e040ef          	jal	80206730 <rt_thread_suspend_to_list>
80202106:	89aa                	mv	s3,a0
80202108:	e91d                	bnez	a0,8020213e <rt_data_queue_push+0x20a>
8020210a:	47b2                	lw	a5,12(sp)
8020210c:	00f05b63          	blez	a5,80202122 <rt_data_queue_push+0x1ee>
80202110:	00c1061b          	addiw	a2,sp,12
80202114:	4581                	li	a1,0
80202116:	855e                	mv	a0,s7
80202118:	411040ef          	jal	80206d28 <rt_timer_control>
8020211c:	855e                	mv	a0,s7
8020211e:	291040ef          	jal	80206bae <rt_timer_start>
80202122:	85a6                	mv	a1,s1
80202124:	854a                	mv	a0,s2
80202126:	512010ef          	jal	80203638 <rt_spin_unlock_irqrestore>
8020212a:	6c1030ef          	jal	80205fea <rt_schedule>
8020212e:	854a                	mv	a0,s2
80202130:	4ee010ef          	jal	8020361e <rt_spin_lock_irqsave>
80202134:	038b2983          	lw	s3,56(s6)
80202138:	84aa                	mv	s1,a0
8020213a:	f0098ae3          	beqz	s3,8020204e <rt_data_queue_push+0x11a>
8020213e:	85a6                	mv	a1,s1
80202140:	854a                	mv	a0,s2
80202142:	4f6010ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80202146:	f80998e3          	bnez	s3,802020d6 <rt_data_queue_push+0x1a2>
8020214a:	541c                	lw	a5,40(s0)
8020214c:	d7c1                	beqz	a5,802020d4 <rt_data_queue_push+0x1a0>
8020214e:	4589                	li	a1,2
80202150:	8522                	mv	a0,s0
80202152:	9782                	jalr	a5
80202154:	b741                	j	802020d4 <rt_data_queue_push+0x1a0>
80202156:	f8c00993          	li	s3,-116
8020215a:	b7d5                	j	8020213e <rt_data_queue_push+0x20a>

8020215c <rt_data_queue_peek>:
8020215c:	fd01011b          	addiw	sp,sp,-48
80202160:	f022                	sd	s0,32(sp)
80202162:	ec26                	sd	s1,24(sp)
80202164:	e44e                	sd	s3,8(sp)
80202166:	0005079b          	sext.w	a5,a0
8020216a:	f406                	sd	ra,40(sp)
8020216c:	e84a                	sd	s2,16(sp)
8020216e:	843e                	mv	s0,a5
80202170:	89ae                	mv	s3,a1
80202172:	84b2                	mv	s1,a2
80202174:	ef89                	bnez	a5,8020218e <rt_data_queue_peek+0x32>
80202176:	15000613          	li	a2,336
8020217a:	00007597          	auipc	a1,0x7
8020217e:	81658593          	addi	a1,a1,-2026 # 80208990 <__FUNCTION__.3>
80202182:	00006517          	auipc	a0,0x6
80202186:	ade50513          	addi	a0,a0,-1314 # 80207c60 <rt_system_timer_thread_init+0xca2>
8020218a:	5a1020ef          	jal	80204f2a <rt_assert_handler>
8020218e:	4018                	lw	a4,0(s0)
80202190:	bead17b7          	lui	a5,0xbead1
80202194:	e0e78793          	addi	a5,a5,-498 # bead0e0e <__bss_end+0x3e8bb0be>
80202198:	00f70e63          	beq	a4,a5,802021b4 <rt_data_queue_peek+0x58>
8020219c:	15100613          	li	a2,337
802021a0:	00006597          	auipc	a1,0x6
802021a4:	7f058593          	addi	a1,a1,2032 # 80208990 <__FUNCTION__.3>
802021a8:	00006517          	auipc	a0,0x6
802021ac:	ae050513          	addi	a0,a0,-1312 # 80207c88 <rt_system_timer_thread_init+0xcca>
802021b0:	57b020ef          	jal	80204f2a <rt_assert_handler>
802021b4:	441c                	lw	a5,8(s0)
802021b6:	fc300513          	li	a0,-61
802021ba:	03079713          	slli	a4,a5,0x30
802021be:	04074763          	bltz	a4,8020220c <rt_data_queue_peek+0xb0>
802021c2:	0104091b          	addiw	s2,s0,16
802021c6:	854a                	mv	a0,s2
802021c8:	456010ef          	jal	8020361e <rt_spin_lock_irqsave>
802021cc:	441c                	lw	a5,8(s0)
802021ce:	6721                	lui	a4,0x8
802021d0:	177d                	addi	a4,a4,-1 # 7fff <__STACKSIZE__+0x3fff>
802021d2:	8ff9                	and	a5,a5,a4
802021d4:	4454                	lw	a3,12(s0)
802021d6:	0107979b          	slliw	a5,a5,0x10
802021da:	0107d79b          	srliw	a5,a5,0x10
802021de:	0037979b          	slliw	a5,a5,0x3
802021e2:	9fb5                	addw	a5,a5,a3
802021e4:	439c                	lw	a5,0(a5)
802021e6:	85aa                	mv	a1,a0
802021e8:	854a                	mv	a0,s2
802021ea:	00f9a023          	sw	a5,0(s3)
802021ee:	441c                	lw	a5,8(s0)
802021f0:	8ff9                	and	a5,a5,a4
802021f2:	0107979b          	slliw	a5,a5,0x10
802021f6:	4458                	lw	a4,12(s0)
802021f8:	0107d79b          	srliw	a5,a5,0x10
802021fc:	0037979b          	slliw	a5,a5,0x3
80202200:	9fb9                	addw	a5,a5,a4
80202202:	43dc                	lw	a5,4(a5)
80202204:	c09c                	sw	a5,0(s1)
80202206:	432010ef          	jal	80203638 <rt_spin_unlock_irqrestore>
8020220a:	4501                	li	a0,0
8020220c:	70a2                	ld	ra,40(sp)
8020220e:	7402                	ld	s0,32(sp)
80202210:	64e2                	ld	s1,24(sp)
80202212:	6942                	ld	s2,16(sp)
80202214:	69a2                	ld	s3,8(sp)
80202216:	0301011b          	addiw	sp,sp,48
8020221a:	8082                	ret

8020221c <rt_data_queue_reset>:
8020221c:	3101                	addiw	sp,sp,-32
8020221e:	e822                	sd	s0,16(sp)
80202220:	0005079b          	sext.w	a5,a0
80202224:	ec06                	sd	ra,24(sp)
80202226:	e426                	sd	s1,8(sp)
80202228:	843e                	mv	s0,a5
8020222a:	ef89                	bnez	a5,80202244 <rt_data_queue_reset+0x28>
8020222c:	16f00613          	li	a2,367
80202230:	00006597          	auipc	a1,0x6
80202234:	74858593          	addi	a1,a1,1864 # 80208978 <__FUNCTION__.2>
80202238:	00006517          	auipc	a0,0x6
8020223c:	a2850513          	addi	a0,a0,-1496 # 80207c60 <rt_system_timer_thread_init+0xca2>
80202240:	4eb020ef          	jal	80204f2a <rt_assert_handler>
80202244:	4018                	lw	a4,0(s0)
80202246:	bead17b7          	lui	a5,0xbead1
8020224a:	e0e78793          	addi	a5,a5,-498 # bead0e0e <__bss_end+0x3e8bb0be>
8020224e:	00f70e63          	beq	a4,a5,8020226a <rt_data_queue_reset+0x4e>
80202252:	17000613          	li	a2,368
80202256:	00006597          	auipc	a1,0x6
8020225a:	72258593          	addi	a1,a1,1826 # 80208978 <__FUNCTION__.2>
8020225e:	00006517          	auipc	a0,0x6
80202262:	a2a50513          	addi	a0,a0,-1494 # 80207c88 <rt_system_timer_thread_init+0xcca>
80202266:	4c5020ef          	jal	80204f2a <rt_assert_handler>
8020226a:	0104049b          	addiw	s1,s0,16
8020226e:	8526                	mv	a0,s1
80202270:	3ae010ef          	jal	8020361e <rt_spin_lock_irqsave>
80202274:	67a1                	lui	a5,0x8
80202276:	c41c                	sw	a5,8(s0)
80202278:	85aa                	mv	a1,a0
8020227a:	8526                	mv	a0,s1
8020227c:	3bc010ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80202280:	705030ef          	jal	80206184 <rt_enter_critical>
80202284:	8626                	mv	a2,s1
80202286:	0ff00593          	li	a1,255
8020228a:	0204051b          	addiw	a0,s0,32
8020228e:	7fc010ef          	jal	80203a8a <rt_susp_list_resume_all_irq>
80202292:	8626                	mv	a2,s1
80202294:	0ff00593          	li	a1,255
80202298:	0184051b          	addiw	a0,s0,24
8020229c:	7ee010ef          	jal	80203a8a <rt_susp_list_resume_all_irq>
802022a0:	717030ef          	jal	802061b6 <rt_exit_critical>
802022a4:	6442                	ld	s0,16(sp)
802022a6:	60e2                	ld	ra,24(sp)
802022a8:	64a2                	ld	s1,8(sp)
802022aa:	0201011b          	addiw	sp,sp,32
802022ae:	53d0306f          	j	80205fea <rt_schedule>

802022b2 <rt_data_queue_deinit>:
802022b2:	3101                	addiw	sp,sp,-32
802022b4:	e822                	sd	s0,16(sp)
802022b6:	0005079b          	sext.w	a5,a0
802022ba:	ec06                	sd	ra,24(sp)
802022bc:	e426                	sd	s1,8(sp)
802022be:	843e                	mv	s0,a5
802022c0:	ef89                	bnez	a5,802022da <rt_data_queue_deinit+0x28>
802022c2:	19700613          	li	a2,407
802022c6:	00006597          	auipc	a1,0x6
802022ca:	69a58593          	addi	a1,a1,1690 # 80208960 <__FUNCTION__.1>
802022ce:	00006517          	auipc	a0,0x6
802022d2:	99250513          	addi	a0,a0,-1646 # 80207c60 <rt_system_timer_thread_init+0xca2>
802022d6:	455020ef          	jal	80204f2a <rt_assert_handler>
802022da:	4018                	lw	a4,0(s0)
802022dc:	bead17b7          	lui	a5,0xbead1
802022e0:	e0e78793          	addi	a5,a5,-498 # bead0e0e <__bss_end+0x3e8bb0be>
802022e4:	00f70e63          	beq	a4,a5,80202300 <rt_data_queue_deinit+0x4e>
802022e8:	19800613          	li	a2,408
802022ec:	00006597          	auipc	a1,0x6
802022f0:	67458593          	addi	a1,a1,1652 # 80208960 <__FUNCTION__.1>
802022f4:	00006517          	auipc	a0,0x6
802022f8:	99450513          	addi	a0,a0,-1644 # 80207c88 <rt_system_timer_thread_init+0xcca>
802022fc:	42f020ef          	jal	80204f2a <rt_assert_handler>
80202300:	8522                	mv	a0,s0
80202302:	f1bff0ef          	jal	8020221c <rt_data_queue_reset>
80202306:	0104049b          	addiw	s1,s0,16
8020230a:	8526                	mv	a0,s1
8020230c:	312010ef          	jal	8020361e <rt_spin_lock_irqsave>
80202310:	85aa                	mv	a1,a0
80202312:	00042023          	sw	zero,0(s0)
80202316:	8526                	mv	a0,s1
80202318:	320010ef          	jal	80203638 <rt_spin_unlock_irqrestore>
8020231c:	4448                	lw	a0,12(s0)
8020231e:	54b020ef          	jal	80205068 <rt_free>
80202322:	60e2                	ld	ra,24(sp)
80202324:	6442                	ld	s0,16(sp)
80202326:	64a2                	ld	s1,8(sp)
80202328:	4501                	li	a0,0
8020232a:	0201011b          	addiw	sp,sp,32
8020232e:	8082                	ret

80202330 <rt_data_queue_len>:
80202330:	3101                	addiw	sp,sp,-32
80202332:	e822                	sd	s0,16(sp)
80202334:	0005079b          	sext.w	a5,a0
80202338:	ec06                	sd	ra,24(sp)
8020233a:	e426                	sd	s1,8(sp)
8020233c:	843e                	mv	s0,a5
8020233e:	ef89                	bnez	a5,80202358 <rt_data_queue_len+0x28>
80202340:	1b300613          	li	a2,435
80202344:	00006597          	auipc	a1,0x6
80202348:	60458593          	addi	a1,a1,1540 # 80208948 <__FUNCTION__.0>
8020234c:	00006517          	auipc	a0,0x6
80202350:	91450513          	addi	a0,a0,-1772 # 80207c60 <rt_system_timer_thread_init+0xca2>
80202354:	3d7020ef          	jal	80204f2a <rt_assert_handler>
80202358:	4018                	lw	a4,0(s0)
8020235a:	bead17b7          	lui	a5,0xbead1
8020235e:	e0e78793          	addi	a5,a5,-498 # bead0e0e <__bss_end+0x3e8bb0be>
80202362:	00f70e63          	beq	a4,a5,8020237e <rt_data_queue_len+0x4e>
80202366:	1b400613          	li	a2,436
8020236a:	00006597          	auipc	a1,0x6
8020236e:	5de58593          	addi	a1,a1,1502 # 80208948 <__FUNCTION__.0>
80202372:	00006517          	auipc	a0,0x6
80202376:	91650513          	addi	a0,a0,-1770 # 80207c88 <rt_system_timer_thread_init+0xcca>
8020237a:	3b1020ef          	jal	80204f2a <rt_assert_handler>
8020237e:	441c                	lw	a5,8(s0)
80202380:	4501                	li	a0,0
80202382:	03079713          	slli	a4,a5,0x30
80202386:	04074063          	bltz	a4,802023c6 <rt_data_queue_len+0x96>
8020238a:	0104049b          	addiw	s1,s0,16
8020238e:	8526                	mv	a0,s1
80202390:	28e010ef          	jal	8020361e <rt_spin_lock_irqsave>
80202394:	4418                	lw	a4,8(s0)
80202396:	66a1                	lui	a3,0x8
80202398:	16fd                	addi	a3,a3,-1 # 7fff <__STACKSIZE__+0x3fff>
8020239a:	0107579b          	srliw	a5,a4,0x10
8020239e:	8ff5                	and	a5,a5,a3
802023a0:	8f75                	and	a4,a4,a3
802023a2:	17c2                	slli	a5,a5,0x30
802023a4:	1742                	slli	a4,a4,0x30
802023a6:	93c1                	srli	a5,a5,0x30
802023a8:	9341                	srli	a4,a4,0x30
802023aa:	85aa                	mv	a1,a0
802023ac:	02f77363          	bgeu	a4,a5,802023d2 <rt_data_queue_len+0xa2>
802023b0:	9f99                	subw	a5,a5,a4
802023b2:	0107941b          	slliw	s0,a5,0x10
802023b6:	8526                	mv	a0,s1
802023b8:	4104541b          	sraiw	s0,s0,0x10
802023bc:	27c010ef          	jal	80203638 <rt_spin_unlock_irqrestore>
802023c0:	03041513          	slli	a0,s0,0x30
802023c4:	9141                	srli	a0,a0,0x30
802023c6:	60e2                	ld	ra,24(sp)
802023c8:	6442                	ld	s0,16(sp)
802023ca:	64a2                	ld	s1,8(sp)
802023cc:	0201011b          	addiw	sp,sp,32
802023d0:	8082                	ret
802023d2:	00445403          	lhu	s0,4(s0)
802023d6:	9c3d                	addw	s0,s0,a5
802023d8:	9c19                	subw	s0,s0,a4
802023da:	0104141b          	slliw	s0,s0,0x10
802023de:	bfe1                	j	802023b6 <rt_data_queue_len+0x86>

802023e0 <rt_data_queue_pop>:
802023e0:	fa01011b          	addiw	sp,sp,-96
802023e4:	e8a2                	sd	s0,80(sp)
802023e6:	f852                	sd	s4,48(sp)
802023e8:	f456                	sd	s5,40(sp)
802023ea:	0005079b          	sext.w	a5,a0
802023ee:	ec86                	sd	ra,88(sp)
802023f0:	e4a6                	sd	s1,72(sp)
802023f2:	e0ca                	sd	s2,64(sp)
802023f4:	fc4e                	sd	s3,56(sp)
802023f6:	f05a                	sd	s6,32(sp)
802023f8:	ec5e                	sd	s7,24(sp)
802023fa:	e862                	sd	s8,16(sp)
802023fc:	c636                	sw	a3,12(sp)
802023fe:	843e                	mv	s0,a5
80202400:	8aae                	mv	s5,a1
80202402:	8a32                	mv	s4,a2
80202404:	ef89                	bnez	a5,8020241e <rt_data_queue_pop+0x3e>
80202406:	0da00613          	li	a2,218
8020240a:	00006597          	auipc	a1,0x6
8020240e:	59e58593          	addi	a1,a1,1438 # 802089a8 <__FUNCTION__.4>
80202412:	00006517          	auipc	a0,0x6
80202416:	84e50513          	addi	a0,a0,-1970 # 80207c60 <rt_system_timer_thread_init+0xca2>
8020241a:	311020ef          	jal	80204f2a <rt_assert_handler>
8020241e:	4018                	lw	a4,0(s0)
80202420:	bead17b7          	lui	a5,0xbead1
80202424:	e0e78793          	addi	a5,a5,-498 # bead0e0e <__bss_end+0x3e8bb0be>
80202428:	00f70e63          	beq	a4,a5,80202444 <rt_data_queue_pop+0x64>
8020242c:	0db00613          	li	a2,219
80202430:	00006597          	auipc	a1,0x6
80202434:	57858593          	addi	a1,a1,1400 # 802089a8 <__FUNCTION__.4>
80202438:	00006517          	auipc	a0,0x6
8020243c:	85050513          	addi	a0,a0,-1968 # 80207c88 <rt_system_timer_thread_init+0xcca>
80202440:	2eb020ef          	jal	80204f2a <rt_assert_handler>
80202444:	000a879b          	sext.w	a5,s5
80202448:	ef89                	bnez	a5,80202462 <rt_data_queue_pop+0x82>
8020244a:	0dc00613          	li	a2,220
8020244e:	00006597          	auipc	a1,0x6
80202452:	55a58593          	addi	a1,a1,1370 # 802089a8 <__FUNCTION__.4>
80202456:	00006517          	auipc	a0,0x6
8020245a:	85250513          	addi	a0,a0,-1966 # 80207ca8 <rt_system_timer_thread_init+0xcea>
8020245e:	2cd020ef          	jal	80204f2a <rt_assert_handler>
80202462:	000a079b          	sext.w	a5,s4
80202466:	ef89                	bnez	a5,80202480 <rt_data_queue_pop+0xa0>
80202468:	0dd00613          	li	a2,221
8020246c:	00006597          	auipc	a1,0x6
80202470:	53c58593          	addi	a1,a1,1340 # 802089a8 <__FUNCTION__.4>
80202474:	00006517          	auipc	a0,0x6
80202478:	84c50513          	addi	a0,a0,-1972 # 80207cc0 <rt_system_timer_thread_init+0xd02>
8020247c:	2af020ef          	jal	80204f2a <rt_assert_handler>
80202480:	47b2                	lw	a5,12(sp)
80202482:	cfc9                	beqz	a5,8020251c <rt_data_queue_pop+0x13c>
80202484:	587030ef          	jal	8020620a <rt_critical_level>
80202488:	c51d                	beqz	a0,802024b6 <rt_data_queue_pop+0xd6>
8020248a:	00006597          	auipc	a1,0x6
8020248e:	51e58593          	addi	a1,a1,1310 # 802089a8 <__FUNCTION__.4>
80202492:	00005517          	auipc	a0,0x5
80202496:	6f650513          	addi	a0,a0,1782 # 80207b88 <rt_system_timer_thread_init+0xbca>
8020249a:	0dd020ef          	jal	80204d76 <rt_kprintf>
8020249e:	0e000613          	li	a2,224
802024a2:	00006597          	auipc	a1,0x6
802024a6:	50658593          	addi	a1,a1,1286 # 802089a8 <__FUNCTION__.4>
802024aa:	00006517          	auipc	a0,0x6
802024ae:	06650513          	addi	a0,a0,102 # 80208510 <rt_system_timer_thread_init+0x1552>
802024b2:	279020ef          	jal	80204f2a <rt_assert_handler>
802024b6:	140040ef          	jal	802065f6 <rt_thread_self>
802024ba:	2501                	sext.w	a0,a0
802024bc:	e51d                	bnez	a0,802024ea <rt_data_queue_pop+0x10a>
802024be:	00006597          	auipc	a1,0x6
802024c2:	4ea58593          	addi	a1,a1,1258 # 802089a8 <__FUNCTION__.4>
802024c6:	00005517          	auipc	a0,0x5
802024ca:	6f250513          	addi	a0,a0,1778 # 80207bb8 <rt_system_timer_thread_init+0xbfa>
802024ce:	0a9020ef          	jal	80204d76 <rt_kprintf>
802024d2:	0e000613          	li	a2,224
802024d6:	00006597          	auipc	a1,0x6
802024da:	4d258593          	addi	a1,a1,1234 # 802089a8 <__FUNCTION__.4>
802024de:	00006517          	auipc	a0,0x6
802024e2:	03250513          	addi	a0,a0,50 # 80208510 <rt_system_timer_thread_init+0x1552>
802024e6:	245020ef          	jal	80204f2a <rt_assert_handler>
802024ea:	66f010ef          	jal	80204358 <rt_interrupt_get_nest>
802024ee:	c51d                	beqz	a0,8020251c <rt_data_queue_pop+0x13c>
802024f0:	00006597          	auipc	a1,0x6
802024f4:	4b858593          	addi	a1,a1,1208 # 802089a8 <__FUNCTION__.4>
802024f8:	00005517          	auipc	a0,0x5
802024fc:	6f850513          	addi	a0,a0,1784 # 80207bf0 <rt_system_timer_thread_init+0xc32>
80202500:	077020ef          	jal	80204d76 <rt_kprintf>
80202504:	0e000613          	li	a2,224
80202508:	00006597          	auipc	a1,0x6
8020250c:	4a058593          	addi	a1,a1,1184 # 802089a8 <__FUNCTION__.4>
80202510:	00006517          	auipc	a0,0x6
80202514:	00050513          	mv	a0,a0
80202518:	213020ef          	jal	80204f2a <rt_assert_handler>
8020251c:	0da040ef          	jal	802065f6 <rt_thread_self>
80202520:	0104099b          	addiw	s3,s0,16
80202524:	8b2a                	mv	s6,a0
80202526:	854e                	mv	a0,s3
80202528:	0f6010ef          	jal	8020361e <rt_spin_lock_irqsave>
8020252c:	892a                	mv	s2,a0
8020252e:	6ba1                	lui	s7,0x8
80202530:	02040c1b          	addiw	s8,s0,32
80202534:	4481                	li	s1,0
80202536:	441c                	lw	a5,8(s0)
80202538:	0177f733          	and	a4,a5,s7
8020253c:	03071693          	slli	a3,a4,0x30
80202540:	0c06c063          	bltz	a3,80202600 <rt_data_queue_pop+0x220>
80202544:	66a1                	lui	a3,0x8
80202546:	16fd                	addi	a3,a3,-1 # 7fff <__STACKSIZE__+0x3fff>
80202548:	8ff5                	and	a5,a5,a3
8020254a:	4458                	lw	a4,12(s0)
8020254c:	0107979b          	slliw	a5,a5,0x10
80202550:	0107d79b          	srliw	a5,a5,0x10
80202554:	0037979b          	slliw	a5,a5,0x3
80202558:	9fb9                	addw	a5,a5,a4
8020255a:	439c                	lw	a5,0(a5)
8020255c:	00faa023          	sw	a5,0(s5)
80202560:	441c                	lw	a5,8(s0)
80202562:	4458                	lw	a4,12(s0)
80202564:	8ff5                	and	a5,a5,a3
80202566:	0107979b          	slliw	a5,a5,0x10
8020256a:	0107d79b          	srliw	a5,a5,0x10
8020256e:	0037979b          	slliw	a5,a5,0x3
80202572:	9fb9                	addw	a5,a5,a4
80202574:	43dc                	lw	a5,4(a5)
80202576:	00fa2023          	sw	a5,0(s4)
8020257a:	4418                	lw	a4,8(s0)
8020257c:	00445783          	lhu	a5,4(s0)
80202580:	8f75                	and	a4,a4,a3
80202582:	2705                	addiw	a4,a4,1
80202584:	8f75                	and	a4,a4,a3
80202586:	1742                	slli	a4,a4,0x30
80202588:	9341                	srli	a4,a4,0x30
8020258a:	00e79363          	bne	a5,a4,80202590 <rt_data_queue_pop+0x1b0>
8020258e:	4701                	li	a4,0
80202590:	441c                	lw	a5,8(s0)
80202592:	75e1                	lui	a1,0xffff8
80202594:	00d77633          	and	a2,a4,a3
80202598:	8fed                	and	a5,a5,a1
8020259a:	8fd1                	or	a5,a5,a2
8020259c:	1786                	slli	a5,a5,0x21
8020259e:	9385                	srli	a5,a5,0x21
802025a0:	0107d613          	srli	a2,a5,0x10
802025a4:	c41c                	sw	a5,8(s0)
802025a6:	8ef1                	and	a3,a3,a2
802025a8:	00e69563          	bne	a3,a4,802025b2 <rt_data_queue_pop+0x1d2>
802025ac:	6721                	lui	a4,0x8
802025ae:	8fd9                	or	a5,a5,a4
802025b0:	c41c                	sw	a5,8(s0)
802025b2:	8522                	mv	a0,s0
802025b4:	d7dff0ef          	jal	80202330 <rt_data_queue_len>
802025b8:	00645783          	lhu	a5,6(s0)
802025bc:	2501                	sext.w	a0,a0
802025be:	08a7e963          	bltu	a5,a0,80202650 <rt_data_queue_pop+0x270>
802025c2:	55fd                	li	a1,-1
802025c4:	0184051b          	addiw	a0,s0,24
802025c8:	450010ef          	jal	80203a18 <rt_susp_list_dequeue>
802025cc:	2501                	sext.w	a0,a0
802025ce:	85ca                	mv	a1,s2
802025d0:	cd41                	beqz	a0,80202668 <rt_data_queue_pop+0x288>
802025d2:	854e                	mv	a0,s3
802025d4:	064010ef          	jal	80203638 <rt_spin_unlock_irqrestore>
802025d8:	213030ef          	jal	80205fea <rt_schedule>
802025dc:	541c                	lw	a5,40(s0)
802025de:	458d                	li	a1,3
802025e0:	873e                	mv	a4,a5
802025e2:	e3c1                	bnez	a5,80202662 <rt_data_queue_pop+0x282>
802025e4:	60e6                	ld	ra,88(sp)
802025e6:	6446                	ld	s0,80(sp)
802025e8:	6906                	ld	s2,64(sp)
802025ea:	79e2                	ld	s3,56(sp)
802025ec:	7a42                	ld	s4,48(sp)
802025ee:	7aa2                	ld	s5,40(sp)
802025f0:	7b02                	ld	s6,32(sp)
802025f2:	6be2                	ld	s7,24(sp)
802025f4:	6c42                	ld	s8,16(sp)
802025f6:	8526                	mv	a0,s1
802025f8:	64a6                	ld	s1,72(sp)
802025fa:	0601011b          	addiw	sp,sp,96
802025fe:	8082                	ret
80202600:	47b2                	lw	a5,12(sp)
80202602:	c7bd                	beqz	a5,80202670 <rt_data_queue_pop+0x290>
80202604:	020b2c23          	sw	zero,56(s6)
80202608:	4689                	li	a3,2
8020260a:	4601                	li	a2,0
8020260c:	85e2                	mv	a1,s8
8020260e:	855a                	mv	a0,s6
80202610:	120040ef          	jal	80206730 <rt_thread_suspend_to_list>
80202614:	84aa                	mv	s1,a0
80202616:	f105                	bnez	a0,80202536 <rt_data_queue_pop+0x156>
80202618:	47b2                	lw	a5,12(sp)
8020261a:	00f05d63          	blez	a5,80202634 <rt_data_queue_pop+0x254>
8020261e:	058b049b          	addiw	s1,s6,88
80202622:	00c1061b          	addiw	a2,sp,12
80202626:	4581                	li	a1,0
80202628:	8526                	mv	a0,s1
8020262a:	6fe040ef          	jal	80206d28 <rt_timer_control>
8020262e:	8526                	mv	a0,s1
80202630:	57e040ef          	jal	80206bae <rt_timer_start>
80202634:	85ca                	mv	a1,s2
80202636:	854e                	mv	a0,s3
80202638:	000010ef          	jal	80203638 <rt_spin_unlock_irqrestore>
8020263c:	1af030ef          	jal	80205fea <rt_schedule>
80202640:	854e                	mv	a0,s3
80202642:	7dd000ef          	jal	8020361e <rt_spin_lock_irqsave>
80202646:	038b2483          	lw	s1,56(s6)
8020264a:	892a                	mv	s2,a0
8020264c:	ee0484e3          	beqz	s1,80202534 <rt_data_queue_pop+0x154>
80202650:	85ca                	mv	a1,s2
80202652:	854e                	mv	a0,s3
80202654:	7e5000ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80202658:	f4d1                	bnez	s1,802025e4 <rt_data_queue_pop+0x204>
8020265a:	541c                	lw	a5,40(s0)
8020265c:	873e                	mv	a4,a5
8020265e:	d3d9                	beqz	a5,802025e4 <rt_data_queue_pop+0x204>
80202660:	4585                	li	a1,1
80202662:	8522                	mv	a0,s0
80202664:	9702                	jalr	a4
80202666:	bfbd                	j	802025e4 <rt_data_queue_pop+0x204>
80202668:	854e                	mv	a0,s3
8020266a:	7cf000ef          	jal	80203638 <rt_spin_unlock_irqrestore>
8020266e:	b7bd                	j	802025dc <rt_data_queue_pop+0x1fc>
80202670:	f8c00493          	li	s1,-116
80202674:	bff1                	j	80202650 <rt_data_queue_pop+0x270>

80202676 <_serial_fifo_calc_recved_len>:
80202676:	493c                	lw	a5,80(a0)
80202678:	3101                	addiw	sp,sp,-32
8020267a:	e822                	sd	s0,16(sp)
8020267c:	e426                	sd	s1,8(sp)
8020267e:	ec06                	sd	ra,24(sp)
80202680:	842a                	mv	s0,a0
80202682:	84be                	mv	s1,a5
80202684:	ef89                	bnez	a5,8020269e <_serial_fifo_calc_recved_len+0x28>
80202686:	18d00613          	li	a2,397
8020268a:	00006597          	auipc	a1,0x6
8020268e:	40e58593          	addi	a1,a1,1038 # 80208a98 <__FUNCTION__.8>
80202692:	00005517          	auipc	a0,0x5
80202696:	63e50513          	addi	a0,a0,1598 # 80207cd0 <rt_system_timer_thread_init+0xd12>
8020269a:	091020ef          	jal	80204f2a <rt_assert_handler>
8020269e:	0044d703          	lhu	a4,4(s1)
802026a2:	0064d783          	lhu	a5,6(s1)
802026a6:	00f71f63          	bne	a4,a5,802026c4 <_serial_fifo_calc_recved_len+0x4e>
802026aa:	4488                	lw	a0,8(s1)
802026ac:	c511                	beqz	a0,802026b8 <_serial_fifo_calc_recved_len+0x42>
802026ae:	4468                	lw	a0,76(s0)
802026b0:	00a5551b          	srliw	a0,a0,0xa
802026b4:	1542                	slli	a0,a0,0x30
802026b6:	9141                	srli	a0,a0,0x30
802026b8:	60e2                	ld	ra,24(sp)
802026ba:	6442                	ld	s0,16(sp)
802026bc:	64a2                	ld	s1,8(sp)
802026be:	0201011b          	addiw	sp,sp,32
802026c2:	8082                	ret
802026c4:	00e7f563          	bgeu	a5,a4,802026ce <_serial_fifo_calc_recved_len+0x58>
802026c8:	40f7053b          	subw	a0,a4,a5
802026cc:	b7f5                	j	802026b8 <_serial_fifo_calc_recved_len+0x42>
802026ce:	4468                	lw	a0,76(s0)
802026d0:	9f99                	subw	a5,a5,a4
802026d2:	00a5551b          	srliw	a0,a0,0xa
802026d6:	0105151b          	slliw	a0,a0,0x10
802026da:	0105551b          	srliw	a0,a0,0x10
802026de:	9d1d                	subw	a0,a0,a5
802026e0:	bfe1                	j	802026b8 <_serial_fifo_calc_recved_len+0x42>

802026e2 <rt_serial_control>:
802026e2:	3101                	addiw	sp,sp,-32
802026e4:	e822                	sd	s0,16(sp)
802026e6:	e426                	sd	s1,8(sp)
802026e8:	e04a                	sd	s2,0(sp)
802026ea:	0005079b          	sext.w	a5,a0
802026ee:	ec06                	sd	ra,24(sp)
802026f0:	843e                	mv	s0,a5
802026f2:	892e                	mv	s2,a1
802026f4:	84b2                	mv	s1,a2
802026f6:	ef89                	bnez	a5,80202710 <rt_serial_control+0x2e>
802026f8:	41e00613          	li	a2,1054
802026fc:	00006597          	auipc	a1,0x6
80202700:	40c58593          	addi	a1,a1,1036 # 80208b08 <__FUNCTION__.15>
80202704:	00005517          	auipc	a0,0x5
80202708:	35450513          	addi	a0,a0,852 # 80207a58 <rt_system_timer_thread_init+0xa9a>
8020270c:	01f020ef          	jal	80204f2a <rt_assert_handler>
80202710:	fff9069b          	addiw	a3,s2,-1
80202714:	4721                	li	a4,8
80202716:	08d76f63          	bltu	a4,a3,802027b4 <rt_serial_control+0xd2>
8020271a:	00006717          	auipc	a4,0x6
8020271e:	2d270713          	addi	a4,a4,722 # 802089ec <__FUNCTION__.6+0x14>
80202722:	0026979b          	slliw	a5,a3,0x2
80202726:	9fb9                	addw	a5,a5,a4
80202728:	439c                	lw	a5,0(a5)
8020272a:	9f3d                	addw	a4,a4,a5
8020272c:	8702                	jr	a4
8020272e:	02845783          	lhu	a5,40(s0)
80202732:	0207e793          	ori	a5,a5,32
80202736:	02f41423          	sh	a5,40(s0)
8020273a:	4501                	li	a0,0
8020273c:	60e2                	ld	ra,24(sp)
8020273e:	6442                	ld	s0,16(sp)
80202740:	64a2                	ld	s1,8(sp)
80202742:	6902                	ld	s2,0(sp)
80202744:	0201011b          	addiw	sp,sp,32
80202748:	8082                	ret
8020274a:	02845783          	lhu	a5,40(s0)
8020274e:	fdf7f793          	andi	a5,a5,-33
80202752:	b7d5                	j	80202736 <rt_serial_control+0x54>
80202754:	0004879b          	sext.w	a5,s1
80202758:	d3ed                	beqz	a5,8020273a <rt_serial_control+0x58>
8020275a:	40d8                	lw	a4,4(s1)
8020275c:	447c                	lw	a5,76(s0)
8020275e:	02c44683          	lbu	a3,44(s0)
80202762:	00a7571b          	srliw	a4,a4,0xa
80202766:	00a7d79b          	srliw	a5,a5,0xa
8020276a:	1742                	slli	a4,a4,0x30
8020276c:	17c2                	slli	a5,a5,0x30
8020276e:	9341                	srli	a4,a4,0x30
80202770:	93c1                	srli	a5,a5,0x30
80202772:	00f70463          	beq	a4,a5,8020277a <rt_serial_control+0x98>
80202776:	5541                	li	a0,-16
80202778:	f2f1                	bnez	a3,8020273c <rt_serial_control+0x5a>
8020277a:	409c                	lw	a5,0(s1)
8020277c:	c43c                	sw	a5,72(s0)
8020277e:	40dc                	lw	a5,4(s1)
80202780:	c47c                	sw	a5,76(s0)
80202782:	dec5                	beqz	a3,8020273a <rt_serial_control+0x58>
80202784:	407c                	lw	a5,68(s0)
80202786:	85a6                	mv	a1,s1
80202788:	8522                	mv	a0,s0
8020278a:	439c                	lw	a5,0(a5)
8020278c:	9782                	jalr	a5
8020278e:	b775                	j	8020273a <rt_serial_control+0x58>
80202790:	0004879b          	sext.w	a5,s1
80202794:	d3dd                	beqz	a5,8020273a <rt_serial_control+0x58>
80202796:	4621                	li	a2,8
80202798:	85a6                	mv	a1,s1
8020279a:	0604051b          	addiw	a0,s0,96
8020279e:	3e8020ef          	jal	80204b86 <rt_memcpy>
802027a2:	bf61                	j	8020273a <rt_serial_control+0x58>
802027a4:	0004879b          	sext.w	a5,s1
802027a8:	dbc9                	beqz	a5,8020273a <rt_serial_control+0x58>
802027aa:	14300793          	li	a5,323
802027ae:	00f49023          	sh	a5,0(s1)
802027b2:	b761                	j	8020273a <rt_serial_control+0x58>
802027b4:	407c                	lw	a5,68(s0)
802027b6:	8522                	mv	a0,s0
802027b8:	6442                	ld	s0,16(sp)
802027ba:	60e2                	ld	ra,24(sp)
802027bc:	43dc                	lw	a5,4(a5)
802027be:	8626                	mv	a2,s1
802027c0:	85ca                	mv	a1,s2
802027c2:	64a2                	ld	s1,8(sp)
802027c4:	6902                	ld	s2,0(sp)
802027c6:	0201011b          	addiw	sp,sp,32
802027ca:	8782                	jr	a5

802027cc <rt_serial_init>:
802027cc:	3141                	addiw	sp,sp,-16
802027ce:	e022                	sd	s0,0(sp)
802027d0:	0005079b          	sext.w	a5,a0
802027d4:	e406                	sd	ra,8(sp)
802027d6:	843e                	mv	s0,a5
802027d8:	ef89                	bnez	a5,802027f2 <rt_serial_init+0x26>
802027da:	25c00613          	li	a2,604
802027de:	00006597          	auipc	a1,0x6
802027e2:	26a58593          	addi	a1,a1,618 # 80208a48 <__FUNCTION__.3>
802027e6:	00005517          	auipc	a0,0x5
802027ea:	27250513          	addi	a0,a0,626 # 80207a58 <rt_system_timer_thread_init+0xa9a>
802027ee:	73c020ef          	jal	80204f2a <rt_assert_handler>
802027f2:	04042823          	sw	zero,80(s0)
802027f6:	04042a23          	sw	zero,84(s0)
802027fa:	4621                	li	a2,8
802027fc:	4581                	li	a1,0
802027fe:	0604051b          	addiw	a0,s0,96
80202802:	2f2020ef          	jal	80204af4 <rt_memset>
80202806:	407c                	lw	a5,68(s0)
80202808:	439c                	lw	a5,0(a5)
8020280a:	cb81                	beqz	a5,8020281a <rt_serial_init+0x4e>
8020280c:	0484059b          	addiw	a1,s0,72
80202810:	8522                	mv	a0,s0
80202812:	6402                	ld	s0,0(sp)
80202814:	60a2                	ld	ra,8(sp)
80202816:	2141                	addiw	sp,sp,16
80202818:	8782                	jr	a5
8020281a:	60a2                	ld	ra,8(sp)
8020281c:	6402                	ld	s0,0(sp)
8020281e:	4501                	li	a0,0
80202820:	2141                	addiw	sp,sp,16
80202822:	8082                	ret

80202824 <rt_serial_open>:
80202824:	fd01011b          	addiw	sp,sp,-48
80202828:	f022                	sd	s0,32(sp)
8020282a:	ec26                	sd	s1,24(sp)
8020282c:	0005079b          	sext.w	a5,a0
80202830:	f406                	sd	ra,40(sp)
80202832:	e84a                	sd	s2,16(sp)
80202834:	e44e                	sd	s3,8(sp)
80202836:	e052                	sd	s4,0(sp)
80202838:	843e                	mv	s0,a5
8020283a:	84ae                	mv	s1,a1
8020283c:	ef89                	bnez	a5,80202856 <rt_serial_open+0x32>
8020283e:	27100613          	li	a2,625
80202842:	00006597          	auipc	a1,0x6
80202846:	21658593          	addi	a1,a1,534 # 80208a58 <__FUNCTION__.4>
8020284a:	00005517          	auipc	a0,0x5
8020284e:	20e50513          	addi	a0,a0,526 # 80207a58 <rt_system_timer_thread_init+0xa9a>
80202852:	6d8020ef          	jal	80204f2a <rt_assert_handler>
80202856:	2004f713          	andi	a4,s1,512
8020285a:	cb01                	beqz	a4,8020286a <rt_serial_open+0x46>
8020285c:	02845783          	lhu	a5,40(s0)
80202860:	556d                	li	a0,-5
80202862:	2007f793          	andi	a5,a5,512
80202866:	12078a63          	beqz	a5,8020299a <rt_serial_open+0x176>
8020286a:	6785                	lui	a5,0x1
8020286c:	80078793          	addi	a5,a5,-2048 # 800 <__STACKSIZE__-0x3800>
80202870:	00f4f9b3          	and	s3,s1,a5
80202874:	00098863          	beqz	s3,80202884 <rt_serial_open+0x60>
80202878:	02845683          	lhu	a3,40(s0)
8020287c:	556d                	li	a0,-5
8020287e:	8ff5                	and	a5,a5,a3
80202880:	10078d63          	beqz	a5,8020299a <rt_serial_open+0x176>
80202884:	1004f793          	andi	a5,s1,256
80202888:	cb81                	beqz	a5,80202898 <rt_serial_open+0x74>
8020288a:	02845683          	lhu	a3,40(s0)
8020288e:	556d                	li	a0,-5
80202890:	1006f693          	andi	a3,a3,256
80202894:	10068363          	beqz	a3,8020299a <rt_serial_open+0x176>
80202898:	4004fa13          	andi	s4,s1,1024
8020289c:	000a0963          	beqz	s4,802028ae <rt_serial_open+0x8a>
802028a0:	02845683          	lhu	a3,40(s0)
802028a4:	556d                	li	a0,-5
802028a6:	4006f693          	andi	a3,a3,1024
802028aa:	0e068863          	beqz	a3,8020299a <rt_serial_open+0x176>
802028ae:	0404f693          	andi	a3,s1,64
802028b2:	04000913          	li	s2,64
802028b6:	e689                	bnez	a3,802028c0 <rt_serial_open+0x9c>
802028b8:	02a45903          	lhu	s2,42(s0)
802028bc:	04097913          	andi	s2,s2,64
802028c0:	4834                	lw	a3,80(s0)
802028c2:	0ff4f493          	zext.b	s1,s1
802028c6:	02941523          	sh	s1,42(s0)
802028ca:	18069363          	bnez	a3,80202a50 <rt_serial_open+0x22c>
802028ce:	cff9                	beqz	a5,802029ac <rt_serial_open+0x188>
802028d0:	4468                	lw	a0,76(s0)
802028d2:	00a5551b          	srliw	a0,a0,0xa
802028d6:	1542                	slli	a0,a0,0x30
802028d8:	9141                	srli	a0,a0,0x30
802028da:	0531                	addi	a0,a0,12
802028dc:	744020ef          	jal	80205020 <rt_malloc>
802028e0:	0005079b          	sext.w	a5,a0
802028e4:	84be                	mv	s1,a5
802028e6:	ef89                	bnez	a5,80202900 <rt_serial_open+0xdc>
802028e8:	29500613          	li	a2,661
802028ec:	00006597          	auipc	a1,0x6
802028f0:	16c58593          	addi	a1,a1,364 # 80208a58 <__FUNCTION__.4>
802028f4:	00005517          	auipc	a0,0x5
802028f8:	3dc50513          	addi	a0,a0,988 # 80207cd0 <rt_system_timer_thread_init+0xd12>
802028fc:	62e020ef          	jal	80204f2a <rt_assert_handler>
80202900:	4470                	lw	a2,76(s0)
80202902:	00c4851b          	addiw	a0,s1,12
80202906:	4581                	li	a1,0
80202908:	00a6561b          	srliw	a2,a2,0xa
8020290c:	1642                	slli	a2,a2,0x30
8020290e:	9241                	srli	a2,a2,0x30
80202910:	c088                	sw	a0,0(s1)
80202912:	1e2020ef          	jal	80204af4 <rt_memset>
80202916:	0004a223          	sw	zero,4(s1)
8020291a:	02a45783          	lhu	a5,42(s0)
8020291e:	0004a423          	sw	zero,8(s1)
80202922:	c824                	sw	s1,80(s0)
80202924:	1007e793          	ori	a5,a5,256
80202928:	02f41523          	sh	a5,42(s0)
8020292c:	407c                	lw	a5,68(s0)
8020292e:	10000613          	li	a2,256
80202932:	4599                	li	a1,6
80202934:	43dc                	lw	a5,4(a5)
80202936:	8522                	mv	a0,s0
80202938:	9782                	jalr	a5
8020293a:	487c                	lw	a5,84(s0)
8020293c:	18079163          	bnez	a5,80202abe <rt_serial_open+0x29a>
80202940:	120a0363          	beqz	s4,80202a66 <rt_serial_open+0x242>
80202944:	4511                	li	a0,4
80202946:	6da020ef          	jal	80205020 <rt_malloc>
8020294a:	0005079b          	sext.w	a5,a0
8020294e:	84be                	mv	s1,a5
80202950:	ef89                	bnez	a5,8020296a <rt_serial_open+0x146>
80202952:	2d400613          	li	a2,724
80202956:	00006597          	auipc	a1,0x6
8020295a:	10258593          	addi	a1,a1,258 # 80208a58 <__FUNCTION__.4>
8020295e:	00005517          	auipc	a0,0x5
80202962:	3a250513          	addi	a0,a0,930 # 80207d00 <rt_system_timer_thread_init+0xd42>
80202966:	5c4020ef          	jal	80204f2a <rt_assert_handler>
8020296a:	8526                	mv	a0,s1
8020296c:	a52ff0ef          	jal	80201bbe <rt_completion_init>
80202970:	02a45783          	lhu	a5,42(s0)
80202974:	c864                	sw	s1,84(s0)
80202976:	40000613          	li	a2,1024
8020297a:	4007e793          	ori	a5,a5,1024
8020297e:	02f41523          	sh	a5,42(s0)
80202982:	407c                	lw	a5,68(s0)
80202984:	4599                	li	a1,6
80202986:	43dc                	lw	a5,4(a5)
80202988:	8522                	mv	a0,s0
8020298a:	9782                	jalr	a5
8020298c:	02a45783          	lhu	a5,42(s0)
80202990:	4501                	li	a0,0
80202992:	00f96933          	or	s2,s2,a5
80202996:	03241523          	sh	s2,42(s0)
8020299a:	70a2                	ld	ra,40(sp)
8020299c:	7402                	ld	s0,32(sp)
8020299e:	64e2                	ld	s1,24(sp)
802029a0:	6942                	ld	s2,16(sp)
802029a2:	69a2                	ld	s3,8(sp)
802029a4:	6a02                	ld	s4,0(sp)
802029a6:	0301011b          	addiw	sp,sp,48
802029aa:	8082                	ret
802029ac:	d759                	beqz	a4,8020293a <rt_serial_open+0x116>
802029ae:	4468                	lw	a0,76(s0)
802029b0:	02651793          	slli	a5,a0,0x26
802029b4:	93c1                	srli	a5,a5,0x30
802029b6:	ef95                	bnez	a5,802029f2 <rt_serial_open+0x1ce>
802029b8:	4511                	li	a0,4
802029ba:	666020ef          	jal	80205020 <rt_malloc>
802029be:	0005079b          	sext.w	a5,a0
802029c2:	84be                	mv	s1,a5
802029c4:	ef89                	bnez	a5,802029de <rt_serial_open+0x1ba>
802029c6:	2a800613          	li	a2,680
802029ca:	00006597          	auipc	a1,0x6
802029ce:	08e58593          	addi	a1,a1,142 # 80208a58 <__FUNCTION__.4>
802029d2:	00005517          	auipc	a0,0x5
802029d6:	31650513          	addi	a0,a0,790 # 80207ce8 <rt_system_timer_thread_init+0xd2a>
802029da:	550020ef          	jal	80204f2a <rt_assert_handler>
802029de:	0004a023          	sw	zero,0(s1)
802029e2:	c824                	sw	s1,80(s0)
802029e4:	02a45783          	lhu	a5,42(s0)
802029e8:	2007e793          	ori	a5,a5,512
802029ec:	02f41523          	sh	a5,42(s0)
802029f0:	b7a9                	j	8020293a <rt_serial_open+0x116>
802029f2:	00a5551b          	srliw	a0,a0,0xa
802029f6:	1542                	slli	a0,a0,0x30
802029f8:	9141                	srli	a0,a0,0x30
802029fa:	0531                	addi	a0,a0,12
802029fc:	624020ef          	jal	80205020 <rt_malloc>
80202a00:	0005079b          	sext.w	a5,a0
80202a04:	84be                	mv	s1,a5
80202a06:	ef89                	bnez	a5,80202a20 <rt_serial_open+0x1fc>
80202a08:	2b100613          	li	a2,689
80202a0c:	00006597          	auipc	a1,0x6
80202a10:	04c58593          	addi	a1,a1,76 # 80208a58 <__FUNCTION__.4>
80202a14:	00005517          	auipc	a0,0x5
80202a18:	2bc50513          	addi	a0,a0,700 # 80207cd0 <rt_system_timer_thread_init+0xd12>
80202a1c:	50e020ef          	jal	80204f2a <rt_assert_handler>
80202a20:	4470                	lw	a2,76(s0)
80202a22:	00c4851b          	addiw	a0,s1,12
80202a26:	c088                	sw	a0,0(s1)
80202a28:	00a6561b          	srliw	a2,a2,0xa
80202a2c:	1642                	slli	a2,a2,0x30
80202a2e:	9241                	srli	a2,a2,0x30
80202a30:	4581                	li	a1,0
80202a32:	0c2020ef          	jal	80204af4 <rt_memset>
80202a36:	407c                	lw	a5,68(s0)
80202a38:	0004a223          	sw	zero,4(s1)
80202a3c:	0004a423          	sw	zero,8(s1)
80202a40:	43dc                	lw	a5,4(a5)
80202a42:	c824                	sw	s1,80(s0)
80202a44:	20000613          	li	a2,512
80202a48:	458d                	li	a1,3
80202a4a:	8522                	mv	a0,s0
80202a4c:	9782                	jalr	a5
80202a4e:	bf59                	j	802029e4 <rt_serial_open+0x1c0>
80202a50:	c791                	beqz	a5,80202a5c <rt_serial_open+0x238>
80202a52:	1004e493          	ori	s1,s1,256
80202a56:	02941523          	sh	s1,42(s0)
80202a5a:	b5c5                	j	8020293a <rt_serial_open+0x116>
80202a5c:	ec070fe3          	beqz	a4,8020293a <rt_serial_open+0x116>
80202a60:	2004e493          	ori	s1,s1,512
80202a64:	bfcd                	j	80202a56 <rt_serial_open+0x232>
80202a66:	f20983e3          	beqz	s3,8020298c <rt_serial_open+0x168>
80202a6a:	03000513          	li	a0,48
80202a6e:	5b2020ef          	jal	80205020 <rt_malloc>
80202a72:	0005079b          	sext.w	a5,a0
80202a76:	84be                	mv	s1,a5
80202a78:	ef89                	bnez	a5,80202a92 <rt_serial_open+0x26e>
80202a7a:	2e300613          	li	a2,739
80202a7e:	00006597          	auipc	a1,0x6
80202a82:	fda58593          	addi	a1,a1,-38 # 80208a58 <__FUNCTION__.4>
80202a86:	00005517          	auipc	a0,0x5
80202a8a:	29250513          	addi	a0,a0,658 # 80207d18 <rt_system_timer_thread_init+0xd5a>
80202a8e:	49c020ef          	jal	80204f2a <rt_assert_handler>
80202a92:	4611                	li	a2,4
80202a94:	45a1                	li	a1,8
80202a96:	0004a023          	sw	zero,0(s1)
80202a9a:	4681                	li	a3,0
80202a9c:	0044851b          	addiw	a0,s1,4
80202aa0:	bf0ff0ef          	jal	80201e90 <rt_data_queue_init>
80202aa4:	02a45783          	lhu	a5,42(s0)
80202aa8:	6605                	lui	a2,0x1
80202aaa:	80060613          	addi	a2,a2,-2048 # 800 <__STACKSIZE__-0x3800>
80202aae:	8fd1                	or	a5,a5,a2
80202ab0:	02f41523          	sh	a5,42(s0)
80202ab4:	407c                	lw	a5,68(s0)
80202ab6:	c864                	sw	s1,84(s0)
80202ab8:	458d                	li	a1,3
80202aba:	43dc                	lw	a5,4(a5)
80202abc:	b5f1                	j	80202988 <rt_serial_open+0x164>
80202abe:	02a45783          	lhu	a5,42(s0)
80202ac2:	000a0763          	beqz	s4,80202ad0 <rt_serial_open+0x2ac>
80202ac6:	4007e793          	ori	a5,a5,1024
80202aca:	02f41523          	sh	a5,42(s0)
80202ace:	bd7d                	j	8020298c <rt_serial_open+0x168>
80202ad0:	ea098ee3          	beqz	s3,8020298c <rt_serial_open+0x168>
80202ad4:	6705                	lui	a4,0x1
80202ad6:	80070713          	addi	a4,a4,-2048 # 800 <__STACKSIZE__-0x3800>
80202ada:	8fd9                	or	a5,a5,a4
80202adc:	b7fd                	j	80202aca <rt_serial_open+0x2a6>

80202ade <rt_serial_write>:
80202ade:	fc01011b          	addiw	sp,sp,-64
80202ae2:	f822                	sd	s0,48(sp)
80202ae4:	f426                	sd	s1,40(sp)
80202ae6:	f04a                	sd	s2,32(sp)
80202ae8:	0005079b          	sext.w	a5,a0
80202aec:	fc06                	sd	ra,56(sp)
80202aee:	ec4e                	sd	s3,24(sp)
80202af0:	e852                	sd	s4,16(sp)
80202af2:	e456                	sd	s5,8(sp)
80202af4:	e05a                	sd	s6,0(sp)
80202af6:	843e                	mv	s0,a5
80202af8:	84b2                	mv	s1,a2
80202afa:	8936                	mv	s2,a3
80202afc:	ef89                	bnez	a5,80202b16 <rt_serial_write+0x38>
80202afe:	38400613          	li	a2,900
80202b02:	00006597          	auipc	a1,0x6
80202b06:	ff658593          	addi	a1,a1,-10 # 80208af8 <__FUNCTION__.14>
80202b0a:	00005517          	auipc	a0,0x5
80202b0e:	f4e50513          	addi	a0,a0,-178 # 80207a58 <rt_system_timer_thread_init+0xa9a>
80202b12:	418020ef          	jal	80204f2a <rt_assert_handler>
80202b16:	0e090763          	beqz	s2,80202c04 <rt_serial_write+0x126>
80202b1a:	02a45783          	lhu	a5,42(s0)
80202b1e:	0009099b          	sext.w	s3,s2
80202b22:	4007f713          	andi	a4,a5,1024
80202b26:	c741                	beqz	a4,80202bae <rt_serial_write+0xd0>
80202b28:	487c                	lw	a5,84(s0)
80202b2a:	8a3e                	mv	s4,a5
80202b2c:	ef89                	bnez	a5,80202b46 <rt_serial_write+0x68>
80202b2e:	15e00613          	li	a2,350
80202b32:	00006597          	auipc	a1,0x6
80202b36:	fb658593          	addi	a1,a1,-74 # 80208ae8 <__FUNCTION__.13>
80202b3a:	00005517          	auipc	a0,0x5
80202b3e:	1f650513          	addi	a0,a0,502 # 80207d30 <rt_system_timer_thread_init+0xd72>
80202b42:	3e8020ef          	jal	80204f2a <rt_assert_handler>
80202b46:	894e                	mv	s2,s3
80202b48:	4b29                	li	s6,10
80202b4a:	5afd                	li	s5,-1
80202b4c:	0004c783          	lbu	a5,0(s1)
80202b50:	03679763          	bne	a5,s6,80202b7e <rt_serial_write+0xa0>
80202b54:	02a45783          	lhu	a5,42(s0)
80202b58:	0407f793          	andi	a5,a5,64
80202b5c:	c38d                	beqz	a5,80202b7e <rt_serial_write+0xa0>
80202b5e:	407c                	lw	a5,68(s0)
80202b60:	45b5                	li	a1,13
80202b62:	8522                	mv	a0,s0
80202b64:	479c                	lw	a5,8(a5)
80202b66:	9782                	jalr	a5
80202b68:	01551b63          	bne	a0,s5,80202b7e <rt_serial_write+0xa0>
80202b6c:	55fd                	li	a1,-1
80202b6e:	8552                	mv	a0,s4
80202b70:	84aff0ef          	jal	80201bba <rt_completion_wait>
80202b74:	bfe1                	j	80202b4c <rt_serial_write+0x6e>
80202b76:	55fd                	li	a1,-1
80202b78:	8552                	mv	a0,s4
80202b7a:	840ff0ef          	jal	80201bba <rt_completion_wait>
80202b7e:	407c                	lw	a5,68(s0)
80202b80:	0004c583          	lbu	a1,0(s1)
80202b84:	8522                	mv	a0,s0
80202b86:	479c                	lw	a5,8(a5)
80202b88:	9782                	jalr	a5
80202b8a:	ff5506e3          	beq	a0,s5,80202b76 <rt_serial_write+0x98>
80202b8e:	397d                	addiw	s2,s2,-1
80202b90:	2485                	addiw	s1,s1,1
80202b92:	fa091de3          	bnez	s2,80202b4c <rt_serial_write+0x6e>
80202b96:	70e2                	ld	ra,56(sp)
80202b98:	7442                	ld	s0,48(sp)
80202b9a:	74a2                	ld	s1,40(sp)
80202b9c:	7902                	ld	s2,32(sp)
80202b9e:	6a42                	ld	s4,16(sp)
80202ba0:	6aa2                	ld	s5,8(sp)
80202ba2:	6b02                	ld	s6,0(sp)
80202ba4:	854e                	mv	a0,s3
80202ba6:	69e2                	ld	s3,24(sp)
80202ba8:	0401011b          	addiw	sp,sp,64
80202bac:	8082                	ret
80202bae:	03479713          	slli	a4,a5,0x34
80202bb2:	04075b63          	bgez	a4,80202c08 <rt_serial_write+0x12a>
80202bb6:	4868                	lw	a0,84(s0)
80202bb8:	56fd                	li	a3,-1
80202bba:	864a                	mv	a2,s2
80202bbc:	8aaa                	mv	s5,a0
80202bbe:	85a6                	mv	a1,s1
80202bc0:	2511                	addiw	a0,a0,4
80202bc2:	b72ff0ef          	jal	80201f34 <rt_data_queue_push>
80202bc6:	ed0d                	bnez	a0,80202c00 <rt_serial_write+0x122>
80202bc8:	05840a1b          	addiw	s4,s0,88
80202bcc:	8552                	mv	a0,s4
80202bce:	251000ef          	jal	8020361e <rt_spin_lock_irqsave>
80202bd2:	000aa703          	lw	a4,0(s5)
80202bd6:	4785                	li	a5,1
80202bd8:	85aa                	mv	a1,a0
80202bda:	00f70f63          	beq	a4,a5,80202bf8 <rt_serial_write+0x11a>
80202bde:	00faa023          	sw	a5,0(s5)
80202be2:	8552                	mv	a0,s4
80202be4:	255000ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80202be8:	407c                	lw	a5,68(s0)
80202bea:	4689                	li	a3,2
80202bec:	864a                	mv	a2,s2
80202bee:	4b9c                	lw	a5,16(a5)
80202bf0:	85a6                	mv	a1,s1
80202bf2:	8522                	mv	a0,s0
80202bf4:	9782                	jalr	a5
80202bf6:	b745                	j	80202b96 <rt_serial_write+0xb8>
80202bf8:	8552                	mv	a0,s4
80202bfa:	23f000ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80202bfe:	bf61                	j	80202b96 <rt_serial_write+0xb8>
80202c00:	6c9010ef          	jal	80204ac8 <rt_set_errno>
80202c04:	4981                	li	s3,0
80202c06:	bf41                	j	80202b96 <rt_serial_write+0xb8>
80202c08:	4a29                	li	s4,10
80202c0a:	0124893b          	addw	s2,s1,s2
80202c0e:	0004c783          	lbu	a5,0(s1)
80202c12:	01479c63          	bne	a5,s4,80202c2a <rt_serial_write+0x14c>
80202c16:	02a45783          	lhu	a5,42(s0)
80202c1a:	0407f793          	andi	a5,a5,64
80202c1e:	c791                	beqz	a5,80202c2a <rt_serial_write+0x14c>
80202c20:	407c                	lw	a5,68(s0)
80202c22:	45b5                	li	a1,13
80202c24:	8522                	mv	a0,s0
80202c26:	479c                	lw	a5,8(a5)
80202c28:	9782                	jalr	a5
80202c2a:	407c                	lw	a5,68(s0)
80202c2c:	0004c583          	lbu	a1,0(s1)
80202c30:	8522                	mv	a0,s0
80202c32:	479c                	lw	a5,8(a5)
80202c34:	9782                	jalr	a5
80202c36:	0014879b          	addiw	a5,s1,1
80202c3a:	84be                	mv	s1,a5
80202c3c:	fd2799e3          	bne	a5,s2,80202c0e <rt_serial_write+0x130>
80202c40:	bf99                	j	80202b96 <rt_serial_write+0xb8>

80202c42 <rt_serial_read>:
80202c42:	fb01011b          	addiw	sp,sp,-80
80202c46:	e0a2                	sd	s0,64(sp)
80202c48:	f84a                	sd	s2,48(sp)
80202c4a:	ec56                	sd	s5,24(sp)
80202c4c:	0005079b          	sext.w	a5,a0
80202c50:	e486                	sd	ra,72(sp)
80202c52:	fc26                	sd	s1,56(sp)
80202c54:	f44e                	sd	s3,40(sp)
80202c56:	f052                	sd	s4,32(sp)
80202c58:	e85a                	sd	s6,16(sp)
80202c5a:	e45e                	sd	s7,8(sp)
80202c5c:	843e                	mv	s0,a5
80202c5e:	8932                	mv	s2,a2
80202c60:	8ab6                	mv	s5,a3
80202c62:	ef89                	bnez	a5,80202c7c <rt_serial_read+0x3a>
80202c64:	36a00613          	li	a2,874
80202c68:	00006597          	auipc	a1,0x6
80202c6c:	e7058593          	addi	a1,a1,-400 # 80208ad8 <__FUNCTION__.11>
80202c70:	00005517          	auipc	a0,0x5
80202c74:	de850513          	addi	a0,a0,-536 # 80207a58 <rt_system_timer_thread_init+0xa9a>
80202c78:	2b2020ef          	jal	80204f2a <rt_assert_handler>
80202c7c:	020a9063          	bnez	s5,80202c9c <rt_serial_read+0x5a>
80202c80:	4481                	li	s1,0
80202c82:	60a6                	ld	ra,72(sp)
80202c84:	6406                	ld	s0,64(sp)
80202c86:	7942                	ld	s2,48(sp)
80202c88:	79a2                	ld	s3,40(sp)
80202c8a:	7a02                	ld	s4,32(sp)
80202c8c:	6ae2                	ld	s5,24(sp)
80202c8e:	6b42                	ld	s6,16(sp)
80202c90:	6ba2                	ld	s7,8(sp)
80202c92:	8526                	mv	a0,s1
80202c94:	74e2                	ld	s1,56(sp)
80202c96:	0501011b          	addiw	sp,sp,80
80202c9a:	8082                	ret
80202c9c:	02a45783          	lhu	a5,42(s0)
80202ca0:	000a849b          	sext.w	s1,s5
80202ca4:	1007f713          	andi	a4,a5,256
80202ca8:	c759                	beqz	a4,80202d36 <rt_serial_read+0xf4>
80202caa:	483c                	lw	a5,80(s0)
80202cac:	89be                	mv	s3,a5
80202cae:	ef89                	bnez	a5,80202cc8 <rt_serial_read+0x86>
80202cb0:	12e00613          	li	a2,302
80202cb4:	00006597          	auipc	a1,0x6
80202cb8:	e1458593          	addi	a1,a1,-492 # 80208ac8 <__FUNCTION__.10>
80202cbc:	00005517          	auipc	a0,0x5
80202cc0:	01450513          	addi	a0,a0,20 # 80207cd0 <rt_system_timer_thread_init+0xd12>
80202cc4:	266020ef          	jal	80204f2a <rt_assert_handler>
80202cc8:	8a26                	mv	s4,s1
80202cca:	05840a9b          	addiw	s5,s0,88
80202cce:	4b05                	li	s6,1
80202cd0:	8556                	mv	a0,s5
80202cd2:	14d000ef          	jal	8020361e <rt_spin_lock_irqsave>
80202cd6:	0069d783          	lhu	a5,6(s3)
80202cda:	0049d703          	lhu	a4,4(s3)
80202cde:	0089a683          	lw	a3,8(s3)
80202ce2:	85aa                	mv	a1,a0
80202ce4:	00f71963          	bne	a4,a5,80202cf6 <rt_serial_read+0xb4>
80202ce8:	e699                	bnez	a3,80202cf6 <rt_serial_read+0xb4>
80202cea:	8556                	mv	a0,s5
80202cec:	14d000ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80202cf0:	414484bb          	subw	s1,s1,s4
80202cf4:	b779                	j	80202c82 <rt_serial_read+0x40>
80202cf6:	0009a703          	lw	a4,0(s3)
80202cfa:	9f3d                	addw	a4,a4,a5
80202cfc:	00074b83          	lbu	s7,0(a4)
80202d00:	4478                	lw	a4,76(s0)
80202d02:	2785                	addiw	a5,a5,1
80202d04:	17c2                	slli	a5,a5,0x30
80202d06:	00a7571b          	srliw	a4,a4,0xa
80202d0a:	1742                	slli	a4,a4,0x30
80202d0c:	93c1                	srli	a5,a5,0x30
80202d0e:	9341                	srli	a4,a4,0x30
80202d10:	00e7e363          	bltu	a5,a4,80202d16 <rt_serial_read+0xd4>
80202d14:	4781                	li	a5,0
80202d16:	00f99323          	sh	a5,6(s3)
80202d1a:	01669463          	bne	a3,s6,80202d22 <rt_serial_read+0xe0>
80202d1e:	0009a423          	sw	zero,8(s3)
80202d22:	8556                	mv	a0,s5
80202d24:	115000ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80202d28:	3a7d                	addiw	s4,s4,-1
80202d2a:	01790023          	sb	s7,0(s2)
80202d2e:	2905                	addiw	s2,s2,1
80202d30:	fa0a10e3          	bnez	s4,80202cd0 <rt_serial_read+0x8e>
80202d34:	bf75                	j	80202cf0 <rt_serial_read+0xae>
80202d36:	2007f793          	andi	a5,a5,512
80202d3a:	89a6                	mv	s3,s1
80202d3c:	eb8d                	bnez	a5,80202d6e <rt_serial_read+0x12c>
80202d3e:	5a7d                	li	s4,-1
80202d40:	4aa9                	li	s5,10
80202d42:	407c                	lw	a5,68(s0)
80202d44:	8522                	mv	a0,s0
80202d46:	47dc                	lw	a5,12(a5)
80202d48:	9782                	jalr	a5
80202d4a:	01450f63          	beq	a0,s4,80202d68 <rt_serial_read+0x126>
80202d4e:	00a90023          	sb	a0,0(s2)
80202d52:	02a45783          	lhu	a5,42(s0)
80202d56:	2905                	addiw	s2,s2,1
80202d58:	39fd                	addiw	s3,s3,-1
80202d5a:	0407f793          	andi	a5,a5,64
80202d5e:	c399                	beqz	a5,80202d64 <rt_serial_read+0x122>
80202d60:	01550463          	beq	a0,s5,80202d68 <rt_serial_read+0x126>
80202d64:	fc099fe3          	bnez	s3,80202d42 <rt_serial_read+0x100>
80202d68:	413484bb          	subw	s1,s1,s3
80202d6c:	bf19                	j	80202c82 <rt_serial_read+0x40>
80202d6e:	0009079b          	sext.w	a5,s2
80202d72:	ef89                	bnez	a5,80202d8c <rt_serial_read+0x14a>
80202d74:	1fb00613          	li	a2,507
80202d78:	00006597          	auipc	a1,0x6
80202d7c:	d4058593          	addi	a1,a1,-704 # 80208ab8 <__FUNCTION__.9>
80202d80:	00005517          	auipc	a0,0x5
80202d84:	fc050513          	addi	a0,a0,-64 # 80207d40 <rt_system_timer_thread_init+0xd82>
80202d88:	1a2020ef          	jal	80204f2a <rt_assert_handler>
80202d8c:	05840a1b          	addiw	s4,s0,88
80202d90:	8552                	mv	a0,s4
80202d92:	08d000ef          	jal	8020361e <rt_spin_lock_irqsave>
80202d96:	447c                	lw	a5,76(s0)
80202d98:	05042b03          	lw	s6,80(s0)
80202d9c:	89aa                	mv	s3,a0
80202d9e:	02679713          	slli	a4,a5,0x26
80202da2:	9341                	srli	a4,a4,0x30
80202da4:	eb2d                	bnez	a4,80202e16 <rt_serial_read+0x1d4>
80202da6:	8bda                	mv	s7,s6
80202da8:	000b1e63          	bnez	s6,80202dc4 <rt_serial_read+0x182>
80202dac:	20500613          	li	a2,517
80202db0:	00006597          	auipc	a1,0x6
80202db4:	d0858593          	addi	a1,a1,-760 # 80208ab8 <__FUNCTION__.9>
80202db8:	00005517          	auipc	a0,0x5
80202dbc:	f3050513          	addi	a0,a0,-208 # 80207ce8 <rt_system_timer_thread_init+0xd2a>
80202dc0:	16a020ef          	jal	80204f2a <rt_assert_handler>
80202dc4:	000ba703          	lw	a4,0(s7) # 8000 <__STACKSIZE__+0x4000>
80202dc8:	4785                	li	a5,1
80202dca:	5b41                	li	s6,-16
80202dcc:	02f70b63          	beq	a4,a5,80202e02 <rt_serial_read+0x1c0>
80202dd0:	00fba023          	sw	a5,0(s7)
80202dd4:	407c                	lw	a5,68(s0)
80202dd6:	4b9c                	lw	a5,16(a5)
80202dd8:	ef89                	bnez	a5,80202df2 <rt_serial_read+0x1b0>
80202dda:	20a00613          	li	a2,522
80202dde:	00006597          	auipc	a1,0x6
80202de2:	cda58593          	addi	a1,a1,-806 # 80208ab8 <__FUNCTION__.9>
80202de6:	00005517          	auipc	a0,0x5
80202dea:	f8a50513          	addi	a0,a0,-118 # 80207d70 <rt_system_timer_thread_init+0xdb2>
80202dee:	13c020ef          	jal	80204f2a <rt_assert_handler>
80202df2:	407c                	lw	a5,68(s0)
80202df4:	4685                	li	a3,1
80202df6:	8656                	mv	a2,s5
80202df8:	4b9c                	lw	a5,16(a5)
80202dfa:	85ca                	mv	a1,s2
80202dfc:	8522                	mv	a0,s0
80202dfe:	9782                	jalr	a5
80202e00:	4b01                	li	s6,0
80202e02:	85ce                	mv	a1,s3
80202e04:	8552                	mv	a0,s4
80202e06:	033000ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80202e0a:	e60b0ce3          	beqz	s6,80202c82 <rt_serial_read+0x40>
80202e0e:	5541                	li	a0,-16
80202e10:	4b9010ef          	jal	80204ac8 <rt_set_errno>
80202e14:	b5b5                	j	80202c80 <rt_serial_read+0x3e>
80202e16:	8522                	mv	a0,s0
80202e18:	85fff0ef          	jal	80202676 <_serial_fifo_calc_recved_len>
80202e1c:	8ada                	mv	s5,s6
80202e1e:	8baa                	mv	s7,a0
80202e20:	000b1e63          	bnez	s6,80202e3c <rt_serial_read+0x1fa>
80202e24:	21a00613          	li	a2,538
80202e28:	00006597          	auipc	a1,0x6
80202e2c:	c9058593          	addi	a1,a1,-880 # 80208ab8 <__FUNCTION__.9>
80202e30:	00005517          	auipc	a0,0x5
80202e34:	ea050513          	addi	a0,a0,-352 # 80207cd0 <rt_system_timer_thread_init+0xd12>
80202e38:	0f2020ef          	jal	80204f2a <rt_assert_handler>
80202e3c:	8b26                	mv	s6,s1
80202e3e:	009bd363          	bge	s7,s1,80202e44 <rt_serial_read+0x202>
80202e42:	8b5e                	mv	s6,s7
80202e44:	447c                	lw	a5,76(s0)
80202e46:	006ad603          	lhu	a2,6(s5)
80202e4a:	000aa583          	lw	a1,0(s5)
80202e4e:	00a7d79b          	srliw	a5,a5,0xa
80202e52:	17c2                	slli	a5,a5,0x30
80202e54:	93c1                	srli	a5,a5,0x30
80202e56:	00cb073b          	addw	a4,s6,a2
80202e5a:	000b049b          	sext.w	s1,s6
80202e5e:	9db1                	addw	a1,a1,a2
80202e60:	08f77463          	bgeu	a4,a5,80202ee8 <rt_serial_read+0x2a6>
80202e64:	8626                	mv	a2,s1
80202e66:	854a                	mv	a0,s2
80202e68:	51f010ef          	jal	80204b86 <rt_memcpy>
80202e6c:	483c                	lw	a5,80(s0)
80202e6e:	893e                	mv	s2,a5
80202e70:	ef89                	bnez	a5,80202e8a <rt_serial_read+0x248>
80202e72:	1b800613          	li	a2,440
80202e76:	00006597          	auipc	a1,0x6
80202e7a:	c0258593          	addi	a1,a1,-1022 # 80208a78 <__FUNCTION__.7>
80202e7e:	00005517          	auipc	a0,0x5
80202e82:	e5250513          	addi	a0,a0,-430 # 80207cd0 <rt_system_timer_thread_init+0xd12>
80202e86:	0a4020ef          	jal	80204f2a <rt_assert_handler>
80202e8a:	8522                	mv	a0,s0
80202e8c:	feaff0ef          	jal	80202676 <_serial_fifo_calc_recved_len>
80202e90:	2501                	sext.w	a0,a0
80202e92:	00957e63          	bgeu	a0,s1,80202eae <rt_serial_read+0x26c>
80202e96:	1b900613          	li	a2,441
80202e9a:	00006597          	auipc	a1,0x6
80202e9e:	bde58593          	addi	a1,a1,-1058 # 80208a78 <__FUNCTION__.7>
80202ea2:	00005517          	auipc	a0,0x5
80202ea6:	ef650513          	addi	a0,a0,-266 # 80207d98 <rt_system_timer_thread_init+0xdda>
80202eaa:	080020ef          	jal	80204f2a <rt_assert_handler>
80202eae:	00892783          	lw	a5,8(s2)
80202eb2:	c781                	beqz	a5,80202eba <rt_serial_read+0x278>
80202eb4:	c099                	beqz	s1,80202eba <rt_serial_read+0x278>
80202eb6:	00092423          	sw	zero,8(s2)
80202eba:	00695783          	lhu	a5,6(s2)
80202ebe:	4478                	lw	a4,76(s0)
80202ec0:	9fa5                	addw	a5,a5,s1
80202ec2:	17c2                	slli	a5,a5,0x30
80202ec4:	00a7571b          	srliw	a4,a4,0xa
80202ec8:	93c1                	srli	a5,a5,0x30
80202eca:	1742                	slli	a4,a4,0x30
80202ecc:	00f91323          	sh	a5,6(s2)
80202ed0:	9341                	srli	a4,a4,0x30
80202ed2:	00e7e663          	bltu	a5,a4,80202ede <rt_serial_read+0x29c>
80202ed6:	02e7f7bb          	remuw	a5,a5,a4
80202eda:	00f91323          	sh	a5,6(s2)
80202ede:	85ce                	mv	a1,s3
80202ee0:	8552                	mv	a0,s4
80202ee2:	756000ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80202ee6:	bb71                	j	80202c82 <rt_serial_read+0x40>
80202ee8:	40c7863b          	subw	a2,a5,a2
80202eec:	854a                	mv	a0,s2
80202eee:	499010ef          	jal	80204b86 <rt_memcpy>
80202ef2:	447c                	lw	a5,76(s0)
80202ef4:	006ad703          	lhu	a4,6(s5)
80202ef8:	000aa583          	lw	a1,0(s5)
80202efc:	00a7d79b          	srliw	a5,a5,0xa
80202f00:	0107979b          	slliw	a5,a5,0x10
80202f04:	0107d79b          	srliw	a5,a5,0x10
80202f08:	40f7063b          	subw	a2,a4,a5
80202f0c:	9f99                	subw	a5,a5,a4
80202f0e:	0166063b          	addw	a2,a2,s6
80202f12:	00f9053b          	addw	a0,s2,a5
80202f16:	bf89                	j	80202e68 <rt_serial_read+0x226>

80202f18 <rt_serial_close>:
80202f18:	3101                	addiw	sp,sp,-32
80202f1a:	e822                	sd	s0,16(sp)
80202f1c:	0005079b          	sext.w	a5,a0
80202f20:	ec06                	sd	ra,24(sp)
80202f22:	e426                	sd	s1,8(sp)
80202f24:	843e                	mv	s0,a5
80202f26:	ef89                	bnez	a5,80202f40 <rt_serial_close+0x28>
80202f28:	30700613          	li	a2,775
80202f2c:	00006597          	auipc	a1,0x6
80202f30:	b3c58593          	addi	a1,a1,-1220 # 80208a68 <__FUNCTION__.5>
80202f34:	00005517          	auipc	a0,0x5
80202f38:	b2450513          	addi	a0,a0,-1244 # 80207a58 <rt_system_timer_thread_init+0xa9a>
80202f3c:	7ef010ef          	jal	80204f2a <rt_assert_handler>
80202f40:	02c44703          	lbu	a4,44(s0)
80202f44:	4785                	li	a5,1
80202f46:	08e7ed63          	bltu	a5,a4,80202fe0 <rt_serial_close+0xc8>
80202f4a:	02a45783          	lhu	a5,42(s0)
80202f4e:	4078                	lw	a4,68(s0)
80202f50:	1007f693          	andi	a3,a5,256
80202f54:	4358                	lw	a4,4(a4)
80202f56:	cec1                	beqz	a3,80202fee <rt_serial_close+0xd6>
80202f58:	10000613          	li	a2,256
80202f5c:	459d                	li	a1,7
80202f5e:	8522                	mv	a0,s0
80202f60:	9702                	jalr	a4
80202f62:	02a45783          	lhu	a5,42(s0)
80202f66:	4824                	lw	s1,80(s0)
80202f68:	31600613          	li	a2,790
80202f6c:	eff7f793          	andi	a5,a5,-257
80202f70:	02f41523          	sh	a5,42(s0)
80202f74:	c0f1                	beqz	s1,80203038 <rt_serial_close+0x120>
80202f76:	8526                	mv	a0,s1
80202f78:	0f0020ef          	jal	80205068 <rt_free>
80202f7c:	04042823          	sw	zero,80(s0)
80202f80:	02a45703          	lhu	a4,42(s0)
80202f84:	407c                	lw	a5,68(s0)
80202f86:	40077693          	andi	a3,a4,1024
80202f8a:	43dc                	lw	a5,4(a5)
80202f8c:	cedd                	beqz	a3,8020304a <rt_serial_close+0x132>
80202f8e:	40000613          	li	a2,1024
80202f92:	459d                	li	a1,7
80202f94:	8522                	mv	a0,s0
80202f96:	9782                	jalr	a5
80202f98:	02a45783          	lhu	a5,42(s0)
80202f9c:	4864                	lw	s1,84(s0)
80202f9e:	bff7f793          	andi	a5,a5,-1025
80202fa2:	02f41523          	sh	a5,42(s0)
80202fa6:	ec89                	bnez	s1,80202fc0 <rt_serial_close+0xa8>
80202fa8:	34200613          	li	a2,834
80202fac:	00006597          	auipc	a1,0x6
80202fb0:	abc58593          	addi	a1,a1,-1348 # 80208a68 <__FUNCTION__.5>
80202fb4:	00005517          	auipc	a0,0x5
80202fb8:	d4c50513          	addi	a0,a0,-692 # 80207d00 <rt_system_timer_thread_init+0xd42>
80202fbc:	76f010ef          	jal	80204f2a <rt_assert_handler>
80202fc0:	8526                	mv	a0,s1
80202fc2:	0a6020ef          	jal	80205068 <rt_free>
80202fc6:	04042a23          	sw	zero,84(s0)
80202fca:	407c                	lw	a5,68(s0)
80202fcc:	4601                	li	a2,0
80202fce:	4591                	li	a1,4
80202fd0:	43dc                	lw	a5,4(a5)
80202fd2:	8522                	mv	a0,s0
80202fd4:	9782                	jalr	a5
80202fd6:	02845783          	lhu	a5,40(s0)
80202fda:	9bbd                	andi	a5,a5,-17
80202fdc:	02f41423          	sh	a5,40(s0)
80202fe0:	60e2                	ld	ra,24(sp)
80202fe2:	6442                	ld	s0,16(sp)
80202fe4:	64a2                	ld	s1,8(sp)
80202fe6:	4501                	li	a0,0
80202fe8:	0201011b          	addiw	sp,sp,32
80202fec:	8082                	ret
80202fee:	2007f793          	andi	a5,a5,512
80202ff2:	d7d9                	beqz	a5,80202f80 <rt_serial_close+0x68>
80202ff4:	20000613          	li	a2,512
80202ff8:	459d                	li	a1,7
80202ffa:	8522                	mv	a0,s0
80202ffc:	9702                	jalr	a4
80202ffe:	02a45783          	lhu	a5,42(s0)
80203002:	4824                	lw	s1,80(s0)
80203004:	dff7f793          	andi	a5,a5,-513
80203008:	02f41523          	sh	a5,42(s0)
8020300c:	447c                	lw	a5,76(s0)
8020300e:	02679713          	slli	a4,a5,0x26
80203012:	9341                	srli	a4,a4,0x30
80203014:	ef19                	bnez	a4,80203032 <rt_serial_close+0x11a>
80203016:	f0a5                	bnez	s1,80202f76 <rt_serial_close+0x5e>
80203018:	32800613          	li	a2,808
8020301c:	00006597          	auipc	a1,0x6
80203020:	a4c58593          	addi	a1,a1,-1460 # 80208a68 <__FUNCTION__.5>
80203024:	00005517          	auipc	a0,0x5
80203028:	cc450513          	addi	a0,a0,-828 # 80207ce8 <rt_system_timer_thread_init+0xd2a>
8020302c:	6ff010ef          	jal	80204f2a <rt_assert_handler>
80203030:	b799                	j	80202f76 <rt_serial_close+0x5e>
80203032:	f0b1                	bnez	s1,80202f76 <rt_serial_close+0x5e>
80203034:	33100613          	li	a2,817
80203038:	00006597          	auipc	a1,0x6
8020303c:	a3058593          	addi	a1,a1,-1488 # 80208a68 <__FUNCTION__.5>
80203040:	00005517          	auipc	a0,0x5
80203044:	c9050513          	addi	a0,a0,-880 # 80207cd0 <rt_system_timer_thread_init+0xd12>
80203048:	b7d5                	j	8020302c <rt_serial_close+0x114>
8020304a:	6605                	lui	a2,0x1
8020304c:	03471693          	slli	a3,a4,0x34
80203050:	80060613          	addi	a2,a2,-2048 # 800 <__STACKSIZE__-0x3800>
80203054:	f606dbe3          	bgez	a3,80202fca <rt_serial_close+0xb2>
80203058:	459d                	li	a1,7
8020305a:	8522                	mv	a0,s0
8020305c:	9782                	jalr	a5
8020305e:	02a45783          	lhu	a5,42(s0)
80203062:	777d                	lui	a4,0xfffff
80203064:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__bss_end+0x7fde9aaf>
80203068:	4864                	lw	s1,84(s0)
8020306a:	8ff9                	and	a5,a5,a4
8020306c:	02f41523          	sh	a5,42(s0)
80203070:	ec89                	bnez	s1,8020308a <rt_serial_close+0x172>
80203072:	35300613          	li	a2,851
80203076:	00006597          	auipc	a1,0x6
8020307a:	9f258593          	addi	a1,a1,-1550 # 80208a68 <__FUNCTION__.5>
8020307e:	00005517          	auipc	a0,0x5
80203082:	c9a50513          	addi	a0,a0,-870 # 80207d18 <rt_system_timer_thread_init+0xd5a>
80203086:	6a5010ef          	jal	80204f2a <rt_assert_handler>
8020308a:	0044851b          	addiw	a0,s1,4
8020308e:	a24ff0ef          	jal	802022b2 <rt_data_queue_deinit>
80203092:	b73d                	j	80202fc0 <rt_serial_close+0xa8>

80203094 <rt_hw_serial_register>:
80203094:	fd01011b          	addiw	sp,sp,-48
80203098:	f022                	sd	s0,32(sp)
8020309a:	ec26                	sd	s1,24(sp)
8020309c:	e84a                	sd	s2,16(sp)
8020309e:	e44e                	sd	s3,8(sp)
802030a0:	0005079b          	sext.w	a5,a0
802030a4:	f406                	sd	ra,40(sp)
802030a6:	843e                	mv	s0,a5
802030a8:	84ae                	mv	s1,a1
802030aa:	8932                	mv	s2,a2
802030ac:	89b6                	mv	s3,a3
802030ae:	ef89                	bnez	a5,802030c8 <rt_hw_serial_register+0x34>
802030b0:	54d00613          	li	a2,1357
802030b4:	00006597          	auipc	a1,0x6
802030b8:	a6c58593          	addi	a1,a1,-1428 # 80208b20 <__FUNCTION__.16>
802030bc:	00005517          	auipc	a0,0x5
802030c0:	d0450513          	addi	a0,a0,-764 # 80207dc0 <rt_system_timer_thread_init+0xe02>
802030c4:	667010ef          	jal	80204f2a <rt_assert_handler>
802030c8:	0584051b          	addiw	a0,s0,88
802030cc:	546000ef          	jal	80203612 <rt_spin_lock_init>
802030d0:	00006797          	auipc	a5,0x6
802030d4:	a6878793          	addi	a5,a5,-1432 # 80208b38 <serial_ops>
802030d8:	05342023          	sw	s3,64(s0)
802030dc:	02042223          	sw	zero,36(s0)
802030e0:	02042823          	sw	zero,48(s0)
802030e4:	02042a23          	sw	zero,52(s0)
802030e8:	dc1c                	sw	a5,56(s0)
802030ea:	8522                	mv	a0,s0
802030ec:	7402                	ld	s0,32(sp)
802030ee:	70a2                	ld	ra,40(sp)
802030f0:	69a2                	ld	s3,8(sp)
802030f2:	03091613          	slli	a2,s2,0x30
802030f6:	85a6                	mv	a1,s1
802030f8:	6942                	ld	s2,16(sp)
802030fa:	64e2                	ld	s1,24(sp)
802030fc:	9241                	srli	a2,a2,0x30
802030fe:	0301011b          	addiw	sp,sp,48
80203102:	f92fe06f          	j	80201894 <rt_device_register>

80203106 <rt_hw_serial_isr>:
80203106:	fb01011b          	addiw	sp,sp,-80
8020310a:	e0a2                	sd	s0,64(sp)
8020310c:	e486                	sd	ra,72(sp)
8020310e:	fc26                	sd	s1,56(sp)
80203110:	f84a                	sd	s2,48(sp)
80203112:	f44e                	sd	s3,40(sp)
80203114:	f052                	sd	s4,32(sp)
80203116:	ec56                	sd	s5,24(sp)
80203118:	e85a                	sd	s6,16(sp)
8020311a:	0ff5f793          	zext.b	a5,a1
8020311e:	470d                	li	a4,3
80203120:	842a                	mv	s0,a0
80203122:	1ae78763          	beq	a5,a4,802032d0 <rt_hw_serial_isr+0x1ca>
80203126:	0fc5f593          	andi	a1,a1,252
8020312a:	e195                	bnez	a1,8020314e <rt_hw_serial_isr+0x48>
8020312c:	4705                	li	a4,1
8020312e:	06e78763          	beq	a5,a4,8020319c <rt_hw_serial_isr+0x96>
80203132:	4709                	li	a4,2
80203134:	16e78e63          	beq	a5,a4,802032b0 <rt_hw_serial_isr+0x1aa>
80203138:	60a6                	ld	ra,72(sp)
8020313a:	6406                	ld	s0,64(sp)
8020313c:	74e2                	ld	s1,56(sp)
8020313e:	7942                	ld	s2,48(sp)
80203140:	79a2                	ld	s3,40(sp)
80203142:	7a02                	ld	s4,32(sp)
80203144:	6ae2                	ld	s5,24(sp)
80203146:	6b42                	ld	s6,16(sp)
80203148:	0501011b          	addiw	sp,sp,80
8020314c:	8082                	ret
8020314e:	4711                	li	a4,4
80203150:	fee794e3          	bne	a5,a4,80203138 <rt_hw_serial_isr+0x32>
80203154:	4964                	lw	s1,84(a0)
80203156:	0081061b          	addiw	a2,sp,8
8020315a:	00c1059b          	addiw	a1,sp,12
8020315e:	8926                	mv	s2,s1
80203160:	2491                	addiw	s1,s1,4
80203162:	4681                	li	a3,0
80203164:	8526                	mv	a0,s1
80203166:	a7aff0ef          	jal	802023e0 <rt_data_queue_pop>
8020316a:	0081061b          	addiw	a2,sp,8
8020316e:	0041059b          	addiw	a1,sp,4
80203172:	8526                	mv	a0,s1
80203174:	fe9fe0ef          	jal	8020215c <rt_data_queue_peek>
80203178:	14051963          	bnez	a0,802032ca <rt_hw_serial_isr+0x1c4>
8020317c:	4785                	li	a5,1
8020317e:	00f92023          	sw	a5,0(s2)
80203182:	407c                	lw	a5,68(s0)
80203184:	4622                	lw	a2,8(sp)
80203186:	4592                	lw	a1,4(sp)
80203188:	4b9c                	lw	a5,16(a5)
8020318a:	4689                	li	a3,2
8020318c:	8522                	mv	a0,s0
8020318e:	9782                	jalr	a5
80203190:	585c                	lw	a5,52(s0)
80203192:	d3dd                	beqz	a5,80203138 <rt_hw_serial_isr+0x32>
80203194:	45b2                	lw	a1,12(sp)
80203196:	8522                	mv	a0,s0
80203198:	9782                	jalr	a5
8020319a:	bf79                	j	80203138 <rt_hw_serial_isr+0x32>
8020319c:	493c                	lw	a5,80(a0)
8020319e:	84be                	mv	s1,a5
802031a0:	ef89                	bnez	a5,802031ba <rt_hw_serial_isr+0xb4>
802031a2:	57f00613          	li	a2,1407
802031a6:	00006597          	auipc	a1,0x6
802031aa:	88a58593          	addi	a1,a1,-1910 # 80208a30 <__FUNCTION__.2>
802031ae:	00005517          	auipc	a0,0x5
802031b2:	b2250513          	addi	a0,a0,-1246 # 80207cd0 <rt_system_timer_thread_init+0xd12>
802031b6:	575010ef          	jal	80204f2a <rt_assert_handler>
802031ba:	5afd                	li	s5,-1
802031bc:	0584091b          	addiw	s2,s0,88
802031c0:	4985                	li	s3,1
802031c2:	0000ea17          	auipc	s4,0xe
802031c6:	1a6a0a13          	addi	s4,s4,422 # 80211368 <already_output.1>
802031ca:	407c                	lw	a5,68(s0)
802031cc:	8522                	mv	a0,s0
802031ce:	47dc                	lw	a5,12(a5)
802031d0:	9782                	jalr	a5
802031d2:	8b2a                	mv	s6,a0
802031d4:	07550263          	beq	a0,s5,80203238 <rt_hw_serial_isr+0x132>
802031d8:	854a                	mv	a0,s2
802031da:	444000ef          	jal	8020361e <rt_spin_lock_irqsave>
802031de:	4098                	lw	a4,0(s1)
802031e0:	0044d783          	lhu	a5,4(s1)
802031e4:	85aa                	mv	a1,a0
802031e6:	9fb9                	addw	a5,a5,a4
802031e8:	01678023          	sb	s6,0(a5)
802031ec:	0044d783          	lhu	a5,4(s1)
802031f0:	4478                	lw	a4,76(s0)
802031f2:	2785                	addiw	a5,a5,1
802031f4:	00a7571b          	srliw	a4,a4,0xa
802031f8:	17c2                	slli	a5,a5,0x30
802031fa:	1742                	slli	a4,a4,0x30
802031fc:	93c1                	srli	a5,a5,0x30
802031fe:	9341                	srli	a4,a4,0x30
80203200:	00e7e363          	bltu	a5,a4,80203206 <rt_hw_serial_isr+0x100>
80203204:	4781                	li	a5,0
80203206:	0064d683          	lhu	a3,6(s1)
8020320a:	00f49223          	sh	a5,4(s1)
8020320e:	02f69163          	bne	a3,a5,80203230 <rt_hw_serial_isr+0x12a>
80203212:	2785                	addiw	a5,a5,1
80203214:	17c2                	slli	a5,a5,0x30
80203216:	93c1                	srli	a5,a5,0x30
80203218:	0134a423          	sw	s3,8(s1)
8020321c:	00e7e363          	bltu	a5,a4,80203222 <rt_hw_serial_isr+0x11c>
80203220:	4781                	li	a5,0
80203222:	00f49323          	sh	a5,6(s1)
80203226:	000a2783          	lw	a5,0(s4)
8020322a:	e399                	bnez	a5,80203230 <rt_hw_serial_isr+0x12a>
8020322c:	013a2023          	sw	s3,0(s4)
80203230:	854a                	mv	a0,s2
80203232:	406000ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80203236:	bf51                	j	802031ca <rt_hw_serial_isr+0xc4>
80203238:	503c                	lw	a5,96(s0)
8020323a:	cf89                	beqz	a5,80203254 <rt_hw_serial_isr+0x14e>
8020323c:	5068                	lw	a0,100(s0)
8020323e:	6406                	ld	s0,64(sp)
80203240:	60a6                	ld	ra,72(sp)
80203242:	74e2                	ld	s1,56(sp)
80203244:	7942                	ld	s2,48(sp)
80203246:	79a2                	ld	s3,40(sp)
80203248:	7a02                	ld	s4,32(sp)
8020324a:	6ae2                	ld	s5,24(sp)
8020324c:	6b42                	ld	s6,16(sp)
8020324e:	0501011b          	addiw	sp,sp,80
80203252:	8782                	jr	a5
80203254:	581c                	lw	a5,48(s0)
80203256:	ee0781e3          	beqz	a5,80203138 <rt_hw_serial_isr+0x32>
8020325a:	0584091b          	addiw	s2,s0,88
8020325e:	854a                	mv	a0,s2
80203260:	3be000ef          	jal	8020361e <rt_spin_lock_irqsave>
80203264:	0044d703          	lhu	a4,4(s1)
80203268:	0064d783          	lhu	a5,6(s1)
8020326c:	85aa                	mv	a1,a0
8020326e:	02f76763          	bltu	a4,a5,8020329c <rt_hw_serial_isr+0x196>
80203272:	40f704bb          	subw	s1,a4,a5
80203276:	854a                	mv	a0,s2
80203278:	3c0000ef          	jal	80203638 <rt_spin_unlock_irqrestore>
8020327c:	ea048ee3          	beqz	s1,80203138 <rt_hw_serial_isr+0x32>
80203280:	581c                	lw	a5,48(s0)
80203282:	8522                	mv	a0,s0
80203284:	6406                	ld	s0,64(sp)
80203286:	60a6                	ld	ra,72(sp)
80203288:	7942                	ld	s2,48(sp)
8020328a:	79a2                	ld	s3,40(sp)
8020328c:	7a02                	ld	s4,32(sp)
8020328e:	6ae2                	ld	s5,24(sp)
80203290:	6b42                	ld	s6,16(sp)
80203292:	85a6                	mv	a1,s1
80203294:	74e2                	ld	s1,56(sp)
80203296:	0501011b          	addiw	sp,sp,80
8020329a:	8782                	jr	a5
8020329c:	4464                	lw	s1,76(s0)
8020329e:	9f99                	subw	a5,a5,a4
802032a0:	00a4d49b          	srliw	s1,s1,0xa
802032a4:	0104949b          	slliw	s1,s1,0x10
802032a8:	0104d49b          	srliw	s1,s1,0x10
802032ac:	9c9d                	subw	s1,s1,a5
802032ae:	b7e1                	j	80203276 <rt_hw_serial_isr+0x170>
802032b0:	6406                	ld	s0,64(sp)
802032b2:	60a6                	ld	ra,72(sp)
802032b4:	74e2                	ld	s1,56(sp)
802032b6:	7942                	ld	s2,48(sp)
802032b8:	79a2                	ld	s3,40(sp)
802032ba:	7a02                	ld	s4,32(sp)
802032bc:	6ae2                	ld	s5,24(sp)
802032be:	6b42                	ld	s6,16(sp)
802032c0:	4968                	lw	a0,84(a0)
802032c2:	0501011b          	addiw	sp,sp,80
802032c6:	8f1fe06f          	j	80201bb6 <rt_completion_done>
802032ca:	00092023          	sw	zero,0(s2)
802032ce:	b5c9                	j	80203190 <rt_hw_serial_isr+0x8a>
802032d0:	457c                	lw	a5,76(a0)
802032d2:	4085d49b          	sraiw	s1,a1,0x8
802032d6:	02679713          	slli	a4,a5,0x26
802032da:	9341                	srli	a4,a4,0x30
802032dc:	e731                	bnez	a4,80203328 <rt_hw_serial_isr+0x222>
802032de:	493c                	lw	a5,80(a0)
802032e0:	893e                	mv	s2,a5
802032e2:	ef89                	bnez	a5,802032fc <rt_hw_serial_isr+0x1f6>
802032e4:	5e900613          	li	a2,1513
802032e8:	00005597          	auipc	a1,0x5
802032ec:	74858593          	addi	a1,a1,1864 # 80208a30 <__FUNCTION__.2>
802032f0:	00005517          	auipc	a0,0x5
802032f4:	9f850513          	addi	a0,a0,-1544 # 80207ce8 <rt_system_timer_thread_init+0xd2a>
802032f8:	433010ef          	jal	80204f2a <rt_assert_handler>
802032fc:	581c                	lw	a5,48(s0)
802032fe:	ef89                	bnez	a5,80203318 <rt_hw_serial_isr+0x212>
80203300:	5eb00613          	li	a2,1515
80203304:	00005597          	auipc	a1,0x5
80203308:	72c58593          	addi	a1,a1,1836 # 80208a30 <__FUNCTION__.2>
8020330c:	00005517          	auipc	a0,0x5
80203310:	acc50513          	addi	a0,a0,-1332 # 80207dd8 <rt_system_timer_thread_init+0xe1a>
80203314:	417010ef          	jal	80204f2a <rt_assert_handler>
80203318:	581c                	lw	a5,48(s0)
8020331a:	0004859b          	sext.w	a1,s1
8020331e:	8522                	mv	a0,s0
80203320:	9782                	jalr	a5
80203322:	00092023          	sw	zero,0(s2)
80203326:	bd09                	j	80203138 <rt_hw_serial_isr+0x32>
80203328:	05850a1b          	addiw	s4,a0,88
8020332c:	8552                	mv	a0,s4
8020332e:	2f0000ef          	jal	8020361e <rt_spin_lock_irqsave>
80203332:	483c                	lw	a5,80(s0)
80203334:	89aa                	mv	s3,a0
80203336:	893e                	mv	s2,a5
80203338:	ef89                	bnez	a5,80203352 <rt_hw_serial_isr+0x24c>
8020333a:	1ce00613          	li	a2,462
8020333e:	00005597          	auipc	a1,0x5
80203342:	6d258593          	addi	a1,a1,1746 # 80208a10 <__FUNCTION__.0>
80203346:	00005517          	auipc	a0,0x5
8020334a:	98a50513          	addi	a0,a0,-1654 # 80207cd0 <rt_system_timer_thread_init+0xd12>
8020334e:	3dd010ef          	jal	80204f2a <rt_assert_handler>
80203352:	00495703          	lhu	a4,4(s2)
80203356:	00695603          	lhu	a2,6(s2)
8020335a:	00e487bb          	addw	a5,s1,a4
8020335e:	17c2                	slli	a5,a5,0x30
80203360:	93c1                	srli	a5,a5,0x30
80203362:	00f91223          	sh	a5,4(s2)
80203366:	0007869b          	sext.w	a3,a5
8020336a:	04c76163          	bltu	a4,a2,802033ac <rt_hw_serial_isr+0x2a6>
8020336e:	4478                	lw	a4,76(s0)
80203370:	00a7571b          	srliw	a4,a4,0xa
80203374:	1742                	slli	a4,a4,0x30
80203376:	9341                	srli	a4,a4,0x30
80203378:	04e6e863          	bltu	a3,a4,802033c8 <rt_hw_serial_isr+0x2c2>
8020337c:	02e7f7bb          	remuw	a5,a5,a4
80203380:	17c2                	slli	a5,a5,0x30
80203382:	93c1                	srli	a5,a5,0x30
80203384:	00f91223          	sh	a5,4(s2)
80203388:	04c7e063          	bltu	a5,a2,802033c8 <rt_hw_serial_isr+0x2c2>
8020338c:	4785                	li	a5,1
8020338e:	00f92423          	sw	a5,8(s2)
80203392:	0000e797          	auipc	a5,0xe
80203396:	fd678793          	addi	a5,a5,-42 # 80211368 <already_output.1>
8020339a:	4398                	lw	a4,0(a5)
8020339c:	e319                	bnez	a4,802033a2 <rt_hw_serial_isr+0x29c>
8020339e:	4705                	li	a4,1
802033a0:	c398                	sw	a4,0(a5)
802033a2:	00495783          	lhu	a5,4(s2)
802033a6:	00f91323          	sh	a5,6(s2)
802033aa:	a025                	j	802033d2 <rt_hw_serial_isr+0x2cc>
802033ac:	00c6ee63          	bltu	a3,a2,802033c8 <rt_hw_serial_isr+0x2c2>
802033b0:	4478                	lw	a4,76(s0)
802033b2:	00a7571b          	srliw	a4,a4,0xa
802033b6:	1742                	slli	a4,a4,0x30
802033b8:	9341                	srli	a4,a4,0x30
802033ba:	fce6e9e3          	bltu	a3,a4,8020338c <rt_hw_serial_isr+0x286>
802033be:	02e7f7bb          	remuw	a5,a5,a4
802033c2:	00f91223          	sh	a5,4(s2)
802033c6:	b7d9                	j	8020338c <rt_hw_serial_isr+0x286>
802033c8:	00892703          	lw	a4,8(s2)
802033cc:	4785                	li	a5,1
802033ce:	fcf702e3          	beq	a4,a5,80203392 <rt_hw_serial_isr+0x28c>
802033d2:	8522                	mv	a0,s0
802033d4:	aa2ff0ef          	jal	80202676 <_serial_fifo_calc_recved_len>
802033d8:	84aa                	mv	s1,a0
802033da:	85ce                	mv	a1,s3
802033dc:	8552                	mv	a0,s4
802033de:	25a000ef          	jal	80203638 <rt_spin_unlock_irqrestore>
802033e2:	581c                	lw	a5,48(s0)
802033e4:	d4078ae3          	beqz	a5,80203138 <rt_hw_serial_isr+0x32>
802033e8:	8522                	mv	a0,s0
802033ea:	6406                	ld	s0,64(sp)
802033ec:	60a6                	ld	ra,72(sp)
802033ee:	7942                	ld	s2,48(sp)
802033f0:	79a2                	ld	s3,40(sp)
802033f2:	7a02                	ld	s4,32(sp)
802033f4:	6ae2                	ld	s5,24(sp)
802033f6:	6b42                	ld	s6,16(sp)
802033f8:	0004859b          	sext.w	a1,s1
802033fc:	74e2                	ld	s1,56(sp)
802033fe:	0501011b          	addiw	sp,sp,80
80203402:	8782                	jr	a5

80203404 <rt_tick_get>:
80203404:	3141                	addiw	sp,sp,-16
80203406:	e406                	sd	ra,8(sp)
80203408:	e022                	sd	s0,0(sp)
8020340a:	feffc0ef          	jal	802003f8 <rt_hw_interrupt_disable>
8020340e:	0000e417          	auipc	s0,0xe
80203412:	f6242403          	lw	s0,-158(s0) # 80211370 <rt_tick>
80203416:	fddfc0ef          	jal	802003f2 <rt_hw_interrupt_enable>
8020341a:	60a2                	ld	ra,8(sp)
8020341c:	8522                	mv	a0,s0
8020341e:	6402                	ld	s0,0(sp)
80203420:	2141                	addiw	sp,sp,16
80203422:	8082                	ret

80203424 <rt_tick_increase>:
80203424:	3141                	addiw	sp,sp,-16
80203426:	e406                	sd	ra,8(sp)
80203428:	e022                	sd	s0,0(sp)
8020342a:	72f000ef          	jal	80204358 <rt_interrupt_get_nest>
8020342e:	ed09                	bnez	a0,80203448 <rt_tick_increase+0x24>
80203430:	07600613          	li	a2,118
80203434:	00005597          	auipc	a1,0x5
80203438:	71c58593          	addi	a1,a1,1820 # 80208b50 <__FUNCTION__.0>
8020343c:	00005517          	auipc	a0,0x5
80203440:	9c450513          	addi	a0,a0,-1596 # 80207e00 <rt_system_timer_thread_init+0xe42>
80203444:	2e7010ef          	jal	80204f2a <rt_assert_handler>
80203448:	0000e797          	auipc	a5,0xe
8020344c:	f247a783          	lw	a5,-220(a5) # 8021136c <rt_tick_hook>
80203450:	c391                	beqz	a5,80203454 <rt_tick_increase+0x30>
80203452:	9782                	jalr	a5
80203454:	1a2030ef          	jal	802065f6 <rt_thread_self>
80203458:	842a                	mv	s0,a0
8020345a:	1f8000ef          	jal	80203652 <rt_cpu_self>
8020345e:	0c042783          	lw	a5,192(s0)
80203462:	2785                	addiw	a5,a5,1
80203464:	0cf42023          	sw	a5,192(s0)
80203468:	451c                	lw	a5,8(a0)
8020346a:	2785                	addiw	a5,a5,1
8020346c:	c51c                	sw	a5,8(a0)
8020346e:	f8bfc0ef          	jal	802003f8 <rt_hw_interrupt_disable>
80203472:	0000e797          	auipc	a5,0xe
80203476:	efe78793          	addi	a5,a5,-258 # 80211370 <rt_tick>
8020347a:	4398                	lw	a4,0(a5)
8020347c:	4398                	lw	a4,0(a5)
8020347e:	2705                	addiw	a4,a4,1
80203480:	c398                	sw	a4,0(a5)
80203482:	f71fc0ef          	jal	802003f2 <rt_hw_interrupt_enable>
80203486:	7e6020ef          	jal	80205c6c <rt_sched_tick_increase>
8020348a:	6402                	ld	s0,0(sp)
8020348c:	60a2                	ld	ra,8(sp)
8020348e:	2141                	addiw	sp,sp,16
80203490:	1bf0306f          	j	80206e4e <rt_timer_check>

80203494 <rti_start>:
80203494:	4501                	li	a0,0
80203496:	8082                	ret

80203498 <rti_end>:
80203498:	4501                	li	a0,0
8020349a:	8082                	ret

8020349c <rti_board_start>:
8020349c:	4501                	li	a0,0
8020349e:	8082                	ret

802034a0 <rti_board_end>:
802034a0:	4501                	li	a0,0
802034a2:	8082                	ret

802034a4 <rt_components_board_init>:
802034a4:	fd01011b          	addiw	sp,sp,-48
802034a8:	ec26                	sd	s1,24(sp)
802034aa:	00006497          	auipc	s1,0x6
802034ae:	ca648493          	addi	s1,s1,-858 # 80209150 <__rt_init_desc_rti_board_end>
802034b2:	f022                	sd	s0,32(sp)
802034b4:	e84a                	sd	s2,16(sp)
802034b6:	e44e                	sd	s3,8(sp)
802034b8:	f406                	sd	ra,40(sp)
802034ba:	00006417          	auipc	s0,0x6
802034be:	c7e40413          	addi	s0,s0,-898 # 80209138 <__rt_init_desc_rti_board_start>
802034c2:	2481                	sext.w	s1,s1
802034c4:	00005917          	auipc	s2,0x5
802034c8:	95c90913          	addi	s2,s2,-1700 # 80207e20 <rt_system_timer_thread_init+0xe62>
802034cc:	00005997          	auipc	s3,0x5
802034d0:	96498993          	addi	s3,s3,-1692 # 80207e30 <rt_system_timer_thread_init+0xe72>
802034d4:	0004079b          	sext.w	a5,s0
802034d8:	0097ea63          	bltu	a5,s1,802034ec <rt_components_board_init+0x48>
802034dc:	70a2                	ld	ra,40(sp)
802034de:	7402                	ld	s0,32(sp)
802034e0:	64e2                	ld	s1,24(sp)
802034e2:	6942                	ld	s2,16(sp)
802034e4:	69a2                	ld	s3,8(sp)
802034e6:	0301011b          	addiw	sp,sp,48
802034ea:	8082                	ret
802034ec:	400c                	lw	a1,0(s0)
802034ee:	854a                	mv	a0,s2
802034f0:	087010ef          	jal	80204d76 <rt_kprintf>
802034f4:	405c                	lw	a5,4(s0)
802034f6:	2421                	addiw	s0,s0,8
802034f8:	9782                	jalr	a5
802034fa:	85aa                	mv	a1,a0
802034fc:	854e                	mv	a0,s3
802034fe:	079010ef          	jal	80204d76 <rt_kprintf>
80203502:	bfc9                	j	802034d4 <rt_components_board_init+0x30>

80203504 <rt_components_init>:
80203504:	fd01011b          	addiw	sp,sp,-48
80203508:	ec26                	sd	s1,24(sp)
8020350a:	00005517          	auipc	a0,0x5
8020350e:	93650513          	addi	a0,a0,-1738 # 80207e40 <rt_system_timer_thread_init+0xe82>
80203512:	00006497          	auipc	s1,0x6
80203516:	c4e48493          	addi	s1,s1,-946 # 80209160 <__rt_init_desc_rti_end>
8020351a:	f022                	sd	s0,32(sp)
8020351c:	e84a                	sd	s2,16(sp)
8020351e:	e44e                	sd	s3,8(sp)
80203520:	f406                	sd	ra,40(sp)
80203522:	00006417          	auipc	s0,0x6
80203526:	c2e40413          	addi	s0,s0,-978 # 80209150 <__rt_init_desc_rti_board_end>
8020352a:	04d010ef          	jal	80204d76 <rt_kprintf>
8020352e:	2481                	sext.w	s1,s1
80203530:	00005917          	auipc	s2,0x5
80203534:	8f090913          	addi	s2,s2,-1808 # 80207e20 <rt_system_timer_thread_init+0xe62>
80203538:	00005997          	auipc	s3,0x5
8020353c:	8f898993          	addi	s3,s3,-1800 # 80207e30 <rt_system_timer_thread_init+0xe72>
80203540:	0004079b          	sext.w	a5,s0
80203544:	0097ea63          	bltu	a5,s1,80203558 <rt_components_init+0x54>
80203548:	70a2                	ld	ra,40(sp)
8020354a:	7402                	ld	s0,32(sp)
8020354c:	64e2                	ld	s1,24(sp)
8020354e:	6942                	ld	s2,16(sp)
80203550:	69a2                	ld	s3,8(sp)
80203552:	0301011b          	addiw	sp,sp,48
80203556:	8082                	ret
80203558:	400c                	lw	a1,0(s0)
8020355a:	854a                	mv	a0,s2
8020355c:	01b010ef          	jal	80204d76 <rt_kprintf>
80203560:	405c                	lw	a5,4(s0)
80203562:	2421                	addiw	s0,s0,8
80203564:	9782                	jalr	a5
80203566:	85aa                	mv	a1,a0
80203568:	854e                	mv	a0,s3
8020356a:	00d010ef          	jal	80204d76 <rt_kprintf>
8020356e:	bfc9                	j	80203540 <rt_components_init+0x3c>

80203570 <main_thread_entry>:
80203570:	3141                	addiw	sp,sp,-16
80203572:	e406                	sd	ra,8(sp)
80203574:	f91ff0ef          	jal	80203504 <rt_components_init>
80203578:	60a2                	ld	ra,8(sp)
8020357a:	2141                	addiw	sp,sp,16
8020357c:	95cfe06f          	j	802016d8 <main>

80203580 <rt_application_init>:
80203580:	3141                	addiw	sp,sp,-16
80203582:	47d1                	li	a5,20
80203584:	4729                	li	a4,10
80203586:	6691                	lui	a3,0x4
80203588:	4601                	li	a2,0
8020358a:	00000597          	auipc	a1,0x0
8020358e:	fe658593          	addi	a1,a1,-26 # 80203570 <main_thread_entry>
80203592:	00005517          	auipc	a0,0x5
80203596:	8ce50513          	addi	a0,a0,-1842 # 80207e60 <rt_system_timer_thread_init+0xea2>
8020359a:	e022                	sd	s0,0(sp)
8020359c:	e406                	sd	ra,8(sp)
8020359e:	10c030ef          	jal	802066aa <rt_thread_create>
802035a2:	0005079b          	sext.w	a5,a0
802035a6:	843e                	mv	s0,a5
802035a8:	ef89                	bnez	a5,802035c2 <rt_application_init+0x42>
802035aa:	0d800613          	li	a2,216
802035ae:	00005597          	auipc	a1,0x5
802035b2:	5ba58593          	addi	a1,a1,1466 # 80208b68 <__FUNCTION__.0>
802035b6:	00005517          	auipc	a0,0x5
802035ba:	8b250513          	addi	a0,a0,-1870 # 80207e68 <rt_system_timer_thread_init+0xeaa>
802035be:	16d010ef          	jal	80204f2a <rt_assert_handler>
802035c2:	8522                	mv	a0,s0
802035c4:	6402                	ld	s0,0(sp)
802035c6:	60a2                	ld	ra,8(sp)
802035c8:	2141                	addiw	sp,sp,16
802035ca:	35e0306f          	j	80206928 <rt_thread_startup>

802035ce <rtthread_startup>:
802035ce:	3141                	addiw	sp,sp,-16
802035d0:	e406                	sd	ra,8(sp)
802035d2:	e27fc0ef          	jal	802003f8 <rt_hw_interrupt_disable>
802035d6:	916fe0ef          	jal	802016ec <rt_hw_board_init>
802035da:	7f6010ef          	jal	80204dd0 <rt_show_version>
802035de:	1c9030ef          	jal	80206fa6 <rt_system_timer_init>
802035e2:	7fa020ef          	jal	80205ddc <rt_system_scheduler_init>
802035e6:	5a7020ef          	jal	8020638c <rt_system_signal_init>
802035ea:	f97ff0ef          	jal	80203580 <rt_application_init>
802035ee:	1d1030ef          	jal	80206fbe <rt_system_timer_thread_init>
802035f2:	178000ef          	jal	8020376a <rt_thread_idle_init>
802035f6:	1a3020ef          	jal	80205f98 <rt_system_scheduler_start>
802035fa:	60a2                	ld	ra,8(sp)
802035fc:	4501                	li	a0,0
802035fe:	2141                	addiw	sp,sp,16
80203600:	8082                	ret

80203602 <entry>:
80203602:	3141                	addiw	sp,sp,-16
80203604:	e406                	sd	ra,8(sp)
80203606:	fc9ff0ef          	jal	802035ce <rtthread_startup>
8020360a:	60a2                	ld	ra,8(sp)
8020360c:	4501                	li	a0,0
8020360e:	2141                	addiw	sp,sp,16
80203610:	8082                	ret

80203612 <rt_spin_lock_init>:
80203612:	8082                	ret

80203614 <rt_spin_lock>:
80203614:	3710206f          	j	80206184 <rt_enter_critical>

80203618 <rt_spin_unlock>:
80203618:	4501                	li	a0,0
8020361a:	3ed0206f          	j	80206206 <rt_exit_critical_safe>

8020361e <rt_spin_lock_irqsave>:
8020361e:	3141                	addiw	sp,sp,-16
80203620:	e406                	sd	ra,8(sp)
80203622:	e022                	sd	s0,0(sp)
80203624:	dd5fc0ef          	jal	802003f8 <rt_hw_interrupt_disable>
80203628:	842a                	mv	s0,a0
8020362a:	35b020ef          	jal	80206184 <rt_enter_critical>
8020362e:	60a2                	ld	ra,8(sp)
80203630:	8522                	mv	a0,s0
80203632:	6402                	ld	s0,0(sp)
80203634:	2141                	addiw	sp,sp,16
80203636:	8082                	ret

80203638 <rt_spin_unlock_irqrestore>:
80203638:	3141                	addiw	sp,sp,-16
8020363a:	4501                	li	a0,0
8020363c:	e022                	sd	s0,0(sp)
8020363e:	e406                	sd	ra,8(sp)
80203640:	842e                	mv	s0,a1
80203642:	3c5020ef          	jal	80206206 <rt_exit_critical_safe>
80203646:	8522                	mv	a0,s0
80203648:	6402                	ld	s0,0(sp)
8020364a:	60a2                	ld	ra,8(sp)
8020364c:	2141                	addiw	sp,sp,16
8020364e:	da5fc06f          	j	802003f2 <rt_hw_interrupt_enable>

80203652 <rt_cpu_self>:
80203652:	0000e517          	auipc	a0,0xe
80203656:	32650513          	addi	a0,a0,806 # 80211978 <_cpu>
8020365a:	8082                	ret

8020365c <rt_cpu_index>:
8020365c:	e511                	bnez	a0,80203668 <rt_cpu_index+0xc>
8020365e:	0000e517          	auipc	a0,0xe
80203662:	31a50513          	addi	a0,a0,794 # 80211978 <_cpu>
80203666:	8082                	ret
80203668:	4501                	li	a0,0
8020366a:	8082                	ret

8020366c <rt_thread_defunct_enqueue>:
8020366c:	3141                	addiw	sp,sp,-16
8020366e:	e022                	sd	s0,0(sp)
80203670:	842a                	mv	s0,a0
80203672:	0000e517          	auipc	a0,0xe
80203676:	d0650513          	addi	a0,a0,-762 # 80211378 <_defunct_spinlock>
8020367a:	e406                	sd	ra,8(sp)
8020367c:	fa3ff0ef          	jal	8020361e <rt_spin_lock_irqsave>
80203680:	00006797          	auipc	a5,0x6
80203684:	c5878793          	addi	a5,a5,-936 # 802092d8 <_rt_thread_defunct>
80203688:	4394                	lw	a3,0(a5)
8020368a:	03c4071b          	addiw	a4,s0,60
8020368e:	60a2                	ld	ra,8(sp)
80203690:	c2d8                	sw	a4,4(a3)
80203692:	dc54                	sw	a3,60(s0)
80203694:	c03c                	sw	a5,64(s0)
80203696:	6402                	ld	s0,0(sp)
80203698:	c398                	sw	a4,0(a5)
8020369a:	85aa                	mv	a1,a0
8020369c:	0000e517          	auipc	a0,0xe
802036a0:	cdc50513          	addi	a0,a0,-804 # 80211378 <_defunct_spinlock>
802036a4:	2141                	addiw	sp,sp,16
802036a6:	bf49                	j	80203638 <rt_spin_unlock_irqrestore>

802036a8 <rt_thread_defunct_dequeue>:
802036a8:	3101                	addiw	sp,sp,-32
802036aa:	00006797          	auipc	a5,0x6
802036ae:	c2e78793          	addi	a5,a5,-978 # 802092d8 <_rt_thread_defunct>
802036b2:	e822                	sd	s0,16(sp)
802036b4:	4380                	lw	s0,0(a5)
802036b6:	e04a                	sd	s2,0(sp)
802036b8:	ec06                	sd	ra,24(sp)
802036ba:	e426                	sd	s1,8(sp)
802036bc:	2781                	sext.w	a5,a5
802036be:	4901                	li	s2,0
802036c0:	00f40e63          	beq	s0,a5,802036dc <rt_thread_defunct_dequeue+0x34>
802036c4:	d35fc0ef          	jal	802003f8 <rt_hw_interrupt_disable>
802036c8:	4018                	lw	a4,0(s0)
802036ca:	405c                	lw	a5,4(s0)
802036cc:	fc44091b          	addiw	s2,s0,-60
802036d0:	c35c                	sw	a5,4(a4)
802036d2:	c398                	sw	a4,0(a5)
802036d4:	c040                	sw	s0,4(s0)
802036d6:	c000                	sw	s0,0(s0)
802036d8:	d1bfc0ef          	jal	802003f2 <rt_hw_interrupt_enable>
802036dc:	60e2                	ld	ra,24(sp)
802036de:	6442                	ld	s0,16(sp)
802036e0:	64a2                	ld	s1,8(sp)
802036e2:	854a                	mv	a0,s2
802036e4:	6902                	ld	s2,0(sp)
802036e6:	0201011b          	addiw	sp,sp,32
802036ea:	8082                	ret

802036ec <idle_thread_entry>:
802036ec:	fc01011b          	addiw	sp,sp,-64
802036f0:	ec4e                	sd	s3,24(sp)
802036f2:	e852                	sd	s4,16(sp)
802036f4:	0000e997          	auipc	s3,0xe
802036f8:	2ac98993          	addi	s3,s3,684 # 802119a0 <idle_thread_stack>
802036fc:	0000ea17          	auipc	s4,0xe
80203700:	294a0a13          	addi	s4,s4,660 # 80211990 <idle_hook_list>
80203704:	e456                	sd	s5,8(sp)
80203706:	fc06                	sd	ra,56(sp)
80203708:	f822                	sd	s0,48(sp)
8020370a:	f426                	sd	s1,40(sp)
8020370c:	f04a                	sd	s2,32(sp)
8020370e:	e05a                	sd	s6,0(sp)
80203710:	2a01                	sext.w	s4,s4
80203712:	2981                	sext.w	s3,s3
80203714:	4a85                	li	s5,1
80203716:	8452                	mv	s0,s4
80203718:	401c                	lw	a5,0(s0)
8020371a:	c391                	beqz	a5,8020371e <idle_thread_entry+0x32>
8020371c:	9782                	jalr	a5
8020371e:	2411                	addiw	s0,s0,4
80203720:	ff341ce3          	bne	s0,s3,80203718 <idle_thread_entry+0x2c>
80203724:	f85ff0ef          	jal	802036a8 <rt_thread_defunct_dequeue>
80203728:	0005079b          	sext.w	a5,a0
8020372c:	843e                	mv	s0,a5
8020372e:	d7e5                	beqz	a5,80203716 <idle_thread_entry+0x2a>
80203730:	3f1020ef          	jal	80206320 <rt_thread_free_sig>
80203734:	09442483          	lw	s1,148(s0)
80203738:	8522                	mv	a0,s0
8020373a:	2e4020ef          	jal	80205a1e <rt_object_is_systemobject>
8020373e:	8b26                	mv	s6,s1
80203740:	892a                	mv	s2,a0
80203742:	2481                	sext.w	s1,s1
80203744:	01551963          	bne	a0,s5,80203756 <idle_thread_entry+0x6a>
80203748:	8522                	mv	a0,s0
8020374a:	0c0020ef          	jal	8020580a <rt_object_detach>
8020374e:	d8f9                	beqz	s1,80203724 <idle_thread_entry+0x38>
80203750:	8522                	mv	a0,s0
80203752:	9b02                	jalr	s6
80203754:	a011                	j	80203758 <idle_thread_entry+0x6c>
80203756:	fced                	bnez	s1,80203750 <idle_thread_entry+0x64>
80203758:	fc0916e3          	bnez	s2,80203724 <idle_thread_entry+0x38>
8020375c:	5808                	lw	a0,48(s0)
8020375e:	10b010ef          	jal	80205068 <rt_free>
80203762:	8522                	mv	a0,s0
80203764:	208020ef          	jal	8020596c <rt_object_delete>
80203768:	bf75                	j	80203724 <idle_thread_entry+0x38>

8020376a <rt_thread_idle_init>:
8020376a:	fd01011b          	addiw	sp,sp,-48
8020376e:	4681                	li	a3,0
80203770:	00004617          	auipc	a2,0x4
80203774:	70860613          	addi	a2,a2,1800 # 80207e78 <rt_system_timer_thread_init+0xeba>
80203778:	45e1                	li	a1,24
8020377a:	0081051b          	addiw	a0,sp,8
8020377e:	f406                	sd	ra,40(sp)
80203780:	326010ef          	jal	80204aa6 <rt_snprintf>
80203784:	0081059b          	addiw	a1,sp,8
80203788:	02000893          	li	a7,32
8020378c:	487d                	li	a6,31
8020378e:	6791                	lui	a5,0x4
80203790:	0000e717          	auipc	a4,0xe
80203794:	21070713          	addi	a4,a4,528 # 802119a0 <idle_thread_stack>
80203798:	4681                	li	a3,0
8020379a:	00000617          	auipc	a2,0x0
8020379e:	f5260613          	addi	a2,a2,-174 # 802036ec <idle_thread_entry>
802037a2:	00012517          	auipc	a0,0x12
802037a6:	1fe50513          	addi	a0,a0,510 # 802159a0 <idle_thread>
802037aa:	59d020ef          	jal	80206546 <rt_thread_init>
802037ae:	4501                	li	a0,0
802037b0:	eadff0ef          	jal	8020365c <rt_cpu_index>
802037b4:	00012797          	auipc	a5,0x12
802037b8:	1ec78793          	addi	a5,a5,492 # 802159a0 <idle_thread>
802037bc:	c15c                	sw	a5,4(a0)
802037be:	853e                	mv	a0,a5
802037c0:	168030ef          	jal	80206928 <rt_thread_startup>
802037c4:	70a2                	ld	ra,40(sp)
802037c6:	0301011b          	addiw	sp,sp,48
802037ca:	8082                	ret

802037cc <rt_list_remove>:
802037cc:	4118                	lw	a4,0(a0)
802037ce:	415c                	lw	a5,4(a0)
802037d0:	c35c                	sw	a5,4(a4)
802037d2:	c398                	sw	a4,0(a5)
802037d4:	c148                	sw	a0,4(a0)
802037d6:	c108                	sw	a0,0(a0)
802037d8:	8082                	ret

802037da <_rt_sem_take>:
802037da:	fc01011b          	addiw	sp,sp,-64
802037de:	f822                	sd	s0,48(sp)
802037e0:	f426                	sd	s1,40(sp)
802037e2:	0005079b          	sext.w	a5,a0
802037e6:	fc06                	sd	ra,56(sp)
802037e8:	f04a                	sd	s2,32(sp)
802037ea:	ec4e                	sd	s3,24(sp)
802037ec:	e852                	sd	s4,16(sp)
802037ee:	c62e                	sw	a1,12(sp)
802037f0:	843e                	mv	s0,a5
802037f2:	84b2                	mv	s1,a2
802037f4:	ef89                	bnez	a5,8020380e <_rt_sem_take+0x34>
802037f6:	23500613          	li	a2,565
802037fa:	00005597          	auipc	a1,0x5
802037fe:	3fe58593          	addi	a1,a1,1022 # 80208bf8 <__FUNCTION__.34>
80203802:	00004517          	auipc	a0,0x4
80203806:	67e50513          	addi	a0,a0,1662 # 80207e80 <rt_system_timer_thread_init+0xec2>
8020380a:	720010ef          	jal	80204f2a <rt_assert_handler>
8020380e:	8522                	mv	a0,s0
80203810:	244020ef          	jal	80205a54 <rt_object_get_type>
80203814:	4789                	li	a5,2
80203816:	00f50e63          	beq	a0,a5,80203832 <_rt_sem_take+0x58>
8020381a:	23600613          	li	a2,566
8020381e:	00005597          	auipc	a1,0x5
80203822:	3da58593          	addi	a1,a1,986 # 80208bf8 <__FUNCTION__.34>
80203826:	00004517          	auipc	a0,0x4
8020382a:	66a50513          	addi	a0,a0,1642 # 80207e90 <rt_system_timer_thread_init+0xed2>
8020382e:	6fc010ef          	jal	80204f2a <rt_assert_handler>
80203832:	0000e797          	auipc	a5,0xe
80203836:	b7a7a783          	lw	a5,-1158(a5) # 802113ac <rt_object_trytake_hook>
8020383a:	c399                	beqz	a5,80203840 <_rt_sem_take+0x66>
8020383c:	8522                	mv	a0,s0
8020383e:	9782                	jalr	a5
80203840:	1cb020ef          	jal	8020620a <rt_critical_level>
80203844:	c51d                	beqz	a0,80203872 <_rt_sem_take+0x98>
80203846:	00005597          	auipc	a1,0x5
8020384a:	3b258593          	addi	a1,a1,946 # 80208bf8 <__FUNCTION__.34>
8020384e:	00004517          	auipc	a0,0x4
80203852:	33a50513          	addi	a0,a0,826 # 80207b88 <rt_system_timer_thread_init+0xbca>
80203856:	520010ef          	jal	80204d76 <rt_kprintf>
8020385a:	23b00613          	li	a2,571
8020385e:	00005597          	auipc	a1,0x5
80203862:	39a58593          	addi	a1,a1,922 # 80208bf8 <__FUNCTION__.34>
80203866:	00005517          	auipc	a0,0x5
8020386a:	caa50513          	addi	a0,a0,-854 # 80208510 <rt_system_timer_thread_init+0x1552>
8020386e:	6bc010ef          	jal	80204f2a <rt_assert_handler>
80203872:	585020ef          	jal	802065f6 <rt_thread_self>
80203876:	2501                	sext.w	a0,a0
80203878:	e51d                	bnez	a0,802038a6 <_rt_sem_take+0xcc>
8020387a:	00005597          	auipc	a1,0x5
8020387e:	37e58593          	addi	a1,a1,894 # 80208bf8 <__FUNCTION__.34>
80203882:	00004517          	auipc	a0,0x4
80203886:	33650513          	addi	a0,a0,822 # 80207bb8 <rt_system_timer_thread_init+0xbfa>
8020388a:	4ec010ef          	jal	80204d76 <rt_kprintf>
8020388e:	23b00613          	li	a2,571
80203892:	00005597          	auipc	a1,0x5
80203896:	36658593          	addi	a1,a1,870 # 80208bf8 <__FUNCTION__.34>
8020389a:	00005517          	auipc	a0,0x5
8020389e:	c7650513          	addi	a0,a0,-906 # 80208510 <rt_system_timer_thread_init+0x1552>
802038a2:	688010ef          	jal	80204f2a <rt_assert_handler>
802038a6:	2b3000ef          	jal	80204358 <rt_interrupt_get_nest>
802038aa:	c51d                	beqz	a0,802038d8 <_rt_sem_take+0xfe>
802038ac:	00005597          	auipc	a1,0x5
802038b0:	34c58593          	addi	a1,a1,844 # 80208bf8 <__FUNCTION__.34>
802038b4:	00004517          	auipc	a0,0x4
802038b8:	33c50513          	addi	a0,a0,828 # 80207bf0 <rt_system_timer_thread_init+0xc32>
802038bc:	4ba010ef          	jal	80204d76 <rt_kprintf>
802038c0:	23b00613          	li	a2,571
802038c4:	00005597          	auipc	a1,0x5
802038c8:	33458593          	addi	a1,a1,820 # 80208bf8 <__FUNCTION__.34>
802038cc:	00005517          	auipc	a0,0x5
802038d0:	c4450513          	addi	a0,a0,-956 # 80208510 <rt_system_timer_thread_init+0x1552>
802038d4:	656010ef          	jal	80204f2a <rt_assert_handler>
802038d8:	03040a1b          	addiw	s4,s0,48
802038dc:	8552                	mv	a0,s4
802038de:	d41ff0ef          	jal	8020361e <rt_spin_lock_irqsave>
802038e2:	02c45783          	lhu	a5,44(s0)
802038e6:	892a                	mv	s2,a0
802038e8:	cf99                	beqz	a5,80203906 <_rt_sem_take+0x12c>
802038ea:	37fd                	addiw	a5,a5,-1
802038ec:	85aa                	mv	a1,a0
802038ee:	02f41623          	sh	a5,44(s0)
802038f2:	8552                	mv	a0,s4
802038f4:	d45ff0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
802038f8:	0000e797          	auipc	a5,0xe
802038fc:	ab07a783          	lw	a5,-1360(a5) # 802113a8 <rt_object_take_hook>
80203900:	e7c1                	bnez	a5,80203988 <_rt_sem_take+0x1ae>
80203902:	4481                	li	s1,0
80203904:	a809                	j	80203916 <_rt_sem_take+0x13c>
80203906:	47b2                	lw	a5,12(sp)
80203908:	e38d                	bnez	a5,8020392a <_rt_sem_take+0x150>
8020390a:	85aa                	mv	a1,a0
8020390c:	8552                	mv	a0,s4
8020390e:	d2bff0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80203912:	f8c00493          	li	s1,-116
80203916:	70e2                	ld	ra,56(sp)
80203918:	7442                	ld	s0,48(sp)
8020391a:	7902                	ld	s2,32(sp)
8020391c:	69e2                	ld	s3,24(sp)
8020391e:	6a42                	ld	s4,16(sp)
80203920:	8526                	mv	a0,s1
80203922:	74a2                	ld	s1,40(sp)
80203924:	0401011b          	addiw	sp,sp,64
80203928:	8082                	ret
8020392a:	4cd020ef          	jal	802065f6 <rt_thread_self>
8020392e:	4791                	li	a5,4
80203930:	dd1c                	sw	a5,56(a0)
80203932:	01944603          	lbu	a2,25(s0)
80203936:	86a6                	mv	a3,s1
80203938:	0244059b          	addiw	a1,s0,36
8020393c:	89aa                	mv	s3,a0
8020393e:	5f3020ef          	jal	80206730 <rt_thread_suspend_to_list>
80203942:	84aa                	mv	s1,a0
80203944:	c511                	beqz	a0,80203950 <_rt_sem_take+0x176>
80203946:	85ca                	mv	a1,s2
80203948:	8552                	mv	a0,s4
8020394a:	cefff0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
8020394e:	b7e1                	j	80203916 <_rt_sem_take+0x13c>
80203950:	47b2                	lw	a5,12(sp)
80203952:	00f05d63          	blez	a5,8020396c <_rt_sem_take+0x192>
80203956:	0589849b          	addiw	s1,s3,88
8020395a:	00c1061b          	addiw	a2,sp,12
8020395e:	4581                	li	a1,0
80203960:	8526                	mv	a0,s1
80203962:	3c6030ef          	jal	80206d28 <rt_timer_control>
80203966:	8526                	mv	a0,s1
80203968:	246030ef          	jal	80206bae <rt_timer_start>
8020396c:	85ca                	mv	a1,s2
8020396e:	8552                	mv	a0,s4
80203970:	cc9ff0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80203974:	676020ef          	jal	80205fea <rt_schedule>
80203978:	0389a783          	lw	a5,56(s3)
8020397c:	dfb5                	beqz	a5,802038f8 <_rt_sem_take+0x11e>
8020397e:	41f7d49b          	sraiw	s1,a5,0x1f
80203982:	8fa5                	xor	a5,a5,s1
80203984:	9c9d                	subw	s1,s1,a5
80203986:	bf41                	j	80203916 <_rt_sem_take+0x13c>
80203988:	8522                	mv	a0,s0
8020398a:	9782                	jalr	a5
8020398c:	bf9d                	j	80203902 <_rt_sem_take+0x128>

8020398e <_thread_get_mutex_priority>:
8020398e:	3141                	addiw	sp,sp,-16
80203990:	e022                	sd	s0,0(sp)
80203992:	e406                	sd	ra,8(sp)
80203994:	842a                	mv	s0,a0
80203996:	262020ef          	jal	80205bf8 <rt_sched_thread_get_init_prio>
8020399a:	09842703          	lw	a4,152(s0)
8020399e:	0984041b          	addiw	s0,s0,152
802039a2:	0007079b          	sext.w	a5,a4
802039a6:	00879663          	bne	a5,s0,802039b2 <_thread_get_mutex_priority+0x24>
802039aa:	60a2                	ld	ra,8(sp)
802039ac:	6402                	ld	s0,0(sp)
802039ae:	2141                	addiw	sp,sp,16
802039b0:	8082                	ret
802039b2:	ff874603          	lbu	a2,-8(a4)
802039b6:	ff974683          	lbu	a3,-7(a4)
802039ba:	87b2                	mv	a5,a2
802039bc:	00c6f363          	bgeu	a3,a2,802039c2 <_thread_get_mutex_priority+0x34>
802039c0:	87b6                	mv	a5,a3
802039c2:	0ff7f693          	zext.b	a3,a5
802039c6:	00d57363          	bgeu	a0,a3,802039cc <_thread_get_mutex_priority+0x3e>
802039ca:	87aa                	mv	a5,a0
802039cc:	4318                	lw	a4,0(a4)
802039ce:	0ff7f513          	zext.b	a0,a5
802039d2:	bfc1                	j	802039a2 <_thread_get_mutex_priority+0x14>

802039d4 <_check_and_update_prio>:
802039d4:	3101                	addiw	sp,sp,-32
802039d6:	e426                	sd	s1,8(sp)
802039d8:	ec06                	sd	ra,24(sp)
802039da:	e822                	sd	s0,16(sp)
802039dc:	02c5c703          	lbu	a4,44(a1)
802039e0:	0ff00793          	li	a5,255
802039e4:	84aa                	mv	s1,a0
802039e6:	02f70063          	beq	a4,a5,80203a06 <_check_and_update_prio+0x32>
802039ea:	8526                	mv	a0,s1
802039ec:	fa3ff0ef          	jal	8020398e <_thread_get_mutex_priority>
802039f0:	85aa                	mv	a1,a0
802039f2:	8526                	mv	a0,s1
802039f4:	2b6020ef          	jal	80205caa <rt_sched_thread_change_priority>
802039f8:	4505                	li	a0,1
802039fa:	60e2                	ld	ra,24(sp)
802039fc:	6442                	ld	s0,16(sp)
802039fe:	64a2                	ld	s1,8(sp)
80203a00:	0201011b          	addiw	sp,sp,32
80203a04:	8082                	ret
80203a06:	842e                	mv	s0,a1
80203a08:	1ea020ef          	jal	80205bf2 <rt_sched_thread_get_curr_prio>
80203a0c:	02d44783          	lbu	a5,45(s0)
80203a10:	fca78de3          	beq	a5,a0,802039ea <_check_and_update_prio+0x16>
80203a14:	4501                	li	a0,0
80203a16:	b7d5                	j	802039fa <_check_and_update_prio+0x26>

80203a18 <rt_susp_list_dequeue>:
80203a18:	fc01011b          	addiw	sp,sp,-64
80203a1c:	f822                	sd	s0,48(sp)
80203a1e:	f426                	sd	s1,40(sp)
80203a20:	f04a                	sd	s2,32(sp)
80203a22:	fc06                	sd	ra,56(sp)
80203a24:	0005091b          	sext.w	s2,a0
80203a28:	ec4e                	sd	s3,24(sp)
80203a2a:	844a                	mv	s0,s2
80203a2c:	84ae                	mv	s1,a1
80203a2e:	00091e63          	bnez	s2,80203a4a <rt_susp_list_dequeue+0x32>
80203a32:	07000613          	li	a2,112
80203a36:	00005597          	auipc	a1,0x5
80203a3a:	1fa58593          	addi	a1,a1,506 # 80208c30 <__FUNCTION__.40>
80203a3e:	00004517          	auipc	a0,0x4
80203a42:	49a50513          	addi	a0,a0,1178 # 80207ed8 <rt_system_timer_thread_init+0xf1a>
80203a46:	4e4010ef          	jal	80204f2a <rt_assert_handler>
80203a4a:	00c1051b          	addiw	a0,sp,12
80203a4e:	35c020ef          	jal	80205daa <rt_sched_lock>
80203a52:	4000                	lw	s0,0(s0)
80203a54:	89a2                	mv	s3,s0
80203a56:	00891f63          	bne	s2,s0,80203a74 <rt_susp_list_dequeue+0x5c>
80203a5a:	4401                	li	s0,0
80203a5c:	4532                	lw	a0,12(sp)
80203a5e:	36e020ef          	jal	80205dcc <rt_sched_unlock>
80203a62:	70e2                	ld	ra,56(sp)
80203a64:	8522                	mv	a0,s0
80203a66:	7442                	ld	s0,48(sp)
80203a68:	74a2                	ld	s1,40(sp)
80203a6a:	7902                	ld	s2,32(sp)
80203a6c:	69e2                	ld	s3,24(sp)
80203a6e:	0401011b          	addiw	sp,sp,64
80203a72:	8082                	ret
80203a74:	fc44041b          	addiw	s0,s0,-60
80203a78:	8522                	mv	a0,s0
80203a7a:	1ae020ef          	jal	80205c28 <rt_sched_thread_ready>
80203a7e:	fd71                	bnez	a0,80203a5a <rt_susp_list_dequeue+0x42>
80203a80:	fc04cee3          	bltz	s1,80203a5c <rt_susp_list_dequeue+0x44>
80203a84:	fe99ae23          	sw	s1,-4(s3)
80203a88:	bfd1                	j	80203a5c <rt_susp_list_dequeue+0x44>

80203a8a <rt_susp_list_resume_all_irq>:
80203a8a:	fd01011b          	addiw	sp,sp,-48
80203a8e:	ec26                	sd	s1,24(sp)
80203a90:	e44e                	sd	s3,8(sp)
80203a92:	e052                	sd	s4,0(sp)
80203a94:	f406                	sd	ra,40(sp)
80203a96:	f022                	sd	s0,32(sp)
80203a98:	e84a                	sd	s2,16(sp)
80203a9a:	89aa                	mv	s3,a0
80203a9c:	8a2e                	mv	s4,a1
80203a9e:	84b2                	mv	s1,a2
80203aa0:	8526                	mv	a0,s1
80203aa2:	b7dff0ef          	jal	8020361e <rt_spin_lock_irqsave>
80203aa6:	892a                	mv	s2,a0
80203aa8:	85d2                	mv	a1,s4
80203aaa:	854e                	mv	a0,s3
80203aac:	f6dff0ef          	jal	80203a18 <rt_susp_list_dequeue>
80203ab0:	0005041b          	sext.w	s0,a0
80203ab4:	85ca                	mv	a1,s2
80203ab6:	8526                	mv	a0,s1
80203ab8:	b81ff0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80203abc:	f075                	bnez	s0,80203aa0 <rt_susp_list_resume_all_irq+0x16>
80203abe:	70a2                	ld	ra,40(sp)
80203ac0:	7402                	ld	s0,32(sp)
80203ac2:	64e2                	ld	s1,24(sp)
80203ac4:	6942                	ld	s2,16(sp)
80203ac6:	69a2                	ld	s3,8(sp)
80203ac8:	6a02                	ld	s4,0(sp)
80203aca:	4501                	li	a0,0
80203acc:	0301011b          	addiw	sp,sp,48
80203ad0:	8082                	ret

80203ad2 <rt_susp_list_enqueue>:
80203ad2:	fd01011b          	addiw	sp,sp,-48
80203ad6:	f022                	sd	s0,32(sp)
80203ad8:	ec26                	sd	s1,24(sp)
80203ada:	f406                	sd	ra,40(sp)
80203adc:	e84a                	sd	s2,16(sp)
80203ade:	e44e                	sd	s3,8(sp)
80203ae0:	e052                	sd	s4,0(sp)
80203ae2:	84aa                	mv	s1,a0
80203ae4:	842e                	mv	s0,a1
80203ae6:	ca0d                	beqz	a2,80203b18 <rt_susp_list_enqueue+0x46>
80203ae8:	4785                	li	a5,1
80203aea:	00f60f63          	beq	a2,a5,80203b08 <rt_susp_list_enqueue+0x36>
80203aee:	11800613          	li	a2,280
80203af2:	00005597          	auipc	a1,0x5
80203af6:	12658593          	addi	a1,a1,294 # 80208c18 <__FUNCTION__.39>
80203afa:	00005517          	auipc	a0,0x5
80203afe:	a1650513          	addi	a0,a0,-1514 # 80208510 <rt_system_timer_thread_init+0x1552>
80203b02:	428010ef          	jal	80204f2a <rt_assert_handler>
80203b06:	a0a9                	j	80203b50 <rt_susp_list_enqueue+0x7e>
80203b08:	00052903          	lw	s2,0(a0)
80203b0c:	00050a1b          	sext.w	s4,a0
80203b10:	0009079b          	sext.w	a5,s2
80203b14:	00fa1a63          	bne	s4,a5,80203b28 <rt_susp_list_enqueue+0x56>
80203b18:	40d8                	lw	a4,4(s1)
80203b1a:	03c4079b          	addiw	a5,s0,60
80203b1e:	c31c                	sw	a5,0(a4)
80203b20:	c038                	sw	a4,64(s0)
80203b22:	c0dc                	sw	a5,4(s1)
80203b24:	dc44                	sw	s1,60(s0)
80203b26:	a02d                	j	80203b50 <rt_susp_list_enqueue+0x7e>
80203b28:	8522                	mv	a0,s0
80203b2a:	0c8020ef          	jal	80205bf2 <rt_sched_thread_get_curr_prio>
80203b2e:	89aa                	mv	s3,a0
80203b30:	fc49051b          	addiw	a0,s2,-60
80203b34:	0be020ef          	jal	80205bf2 <rt_sched_thread_get_curr_prio>
80203b38:	02a9f663          	bgeu	s3,a0,80203b64 <rt_susp_list_enqueue+0x92>
80203b3c:	00492703          	lw	a4,4(s2)
80203b40:	03c4079b          	addiw	a5,s0,60
80203b44:	c31c                	sw	a5,0(a4)
80203b46:	c038                	sw	a4,64(s0)
80203b48:	00f92223          	sw	a5,4(s2)
80203b4c:	03242e23          	sw	s2,60(s0)
80203b50:	70a2                	ld	ra,40(sp)
80203b52:	7402                	ld	s0,32(sp)
80203b54:	64e2                	ld	s1,24(sp)
80203b56:	6942                	ld	s2,16(sp)
80203b58:	69a2                	ld	s3,8(sp)
80203b5a:	6a02                	ld	s4,0(sp)
80203b5c:	4501                	li	a0,0
80203b5e:	0301011b          	addiw	sp,sp,48
80203b62:	8082                	ret
80203b64:	00092903          	lw	s2,0(s2)
80203b68:	b765                	j	80203b10 <rt_susp_list_enqueue+0x3e>

80203b6a <_thread_update_priority.isra.0>:
80203b6a:	fc01011b          	addiw	sp,sp,-64
80203b6e:	f426                	sd	s1,40(sp)
80203b70:	ec4e                	sd	s3,24(sp)
80203b72:	fc06                	sd	ra,56(sp)
80203b74:	f822                	sd	s0,48(sp)
80203b76:	f04a                	sd	s2,32(sp)
80203b78:	84aa                	mv	s1,a0
80203b7a:	498d                	li	s3,3
80203b7c:	12e020ef          	jal	80205caa <rt_sched_thread_change_priority>
80203b80:	e509                	bnez	a0,80203b8a <_thread_update_priority.isra.0+0x20>
80203b82:	8526                	mv	a0,s1
80203b84:	07a020ef          	jal	80205bfe <rt_sched_thread_is_suspended>
80203b88:	e909                	bnez	a0,80203b9a <_thread_update_priority.isra.0+0x30>
80203b8a:	70e2                	ld	ra,56(sp)
80203b8c:	7442                	ld	s0,48(sp)
80203b8e:	74a2                	ld	s1,40(sp)
80203b90:	7902                	ld	s2,32(sp)
80203b92:	69e2                	ld	s3,24(sp)
80203b94:	0401011b          	addiw	sp,sp,64
80203b98:	8082                	ret
80203b9a:	0a04a403          	lw	s0,160(s1)
80203b9e:	8922                	mv	s2,s0
80203ba0:	d46d                	beqz	s0,80203b8a <_thread_update_priority.isra.0+0x20>
80203ba2:	8522                	mv	a0,s0
80203ba4:	6b1010ef          	jal	80205a54 <rt_object_get_type>
80203ba8:	ff3511e3          	bne	a0,s3,80203b8a <_thread_update_priority.isra.0+0x20>
80203bac:	03c4851b          	addiw	a0,s1,60
80203bb0:	c1dff0ef          	jal	802037cc <rt_list_remove>
80203bb4:	01994603          	lbu	a2,25(s2)
80203bb8:	0244041b          	addiw	s0,s0,36
80203bbc:	85a6                	mv	a1,s1
80203bbe:	8522                	mv	a0,s0
80203bc0:	f13ff0ef          	jal	80203ad2 <rt_susp_list_enqueue>
80203bc4:	f179                	bnez	a0,80203b8a <_thread_update_priority.isra.0+0x20>
80203bc6:	02492783          	lw	a5,36(s2)
80203bca:	0ff00513          	li	a0,255
80203bce:	00f40663          	beq	s0,a5,80203bda <_thread_update_priority.isra.0+0x70>
80203bd2:	fc47851b          	addiw	a0,a5,-60
80203bd6:	01c020ef          	jal	80205bf2 <rt_sched_thread_get_curr_prio>
80203bda:	02a906a3          	sb	a0,45(s2)
80203bde:	03092503          	lw	a0,48(s2)
80203be2:	dadff0ef          	jal	8020398e <_thread_get_mutex_priority>
80203be6:	e42a                	sd	a0,8(sp)
80203be8:	03092503          	lw	a0,48(s2)
80203bec:	006020ef          	jal	80205bf2 <rt_sched_thread_get_curr_prio>
80203bf0:	65a2                	ld	a1,8(sp)
80203bf2:	f8a58ce3          	beq	a1,a0,80203b8a <_thread_update_priority.isra.0+0x20>
80203bf6:	03092503          	lw	a0,48(s2)
80203bfa:	84aa                	mv	s1,a0
80203bfc:	0ae020ef          	jal	80205caa <rt_sched_thread_change_priority>
80203c00:	b741                	j	80203b80 <_thread_update_priority.isra.0+0x16>

80203c02 <_rt_mutex_take>:
80203c02:	fa01011b          	addiw	sp,sp,-96
80203c06:	e8a2                	sd	s0,80(sp)
80203c08:	e4a6                	sd	s1,72(sp)
80203c0a:	ec86                	sd	ra,88(sp)
80203c0c:	e0ca                	sd	s2,64(sp)
80203c0e:	fc4e                	sd	s3,56(sp)
80203c10:	f852                	sd	s4,48(sp)
80203c12:	f456                	sd	s5,40(sp)
80203c14:	f05a                	sd	s6,32(sp)
80203c16:	842a                	mv	s0,a0
80203c18:	84b2                	mv	s1,a2
80203c1a:	c62e                	sw	a1,12(sp)
80203c1c:	5ee020ef          	jal	8020620a <rt_critical_level>
80203c20:	c51d                	beqz	a0,80203c4e <_rt_mutex_take+0x4c>
80203c22:	00005597          	auipc	a1,0x5
80203c26:	fa658593          	addi	a1,a1,-90 # 80208bc8 <__FUNCTION__.24>
80203c2a:	00004517          	auipc	a0,0x4
80203c2e:	f5e50513          	addi	a0,a0,-162 # 80207b88 <rt_system_timer_thread_init+0xbca>
80203c32:	144010ef          	jal	80204d76 <rt_kprintf>
80203c36:	53300613          	li	a2,1331
80203c3a:	00005597          	auipc	a1,0x5
80203c3e:	f8e58593          	addi	a1,a1,-114 # 80208bc8 <__FUNCTION__.24>
80203c42:	00005517          	auipc	a0,0x5
80203c46:	8ce50513          	addi	a0,a0,-1842 # 80208510 <rt_system_timer_thread_init+0x1552>
80203c4a:	2e0010ef          	jal	80204f2a <rt_assert_handler>
80203c4e:	1a9020ef          	jal	802065f6 <rt_thread_self>
80203c52:	2501                	sext.w	a0,a0
80203c54:	e51d                	bnez	a0,80203c82 <_rt_mutex_take+0x80>
80203c56:	00005597          	auipc	a1,0x5
80203c5a:	f7258593          	addi	a1,a1,-142 # 80208bc8 <__FUNCTION__.24>
80203c5e:	00004517          	auipc	a0,0x4
80203c62:	f5a50513          	addi	a0,a0,-166 # 80207bb8 <rt_system_timer_thread_init+0xbfa>
80203c66:	110010ef          	jal	80204d76 <rt_kprintf>
80203c6a:	53300613          	li	a2,1331
80203c6e:	00005597          	auipc	a1,0x5
80203c72:	f5a58593          	addi	a1,a1,-166 # 80208bc8 <__FUNCTION__.24>
80203c76:	00005517          	auipc	a0,0x5
80203c7a:	89a50513          	addi	a0,a0,-1894 # 80208510 <rt_system_timer_thread_init+0x1552>
80203c7e:	2ac010ef          	jal	80204f2a <rt_assert_handler>
80203c82:	6d6000ef          	jal	80204358 <rt_interrupt_get_nest>
80203c86:	c51d                	beqz	a0,80203cb4 <_rt_mutex_take+0xb2>
80203c88:	00005597          	auipc	a1,0x5
80203c8c:	f4058593          	addi	a1,a1,-192 # 80208bc8 <__FUNCTION__.24>
80203c90:	00004517          	auipc	a0,0x4
80203c94:	f6050513          	addi	a0,a0,-160 # 80207bf0 <rt_system_timer_thread_init+0xc32>
80203c98:	0de010ef          	jal	80204d76 <rt_kprintf>
80203c9c:	53300613          	li	a2,1331
80203ca0:	00005597          	auipc	a1,0x5
80203ca4:	f2858593          	addi	a1,a1,-216 # 80208bc8 <__FUNCTION__.24>
80203ca8:	00005517          	auipc	a0,0x5
80203cac:	86850513          	addi	a0,a0,-1944 # 80208510 <rt_system_timer_thread_init+0x1552>
80203cb0:	27a010ef          	jal	80204f2a <rt_assert_handler>
80203cb4:	0004079b          	sext.w	a5,s0
80203cb8:	ef89                	bnez	a5,80203cd2 <_rt_mutex_take+0xd0>
80203cba:	53600613          	li	a2,1334
80203cbe:	00005597          	auipc	a1,0x5
80203cc2:	f0a58593          	addi	a1,a1,-246 # 80208bc8 <__FUNCTION__.24>
80203cc6:	00004517          	auipc	a0,0x4
80203cca:	22a50513          	addi	a0,a0,554 # 80207ef0 <rt_system_timer_thread_init+0xf32>
80203cce:	25c010ef          	jal	80204f2a <rt_assert_handler>
80203cd2:	8522                	mv	a0,s0
80203cd4:	581010ef          	jal	80205a54 <rt_object_get_type>
80203cd8:	478d                	li	a5,3
80203cda:	00f50e63          	beq	a0,a5,80203cf6 <_rt_mutex_take+0xf4>
80203cde:	53700613          	li	a2,1335
80203ce2:	00005597          	auipc	a1,0x5
80203ce6:	ee658593          	addi	a1,a1,-282 # 80208bc8 <__FUNCTION__.24>
80203cea:	00004517          	auipc	a0,0x4
80203cee:	21e50513          	addi	a0,a0,542 # 80207f08 <rt_system_timer_thread_init+0xf4a>
80203cf2:	238010ef          	jal	80204f2a <rt_assert_handler>
80203cf6:	101020ef          	jal	802065f6 <rt_thread_self>
80203cfa:	03c4099b          	addiw	s3,s0,60
80203cfe:	892a                	mv	s2,a0
80203d00:	854e                	mv	a0,s3
80203d02:	913ff0ef          	jal	80203614 <rt_spin_lock>
80203d06:	0000d797          	auipc	a5,0xd
80203d0a:	6a67a783          	lw	a5,1702(a5) # 802113ac <rt_object_trytake_hook>
80203d0e:	c399                	beqz	a5,80203d14 <_rt_mutex_take+0x112>
80203d10:	8522                	mv	a0,s0
80203d12:	9782                	jalr	a5
80203d14:	581c                	lw	a5,48(s0)
80203d16:	02092c23          	sw	zero,56(s2)
80203d1a:	00090b1b          	sext.w	s6,s2
80203d1e:	05679663          	bne	a5,s6,80203d6a <_rt_mutex_take+0x168>
80203d22:	02e44783          	lbu	a5,46(s0)
80203d26:	0ff00713          	li	a4,255
80203d2a:	02e78063          	beq	a5,a4,80203d4a <_rt_mutex_take+0x148>
80203d2e:	2785                	addiw	a5,a5,1
80203d30:	02f40723          	sb	a5,46(s0)
80203d34:	854e                	mv	a0,s3
80203d36:	8e3ff0ef          	jal	80203618 <rt_spin_unlock>
80203d3a:	0000d797          	auipc	a5,0xd
80203d3e:	66e7a783          	lw	a5,1646(a5) # 802113a8 <rt_object_take_hook>
80203d42:	1c079363          	bnez	a5,80203f08 <_rt_mutex_take+0x306>
80203d46:	4481                	li	s1,0
80203d48:	a029                	j	80203d52 <_rt_mutex_take+0x150>
80203d4a:	854e                	mv	a0,s3
80203d4c:	8cdff0ef          	jal	80203618 <rt_spin_unlock>
80203d50:	5491                	li	s1,-28
80203d52:	60e6                	ld	ra,88(sp)
80203d54:	6446                	ld	s0,80(sp)
80203d56:	6906                	ld	s2,64(sp)
80203d58:	79e2                	ld	s3,56(sp)
80203d5a:	7a42                	ld	s4,48(sp)
80203d5c:	7aa2                	ld	s5,40(sp)
80203d5e:	7b02                	ld	s6,32(sp)
80203d60:	8526                	mv	a0,s1
80203d62:	64a6                	ld	s1,72(sp)
80203d64:	0601011b          	addiw	sp,sp,96
80203d68:	8082                	ret
80203d6a:	e7b1                	bnez	a5,80203db6 <_rt_mutex_take+0x1b4>
80203d6c:	57fd                	li	a5,-1
80203d6e:	02c44483          	lbu	s1,44(s0)
80203d72:	02f406a3          	sb	a5,45(s0)
80203d76:	4785                	li	a5,1
80203d78:	02f40723          	sb	a5,46(s0)
80203d7c:	03242823          	sw	s2,48(s0)
80203d80:	0ff00793          	li	a5,255
80203d84:	00f48c63          	beq	s1,a5,80203d9c <_rt_mutex_take+0x19a>
80203d88:	854a                	mv	a0,s2
80203d8a:	669010ef          	jal	80205bf2 <rt_sched_thread_get_curr_prio>
80203d8e:	00a4f763          	bgeu	s1,a0,80203d9c <_rt_mutex_take+0x19a>
80203d92:	02c44583          	lbu	a1,44(s0)
80203d96:	5808                	lw	a0,48(s0)
80203d98:	dd3ff0ef          	jal	80203b6a <_thread_update_priority.isra.0>
80203d9c:	09892703          	lw	a4,152(s2)
80203da0:	0344079b          	addiw	a5,s0,52
80203da4:	0989091b          	addiw	s2,s2,152
80203da8:	c35c                	sw	a5,4(a4)
80203daa:	d858                	sw	a4,52(s0)
80203dac:	00f92023          	sw	a5,0(s2)
80203db0:	03242c23          	sw	s2,56(s0)
80203db4:	b741                	j	80203d34 <_rt_mutex_take+0x132>
80203db6:	47b2                	lw	a5,12(sp)
80203db8:	eb99                	bnez	a5,80203dce <_rt_mutex_take+0x1cc>
80203dba:	07400793          	li	a5,116
80203dbe:	02f92c23          	sw	a5,56(s2)
80203dc2:	854e                	mv	a0,s3
80203dc4:	855ff0ef          	jal	80203618 <rt_spin_unlock>
80203dc8:	f8c00493          	li	s1,-116
80203dcc:	b759                	j	80203d52 <_rt_mutex_take+0x150>
80203dce:	01944603          	lbu	a2,25(s0)
80203dd2:	02440a9b          	addiw	s5,s0,36
80203dd6:	86a6                	mv	a3,s1
80203dd8:	85d6                	mv	a1,s5
80203dda:	854a                	mv	a0,s2
80203ddc:	155020ef          	jal	80206730 <rt_thread_suspend_to_list>
80203de0:	84aa                	mv	s1,a0
80203de2:	c509                	beqz	a0,80203dec <_rt_mutex_take+0x1ea>
80203de4:	854e                	mv	a0,s3
80203de6:	833ff0ef          	jal	80203618 <rt_spin_unlock>
80203dea:	b7a5                	j	80203d52 <_rt_mutex_take+0x150>
80203dec:	0a892023          	sw	s0,160(s2)
80203df0:	01c1051b          	addiw	a0,sp,28
80203df4:	7b7010ef          	jal	80205daa <rt_sched_lock>
80203df8:	854a                	mv	a0,s2
80203dfa:	5f9010ef          	jal	80205bf2 <rt_sched_thread_get_curr_prio>
80203dfe:	02d44783          	lbu	a5,45(s0)
80203e02:	00f57e63          	bgeu	a0,a5,80203e1e <_rt_mutex_take+0x21c>
80203e06:	02a406a3          	sb	a0,45(s0)
80203e0a:	e02a                	sd	a0,0(sp)
80203e0c:	5808                	lw	a0,48(s0)
80203e0e:	5e5010ef          	jal	80205bf2 <rt_sched_thread_get_curr_prio>
80203e12:	6582                	ld	a1,0(sp)
80203e14:	00a5f563          	bgeu	a1,a0,80203e1e <_rt_mutex_take+0x21c>
80203e18:	5808                	lw	a0,48(s0)
80203e1a:	d51ff0ef          	jal	80203b6a <_thread_update_priority.isra.0>
80203e1e:	4572                	lw	a0,28(sp)
80203e20:	7ad010ef          	jal	80205dcc <rt_sched_unlock>
80203e24:	47b2                	lw	a5,12(sp)
80203e26:	00f05d63          	blez	a5,80203e40 <_rt_mutex_take+0x23e>
80203e2a:	05890a1b          	addiw	s4,s2,88
80203e2e:	00c1061b          	addiw	a2,sp,12
80203e32:	4581                	li	a1,0
80203e34:	8552                	mv	a0,s4
80203e36:	6f3020ef          	jal	80206d28 <rt_timer_control>
80203e3a:	8552                	mv	a0,s4
80203e3c:	573020ef          	jal	80206bae <rt_timer_start>
80203e40:	854e                	mv	a0,s3
80203e42:	fd6ff0ef          	jal	80203618 <rt_spin_unlock>
80203e46:	1a4020ef          	jal	80205fea <rt_schedule>
80203e4a:	854e                	mv	a0,s3
80203e4c:	fc8ff0ef          	jal	80203614 <rt_spin_lock>
80203e50:	03892703          	lw	a4,56(s2)
80203e54:	581c                	lw	a5,48(s0)
80203e56:	e305                	bnez	a4,80203e76 <_rt_mutex_take+0x274>
80203e58:	ed678ee3          	beq	a5,s6,80203d34 <_rt_mutex_take+0x132>
80203e5c:	5b100613          	li	a2,1457
80203e60:	00005597          	auipc	a1,0x5
80203e64:	d6858593          	addi	a1,a1,-664 # 80208bc8 <__FUNCTION__.24>
80203e68:	00004517          	auipc	a0,0x4
80203e6c:	0e850513          	addi	a0,a0,232 # 80207f50 <rt_system_timer_thread_init+0xf92>
80203e70:	0ba010ef          	jal	80204f2a <rt_assert_handler>
80203e74:	b5c1                	j	80203d34 <_rt_mutex_take+0x132>
80203e76:	01679e63          	bne	a5,s6,80203e92 <_rt_mutex_take+0x290>
80203e7a:	5b800613          	li	a2,1464
80203e7e:	00005597          	auipc	a1,0x5
80203e82:	d4a58593          	addi	a1,a1,-694 # 80208bc8 <__FUNCTION__.24>
80203e86:	00004517          	auipc	a0,0x4
80203e8a:	0e250513          	addi	a0,a0,226 # 80207f68 <rt_system_timer_thread_init+0xfaa>
80203e8e:	09c010ef          	jal	80204f2a <rt_assert_handler>
80203e92:	01c1051b          	addiw	a0,sp,28
80203e96:	03892a03          	lw	s4,56(s2)
80203e9a:	711010ef          	jal	80205daa <rt_sched_lock>
80203e9e:	5808                	lw	a0,48(s0)
80203ea0:	cd01                	beqz	a0,80203eb8 <_rt_mutex_take+0x2b6>
80203ea2:	551010ef          	jal	80205bf2 <rt_sched_thread_get_curr_prio>
80203ea6:	84aa                	mv	s1,a0
80203ea8:	854a                	mv	a0,s2
80203eaa:	549010ef          	jal	80205bf2 <rt_sched_thread_get_curr_prio>
80203eae:	2481                	sext.w	s1,s1
80203eb0:	2501                	sext.w	a0,a0
80203eb2:	8c89                	sub	s1,s1,a0
80203eb4:	0014b493          	seqz	s1,s1
80203eb8:	505c                	lw	a5,36(s0)
80203eba:	0ff00513          	li	a0,255
80203ebe:	00fa8663          	beq	s5,a5,80203eca <_rt_mutex_take+0x2c8>
80203ec2:	fc47851b          	addiw	a0,a5,-60
80203ec6:	52d010ef          	jal	80205bf2 <rt_sched_thread_get_curr_prio>
80203eca:	02a406a3          	sb	a0,45(s0)
80203ece:	cc91                	beqz	s1,80203eea <_rt_mutex_take+0x2e8>
80203ed0:	5808                	lw	a0,48(s0)
80203ed2:	abdff0ef          	jal	8020398e <_thread_get_mutex_priority>
80203ed6:	e02a                	sd	a0,0(sp)
80203ed8:	5808                	lw	a0,48(s0)
80203eda:	519010ef          	jal	80205bf2 <rt_sched_thread_get_curr_prio>
80203ede:	6582                	ld	a1,0(sp)
80203ee0:	00b50563          	beq	a0,a1,80203eea <_rt_mutex_take+0x2e8>
80203ee4:	5808                	lw	a0,48(s0)
80203ee6:	c85ff0ef          	jal	80203b6a <_thread_update_priority.isra.0>
80203eea:	4572                	lw	a0,28(sp)
80203eec:	41fa549b          	sraiw	s1,s4,0x1f
80203ef0:	009a4a33          	xor	s4,s4,s1
80203ef4:	6d9010ef          	jal	80205dcc <rt_sched_unlock>
80203ef8:	854e                	mv	a0,s3
80203efa:	f1eff0ef          	jal	80203618 <rt_spin_unlock>
80203efe:	414484bb          	subw	s1,s1,s4
80203f02:	0a092023          	sw	zero,160(s2)
80203f06:	b5b1                	j	80203d52 <_rt_mutex_take+0x150>
80203f08:	8522                	mv	a0,s0
80203f0a:	9782                	jalr	a5
80203f0c:	bd2d                	j	80203d46 <_rt_mutex_take+0x144>

80203f0e <rt_sem_init>:
80203f0e:	fd01011b          	addiw	sp,sp,-48
80203f12:	f022                	sd	s0,32(sp)
80203f14:	ec26                	sd	s1,24(sp)
80203f16:	e84a                	sd	s2,16(sp)
80203f18:	e44e                	sd	s3,8(sp)
80203f1a:	0005079b          	sext.w	a5,a0
80203f1e:	f406                	sd	ra,40(sp)
80203f20:	843e                	mv	s0,a5
80203f22:	89ae                	mv	s3,a1
80203f24:	8932                	mv	s2,a2
80203f26:	84b6                	mv	s1,a3
80203f28:	ef89                	bnez	a5,80203f42 <rt_sem_init+0x34>
80203f2a:	17d00613          	li	a2,381
80203f2e:	00005597          	auipc	a1,0x5
80203f32:	cda58593          	addi	a1,a1,-806 # 80208c08 <__FUNCTION__.38>
80203f36:	00004517          	auipc	a0,0x4
80203f3a:	f4a50513          	addi	a0,a0,-182 # 80207e80 <rt_system_timer_thread_init+0xec2>
80203f3e:	7ed000ef          	jal	80204f2a <rt_assert_handler>
80203f42:	67c1                	lui	a5,0x10
80203f44:	00f96e63          	bltu	s2,a5,80203f60 <rt_sem_init+0x52>
80203f48:	17e00613          	li	a2,382
80203f4c:	00005597          	auipc	a1,0x5
80203f50:	cbc58593          	addi	a1,a1,-836 # 80208c08 <__FUNCTION__.38>
80203f54:	00004517          	auipc	a0,0x4
80203f58:	02c50513          	addi	a0,a0,44 # 80207f80 <rt_system_timer_thread_init+0xfc2>
80203f5c:	7cf000ef          	jal	80204f2a <rt_assert_handler>
80203f60:	4785                	li	a5,1
80203f62:	0097fe63          	bgeu	a5,s1,80203f7e <rt_sem_init+0x70>
80203f66:	17f00613          	li	a2,383
80203f6a:	00005597          	auipc	a1,0x5
80203f6e:	c9e58593          	addi	a1,a1,-866 # 80208c08 <__FUNCTION__.38>
80203f72:	00004517          	auipc	a0,0x4
80203f76:	02650513          	addi	a0,a0,38 # 80207f98 <rt_system_timer_thread_init+0xfda>
80203f7a:	7b1000ef          	jal	80204f2a <rt_assert_handler>
80203f7e:	864e                	mv	a2,s3
80203f80:	8522                	mv	a0,s0
80203f82:	4589                	li	a1,2
80203f84:	78c010ef          	jal	80205710 <rt_object_init>
80203f88:	0244079b          	addiw	a5,s0,36
80203f8c:	d41c                	sw	a5,40(s0)
80203f8e:	d05c                	sw	a5,36(s0)
80203f90:	57fd                	li	a5,-1
80203f92:	03241623          	sh	s2,44(s0)
80203f96:	00940ca3          	sb	s1,25(s0)
80203f9a:	0304051b          	addiw	a0,s0,48
80203f9e:	02f41723          	sh	a5,46(s0)
80203fa2:	e70ff0ef          	jal	80203612 <rt_spin_lock_init>
80203fa6:	70a2                	ld	ra,40(sp)
80203fa8:	7402                	ld	s0,32(sp)
80203faa:	64e2                	ld	s1,24(sp)
80203fac:	6942                	ld	s2,16(sp)
80203fae:	69a2                	ld	s3,8(sp)
80203fb0:	4501                	li	a0,0
80203fb2:	0301011b          	addiw	sp,sp,48
80203fb6:	8082                	ret

80203fb8 <rt_sem_take>:
80203fb8:	4609                	li	a2,2
80203fba:	821ff06f          	j	802037da <_rt_sem_take>

80203fbe <rt_sem_release>:
80203fbe:	3101                	addiw	sp,sp,-32
80203fc0:	e822                	sd	s0,16(sp)
80203fc2:	0005079b          	sext.w	a5,a0
80203fc6:	ec06                	sd	ra,24(sp)
80203fc8:	e426                	sd	s1,8(sp)
80203fca:	e04a                	sd	s2,0(sp)
80203fcc:	843e                	mv	s0,a5
80203fce:	ef89                	bnez	a5,80203fe8 <rt_sem_release+0x2a>
80203fd0:	2bd00613          	li	a2,701
80203fd4:	00005597          	auipc	a1,0x5
80203fd8:	c1458593          	addi	a1,a1,-1004 # 80208be8 <__FUNCTION__.33>
80203fdc:	00004517          	auipc	a0,0x4
80203fe0:	ea450513          	addi	a0,a0,-348 # 80207e80 <rt_system_timer_thread_init+0xec2>
80203fe4:	747000ef          	jal	80204f2a <rt_assert_handler>
80203fe8:	8522                	mv	a0,s0
80203fea:	26b010ef          	jal	80205a54 <rt_object_get_type>
80203fee:	4789                	li	a5,2
80203ff0:	00f50e63          	beq	a0,a5,8020400c <rt_sem_release+0x4e>
80203ff4:	2be00613          	li	a2,702
80203ff8:	00005597          	auipc	a1,0x5
80203ffc:	bf058593          	addi	a1,a1,-1040 # 80208be8 <__FUNCTION__.33>
80204000:	00004517          	auipc	a0,0x4
80204004:	e9050513          	addi	a0,a0,-368 # 80207e90 <rt_system_timer_thread_init+0xed2>
80204008:	723000ef          	jal	80204f2a <rt_assert_handler>
8020400c:	0000d797          	auipc	a5,0xd
80204010:	3987a783          	lw	a5,920(a5) # 802113a4 <rt_object_put_hook>
80204014:	c399                	beqz	a5,8020401a <rt_sem_release+0x5c>
80204016:	8522                	mv	a0,s0
80204018:	9782                	jalr	a5
8020401a:	0304091b          	addiw	s2,s0,48
8020401e:	854a                	mv	a0,s2
80204020:	dfeff0ef          	jal	8020361e <rt_spin_lock_irqsave>
80204024:	505c                	lw	a5,36(s0)
80204026:	0244071b          	addiw	a4,s0,36
8020402a:	84aa                	mv	s1,a0
8020402c:	853a                	mv	a0,a4
8020402e:	00f70d63          	beq	a4,a5,80204048 <rt_sem_release+0x8a>
80204032:	4581                	li	a1,0
80204034:	9e5ff0ef          	jal	80203a18 <rt_susp_list_dequeue>
80204038:	4405                	li	s0,1
8020403a:	85a6                	mv	a1,s1
8020403c:	854a                	mv	a0,s2
8020403e:	dfaff0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80204042:	e815                	bnez	s0,80204076 <rt_sem_release+0xb8>
80204044:	4501                	li	a0,0
80204046:	a00d                	j	80204068 <rt_sem_release+0xaa>
80204048:	02c45783          	lhu	a5,44(s0)
8020404c:	02e45703          	lhu	a4,46(s0)
80204050:	00e7f763          	bgeu	a5,a4,8020405e <rt_sem_release+0xa0>
80204054:	2785                	addiw	a5,a5,1
80204056:	02f41623          	sh	a5,44(s0)
8020405a:	4401                	li	s0,0
8020405c:	bff9                	j	8020403a <rt_sem_release+0x7c>
8020405e:	854a                	mv	a0,s2
80204060:	85a6                	mv	a1,s1
80204062:	dd6ff0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80204066:	5511                	li	a0,-28
80204068:	60e2                	ld	ra,24(sp)
8020406a:	6442                	ld	s0,16(sp)
8020406c:	64a2                	ld	s1,8(sp)
8020406e:	6902                	ld	s2,0(sp)
80204070:	0201011b          	addiw	sp,sp,32
80204074:	8082                	ret
80204076:	775010ef          	jal	80205fea <rt_schedule>
8020407a:	b7e9                	j	80204044 <rt_sem_release+0x86>

8020407c <rt_mutex_init>:
8020407c:	3101                	addiw	sp,sp,-32
8020407e:	e822                	sd	s0,16(sp)
80204080:	e426                	sd	s1,8(sp)
80204082:	0005079b          	sext.w	a5,a0
80204086:	ec06                	sd	ra,24(sp)
80204088:	843e                	mv	s0,a5
8020408a:	84ae                	mv	s1,a1
8020408c:	ef89                	bnez	a5,802040a6 <rt_mutex_init+0x2a>
8020408e:	3f300613          	li	a2,1011
80204092:	00005597          	auipc	a1,0x5
80204096:	b4658593          	addi	a1,a1,-1210 # 80208bd8 <__FUNCTION__.31>
8020409a:	00004517          	auipc	a0,0x4
8020409e:	e5650513          	addi	a0,a0,-426 # 80207ef0 <rt_system_timer_thread_init+0xf32>
802040a2:	689000ef          	jal	80204f2a <rt_assert_handler>
802040a6:	8626                	mv	a2,s1
802040a8:	8522                	mv	a0,s0
802040aa:	458d                	li	a1,3
802040ac:	664010ef          	jal	80205710 <rt_object_init>
802040b0:	0244079b          	addiw	a5,s0,36
802040b4:	d41c                	sw	a5,40(s0)
802040b6:	d05c                	sw	a5,36(s0)
802040b8:	57fd                	li	a5,-1
802040ba:	02f41623          	sh	a5,44(s0)
802040be:	0344079b          	addiw	a5,s0,52
802040c2:	dc1c                	sw	a5,56(s0)
802040c4:	d85c                	sw	a5,52(s0)
802040c6:	4785                	li	a5,1
802040c8:	03c4051b          	addiw	a0,s0,60
802040cc:	02042823          	sw	zero,48(s0)
802040d0:	02040723          	sb	zero,46(s0)
802040d4:	00f40ca3          	sb	a5,25(s0)
802040d8:	d3aff0ef          	jal	80203612 <rt_spin_lock_init>
802040dc:	60e2                	ld	ra,24(sp)
802040de:	6442                	ld	s0,16(sp)
802040e0:	64a2                	ld	s1,8(sp)
802040e2:	4501                	li	a0,0
802040e4:	0201011b          	addiw	sp,sp,32
802040e8:	8082                	ret

802040ea <rt_mutex_take>:
802040ea:	4609                	li	a2,2
802040ec:	b17ff06f          	j	80203c02 <_rt_mutex_take>

802040f0 <rt_mutex_release>:
802040f0:	f901011b          	addiw	sp,sp,-112
802040f4:	f0a2                	sd	s0,96(sp)
802040f6:	0005079b          	sext.w	a5,a0
802040fa:	f486                	sd	ra,104(sp)
802040fc:	eca6                	sd	s1,88(sp)
802040fe:	e8ca                	sd	s2,80(sp)
80204100:	e4ce                	sd	s3,72(sp)
80204102:	e0d2                	sd	s4,64(sp)
80204104:	fc56                	sd	s5,56(sp)
80204106:	f85a                	sd	s6,48(sp)
80204108:	f45e                	sd	s7,40(sp)
8020410a:	f062                	sd	s8,32(sp)
8020410c:	ec66                	sd	s9,24(sp)
8020410e:	843e                	mv	s0,a5
80204110:	ef89                	bnez	a5,8020412a <rt_mutex_release+0x3a>
80204112:	63400613          	li	a2,1588
80204116:	00005597          	auipc	a1,0x5
8020411a:	a9a58593          	addi	a1,a1,-1382 # 80208bb0 <__FUNCTION__.23>
8020411e:	00004517          	auipc	a0,0x4
80204122:	dd250513          	addi	a0,a0,-558 # 80207ef0 <rt_system_timer_thread_init+0xf32>
80204126:	605000ef          	jal	80204f2a <rt_assert_handler>
8020412a:	8522                	mv	a0,s0
8020412c:	129010ef          	jal	80205a54 <rt_object_get_type>
80204130:	478d                	li	a5,3
80204132:	00f50e63          	beq	a0,a5,8020414e <rt_mutex_release+0x5e>
80204136:	63500613          	li	a2,1589
8020413a:	00005597          	auipc	a1,0x5
8020413e:	a7658593          	addi	a1,a1,-1418 # 80208bb0 <__FUNCTION__.23>
80204142:	00004517          	auipc	a0,0x4
80204146:	dc650513          	addi	a0,a0,-570 # 80207f08 <rt_system_timer_thread_init+0xf4a>
8020414a:	5e1000ef          	jal	80204f2a <rt_assert_handler>
8020414e:	4a8020ef          	jal	802065f6 <rt_thread_self>
80204152:	2501                	sext.w	a0,a0
80204154:	e51d                	bnez	a0,80204182 <rt_mutex_release+0x92>
80204156:	00005597          	auipc	a1,0x5
8020415a:	a5a58593          	addi	a1,a1,-1446 # 80208bb0 <__FUNCTION__.23>
8020415e:	00004517          	auipc	a0,0x4
80204162:	a5a50513          	addi	a0,a0,-1446 # 80207bb8 <rt_system_timer_thread_init+0xbfa>
80204166:	411000ef          	jal	80204d76 <rt_kprintf>
8020416a:	63a00613          	li	a2,1594
8020416e:	00005597          	auipc	a1,0x5
80204172:	a4258593          	addi	a1,a1,-1470 # 80208bb0 <__FUNCTION__.23>
80204176:	00004517          	auipc	a0,0x4
8020417a:	39a50513          	addi	a0,a0,922 # 80208510 <rt_system_timer_thread_init+0x1552>
8020417e:	5ad000ef          	jal	80204f2a <rt_assert_handler>
80204182:	1d6000ef          	jal	80204358 <rt_interrupt_get_nest>
80204186:	c51d                	beqz	a0,802041b4 <rt_mutex_release+0xc4>
80204188:	00005597          	auipc	a1,0x5
8020418c:	a2858593          	addi	a1,a1,-1496 # 80208bb0 <__FUNCTION__.23>
80204190:	00004517          	auipc	a0,0x4
80204194:	a6050513          	addi	a0,a0,-1440 # 80207bf0 <rt_system_timer_thread_init+0xc32>
80204198:	3df000ef          	jal	80204d76 <rt_kprintf>
8020419c:	63a00613          	li	a2,1594
802041a0:	00005597          	auipc	a1,0x5
802041a4:	a1058593          	addi	a1,a1,-1520 # 80208bb0 <__FUNCTION__.23>
802041a8:	00004517          	auipc	a0,0x4
802041ac:	36850513          	addi	a0,a0,872 # 80208510 <rt_system_timer_thread_init+0x1552>
802041b0:	57b000ef          	jal	80204f2a <rt_assert_handler>
802041b4:	442020ef          	jal	802065f6 <rt_thread_self>
802041b8:	03c4099b          	addiw	s3,s0,60
802041bc:	892a                	mv	s2,a0
802041be:	854e                	mv	a0,s3
802041c0:	c54ff0ef          	jal	80203614 <rt_spin_lock>
802041c4:	0000d797          	auipc	a5,0xd
802041c8:	1e07a783          	lw	a5,480(a5) # 802113a4 <rt_object_put_hook>
802041cc:	c399                	beqz	a5,802041d2 <rt_mutex_release+0xe2>
802041ce:	8522                	mv	a0,s0
802041d0:	9782                	jalr	a5
802041d2:	5818                	lw	a4,48(s0)
802041d4:	0009079b          	sext.w	a5,s2
802041d8:	02f70963          	beq	a4,a5,8020420a <rt_mutex_release+0x11a>
802041dc:	f0100793          	li	a5,-255
802041e0:	854e                	mv	a0,s3
802041e2:	02f92c23          	sw	a5,56(s2)
802041e6:	c32ff0ef          	jal	80203618 <rt_spin_unlock>
802041ea:	f0100513          	li	a0,-255
802041ee:	70a6                	ld	ra,104(sp)
802041f0:	7406                	ld	s0,96(sp)
802041f2:	64e6                	ld	s1,88(sp)
802041f4:	6946                	ld	s2,80(sp)
802041f6:	69a6                	ld	s3,72(sp)
802041f8:	6a06                	ld	s4,64(sp)
802041fa:	7ae2                	ld	s5,56(sp)
802041fc:	7b42                	ld	s6,48(sp)
802041fe:	7ba2                	ld	s7,40(sp)
80204200:	7c02                	ld	s8,32(sp)
80204202:	6ce2                	ld	s9,24(sp)
80204204:	0701011b          	addiw	sp,sp,112
80204208:	8082                	ret
8020420a:	02e44783          	lbu	a5,46(s0)
8020420e:	4481                	li	s1,0
80204210:	37fd                	addiw	a5,a5,-1
80204212:	0ff7f793          	zext.b	a5,a5
80204216:	02f40723          	sb	a5,46(s0)
8020421a:	e7c1                	bnez	a5,802042a2 <rt_mutex_release+0x1b2>
8020421c:	03440b1b          	addiw	s6,s0,52
80204220:	855a                	mv	a0,s6
80204222:	daaff0ef          	jal	802037cc <rt_list_remove>
80204226:	00c1051b          	addiw	a0,sp,12
8020422a:	381010ef          	jal	80205daa <rt_sched_lock>
8020422e:	85a2                	mv	a1,s0
80204230:	854a                	mv	a0,s2
80204232:	fa2ff0ef          	jal	802039d4 <_check_and_update_prio>
80204236:	505c                	lw	a5,36(s0)
80204238:	02440a1b          	addiw	s4,s0,36
8020423c:	84aa                	mv	s1,a0
8020423e:	06fa0a63          	beq	s4,a5,802042b2 <rt_mutex_release+0x1c2>
80204242:	00005c17          	auipc	s8,0x5
80204246:	96ec0c13          	addi	s8,s8,-1682 # 80208bb0 <__FUNCTION__.23>
8020424a:	00004c97          	auipc	s9,0x4
8020424e:	d8ec8c93          	addi	s9,s9,-626 # 80207fd8 <rt_system_timer_thread_init+0x101a>
80204252:	02442903          	lw	s2,36(s0)
80204256:	fc490b9b          	addiw	s7,s2,-60
8020425a:	855e                	mv	a0,s7
8020425c:	8aca                	mv	s5,s2
8020425e:	1a1010ef          	jal	80205bfe <rt_sched_thread_is_suspended>
80204262:	e519                	bnez	a0,80204270 <rt_mutex_release+0x180>
80204264:	66500613          	li	a2,1637
80204268:	85e2                	mv	a1,s8
8020426a:	8566                	mv	a0,s9
8020426c:	4bf000ef          	jal	80204f2a <rt_assert_handler>
80204270:	854a                	mv	a0,s2
80204272:	d5aff0ef          	jal	802037cc <rt_list_remove>
80204276:	855e                	mv	a0,s7
80204278:	1b1010ef          	jal	80205c28 <rt_sched_thread_ready>
8020427c:	c539                	beqz	a0,802042ca <rt_mutex_release+0x1da>
8020427e:	505c                	lw	a5,36(s0)
80204280:	fcfa19e3          	bne	s4,a5,80204252 <rt_mutex_release+0x162>
80204284:	02042823          	sw	zero,48(s0)
80204288:	0ff00513          	li	a0,255
8020428c:	a031                	j	80204298 <rt_mutex_release+0x1a8>
8020428e:	fc45051b          	addiw	a0,a0,-60
80204292:	161010ef          	jal	80205bf2 <rt_sched_thread_get_curr_prio>
80204296:	4485                	li	s1,1
80204298:	02a406a3          	sb	a0,45(s0)
8020429c:	4532                	lw	a0,12(sp)
8020429e:	32f010ef          	jal	80205dcc <rt_sched_unlock>
802042a2:	854e                	mv	a0,s3
802042a4:	b74ff0ef          	jal	80203618 <rt_spin_unlock>
802042a8:	4785                	li	a5,1
802042aa:	00f48d63          	beq	s1,a5,802042c4 <rt_mutex_release+0x1d4>
802042ae:	4501                	li	a0,0
802042b0:	bf3d                	j	802041ee <rt_mutex_release+0xfe>
802042b2:	4532                	lw	a0,12(sp)
802042b4:	319010ef          	jal	80205dcc <rt_sched_unlock>
802042b8:	57fd                	li	a5,-1
802042ba:	02042823          	sw	zero,48(s0)
802042be:	02f406a3          	sb	a5,45(s0)
802042c2:	b7c5                	j	802042a2 <rt_mutex_release+0x1b2>
802042c4:	527010ef          	jal	80205fea <rt_schedule>
802042c8:	b7dd                	j	802042ae <rt_mutex_release+0x1be>
802042ca:	4785                	li	a5,1
802042cc:	02f40723          	sb	a5,46(s0)
802042d0:	05caa783          	lw	a5,92(s5)
802042d4:	03742823          	sw	s7,48(s0)
802042d8:	05c9091b          	addiw	s2,s2,92
802042dc:	0167a223          	sw	s6,4(a5)
802042e0:	d85c                	sw	a5,52(s0)
802042e2:	056aae23          	sw	s6,92(s5)
802042e6:	5048                	lw	a0,36(s0)
802042e8:	03242c23          	sw	s2,56(s0)
802042ec:	060aa223          	sw	zero,100(s5)
802042f0:	f8aa1fe3          	bne	s4,a0,8020428e <rt_mutex_release+0x19e>
802042f4:	0ff00513          	li	a0,255
802042f8:	bf79                	j	80204296 <rt_mutex_release+0x1a6>

802042fa <rt_interrupt_enter>:
802042fa:	3141                	addiw	sp,sp,-16
802042fc:	e406                	sd	ra,8(sp)
802042fe:	8fafc0ef          	jal	802003f8 <rt_hw_interrupt_disable>
80204302:	0000d797          	auipc	a5,0xd
80204306:	07e78793          	addi	a5,a5,126 # 80211380 <rt_interrupt_nest>
8020430a:	4398                	lw	a4,0(a5)
8020430c:	4398                	lw	a4,0(a5)
8020430e:	2705                	addiw	a4,a4,1
80204310:	c398                	sw	a4,0(a5)
80204312:	8e0fc0ef          	jal	802003f2 <rt_hw_interrupt_enable>
80204316:	0000d797          	auipc	a5,0xd
8020431a:	0727a783          	lw	a5,114(a5) # 80211388 <rt_interrupt_enter_hook>
8020431e:	c781                	beqz	a5,80204326 <rt_interrupt_enter+0x2c>
80204320:	60a2                	ld	ra,8(sp)
80204322:	2141                	addiw	sp,sp,16
80204324:	8782                	jr	a5
80204326:	60a2                	ld	ra,8(sp)
80204328:	2141                	addiw	sp,sp,16
8020432a:	8082                	ret

8020432c <rt_interrupt_leave>:
8020432c:	3141                	addiw	sp,sp,-16
8020432e:	e406                	sd	ra,8(sp)
80204330:	0000d797          	auipc	a5,0xd
80204334:	0547a783          	lw	a5,84(a5) # 80211384 <rt_interrupt_leave_hook>
80204338:	c391                	beqz	a5,8020433c <rt_interrupt_leave+0x10>
8020433a:	9782                	jalr	a5
8020433c:	8bcfc0ef          	jal	802003f8 <rt_hw_interrupt_disable>
80204340:	0000d797          	auipc	a5,0xd
80204344:	04078793          	addi	a5,a5,64 # 80211380 <rt_interrupt_nest>
80204348:	4398                	lw	a4,0(a5)
8020434a:	4398                	lw	a4,0(a5)
8020434c:	60a2                	ld	ra,8(sp)
8020434e:	377d                	addiw	a4,a4,-1
80204350:	c398                	sw	a4,0(a5)
80204352:	2141                	addiw	sp,sp,16
80204354:	89efc06f          	j	802003f2 <rt_hw_interrupt_enable>

80204358 <rt_interrupt_get_nest>:
80204358:	3101                	addiw	sp,sp,-32
8020435a:	ec06                	sd	ra,24(sp)
8020435c:	e822                	sd	s0,16(sp)
8020435e:	e426                	sd	s1,8(sp)
80204360:	898fc0ef          	jal	802003f8 <rt_hw_interrupt_disable>
80204364:	842a                	mv	s0,a0
80204366:	892fc0ef          	jal	802003f8 <rt_hw_interrupt_disable>
8020436a:	0000d497          	auipc	s1,0xd
8020436e:	0164a483          	lw	s1,22(s1) # 80211380 <rt_interrupt_nest>
80204372:	880fc0ef          	jal	802003f2 <rt_hw_interrupt_enable>
80204376:	8522                	mv	a0,s0
80204378:	87afc0ef          	jal	802003f2 <rt_hw_interrupt_enable>
8020437c:	60e2                	ld	ra,24(sp)
8020437e:	6442                	ld	s0,16(sp)
80204380:	0ff4f513          	zext.b	a0,s1
80204384:	64a2                	ld	s1,8(sp)
80204386:	0201011b          	addiw	sp,sp,32
8020438a:	8082                	ret

8020438c <print_number>:
8020438c:	fd01011b          	addiw	sp,sp,-48
80204390:	f422                	sd	s0,40(sp)
80204392:	f026                	sd	s1,32(sp)
80204394:	e002                	sd	zero,0(sp)
80204396:	e402                	sd	zero,8(sp)
80204398:	e802                	sd	zero,16(sp)
8020439a:	ec02                	sd	zero,24(sp)
8020439c:	0408f313          	andi	t1,a7,64
802043a0:	00005417          	auipc	s0,0x5
802043a4:	94840413          	addi	s0,s0,-1720 # 80208ce8 <large_digits.1>
802043a8:	00031663          	bnez	t1,802043b4 <print_number+0x28>
802043ac:	00005417          	auipc	s0,0x5
802043b0:	92440413          	addi	s0,s0,-1756 # 80208cd0 <small_digits.0>
802043b4:	0108ff13          	andi	t5,a7,16
802043b8:	080f0363          	beqz	t5,8020443e <print_number+0xb2>
802043bc:	ffe8f893          	andi	a7,a7,-2
802043c0:	02000e93          	li	t4,32
802043c4:	0028f313          	andi	t1,a7,2
802043c8:	4e01                	li	t3,0
802043ca:	02030063          	beqz	t1,802043ea <print_number+0x5e>
802043ce:	06800313          	li	t1,104
802043d2:	06671f63          	bne	a4,t1,80204450 <print_number+0xc4>
802043d6:	03061713          	slli	a4,a2,0x30
802043da:	08075063          	bgez	a4,8020445a <print_number+0xce>
802043de:	40c0063b          	negw	a2,a2
802043e2:	1642                	slli	a2,a2,0x30
802043e4:	9241                	srli	a2,a2,0x30
802043e6:	02d00e13          	li	t3,45
802043ea:	0208f393          	andi	t2,a7,32
802043ee:	00038963          	beqz	t2,80204400 <print_number+0x74>
802043f2:	6741                	lui	a4,0x10
802043f4:	0711                	addi	a4,a4,4 # 10004 <__text_size+0x6e5c>
802043f6:	00d75733          	srl	a4,a4,a3
802043fa:	8b05                	andi	a4,a4,1
802043fc:	cb2d                	beqz	a4,8020446e <print_number+0xe2>
802043fe:	37f9                	addiw	a5,a5,-2
80204400:	ee25                	bnez	a2,80204478 <print_number+0xec>
80204402:	03000713          	li	a4,48
80204406:	00e10023          	sb	a4,0(sp)
8020440a:	4305                	li	t1,1
8020440c:	871a                	mv	a4,t1
8020440e:	01035363          	bge	t1,a6,80204414 <print_number+0x88>
80204412:	8742                	mv	a4,a6
80204414:	0118ff93          	andi	t6,a7,17
80204418:	0007061b          	sext.w	a2,a4
8020441c:	40e7873b          	subw	a4,a5,a4
80204420:	0a0f9663          	bnez	t6,802044cc <print_number+0x140>
80204424:	000e0563          	beqz	t3,8020442e <print_number+0xa2>
80204428:	00e05363          	blez	a4,8020442e <print_number+0xa2>
8020442c:	377d                	addiw	a4,a4,-1
8020442e:	87aa                	mv	a5,a0
80204430:	00e502bb          	addw	t0,a0,a4
80204434:	0005841b          	sext.w	s0,a1
80204438:	02000493          	li	s1,32
8020443c:	a8ad                	j	802044b6 <print_number+0x12a>
8020443e:	0018f313          	andi	t1,a7,1
80204442:	02000e93          	li	t4,32
80204446:	f6030fe3          	beqz	t1,802043c4 <print_number+0x38>
8020444a:	03000e93          	li	t4,48
8020444e:	bf9d                	j	802043c4 <print_number+0x38>
80204450:	00065563          	bgez	a2,8020445a <print_number+0xce>
80204454:	40c0063b          	negw	a2,a2
80204458:	b779                	j	802043e6 <print_number+0x5a>
8020445a:	0048f713          	andi	a4,a7,4
8020445e:	02b00e13          	li	t3,43
80204462:	f741                	bnez	a4,802043ea <print_number+0x5e>
80204464:	00289e13          	slli	t3,a7,0x2
80204468:	020e7e13          	andi	t3,t3,32
8020446c:	bfbd                	j	802043ea <print_number+0x5e>
8020446e:	4721                	li	a4,8
80204470:	f8e698e3          	bne	a3,a4,80204400 <print_number+0x74>
80204474:	37fd                	addiw	a5,a5,-1
80204476:	b769                	j	80204400 <print_number+0x74>
80204478:	0201071b          	addiw	a4,sp,32
8020447c:	fe070f9b          	addiw	t6,a4,-32
80204480:	4301                	li	t1,0
80204482:	0006871b          	sext.w	a4,a3
80204486:	02e672bb          	remuw	t0,a2,a4
8020448a:	0006049b          	sext.w	s1,a2
8020448e:	2305                	addiw	t1,t1,1
80204490:	005402bb          	addw	t0,s0,t0
80204494:	0002c283          	lbu	t0,0(t0) # 4000 <__STACKSIZE__>
80204498:	02e6563b          	divuw	a2,a2,a4
8020449c:	005f8023          	sb	t0,0(t6)
802044a0:	2f85                	addiw	t6,t6,1
802044a2:	fee4f2e3          	bgeu	s1,a4,80204486 <print_number+0xfa>
802044a6:	b79d                	j	8020440c <print_number+0x80>
802044a8:	00078f9b          	sext.w	t6,a5
802044ac:	008ff463          	bgeu	t6,s0,802044b4 <print_number+0x128>
802044b0:	00978023          	sb	s1,0(a5)
802044b4:	2785                	addiw	a5,a5,1
802044b6:	40f28fbb          	subw	t6,t0,a5
802044ba:	fff047e3          	bgtz	t6,802044a8 <print_number+0x11c>
802044be:	87ba                	mv	a5,a4
802044c0:	00075363          	bgez	a4,802044c6 <print_number+0x13a>
802044c4:	4781                	li	a5,0
802044c6:	377d                	addiw	a4,a4,-1
802044c8:	9d3d                	addw	a0,a0,a5
802044ca:	9f1d                	subw	a4,a4,a5
802044cc:	000e0c63          	beqz	t3,802044e4 <print_number+0x158>
802044d0:	0005079b          	sext.w	a5,a0
802044d4:	00058f9b          	sext.w	t6,a1
802044d8:	01f7f463          	bgeu	a5,t6,802044e0 <print_number+0x154>
802044dc:	01c50023          	sb	t3,0(a0)
802044e0:	377d                	addiw	a4,a4,-1
802044e2:	2505                	addiw	a0,a0,1
802044e4:	04038763          	beqz	t2,80204532 <print_number+0x1a6>
802044e8:	4789                	li	a5,2
802044ea:	02f69663          	bne	a3,a5,80204516 <print_number+0x18a>
802044ee:	0005079b          	sext.w	a5,a0
802044f2:	0005869b          	sext.w	a3,a1
802044f6:	00d7f663          	bgeu	a5,a3,80204502 <print_number+0x176>
802044fa:	03000793          	li	a5,48
802044fe:	00f50023          	sb	a5,0(a0)
80204502:	0015079b          	addiw	a5,a0,1
80204506:	00d7f663          	bgeu	a5,a3,80204512 <print_number+0x186>
8020450a:	06200793          	li	a5,98
8020450e:	00f500a3          	sb	a5,1(a0)
80204512:	2509                	addiw	a0,a0,2
80204514:	a839                	j	80204532 <print_number+0x1a6>
80204516:	47a1                	li	a5,8
80204518:	02f69863          	bne	a3,a5,80204548 <print_number+0x1bc>
8020451c:	0005079b          	sext.w	a5,a0
80204520:	0005869b          	sext.w	a3,a1
80204524:	00d7f663          	bgeu	a5,a3,80204530 <print_number+0x1a4>
80204528:	03000793          	li	a5,48
8020452c:	00f50023          	sb	a5,0(a0)
80204530:	2505                	addiw	a0,a0,1
80204532:	060f0863          	beqz	t5,802045a2 <print_number+0x216>
80204536:	0006069b          	sext.w	a3,a2
8020453a:	87aa                	mv	a5,a0
8020453c:	9e29                	addw	a2,a2,a0
8020453e:	00058e1b          	sext.w	t3,a1
80204542:	03000e93          	li	t4,48
80204546:	a89d                	j	802045bc <print_number+0x230>
80204548:	47c1                	li	a5,16
8020454a:	fef694e3          	bne	a3,a5,80204532 <print_number+0x1a6>
8020454e:	0005079b          	sext.w	a5,a0
80204552:	0005869b          	sext.w	a3,a1
80204556:	00d7f663          	bgeu	a5,a3,80204562 <print_number+0x1d6>
8020455a:	03000793          	li	a5,48
8020455e:	00f50023          	sb	a5,0(a0)
80204562:	0015079b          	addiw	a5,a0,1
80204566:	fad7f6e3          	bgeu	a5,a3,80204512 <print_number+0x186>
8020456a:	0408f893          	andi	a7,a7,64
8020456e:	07800793          	li	a5,120
80204572:	f8088ee3          	beqz	a7,8020450e <print_number+0x182>
80204576:	05800793          	li	a5,88
8020457a:	bf51                	j	8020450e <print_number+0x182>
8020457c:	0007869b          	sext.w	a3,a5
80204580:	01c6f463          	bgeu	a3,t3,80204588 <print_number+0x1fc>
80204584:	01d78023          	sb	t4,0(a5)
80204588:	2785                	addiw	a5,a5,1
8020458a:	40f886bb          	subw	a3,a7,a5
8020458e:	fed047e3          	bgtz	a3,8020457c <print_number+0x1f0>
80204592:	87ba                	mv	a5,a4
80204594:	00075363          	bgez	a4,8020459a <print_number+0x20e>
80204598:	4781                	li	a5,0
8020459a:	377d                	addiw	a4,a4,-1
8020459c:	9d3d                	addw	a0,a0,a5
8020459e:	9f1d                	subw	a4,a4,a5
802045a0:	bf59                	j	80204536 <print_number+0x1aa>
802045a2:	87aa                	mv	a5,a0
802045a4:	00e508bb          	addw	a7,a0,a4
802045a8:	00058e1b          	sext.w	t3,a1
802045ac:	bff9                	j	8020458a <print_number+0x1fe>
802045ae:	0007889b          	sext.w	a7,a5
802045b2:	01c8f463          	bgeu	a7,t3,802045ba <print_number+0x22e>
802045b6:	01d78023          	sb	t4,0(a5)
802045ba:	2785                	addiw	a5,a5,1
802045bc:	40f608bb          	subw	a7,a2,a5
802045c0:	ff1347e3          	blt	t1,a7,802045ae <print_number+0x222>
802045c4:	406687bb          	subw	a5,a3,t1
802045c8:	9d3d                	addw	a0,a0,a5
802045ca:	56fd                	li	a3,-1
802045cc:	0005861b          	sext.w	a2,a1
802045d0:	337d                	addiw	t1,t1,-1
802045d2:	879a                	mv	a5,t1
802045d4:	02d31663          	bne	t1,a3,80204600 <print_number+0x274>
802045d8:	87aa                	mv	a5,a0
802045da:	00e5063b          	addw	a2,a0,a4
802045de:	2581                	sext.w	a1,a1
802045e0:	02000813          	li	a6,32
802045e4:	40f606bb          	subw	a3,a2,a5
802045e8:	02d04a63          	bgtz	a3,8020461c <print_number+0x290>
802045ec:	87ba                	mv	a5,a4
802045ee:	00075363          	bgez	a4,802045f4 <print_number+0x268>
802045f2:	4781                	li	a5,0
802045f4:	7422                	ld	s0,40(sp)
802045f6:	7482                	ld	s1,32(sp)
802045f8:	9d3d                	addw	a0,a0,a5
802045fa:	0301011b          	addiw	sp,sp,48
802045fe:	8082                	ret
80204600:	fc080ce3          	beqz	a6,802045d8 <print_number+0x24c>
80204604:	0005089b          	sext.w	a7,a0
80204608:	00c8f863          	bgeu	a7,a2,80204618 <print_number+0x28c>
8020460c:	00f107bb          	addw	a5,sp,a5
80204610:	0007c783          	lbu	a5,0(a5)
80204614:	00f50023          	sb	a5,0(a0)
80204618:	2505                	addiw	a0,a0,1
8020461a:	bf5d                	j	802045d0 <print_number+0x244>
8020461c:	0007869b          	sext.w	a3,a5
80204620:	00b6f463          	bgeu	a3,a1,80204628 <print_number+0x29c>
80204624:	01078023          	sb	a6,0(a5)
80204628:	2785                	addiw	a5,a5,1
8020462a:	bf6d                	j	802045e4 <print_number+0x258>

8020462c <rt_vsnprintf>:
8020462c:	fa01011b          	addiw	sp,sp,-96
80204630:	0005071b          	sext.w	a4,a0
80204634:	f852                	sd	s4,48(sp)
80204636:	f456                	sd	s5,40(sp)
80204638:	ec86                	sd	ra,88(sp)
8020463a:	e8a2                	sd	s0,80(sp)
8020463c:	e4a6                	sd	s1,72(sp)
8020463e:	e0ca                	sd	s2,64(sp)
80204640:	fc4e                	sd	s3,56(sp)
80204642:	f05a                	sd	s6,32(sp)
80204644:	ec5e                	sd	s7,24(sp)
80204646:	e862                	sd	s8,16(sp)
80204648:	e466                	sd	s9,8(sp)
8020464a:	00b707bb          	addw	a5,a4,a1
8020464e:	8aba                	mv	s5,a4
80204650:	8a32                	mv	s4,a2
80204652:	8336                	mv	t1,a3
80204654:	44e7f363          	bgeu	a5,a4,80204a9a <rt_vsnprintf+0x46e>
80204658:	fff74b13          	not	s6,a4
8020465c:	2b01                	sext.w	s6,s6
8020465e:	5c7d                	li	s8,-1
80204660:	00040bb7          	lui	s7,0x40
80204664:	8556                	mv	a0,s5
80204666:	02d00913          	li	s2,45
8020466a:	03000993          	li	s3,48
8020466e:	02000413          	li	s0,32
80204672:	00004497          	auipc	s1,0x4
80204676:	5d648493          	addi	s1,s1,1494 # 80208c48 <__FUNCTION__.40+0x18>
8020467a:	0bc5                	addi	s7,s7,17 # 40011 <__text_size+0x36e69>
8020467c:	ac95                	j	802048f0 <rt_vsnprintf+0x2c4>
8020467e:	02500713          	li	a4,37
80204682:	00e78d63          	beq	a5,a4,8020469c <rt_vsnprintf+0x70>
80204686:	0005071b          	sext.w	a4,a0
8020468a:	000c069b          	sext.w	a3,s8
8020468e:	00d77463          	bgeu	a4,a3,80204696 <rt_vsnprintf+0x6a>
80204692:	00f50023          	sb	a5,0(a0)
80204696:	0015079b          	addiw	a5,a0,1
8020469a:	ac89                	j	802048ec <rt_vsnprintf+0x2c0>
8020469c:	4881                	li	a7,0
8020469e:	02b00793          	li	a5,43
802046a2:	02300613          	li	a2,35
802046a6:	a891                	j	802046fa <rt_vsnprintf+0xce>
802046a8:	05270663          	beq	a4,s2,802046f4 <rt_vsnprintf+0xc8>
802046ac:	09370d63          	beq	a4,s3,80204746 <rt_vsnprintf+0x11a>
802046b0:	fd07061b          	addiw	a2,a4,-48
802046b4:	45a5                	li	a1,9
802046b6:	4781                	li	a5,0
802046b8:	04c5ed63          	bltu	a1,a2,80204712 <rt_vsnprintf+0xe6>
802046bc:	4625                	li	a2,9
802046be:	4829                	li	a6,10
802046c0:	0006c703          	lbu	a4,0(a3) # 4000 <__STACKSIZE__>
802046c4:	fd07059b          	addiw	a1,a4,-48
802046c8:	08b67263          	bgeu	a2,a1,8020474c <rt_vsnprintf+0x120>
802046cc:	0006c603          	lbu	a2,0(a3)
802046d0:	02e00713          	li	a4,46
802046d4:	587d                	li	a6,-1
802046d6:	0ae61463          	bne	a2,a4,8020477e <rt_vsnprintf+0x152>
802046da:	0016c703          	lbu	a4,1(a3)
802046de:	45a5                	li	a1,9
802046e0:	0016861b          	addiw	a2,a3,1
802046e4:	fd07081b          	addiw	a6,a4,-48
802046e8:	1305e263          	bltu	a1,a6,8020480c <rt_vsnprintf+0x1e0>
802046ec:	4701                	li	a4,0
802046ee:	45a5                	li	a1,9
802046f0:	4e29                	li	t3,10
802046f2:	a895                	j	80204766 <rt_vsnprintf+0x13a>
802046f4:	0108e893          	ori	a7,a7,16
802046f8:	8a36                	mv	s4,a3
802046fa:	001a4703          	lbu	a4,1(s4)
802046fe:	001a069b          	addiw	a3,s4,1
80204702:	02f70963          	beq	a4,a5,80204734 <rt_vsnprintf+0x108>
80204706:	fae7e1e3          	bltu	a5,a4,802046a8 <rt_vsnprintf+0x7c>
8020470a:	02870863          	beq	a4,s0,8020473a <rt_vsnprintf+0x10e>
8020470e:	02c70963          	beq	a4,a2,80204740 <rt_vsnprintf+0x114>
80204712:	02a00613          	li	a2,42
80204716:	57fd                	li	a5,-1
80204718:	fac71ae3          	bne	a4,a2,802046cc <rt_vsnprintf+0xa0>
8020471c:	00032783          	lw	a5,0(t1)
80204720:	002a069b          	addiw	a3,s4,2
80204724:	2321                	addiw	t1,t1,8
80204726:	fa07d3e3          	bgez	a5,802046cc <rt_vsnprintf+0xa0>
8020472a:	40f007bb          	negw	a5,a5
8020472e:	0108e893          	ori	a7,a7,16
80204732:	bf69                	j	802046cc <rt_vsnprintf+0xa0>
80204734:	0048e893          	ori	a7,a7,4
80204738:	b7c1                	j	802046f8 <rt_vsnprintf+0xcc>
8020473a:	0088e893          	ori	a7,a7,8
8020473e:	bf6d                	j	802046f8 <rt_vsnprintf+0xcc>
80204740:	0208e893          	ori	a7,a7,32
80204744:	bf55                	j	802046f8 <rt_vsnprintf+0xcc>
80204746:	0018e893          	ori	a7,a7,1
8020474a:	b77d                	j	802046f8 <rt_vsnprintf+0xcc>
8020474c:	02f807bb          	mulw	a5,a6,a5
80204750:	2685                	addiw	a3,a3,1
80204752:	9fb9                	addw	a5,a5,a4
80204754:	fd07879b          	addiw	a5,a5,-48
80204758:	b7a5                	j	802046c0 <rt_vsnprintf+0x94>
8020475a:	02ee073b          	mulw	a4,t3,a4
8020475e:	2605                	addiw	a2,a2,1
80204760:	9f35                	addw	a4,a4,a3
80204762:	fd07071b          	addiw	a4,a4,-48
80204766:	00064683          	lbu	a3,0(a2)
8020476a:	fd06881b          	addiw	a6,a3,-48
8020476e:	ff05f6e3          	bgeu	a1,a6,8020475a <rt_vsnprintf+0x12e>
80204772:	0007081b          	sext.w	a6,a4
80204776:	00075363          	bgez	a4,8020477c <rt_vsnprintf+0x150>
8020477a:	4801                	li	a6,0
8020477c:	86b2                	mv	a3,a2
8020477e:	0006c703          	lbu	a4,0(a3)
80204782:	45c9                	li	a1,18
80204784:	f987061b          	addiw	a2,a4,-104
80204788:	0ff67613          	zext.b	a2,a2
8020478c:	08c5ed63          	bltu	a1,a2,80204826 <rt_vsnprintf+0x1fa>
80204790:	00cbd633          	srl	a2,s7,a2
80204794:	8a05                	andi	a2,a2,1
80204796:	ca41                	beqz	a2,80204826 <rt_vsnprintf+0x1fa>
80204798:	06800613          	li	a2,104
8020479c:	00168a1b          	addiw	s4,a3,1
802047a0:	00c71a63          	bne	a4,a2,802047b4 <rt_vsnprintf+0x188>
802047a4:	0016c603          	lbu	a2,1(a3)
802047a8:	00e61663          	bne	a2,a4,802047b4 <rt_vsnprintf+0x188>
802047ac:	00268a1b          	addiw	s4,a3,2
802047b0:	04800713          	li	a4,72
802047b4:	000a4683          	lbu	a3,0(s4)
802047b8:	07800613          	li	a2,120
802047bc:	02d66163          	bltu	a2,a3,802047de <rt_vsnprintf+0x1b2>
802047c0:	05700613          	li	a2,87
802047c4:	06d66463          	bltu	a2,a3,8020482c <rt_vsnprintf+0x200>
802047c8:	02500793          	li	a5,37
802047cc:	26f68f63          	beq	a3,a5,80204a4a <rt_vsnprintf+0x41e>
802047d0:	fbb6869b          	addiw	a3,a3,-69
802047d4:	0ff6f693          	zext.b	a3,a3
802047d8:	4789                	li	a5,2
802047da:	28d7fb63          	bgeu	a5,a3,80204a70 <rt_vsnprintf+0x444>
802047de:	0005079b          	sext.w	a5,a0
802047e2:	000c069b          	sext.w	a3,s8
802047e6:	00d7f663          	bgeu	a5,a3,802047f2 <rt_vsnprintf+0x1c6>
802047ea:	02500793          	li	a5,37
802047ee:	00f50023          	sb	a5,0(a0)
802047f2:	000a4703          	lbu	a4,0(s4)
802047f6:	0015079b          	addiw	a5,a0,1
802047fa:	26070d63          	beqz	a4,80204a74 <rt_vsnprintf+0x448>
802047fe:	00d7f463          	bgeu	a5,a3,80204806 <rt_vsnprintf+0x1da>
80204802:	00e500a3          	sb	a4,1(a0)
80204806:	0025079b          	addiw	a5,a0,2
8020480a:	a0cd                	j	802048ec <rt_vsnprintf+0x2c0>
8020480c:	02a00593          	li	a1,42
80204810:	00b71863          	bne	a4,a1,80204820 <rt_vsnprintf+0x1f4>
80204814:	00032703          	lw	a4,0(t1)
80204818:	0026861b          	addiw	a2,a3,2
8020481c:	2321                	addiw	t1,t1,8
8020481e:	bf91                	j	80204772 <rt_vsnprintf+0x146>
80204820:	86b2                	mv	a3,a2
80204822:	4801                	li	a6,0
80204824:	bfa9                	j	8020477e <rt_vsnprintf+0x152>
80204826:	8a36                	mv	s4,a3
80204828:	4701                	li	a4,0
8020482a:	b769                	j	802047b4 <rt_vsnprintf+0x188>
8020482c:	fa86869b          	addiw	a3,a3,-88
80204830:	0ff6f613          	zext.b	a2,a3
80204834:	fac465e3          	bltu	s0,a2,802047de <rt_vsnprintf+0x1b2>
80204838:	0ff6f693          	zext.b	a3,a3
8020483c:	0026969b          	slliw	a3,a3,0x2
80204840:	9ea5                	addw	a3,a3,s1
80204842:	4294                	lw	a3,0(a3)
80204844:	9ea5                	addw	a3,a3,s1
80204846:	8682                	jr	a3
80204848:	4689                	li	a3,2
8020484a:	06c00613          	li	a2,108
8020484e:	00830c9b          	addiw	s9,t1,8
80204852:	1ec70963          	beq	a4,a2,80204a44 <rt_vsnprintf+0x418>
80204856:	04800613          	li	a2,72
8020485a:	20c71f63          	bne	a4,a2,80204a78 <rt_vsnprintf+0x44c>
8020485e:	00030603          	lb	a2,0(t1)
80204862:	85e2                	mv	a1,s8
80204864:	b29ff0ef          	jal	8020438c <print_number>
80204868:	87aa                	mv	a5,a0
8020486a:	8366                	mv	t1,s9
8020486c:	a041                	j	802048ec <rt_vsnprintf+0x2c0>
8020486e:	0108f893          	andi	a7,a7,16
80204872:	000c061b          	sext.w	a2,s8
80204876:	02089f63          	bnez	a7,802048b4 <rt_vsnprintf+0x288>
8020487a:	86be                	mv	a3,a5
8020487c:	872a                	mv	a4,a0
8020487e:	02000593          	li	a1,32
80204882:	a801                	j	80204892 <rt_vsnprintf+0x266>
80204884:	0007081b          	sext.w	a6,a4
80204888:	00c87463          	bgeu	a6,a2,80204890 <rt_vsnprintf+0x264>
8020488c:	00b70023          	sb	a1,0(a4)
80204890:	2705                	addiw	a4,a4,1
80204892:	36fd                	addiw	a3,a3,-1
80204894:	fed048e3          	bgtz	a3,80204884 <rt_vsnprintf+0x258>
80204898:	fff7871b          	addiw	a4,a5,-1
8020489c:	4681                	li	a3,0
8020489e:	00f05363          	blez	a5,802048a4 <rt_vsnprintf+0x278>
802048a2:	86ba                	mv	a3,a4
802048a4:	9d35                	addw	a0,a0,a3
802048a6:	86be                	mv	a3,a5
802048a8:	00f04363          	bgtz	a5,802048ae <rt_vsnprintf+0x282>
802048ac:	4685                	li	a3,1
802048ae:	9f15                	subw	a4,a4,a3
802048b0:	0017079b          	addiw	a5,a4,1
802048b4:	0005071b          	sext.w	a4,a0
802048b8:	0083059b          	addiw	a1,t1,8
802048bc:	00c77663          	bgeu	a4,a2,802048c8 <rt_vsnprintf+0x29c>
802048c0:	00032703          	lw	a4,0(t1)
802048c4:	00e50023          	sb	a4,0(a0)
802048c8:	0015071b          	addiw	a4,a0,1
802048cc:	86ba                	mv	a3,a4
802048ce:	9d3d                	addw	a0,a0,a5
802048d0:	02000893          	li	a7,32
802048d4:	40d5083b          	subw	a6,a0,a3
802048d8:	05004a63          	bgtz	a6,8020492c <rt_vsnprintf+0x300>
802048dc:	4681                	li	a3,0
802048de:	00f05463          	blez	a5,802048e6 <rt_vsnprintf+0x2ba>
802048e2:	fff7869b          	addiw	a3,a5,-1
802048e6:	00d707bb          	addw	a5,a4,a3
802048ea:	832e                	mv	t1,a1
802048ec:	2a05                	addiw	s4,s4,1
802048ee:	853e                	mv	a0,a5
802048f0:	000a4783          	lbu	a5,0(s4)
802048f4:	d80795e3          	bnez	a5,8020467e <rt_vsnprintf+0x52>
802048f8:	000b0a63          	beqz	s6,8020490c <rt_vsnprintf+0x2e0>
802048fc:	0005079b          	sext.w	a5,a0
80204900:	000c071b          	sext.w	a4,s8
80204904:	18e7fe63          	bgeu	a5,a4,80204aa0 <rt_vsnprintf+0x474>
80204908:	00050023          	sb	zero,0(a0)
8020490c:	60e6                	ld	ra,88(sp)
8020490e:	6446                	ld	s0,80(sp)
80204910:	64a6                	ld	s1,72(sp)
80204912:	6906                	ld	s2,64(sp)
80204914:	79e2                	ld	s3,56(sp)
80204916:	7a42                	ld	s4,48(sp)
80204918:	7b02                	ld	s6,32(sp)
8020491a:	6be2                	ld	s7,24(sp)
8020491c:	6c42                	ld	s8,16(sp)
8020491e:	6ca2                	ld	s9,8(sp)
80204920:	4155053b          	subw	a0,a0,s5
80204924:	7aa2                	ld	s5,40(sp)
80204926:	0601011b          	addiw	sp,sp,96
8020492a:	8082                	ret
8020492c:	0006881b          	sext.w	a6,a3
80204930:	00c87463          	bgeu	a6,a2,80204938 <rt_vsnprintf+0x30c>
80204934:	01168023          	sb	a7,0(a3)
80204938:	2685                	addiw	a3,a3,1
8020493a:	bf69                	j	802048d4 <rt_vsnprintf+0x2a8>
8020493c:	00032703          	lw	a4,0(t1)
80204940:	00830e1b          	addiw	t3,t1,8
80204944:	85ba                	mv	a1,a4
80204946:	e709                	bnez	a4,80204950 <rt_vsnprintf+0x324>
80204948:	00003597          	auipc	a1,0x3
8020494c:	6c058593          	addi	a1,a1,1728 # 80208008 <rt_system_timer_thread_init+0x104a>
80204950:	4681                	li	a3,0
80204952:	00f68763          	beq	a3,a5,80204960 <rt_vsnprintf+0x334>
80204956:	00d5873b          	addw	a4,a1,a3
8020495a:	00074703          	lbu	a4,0(a4)
8020495e:	e71d                	bnez	a4,8020498c <rt_vsnprintf+0x360>
80204960:	01005863          	blez	a6,80204970 <rt_vsnprintf+0x344>
80204964:	8736                	mv	a4,a3
80204966:	00d85363          	bge	a6,a3,8020496c <rt_vsnprintf+0x340>
8020496a:	8742                	mv	a4,a6
8020496c:	0007069b          	sext.w	a3,a4
80204970:	0108f893          	andi	a7,a7,16
80204974:	04089b63          	bnez	a7,802049ca <rt_vsnprintf+0x39e>
80204978:	872a                	mv	a4,a0
8020497a:	0007861b          	sext.w	a2,a5
8020497e:	00f508bb          	addw	a7,a0,a5
80204982:	000c031b          	sext.w	t1,s8
80204986:	02000e93          	li	t4,32
8020498a:	a811                	j	8020499e <rt_vsnprintf+0x372>
8020498c:	2685                	addiw	a3,a3,1
8020498e:	b7d1                	j	80204952 <rt_vsnprintf+0x326>
80204990:	0007081b          	sext.w	a6,a4
80204994:	00687463          	bgeu	a6,t1,8020499c <rt_vsnprintf+0x370>
80204998:	01d70023          	sb	t4,0(a4)
8020499c:	2705                	addiw	a4,a4,1
8020499e:	40e8883b          	subw	a6,a7,a4
802049a2:	ff06c7e3          	blt	a3,a6,80204990 <rt_vsnprintf+0x364>
802049a6:	00d7a833          	slt	a6,a5,a3
802049aa:	40d6073b          	subw	a4,a2,a3
802049ae:	00184893          	xori	a7,a6,1
802049b2:	4601                	li	a2,0
802049b4:	00081363          	bnez	a6,802049ba <rt_vsnprintf+0x38e>
802049b8:	863a                	mv	a2,a4
802049ba:	9d31                	addw	a0,a0,a2
802049bc:	37fd                	addiw	a5,a5,-1
802049be:	4601                	li	a2,0
802049c0:	00088463          	beqz	a7,802049c8 <rt_vsnprintf+0x39c>
802049c4:	40e0063b          	negw	a2,a4
802049c8:	9fb1                	addw	a5,a5,a2
802049ca:	4701                	li	a4,0
802049cc:	000c089b          	sext.w	a7,s8
802049d0:	02d71c63          	bne	a4,a3,80204a08 <rt_vsnprintf+0x3dc>
802049d4:	00d5073b          	addw	a4,a0,a3
802049d8:	0006859b          	sext.w	a1,a3
802049dc:	863a                	mv	a2,a4
802049de:	0007851b          	sext.w	a0,a5
802049e2:	00f708bb          	addw	a7,a4,a5
802049e6:	000c031b          	sext.w	t1,s8
802049ea:	02000e93          	li	t4,32
802049ee:	40c8883b          	subw	a6,a7,a2
802049f2:	0306c863          	blt	a3,a6,80204a22 <rt_vsnprintf+0x3f6>
802049f6:	4601                	li	a2,0
802049f8:	00d7c463          	blt	a5,a3,80204a00 <rt_vsnprintf+0x3d4>
802049fc:	40b5063b          	subw	a2,a0,a1
80204a00:	00c707bb          	addw	a5,a4,a2
80204a04:	8372                	mv	t1,t3
80204a06:	b5dd                	j	802048ec <rt_vsnprintf+0x2c0>
80204a08:	00e5033b          	addw	t1,a0,a4
80204a0c:	0007061b          	sext.w	a2,a4
80204a10:	01137763          	bgeu	t1,a7,80204a1e <rt_vsnprintf+0x3f2>
80204a14:	9e2d                	addw	a2,a2,a1
80204a16:	00064603          	lbu	a2,0(a2)
80204a1a:	00c30023          	sb	a2,0(t1)
80204a1e:	2705                	addiw	a4,a4,1
80204a20:	bf45                	j	802049d0 <rt_vsnprintf+0x3a4>
80204a22:	0006081b          	sext.w	a6,a2
80204a26:	00687463          	bgeu	a6,t1,80204a2e <rt_vsnprintf+0x402>
80204a2a:	01d60023          	sb	t4,0(a2)
80204a2e:	2605                	addiw	a2,a2,1
80204a30:	bf7d                	j	802049ee <rt_vsnprintf+0x3c2>
80204a32:	56fd                	li	a3,-1
80204a34:	00d79563          	bne	a5,a3,80204a3e <rt_vsnprintf+0x412>
80204a38:	0218e893          	ori	a7,a7,33
80204a3c:	47a9                	li	a5,10
80204a3e:	00830c9b          	addiw	s9,t1,8
80204a42:	46c1                	li	a3,16
80204a44:	00032603          	lw	a2,0(t1)
80204a48:	bd29                	j	80204862 <rt_vsnprintf+0x236>
80204a4a:	0005079b          	sext.w	a5,a0
80204a4e:	000c071b          	sext.w	a4,s8
80204a52:	c4e7f2e3          	bgeu	a5,a4,80204696 <rt_vsnprintf+0x6a>
80204a56:	00d50023          	sb	a3,0(a0)
80204a5a:	b935                	j	80204696 <rt_vsnprintf+0x6a>
80204a5c:	46a1                	li	a3,8
80204a5e:	b3f5                	j	8020484a <rt_vsnprintf+0x21e>
80204a60:	0408e893          	ori	a7,a7,64
80204a64:	46c1                	li	a3,16
80204a66:	b3d5                	j	8020484a <rt_vsnprintf+0x21e>
80204a68:	0028e893          	ori	a7,a7,2
80204a6c:	46a9                	li	a3,10
80204a6e:	bbf1                	j	8020484a <rt_vsnprintf+0x21e>
80204a70:	2321                	addiw	t1,t1,8
80204a72:	b3b5                	j	802047de <rt_vsnprintf+0x1b2>
80204a74:	3a7d                	addiw	s4,s4,-1
80204a76:	bd9d                	j	802048ec <rt_vsnprintf+0x2c0>
80204a78:	06800613          	li	a2,104
80204a7c:	fcc714e3          	bne	a4,a2,80204a44 <rt_vsnprintf+0x418>
80204a80:	0028f593          	andi	a1,a7,2
80204a84:	00032603          	lw	a2,0(t1)
80204a88:	e581                	bnez	a1,80204a90 <rt_vsnprintf+0x464>
80204a8a:	1642                	slli	a2,a2,0x30
80204a8c:	9241                	srli	a2,a2,0x30
80204a8e:	bbd1                	j	80204862 <rt_vsnprintf+0x236>
80204a90:	0106161b          	slliw	a2,a2,0x10
80204a94:	4106561b          	sraiw	a2,a2,0x10
80204a98:	b3e9                	j	80204862 <rt_vsnprintf+0x236>
80204a9a:	8b2e                	mv	s6,a1
80204a9c:	8c3e                	mv	s8,a5
80204a9e:	b6c9                	j	80204660 <rt_vsnprintf+0x34>
80204aa0:	fe0c0fa3          	sb	zero,-1(s8)
80204aa4:	b5a5                	j	8020490c <rt_vsnprintf+0x2e0>

80204aa6 <rt_snprintf>:
80204aa6:	fb01011b          	addiw	sp,sp,-80
80204aaa:	f436                	sd	a3,40(sp)
80204aac:	0281069b          	addiw	a3,sp,40
80204ab0:	ec06                	sd	ra,24(sp)
80204ab2:	f83a                	sd	a4,48(sp)
80204ab4:	fc3e                	sd	a5,56(sp)
80204ab6:	e0c2                	sd	a6,64(sp)
80204ab8:	e4c6                	sd	a7,72(sp)
80204aba:	c636                	sw	a3,12(sp)
80204abc:	b71ff0ef          	jal	8020462c <rt_vsnprintf>
80204ac0:	60e2                	ld	ra,24(sp)
80204ac2:	0501011b          	addiw	sp,sp,80
80204ac6:	8082                	ret

80204ac8 <rt_set_errno>:
80204ac8:	3141                	addiw	sp,sp,-16
80204aca:	e022                	sd	s0,0(sp)
80204acc:	e406                	sd	ra,8(sp)
80204ace:	842a                	mv	s0,a0
80204ad0:	889ff0ef          	jal	80204358 <rt_interrupt_get_nest>
80204ad4:	c909                	beqz	a0,80204ae6 <rt_set_errno+0x1e>
80204ad6:	0000d797          	auipc	a5,0xd
80204ada:	8a87ab23          	sw	s0,-1866(a5) # 8021138c <__rt_errno>
80204ade:	60a2                	ld	ra,8(sp)
80204ae0:	6402                	ld	s0,0(sp)
80204ae2:	2141                	addiw	sp,sp,16
80204ae4:	8082                	ret
80204ae6:	311010ef          	jal	802065f6 <rt_thread_self>
80204aea:	0005079b          	sext.w	a5,a0
80204aee:	d7e5                	beqz	a5,80204ad6 <rt_set_errno+0xe>
80204af0:	dd00                	sw	s0,56(a0)
80204af2:	b7f5                	j	80204ade <rt_set_errno+0x16>

80204af4 <rt_memset>:
80204af4:	478d                	li	a5,3
80204af6:	0ff5f593          	zext.b	a1,a1
80204afa:	00c7e963          	bltu	a5,a2,80204b0c <rt_memset+0x18>
80204afe:	87aa                	mv	a5,a0
80204b00:	9e3d                	addw	a2,a2,a5
80204b02:	0007871b          	sext.w	a4,a5
80204b06:	06c71c63          	bne	a4,a2,80204b7e <rt_memset+0x8a>
80204b0a:	8082                	ret
80204b0c:	00357713          	andi	a4,a0,3
80204b10:	0005069b          	sext.w	a3,a0
80204b14:	87aa                	mv	a5,a0
80204b16:	f76d                	bnez	a4,80204b00 <rt_memset+0xc>
80204b18:	00859713          	slli	a4,a1,0x8
80204b1c:	01059813          	slli	a6,a1,0x10
80204b20:	8f4d                	or	a4,a4,a1
80204b22:	01859793          	slli	a5,a1,0x18
80204b26:	01076733          	or	a4,a4,a6
80204b2a:	8f5d                	or	a4,a4,a5
80204b2c:	2701                	sext.w	a4,a4
80204b2e:	87aa                	mv	a5,a0
80204b30:	9eb1                	addw	a3,a3,a2
80204b32:	483d                	li	a6,15
80204b34:	40f688bb          	subw	a7,a3,a5
80204b38:	03186a63          	bltu	a6,a7,80204b6c <rt_memset+0x78>
80204b3c:	0046579b          	srliw	a5,a2,0x4
80204b40:	56c1                	li	a3,-16
80204b42:	02d787bb          	mulw	a5,a5,a3
80204b46:	480d                	li	a6,3
80204b48:	9e3d                	addw	a2,a2,a5
80204b4a:	40f506bb          	subw	a3,a0,a5
80204b4e:	87b6                	mv	a5,a3
80204b50:	00c6833b          	addw	t1,a3,a2
80204b54:	40d308bb          	subw	a7,t1,a3
80204b58:	03186063          	bltu	a6,a7,80204b78 <rt_memset+0x84>
80204b5c:	0026571b          	srliw	a4,a2,0x2
80204b60:	56f1                	li	a3,-4
80204b62:	02d7073b          	mulw	a4,a4,a3
80204b66:	9e39                	addw	a2,a2,a4
80204b68:	9f99                	subw	a5,a5,a4
80204b6a:	bf59                	j	80204b00 <rt_memset+0xc>
80204b6c:	c398                	sw	a4,0(a5)
80204b6e:	c3d8                	sw	a4,4(a5)
80204b70:	c798                	sw	a4,8(a5)
80204b72:	c7d8                	sw	a4,12(a5)
80204b74:	27c1                	addiw	a5,a5,16
80204b76:	bf7d                	j	80204b34 <rt_memset+0x40>
80204b78:	c298                	sw	a4,0(a3)
80204b7a:	2691                	addiw	a3,a3,4
80204b7c:	bfe1                	j	80204b54 <rt_memset+0x60>
80204b7e:	2785                	addiw	a5,a5,1
80204b80:	feb78fa3          	sb	a1,-1(a5)
80204b84:	bfbd                	j	80204b02 <rt_memset+0xe>

80204b86 <rt_memcpy>:
80204b86:	47bd                	li	a5,15
80204b88:	00c7e763          	bltu	a5,a2,80204b96 <rt_memcpy+0x10>
80204b8c:	87aa                	mv	a5,a0
80204b8e:	4701                	li	a4,0
80204b90:	08e61663          	bne	a2,a4,80204c1c <rt_memcpy+0x96>
80204b94:	8082                	ret
80204b96:	00a5e8b3          	or	a7,a1,a0
80204b9a:	0038f893          	andi	a7,a7,3
80204b9e:	0005881b          	sext.w	a6,a1
80204ba2:	0005071b          	sext.w	a4,a0
80204ba6:	87aa                	mv	a5,a0
80204ba8:	fe0893e3          	bnez	a7,80204b8e <rt_memcpy+0x8>
80204bac:	87ba                	mv	a5,a4
80204bae:	00c70e3b          	addw	t3,a4,a2
80204bb2:	433d                	li	t1,15
80204bb4:	00082e83          	lw	t4,0(a6)
80204bb8:	01d7a023          	sw	t4,0(a5)
80204bbc:	00482e83          	lw	t4,4(a6)
80204bc0:	01d7a223          	sw	t4,4(a5)
80204bc4:	00882e83          	lw	t4,8(a6)
80204bc8:	01d7a423          	sw	t4,8(a5)
80204bcc:	00c82683          	lw	a3,12(a6)
80204bd0:	2841                	addiw	a6,a6,16
80204bd2:	c7d4                	sw	a3,12(a5)
80204bd4:	27c1                	addiw	a5,a5,16
80204bd6:	40fe073b          	subw	a4,t3,a5
80204bda:	fce36de3          	bltu	t1,a4,80204bb4 <rt_memcpy+0x2e>
80204bde:	ff06079b          	addiw	a5,a2,-16
80204be2:	9bc1                	andi	a5,a5,-16
80204be4:	27c1                	addiw	a5,a5,16
80204be6:	9dbd                	addw	a1,a1,a5
80204be8:	00f67713          	andi	a4,a2,15
80204bec:	9fa9                	addw	a5,a5,a0
80204bee:	468d                	li	a3,3
80204bf0:	4117083b          	subw	a6,a4,a7
80204bf4:	0106ea63          	bltu	a3,a6,80204c08 <rt_memcpy+0x82>
80204bf8:	0027571b          	srliw	a4,a4,0x2
80204bfc:	0027171b          	slliw	a4,a4,0x2
80204c00:	9fb9                	addw	a5,a5,a4
80204c02:	9db9                	addw	a1,a1,a4
80204c04:	8a0d                	andi	a2,a2,3
80204c06:	b761                	j	80204b8e <rt_memcpy+0x8>
80204c08:	0115883b          	addw	a6,a1,a7
80204c0c:	00082303          	lw	t1,0(a6)
80204c10:	0117883b          	addw	a6,a5,a7
80204c14:	2891                	addiw	a7,a7,4
80204c16:	00682023          	sw	t1,0(a6)
80204c1a:	bfd9                	j	80204bf0 <rt_memcpy+0x6a>
80204c1c:	00e586bb          	addw	a3,a1,a4
80204c20:	0006c803          	lbu	a6,0(a3)
80204c24:	00e786bb          	addw	a3,a5,a4
80204c28:	2705                	addiw	a4,a4,1
80204c2a:	01068023          	sb	a6,0(a3)
80204c2e:	b78d                	j	80204b90 <rt_memcpy+0xa>

80204c30 <rt_strncpy>:
80204c30:	ca05                	beqz	a2,80204c60 <rt_strncpy+0x30>
80204c32:	87aa                	mv	a5,a0
80204c34:	0005c703          	lbu	a4,0(a1)
80204c38:	2585                	addiw	a1,a1,1
80204c3a:	2785                	addiw	a5,a5,1
80204c3c:	fee78fa3          	sb	a4,-1(a5)
80204c40:	0006069b          	sext.w	a3,a2
80204c44:	367d                	addiw	a2,a2,-1
80204c46:	ef01                	bnez	a4,80204c5e <rt_strncpy+0x2e>
80204c48:	0007871b          	sext.w	a4,a5
80204c4c:	9fb5                	addw	a5,a5,a3
80204c4e:	2705                	addiw	a4,a4,1
80204c50:	86ba                	mv	a3,a4
80204c52:	00f71363          	bne	a4,a5,80204c58 <rt_strncpy+0x28>
80204c56:	8082                	ret
80204c58:	fe068fa3          	sb	zero,-1(a3)
80204c5c:	bfcd                	j	80204c4e <rt_strncpy+0x1e>
80204c5e:	fa79                	bnez	a2,80204c34 <rt_strncpy+0x4>
80204c60:	8082                	ret

80204c62 <rt_strncmp>:
80204c62:	86aa                	mv	a3,a0
80204c64:	4701                	li	a4,0
80204c66:	00e61463          	bne	a2,a4,80204c6e <rt_strncmp+0xc>
80204c6a:	4501                	li	a0,0
80204c6c:	8082                	ret
80204c6e:	00e687bb          	addw	a5,a3,a4
80204c72:	0007c803          	lbu	a6,0(a5)
80204c76:	00e587bb          	addw	a5,a1,a4
80204c7a:	0007c783          	lbu	a5,0(a5)
80204c7e:	40f807bb          	subw	a5,a6,a5
80204c82:	0187951b          	slliw	a0,a5,0x18
80204c86:	4185551b          	sraiw	a0,a0,0x18
80204c8a:	e501                	bnez	a0,80204c92 <rt_strncmp+0x30>
80204c8c:	2705                	addiw	a4,a4,1
80204c8e:	fc081ce3          	bnez	a6,80204c66 <rt_strncmp+0x4>
80204c92:	8082                	ret

80204c94 <rt_strlen>:
80204c94:	87aa                	mv	a5,a0
80204c96:	0007c703          	lbu	a4,0(a5)
80204c9a:	e701                	bnez	a4,80204ca2 <rt_strlen+0xe>
80204c9c:	40a7853b          	subw	a0,a5,a0
80204ca0:	8082                	ret
80204ca2:	2785                	addiw	a5,a5,1
80204ca4:	bfcd                	j	80204c96 <rt_strlen+0x2>

80204ca6 <rt_strnlen>:
80204ca6:	872a                	mv	a4,a0
80204ca8:	87aa                	mv	a5,a0
80204caa:	0007c683          	lbu	a3,0(a5)
80204cae:	40e7853b          	subw	a0,a5,a4
80204cb2:	c299                	beqz	a3,80204cb8 <rt_strnlen+0x12>
80204cb4:	00b56363          	bltu	a0,a1,80204cba <rt_strnlen+0x14>
80204cb8:	8082                	ret
80204cba:	2785                	addiw	a5,a5,1
80204cbc:	b7fd                	j	80204caa <rt_strnlen+0x4>

80204cbe <_heap_lock>:
80204cbe:	3141                	addiw	sp,sp,-16
80204cc0:	e406                	sd	ra,8(sp)
80204cc2:	135010ef          	jal	802065f6 <rt_thread_self>
80204cc6:	2501                	sext.w	a0,a0
80204cc8:	c911                	beqz	a0,80204cdc <_heap_lock+0x1e>
80204cca:	60a2                	ld	ra,8(sp)
80204ccc:	55fd                	li	a1,-1
80204cce:	00011517          	auipc	a0,0x11
80204cd2:	f3a50513          	addi	a0,a0,-198 # 80215c08 <_lock>
80204cd6:	2141                	addiw	sp,sp,16
80204cd8:	c12ff06f          	j	802040ea <rt_mutex_take>
80204cdc:	60a2                	ld	ra,8(sp)
80204cde:	4501                	li	a0,0
80204ce0:	2141                	addiw	sp,sp,16
80204ce2:	8082                	ret

80204ce4 <rt_console_set_device>:
80204ce4:	fd01011b          	addiw	sp,sp,-48
80204ce8:	ec26                	sd	s1,24(sp)
80204cea:	0000c497          	auipc	s1,0xc
80204cee:	6b248493          	addi	s1,s1,1714 # 8021139c <_console_device>
80204cf2:	e44e                	sd	s3,8(sp)
80204cf4:	0004a983          	lw	s3,0(s1)
80204cf8:	e84a                	sd	s2,16(sp)
80204cfa:	f406                	sd	ra,40(sp)
80204cfc:	f022                	sd	s0,32(sp)
80204cfe:	b91fc0ef          	jal	8020188e <rt_device_find>
80204d02:	0005079b          	sext.w	a5,a0
80204d06:	4901                	li	s2,0
80204d08:	00f98f63          	beq	s3,a5,80204d26 <rt_console_set_device+0x42>
80204d0c:	894e                	mv	s2,s3
80204d0e:	cf81                	beqz	a5,80204d26 <rt_console_set_device+0x42>
80204d10:	4088                	lw	a0,0(s1)
80204d12:	843e                	mv	s0,a5
80204d14:	c119                	beqz	a0,80204d1a <rt_console_set_device+0x36>
80204d16:	cf9fc0ef          	jal	80201a0e <rt_device_close>
80204d1a:	04300593          	li	a1,67
80204d1e:	8522                	mv	a0,s0
80204d20:	bc7fc0ef          	jal	802018e6 <rt_device_open>
80204d24:	c080                	sw	s0,0(s1)
80204d26:	70a2                	ld	ra,40(sp)
80204d28:	7402                	ld	s0,32(sp)
80204d2a:	64e2                	ld	s1,24(sp)
80204d2c:	69a2                	ld	s3,8(sp)
80204d2e:	854a                	mv	a0,s2
80204d30:	6942                	ld	s2,16(sp)
80204d32:	0301011b          	addiw	sp,sp,48
80204d36:	8082                	ret

80204d38 <_kputs>:
80204d38:	0000c797          	auipc	a5,0xc
80204d3c:	6647a783          	lw	a5,1636(a5) # 8021139c <_console_device>
80204d40:	862a                	mv	a2,a0
80204d42:	86ae                	mv	a3,a1
80204d44:	e399                	bnez	a5,80204d4a <_kputs+0x12>
80204d46:	cc8fc06f          	j	8020120e <rt_hw_console_output>
80204d4a:	4581                	li	a1,0
80204d4c:	853e                	mv	a0,a5
80204d4e:	d49fc06f          	j	80201a96 <rt_device_write>

80204d52 <rt_kputs>:
80204d52:	0005079b          	sext.w	a5,a0
80204d56:	cf99                	beqz	a5,80204d74 <rt_kputs+0x22>
80204d58:	3141                	addiw	sp,sp,-16
80204d5a:	e022                	sd	s0,0(sp)
80204d5c:	e406                	sd	ra,8(sp)
80204d5e:	843e                	mv	s0,a5
80204d60:	f35ff0ef          	jal	80204c94 <rt_strlen>
80204d64:	0005059b          	sext.w	a1,a0
80204d68:	8522                	mv	a0,s0
80204d6a:	6402                	ld	s0,0(sp)
80204d6c:	60a2                	ld	ra,8(sp)
80204d6e:	2141                	addiw	sp,sp,16
80204d70:	fc9ff06f          	j	80204d38 <_kputs>
80204d74:	8082                	ret

80204d76 <rt_kprintf>:
80204d76:	fa01011b          	addiw	sp,sp,-96
80204d7a:	f42e                	sd	a1,40(sp)
80204d7c:	f832                	sd	a2,48(sp)
80204d7e:	fc36                	sd	a3,56(sp)
80204d80:	862a                	mv	a2,a0
80204d82:	0281069b          	addiw	a3,sp,40
80204d86:	0ff00593          	li	a1,255
80204d8a:	00011517          	auipc	a0,0x11
80204d8e:	cee50513          	addi	a0,a0,-786 # 80215a78 <rt_log_buf.3>
80204d92:	e822                	sd	s0,16(sp)
80204d94:	e4be                	sd	a5,72(sp)
80204d96:	ec06                	sd	ra,24(sp)
80204d98:	e0ba                	sd	a4,64(sp)
80204d9a:	e8c2                	sd	a6,80(sp)
80204d9c:	ecc6                	sd	a7,88(sp)
80204d9e:	c636                	sw	a3,12(sp)
80204da0:	88dff0ef          	jal	8020462c <rt_vsnprintf>
80204da4:	0005041b          	sext.w	s0,a0
80204da8:	0ff00793          	li	a5,255
80204dac:	2501                	sext.w	a0,a0
80204dae:	00a7f463          	bgeu	a5,a0,80204db6 <rt_kprintf+0x40>
80204db2:	0ff00413          	li	s0,255
80204db6:	85a2                	mv	a1,s0
80204db8:	00011517          	auipc	a0,0x11
80204dbc:	cc050513          	addi	a0,a0,-832 # 80215a78 <rt_log_buf.3>
80204dc0:	f79ff0ef          	jal	80204d38 <_kputs>
80204dc4:	60e2                	ld	ra,24(sp)
80204dc6:	8522                	mv	a0,s0
80204dc8:	6442                	ld	s0,16(sp)
80204dca:	0601011b          	addiw	sp,sp,96
80204dce:	8082                	ret

80204dd0 <rt_show_version>:
80204dd0:	3141                	addiw	sp,sp,-16
80204dd2:	00003517          	auipc	a0,0x3
80204dd6:	23e50513          	addi	a0,a0,574 # 80208010 <rt_system_timer_thread_init+0x1052>
80204dda:	e406                	sd	ra,8(sp)
80204ddc:	f9bff0ef          	jal	80204d76 <rt_kprintf>
80204de0:	00003517          	auipc	a0,0x3
80204de4:	24050513          	addi	a0,a0,576 # 80208020 <rt_system_timer_thread_init+0x1062>
80204de8:	f8fff0ef          	jal	80204d76 <rt_kprintf>
80204dec:	00003797          	auipc	a5,0x3
80204df0:	25c78793          	addi	a5,a5,604 # 80208048 <rt_system_timer_thread_init+0x108a>
80204df4:	00003717          	auipc	a4,0x3
80204df8:	26470713          	addi	a4,a4,612 # 80208058 <rt_system_timer_thread_init+0x109a>
80204dfc:	4681                	li	a3,0
80204dfe:	4609                	li	a2,2
80204e00:	4595                	li	a1,5
80204e02:	00003517          	auipc	a0,0x3
80204e06:	26650513          	addi	a0,a0,614 # 80208068 <rt_system_timer_thread_init+0x10aa>
80204e0a:	f6dff0ef          	jal	80204d76 <rt_kprintf>
80204e0e:	60a2                	ld	ra,8(sp)
80204e10:	00003517          	auipc	a0,0x3
80204e14:	28050513          	addi	a0,a0,640 # 80208090 <rt_system_timer_thread_init+0x10d2>
80204e18:	2141                	addiw	sp,sp,16
80204e1a:	f5dff06f          	j	80204d76 <rt_kprintf>

80204e1e <rt_backtrace_frame>:
80204e1e:	fd01011b          	addiw	sp,sp,-48
80204e22:	e84a                	sd	s2,16(sp)
80204e24:	892a                	mv	s2,a0
80204e26:	00003517          	auipc	a0,0x3
80204e2a:	29a50513          	addi	a0,a0,666 # 802080c0 <rt_system_timer_thread_init+0x1102>
80204e2e:	f022                	sd	s0,32(sp)
80204e30:	ec26                	sd	s1,24(sp)
80204e32:	e44e                	sd	s3,8(sp)
80204e34:	f406                	sd	ra,40(sp)
80204e36:	842e                	mv	s0,a1
80204e38:	02000493          	li	s1,32
80204e3c:	f3bff0ef          	jal	80204d76 <rt_kprintf>
80204e40:	00003997          	auipc	s3,0x3
80204e44:	2b098993          	addi	s3,s3,688 # 802080f0 <rt_system_timer_thread_init+0x1132>
80204e48:	404c                	lw	a1,4(s0)
80204e4a:	854e                	mv	a0,s3
80204e4c:	f2bff0ef          	jal	80204d76 <rt_kprintf>
80204e50:	85a2                	mv	a1,s0
80204e52:	854a                	mv	a0,s2
80204e54:	82cfc0ef          	jal	80200e80 <rt_hw_backtrace_frame_unwind>
80204e58:	e119                	bnez	a0,80204e5e <rt_backtrace_frame+0x40>
80204e5a:	34fd                	addiw	s1,s1,-1
80204e5c:	f4f5                	bnez	s1,80204e48 <rt_backtrace_frame+0x2a>
80204e5e:	00002517          	auipc	a0,0x2
80204e62:	60250513          	addi	a0,a0,1538 # 80207460 <rt_system_timer_thread_init+0x4a2>
80204e66:	f11ff0ef          	jal	80204d76 <rt_kprintf>
80204e6a:	70a2                	ld	ra,40(sp)
80204e6c:	7402                	ld	s0,32(sp)
80204e6e:	64e2                	ld	s1,24(sp)
80204e70:	6942                	ld	s2,16(sp)
80204e72:	69a2                	ld	s3,8(sp)
80204e74:	4501                	li	a0,0
80204e76:	0301011b          	addiw	sp,sp,48
80204e7a:	8082                	ret

80204e7c <rt_backtrace>:
80204e7c:	fd01011b          	addiw	sp,sp,-48
80204e80:	f022                	sd	s0,32(sp)
80204e82:	f406                	sd	ra,40(sp)
80204e84:	0301041b          	addiw	s0,sp,48
80204e88:	ec26                	sd	s1,24(sp)
80204e8a:	76c010ef          	jal	802065f6 <rt_thread_self>
80204e8e:	00000797          	auipc	a5,0x0
80204e92:	fee78793          	addi	a5,a5,-18 # 80204e7c <rt_backtrace>
80204e96:	fcf42e23          	sw	a5,-36(s0)
80204e9a:	fc842c23          	sw	s0,-40(s0)
80204e9e:	0004071b          	sext.w	a4,s0
80204ea2:	57a9                	li	a5,-22
80204ea4:	cf01                	beqz	a4,80204ebc <rt_backtrace+0x40>
80204ea6:	fd84059b          	addiw	a1,s0,-40
80204eaa:	84aa                	mv	s1,a0
80204eac:	fd5fb0ef          	jal	80200e80 <rt_hw_backtrace_frame_unwind>
80204eb0:	fd84059b          	addiw	a1,s0,-40
80204eb4:	8526                	mv	a0,s1
80204eb6:	f69ff0ef          	jal	80204e1e <rt_backtrace_frame>
80204eba:	87aa                	mv	a5,a0
80204ebc:	70a2                	ld	ra,40(sp)
80204ebe:	7402                	ld	s0,32(sp)
80204ec0:	64e2                	ld	s1,24(sp)
80204ec2:	853e                	mv	a0,a5
80204ec4:	0301011b          	addiw	sp,sp,48
80204ec8:	8082                	ret

80204eca <__rt_ffs>:
80204eca:	cd39                	beqz	a0,80204f28 <__rt_ffs+0x5e>
80204ecc:	0ff57713          	zext.b	a4,a0
80204ed0:	00004797          	auipc	a5,0x4
80204ed4:	e6078793          	addi	a5,a5,-416 # 80208d30 <__lowest_bit_bitmap>
80204ed8:	c711                	beqz	a4,80204ee4 <__rt_ffs+0x1a>
80204eda:	9fb9                	addw	a5,a5,a4
80204edc:	0007c503          	lbu	a0,0(a5)
80204ee0:	0505                	addi	a0,a0,1
80204ee2:	8082                	ret
80204ee4:	00855713          	srli	a4,a0,0x8
80204ee8:	0ff77713          	zext.b	a4,a4
80204eec:	cb11                	beqz	a4,80204f00 <__rt_ffs+0x36>
80204eee:	4085551b          	sraiw	a0,a0,0x8
80204ef2:	0ff57513          	zext.b	a0,a0
80204ef6:	9fa9                	addw	a5,a5,a0
80204ef8:	0007c503          	lbu	a0,0(a5)
80204efc:	0525                	addi	a0,a0,9
80204efe:	8082                	ret
80204f00:	01055713          	srli	a4,a0,0x10
80204f04:	0ff77713          	zext.b	a4,a4
80204f08:	cb11                	beqz	a4,80204f1c <__rt_ffs+0x52>
80204f0a:	4105551b          	sraiw	a0,a0,0x10
80204f0e:	0ff57513          	zext.b	a0,a0
80204f12:	9fa9                	addw	a5,a5,a0
80204f14:	0007c503          	lbu	a0,0(a5)
80204f18:	0545                	addi	a0,a0,17
80204f1a:	8082                	ret
80204f1c:	0185551b          	srliw	a0,a0,0x18
80204f20:	9fa9                	addw	a5,a5,a0
80204f22:	0007c503          	lbu	a0,0(a5)
80204f26:	0565                	addi	a0,a0,25
80204f28:	8082                	ret

80204f2a <rt_assert_handler>:
80204f2a:	3101                	addiw	sp,sp,-32
80204f2c:	ec06                	sd	ra,24(sp)
80204f2e:	000107a3          	sb	zero,15(sp)
80204f32:	0000c817          	auipc	a6,0xc
80204f36:	45e82803          	lw	a6,1118(a6) # 80211390 <rt_assert_hook>
80204f3a:	02081463          	bnez	a6,80204f62 <rt_assert_handler+0x38>
80204f3e:	86b2                	mv	a3,a2
80204f40:	862e                	mv	a2,a1
80204f42:	85aa                	mv	a1,a0
80204f44:	00003517          	auipc	a0,0x3
80204f48:	1b450513          	addi	a0,a0,436 # 802080f8 <rt_system_timer_thread_init+0x113a>
80204f4c:	e2bff0ef          	jal	80204d76 <rt_kprintf>
80204f50:	f2dff0ef          	jal	80204e7c <rt_backtrace>
80204f54:	00f14783          	lbu	a5,15(sp)
80204f58:	dff5                	beqz	a5,80204f54 <rt_assert_handler+0x2a>
80204f5a:	60e2                	ld	ra,24(sp)
80204f5c:	0201011b          	addiw	sp,sp,32
80204f60:	8082                	ret
80204f62:	60e2                	ld	ra,24(sp)
80204f64:	0201011b          	addiw	sp,sp,32
80204f68:	8802                	jr	a6

80204f6a <rt_system_heap_init_generic>:
80204f6a:	3101                	addiw	sp,sp,-32
80204f6c:	e822                	sd	s0,16(sp)
80204f6e:	0035041b          	addiw	s0,a0,3
80204f72:	9871                	andi	s0,s0,-4
80204f74:	99f1                	andi	a1,a1,-4
80204f76:	e426                	sd	s1,8(sp)
80204f78:	ec06                	sd	ra,24(sp)
80204f7a:	2401                	sext.w	s0,s0
80204f7c:	0005849b          	sext.w	s1,a1
80204f80:	00946e63          	bltu	s0,s1,80204f9c <rt_system_heap_init_generic+0x32>
80204f84:	30f00613          	li	a2,783
80204f88:	00004597          	auipc	a1,0x4
80204f8c:	d8858593          	addi	a1,a1,-632 # 80208d10 <__FUNCTION__.1>
80204f90:	00003517          	auipc	a0,0x3
80204f94:	1a050513          	addi	a0,a0,416 # 80208130 <rt_system_timer_thread_init+0x1172>
80204f98:	f93ff0ef          	jal	80204f2a <rt_assert_handler>
80204f9c:	408486bb          	subw	a3,s1,s0
80204fa0:	8622                	mv	a2,s0
80204fa2:	00003597          	auipc	a1,0x3
80204fa6:	1a658593          	addi	a1,a1,422 # 80208148 <rt_system_timer_thread_init+0x118a>
80204faa:	00011517          	auipc	a0,0x11
80204fae:	bce50513          	addi	a0,a0,-1074 # 80215b78 <system_heap>
80204fb2:	0ee000ef          	jal	802050a0 <rt_memheap_init>
80204fb6:	6442                	ld	s0,16(sp)
80204fb8:	60e2                	ld	ra,24(sp)
80204fba:	64a2                	ld	s1,8(sp)
80204fbc:	4785                	li	a5,1
80204fbe:	00011717          	auipc	a4,0x11
80204fc2:	c4f72323          	sw	a5,-954(a4) # 80215c04 <system_heap+0x8c>
80204fc6:	4605                	li	a2,1
80204fc8:	00003597          	auipc	a1,0x3
80204fcc:	18058593          	addi	a1,a1,384 # 80208148 <rt_system_timer_thread_init+0x118a>
80204fd0:	00011517          	auipc	a0,0x11
80204fd4:	c3850513          	addi	a0,a0,-968 # 80215c08 <_lock>
80204fd8:	0201011b          	addiw	sp,sp,32
80204fdc:	8a0ff06f          	j	8020407c <rt_mutex_init>

80204fe0 <rt_system_heap_init>:
80204fe0:	f8bff06f          	j	80204f6a <rt_system_heap_init_generic>

80204fe4 <_heap_unlock>:
80204fe4:	3141                	addiw	sp,sp,-16
80204fe6:	e406                	sd	ra,8(sp)
80204fe8:	cd09                	beqz	a0,80205002 <_heap_unlock+0x1e>
80204fea:	2ab00613          	li	a2,683
80204fee:	00004597          	auipc	a1,0x4
80204ff2:	d1258593          	addi	a1,a1,-750 # 80208d00 <__FUNCTION__.0>
80204ff6:	00003517          	auipc	a0,0x3
80204ffa:	15a50513          	addi	a0,a0,346 # 80208150 <rt_system_timer_thread_init+0x1192>
80204ffe:	f2dff0ef          	jal	80204f2a <rt_assert_handler>
80205002:	5f4010ef          	jal	802065f6 <rt_thread_self>
80205006:	2501                	sext.w	a0,a0
80205008:	c909                	beqz	a0,8020501a <_heap_unlock+0x36>
8020500a:	60a2                	ld	ra,8(sp)
8020500c:	00011517          	auipc	a0,0x11
80205010:	bfc50513          	addi	a0,a0,-1028 # 80215c08 <_lock>
80205014:	2141                	addiw	sp,sp,16
80205016:	8daff06f          	j	802040f0 <rt_mutex_release>
8020501a:	60a2                	ld	ra,8(sp)
8020501c:	2141                	addiw	sp,sp,16
8020501e:	8082                	ret

80205020 <rt_malloc>:
80205020:	fd01011b          	addiw	sp,sp,-48
80205024:	f406                	sd	ra,40(sp)
80205026:	f022                	sd	s0,32(sp)
80205028:	ec26                	sd	s1,24(sp)
8020502a:	842a                	mv	s0,a0
8020502c:	c93ff0ef          	jal	80204cbe <_heap_lock>
80205030:	84aa                	mv	s1,a0
80205032:	85a2                	mv	a1,s0
80205034:	00011517          	auipc	a0,0x11
80205038:	b4450513          	addi	a0,a0,-1212 # 80215b78 <system_heap>
8020503c:	442000ef          	jal	8020547e <_memheap_alloc>
80205040:	c62a                	sw	a0,12(sp)
80205042:	8526                	mv	a0,s1
80205044:	fa1ff0ef          	jal	80204fe4 <_heap_unlock>
80205048:	0000c797          	auipc	a5,0xc
8020504c:	3507a783          	lw	a5,848(a5) # 80211398 <rt_malloc_hook>
80205050:	c789                	beqz	a5,8020505a <rt_malloc+0x3a>
80205052:	85a2                	mv	a1,s0
80205054:	00c1051b          	addiw	a0,sp,12
80205058:	9782                	jalr	a5
8020505a:	70a2                	ld	ra,40(sp)
8020505c:	7402                	ld	s0,32(sp)
8020505e:	4532                	lw	a0,12(sp)
80205060:	64e2                	ld	s1,24(sp)
80205062:	0301011b          	addiw	sp,sp,48
80205066:	8082                	ret

80205068 <rt_free>:
80205068:	3101                	addiw	sp,sp,-32
8020506a:	ec06                	sd	ra,24(sp)
8020506c:	e822                	sd	s0,16(sp)
8020506e:	c62a                	sw	a0,12(sp)
80205070:	0000c797          	auipc	a5,0xc
80205074:	3247a783          	lw	a5,804(a5) # 80211394 <rt_free_hook>
80205078:	c781                	beqz	a5,80205080 <rt_free+0x18>
8020507a:	00c1051b          	addiw	a0,sp,12
8020507e:	9782                	jalr	a5
80205080:	47b2                	lw	a5,12(sp)
80205082:	cb91                	beqz	a5,80205096 <rt_free+0x2e>
80205084:	c3bff0ef          	jal	80204cbe <_heap_lock>
80205088:	842a                	mv	s0,a0
8020508a:	4532                	lw	a0,12(sp)
8020508c:	47c000ef          	jal	80205508 <_memheap_free>
80205090:	8522                	mv	a0,s0
80205092:	f53ff0ef          	jal	80204fe4 <_heap_unlock>
80205096:	60e2                	ld	ra,24(sp)
80205098:	6442                	ld	s0,16(sp)
8020509a:	0201011b          	addiw	sp,sp,32
8020509e:	8082                	ret

802050a0 <rt_memheap_init>:
802050a0:	fd01011b          	addiw	sp,sp,-48
802050a4:	f022                	sd	s0,32(sp)
802050a6:	ec26                	sd	s1,24(sp)
802050a8:	e84a                	sd	s2,16(sp)
802050aa:	e44e                	sd	s3,8(sp)
802050ac:	0005079b          	sext.w	a5,a0
802050b0:	f406                	sd	ra,40(sp)
802050b2:	843e                	mv	s0,a5
802050b4:	89ae                	mv	s3,a1
802050b6:	8932                	mv	s2,a2
802050b8:	84b6                	mv	s1,a3
802050ba:	ef89                	bnez	a5,802050d4 <rt_memheap_init+0x34>
802050bc:	05600613          	li	a2,86
802050c0:	00004597          	auipc	a1,0x4
802050c4:	da858593          	addi	a1,a1,-600 # 80208e68 <__FUNCTION__.5>
802050c8:	00003517          	auipc	a0,0x3
802050cc:	09850513          	addi	a0,a0,152 # 80208160 <rt_system_timer_thread_init+0x11a2>
802050d0:	e5bff0ef          	jal	80204f2a <rt_assert_handler>
802050d4:	864e                	mv	a2,s3
802050d6:	8522                	mv	a0,s0
802050d8:	459d                	li	a1,7
802050da:	636000ef          	jal	80205710 <rt_object_init>
802050de:	ffc4f693          	andi	a3,s1,-4
802050e2:	fd06879b          	addiw	a5,a3,-48
802050e6:	d45c                	sw	a5,44(s0)
802050e8:	03000793          	li	a5,48
802050ec:	d81c                	sw	a5,48(s0)
802050ee:	1ea027b7          	lui	a5,0x1ea02
802050f2:	03c4071b          	addiw	a4,s0,60
802050f6:	ea078793          	addi	a5,a5,-352 # 1ea01ea0 <__text_size+0x1e9f8cf8>
802050fa:	c478                	sw	a4,76(s0)
802050fc:	03242223          	sw	s2,36(s0)
80205100:	d414                	sw	a3,40(s0)
80205102:	dc5c                	sw	a5,60(s0)
80205104:	c838                	sw	a4,80(s0)
80205106:	dc18                	sw	a4,56(s0)
80205108:	c020                	sw	s0,64(s0)
8020510a:	04042223          	sw	zero,68(s0)
8020510e:	04042423          	sw	zero,72(s0)
80205112:	01292823          	sw	s2,16(s2)
80205116:	00f92023          	sw	a5,0(s2)
8020511a:	fe86879b          	addiw	a5,a3,-24
8020511e:	00f907bb          	addw	a5,s2,a5
80205122:	4474                	lw	a3,76(s0)
80205124:	00892223          	sw	s0,4(s2)
80205128:	00f92423          	sw	a5,8(s2)
8020512c:	00f92623          	sw	a5,12(s2)
80205130:	03242a23          	sw	s2,52(s0)
80205134:	00d92823          	sw	a3,16(s2)
80205138:	00e92a23          	sw	a4,20(s2)
8020513c:	0126aa23          	sw	s2,20(a3)
80205140:	1ea02737          	lui	a4,0x1ea02
80205144:	05242623          	sw	s2,76(s0)
80205148:	ea170713          	addi	a4,a4,-351 # 1ea01ea1 <__text_size+0x1e9f8cf9>
8020514c:	c3c0                	sw	s0,4(a5)
8020514e:	0127a423          	sw	s2,8(a5)
80205152:	0127a623          	sw	s2,12(a5)
80205156:	85ce                	mv	a1,s3
80205158:	0544051b          	addiw	a0,s0,84
8020515c:	c398                	sw	a4,0(a5)
8020515e:	0007aa23          	sw	zero,20(a5)
80205162:	0007a823          	sw	zero,16(a5)
80205166:	4685                	li	a3,1
80205168:	4605                	li	a2,1
8020516a:	da5fe0ef          	jal	80203f0e <rt_sem_init>
8020516e:	70a2                	ld	ra,40(sp)
80205170:	08042623          	sw	zero,140(s0)
80205174:	7402                	ld	s0,32(sp)
80205176:	64e2                	ld	s1,24(sp)
80205178:	6942                	ld	s2,16(sp)
8020517a:	69a2                	ld	s3,8(sp)
8020517c:	4501                	li	a0,0
8020517e:	0301011b          	addiw	sp,sp,48
80205182:	8082                	ret

80205184 <rt_memheap_alloc>:
80205184:	3101                	addiw	sp,sp,-32
80205186:	e822                	sd	s0,16(sp)
80205188:	e426                	sd	s1,8(sp)
8020518a:	0005079b          	sext.w	a5,a0
8020518e:	ec06                	sd	ra,24(sp)
80205190:	e04a                	sd	s2,0(sp)
80205192:	84be                	mv	s1,a5
80205194:	842e                	mv	s0,a1
80205196:	ef89                	bnez	a5,802051b0 <rt_memheap_alloc+0x2c>
80205198:	0c100613          	li	a2,193
8020519c:	00004597          	auipc	a1,0x4
802051a0:	cb458593          	addi	a1,a1,-844 # 80208e50 <__FUNCTION__.3>
802051a4:	00003517          	auipc	a0,0x3
802051a8:	04450513          	addi	a0,a0,68 # 802081e8 <rt_system_timer_thread_init+0x122a>
802051ac:	d7fff0ef          	jal	80204f2a <rt_assert_handler>
802051b0:	8526                	mv	a0,s1
802051b2:	0a3000ef          	jal	80205a54 <rt_object_get_type>
802051b6:	479d                	li	a5,7
802051b8:	00f50e63          	beq	a0,a5,802051d4 <rt_memheap_alloc+0x50>
802051bc:	0c200613          	li	a2,194
802051c0:	00004597          	auipc	a1,0x4
802051c4:	c9058593          	addi	a1,a1,-880 # 80208e50 <__FUNCTION__.3>
802051c8:	00003517          	auipc	a0,0x3
802051cc:	fb050513          	addi	a0,a0,-80 # 80208178 <rt_system_timer_thread_init+0x11ba>
802051d0:	d5bff0ef          	jal	80204f2a <rt_assert_handler>
802051d4:	0034059b          	addiw	a1,s0,3
802051d8:	99f1                	andi	a1,a1,-4
802051da:	0005891b          	sext.w	s2,a1
802051de:	47b1                	li	a5,12
802051e0:	2581                	sext.w	a1,a1
802051e2:	00f5f363          	bgeu	a1,a5,802051e8 <rt_memheap_alloc+0x64>
802051e6:	4931                	li	s2,12
802051e8:	54dc                	lw	a5,44(s1)
802051ea:	00f96a63          	bltu	s2,a5,802051fe <rt_memheap_alloc+0x7a>
802051ee:	4501                	li	a0,0
802051f0:	60e2                	ld	ra,24(sp)
802051f2:	6442                	ld	s0,16(sp)
802051f4:	64a2                	ld	s1,8(sp)
802051f6:	6902                	ld	s2,0(sp)
802051f8:	0201011b          	addiw	sp,sp,32
802051fc:	8082                	ret
802051fe:	08c4a783          	lw	a5,140(s1)
80205202:	eb91                	bnez	a5,80205216 <rt_memheap_alloc+0x92>
80205204:	55fd                	li	a1,-1
80205206:	0544851b          	addiw	a0,s1,84
8020520a:	daffe0ef          	jal	80203fb8 <rt_sem_take>
8020520e:	c501                	beqz	a0,80205216 <rt_memheap_alloc+0x92>
80205210:	8b9ff0ef          	jal	80204ac8 <rt_set_errno>
80205214:	bfe9                	j	802051ee <rt_memheap_alloc+0x6a>
80205216:	0384a303          	lw	t1,56(s1)
8020521a:	4701                	li	a4,0
8020521c:	0003079b          	sext.w	a5,t1
80205220:	4b80                	lw	s0,16(a5)
80205222:	863e                	mv	a2,a5
80205224:	0004069b          	sext.w	a3,s0
80205228:	0ad78263          	beq	a5,a3,802052cc <rt_memheap_alloc+0x148>
8020522c:	09276963          	bltu	a4,s2,802052be <rt_memheap_alloc+0x13a>
80205230:	4848                	lw	a0,20(s0)
80205232:	480c                	lw	a1,16(s0)
80205234:	0249081b          	addiw	a6,s2,36
80205238:	54d4                	lw	a3,44(s1)
8020523a:	549c                	lw	a5,40(s1)
8020523c:	0304ae03          	lw	t3,48(s1)
80205240:	8eaa                	mv	t4,a0
80205242:	88ae                	mv	a7,a1
80205244:	09076e63          	bltu	a4,a6,802052e0 <rt_memheap_alloc+0x15c>
80205248:	0189071b          	addiw	a4,s2,24
8020524c:	1ea02837          	lui	a6,0x1ea02
80205250:	9f21                	addw	a4,a4,s0
80205252:	ea080813          	addi	a6,a6,-352 # 1ea01ea0 <__text_size+0x1e9f8cf8>
80205256:	01072023          	sw	a6,0(a4)
8020525a:	00842803          	lw	a6,8(s0)
8020525e:	c344                	sw	s1,4(a4)
80205260:	c740                	sw	s0,12(a4)
80205262:	01072423          	sw	a6,8(a4)
80205266:	00842803          	lw	a6,8(s0)
8020526a:	36a1                	addiw	a3,a3,-24
8020526c:	012787bb          	addw	a5,a5,s2
80205270:	00e82623          	sw	a4,12(a6)
80205274:	c418                	sw	a4,8(s0)
80205276:	c9c8                	sw	a0,20(a1)
80205278:	4848                	lw	a0,20(s0)
8020527a:	c90c                	sw	a1,16(a0)
8020527c:	00042823          	sw	zero,16(s0)
80205280:	4a0c                	lw	a1,16(a2)
80205282:	00042a23          	sw	zero,20(s0)
80205286:	00672a23          	sw	t1,20(a4)
8020528a:	cb0c                	sw	a1,16(a4)
8020528c:	c9d8                	sw	a4,20(a1)
8020528e:	ca18                	sw	a4,16(a2)
80205290:	4126873b          	subw	a4,a3,s2
80205294:	d4d8                	sw	a4,44(s1)
80205296:	40d7873b          	subw	a4,a5,a3
8020529a:	00ee7363          	bgeu	t3,a4,802052a0 <rt_memheap_alloc+0x11c>
8020529e:	d898                	sw	a4,48(s1)
802052a0:	1ea027b7          	lui	a5,0x1ea02
802052a4:	ea178793          	addi	a5,a5,-351 # 1ea01ea1 <__text_size+0x1e9f8cf9>
802052a8:	c01c                	sw	a5,0(s0)
802052aa:	08c4a783          	lw	a5,140(s1)
802052ae:	e789                	bnez	a5,802052b8 <rt_memheap_alloc+0x134>
802052b0:	0544851b          	addiw	a0,s1,84
802052b4:	d0bfe0ef          	jal	80203fbe <rt_sem_release>
802052b8:	0184051b          	addiw	a0,s0,24
802052bc:	bf15                	j	802051f0 <rt_memheap_alloc+0x6c>
802052be:	4418                	lw	a4,8(s0)
802052c0:	9f01                	subw	a4,a4,s0
802052c2:	3721                	addiw	a4,a4,-24
802052c4:	f72770e3          	bgeu	a4,s2,80205224 <rt_memheap_alloc+0xa0>
802052c8:	4800                	lw	s0,16(s0)
802052ca:	bfa9                	j	80205224 <rt_memheap_alloc+0xa0>
802052cc:	f72772e3          	bgeu	a4,s2,80205230 <rt_memheap_alloc+0xac>
802052d0:	08c4a783          	lw	a5,140(s1)
802052d4:	ff89                	bnez	a5,802051ee <rt_memheap_alloc+0x6a>
802052d6:	0544851b          	addiw	a0,s1,84
802052da:	ce5fe0ef          	jal	80203fbe <rt_sem_release>
802052de:	bf01                	j	802051ee <rt_memheap_alloc+0x6a>
802052e0:	40e6863b          	subw	a2,a3,a4
802052e4:	9f95                	subw	a5,a5,a3
802052e6:	d4d0                	sw	a2,44(s1)
802052e8:	9f3d                	addw	a4,a4,a5
802052ea:	00ee7363          	bgeu	t3,a4,802052f0 <rt_memheap_alloc+0x16c>
802052ee:	d898                	sw	a4,48(s1)
802052f0:	00a8aa23          	sw	a0,20(a7)
802052f4:	00bea823          	sw	a1,16(t4)
802052f8:	00042823          	sw	zero,16(s0)
802052fc:	00042a23          	sw	zero,20(s0)
80205300:	b745                	j	802052a0 <rt_memheap_alloc+0x11c>

80205302 <rt_memheap_free>:
80205302:	0005079b          	sext.w	a5,a0
80205306:	16078b63          	beqz	a5,8020547c <rt_memheap_free+0x17a>
8020530a:	fd01011b          	addiw	sp,sp,-48
8020530e:	fe87a703          	lw	a4,-24(a5)
80205312:	f022                	sd	s0,32(sp)
80205314:	ec26                	sd	s1,24(sp)
80205316:	843e                	mv	s0,a5
80205318:	fe87849b          	addiw	s1,a5,-24
8020531c:	1ea027b7          	lui	a5,0x1ea02
80205320:	f406                	sd	ra,40(sp)
80205322:	e84a                	sd	s2,16(sp)
80205324:	e44e                	sd	s3,8(sp)
80205326:	ea178793          	addi	a5,a5,-351 # 1ea01ea1 <__text_size+0x1e9f8cf9>
8020532a:	08f71d63          	bne	a4,a5,802053c4 <rt_memheap_free+0xc2>
8020532e:	ff042783          	lw	a5,-16(s0)
80205332:	4398                	lw	a4,0(a5)
80205334:	1ea027b7          	lui	a5,0x1ea02
80205338:	ea078793          	addi	a5,a5,-352 # 1ea01ea0 <__text_size+0x1e9f8cf8>
8020533c:	9b79                	andi	a4,a4,-2
8020533e:	00f70e63          	beq	a4,a5,8020535a <rt_memheap_free+0x58>
80205342:	26d00613          	li	a2,621
80205346:	00004597          	auipc	a1,0x4
8020534a:	afa58593          	addi	a1,a1,-1286 # 80208e40 <__FUNCTION__.1>
8020534e:	00003517          	auipc	a0,0x3
80205352:	eaa50513          	addi	a0,a0,-342 # 802081f8 <rt_system_timer_thread_init+0x123a>
80205356:	bd5ff0ef          	jal	80204f2a <rt_assert_handler>
8020535a:	fec42983          	lw	s3,-20(s0)
8020535e:	894e                	mv	s2,s3
80205360:	00099e63          	bnez	s3,8020537c <rt_memheap_free+0x7a>
80205364:	27300613          	li	a2,627
80205368:	00004597          	auipc	a1,0x4
8020536c:	ad858593          	addi	a1,a1,-1320 # 80208e40 <__FUNCTION__.1>
80205370:	00003517          	auipc	a0,0x3
80205374:	dd850513          	addi	a0,a0,-552 # 80208148 <rt_system_timer_thread_init+0x118a>
80205378:	bb3ff0ef          	jal	80204f2a <rt_assert_handler>
8020537c:	854e                	mv	a0,s3
8020537e:	6d6000ef          	jal	80205a54 <rt_object_get_type>
80205382:	479d                	li	a5,7
80205384:	00f50e63          	beq	a0,a5,802053a0 <rt_memheap_free+0x9e>
80205388:	27400613          	li	a2,628
8020538c:	00004597          	auipc	a1,0x4
80205390:	ab458593          	addi	a1,a1,-1356 # 80208e40 <__FUNCTION__.1>
80205394:	00003517          	auipc	a0,0x3
80205398:	de450513          	addi	a0,a0,-540 # 80208178 <rt_system_timer_thread_init+0x11ba>
8020539c:	b8fff0ef          	jal	80204f2a <rt_assert_handler>
802053a0:	08c92783          	lw	a5,140(s2)
802053a4:	ef8d                	bnez	a5,802053de <rt_memheap_free+0xdc>
802053a6:	55fd                	li	a1,-1
802053a8:	0549851b          	addiw	a0,s3,84
802053ac:	c0dfe0ef          	jal	80203fb8 <rt_sem_take>
802053b0:	c51d                	beqz	a0,802053de <rt_memheap_free+0xdc>
802053b2:	7402                	ld	s0,32(sp)
802053b4:	70a2                	ld	ra,40(sp)
802053b6:	64e2                	ld	s1,24(sp)
802053b8:	6942                	ld	s2,16(sp)
802053ba:	69a2                	ld	s3,8(sp)
802053bc:	0301011b          	addiw	sp,sp,48
802053c0:	f08ff06f          	j	80204ac8 <rt_set_errno>
802053c4:	26b00613          	li	a2,619
802053c8:	00004597          	auipc	a1,0x4
802053cc:	a7858593          	addi	a1,a1,-1416 # 80208e40 <__FUNCTION__.1>
802053d0:	00003517          	auipc	a0,0x3
802053d4:	e6850513          	addi	a0,a0,-408 # 80208238 <rt_system_timer_thread_init+0x127a>
802053d8:	b53ff0ef          	jal	80204f2a <rt_assert_handler>
802053dc:	bf89                	j	8020532e <rt_memheap_free+0x2c>
802053de:	1ea027b7          	lui	a5,0x1ea02
802053e2:	ea078793          	addi	a5,a5,-352 # 1ea01ea0 <__text_size+0x1e9f8cf8>
802053e6:	fef42423          	sw	a5,-24(s0)
802053ea:	ff042503          	lw	a0,-16(s0)
802053ee:	02c92783          	lw	a5,44(s2)
802053f2:	ff442603          	lw	a2,-12(s0)
802053f6:	4685                	li	a3,1
802053f8:	9fa9                	addw	a5,a5,a0
802053fa:	9f85                	subw	a5,a5,s1
802053fc:	fe87871b          	addiw	a4,a5,-24
80205400:	02e92623          	sw	a4,44(s2)
80205404:	4218                	lw	a4,0(a2)
80205406:	8b05                	andi	a4,a4,1
80205408:	eb11                	bnez	a4,8020541c <rt_memheap_free+0x11a>
8020540a:	02f92623          	sw	a5,44(s2)
8020540e:	c608                	sw	a0,8(a2)
80205410:	ff042783          	lw	a5,-16(s0)
80205414:	4681                	li	a3,0
80205416:	c7d0                	sw	a2,12(a5)
80205418:	ff442483          	lw	s1,-12(s0)
8020541c:	449c                	lw	a5,8(s1)
8020541e:	4398                	lw	a4,0(a5)
80205420:	8b05                	andi	a4,a4,1
80205422:	ef09                	bnez	a4,8020543c <rt_memheap_free+0x13a>
80205424:	02c92703          	lw	a4,44(s2)
80205428:	2761                	addiw	a4,a4,24
8020542a:	02e92623          	sw	a4,44(s2)
8020542e:	4798                	lw	a4,8(a5)
80205430:	c744                	sw	s1,12(a4)
80205432:	c498                	sw	a4,8(s1)
80205434:	4b98                	lw	a4,16(a5)
80205436:	4bdc                	lw	a5,20(a5)
80205438:	cb5c                	sw	a5,20(a4)
8020543a:	cb98                	sw	a4,16(a5)
8020543c:	ca91                	beqz	a3,80205450 <rt_memheap_free+0x14e>
8020543e:	03892783          	lw	a5,56(s2)
80205442:	4b98                	lw	a4,16(a5)
80205444:	c898                	sw	a4,16(s1)
80205446:	87ba                	mv	a5,a4
80205448:	4b58                	lw	a4,20(a4)
8020544a:	c8d8                	sw	a4,20(s1)
8020544c:	cb04                	sw	s1,16(a4)
8020544e:	cbc4                	sw	s1,20(a5)
80205450:	08c92783          	lw	a5,140(s2)
80205454:	ef81                	bnez	a5,8020546c <rt_memheap_free+0x16a>
80205456:	7402                	ld	s0,32(sp)
80205458:	70a2                	ld	ra,40(sp)
8020545a:	64e2                	ld	s1,24(sp)
8020545c:	6942                	ld	s2,16(sp)
8020545e:	0549851b          	addiw	a0,s3,84
80205462:	69a2                	ld	s3,8(sp)
80205464:	0301011b          	addiw	sp,sp,48
80205468:	b57fe06f          	j	80203fbe <rt_sem_release>
8020546c:	70a2                	ld	ra,40(sp)
8020546e:	7402                	ld	s0,32(sp)
80205470:	64e2                	ld	s1,24(sp)
80205472:	6942                	ld	s2,16(sp)
80205474:	69a2                	ld	s3,8(sp)
80205476:	0301011b          	addiw	sp,sp,48
8020547a:	8082                	ret
8020547c:	8082                	ret

8020547e <_memheap_alloc>:
8020547e:	fd01011b          	addiw	sp,sp,-48
80205482:	ec26                	sd	s1,24(sp)
80205484:	e84a                	sd	s2,16(sp)
80205486:	e052                	sd	s4,0(sp)
80205488:	f406                	sd	ra,40(sp)
8020548a:	f022                	sd	s0,32(sp)
8020548c:	e44e                	sd	s3,8(sp)
8020548e:	0005091b          	sext.w	s2,a0
80205492:	8a2e                	mv	s4,a1
80205494:	cf1ff0ef          	jal	80205184 <rt_memheap_alloc>
80205498:	0005079b          	sext.w	a5,a0
8020549c:	84be                	mv	s1,a5
8020549e:	eb9d                	bnez	a5,802054d4 <_memheap_alloc+0x56>
802054a0:	451d                	li	a0,7
802054a2:	23e000ef          	jal	802056e0 <rt_object_get_information>
802054a6:	0005079b          	sext.w	a5,a0
802054aa:	843e                	mv	s0,a5
802054ac:	ef89                	bnez	a5,802054c6 <_memheap_alloc+0x48>
802054ae:	31500613          	li	a2,789
802054b2:	00004597          	auipc	a1,0x4
802054b6:	97e58593          	addi	a1,a1,-1666 # 80208e30 <__FUNCTION__.0>
802054ba:	00003517          	auipc	a0,0x3
802054be:	dbe50513          	addi	a0,a0,-578 # 80208278 <rt_system_timer_thread_init+0x12ba>
802054c2:	a69ff0ef          	jal	80204f2a <rt_assert_handler>
802054c6:	00442983          	lw	s3,4(s0)
802054ca:	2411                	addiw	s0,s0,4
802054cc:	0009879b          	sext.w	a5,s3
802054d0:	00879c63          	bne	a5,s0,802054e8 <_memheap_alloc+0x6a>
802054d4:	70a2                	ld	ra,40(sp)
802054d6:	7402                	ld	s0,32(sp)
802054d8:	6942                	ld	s2,16(sp)
802054da:	69a2                	ld	s3,8(sp)
802054dc:	6a02                	ld	s4,0(sp)
802054de:	8526                	mv	a0,s1
802054e0:	64e2                	ld	s1,24(sp)
802054e2:	0301011b          	addiw	sp,sp,48
802054e6:	8082                	ret
802054e8:	fe49879b          	addiw	a5,s3,-28
802054ec:	853e                	mv	a0,a5
802054ee:	00f91563          	bne	s2,a5,802054f8 <_memheap_alloc+0x7a>
802054f2:	0009a983          	lw	s3,0(s3)
802054f6:	bfd9                	j	802054cc <_memheap_alloc+0x4e>
802054f8:	85d2                	mv	a1,s4
802054fa:	c8bff0ef          	jal	80205184 <rt_memheap_alloc>
802054fe:	0005079b          	sext.w	a5,a0
80205502:	dbe5                	beqz	a5,802054f2 <_memheap_alloc+0x74>
80205504:	84aa                	mv	s1,a0
80205506:	b7f9                	j	802054d4 <_memheap_alloc+0x56>

80205508 <_memheap_free>:
80205508:	dfbff06f          	j	80205302 <rt_memheap_free>

8020550c <rt_mp_create>:
8020550c:	fd01011b          	addiw	sp,sp,-48
80205510:	f022                	sd	s0,32(sp)
80205512:	ec26                	sd	s1,24(sp)
80205514:	e44e                	sd	s3,8(sp)
80205516:	f406                	sd	ra,40(sp)
80205518:	e84a                	sd	s2,16(sp)
8020551a:	e052                	sd	s4,0(sp)
8020551c:	842a                	mv	s0,a0
8020551e:	89ae                	mv	s3,a1
80205520:	84b2                	mv	s1,a2
80205522:	e37fe0ef          	jal	80204358 <rt_interrupt_get_nest>
80205526:	c51d                	beqz	a0,80205554 <rt_mp_create+0x48>
80205528:	00004597          	auipc	a1,0x4
8020552c:	95058593          	addi	a1,a1,-1712 # 80208e78 <__FUNCTION__.2>
80205530:	00002517          	auipc	a0,0x2
80205534:	6c050513          	addi	a0,a0,1728 # 80207bf0 <rt_system_timer_thread_init+0xc32>
80205538:	83fff0ef          	jal	80204d76 <rt_kprintf>
8020553c:	0b800613          	li	a2,184
80205540:	00004597          	auipc	a1,0x4
80205544:	93858593          	addi	a1,a1,-1736 # 80208e78 <__FUNCTION__.2>
80205548:	00003517          	auipc	a0,0x3
8020554c:	fc850513          	addi	a0,a0,-56 # 80208510 <rt_system_timer_thread_init+0x1552>
80205550:	9dbff0ef          	jal	80204f2a <rt_assert_handler>
80205554:	0004079b          	sext.w	a5,s0
80205558:	ef89                	bnez	a5,80205572 <rt_mp_create+0x66>
8020555a:	0bb00613          	li	a2,187
8020555e:	00004597          	auipc	a1,0x4
80205562:	91a58593          	addi	a1,a1,-1766 # 80208e78 <__FUNCTION__.2>
80205566:	00003517          	auipc	a0,0x3
8020556a:	d3a50513          	addi	a0,a0,-710 # 802082a0 <rt_system_timer_thread_init+0x12e2>
8020556e:	9bdff0ef          	jal	80204f2a <rt_assert_handler>
80205572:	00098363          	beqz	s3,80205578 <rt_mp_create+0x6c>
80205576:	ec89                	bnez	s1,80205590 <rt_mp_create+0x84>
80205578:	0bc00613          	li	a2,188
8020557c:	00004597          	auipc	a1,0x4
80205580:	8fc58593          	addi	a1,a1,-1796 # 80208e78 <__FUNCTION__.2>
80205584:	00003517          	auipc	a0,0x3
80205588:	d6450513          	addi	a0,a0,-668 # 802082e8 <rt_system_timer_thread_init+0x132a>
8020558c:	99fff0ef          	jal	80204f2a <rt_assert_handler>
80205590:	85a2                	mv	a1,s0
80205592:	4521                	li	a0,8
80205594:	304000ef          	jal	80205898 <rt_object_allocate>
80205598:	0005079b          	sext.w	a5,a0
8020559c:	843e                	mv	s0,a5
8020559e:	c78d                	beqz	a5,802055c8 <rt_mp_create+0xbc>
802055a0:	248d                	addiw	s1,s1,3
802055a2:	98f1                	andi	s1,s1,-4
802055a4:	2481                	sext.w	s1,s1
802055a6:	00448a1b          	addiw	s4,s1,4
802055aa:	033a053b          	mulw	a0,s4,s3
802055ae:	d7c4                	sw	s1,44(a5)
802055b0:	84d2                	mv	s1,s4
802055b2:	d408                	sw	a0,40(s0)
802055b4:	892a                	mv	s2,a0
802055b6:	a6bff0ef          	jal	80205020 <rt_malloc>
802055ba:	d048                	sw	a0,36(s0)
802055bc:	0005079b          	sext.w	a5,a0
802055c0:	ef99                	bnez	a5,802055de <rt_mp_create+0xd2>
802055c2:	8522                	mv	a0,s0
802055c4:	3a8000ef          	jal	8020596c <rt_object_delete>
802055c8:	4401                	li	s0,0
802055ca:	70a2                	ld	ra,40(sp)
802055cc:	8522                	mv	a0,s0
802055ce:	7402                	ld	s0,32(sp)
802055d0:	64e2                	ld	s1,24(sp)
802055d2:	6942                	ld	s2,16(sp)
802055d4:	69a2                	ld	s3,8(sp)
802055d6:	6a02                	ld	s4,0(sp)
802055d8:	0301011b          	addiw	sp,sp,48
802055dc:	8082                	ret
802055de:	03c4071b          	addiw	a4,s0,60
802055e2:	c038                	sw	a4,64(s0)
802055e4:	dc58                	sw	a4,60(s0)
802055e6:	03342a23          	sw	s3,52(s0)
802055ea:	03342c23          	sw	s3,56(s0)
802055ee:	4701                	li	a4,0
802055f0:	01371e63          	bne	a4,s3,8020560c <rt_mp_create+0x100>
802055f4:	4099093b          	subw	s2,s2,s1
802055f8:	0125093b          	addw	s2,a0,s2
802055fc:	00092023          	sw	zero,0(s2)
80205600:	d808                	sw	a0,48(s0)
80205602:	0444051b          	addiw	a0,s0,68
80205606:	80cfe0ef          	jal	80203612 <rt_spin_lock_init>
8020560a:	b7c1                	j	802055ca <rt_mp_create+0xbe>
8020560c:	00fa06bb          	addw	a3,s4,a5
80205610:	c394                	sw	a3,0(a5)
80205612:	2705                	addiw	a4,a4,1
80205614:	0006879b          	sext.w	a5,a3
80205618:	bfe1                	j	802055f0 <rt_mp_create+0xe4>

8020561a <rt_mp_free>:
8020561a:	0005079b          	sext.w	a5,a0
8020561e:	cbd9                	beqz	a5,802056b4 <rt_mp_free+0x9a>
80205620:	fc01011b          	addiw	sp,sp,-64
80205624:	f04a                	sd	s2,32(sp)
80205626:	ffc7a903          	lw	s2,-4(a5)
8020562a:	f822                	sd	s0,48(sp)
8020562c:	ec4e                	sd	s3,24(sp)
8020562e:	e456                	sd	s5,8(sp)
80205630:	843e                	mv	s0,a5
80205632:	ffc78a9b          	addiw	s5,a5,-4
80205636:	fc06                	sd	ra,56(sp)
80205638:	f426                	sd	s1,40(sp)
8020563a:	e852                	sd	s4,16(sp)
8020563c:	0000c797          	auipc	a5,0xc
80205640:	d647a783          	lw	a5,-668(a5) # 802113a0 <rt_mp_free_hook>
80205644:	89ca                	mv	s3,s2
80205646:	c781                	beqz	a5,8020564e <rt_mp_free+0x34>
80205648:	85a2                	mv	a1,s0
8020564a:	854a                	mv	a0,s2
8020564c:	9782                	jalr	a5
8020564e:	04490a1b          	addiw	s4,s2,68
80205652:	8552                	mv	a0,s4
80205654:	fcbfd0ef          	jal	8020361e <rt_spin_lock_irqsave>
80205658:	0389a783          	lw	a5,56(s3)
8020565c:	84aa                	mv	s1,a0
8020565e:	4581                	li	a1,0
80205660:	2785                	addiw	a5,a5,1
80205662:	02f9ac23          	sw	a5,56(s3)
80205666:	0309a783          	lw	a5,48(s3)
8020566a:	03c9051b          	addiw	a0,s2,60
8020566e:	fef42e23          	sw	a5,-4(s0)
80205672:	0359a823          	sw	s5,48(s3)
80205676:	ba2fe0ef          	jal	80203a18 <rt_susp_list_dequeue>
8020567a:	2501                	sext.w	a0,a0
8020567c:	85a6                	mv	a1,s1
8020567e:	cd19                	beqz	a0,8020569c <rt_mp_free+0x82>
80205680:	8552                	mv	a0,s4
80205682:	fb7fd0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80205686:	7442                	ld	s0,48(sp)
80205688:	70e2                	ld	ra,56(sp)
8020568a:	74a2                	ld	s1,40(sp)
8020568c:	7902                	ld	s2,32(sp)
8020568e:	69e2                	ld	s3,24(sp)
80205690:	6a42                	ld	s4,16(sp)
80205692:	6aa2                	ld	s5,8(sp)
80205694:	0401011b          	addiw	sp,sp,64
80205698:	1530006f          	j	80205fea <rt_schedule>
8020569c:	7442                	ld	s0,48(sp)
8020569e:	70e2                	ld	ra,56(sp)
802056a0:	74a2                	ld	s1,40(sp)
802056a2:	7902                	ld	s2,32(sp)
802056a4:	69e2                	ld	s3,24(sp)
802056a6:	6aa2                	ld	s5,8(sp)
802056a8:	8552                	mv	a0,s4
802056aa:	6a42                	ld	s4,16(sp)
802056ac:	0401011b          	addiw	sp,sp,64
802056b0:	f89fd06f          	j	80203638 <rt_spin_unlock_irqrestore>
802056b4:	8082                	ret

802056b6 <_match_name>:
802056b6:	3101                	addiw	sp,sp,-32
802056b8:	e822                	sd	s0,16(sp)
802056ba:	842e                	mv	s0,a1
802056bc:	418c                	lw	a1,0(a1)
802056be:	4661                	li	a2,24
802056c0:	e426                	sd	s1,8(sp)
802056c2:	ec06                	sd	ra,24(sp)
802056c4:	84aa                	mv	s1,a0
802056c6:	d9cff0ef          	jal	80204c62 <rt_strncmp>
802056ca:	e909                	bnez	a0,802056dc <_match_name+0x26>
802056cc:	c044                	sw	s1,4(s0)
802056ce:	4505                	li	a0,1
802056d0:	60e2                	ld	ra,24(sp)
802056d2:	6442                	ld	s0,16(sp)
802056d4:	64a2                	ld	s1,8(sp)
802056d6:	0201011b          	addiw	sp,sp,32
802056da:	8082                	ret
802056dc:	4501                	li	a0,0
802056de:	bfcd                	j	802056d0 <_match_name+0x1a>

802056e0 <rt_object_get_information>:
802056e0:	f7f57693          	andi	a3,a0,-129
802056e4:	00004517          	auipc	a0,0x4
802056e8:	acc50513          	addi	a0,a0,-1332 # 802091b0 <_object_container>
802056ec:	0005071b          	sext.w	a4,a0
802056f0:	4781                	li	a5,0
802056f2:	4631                	li	a2,12
802056f4:	430c                	lw	a1,0(a4)
802056f6:	00d59763          	bne	a1,a3,80205704 <rt_object_get_information+0x24>
802056fa:	4761                	li	a4,24
802056fc:	02f707bb          	mulw	a5,a4,a5
80205700:	9d3d                	addw	a0,a0,a5
80205702:	8082                	ret
80205704:	2785                	addiw	a5,a5,1
80205706:	2761                	addiw	a4,a4,24
80205708:	fec796e3          	bne	a5,a2,802056f4 <rt_object_get_information+0x14>
8020570c:	4501                	li	a0,0
8020570e:	8082                	ret

80205710 <rt_object_init>:
80205710:	f901011b          	addiw	sp,sp,-112
80205714:	f0a2                	sd	s0,96(sp)
80205716:	842a                	mv	s0,a0
80205718:	852e                	mv	a0,a1
8020571a:	eca6                	sd	s1,88(sp)
8020571c:	e8ca                	sd	s2,80(sp)
8020571e:	fc56                	sd	s5,56(sp)
80205720:	f486                	sd	ra,104(sp)
80205722:	e4ce                	sd	s3,72(sp)
80205724:	e0d2                	sd	s4,64(sp)
80205726:	f85a                	sd	s6,48(sp)
80205728:	f45e                	sd	s7,40(sp)
8020572a:	f062                	sd	s8,32(sp)
8020572c:	ec66                	sd	s9,24(sp)
8020572e:	e86a                	sd	s10,16(sp)
80205730:	e46e                	sd	s11,8(sp)
80205732:	892e                	mv	s2,a1
80205734:	8ab2                	mv	s5,a2
80205736:	fabff0ef          	jal	802056e0 <rt_object_get_information>
8020573a:	0005079b          	sext.w	a5,a0
8020573e:	84be                	mv	s1,a5
80205740:	ef89                	bnez	a5,8020575a <rt_object_init+0x4a>
80205742:	16700613          	li	a2,359
80205746:	00003597          	auipc	a1,0x3
8020574a:	7ea58593          	addi	a1,a1,2026 # 80208f30 <__FUNCTION__.7>
8020574e:	00003517          	auipc	a0,0x3
80205752:	b2a50513          	addi	a0,a0,-1238 # 80208278 <rt_system_timer_thread_init+0x12ba>
80205756:	fd4ff0ef          	jal	80204f2a <rt_assert_handler>
8020575a:	0104899b          	addiw	s3,s1,16
8020575e:	854e                	mv	a0,s3
80205760:	ebffd0ef          	jal	8020361e <rt_spin_lock_irqsave>
80205764:	0044aa03          	lw	s4,4(s1)
80205768:	00448c1b          	addiw	s8,s1,4
8020576c:	8b2a                	mv	s6,a0
8020576e:	8be2                	mv	s7,s8
80205770:	00040c9b          	sext.w	s9,s0
80205774:	00003d17          	auipc	s10,0x3
80205778:	7bcd0d13          	addi	s10,s10,1980 # 80208f30 <__FUNCTION__.7>
8020577c:	00003d97          	auipc	s11,0x3
80205780:	b94d8d93          	addi	s11,s11,-1132 # 80208310 <rt_system_timer_thread_init+0x1352>
80205784:	000a079b          	sext.w	a5,s4
80205788:	06fc1463          	bne	s8,a5,802057f0 <rt_object_init+0xe0>
8020578c:	85da                	mv	a1,s6
8020578e:	854e                	mv	a0,s3
80205790:	ea9fd0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80205794:	f8096913          	ori	s2,s2,-128
80205798:	01240c23          	sb	s2,24(s0)
8020579c:	4661                	li	a2,24
8020579e:	85d6                	mv	a1,s5
802057a0:	8522                	mv	a0,s0
802057a2:	c8eff0ef          	jal	80204c30 <rt_strncpy>
802057a6:	0000c797          	auipc	a5,0xc
802057aa:	c0e7a783          	lw	a5,-1010(a5) # 802113b4 <rt_object_attach_hook>
802057ae:	c399                	beqz	a5,802057b4 <rt_object_init+0xa4>
802057b0:	8522                	mv	a0,s0
802057b2:	9782                	jalr	a5
802057b4:	854e                	mv	a0,s3
802057b6:	e69fd0ef          	jal	8020361e <rt_spin_lock_irqsave>
802057ba:	40d8                	lw	a4,4(s1)
802057bc:	01c4079b          	addiw	a5,s0,28
802057c0:	70a6                	ld	ra,104(sp)
802057c2:	c35c                	sw	a5,4(a4)
802057c4:	cc58                	sw	a4,28(s0)
802057c6:	c0dc                	sw	a5,4(s1)
802057c8:	03742023          	sw	s7,32(s0)
802057cc:	7406                	ld	s0,96(sp)
802057ce:	64e6                	ld	s1,88(sp)
802057d0:	6946                	ld	s2,80(sp)
802057d2:	6a06                	ld	s4,64(sp)
802057d4:	7ae2                	ld	s5,56(sp)
802057d6:	7b42                	ld	s6,48(sp)
802057d8:	7ba2                	ld	s7,40(sp)
802057da:	7c02                	ld	s8,32(sp)
802057dc:	6ce2                	ld	s9,24(sp)
802057de:	6d42                	ld	s10,16(sp)
802057e0:	6da2                	ld	s11,8(sp)
802057e2:	85aa                	mv	a1,a0
802057e4:	854e                	mv	a0,s3
802057e6:	69a6                	ld	s3,72(sp)
802057e8:	0701011b          	addiw	sp,sp,112
802057ec:	e4dfd06f          	j	80203638 <rt_spin_unlock_irqrestore>
802057f0:	fe4a079b          	addiw	a5,s4,-28
802057f4:	00fc9863          	bne	s9,a5,80205804 <rt_object_init+0xf4>
802057f8:	17600613          	li	a2,374
802057fc:	85ea                	mv	a1,s10
802057fe:	856e                	mv	a0,s11
80205800:	f2aff0ef          	jal	80204f2a <rt_assert_handler>
80205804:	000a2a03          	lw	s4,0(s4)
80205808:	bfb5                	j	80205784 <rt_object_init+0x74>

8020580a <rt_object_detach>:
8020580a:	3101                	addiw	sp,sp,-32
8020580c:	e822                	sd	s0,16(sp)
8020580e:	0005079b          	sext.w	a5,a0
80205812:	ec06                	sd	ra,24(sp)
80205814:	e426                	sd	s1,8(sp)
80205816:	843e                	mv	s0,a5
80205818:	ef89                	bnez	a5,80205832 <rt_object_detach+0x28>
8020581a:	1a400613          	li	a2,420
8020581e:	00003597          	auipc	a1,0x3
80205822:	6fa58593          	addi	a1,a1,1786 # 80208f18 <__FUNCTION__.6>
80205826:	00003517          	auipc	a0,0x3
8020582a:	afa50513          	addi	a0,a0,-1286 # 80208320 <rt_system_timer_thread_init+0x1362>
8020582e:	efcff0ef          	jal	80204f2a <rt_assert_handler>
80205832:	0000c797          	auipc	a5,0xc
80205836:	b7e7a783          	lw	a5,-1154(a5) # 802113b0 <rt_object_detach_hook>
8020583a:	c399                	beqz	a5,80205840 <rt_object_detach+0x36>
8020583c:	8522                	mv	a0,s0
8020583e:	9782                	jalr	a5
80205840:	01844503          	lbu	a0,24(s0)
80205844:	e9dff0ef          	jal	802056e0 <rt_object_get_information>
80205848:	0005079b          	sext.w	a5,a0
8020584c:	84be                	mv	s1,a5
8020584e:	ef89                	bnez	a5,80205868 <rt_object_detach+0x5e>
80205850:	1a900613          	li	a2,425
80205854:	00003597          	auipc	a1,0x3
80205858:	6c458593          	addi	a1,a1,1732 # 80208f18 <__FUNCTION__.6>
8020585c:	00003517          	auipc	a0,0x3
80205860:	a1c50513          	addi	a0,a0,-1508 # 80208278 <rt_system_timer_thread_init+0x12ba>
80205864:	ec6ff0ef          	jal	80204f2a <rt_assert_handler>
80205868:	24c1                	addiw	s1,s1,16
8020586a:	8526                	mv	a0,s1
8020586c:	db3fd0ef          	jal	8020361e <rt_spin_lock_irqsave>
80205870:	4c54                	lw	a3,28(s0)
80205872:	5018                	lw	a4,32(s0)
80205874:	01c4079b          	addiw	a5,s0,28
80205878:	85aa                	mv	a1,a0
8020587a:	c2d8                	sw	a4,4(a3)
8020587c:	c314                	sw	a3,0(a4)
8020587e:	d01c                	sw	a5,32(s0)
80205880:	cc5c                	sw	a5,28(s0)
80205882:	8526                	mv	a0,s1
80205884:	db5fd0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80205888:	00040c23          	sb	zero,24(s0)
8020588c:	60e2                	ld	ra,24(sp)
8020588e:	6442                	ld	s0,16(sp)
80205890:	64a2                	ld	s1,8(sp)
80205892:	0201011b          	addiw	sp,sp,32
80205896:	8082                	ret

80205898 <rt_object_allocate>:
80205898:	fd01011b          	addiw	sp,sp,-48
8020589c:	e84a                	sd	s2,16(sp)
8020589e:	e44e                	sd	s3,8(sp)
802058a0:	f406                	sd	ra,40(sp)
802058a2:	f022                	sd	s0,32(sp)
802058a4:	ec26                	sd	s1,24(sp)
802058a6:	892a                	mv	s2,a0
802058a8:	89ae                	mv	s3,a1
802058aa:	aaffe0ef          	jal	80204358 <rt_interrupt_get_nest>
802058ae:	c51d                	beqz	a0,802058dc <rt_object_allocate+0x44>
802058b0:	00003597          	auipc	a1,0x3
802058b4:	65058593          	addi	a1,a1,1616 # 80208f00 <__FUNCTION__.5>
802058b8:	00002517          	auipc	a0,0x2
802058bc:	33850513          	addi	a0,a0,824 # 80207bf0 <rt_system_timer_thread_init+0xc32>
802058c0:	cb6ff0ef          	jal	80204d76 <rt_kprintf>
802058c4:	1c600613          	li	a2,454
802058c8:	00003597          	auipc	a1,0x3
802058cc:	63858593          	addi	a1,a1,1592 # 80208f00 <__FUNCTION__.5>
802058d0:	00003517          	auipc	a0,0x3
802058d4:	c4050513          	addi	a0,a0,-960 # 80208510 <rt_system_timer_thread_init+0x1552>
802058d8:	e52ff0ef          	jal	80204f2a <rt_assert_handler>
802058dc:	854a                	mv	a0,s2
802058de:	e03ff0ef          	jal	802056e0 <rt_object_get_information>
802058e2:	0005079b          	sext.w	a5,a0
802058e6:	84be                	mv	s1,a5
802058e8:	ef89                	bnez	a5,80205902 <rt_object_allocate+0x6a>
802058ea:	1ca00613          	li	a2,458
802058ee:	00003597          	auipc	a1,0x3
802058f2:	61258593          	addi	a1,a1,1554 # 80208f00 <__FUNCTION__.5>
802058f6:	00003517          	auipc	a0,0x3
802058fa:	98250513          	addi	a0,a0,-1662 # 80208278 <rt_system_timer_thread_init+0x12ba>
802058fe:	e2cff0ef          	jal	80204f2a <rt_assert_handler>
80205902:	44c8                	lw	a0,12(s1)
80205904:	f1cff0ef          	jal	80205020 <rt_malloc>
80205908:	0005079b          	sext.w	a5,a0
8020590c:	843e                	mv	s0,a5
8020590e:	c7b1                	beqz	a5,8020595a <rt_object_allocate+0xc2>
80205910:	44d0                	lw	a2,12(s1)
80205912:	4581                	li	a1,0
80205914:	9e0ff0ef          	jal	80204af4 <rt_memset>
80205918:	465d                	li	a2,23
8020591a:	01240c23          	sb	s2,24(s0)
8020591e:	00040ca3          	sb	zero,25(s0)
80205922:	85ce                	mv	a1,s3
80205924:	8522                	mv	a0,s0
80205926:	b0aff0ef          	jal	80204c30 <rt_strncpy>
8020592a:	0000c797          	auipc	a5,0xc
8020592e:	a8a7a783          	lw	a5,-1398(a5) # 802113b4 <rt_object_attach_hook>
80205932:	c399                	beqz	a5,80205938 <rt_object_allocate+0xa0>
80205934:	8522                	mv	a0,s0
80205936:	9782                	jalr	a5
80205938:	0104891b          	addiw	s2,s1,16
8020593c:	854a                	mv	a0,s2
8020593e:	ce1fd0ef          	jal	8020361e <rt_spin_lock_irqsave>
80205942:	40d8                	lw	a4,4(s1)
80205944:	01c4079b          	addiw	a5,s0,28
80205948:	2491                	addiw	s1,s1,4
8020594a:	c35c                	sw	a5,4(a4)
8020594c:	cc58                	sw	a4,28(s0)
8020594e:	c09c                	sw	a5,0(s1)
80205950:	85aa                	mv	a1,a0
80205952:	d004                	sw	s1,32(s0)
80205954:	854a                	mv	a0,s2
80205956:	ce3fd0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
8020595a:	70a2                	ld	ra,40(sp)
8020595c:	8522                	mv	a0,s0
8020595e:	7402                	ld	s0,32(sp)
80205960:	64e2                	ld	s1,24(sp)
80205962:	6942                	ld	s2,16(sp)
80205964:	69a2                	ld	s3,8(sp)
80205966:	0301011b          	addiw	sp,sp,48
8020596a:	8082                	ret

8020596c <rt_object_delete>:
8020596c:	3101                	addiw	sp,sp,-32
8020596e:	e822                	sd	s0,16(sp)
80205970:	0005079b          	sext.w	a5,a0
80205974:	ec06                	sd	ra,24(sp)
80205976:	e426                	sd	s1,8(sp)
80205978:	843e                	mv	s0,a5
8020597a:	ef89                	bnez	a5,80205994 <rt_object_delete+0x28>
8020597c:	20400613          	li	a2,516
80205980:	00003597          	auipc	a1,0x3
80205984:	56858593          	addi	a1,a1,1384 # 80208ee8 <__FUNCTION__.4>
80205988:	00003517          	auipc	a0,0x3
8020598c:	99850513          	addi	a0,a0,-1640 # 80208320 <rt_system_timer_thread_init+0x1362>
80205990:	d9aff0ef          	jal	80204f2a <rt_assert_handler>
80205994:	01840783          	lb	a5,24(s0)
80205998:	0007de63          	bgez	a5,802059b4 <rt_object_delete+0x48>
8020599c:	20500613          	li	a2,517
802059a0:	00003597          	auipc	a1,0x3
802059a4:	54858593          	addi	a1,a1,1352 # 80208ee8 <__FUNCTION__.4>
802059a8:	00003517          	auipc	a0,0x3
802059ac:	99050513          	addi	a0,a0,-1648 # 80208338 <rt_system_timer_thread_init+0x137a>
802059b0:	d7aff0ef          	jal	80204f2a <rt_assert_handler>
802059b4:	0000c797          	auipc	a5,0xc
802059b8:	9fc7a783          	lw	a5,-1540(a5) # 802113b0 <rt_object_detach_hook>
802059bc:	c399                	beqz	a5,802059c2 <rt_object_delete+0x56>
802059be:	8522                	mv	a0,s0
802059c0:	9782                	jalr	a5
802059c2:	01844503          	lbu	a0,24(s0)
802059c6:	d1bff0ef          	jal	802056e0 <rt_object_get_information>
802059ca:	0005079b          	sext.w	a5,a0
802059ce:	84be                	mv	s1,a5
802059d0:	ef89                	bnez	a5,802059ea <rt_object_delete+0x7e>
802059d2:	20b00613          	li	a2,523
802059d6:	00003597          	auipc	a1,0x3
802059da:	51258593          	addi	a1,a1,1298 # 80208ee8 <__FUNCTION__.4>
802059de:	00003517          	auipc	a0,0x3
802059e2:	89a50513          	addi	a0,a0,-1894 # 80208278 <rt_system_timer_thread_init+0x12ba>
802059e6:	d44ff0ef          	jal	80204f2a <rt_assert_handler>
802059ea:	24c1                	addiw	s1,s1,16
802059ec:	8526                	mv	a0,s1
802059ee:	c31fd0ef          	jal	8020361e <rt_spin_lock_irqsave>
802059f2:	4c54                	lw	a3,28(s0)
802059f4:	5018                	lw	a4,32(s0)
802059f6:	01c4079b          	addiw	a5,s0,28
802059fa:	85aa                	mv	a1,a0
802059fc:	c2d8                	sw	a4,4(a3)
802059fe:	c314                	sw	a3,0(a4)
80205a00:	8526                	mv	a0,s1
80205a02:	d01c                	sw	a5,32(s0)
80205a04:	cc5c                	sw	a5,28(s0)
80205a06:	c33fd0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80205a0a:	00040c23          	sb	zero,24(s0)
80205a0e:	8522                	mv	a0,s0
80205a10:	6442                	ld	s0,16(sp)
80205a12:	60e2                	ld	ra,24(sp)
80205a14:	64a2                	ld	s1,8(sp)
80205a16:	0201011b          	addiw	sp,sp,32
80205a1a:	e4eff06f          	j	80205068 <rt_free>

80205a1e <rt_object_is_systemobject>:
80205a1e:	3141                	addiw	sp,sp,-16
80205a20:	e022                	sd	s0,0(sp)
80205a22:	0005079b          	sext.w	a5,a0
80205a26:	e406                	sd	ra,8(sp)
80205a28:	843e                	mv	s0,a5
80205a2a:	ef89                	bnez	a5,80205a44 <rt_object_is_systemobject+0x26>
80205a2c:	22900613          	li	a2,553
80205a30:	00003597          	auipc	a1,0x3
80205a34:	49858593          	addi	a1,a1,1176 # 80208ec8 <__FUNCTION__.3>
80205a38:	00003517          	auipc	a0,0x3
80205a3c:	8e850513          	addi	a0,a0,-1816 # 80208320 <rt_system_timer_thread_init+0x1362>
80205a40:	ceaff0ef          	jal	80204f2a <rt_assert_handler>
80205a44:	01840503          	lb	a0,24(s0)
80205a48:	60a2                	ld	ra,8(sp)
80205a4a:	6402                	ld	s0,0(sp)
80205a4c:	01f5551b          	srliw	a0,a0,0x1f
80205a50:	2141                	addiw	sp,sp,16
80205a52:	8082                	ret

80205a54 <rt_object_get_type>:
80205a54:	3141                	addiw	sp,sp,-16
80205a56:	e022                	sd	s0,0(sp)
80205a58:	0005079b          	sext.w	a5,a0
80205a5c:	e406                	sd	ra,8(sp)
80205a5e:	843e                	mv	s0,a5
80205a60:	ef89                	bnez	a5,80205a7a <rt_object_get_type+0x26>
80205a62:	23c00613          	li	a2,572
80205a66:	00003597          	auipc	a1,0x3
80205a6a:	44a58593          	addi	a1,a1,1098 # 80208eb0 <__FUNCTION__.2>
80205a6e:	00003517          	auipc	a0,0x3
80205a72:	8b250513          	addi	a0,a0,-1870 # 80208320 <rt_system_timer_thread_init+0x1362>
80205a76:	cb4ff0ef          	jal	80204f2a <rt_assert_handler>
80205a7a:	01844503          	lbu	a0,24(s0)
80205a7e:	60a2                	ld	ra,8(sp)
80205a80:	6402                	ld	s0,0(sp)
80205a82:	07f57513          	andi	a0,a0,127
80205a86:	2141                	addiw	sp,sp,16
80205a88:	8082                	ret

80205a8a <rt_object_for_each>:
80205a8a:	fc01011b          	addiw	sp,sp,-64
80205a8e:	e456                	sd	s5,8(sp)
80205a90:	e05a                	sd	s6,0(sp)
80205a92:	fc06                	sd	ra,56(sp)
80205a94:	f822                	sd	s0,48(sp)
80205a96:	f426                	sd	s1,40(sp)
80205a98:	f04a                	sd	s2,32(sp)
80205a9a:	ec4e                	sd	s3,24(sp)
80205a9c:	e852                	sd	s4,16(sp)
80205a9e:	8aae                	mv	s5,a1
80205aa0:	8b32                	mv	s6,a2
80205aa2:	c3fff0ef          	jal	802056e0 <rt_object_get_information>
80205aa6:	0005079b          	sext.w	a5,a0
80205aaa:	5529                	li	a0,-22
80205aac:	cfb5                	beqz	a5,80205b28 <rt_object_for_each+0x9e>
80205aae:	843e                	mv	s0,a5
80205ab0:	8a9fe0ef          	jal	80204358 <rt_interrupt_get_nest>
80205ab4:	c51d                	beqz	a0,80205ae2 <rt_object_for_each+0x58>
80205ab6:	00003597          	auipc	a1,0x3
80205aba:	3e258593          	addi	a1,a1,994 # 80208e98 <__FUNCTION__.1>
80205abe:	00002517          	auipc	a0,0x2
80205ac2:	13250513          	addi	a0,a0,306 # 80207bf0 <rt_system_timer_thread_init+0xc32>
80205ac6:	ab0ff0ef          	jal	80204d76 <rt_kprintf>
80205aca:	25e00613          	li	a2,606
80205ace:	00003597          	auipc	a1,0x3
80205ad2:	3ca58593          	addi	a1,a1,970 # 80208e98 <__FUNCTION__.1>
80205ad6:	00003517          	auipc	a0,0x3
80205ada:	a3a50513          	addi	a0,a0,-1478 # 80208510 <rt_system_timer_thread_init+0x1552>
80205ade:	c4cff0ef          	jal	80204f2a <rt_assert_handler>
80205ae2:	01040a1b          	addiw	s4,s0,16
80205ae6:	8552                	mv	a0,s4
80205ae8:	b37fd0ef          	jal	8020361e <rt_spin_lock_irqsave>
80205aec:	892a                	mv	s2,a0
80205aee:	00442983          	lw	s3,4(s0)
80205af2:	2411                	addiw	s0,s0,4
80205af4:	0009879b          	sext.w	a5,s3
80205af8:	00879863          	bne	a5,s0,80205b08 <rt_object_for_each+0x7e>
80205afc:	8552                	mv	a0,s4
80205afe:	85ca                	mv	a1,s2
80205b00:	b39fd0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80205b04:	4501                	li	a0,0
80205b06:	a00d                	j	80205b28 <rt_object_for_each+0x9e>
80205b08:	85da                	mv	a1,s6
80205b0a:	fe49851b          	addiw	a0,s3,-28
80205b0e:	9a82                	jalr	s5
80205b10:	84aa                	mv	s1,a0
80205b12:	c515                	beqz	a0,80205b3e <rt_object_for_each+0xb4>
80205b14:	85ca                	mv	a1,s2
80205b16:	8552                	mv	a0,s4
80205b18:	b21fd0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80205b1c:	87a6                	mv	a5,s1
80205b1e:	00905363          	blez	s1,80205b24 <rt_object_for_each+0x9a>
80205b22:	4781                	li	a5,0
80205b24:	0007851b          	sext.w	a0,a5
80205b28:	70e2                	ld	ra,56(sp)
80205b2a:	7442                	ld	s0,48(sp)
80205b2c:	74a2                	ld	s1,40(sp)
80205b2e:	7902                	ld	s2,32(sp)
80205b30:	69e2                	ld	s3,24(sp)
80205b32:	6a42                	ld	s4,16(sp)
80205b34:	6aa2                	ld	s5,8(sp)
80205b36:	6b02                	ld	s6,0(sp)
80205b38:	0401011b          	addiw	sp,sp,64
80205b3c:	8082                	ret
80205b3e:	0009a983          	lw	s3,0(s3)
80205b42:	bf4d                	j	80205af4 <rt_object_for_each+0x6a>

80205b44 <rt_object_find>:
80205b44:	3101                	addiw	sp,sp,-32
80205b46:	ec06                	sd	ra,24(sp)
80205b48:	e822                	sd	s0,16(sp)
80205b4a:	c42a                	sw	a0,8(sp)
80205b4c:	c602                	sw	zero,12(sp)
80205b4e:	0005079b          	sext.w	a5,a0
80205b52:	c7a9                	beqz	a5,80205b9c <rt_object_find+0x58>
80205b54:	842e                	mv	s0,a1
80205b56:	803fe0ef          	jal	80204358 <rt_interrupt_get_nest>
80205b5a:	c51d                	beqz	a0,80205b88 <rt_object_find+0x44>
80205b5c:	00003597          	auipc	a1,0x3
80205b60:	32c58593          	addi	a1,a1,812 # 80208e88 <__FUNCTION__.0>
80205b64:	00002517          	auipc	a0,0x2
80205b68:	08c50513          	addi	a0,a0,140 # 80207bf0 <rt_system_timer_thread_init+0xc32>
80205b6c:	a0aff0ef          	jal	80204d76 <rt_kprintf>
80205b70:	2a200613          	li	a2,674
80205b74:	00003597          	auipc	a1,0x3
80205b78:	31458593          	addi	a1,a1,788 # 80208e88 <__FUNCTION__.0>
80205b7c:	00003517          	auipc	a0,0x3
80205b80:	99450513          	addi	a0,a0,-1644 # 80208510 <rt_system_timer_thread_init+0x1552>
80205b84:	ba6ff0ef          	jal	80204f2a <rt_assert_handler>
80205b88:	0081061b          	addiw	a2,sp,8
80205b8c:	00000597          	auipc	a1,0x0
80205b90:	b2a58593          	addi	a1,a1,-1238 # 802056b6 <_match_name>
80205b94:	8522                	mv	a0,s0
80205b96:	ef5ff0ef          	jal	80205a8a <rt_object_for_each>
80205b9a:	4532                	lw	a0,12(sp)
80205b9c:	60e2                	ld	ra,24(sp)
80205b9e:	6442                	ld	s0,16(sp)
80205ba0:	0201011b          	addiw	sp,sp,32
80205ba4:	8082                	ret

80205ba6 <rt_sched_thread_init_ctx>:
80205ba6:	04050223          	sb	zero,68(a0)
80205baa:	ac9d                	j	80205e20 <rt_sched_thread_init_priv>

80205bac <rt_sched_thread_timer_start>:
80205bac:	04554783          	lbu	a5,69(a0)
80205bb0:	0027e793          	ori	a5,a5,2
80205bb4:	04f502a3          	sb	a5,69(a0)
80205bb8:	4501                	li	a0,0
80205bba:	8082                	ret

80205bbc <rt_sched_thread_timer_stop>:
80205bbc:	04554783          	lbu	a5,69(a0)
80205bc0:	8b89                	andi	a5,a5,2
80205bc2:	c395                	beqz	a5,80205be6 <rt_sched_thread_timer_stop+0x2a>
80205bc4:	3141                	addiw	sp,sp,-16
80205bc6:	e022                	sd	s0,0(sp)
80205bc8:	842a                	mv	s0,a0
80205bca:	0585051b          	addiw	a0,a0,88
80205bce:	e406                	sd	ra,8(sp)
80205bd0:	0a8010ef          	jal	80206c78 <rt_timer_stop>
80205bd4:	04544783          	lbu	a5,69(s0)
80205bd8:	60a2                	ld	ra,8(sp)
80205bda:	9bf5                	andi	a5,a5,-3
80205bdc:	04f402a3          	sb	a5,69(s0)
80205be0:	6402                	ld	s0,0(sp)
80205be2:	2141                	addiw	sp,sp,16
80205be4:	8082                	ret
80205be6:	4501                	li	a0,0
80205be8:	8082                	ret

80205bea <rt_sched_thread_get_stat>:
80205bea:	04454503          	lbu	a0,68(a0)
80205bee:	891d                	andi	a0,a0,7
80205bf0:	8082                	ret

80205bf2 <rt_sched_thread_get_curr_prio>:
80205bf2:	05054503          	lbu	a0,80(a0)
80205bf6:	8082                	ret

80205bf8 <rt_sched_thread_get_init_prio>:
80205bf8:	05154503          	lbu	a0,81(a0)
80205bfc:	8082                	ret

80205bfe <rt_sched_thread_is_suspended>:
80205bfe:	04454503          	lbu	a0,68(a0)
80205c02:	0025551b          	srliw	a0,a0,0x2
80205c06:	8905                	andi	a0,a0,1
80205c08:	8082                	ret

80205c0a <rt_sched_thread_close>:
80205c0a:	4785                	li	a5,1
80205c0c:	04f50223          	sb	a5,68(a0)
80205c10:	4501                	li	a0,0
80205c12:	8082                	ret

80205c14 <rt_sched_thread_yield>:
80205c14:	453c                	lw	a5,72(a0)
80205c16:	c57c                	sw	a5,76(a0)
80205c18:	04454783          	lbu	a5,68(a0)
80205c1c:	0087e793          	ori	a5,a5,8
80205c20:	04f50223          	sb	a5,68(a0)
80205c24:	4501                	li	a0,0
80205c26:	8082                	ret

80205c28 <rt_sched_thread_ready>:
80205c28:	04454783          	lbu	a5,68(a0)
80205c2c:	8b91                	andi	a5,a5,4
80205c2e:	cf8d                	beqz	a5,80205c68 <rt_sched_thread_ready+0x40>
80205c30:	04554783          	lbu	a5,69(a0)
80205c34:	3141                	addiw	sp,sp,-16
80205c36:	e022                	sd	s0,0(sp)
80205c38:	e406                	sd	ra,8(sp)
80205c3a:	8b89                	andi	a5,a5,2
80205c3c:	842a                	mv	s0,a0
80205c3e:	e38d                	bnez	a5,80205c60 <rt_sched_thread_ready+0x38>
80205c40:	5c54                	lw	a3,60(s0)
80205c42:	4038                	lw	a4,64(s0)
80205c44:	03c4079b          	addiw	a5,s0,60
80205c48:	8522                	mv	a0,s0
80205c4a:	c2d8                	sw	a4,4(a3)
80205c4c:	c314                	sw	a3,0(a4)
80205c4e:	c03c                	sw	a5,64(s0)
80205c50:	dc5c                	sw	a5,60(s0)
80205c52:	226000ef          	jal	80205e78 <rt_sched_insert_thread>
80205c56:	4501                	li	a0,0
80205c58:	60a2                	ld	ra,8(sp)
80205c5a:	6402                	ld	s0,0(sp)
80205c5c:	2141                	addiw	sp,sp,16
80205c5e:	8082                	ret
80205c60:	f5dff0ef          	jal	80205bbc <rt_sched_thread_timer_stop>
80205c64:	dd71                	beqz	a0,80205c40 <rt_sched_thread_ready+0x18>
80205c66:	bfcd                	j	80205c58 <rt_sched_thread_ready+0x30>
80205c68:	5529                	li	a0,-22
80205c6a:	8082                	ret

80205c6c <rt_sched_tick_increase>:
80205c6c:	3101                	addiw	sp,sp,-32
80205c6e:	ec06                	sd	ra,24(sp)
80205c70:	e822                	sd	s0,16(sp)
80205c72:	185000ef          	jal	802065f6 <rt_thread_self>
80205c76:	842a                	mv	s0,a0
80205c78:	00c1051b          	addiw	a0,sp,12
80205c7c:	12e000ef          	jal	80205daa <rt_sched_lock>
80205c80:	447c                	lw	a5,76(s0)
80205c82:	fff7871b          	addiw	a4,a5,-1
80205c86:	c478                	sw	a4,76(s0)
80205c88:	cb11                	beqz	a4,80205c9c <rt_sched_tick_increase+0x30>
80205c8a:	4532                	lw	a0,12(sp)
80205c8c:	140000ef          	jal	80205dcc <rt_sched_unlock>
80205c90:	60e2                	ld	ra,24(sp)
80205c92:	6442                	ld	s0,16(sp)
80205c94:	4501                	li	a0,0
80205c96:	0201011b          	addiw	sp,sp,32
80205c9a:	8082                	ret
80205c9c:	8522                	mv	a0,s0
80205c9e:	f77ff0ef          	jal	80205c14 <rt_sched_thread_yield>
80205ca2:	4532                	lw	a0,12(sp)
80205ca4:	4bc000ef          	jal	80206160 <rt_sched_unlock_n_resched>
80205ca8:	b7e5                	j	80205c90 <rt_sched_tick_increase+0x24>

80205caa <rt_sched_thread_change_priority>:
80205caa:	3101                	addiw	sp,sp,-32
80205cac:	e822                	sd	s0,16(sp)
80205cae:	e426                	sd	s1,8(sp)
80205cb0:	ec06                	sd	ra,24(sp)
80205cb2:	e04a                	sd	s2,0(sp)
80205cb4:	47fd                	li	a5,31
80205cb6:	842a                	mv	s0,a0
80205cb8:	84ae                	mv	s1,a1
80205cba:	00b7fe63          	bgeu	a5,a1,80205cd6 <rt_sched_thread_change_priority+0x2c>
80205cbe:	0b100613          	li	a2,177
80205cc2:	00003597          	auipc	a1,0x3
80205cc6:	29e58593          	addi	a1,a1,670 # 80208f60 <__FUNCTION__.1>
80205cca:	00002517          	auipc	a0,0x2
80205cce:	69e50513          	addi	a0,a0,1694 # 80208368 <rt_system_timer_thread_init+0x13aa>
80205cd2:	a58ff0ef          	jal	80204f2a <rt_assert_handler>
80205cd6:	04444783          	lbu	a5,68(s0)
80205cda:	4905                	li	s2,1
80205cdc:	4709                	li	a4,2
80205cde:	8b9d                	andi	a5,a5,7
80205ce0:	0099193b          	sllw	s2,s2,s1
80205ce4:	02e79663          	bne	a5,a4,80205d10 <rt_sched_thread_change_priority+0x66>
80205ce8:	8522                	mv	a0,s0
80205cea:	23e000ef          	jal	80205f28 <rt_sched_remove_thread>
80205cee:	8522                	mv	a0,s0
80205cf0:	04940823          	sb	s1,80(s0)
80205cf4:	05242a23          	sw	s2,84(s0)
80205cf8:	04040223          	sb	zero,68(s0)
80205cfc:	17c000ef          	jal	80205e78 <rt_sched_insert_thread>
80205d00:	60e2                	ld	ra,24(sp)
80205d02:	6442                	ld	s0,16(sp)
80205d04:	64a2                	ld	s1,8(sp)
80205d06:	6902                	ld	s2,0(sp)
80205d08:	4501                	li	a0,0
80205d0a:	0201011b          	addiw	sp,sp,32
80205d0e:	8082                	ret
80205d10:	04940823          	sb	s1,80(s0)
80205d14:	05242a23          	sw	s2,84(s0)
80205d18:	b7e5                	j	80205d00 <rt_sched_thread_change_priority+0x56>

80205d1a <rt_scheduler_stack_check>:
80205d1a:	3101                	addiw	sp,sp,-32
80205d1c:	0005079b          	sext.w	a5,a0
80205d20:	ec06                	sd	ra,24(sp)
80205d22:	873e                	mv	a4,a5
80205d24:	ef99                	bnez	a5,80205d42 <rt_scheduler_stack_check+0x28>
80205d26:	0de00613          	li	a2,222
80205d2a:	00003597          	auipc	a1,0x3
80205d2e:	21658593          	addi	a1,a1,534 # 80208f40 <__FUNCTION__.0>
80205d32:	00002517          	auipc	a0,0x2
80205d36:	65e50513          	addi	a0,a0,1630 # 80208390 <rt_system_timer_thread_init+0x13d2>
80205d3a:	c63e                	sw	a5,12(sp)
80205d3c:	9eeff0ef          	jal	80204f2a <rt_assert_handler>
80205d40:	4732                	lw	a4,12(sp)
80205d42:	5b10                	lw	a2,48(a4)
80205d44:	02300793          	li	a5,35
80205d48:	00064683          	lbu	a3,0(a2)
80205d4c:	00f69b63          	bne	a3,a5,80205d62 <rt_scheduler_stack_check+0x48>
80205d50:	5354                	lw	a3,36(a4)
80205d52:	0006079b          	sext.w	a5,a2
80205d56:	00d67663          	bgeu	a2,a3,80205d62 <rt_scheduler_stack_check+0x48>
80205d5a:	5b50                	lw	a2,52(a4)
80205d5c:	9e3d                	addw	a2,a2,a5
80205d5e:	00d67f63          	bgeu	a2,a3,80205d7c <rt_scheduler_stack_check+0x62>
80205d62:	00002697          	auipc	a3,0x2
80205d66:	64668693          	addi	a3,a3,1606 # 802083a8 <rt_system_timer_thread_init+0x13ea>
80205d6a:	4605                	li	a2,1
80205d6c:	00002597          	auipc	a1,0x2
80205d70:	65c58593          	addi	a1,a1,1628 # 802083c8 <rt_system_timer_thread_init+0x140a>
80205d74:	450d                	li	a0,3
80205d76:	ff7fa0ef          	jal	80200d6c <ulog_output>
80205d7a:	a001                	j	80205d7a <rt_scheduler_stack_check+0x60>
80205d7c:	0207879b          	addiw	a5,a5,32
80205d80:	02d7e163          	bltu	a5,a3,80205da2 <rt_scheduler_stack_check+0x88>
80205d84:	60e2                	ld	ra,24(sp)
80205d86:	00002697          	auipc	a3,0x2
80205d8a:	65268693          	addi	a3,a3,1618 # 802083d8 <rt_system_timer_thread_init+0x141a>
80205d8e:	4605                	li	a2,1
80205d90:	00002597          	auipc	a1,0x2
80205d94:	63858593          	addi	a1,a1,1592 # 802083c8 <rt_system_timer_thread_init+0x140a>
80205d98:	4511                	li	a0,4
80205d9a:	0201011b          	addiw	sp,sp,32
80205d9e:	fcffa06f          	j	80200d6c <ulog_output>
80205da2:	60e2                	ld	ra,24(sp)
80205da4:	0201011b          	addiw	sp,sp,32
80205da8:	8082                	ret

80205daa <rt_sched_lock>:
80205daa:	0005079b          	sext.w	a5,a0
80205dae:	cf89                	beqz	a5,80205dc8 <rt_sched_lock+0x1e>
80205db0:	3141                	addiw	sp,sp,-16
80205db2:	e022                	sd	s0,0(sp)
80205db4:	e406                	sd	ra,8(sp)
80205db6:	843e                	mv	s0,a5
80205db8:	e40fa0ef          	jal	802003f8 <rt_hw_interrupt_disable>
80205dbc:	c008                	sw	a0,0(s0)
80205dbe:	60a2                	ld	ra,8(sp)
80205dc0:	6402                	ld	s0,0(sp)
80205dc2:	4501                	li	a0,0
80205dc4:	2141                	addiw	sp,sp,16
80205dc6:	8082                	ret
80205dc8:	5529                	li	a0,-22
80205dca:	8082                	ret

80205dcc <rt_sched_unlock>:
80205dcc:	3141                	addiw	sp,sp,-16
80205dce:	e406                	sd	ra,8(sp)
80205dd0:	e22fa0ef          	jal	802003f2 <rt_hw_interrupt_enable>
80205dd4:	60a2                	ld	ra,8(sp)
80205dd6:	4501                	li	a0,0
80205dd8:	2141                	addiw	sp,sp,16
80205dda:	8082                	ret

80205ddc <rt_system_scheduler_init>:
80205ddc:	0000b797          	auipc	a5,0xb
80205de0:	5e079323          	sh	zero,1510(a5) # 802113c2 <rt_scheduler_lock_nest>
80205de4:	00010797          	auipc	a5,0x10
80205de8:	e6c78793          	addi	a5,a5,-404 # 80215c50 <rt_thread_priority_table>
80205dec:	00010717          	auipc	a4,0x10
80205df0:	f6470713          	addi	a4,a4,-156 # 80215d50 <__bss_end>
80205df4:	2781                	sext.w	a5,a5
80205df6:	2701                	sext.w	a4,a4
80205df8:	c3dc                	sw	a5,4(a5)
80205dfa:	c39c                	sw	a5,0(a5)
80205dfc:	27a1                	addiw	a5,a5,8
80205dfe:	fee79de3          	bne	a5,a4,80205df8 <rt_system_scheduler_init+0x1c>
80205e02:	0000b797          	auipc	a5,0xb
80205e06:	5c07a123          	sw	zero,1474(a5) # 802113c4 <rt_thread_ready_priority_group>
80205e0a:	8082                	ret

80205e0c <rt_sched_thread_startup>:
80205e0c:	05054703          	lbu	a4,80(a0)
80205e10:	4785                	li	a5,1
80205e12:	00e797bb          	sllw	a5,a5,a4
80205e16:	c97c                	sw	a5,84(a0)
80205e18:	4791                	li	a5,4
80205e1a:	04f50223          	sb	a5,68(a0)
80205e1e:	8082                	ret

80205e20 <rt_sched_thread_init_priv>:
80205e20:	3101                	addiw	sp,sp,-32
80205e22:	e822                	sd	s0,16(sp)
80205e24:	e426                	sd	s1,8(sp)
80205e26:	e04a                	sd	s2,0(sp)
80205e28:	03c5079b          	addiw	a5,a0,60
80205e2c:	ec06                	sd	ra,24(sp)
80205e2e:	c13c                	sw	a5,64(a0)
80205e30:	dd5c                	sw	a5,60(a0)
80205e32:	47fd                	li	a5,31
80205e34:	842a                	mv	s0,a0
80205e36:	892e                	mv	s2,a1
80205e38:	84b2                	mv	s1,a2
80205e3a:	00c7fe63          	bgeu	a5,a2,80205e56 <rt_sched_thread_init_priv+0x36>
80205e3e:	15c00613          	li	a2,348
80205e42:	00003597          	auipc	a1,0x3
80205e46:	16e58593          	addi	a1,a1,366 # 80208fb0 <__FUNCTION__.2>
80205e4a:	00002517          	auipc	a0,0x2
80205e4e:	51e50513          	addi	a0,a0,1310 # 80208368 <rt_system_timer_thread_init+0x13aa>
80205e52:	8d8ff0ef          	jal	80204f2a <rt_assert_handler>
80205e56:	049408a3          	sb	s1,81(s0)
80205e5a:	04940823          	sb	s1,80(s0)
80205e5e:	05242423          	sw	s2,72(s0)
80205e62:	05242623          	sw	s2,76(s0)
80205e66:	60e2                	ld	ra,24(sp)
80205e68:	04042a23          	sw	zero,84(s0)
80205e6c:	6442                	ld	s0,16(sp)
80205e6e:	64a2                	ld	s1,8(sp)
80205e70:	6902                	ld	s2,0(sp)
80205e72:	0201011b          	addiw	sp,sp,32
80205e76:	8082                	ret

80205e78 <rt_sched_insert_thread>:
80205e78:	3101                	addiw	sp,sp,-32
80205e7a:	e822                	sd	s0,16(sp)
80205e7c:	e04a                	sd	s2,0(sp)
80205e7e:	ec06                	sd	ra,24(sp)
80205e80:	0005091b          	sext.w	s2,a0
80205e84:	e426                	sd	s1,8(sp)
80205e86:	844a                	mv	s0,s2
80205e88:	00091e63          	bnez	s2,80205ea4 <rt_sched_insert_thread+0x2c>
80205e8c:	17800613          	li	a2,376
80205e90:	00003597          	auipc	a1,0x3
80205e94:	10858593          	addi	a1,a1,264 # 80208f98 <__FUNCTION__.1>
80205e98:	00002517          	auipc	a0,0x2
80205e9c:	4f850513          	addi	a0,a0,1272 # 80208390 <rt_system_timer_thread_init+0x13d2>
80205ea0:	88aff0ef          	jal	80204f2a <rt_assert_handler>
80205ea4:	d54fa0ef          	jal	802003f8 <rt_hw_interrupt_disable>
80205ea8:	84aa                	mv	s1,a0
80205eaa:	74c000ef          	jal	802065f6 <rt_thread_self>
80205eae:	2501                	sext.w	a0,a0
80205eb0:	04444703          	lbu	a4,68(s0)
80205eb4:	03251063          	bne	a0,s2,80205ed4 <rt_sched_insert_thread+0x5c>
80205eb8:	9b61                	andi	a4,a4,-8
80205eba:	00376713          	ori	a4,a4,3
80205ebe:	04e40223          	sb	a4,68(s0)
80205ec2:	6442                	ld	s0,16(sp)
80205ec4:	60e2                	ld	ra,24(sp)
80205ec6:	6902                	ld	s2,0(sp)
80205ec8:	8526                	mv	a0,s1
80205eca:	64a2                	ld	s1,8(sp)
80205ecc:	0201011b          	addiw	sp,sp,32
80205ed0:	d22fa06f          	j	802003f2 <rt_hw_interrupt_enable>
80205ed4:	05044683          	lbu	a3,80(s0)
80205ed8:	ff877793          	andi	a5,a4,-8
80205edc:	0027e793          	ori	a5,a5,2
80205ee0:	0036961b          	slliw	a2,a3,0x3
80205ee4:	04f40223          	sb	a5,68(s0)
80205ee8:	8b21                	andi	a4,a4,8
80205eea:	00010797          	auipc	a5,0x10
80205eee:	d6678793          	addi	a5,a5,-666 # 80215c50 <rt_thread_priority_table>
80205ef2:	9e3d                	addw	a2,a2,a5
80205ef4:	03c4059b          	addiw	a1,s0,60
80205ef8:	0036969b          	slliw	a3,a3,0x3
80205efc:	cf19                	beqz	a4,80205f1a <rt_sched_insert_thread+0xa2>
80205efe:	4258                	lw	a4,4(a2)
80205f00:	c30c                	sw	a1,0(a4)
80205f02:	c038                	sw	a4,64(s0)
80205f04:	c24c                	sw	a1,4(a2)
80205f06:	dc50                	sw	a2,60(s0)
80205f08:	0000b717          	auipc	a4,0xb
80205f0c:	4bc70713          	addi	a4,a4,1212 # 802113c4 <rt_thread_ready_priority_group>
80205f10:	4314                	lw	a3,0(a4)
80205f12:	487c                	lw	a5,84(s0)
80205f14:	8fd5                	or	a5,a5,a3
80205f16:	c31c                	sw	a5,0(a4)
80205f18:	b76d                	j	80205ec2 <rt_sched_insert_thread+0x4a>
80205f1a:	9fb5                	addw	a5,a5,a3
80205f1c:	4398                	lw	a4,0(a5)
80205f1e:	c34c                	sw	a1,4(a4)
80205f20:	dc58                	sw	a4,60(s0)
80205f22:	c38c                	sw	a1,0(a5)
80205f24:	c030                	sw	a2,64(s0)
80205f26:	b7cd                	j	80205f08 <rt_sched_insert_thread+0x90>

80205f28 <rt_sched_remove_thread>:
80205f28:	3141                	addiw	sp,sp,-16
80205f2a:	e022                	sd	s0,0(sp)
80205f2c:	0005079b          	sext.w	a5,a0
80205f30:	e406                	sd	ra,8(sp)
80205f32:	843e                	mv	s0,a5
80205f34:	ef89                	bnez	a5,80205f4e <rt_sched_remove_thread+0x26>
80205f36:	1ac00613          	li	a2,428
80205f3a:	00003597          	auipc	a1,0x3
80205f3e:	04658593          	addi	a1,a1,70 # 80208f80 <__FUNCTION__.0>
80205f42:	00002517          	auipc	a0,0x2
80205f46:	44e50513          	addi	a0,a0,1102 # 80208390 <rt_system_timer_thread_init+0x13d2>
80205f4a:	fe1fe0ef          	jal	80204f2a <rt_assert_handler>
80205f4e:	caafa0ef          	jal	802003f8 <rt_hw_interrupt_disable>
80205f52:	4038                	lw	a4,64(s0)
80205f54:	5c54                	lw	a3,60(s0)
80205f56:	03c4079b          	addiw	a5,s0,60
80205f5a:	c2d8                	sw	a4,4(a3)
80205f5c:	c314                	sw	a3,0(a4)
80205f5e:	c03c                	sw	a5,64(s0)
80205f60:	dc5c                	sw	a5,60(s0)
80205f62:	05044783          	lbu	a5,80(s0)
80205f66:	00010717          	auipc	a4,0x10
80205f6a:	cea70713          	addi	a4,a4,-790 # 80215c50 <rt_thread_priority_table>
80205f6e:	0037979b          	slliw	a5,a5,0x3
80205f72:	9fb9                	addw	a5,a5,a4
80205f74:	4398                	lw	a4,0(a5)
80205f76:	00f71c63          	bne	a4,a5,80205f8e <rt_sched_remove_thread+0x66>
80205f7a:	0000b717          	auipc	a4,0xb
80205f7e:	44a70713          	addi	a4,a4,1098 # 802113c4 <rt_thread_ready_priority_group>
80205f82:	487c                	lw	a5,84(s0)
80205f84:	4314                	lw	a3,0(a4)
80205f86:	fff7c793          	not	a5,a5
80205f8a:	8ff5                	and	a5,a5,a3
80205f8c:	c31c                	sw	a5,0(a4)
80205f8e:	6402                	ld	s0,0(sp)
80205f90:	60a2                	ld	ra,8(sp)
80205f92:	2141                	addiw	sp,sp,16
80205f94:	c5efa06f          	j	802003f2 <rt_hw_interrupt_enable>

80205f98 <rt_system_scheduler_start>:
80205f98:	3101                	addiw	sp,sp,-32
80205f9a:	0000b517          	auipc	a0,0xb
80205f9e:	42a52503          	lw	a0,1066(a0) # 802113c4 <rt_thread_ready_priority_group>
80205fa2:	ec06                	sd	ra,24(sp)
80205fa4:	e822                	sd	s0,16(sp)
80205fa6:	e426                	sd	s1,8(sp)
80205fa8:	e04a                	sd	s2,0(sp)
80205faa:	f21fe0ef          	jal	80204eca <__rt_ffs>
80205fae:	357d                	addiw	a0,a0,-1
80205fb0:	0035151b          	slliw	a0,a0,0x3
80205fb4:	00010797          	auipc	a5,0x10
80205fb8:	c9c78793          	addi	a5,a5,-868 # 80215c50 <rt_thread_priority_table>
80205fbc:	9fa9                	addw	a5,a5,a0
80205fbe:	4380                	lw	s0,0(a5)
80205fc0:	e92fd0ef          	jal	80203652 <rt_cpu_self>
80205fc4:	fc44049b          	addiw	s1,s0,-60
80205fc8:	c104                	sw	s1,0(a0)
80205fca:	8526                	mv	a0,s1
80205fcc:	f5dff0ef          	jal	80205f28 <rt_sched_remove_thread>
80205fd0:	478d                	li	a5,3
80205fd2:	00f40423          	sb	a5,8(s0)
80205fd6:	fe84051b          	addiw	a0,s0,-24
80205fda:	6442                	ld	s0,16(sp)
80205fdc:	60e2                	ld	ra,24(sp)
80205fde:	64a2                	ld	s1,8(sp)
80205fe0:	6902                	ld	s2,0(sp)
80205fe2:	0201011b          	addiw	sp,sp,32
80205fe6:	8d2fa06f          	j	802000b8 <rt_hw_context_switch_to>

80205fea <rt_schedule>:
80205fea:	fc01011b          	addiw	sp,sp,-64
80205fee:	fc06                	sd	ra,56(sp)
80205ff0:	f822                	sd	s0,48(sp)
80205ff2:	ec4e                	sd	s3,24(sp)
80205ff4:	f426                	sd	s1,40(sp)
80205ff6:	f04a                	sd	s2,32(sp)
80205ff8:	e852                	sd	s4,16(sp)
80205ffa:	e456                	sd	s5,8(sp)
80205ffc:	5fa000ef          	jal	802065f6 <rt_thread_self>
80206000:	842a                	mv	s0,a0
80206002:	bf6fa0ef          	jal	802003f8 <rt_hw_interrupt_disable>
80206006:	0000b797          	auipc	a5,0xb
8020600a:	3bc79783          	lh	a5,956(a5) # 802113c2 <rt_scheduler_lock_nest>
8020600e:	89aa                	mv	s3,a0
80206010:	12079163          	bnez	a5,80206132 <rt_schedule+0x148>
80206014:	0000b517          	auipc	a0,0xb
80206018:	3b052503          	lw	a0,944(a0) # 802113c4 <rt_thread_ready_priority_group>
8020601c:	10050b63          	beqz	a0,80206132 <rt_schedule+0x148>
80206020:	eabfe0ef          	jal	80204eca <__rt_ffs>
80206024:	fff5071b          	addiw	a4,a0,-1
80206028:	00010697          	auipc	a3,0x10
8020602c:	c2868693          	addi	a3,a3,-984 # 80215c50 <rt_thread_priority_table>
80206030:	0037179b          	slliw	a5,a4,0x3
80206034:	9fb5                	addw	a5,a5,a3
80206036:	4384                	lw	s1,0(a5)
80206038:	04444783          	lbu	a5,68(s0)
8020603c:	468d                	li	a3,3
8020603e:	8a26                	mv	s4,s1
80206040:	0077f613          	andi	a2,a5,7
80206044:	fc44891b          	addiw	s2,s1,-60
80206048:	4a81                	li	s5,0
8020604a:	00d61c63          	bne	a2,a3,80206062 <rt_schedule+0x78>
8020604e:	05044683          	lbu	a3,80(s0)
80206052:	0ee6ec63          	bltu	a3,a4,8020614a <rt_schedule+0x160>
80206056:	4a85                	li	s5,1
80206058:	00e69563          	bne	a3,a4,80206062 <rt_schedule+0x78>
8020605c:	8ba1                	andi	a5,a5,8
8020605e:	0e078663          	beqz	a5,8020614a <rt_schedule+0x160>
80206062:	0004079b          	sext.w	a5,s0
80206066:	0009069b          	sext.w	a3,s2
8020606a:	0ed78063          	beq	a5,a3,8020614a <rt_schedule+0x160>
8020606e:	0000b797          	auipc	a5,0xb
80206072:	34e78923          	sb	a4,850(a5) # 802113c0 <rt_current_priority>
80206076:	ddcfd0ef          	jal	80203652 <rt_cpu_self>
8020607a:	01252023          	sw	s2,0(a0)
8020607e:	0000b797          	auipc	a5,0xb
80206082:	33e7a783          	lw	a5,830(a5) # 802113bc <rt_scheduler_hook>
80206086:	c781                	beqz	a5,8020608e <rt_schedule+0xa4>
80206088:	85ca                	mv	a1,s2
8020608a:	8522                	mv	a0,s0
8020608c:	9782                	jalr	a5
8020608e:	000a8563          	beqz	s5,80206098 <rt_schedule+0xae>
80206092:	8522                	mv	a0,s0
80206094:	de5ff0ef          	jal	80205e78 <rt_sched_insert_thread>
80206098:	04444783          	lbu	a5,68(s0)
8020609c:	0087f713          	andi	a4,a5,8
802060a0:	c701                	beqz	a4,802060a8 <rt_schedule+0xbe>
802060a2:	9bdd                	andi	a5,a5,-9
802060a4:	04f40223          	sb	a5,68(s0)
802060a8:	854a                	mv	a0,s2
802060aa:	e7fff0ef          	jal	80205f28 <rt_sched_remove_thread>
802060ae:	008a4783          	lbu	a5,8(s4)
802060b2:	854a                	mv	a0,s2
802060b4:	34a1                	addiw	s1,s1,-24
802060b6:	9be1                	andi	a5,a5,-8
802060b8:	0037e793          	ori	a5,a5,3
802060bc:	00fa0423          	sb	a5,8(s4)
802060c0:	c5bff0ef          	jal	80205d1a <rt_scheduler_stack_check>
802060c4:	0000b797          	auipc	a5,0xb
802060c8:	2bc7c783          	lbu	a5,700(a5) # 80211380 <rt_interrupt_nest>
802060cc:	02440a1b          	addiw	s4,s0,36
802060d0:	eba9                	bnez	a5,80206122 <rt_schedule+0x138>
802060d2:	0000b797          	auipc	a5,0xb
802060d6:	2e67a783          	lw	a5,742(a5) # 802113b8 <rt_scheduler_switch_hook>
802060da:	c399                	beqz	a5,802060e0 <rt_schedule+0xf6>
802060dc:	8522                	mv	a0,s0
802060de:	9782                	jalr	a5
802060e0:	0004859b          	sext.w	a1,s1
802060e4:	000a051b          	sext.w	a0,s4
802060e8:	822fa0ef          	jal	8020010a <rt_hw_context_switch>
802060ec:	854e                	mv	a0,s3
802060ee:	b04fa0ef          	jal	802003f2 <rt_hw_interrupt_enable>
802060f2:	b06fa0ef          	jal	802003f8 <rt_hw_interrupt_disable>
802060f6:	04444783          	lbu	a5,68(s0)
802060fa:	0407f713          	andi	a4,a5,64
802060fe:	cb1d                	beqz	a4,80206134 <rt_schedule+0x14a>
80206100:	fbf7f793          	andi	a5,a5,-65
80206104:	04f40223          	sb	a5,68(s0)
80206108:	aeafa0ef          	jal	802003f2 <rt_hw_interrupt_enable>
8020610c:	7442                	ld	s0,48(sp)
8020610e:	70e2                	ld	ra,56(sp)
80206110:	74a2                	ld	s1,40(sp)
80206112:	7902                	ld	s2,32(sp)
80206114:	69e2                	ld	s3,24(sp)
80206116:	6a42                	ld	s4,16(sp)
80206118:	6aa2                	ld	s5,8(sp)
8020611a:	4505                	li	a0,1
8020611c:	0401011b          	addiw	sp,sp,64
80206120:	a8d5                	j	80206214 <rt_thread_handle_sig>
80206122:	86ca                	mv	a3,s2
80206124:	8622                	mv	a2,s0
80206126:	0004859b          	sext.w	a1,s1
8020612a:	000a051b          	sext.w	a0,s4
8020612e:	dcffa0ef          	jal	80200efc <rt_hw_context_switch_interrupt>
80206132:	854e                	mv	a0,s3
80206134:	7442                	ld	s0,48(sp)
80206136:	70e2                	ld	ra,56(sp)
80206138:	74a2                	ld	s1,40(sp)
8020613a:	7902                	ld	s2,32(sp)
8020613c:	69e2                	ld	s3,24(sp)
8020613e:	6a42                	ld	s4,16(sp)
80206140:	6aa2                	ld	s5,8(sp)
80206142:	0401011b          	addiw	sp,sp,64
80206146:	aacfa06f          	j	802003f2 <rt_hw_interrupt_enable>
8020614a:	8522                	mv	a0,s0
8020614c:	dddff0ef          	jal	80205f28 <rt_sched_remove_thread>
80206150:	04444783          	lbu	a5,68(s0)
80206154:	9be1                	andi	a5,a5,-8
80206156:	0037e793          	ori	a5,a5,3
8020615a:	04f40223          	sb	a5,68(s0)
8020615e:	bfd1                	j	80206132 <rt_schedule+0x148>

80206160 <rt_sched_unlock_n_resched>:
80206160:	3141                	addiw	sp,sp,-16
80206162:	e022                	sd	s0,0(sp)
80206164:	e406                	sd	ra,8(sp)
80206166:	842a                	mv	s0,a0
80206168:	48e000ef          	jal	802065f6 <rt_thread_self>
8020616c:	2501                	sext.w	a0,a0
8020616e:	c119                	beqz	a0,80206174 <rt_sched_unlock_n_resched+0x14>
80206170:	e7bff0ef          	jal	80205fea <rt_schedule>
80206174:	8522                	mv	a0,s0
80206176:	a7cfa0ef          	jal	802003f2 <rt_hw_interrupt_enable>
8020617a:	60a2                	ld	ra,8(sp)
8020617c:	6402                	ld	s0,0(sp)
8020617e:	4501                	li	a0,0
80206180:	2141                	addiw	sp,sp,16
80206182:	8082                	ret

80206184 <rt_enter_critical>:
80206184:	3141                	addiw	sp,sp,-16
80206186:	e406                	sd	ra,8(sp)
80206188:	e022                	sd	s0,0(sp)
8020618a:	a6efa0ef          	jal	802003f8 <rt_hw_interrupt_disable>
8020618e:	0000b797          	auipc	a5,0xb
80206192:	23478793          	addi	a5,a5,564 # 802113c2 <rt_scheduler_lock_nest>
80206196:	0007d403          	lhu	s0,0(a5)
8020619a:	2405                	addiw	s0,s0,1
8020619c:	0104141b          	slliw	s0,s0,0x10
802061a0:	4104541b          	sraiw	s0,s0,0x10
802061a4:	00879023          	sh	s0,0(a5)
802061a8:	a4afa0ef          	jal	802003f2 <rt_hw_interrupt_enable>
802061ac:	60a2                	ld	ra,8(sp)
802061ae:	8522                	mv	a0,s0
802061b0:	6402                	ld	s0,0(sp)
802061b2:	2141                	addiw	sp,sp,16
802061b4:	8082                	ret

802061b6 <rt_exit_critical>:
802061b6:	3141                	addiw	sp,sp,-16
802061b8:	e406                	sd	ra,8(sp)
802061ba:	a3efa0ef          	jal	802003f8 <rt_hw_interrupt_disable>
802061be:	0000b717          	auipc	a4,0xb
802061c2:	20470713          	addi	a4,a4,516 # 802113c2 <rt_scheduler_lock_nest>
802061c6:	00075783          	lhu	a5,0(a4)
802061ca:	37fd                	addiw	a5,a5,-1
802061cc:	0107979b          	slliw	a5,a5,0x10
802061d0:	4107d79b          	sraiw	a5,a5,0x10
802061d4:	00f71023          	sh	a5,0(a4)
802061d8:	02f04063          	bgtz	a5,802061f8 <rt_exit_critical+0x42>
802061dc:	0000b797          	auipc	a5,0xb
802061e0:	1e079323          	sh	zero,486(a5) # 802113c2 <rt_scheduler_lock_nest>
802061e4:	a0efa0ef          	jal	802003f2 <rt_hw_interrupt_enable>
802061e8:	40e000ef          	jal	802065f6 <rt_thread_self>
802061ec:	2501                	sext.w	a0,a0
802061ee:	c909                	beqz	a0,80206200 <rt_exit_critical+0x4a>
802061f0:	60a2                	ld	ra,8(sp)
802061f2:	2141                	addiw	sp,sp,16
802061f4:	df7ff06f          	j	80205fea <rt_schedule>
802061f8:	60a2                	ld	ra,8(sp)
802061fa:	2141                	addiw	sp,sp,16
802061fc:	9f6fa06f          	j	802003f2 <rt_hw_interrupt_enable>
80206200:	60a2                	ld	ra,8(sp)
80206202:	2141                	addiw	sp,sp,16
80206204:	8082                	ret

80206206 <rt_exit_critical_safe>:
80206206:	fb1ff06f          	j	802061b6 <rt_exit_critical>

8020620a <rt_critical_level>:
8020620a:	0000b517          	auipc	a0,0xb
8020620e:	1b855503          	lhu	a0,440(a0) # 802113c2 <rt_scheduler_lock_nest>
80206212:	8082                	ret

80206214 <rt_thread_handle_sig>:
80206214:	fa01011b          	addiw	sp,sp,-96
80206218:	ec86                	sd	ra,88(sp)
8020621a:	e8a2                	sd	s0,80(sp)
8020621c:	e4a6                	sd	s1,72(sp)
8020621e:	e0ca                	sd	s2,64(sp)
80206220:	fc4e                	sd	s3,56(sp)
80206222:	f852                	sd	s4,48(sp)
80206224:	f456                	sd	s5,40(sp)
80206226:	f05a                	sd	s6,32(sp)
80206228:	ec5e                	sd	s7,24(sp)
8020622a:	e862                	sd	s8,16(sp)
8020622c:	84aa                	mv	s1,a0
8020622e:	3c8000ef          	jal	802065f6 <rt_thread_self>
80206232:	842a                	mv	s0,a0
80206234:	0000b517          	auipc	a0,0xb
80206238:	19c50513          	addi	a0,a0,412 # 802113d0 <_thread_signal_lock>
8020623c:	be2fd0ef          	jal	8020361e <rt_spin_lock_irqsave>
80206240:	0ac42783          	lw	a5,172(s0)
80206244:	0b042703          	lw	a4,176(s0)
80206248:	85aa                	mv	a1,a0
8020624a:	8ff9                	and	a5,a5,a4
8020624c:	cbc5                	beqz	a5,802062fc <rt_thread_handle_sig+0xe8>
8020624e:	04444783          	lbu	a5,68(s0)
80206252:	0207f793          	andi	a5,a5,32
80206256:	e3dd                	bnez	a5,802062fc <rt_thread_handle_sig+0xe8>
80206258:	4985                	li	s3,1
8020625a:	0000b917          	auipc	s2,0xb
8020625e:	17690913          	addi	s2,s2,374 # 802113d0 <_thread_signal_lock>
80206262:	5a71                	li	s4,-4
80206264:	0ac42683          	lw	a3,172(s0)
80206268:	0b042783          	lw	a5,176(s0)
8020626c:	8ff5                	and	a5,a5,a3
8020626e:	c791                	beqz	a5,8020627a <rt_thread_handle_sig+0x66>
80206270:	0bc42a83          	lw	s5,188(s0)
80206274:	8756                	mv	a4,s5
80206276:	020a9263          	bnez	s5,8020629a <rt_thread_handle_sig+0x86>
8020627a:	4785                	li	a5,1
8020627c:	06f48b63          	beq	s1,a5,802062f2 <rt_thread_handle_sig+0xde>
80206280:	60e6                	ld	ra,88(sp)
80206282:	6446                	ld	s0,80(sp)
80206284:	64a6                	ld	s1,72(sp)
80206286:	6906                	ld	s2,64(sp)
80206288:	79e2                	ld	s3,56(sp)
8020628a:	7a42                	ld	s4,48(sp)
8020628c:	7aa2                	ld	s5,40(sp)
8020628e:	7b02                	ld	s6,32(sp)
80206290:	6be2                	ld	s7,24(sp)
80206292:	6c42                	ld	s8,16(sp)
80206294:	0601011b          	addiw	sp,sp,96
80206298:	8082                	ret
8020629a:	008aa783          	lw	a5,8(s5)
8020629e:	863e                	mv	a2,a5
802062a0:	c399                	beqz	a5,802062a6 <rt_thread_handle_sig+0x92>
802062a2:	ff87861b          	addiw	a2,a5,-8
802062a6:	00075783          	lhu	a5,0(a4)
802062aa:	0ac42e23          	sw	a2,188(s0)
802062ae:	0b842603          	lw	a2,184(s0)
802062b2:	0027971b          	slliw	a4,a5,0x2
802062b6:	00078b1b          	sext.w	s6,a5
802062ba:	9f31                	addw	a4,a4,a2
802062bc:	00f997bb          	sllw	a5,s3,a5
802062c0:	00072b83          	lw	s7,0(a4)
802062c4:	fff7c793          	not	a5,a5
802062c8:	8ff5                	and	a5,a5,a3
802062ca:	0af42623          	sw	a5,172(s0)
802062ce:	854a                	mv	a0,s2
802062d0:	b68fd0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
802062d4:	000b8463          	beqz	s7,802062dc <rt_thread_handle_sig+0xc8>
802062d8:	855a                	mv	a0,s6
802062da:	9b82                	jalr	s7
802062dc:	854a                	mv	a0,s2
802062de:	b40fd0ef          	jal	8020361e <rt_spin_lock_irqsave>
802062e2:	e42a                	sd	a0,8(sp)
802062e4:	8556                	mv	a0,s5
802062e6:	b34ff0ef          	jal	8020561a <rt_mp_free>
802062ea:	65a2                	ld	a1,8(sp)
802062ec:	03442c23          	sw	s4,56(s0)
802062f0:	bf95                	j	80206264 <rt_thread_handle_sig+0x50>
802062f2:	04444783          	lbu	a5,68(s0)
802062f6:	9bbd                	andi	a5,a5,-17
802062f8:	04f40223          	sb	a5,68(s0)
802062fc:	6446                	ld	s0,80(sp)
802062fe:	60e6                	ld	ra,88(sp)
80206300:	64a6                	ld	s1,72(sp)
80206302:	6906                	ld	s2,64(sp)
80206304:	79e2                	ld	s3,56(sp)
80206306:	7a42                	ld	s4,48(sp)
80206308:	7aa2                	ld	s5,40(sp)
8020630a:	7b02                	ld	s6,32(sp)
8020630c:	6be2                	ld	s7,24(sp)
8020630e:	6c42                	ld	s8,16(sp)
80206310:	0000b517          	auipc	a0,0xb
80206314:	0c050513          	addi	a0,a0,192 # 802113d0 <_thread_signal_lock>
80206318:	0601011b          	addiw	sp,sp,96
8020631c:	b1cfd06f          	j	80203638 <rt_spin_unlock_irqrestore>

80206320 <rt_thread_free_sig>:
80206320:	3101                	addiw	sp,sp,-32
80206322:	e822                	sd	s0,16(sp)
80206324:	842a                	mv	s0,a0
80206326:	0000b517          	auipc	a0,0xb
8020632a:	0aa50513          	addi	a0,a0,170 # 802113d0 <_thread_signal_lock>
8020632e:	e426                	sd	s1,8(sp)
80206330:	e04a                	sd	s2,0(sp)
80206332:	ec06                	sd	ra,24(sp)
80206334:	aeafd0ef          	jal	8020361e <rt_spin_lock_irqsave>
80206338:	0bc42483          	lw	s1,188(s0)
8020633c:	0b842903          	lw	s2,184(s0)
80206340:	85aa                	mv	a1,a0
80206342:	0a042e23          	sw	zero,188(s0)
80206346:	0a042c23          	sw	zero,184(s0)
8020634a:	0000b517          	auipc	a0,0xb
8020634e:	08650513          	addi	a0,a0,134 # 802113d0 <_thread_signal_lock>
80206352:	ae6fd0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80206356:	c889                	beqz	s1,80206368 <rt_thread_free_sig+0x48>
80206358:	24a1                	addiw	s1,s1,8
8020635a:	4080                	lw	s0,0(s1)
8020635c:	8526                	mv	a0,s1
8020635e:	3561                	addiw	a0,a0,-8
80206360:	84a2                	mv	s1,s0
80206362:	ab8ff0ef          	jal	8020561a <rt_mp_free>
80206366:	f875                	bnez	s0,8020635a <rt_thread_free_sig+0x3a>
80206368:	00090b63          	beqz	s2,8020637e <rt_thread_free_sig+0x5e>
8020636c:	6442                	ld	s0,16(sp)
8020636e:	60e2                	ld	ra,24(sp)
80206370:	64a2                	ld	s1,8(sp)
80206372:	854a                	mv	a0,s2
80206374:	6902                	ld	s2,0(sp)
80206376:	0201011b          	addiw	sp,sp,32
8020637a:	ceffe06f          	j	80205068 <rt_free>
8020637e:	60e2                	ld	ra,24(sp)
80206380:	6442                	ld	s0,16(sp)
80206382:	64a2                	ld	s1,8(sp)
80206384:	6902                	ld	s2,0(sp)
80206386:	0201011b          	addiw	sp,sp,32
8020638a:	8082                	ret

8020638c <rt_system_signal_init>:
8020638c:	3141                	addiw	sp,sp,-16
8020638e:	4631                	li	a2,12
80206390:	04000593          	li	a1,64
80206394:	00002517          	auipc	a0,0x2
80206398:	0b450513          	addi	a0,a0,180 # 80208448 <rt_system_timer_thread_init+0x148a>
8020639c:	e406                	sd	ra,8(sp)
8020639e:	96eff0ef          	jal	8020550c <rt_mp_create>
802063a2:	0000b797          	auipc	a5,0xb
802063a6:	02a7a323          	sw	a0,38(a5) # 802113c8 <_siginfo_pool>
802063aa:	2501                	sext.w	a0,a0
802063ac:	e90d                	bnez	a0,802063de <rt_system_signal_init+0x52>
802063ae:	4605                	li	a2,1
802063b0:	00002597          	auipc	a1,0x2
802063b4:	09058593          	addi	a1,a1,144 # 80208440 <rt_system_timer_thread_init+0x1482>
802063b8:	450d                	li	a0,3
802063ba:	00002697          	auipc	a3,0x2
802063be:	09668693          	addi	a3,a3,150 # 80208450 <rt_system_timer_thread_init+0x1492>
802063c2:	9abfa0ef          	jal	80200d6c <ulog_output>
802063c6:	29d00613          	li	a2,669
802063ca:	00003597          	auipc	a1,0x3
802063ce:	c0658593          	addi	a1,a1,-1018 # 80208fd0 <__FUNCTION__.0>
802063d2:	00002517          	auipc	a0,0x2
802063d6:	13e50513          	addi	a0,a0,318 # 80208510 <rt_system_timer_thread_init+0x1552>
802063da:	b51fe0ef          	jal	80204f2a <rt_assert_handler>
802063de:	60a2                	ld	ra,8(sp)
802063e0:	4501                	li	a0,0
802063e2:	2141                	addiw	sp,sp,16
802063e4:	8082                	ret

802063e6 <_thread_timeout>:
802063e6:	3101                	addiw	sp,sp,-32
802063e8:	e822                	sd	s0,16(sp)
802063ea:	0005079b          	sext.w	a5,a0
802063ee:	ec06                	sd	ra,24(sp)
802063f0:	843e                	mv	s0,a5
802063f2:	ef89                	bnez	a5,8020640c <_thread_timeout+0x26>
802063f4:	07200613          	li	a2,114
802063f8:	00003597          	auipc	a1,0x3
802063fc:	c8858593          	addi	a1,a1,-888 # 80209080 <__FUNCTION__.11>
80206400:	00002517          	auipc	a0,0x2
80206404:	f9050513          	addi	a0,a0,-112 # 80208390 <rt_system_timer_thread_init+0x13d2>
80206408:	b23fe0ef          	jal	80204f2a <rt_assert_handler>
8020640c:	8522                	mv	a0,s0
8020640e:	e46ff0ef          	jal	80205a54 <rt_object_get_type>
80206412:	4785                	li	a5,1
80206414:	00f50e63          	beq	a0,a5,80206430 <_thread_timeout+0x4a>
80206418:	07300613          	li	a2,115
8020641c:	00003597          	auipc	a1,0x3
80206420:	c6458593          	addi	a1,a1,-924 # 80209080 <__FUNCTION__.11>
80206424:	00002517          	auipc	a0,0x2
80206428:	05c50513          	addi	a0,a0,92 # 80208480 <rt_system_timer_thread_init+0x14c2>
8020642c:	afffe0ef          	jal	80204f2a <rt_assert_handler>
80206430:	00c1051b          	addiw	a0,sp,12
80206434:	977ff0ef          	jal	80205daa <rt_sched_lock>
80206438:	8522                	mv	a0,s0
8020643a:	fc4ff0ef          	jal	80205bfe <rt_sched_thread_is_suspended>
8020643e:	ed09                	bnez	a0,80206458 <_thread_timeout+0x72>
80206440:	07b00613          	li	a2,123
80206444:	00003597          	auipc	a1,0x3
80206448:	c3c58593          	addi	a1,a1,-964 # 80209080 <__FUNCTION__.11>
8020644c:	00002517          	auipc	a0,0x2
80206450:	07c50513          	addi	a0,a0,124 # 802084c8 <rt_system_timer_thread_init+0x150a>
80206454:	ad7fe0ef          	jal	80204f2a <rt_assert_handler>
80206458:	5c54                	lw	a3,60(s0)
8020645a:	4038                	lw	a4,64(s0)
8020645c:	f8c00793          	li	a5,-116
80206460:	dc1c                	sw	a5,56(s0)
80206462:	c2d8                	sw	a4,4(a3)
80206464:	03c4079b          	addiw	a5,s0,60
80206468:	c314                	sw	a3,0(a4)
8020646a:	c03c                	sw	a5,64(s0)
8020646c:	dc5c                	sw	a5,60(s0)
8020646e:	8522                	mv	a0,s0
80206470:	a09ff0ef          	jal	80205e78 <rt_sched_insert_thread>
80206474:	4532                	lw	a0,12(sp)
80206476:	cebff0ef          	jal	80206160 <rt_sched_unlock_n_resched>
8020647a:	60e2                	ld	ra,24(sp)
8020647c:	6442                	ld	s0,16(sp)
8020647e:	0201011b          	addiw	sp,sp,32
80206482:	8082                	ret

80206484 <_thread_init.isra.0>:
80206484:	fd01011b          	addiw	sp,sp,-48
80206488:	e44e                	sd	s3,8(sp)
8020648a:	e052                	sd	s4,0(sp)
8020648c:	89b2                	mv	s3,a2
8020648e:	8a2e                	mv	s4,a1
80206490:	863e                	mv	a2,a5
80206492:	85c2                	mv	a1,a6
80206494:	f406                	sd	ra,40(sp)
80206496:	f022                	sd	s0,32(sp)
80206498:	ec26                	sd	s1,24(sp)
8020649a:	842a                	mv	s0,a0
8020649c:	e84a                	sd	s2,16(sp)
8020649e:	84b6                	mv	s1,a3
802064a0:	893a                	mv	s2,a4
802064a2:	f04ff0ef          	jal	80205ba6 <rt_sched_thread_init_ctx>
802064a6:	864a                	mv	a2,s2
802064a8:	03442423          	sw	s4,40(s0)
802064ac:	03342623          	sw	s3,44(s0)
802064b0:	d804                	sw	s1,48(s0)
802064b2:	03242a23          	sw	s2,52(s0)
802064b6:	02300593          	li	a1,35
802064ba:	8526                	mv	a0,s1
802064bc:	e38fe0ef          	jal	80204af4 <rt_memset>
802064c0:	585c                	lw	a5,52(s0)
802064c2:	5810                	lw	a2,48(s0)
802064c4:	544c                	lw	a1,44(s0)
802064c6:	5408                	lw	a0,40(s0)
802064c8:	37f1                	addiw	a5,a5,-4
802064ca:	9e3d                	addw	a2,a2,a5
802064cc:	00000697          	auipc	a3,0x0
802064d0:	1aa68693          	addi	a3,a3,426 # 80206676 <_thread_exit>
802064d4:	a01fa0ef          	jal	80200ed4 <rt_hw_stack_init>
802064d8:	d048                	sw	a0,36(s0)
802064da:	0984071b          	addiw	a4,s0,152
802064de:	0804079b          	addiw	a5,s0,128
802064e2:	cfd8                	sw	a4,28(a5)
802064e4:	cf98                	sw	a4,24(a5)
802064e6:	86a2                	mv	a3,s0
802064e8:	85a2                	mv	a1,s0
802064ea:	0584051b          	addiw	a0,s0,88
802064ee:	0a042023          	sw	zero,160(s0)
802064f2:	0a042223          	sw	zero,164(s0)
802064f6:	0a040423          	sb	zero,168(s0)
802064fa:	02042c23          	sw	zero,56(s0)
802064fe:	08042a23          	sw	zero,148(s0)
80206502:	0c042823          	sw	zero,208(s0)
80206506:	47a1                	li	a5,8
80206508:	4701                	li	a4,0
8020650a:	00000617          	auipc	a2,0x0
8020650e:	edc60613          	addi	a2,a2,-292 # 802063e6 <_thread_timeout>
80206512:	53a000ef          	jal	80206a4c <rt_timer_init>
80206516:	0c84051b          	addiw	a0,s0,200
8020651a:	0a042823          	sw	zero,176(s0)
8020651e:	0a042623          	sw	zero,172(s0)
80206522:	0a042a23          	sw	zero,180(s0)
80206526:	0a042c23          	sw	zero,184(s0)
8020652a:	0a042e23          	sw	zero,188(s0)
8020652e:	8e4fd0ef          	jal	80203612 <rt_spin_lock_init>
80206532:	70a2                	ld	ra,40(sp)
80206534:	7402                	ld	s0,32(sp)
80206536:	64e2                	ld	s1,24(sp)
80206538:	6942                	ld	s2,16(sp)
8020653a:	69a2                	ld	s3,8(sp)
8020653c:	6a02                	ld	s4,0(sp)
8020653e:	4501                	li	a0,0
80206540:	0301011b          	addiw	sp,sp,48
80206544:	8082                	ret

80206546 <rt_thread_init>:
80206546:	fb01011b          	addiw	sp,sp,-80
8020654a:	e0a2                	sd	s0,64(sp)
8020654c:	fc26                	sd	s1,56(sp)
8020654e:	f84a                	sd	s2,48(sp)
80206550:	f44e                	sd	s3,40(sp)
80206552:	f052                	sd	s4,32(sp)
80206554:	ec56                	sd	s5,24(sp)
80206556:	e85a                	sd	s6,16(sp)
80206558:	e45e                	sd	s7,8(sp)
8020655a:	8abe                	mv	s5,a5
8020655c:	e486                	sd	ra,72(sp)
8020655e:	0005079b          	sext.w	a5,a0
80206562:	842a                	mv	s0,a0
80206564:	8bae                	mv	s7,a1
80206566:	89b2                	mv	s3,a2
80206568:	8a36                	mv	s4,a3
8020656a:	84ba                	mv	s1,a4
8020656c:	8b42                	mv	s6,a6
8020656e:	8946                	mv	s2,a7
80206570:	ef89                	bnez	a5,8020658a <rt_thread_init+0x44>
80206572:	14d00613          	li	a2,333
80206576:	00003597          	auipc	a1,0x3
8020657a:	b1a58593          	addi	a1,a1,-1254 # 80209090 <__FUNCTION__.12>
8020657e:	00002517          	auipc	a0,0x2
80206582:	e1250513          	addi	a0,a0,-494 # 80208390 <rt_system_timer_thread_init+0x13d2>
80206586:	9a5fe0ef          	jal	80204f2a <rt_assert_handler>
8020658a:	0004879b          	sext.w	a5,s1
8020658e:	ef89                	bnez	a5,802065a8 <rt_thread_init+0x62>
80206590:	14e00613          	li	a2,334
80206594:	00003597          	auipc	a1,0x3
80206598:	afc58593          	addi	a1,a1,-1284 # 80209090 <__FUNCTION__.12>
8020659c:	00002517          	auipc	a0,0x2
802065a0:	f5450513          	addi	a0,a0,-172 # 802084f0 <rt_system_timer_thread_init+0x1532>
802065a4:	987fe0ef          	jal	80204f2a <rt_assert_handler>
802065a8:	00091e63          	bnez	s2,802065c4 <rt_thread_init+0x7e>
802065ac:	14f00613          	li	a2,335
802065b0:	00003597          	auipc	a1,0x3
802065b4:	ae058593          	addi	a1,a1,-1312 # 80209090 <__FUNCTION__.12>
802065b8:	00002517          	auipc	a0,0x2
802065bc:	f5050513          	addi	a0,a0,-176 # 80208508 <rt_system_timer_thread_init+0x154a>
802065c0:	96bfe0ef          	jal	80204f2a <rt_assert_handler>
802065c4:	865e                	mv	a2,s7
802065c6:	8522                	mv	a0,s0
802065c8:	4585                	li	a1,1
802065ca:	946ff0ef          	jal	80205710 <rt_object_init>
802065ce:	8522                	mv	a0,s0
802065d0:	6406                	ld	s0,64(sp)
802065d2:	60a6                	ld	ra,72(sp)
802065d4:	6ba2                	ld	s7,8(sp)
802065d6:	884a                	mv	a6,s2
802065d8:	87da                	mv	a5,s6
802065da:	7942                	ld	s2,48(sp)
802065dc:	6b42                	ld	s6,16(sp)
802065de:	8756                	mv	a4,s5
802065e0:	86a6                	mv	a3,s1
802065e2:	6ae2                	ld	s5,24(sp)
802065e4:	74e2                	ld	s1,56(sp)
802065e6:	8652                	mv	a2,s4
802065e8:	85ce                	mv	a1,s3
802065ea:	7a02                	ld	s4,32(sp)
802065ec:	79a2                	ld	s3,40(sp)
802065ee:	0501011b          	addiw	sp,sp,80
802065f2:	e93ff06f          	j	80206484 <_thread_init.isra.0>

802065f6 <rt_thread_self>:
802065f6:	3141                	addiw	sp,sp,-16
802065f8:	e406                	sd	ra,8(sp)
802065fa:	858fd0ef          	jal	80203652 <rt_cpu_self>
802065fe:	60a2                	ld	ra,8(sp)
80206600:	4108                	lw	a0,0(a0)
80206602:	2141                	addiw	sp,sp,16
80206604:	8082                	ret

80206606 <rt_thread_close>:
80206606:	3101                	addiw	sp,sp,-32
80206608:	e822                	sd	s0,16(sp)
8020660a:	ec06                	sd	ra,24(sp)
8020660c:	842a                	mv	s0,a0
8020660e:	fe9ff0ef          	jal	802065f6 <rt_thread_self>
80206612:	2501                	sext.w	a0,a0
80206614:	0004079b          	sext.w	a5,s0
80206618:	02f51163          	bne	a0,a5,8020663a <rt_thread_close+0x34>
8020661c:	befff0ef          	jal	8020620a <rt_critical_level>
80206620:	ed09                	bnez	a0,8020663a <rt_thread_close+0x34>
80206622:	1a600613          	li	a2,422
80206626:	00003597          	auipc	a1,0x3
8020662a:	a3258593          	addi	a1,a1,-1486 # 80209058 <__FUNCTION__.9>
8020662e:	00002517          	auipc	a0,0x2
80206632:	eea50513          	addi	a0,a0,-278 # 80208518 <rt_system_timer_thread_init+0x155a>
80206636:	8f5fe0ef          	jal	80204f2a <rt_assert_handler>
8020663a:	00c1051b          	addiw	a0,sp,12
8020663e:	f6cff0ef          	jal	80205daa <rt_sched_lock>
80206642:	8522                	mv	a0,s0
80206644:	da6ff0ef          	jal	80205bea <rt_sched_thread_get_stat>
80206648:	4785                	li	a5,1
8020664a:	00f50d63          	beq	a0,a5,80206664 <rt_thread_close+0x5e>
8020664e:	c501                	beqz	a0,80206656 <rt_thread_close+0x50>
80206650:	8522                	mv	a0,s0
80206652:	8d7ff0ef          	jal	80205f28 <rt_sched_remove_thread>
80206656:	0584051b          	addiw	a0,s0,88
8020665a:	4ac000ef          	jal	80206b06 <rt_timer_detach>
8020665e:	8522                	mv	a0,s0
80206660:	daaff0ef          	jal	80205c0a <rt_sched_thread_close>
80206664:	4532                	lw	a0,12(sp)
80206666:	f66ff0ef          	jal	80205dcc <rt_sched_unlock>
8020666a:	60e2                	ld	ra,24(sp)
8020666c:	6442                	ld	s0,16(sp)
8020666e:	4501                	li	a0,0
80206670:	0201011b          	addiw	sp,sp,32
80206674:	8082                	ret

80206676 <_thread_exit>:
80206676:	3101                	addiw	sp,sp,-32
80206678:	ec06                	sd	ra,24(sp)
8020667a:	e822                	sd	s0,16(sp)
8020667c:	e426                	sd	s1,8(sp)
8020667e:	f79ff0ef          	jal	802065f6 <rt_thread_self>
80206682:	842a                	mv	s0,a0
80206684:	b01ff0ef          	jal	80206184 <rt_enter_critical>
80206688:	84aa                	mv	s1,a0
8020668a:	8522                	mv	a0,s0
8020668c:	f7bff0ef          	jal	80206606 <rt_thread_close>
80206690:	8522                	mv	a0,s0
80206692:	fdbfc0ef          	jal	8020366c <rt_thread_defunct_enqueue>
80206696:	8526                	mv	a0,s1
80206698:	b6fff0ef          	jal	80206206 <rt_exit_critical_safe>
8020669c:	6442                	ld	s0,16(sp)
8020669e:	60e2                	ld	ra,24(sp)
802066a0:	64a2                	ld	s1,8(sp)
802066a2:	0201011b          	addiw	sp,sp,32
802066a6:	945ff06f          	j	80205fea <rt_schedule>

802066aa <rt_thread_create>:
802066aa:	fc01011b          	addiw	sp,sp,-64
802066ae:	f822                	sd	s0,48(sp)
802066b0:	f426                	sd	s1,40(sp)
802066b2:	f04a                	sd	s2,32(sp)
802066b4:	ec4e                	sd	s3,24(sp)
802066b6:	e852                	sd	s4,16(sp)
802066b8:	e456                	sd	s5,8(sp)
802066ba:	fc06                	sd	ra,56(sp)
802066bc:	842a                	mv	s0,a0
802066be:	89ae                	mv	s3,a1
802066c0:	8a32                	mv	s4,a2
802066c2:	84b6                	mv	s1,a3
802066c4:	8aba                	mv	s5,a4
802066c6:	893e                	mv	s2,a5
802066c8:	ef89                	bnez	a5,802066e2 <rt_thread_create+0x38>
802066ca:	20b00613          	li	a2,523
802066ce:	00003597          	auipc	a1,0x3
802066d2:	97258593          	addi	a1,a1,-1678 # 80209040 <__FUNCTION__.7>
802066d6:	00002517          	auipc	a0,0x2
802066da:	e3250513          	addi	a0,a0,-462 # 80208508 <rt_system_timer_thread_init+0x154a>
802066de:	84dfe0ef          	jal	80204f2a <rt_assert_handler>
802066e2:	85a2                	mv	a1,s0
802066e4:	4505                	li	a0,1
802066e6:	9b2ff0ef          	jal	80205898 <rt_object_allocate>
802066ea:	0005079b          	sext.w	a5,a0
802066ee:	843e                	mv	s0,a5
802066f0:	cb99                	beqz	a5,80206706 <rt_thread_create+0x5c>
802066f2:	8526                	mv	a0,s1
802066f4:	92dfe0ef          	jal	80205020 <rt_malloc>
802066f8:	0005079b          	sext.w	a5,a0
802066fc:	86be                	mv	a3,a5
802066fe:	e385                	bnez	a5,8020671e <rt_thread_create+0x74>
80206700:	8522                	mv	a0,s0
80206702:	a6aff0ef          	jal	8020596c <rt_object_delete>
80206706:	4401                	li	s0,0
80206708:	70e2                	ld	ra,56(sp)
8020670a:	8522                	mv	a0,s0
8020670c:	7442                	ld	s0,48(sp)
8020670e:	74a2                	ld	s1,40(sp)
80206710:	7902                	ld	s2,32(sp)
80206712:	69e2                	ld	s3,24(sp)
80206714:	6a42                	ld	s4,16(sp)
80206716:	6aa2                	ld	s5,8(sp)
80206718:	0401011b          	addiw	sp,sp,64
8020671c:	8082                	ret
8020671e:	884a                	mv	a6,s2
80206720:	87d6                	mv	a5,s5
80206722:	8726                	mv	a4,s1
80206724:	8652                	mv	a2,s4
80206726:	85ce                	mv	a1,s3
80206728:	8522                	mv	a0,s0
8020672a:	d5bff0ef          	jal	80206484 <_thread_init.isra.0>
8020672e:	bfe9                	j	80206708 <rt_thread_create+0x5e>

80206730 <rt_thread_suspend_to_list>:
80206730:	fc01011b          	addiw	sp,sp,-64
80206734:	f822                	sd	s0,48(sp)
80206736:	f426                	sd	s1,40(sp)
80206738:	f04a                	sd	s2,32(sp)
8020673a:	ec4e                	sd	s3,24(sp)
8020673c:	e852                	sd	s4,16(sp)
8020673e:	0005099b          	sext.w	s3,a0
80206742:	fc06                	sd	ra,56(sp)
80206744:	844e                	mv	s0,s3
80206746:	892e                	mv	s2,a1
80206748:	8a32                	mv	s4,a2
8020674a:	84b6                	mv	s1,a3
8020674c:	00099e63          	bnez	s3,80206768 <rt_thread_suspend_to_list+0x38>
80206750:	37f00613          	li	a2,895
80206754:	00003597          	auipc	a1,0x3
80206758:	8cc58593          	addi	a1,a1,-1844 # 80209020 <__FUNCTION__.2>
8020675c:	00002517          	auipc	a0,0x2
80206760:	c3450513          	addi	a0,a0,-972 # 80208390 <rt_system_timer_thread_init+0x13d2>
80206764:	fc6fe0ef          	jal	80204f2a <rt_assert_handler>
80206768:	8522                	mv	a0,s0
8020676a:	aeaff0ef          	jal	80205a54 <rt_object_get_type>
8020676e:	4785                	li	a5,1
80206770:	00f50e63          	beq	a0,a5,8020678c <rt_thread_suspend_to_list+0x5c>
80206774:	38000613          	li	a2,896
80206778:	00003597          	auipc	a1,0x3
8020677c:	8a858593          	addi	a1,a1,-1880 # 80209020 <__FUNCTION__.2>
80206780:	00002517          	auipc	a0,0x2
80206784:	d0050513          	addi	a0,a0,-768 # 80208480 <rt_system_timer_thread_init+0x14c2>
80206788:	fa2fe0ef          	jal	80204f2a <rt_assert_handler>
8020678c:	e6bff0ef          	jal	802065f6 <rt_thread_self>
80206790:	2501                	sext.w	a0,a0
80206792:	01350e63          	beq	a0,s3,802067ae <rt_thread_suspend_to_list+0x7e>
80206796:	38100613          	li	a2,897
8020679a:	00003597          	auipc	a1,0x3
8020679e:	88658593          	addi	a1,a1,-1914 # 80209020 <__FUNCTION__.2>
802067a2:	00002517          	auipc	a0,0x2
802067a6:	dae50513          	addi	a0,a0,-594 # 80208550 <rt_system_timer_thread_init+0x1592>
802067aa:	f80fe0ef          	jal	80204f2a <rt_assert_handler>
802067ae:	00c1051b          	addiw	a0,sp,12
802067b2:	df8ff0ef          	jal	80205daa <rt_sched_lock>
802067b6:	8522                	mv	a0,s0
802067b8:	c32ff0ef          	jal	80205bea <rt_sched_thread_get_stat>
802067bc:	ffe5071b          	addiw	a4,a0,-2
802067c0:	4785                	li	a5,1
802067c2:	02e7f063          	bgeu	a5,a4,802067e2 <rt_thread_suspend_to_list+0xb2>
802067c6:	4532                	lw	a0,12(sp)
802067c8:	e04ff0ef          	jal	80205dcc <rt_sched_unlock>
802067cc:	f0100513          	li	a0,-255
802067d0:	70e2                	ld	ra,56(sp)
802067d2:	7442                	ld	s0,48(sp)
802067d4:	74a2                	ld	s1,40(sp)
802067d6:	7902                	ld	s2,32(sp)
802067d8:	69e2                	ld	s3,24(sp)
802067da:	6a42                	ld	s4,16(sp)
802067dc:	0401011b          	addiw	sp,sp,64
802067e0:	8082                	ret
802067e2:	478d                	li	a5,3
802067e4:	02f51363          	bne	a0,a5,8020680a <rt_thread_suspend_to_list+0xda>
802067e8:	e0fff0ef          	jal	802065f6 <rt_thread_self>
802067ec:	2501                	sext.w	a0,a0
802067ee:	01350e63          	beq	a0,s3,8020680a <rt_thread_suspend_to_list+0xda>
802067f2:	39200613          	li	a2,914
802067f6:	00003597          	auipc	a1,0x3
802067fa:	82a58593          	addi	a1,a1,-2006 # 80209020 <__FUNCTION__.2>
802067fe:	00002517          	auipc	a0,0x2
80206802:	d5250513          	addi	a0,a0,-686 # 80208550 <rt_system_timer_thread_init+0x1592>
80206806:	f24fe0ef          	jal	80204f2a <rt_assert_handler>
8020680a:	8522                	mv	a0,s0
8020680c:	f1cff0ef          	jal	80205f28 <rt_sched_remove_thread>
80206810:	00099e63          	bnez	s3,8020682c <rt_thread_suspend_to_list+0xfc>
80206814:	34c00613          	li	a2,844
80206818:	00002597          	auipc	a1,0x2
8020681c:	7e858593          	addi	a1,a1,2024 # 80209000 <__FUNCTION__.1>
80206820:	00002517          	auipc	a0,0x2
80206824:	b7050513          	addi	a0,a0,-1168 # 80208390 <rt_system_timer_thread_init+0x13d2>
80206828:	f02fe0ef          	jal	80204f2a <rt_assert_handler>
8020682c:	4705                	li	a4,1
8020682e:	4799                	li	a5,6
80206830:	02e48463          	beq	s1,a4,80206858 <rt_thread_suspend_to_list+0x128>
80206834:	4789                	li	a5,2
80206836:	02f48063          	beq	s1,a5,80206856 <rt_thread_suspend_to_list+0x126>
8020683a:	4791                	li	a5,4
8020683c:	cc91                	beqz	s1,80206858 <rt_thread_suspend_to_list+0x128>
8020683e:	35900613          	li	a2,857
80206842:	00002597          	auipc	a1,0x2
80206846:	7be58593          	addi	a1,a1,1982 # 80209000 <__FUNCTION__.1>
8020684a:	00002517          	auipc	a0,0x2
8020684e:	cc650513          	addi	a0,a0,-826 # 80208510 <rt_system_timer_thread_init+0x1552>
80206852:	ed8fe0ef          	jal	80204f2a <rt_assert_handler>
80206856:	479d                	li	a5,7
80206858:	04444703          	lbu	a4,68(s0)
8020685c:	9b61                	andi	a4,a4,-8
8020685e:	8fd9                	or	a5,a5,a4
80206860:	04f40223          	sb	a5,68(s0)
80206864:	0009079b          	sext.w	a5,s2
80206868:	c791                	beqz	a5,80206874 <rt_thread_suspend_to_list+0x144>
8020686a:	8652                	mv	a2,s4
8020686c:	85a2                	mv	a1,s0
8020686e:	854a                	mv	a0,s2
80206870:	a62fd0ef          	jal	80203ad2 <rt_susp_list_enqueue>
80206874:	8522                	mv	a0,s0
80206876:	b46ff0ef          	jal	80205bbc <rt_sched_thread_timer_stop>
8020687a:	4532                	lw	a0,12(sp)
8020687c:	d50ff0ef          	jal	80205dcc <rt_sched_unlock>
80206880:	0000b797          	auipc	a5,0xb
80206884:	b5c7a783          	lw	a5,-1188(a5) # 802113dc <rt_thread_suspend_hook>
80206888:	e399                	bnez	a5,8020688e <rt_thread_suspend_to_list+0x15e>
8020688a:	4501                	li	a0,0
8020688c:	b791                	j	802067d0 <rt_thread_suspend_to_list+0xa0>
8020688e:	8522                	mv	a0,s0
80206890:	9782                	jalr	a5
80206892:	bfe5                	j	8020688a <rt_thread_suspend_to_list+0x15a>

80206894 <rt_thread_suspend_with_flag>:
80206894:	86ae                	mv	a3,a1
80206896:	4601                	li	a2,0
80206898:	4581                	li	a1,0
8020689a:	e97ff06f          	j	80206730 <rt_thread_suspend_to_list>

8020689e <rt_thread_resume>:
8020689e:	fd01011b          	addiw	sp,sp,-48
802068a2:	ec26                	sd	s1,24(sp)
802068a4:	0005079b          	sext.w	a5,a0
802068a8:	f406                	sd	ra,40(sp)
802068aa:	f022                	sd	s0,32(sp)
802068ac:	84be                	mv	s1,a5
802068ae:	ef89                	bnez	a5,802068c8 <rt_thread_resume+0x2a>
802068b0:	3f100613          	li	a2,1009
802068b4:	00002597          	auipc	a1,0x2
802068b8:	73458593          	addi	a1,a1,1844 # 80208fe8 <__FUNCTION__.0>
802068bc:	00002517          	auipc	a0,0x2
802068c0:	ad450513          	addi	a0,a0,-1324 # 80208390 <rt_system_timer_thread_init+0x13d2>
802068c4:	e66fe0ef          	jal	80204f2a <rt_assert_handler>
802068c8:	8526                	mv	a0,s1
802068ca:	98aff0ef          	jal	80205a54 <rt_object_get_type>
802068ce:	4785                	li	a5,1
802068d0:	00f50e63          	beq	a0,a5,802068ec <rt_thread_resume+0x4e>
802068d4:	3f200613          	li	a2,1010
802068d8:	00002597          	auipc	a1,0x2
802068dc:	71058593          	addi	a1,a1,1808 # 80208fe8 <__FUNCTION__.0>
802068e0:	00002517          	auipc	a0,0x2
802068e4:	ba050513          	addi	a0,a0,-1120 # 80208480 <rt_system_timer_thread_init+0x14c2>
802068e8:	e42fe0ef          	jal	80204f2a <rt_assert_handler>
802068ec:	00c1051b          	addiw	a0,sp,12
802068f0:	cbaff0ef          	jal	80205daa <rt_sched_lock>
802068f4:	8526                	mv	a0,s1
802068f6:	b32ff0ef          	jal	80205c28 <rt_sched_thread_ready>
802068fa:	842a                	mv	s0,a0
802068fc:	4532                	lw	a0,12(sp)
802068fe:	e015                	bnez	s0,80206922 <rt_thread_resume+0x84>
80206900:	861ff0ef          	jal	80206160 <rt_sched_unlock_n_resched>
80206904:	842a                	mv	s0,a0
80206906:	0000b797          	auipc	a5,0xb
8020690a:	ad27a783          	lw	a5,-1326(a5) # 802113d8 <rt_thread_resume_hook>
8020690e:	c399                	beqz	a5,80206914 <rt_thread_resume+0x76>
80206910:	8526                	mv	a0,s1
80206912:	9782                	jalr	a5
80206914:	70a2                	ld	ra,40(sp)
80206916:	8522                	mv	a0,s0
80206918:	7402                	ld	s0,32(sp)
8020691a:	64e2                	ld	s1,24(sp)
8020691c:	0301011b          	addiw	sp,sp,48
80206920:	8082                	ret
80206922:	caaff0ef          	jal	80205dcc <rt_sched_unlock>
80206926:	b7c5                	j	80206906 <rt_thread_resume+0x68>

80206928 <rt_thread_startup>:
80206928:	3141                	addiw	sp,sp,-16
8020692a:	e022                	sd	s0,0(sp)
8020692c:	0005079b          	sext.w	a5,a0
80206930:	e406                	sd	ra,8(sp)
80206932:	843e                	mv	s0,a5
80206934:	ef89                	bnez	a5,8020694e <rt_thread_startup+0x26>
80206936:	18400613          	li	a2,388
8020693a:	00002597          	auipc	a1,0x2
8020693e:	72e58593          	addi	a1,a1,1838 # 80209068 <__FUNCTION__.10>
80206942:	00002517          	auipc	a0,0x2
80206946:	a4e50513          	addi	a0,a0,-1458 # 80208390 <rt_system_timer_thread_init+0x13d2>
8020694a:	de0fe0ef          	jal	80204f2a <rt_assert_handler>
8020694e:	04444783          	lbu	a5,68(s0)
80206952:	8b9d                	andi	a5,a5,7
80206954:	cf89                	beqz	a5,8020696e <rt_thread_startup+0x46>
80206956:	18500613          	li	a2,389
8020695a:	00002597          	auipc	a1,0x2
8020695e:	70e58593          	addi	a1,a1,1806 # 80209068 <__FUNCTION__.10>
80206962:	00002517          	auipc	a0,0x2
80206966:	c0e50513          	addi	a0,a0,-1010 # 80208570 <rt_system_timer_thread_init+0x15b2>
8020696a:	dc0fe0ef          	jal	80204f2a <rt_assert_handler>
8020696e:	8522                	mv	a0,s0
80206970:	8e4ff0ef          	jal	80205a54 <rt_object_get_type>
80206974:	4785                	li	a5,1
80206976:	00f50e63          	beq	a0,a5,80206992 <rt_thread_startup+0x6a>
8020697a:	18600613          	li	a2,390
8020697e:	00002597          	auipc	a1,0x2
80206982:	6ea58593          	addi	a1,a1,1770 # 80209068 <__FUNCTION__.10>
80206986:	00002517          	auipc	a0,0x2
8020698a:	afa50513          	addi	a0,a0,-1286 # 80208480 <rt_system_timer_thread_init+0x14c2>
8020698e:	d9cfe0ef          	jal	80204f2a <rt_assert_handler>
80206992:	8522                	mv	a0,s0
80206994:	c78ff0ef          	jal	80205e0c <rt_sched_thread_startup>
80206998:	8522                	mv	a0,s0
8020699a:	f05ff0ef          	jal	8020689e <rt_thread_resume>
8020699e:	60a2                	ld	ra,8(sp)
802069a0:	6402                	ld	s0,0(sp)
802069a2:	4501                	li	a0,0
802069a4:	2141                	addiw	sp,sp,16
802069a6:	8082                	ret

802069a8 <_timer_remove>:
802069a8:	5154                	lw	a3,36(a0)
802069aa:	5518                	lw	a4,40(a0)
802069ac:	0245079b          	addiw	a5,a0,36
802069b0:	c2d8                	sw	a4,4(a3)
802069b2:	c314                	sw	a3,0(a4)
802069b4:	d51c                	sw	a5,40(a0)
802069b6:	d15c                	sw	a5,36(a0)
802069b8:	8082                	ret

802069ba <_timer_start.constprop.0>:
802069ba:	3141                	addiw	sp,sp,-16
802069bc:	e022                	sd	s0,0(sp)
802069be:	e406                	sd	ra,8(sp)
802069c0:	842a                	mv	s0,a0
802069c2:	fe7ff0ef          	jal	802069a8 <_timer_remove>
802069c6:	01944783          	lbu	a5,25(s0)
802069ca:	9bf9                	andi	a5,a5,-2
802069cc:	00f40ca3          	sb	a5,25(s0)
802069d0:	0000b797          	auipc	a5,0xb
802069d4:	9d87a783          	lw	a5,-1576(a5) # 802113a8 <rt_object_take_hook>
802069d8:	c399                	beqz	a5,802069de <_timer_start.constprop.0+0x24>
802069da:	8522                	mv	a0,s0
802069dc:	9782                	jalr	a5
802069de:	a27fc0ef          	jal	80203404 <rt_tick_get>
802069e2:	585c                	lw	a5,52(s0)
802069e4:	80000637          	lui	a2,0x80000
802069e8:	ffe64613          	xori	a2,a2,-2
802069ec:	00f5083b          	addw	a6,a0,a5
802069f0:	0000b797          	auipc	a5,0xb
802069f4:	a0878793          	addi	a5,a5,-1528 # 802113f8 <_timer_list>
802069f8:	43c8                	lw	a0,4(a5)
802069fa:	03042c23          	sw	a6,56(s0)
802069fe:	4394                	lw	a3,0(a5)
80206a00:	0007871b          	sext.w	a4,a5
80206a04:	85b6                	mv	a1,a3
80206a06:	02a71a63          	bne	a4,a0,80206a3a <_timer_start.constprop.0+0x80>
80206a0a:	0000b617          	auipc	a2,0xb
80206a0e:	9d660613          	addi	a2,a2,-1578 # 802113e0 <random_nr.3>
80206a12:	4218                	lw	a4,0(a2)
80206a14:	4501                	li	a0,0
80206a16:	2705                	addiw	a4,a4,1
80206a18:	c218                	sw	a4,0(a2)
80206a1a:	0244071b          	addiw	a4,s0,36
80206a1e:	c1d8                	sw	a4,4(a1)
80206a20:	d054                	sw	a3,36(s0)
80206a22:	c398                	sw	a4,0(a5)
80206a24:	d41c                	sw	a5,40(s0)
80206a26:	01944783          	lbu	a5,25(s0)
80206a2a:	0017e793          	ori	a5,a5,1
80206a2e:	00f40ca3          	sb	a5,25(s0)
80206a32:	60a2                	ld	ra,8(sp)
80206a34:	6402                	ld	s0,0(sp)
80206a36:	2141                	addiw	sp,sp,16
80206a38:	8082                	ret
80206a3a:	49d8                	lw	a4,20(a1)
80206a3c:	00e80663          	beq	a6,a4,80206a48 <_timer_start.constprop.0+0x8e>
80206a40:	4107073b          	subw	a4,a4,a6
80206a44:	fce673e3          	bgeu	a2,a4,80206a0a <_timer_start.constprop.0+0x50>
80206a48:	87b6                	mv	a5,a3
80206a4a:	bf55                	j	802069fe <_timer_start.constprop.0+0x44>

80206a4c <rt_timer_init>:
80206a4c:	fc01011b          	addiw	sp,sp,-64
80206a50:	f822                	sd	s0,48(sp)
80206a52:	f426                	sd	s1,40(sp)
80206a54:	f04a                	sd	s2,32(sp)
80206a56:	ec4e                	sd	s3,24(sp)
80206a58:	e852                	sd	s4,16(sp)
80206a5a:	e456                	sd	s5,8(sp)
80206a5c:	84be                	mv	s1,a5
80206a5e:	fc06                	sd	ra,56(sp)
80206a60:	0005079b          	sext.w	a5,a0
80206a64:	842a                	mv	s0,a0
80206a66:	8aae                	mv	s5,a1
80206a68:	89b2                	mv	s3,a2
80206a6a:	8a36                	mv	s4,a3
80206a6c:	893a                	mv	s2,a4
80206a6e:	ef89                	bnez	a5,80206a88 <rt_timer_init+0x3c>
80206a70:	11300613          	li	a2,275
80206a74:	00002597          	auipc	a1,0x2
80206a78:	6ac58593          	addi	a1,a1,1708 # 80209120 <__FUNCTION__.8>
80206a7c:	00002517          	auipc	a0,0x2
80206a80:	b3c50513          	addi	a0,a0,-1220 # 802085b8 <rt_system_timer_thread_init+0x15fa>
80206a84:	ca6fe0ef          	jal	80204f2a <rt_assert_handler>
80206a88:	0009879b          	sext.w	a5,s3
80206a8c:	ef89                	bnez	a5,80206aa6 <rt_timer_init+0x5a>
80206a8e:	11400613          	li	a2,276
80206a92:	00002597          	auipc	a1,0x2
80206a96:	68e58593          	addi	a1,a1,1678 # 80209120 <__FUNCTION__.8>
80206a9a:	00002517          	auipc	a0,0x2
80206a9e:	b3650513          	addi	a0,a0,-1226 # 802085d0 <rt_system_timer_thread_init+0x1612>
80206aa2:	c88fe0ef          	jal	80204f2a <rt_assert_handler>
80206aa6:	800007b7          	lui	a5,0x80000
80206aaa:	ffe7c793          	xori	a5,a5,-2
80206aae:	0127fe63          	bgeu	a5,s2,80206aca <rt_timer_init+0x7e>
80206ab2:	11500613          	li	a2,277
80206ab6:	00002597          	auipc	a1,0x2
80206aba:	66a58593          	addi	a1,a1,1642 # 80209120 <__FUNCTION__.8>
80206abe:	00002517          	auipc	a0,0x2
80206ac2:	b2a50513          	addi	a0,a0,-1238 # 802085e8 <rt_system_timer_thread_init+0x162a>
80206ac6:	c64fe0ef          	jal	80204f2a <rt_assert_handler>
80206aca:	8656                	mv	a2,s5
80206acc:	8522                	mv	a0,s0
80206ace:	45a9                	li	a1,10
80206ad0:	c41fe0ef          	jal	80205710 <rt_object_init>
80206ad4:	98f9                	andi	s1,s1,-2
80206ad6:	00940ca3          	sb	s1,25(s0)
80206ada:	0244079b          	addiw	a5,s0,36
80206ade:	03342623          	sw	s3,44(s0)
80206ae2:	03442823          	sw	s4,48(s0)
80206ae6:	03242a23          	sw	s2,52(s0)
80206aea:	70e2                	ld	ra,56(sp)
80206aec:	02042c23          	sw	zero,56(s0)
80206af0:	d41c                	sw	a5,40(s0)
80206af2:	d05c                	sw	a5,36(s0)
80206af4:	7442                	ld	s0,48(sp)
80206af6:	74a2                	ld	s1,40(sp)
80206af8:	7902                	ld	s2,32(sp)
80206afa:	69e2                	ld	s3,24(sp)
80206afc:	6a42                	ld	s4,16(sp)
80206afe:	6aa2                	ld	s5,8(sp)
80206b00:	0401011b          	addiw	sp,sp,64
80206b04:	8082                	ret

80206b06 <rt_timer_detach>:
80206b06:	3101                	addiw	sp,sp,-32
80206b08:	e822                	sd	s0,16(sp)
80206b0a:	0005079b          	sext.w	a5,a0
80206b0e:	ec06                	sd	ra,24(sp)
80206b10:	843e                	mv	s0,a5
80206b12:	ef89                	bnez	a5,80206b2c <rt_timer_detach+0x26>
80206b14:	12b00613          	li	a2,299
80206b18:	00002597          	auipc	a1,0x2
80206b1c:	5f858593          	addi	a1,a1,1528 # 80209110 <__FUNCTION__.7>
80206b20:	00002517          	auipc	a0,0x2
80206b24:	a9850513          	addi	a0,a0,-1384 # 802085b8 <rt_system_timer_thread_init+0x15fa>
80206b28:	c02fe0ef          	jal	80204f2a <rt_assert_handler>
80206b2c:	8522                	mv	a0,s0
80206b2e:	f27fe0ef          	jal	80205a54 <rt_object_get_type>
80206b32:	47a9                	li	a5,10
80206b34:	00f50e63          	beq	a0,a5,80206b50 <rt_timer_detach+0x4a>
80206b38:	12c00613          	li	a2,300
80206b3c:	00002597          	auipc	a1,0x2
80206b40:	5d458593          	addi	a1,a1,1492 # 80209110 <__FUNCTION__.7>
80206b44:	00002517          	auipc	a0,0x2
80206b48:	abc50513          	addi	a0,a0,-1348 # 80208600 <rt_system_timer_thread_init+0x1642>
80206b4c:	bdefe0ef          	jal	80204f2a <rt_assert_handler>
80206b50:	8522                	mv	a0,s0
80206b52:	ecdfe0ef          	jal	80205a1e <rt_object_is_systemobject>
80206b56:	ed09                	bnez	a0,80206b70 <rt_timer_detach+0x6a>
80206b58:	12d00613          	li	a2,301
80206b5c:	00002597          	auipc	a1,0x2
80206b60:	5b458593          	addi	a1,a1,1460 # 80209110 <__FUNCTION__.7>
80206b64:	00002517          	auipc	a0,0x2
80206b68:	adc50513          	addi	a0,a0,-1316 # 80208640 <rt_system_timer_thread_init+0x1682>
80206b6c:	bbefe0ef          	jal	80204f2a <rt_assert_handler>
80206b70:	0000b517          	auipc	a0,0xb
80206b74:	88050513          	addi	a0,a0,-1920 # 802113f0 <_htimer_lock>
80206b78:	aa7fc0ef          	jal	8020361e <rt_spin_lock_irqsave>
80206b7c:	e42a                	sd	a0,8(sp)
80206b7e:	8522                	mv	a0,s0
80206b80:	e29ff0ef          	jal	802069a8 <_timer_remove>
80206b84:	01944783          	lbu	a5,25(s0)
80206b88:	65a2                	ld	a1,8(sp)
80206b8a:	0000b517          	auipc	a0,0xb
80206b8e:	86650513          	addi	a0,a0,-1946 # 802113f0 <_htimer_lock>
80206b92:	9bf9                	andi	a5,a5,-2
80206b94:	00f40ca3          	sb	a5,25(s0)
80206b98:	aa1fc0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80206b9c:	8522                	mv	a0,s0
80206b9e:	c6dfe0ef          	jal	8020580a <rt_object_detach>
80206ba2:	60e2                	ld	ra,24(sp)
80206ba4:	6442                	ld	s0,16(sp)
80206ba6:	4501                	li	a0,0
80206ba8:	0201011b          	addiw	sp,sp,32
80206bac:	8082                	ret

80206bae <rt_timer_start>:
80206bae:	fc01011b          	addiw	sp,sp,-64
80206bb2:	f822                	sd	s0,48(sp)
80206bb4:	0005079b          	sext.w	a5,a0
80206bb8:	fc06                	sd	ra,56(sp)
80206bba:	f426                	sd	s1,40(sp)
80206bbc:	843e                	mv	s0,a5
80206bbe:	ef89                	bnez	a5,80206bd8 <rt_timer_start+0x2a>
80206bc0:	23c00613          	li	a2,572
80206bc4:	00002597          	auipc	a1,0x2
80206bc8:	53c58593          	addi	a1,a1,1340 # 80209100 <__FUNCTION__.4>
80206bcc:	00002517          	auipc	a0,0x2
80206bd0:	9ec50513          	addi	a0,a0,-1556 # 802085b8 <rt_system_timer_thread_init+0x15fa>
80206bd4:	b56fe0ef          	jal	80204f2a <rt_assert_handler>
80206bd8:	8522                	mv	a0,s0
80206bda:	e7bfe0ef          	jal	80205a54 <rt_object_get_type>
80206bde:	47a9                	li	a5,10
80206be0:	00f50e63          	beq	a0,a5,80206bfc <rt_timer_start+0x4e>
80206be4:	23d00613          	li	a2,573
80206be8:	00002597          	auipc	a1,0x2
80206bec:	51858593          	addi	a1,a1,1304 # 80209100 <__FUNCTION__.4>
80206bf0:	00002517          	auipc	a0,0x2
80206bf4:	a1050513          	addi	a0,a0,-1520 # 80208600 <rt_system_timer_thread_init+0x1642>
80206bf8:	b32fe0ef          	jal	80204f2a <rt_assert_handler>
80206bfc:	01944783          	lbu	a5,25(s0)
80206c00:	4481                	li	s1,0
80206c02:	8ba1                	andi	a5,a5,8
80206c04:	cf8d                	beqz	a5,80206c3e <rt_timer_start+0x90>
80206c06:	01c1051b          	addiw	a0,sp,28
80206c0a:	9a0ff0ef          	jal	80205daa <rt_sched_lock>
80206c0e:	fa84049b          	addiw	s1,s0,-88
80206c12:	8526                	mv	a0,s1
80206c14:	e41fe0ef          	jal	80205a54 <rt_object_get_type>
80206c18:	4785                	li	a5,1
80206c1a:	00f50e63          	beq	a0,a5,80206c36 <rt_timer_start+0x88>
80206c1e:	25800613          	li	a2,600
80206c22:	00002597          	auipc	a1,0x2
80206c26:	4de58593          	addi	a1,a1,1246 # 80209100 <__FUNCTION__.4>
80206c2a:	00002517          	auipc	a0,0x2
80206c2e:	a4650513          	addi	a0,a0,-1466 # 80208670 <rt_system_timer_thread_init+0x16b2>
80206c32:	af8fe0ef          	jal	80204f2a <rt_assert_handler>
80206c36:	8526                	mv	a0,s1
80206c38:	f75fe0ef          	jal	80205bac <rt_sched_thread_timer_start>
80206c3c:	4485                	li	s1,1
80206c3e:	0000a517          	auipc	a0,0xa
80206c42:	7b250513          	addi	a0,a0,1970 # 802113f0 <_htimer_lock>
80206c46:	9d9fc0ef          	jal	8020361e <rt_spin_lock_irqsave>
80206c4a:	e42a                	sd	a0,8(sp)
80206c4c:	8522                	mv	a0,s0
80206c4e:	d6dff0ef          	jal	802069ba <_timer_start.constprop.0>
80206c52:	65a2                	ld	a1,8(sp)
80206c54:	842a                	mv	s0,a0
80206c56:	0000a517          	auipc	a0,0xa
80206c5a:	79a50513          	addi	a0,a0,1946 # 802113f0 <_htimer_lock>
80206c5e:	9dbfc0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80206c62:	c481                	beqz	s1,80206c6a <rt_timer_start+0xbc>
80206c64:	4572                	lw	a0,28(sp)
80206c66:	966ff0ef          	jal	80205dcc <rt_sched_unlock>
80206c6a:	70e2                	ld	ra,56(sp)
80206c6c:	8522                	mv	a0,s0
80206c6e:	7442                	ld	s0,48(sp)
80206c70:	74a2                	ld	s1,40(sp)
80206c72:	0401011b          	addiw	sp,sp,64
80206c76:	8082                	ret

80206c78 <rt_timer_stop>:
80206c78:	3101                	addiw	sp,sp,-32
80206c7a:	e822                	sd	s0,16(sp)
80206c7c:	0005079b          	sext.w	a5,a0
80206c80:	ec06                	sd	ra,24(sp)
80206c82:	843e                	mv	s0,a5
80206c84:	ef89                	bnez	a5,80206c9e <rt_timer_stop+0x26>
80206c86:	27800613          	li	a2,632
80206c8a:	00002597          	auipc	a1,0x2
80206c8e:	46658593          	addi	a1,a1,1126 # 802090f0 <__FUNCTION__.2>
80206c92:	00002517          	auipc	a0,0x2
80206c96:	92650513          	addi	a0,a0,-1754 # 802085b8 <rt_system_timer_thread_init+0x15fa>
80206c9a:	a90fe0ef          	jal	80204f2a <rt_assert_handler>
80206c9e:	8522                	mv	a0,s0
80206ca0:	db5fe0ef          	jal	80205a54 <rt_object_get_type>
80206ca4:	47a9                	li	a5,10
80206ca6:	00f50e63          	beq	a0,a5,80206cc2 <rt_timer_stop+0x4a>
80206caa:	27900613          	li	a2,633
80206cae:	00002597          	auipc	a1,0x2
80206cb2:	44258593          	addi	a1,a1,1090 # 802090f0 <__FUNCTION__.2>
80206cb6:	00002517          	auipc	a0,0x2
80206cba:	94a50513          	addi	a0,a0,-1718 # 80208600 <rt_system_timer_thread_init+0x1642>
80206cbe:	a6cfe0ef          	jal	80204f2a <rt_assert_handler>
80206cc2:	0000a517          	auipc	a0,0xa
80206cc6:	72e50513          	addi	a0,a0,1838 # 802113f0 <_htimer_lock>
80206cca:	955fc0ef          	jal	8020361e <rt_spin_lock_irqsave>
80206cce:	01944783          	lbu	a5,25(s0)
80206cd2:	85aa                	mv	a1,a0
80206cd4:	8b85                	andi	a5,a5,1
80206cd6:	ef91                	bnez	a5,80206cf2 <rt_timer_stop+0x7a>
80206cd8:	0000a517          	auipc	a0,0xa
80206cdc:	71850513          	addi	a0,a0,1816 # 802113f0 <_htimer_lock>
80206ce0:	959fc0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80206ce4:	f0100513          	li	a0,-255
80206ce8:	60e2                	ld	ra,24(sp)
80206cea:	6442                	ld	s0,16(sp)
80206cec:	0201011b          	addiw	sp,sp,32
80206cf0:	8082                	ret
80206cf2:	0000a797          	auipc	a5,0xa
80206cf6:	6b27a783          	lw	a5,1714(a5) # 802113a4 <rt_object_put_hook>
80206cfa:	c789                	beqz	a5,80206d04 <rt_timer_stop+0x8c>
80206cfc:	e42a                	sd	a0,8(sp)
80206cfe:	8522                	mv	a0,s0
80206d00:	9782                	jalr	a5
80206d02:	65a2                	ld	a1,8(sp)
80206d04:	8522                	mv	a0,s0
80206d06:	e42e                	sd	a1,8(sp)
80206d08:	ca1ff0ef          	jal	802069a8 <_timer_remove>
80206d0c:	01944783          	lbu	a5,25(s0)
80206d10:	65a2                	ld	a1,8(sp)
80206d12:	0000a517          	auipc	a0,0xa
80206d16:	6de50513          	addi	a0,a0,1758 # 802113f0 <_htimer_lock>
80206d1a:	9bf9                	andi	a5,a5,-2
80206d1c:	00f40ca3          	sb	a5,25(s0)
80206d20:	919fc0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80206d24:	4501                	li	a0,0
80206d26:	b7c9                	j	80206ce8 <rt_timer_stop+0x70>

80206d28 <rt_timer_control>:
80206d28:	fd01011b          	addiw	sp,sp,-48
80206d2c:	f022                	sd	s0,32(sp)
80206d2e:	ec26                	sd	s1,24(sp)
80206d30:	e84a                	sd	s2,16(sp)
80206d32:	0005079b          	sext.w	a5,a0
80206d36:	f406                	sd	ra,40(sp)
80206d38:	e44e                	sd	s3,8(sp)
80206d3a:	843e                	mv	s0,a5
80206d3c:	892e                	mv	s2,a1
80206d3e:	84b2                	mv	s1,a2
80206d40:	ef89                	bnez	a5,80206d5a <rt_timer_control+0x32>
80206d42:	29f00613          	li	a2,671
80206d46:	00002597          	auipc	a1,0x2
80206d4a:	39258593          	addi	a1,a1,914 # 802090d8 <__FUNCTION__.1>
80206d4e:	00002517          	auipc	a0,0x2
80206d52:	86a50513          	addi	a0,a0,-1942 # 802085b8 <rt_system_timer_thread_init+0x15fa>
80206d56:	9d4fe0ef          	jal	80204f2a <rt_assert_handler>
80206d5a:	8522                	mv	a0,s0
80206d5c:	cf9fe0ef          	jal	80205a54 <rt_object_get_type>
80206d60:	47a9                	li	a5,10
80206d62:	00f50e63          	beq	a0,a5,80206d7e <rt_timer_control+0x56>
80206d66:	2a000613          	li	a2,672
80206d6a:	00002597          	auipc	a1,0x2
80206d6e:	36e58593          	addi	a1,a1,878 # 802090d8 <__FUNCTION__.1>
80206d72:	00002517          	auipc	a0,0x2
80206d76:	88e50513          	addi	a0,a0,-1906 # 80208600 <rt_system_timer_thread_init+0x1642>
80206d7a:	9b0fe0ef          	jal	80204f2a <rt_assert_handler>
80206d7e:	0000a517          	auipc	a0,0xa
80206d82:	67250513          	addi	a0,a0,1650 # 802113f0 <_htimer_lock>
80206d86:	899fc0ef          	jal	8020361e <rt_spin_lock_irqsave>
80206d8a:	47a5                	li	a5,9
80206d8c:	89aa                	mv	s3,a0
80206d8e:	0727e263          	bltu	a5,s2,80206df2 <rt_timer_control+0xca>
80206d92:	00002797          	auipc	a5,0x2
80206d96:	30e78793          	addi	a5,a5,782 # 802090a0 <__FUNCTION__.12+0x10>
80206d9a:	0029191b          	slliw	s2,s2,0x2
80206d9e:	00f9093b          	addw	s2,s2,a5
80206da2:	00092703          	lw	a4,0(s2)
80206da6:	9fb9                	addw	a5,a5,a4
80206da8:	8782                	jr	a5
80206daa:	585c                	lw	a5,52(s0)
80206dac:	c09c                	sw	a5,0(s1)
80206dae:	a091                	j	80206df2 <rt_timer_control+0xca>
80206db0:	4098                	lw	a4,0(s1)
80206db2:	800007b7          	lui	a5,0x80000
80206db6:	ffe7c793          	xori	a5,a5,-2
80206dba:	00e7fe63          	bgeu	a5,a4,80206dd6 <rt_timer_control+0xae>
80206dbe:	2ac00613          	li	a2,684
80206dc2:	00002597          	auipc	a1,0x2
80206dc6:	31658593          	addi	a1,a1,790 # 802090d8 <__FUNCTION__.1>
80206dca:	00002517          	auipc	a0,0x2
80206dce:	8e650513          	addi	a0,a0,-1818 # 802086b0 <rt_system_timer_thread_init+0x16f2>
80206dd2:	958fe0ef          	jal	80204f2a <rt_assert_handler>
80206dd6:	01944783          	lbu	a5,25(s0)
80206dda:	8b85                	andi	a5,a5,1
80206ddc:	cb89                	beqz	a5,80206dee <rt_timer_control+0xc6>
80206dde:	8522                	mv	a0,s0
80206de0:	bc9ff0ef          	jal	802069a8 <_timer_remove>
80206de4:	01944783          	lbu	a5,25(s0)
80206de8:	9bf9                	andi	a5,a5,-2
80206dea:	00f40ca3          	sb	a5,25(s0)
80206dee:	409c                	lw	a5,0(s1)
80206df0:	d85c                	sw	a5,52(s0)
80206df2:	85ce                	mv	a1,s3
80206df4:	0000a517          	auipc	a0,0xa
80206df8:	5fc50513          	addi	a0,a0,1532 # 802113f0 <_htimer_lock>
80206dfc:	83dfc0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80206e00:	70a2                	ld	ra,40(sp)
80206e02:	7402                	ld	s0,32(sp)
80206e04:	64e2                	ld	s1,24(sp)
80206e06:	6942                	ld	s2,16(sp)
80206e08:	69a2                	ld	s3,8(sp)
80206e0a:	4501                	li	a0,0
80206e0c:	0301011b          	addiw	sp,sp,48
80206e10:	8082                	ret
80206e12:	01944783          	lbu	a5,25(s0)
80206e16:	9bf5                	andi	a5,a5,-3
80206e18:	00f40ca3          	sb	a5,25(s0)
80206e1c:	bfd9                	j	80206df2 <rt_timer_control+0xca>
80206e1e:	01944783          	lbu	a5,25(s0)
80206e22:	0027e793          	ori	a5,a5,2
80206e26:	bfcd                	j	80206e18 <rt_timer_control+0xf0>
80206e28:	01944783          	lbu	a5,25(s0)
80206e2c:	8b85                	andi	a5,a5,1
80206e2e:	c399                	beqz	a5,80206e34 <rt_timer_control+0x10c>
80206e30:	4785                	li	a5,1
80206e32:	bfad                	j	80206dac <rt_timer_control+0x84>
80206e34:	0004a023          	sw	zero,0(s1)
80206e38:	bf6d                	j	80206df2 <rt_timer_control+0xca>
80206e3a:	5c1c                	lw	a5,56(s0)
80206e3c:	bf85                	j	80206dac <rt_timer_control+0x84>
80206e3e:	545c                	lw	a5,44(s0)
80206e40:	b7b5                	j	80206dac <rt_timer_control+0x84>
80206e42:	d444                	sw	s1,44(s0)
80206e44:	b77d                	j	80206df2 <rt_timer_control+0xca>
80206e46:	581c                	lw	a5,48(s0)
80206e48:	b795                	j	80206dac <rt_timer_control+0x84>
80206e4a:	d804                	sw	s1,48(s0)
80206e4c:	b75d                	j	80206df2 <rt_timer_control+0xca>

80206e4e <rt_timer_check>:
80206e4e:	f701011b          	addiw	sp,sp,-144
80206e52:	e506                	sd	ra,136(sp)
80206e54:	e122                	sd	s0,128(sp)
80206e56:	fca6                	sd	s1,120(sp)
80206e58:	f8ca                	sd	s2,112(sp)
80206e5a:	f4ce                	sd	s3,104(sp)
80206e5c:	f0d2                	sd	s4,96(sp)
80206e5e:	ecd6                	sd	s5,88(sp)
80206e60:	e8da                	sd	s6,80(sp)
80206e62:	e4de                	sd	s7,72(sp)
80206e64:	e0e2                	sd	s8,64(sp)
80206e66:	fc66                	sd	s9,56(sp)
80206e68:	f86a                	sd	s10,48(sp)
80206e6a:	f46e                	sd	s11,40(sp)
80206e6c:	cecfd0ef          	jal	80204358 <rt_interrupt_get_nest>
80206e70:	ed09                	bnez	a0,80206e8a <rt_timer_check+0x3c>
80206e72:	2ee00613          	li	a2,750
80206e76:	00002597          	auipc	a1,0x2
80206e7a:	25258593          	addi	a1,a1,594 # 802090c8 <__FUNCTION__.0>
80206e7e:	00001517          	auipc	a0,0x1
80206e82:	f8250513          	addi	a0,a0,-126 # 80207e00 <rt_system_timer_thread_init+0xe42>
80206e86:	8a4fe0ef          	jal	80204f2a <rt_assert_handler>
80206e8a:	0000a517          	auipc	a0,0xa
80206e8e:	56650513          	addi	a0,a0,1382 # 802113f0 <_htimer_lock>
80206e92:	01810d1b          	addiw	s10,sp,24
80206e96:	f88fc0ef          	jal	8020361e <rt_spin_lock_irqsave>
80206e9a:	0000aa97          	auipc	s5,0xa
80206e9e:	55ea8a93          	addi	s5,s5,1374 # 802113f8 <_timer_list>
80206ea2:	80000a37          	lui	s4,0x80000
80206ea6:	842a                	mv	s0,a0
80206ea8:	896a                	mv	s2,s10
80206eaa:	d5afc0ef          	jal	80203404 <rt_tick_get>
80206eae:	000a8b9b          	sext.w	s7,s5
80206eb2:	ce6a                	sw	s10,28(sp)
80206eb4:	cc6a                	sw	s10,24(sp)
80206eb6:	ffea4a13          	xori	s4,s4,-2
80206eba:	0000ac17          	auipc	s8,0xa
80206ebe:	52ec0c13          	addi	s8,s8,1326 # 802113e8 <rt_timer_enter_hook>
80206ec2:	0000ab17          	auipc	s6,0xa
80206ec6:	52eb0b13          	addi	s6,s6,1326 # 802113f0 <_htimer_lock>
80206eca:	0000ac97          	auipc	s9,0xa
80206ece:	51ac8c93          	addi	s9,s9,1306 # 802113e4 <rt_timer_exit_hook>
80206ed2:	4d8d                	li	s11,3
80206ed4:	000aa483          	lw	s1,0(s5)
80206ed8:	89a6                	mv	s3,s1
80206eda:	01748c63          	beq	s1,s7,80206ef2 <rt_timer_check+0xa4>
80206ede:	fdc4879b          	addiw	a5,s1,-36
80206ee2:	c63e                	sw	a5,12(sp)
80206ee4:	d20fc0ef          	jal	80203404 <rt_tick_get>
80206ee8:	0149a703          	lw	a4,20(s3)
80206eec:	9d19                	subw	a0,a0,a4
80206eee:	02aa7963          	bgeu	s4,a0,80206f20 <rt_timer_check+0xd2>
80206ef2:	85a2                	mv	a1,s0
80206ef4:	0000a517          	auipc	a0,0xa
80206ef8:	4fc50513          	addi	a0,a0,1276 # 802113f0 <_htimer_lock>
80206efc:	f3cfc0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80206f00:	60aa                	ld	ra,136(sp)
80206f02:	640a                	ld	s0,128(sp)
80206f04:	74e6                	ld	s1,120(sp)
80206f06:	7946                	ld	s2,112(sp)
80206f08:	79a6                	ld	s3,104(sp)
80206f0a:	7a06                	ld	s4,96(sp)
80206f0c:	6ae6                	ld	s5,88(sp)
80206f0e:	6b46                	ld	s6,80(sp)
80206f10:	6ba6                	ld	s7,72(sp)
80206f12:	6c06                	ld	s8,64(sp)
80206f14:	7ce2                	ld	s9,56(sp)
80206f16:	7d42                	ld	s10,48(sp)
80206f18:	7da2                	ld	s11,40(sp)
80206f1a:	0901011b          	addiw	sp,sp,144
80206f1e:	8082                	ret
80206f20:	000c2703          	lw	a4,0(s8)
80206f24:	c319                	beqz	a4,80206f2a <rt_timer_check+0xdc>
80206f26:	4532                	lw	a0,12(sp)
80206f28:	9702                	jalr	a4
80206f2a:	4532                	lw	a0,12(sp)
80206f2c:	a7dff0ef          	jal	802069a8 <_timer_remove>
80206f30:	ff59c703          	lbu	a4,-11(s3)
80206f34:	00277693          	andi	a3,a4,2
80206f38:	e681                	bnez	a3,80206f40 <rt_timer_check+0xf2>
80206f3a:	9b79                	andi	a4,a4,-2
80206f3c:	fee98aa3          	sb	a4,-11(s3)
80206f40:	4762                	lw	a4,24(sp)
80206f42:	85a2                	mv	a1,s0
80206f44:	855a                	mv	a0,s6
80206f46:	c344                	sw	s1,4(a4)
80206f48:	00e9a023          	sw	a4,0(s3)
80206f4c:	0129a223          	sw	s2,4(s3)
80206f50:	cc26                	sw	s1,24(sp)
80206f52:	ee6fc0ef          	jal	80203638 <rt_spin_unlock_irqrestore>
80206f56:	0089a703          	lw	a4,8(s3)
80206f5a:	00c9a503          	lw	a0,12(s3)
80206f5e:	9702                	jalr	a4
80206f60:	000ca703          	lw	a4,0(s9)
80206f64:	c319                	beqz	a4,80206f6a <rt_timer_check+0x11c>
80206f66:	4532                	lw	a0,12(sp)
80206f68:	9702                	jalr	a4
80206f6a:	855a                	mv	a0,s6
80206f6c:	eb2fc0ef          	jal	8020361e <rt_spin_lock_irqsave>
80206f70:	4762                	lw	a4,24(sp)
80206f72:	842a                	mv	s0,a0
80206f74:	f7a700e3          	beq	a4,s10,80206ed4 <rt_timer_check+0x86>
80206f78:	0009a683          	lw	a3,0(s3)
80206f7c:	0049a703          	lw	a4,4(s3)
80206f80:	c2d8                	sw	a4,4(a3)
80206f82:	c314                	sw	a3,0(a4)
80206f84:	ff59c703          	lbu	a4,-11(s3)
80206f88:	0099a223          	sw	s1,4(s3)
80206f8c:	0099a023          	sw	s1,0(s3)
80206f90:	00377693          	andi	a3,a4,3
80206f94:	f5b690e3          	bne	a3,s11,80206ed4 <rt_timer_check+0x86>
80206f98:	4532                	lw	a0,12(sp)
80206f9a:	9b79                	andi	a4,a4,-2
80206f9c:	fee98aa3          	sb	a4,-11(s3)
80206fa0:	a1bff0ef          	jal	802069ba <_timer_start.constprop.0>
80206fa4:	bf05                	j	80206ed4 <rt_timer_check+0x86>

80206fa6 <rt_system_timer_init>:
80206fa6:	0000a797          	auipc	a5,0xa
80206faa:	45278793          	addi	a5,a5,1106 # 802113f8 <_timer_list>
80206fae:	0000a517          	auipc	a0,0xa
80206fb2:	44250513          	addi	a0,a0,1090 # 802113f0 <_htimer_lock>
80206fb6:	c3dc                	sw	a5,4(a5)
80206fb8:	c39c                	sw	a5,0(a5)
80206fba:	e58fc06f          	j	80203612 <rt_spin_lock_init>

80206fbe <rt_system_timer_thread_init>:
80206fbe:	8082                	ret
80206fc0:	736e6f63          	bltu	t3,s6,802076fe <rt_system_timer_thread_init+0x740>
80206fc4:	00656c6f          	jal	s8,8025cfca <__bss_end+0x4727a>
80206fc8:	00005b1b          	srliw	s6,zero,0x0
80206fcc:	0000                	unimp
80206fce:	0000                	unimp
80206fd0:	6c75                	lui	s8,0x1d
80206fd2:	0000676f          	jal	a4,8020cfd2 <__global_pointer$+0x3502>
80206fd6:	0000                	unimp
80206fd8:	7364                	ld	s1,224(a4)
80206fda:	0074                	addi	a3,sp,12
80206fdc:	0000                	unimp
80206fde:	0000                	unimp
80206fe0:	00637273          	csrrci	tp,0x6,6
80206fe4:	0000                	unimp
80206fe6:	0000                	unimp
80206fe8:	2f4e                	fld	ft10,208(sp)
80206fea:	0041                	c.nop	16
80206fec:	0000                	unimp
80206fee:	0000                	unimp
80206ff0:	6f6c                	ld	a1,216(a4)
80206ff2:	75625f67          	.insn	4, 0x75625f67
80206ff6:	0066                	c.slli	zero,0x19
80206ff8:	656c                	ld	a1,200(a0)
80206ffa:	6576                	ld	a0,344(sp)
80206ffc:	206c                	fld	fa1,192(s0)
80206ffe:	3d3c                	fld	fa5,120(a0)
80207000:	4c20                	lw	s0,88(s0)
80207002:	4c5f474f          	.insn	4, 0x4c5f474f
80207006:	4c56                	lw	s8,84(sp)
80207008:	445f 4742 0000      	.insn	6, 0x4742445f
8020700e:	0000                	unimp
80207010:	6174                	ld	a3,192(a0)
80207012:	00000067          	jr	zero # 0 <__STACKSIZE__-0x4000>
80207016:	0000                	unimp
80207018:	0020                	addi	s0,sp,8
8020701a:	0000                	unimp
8020701c:	0000                	unimp
8020701e:	0000                	unimp
80207020:	5349                	li	t1,-14
80207022:	0052                	c.slli	zero,0x14
80207024:	0000                	unimp
80207026:	0000                	unimp
80207028:	203a                	fld	ft0,392(sp)
8020702a:	0000                	unimp
8020702c:	0000                	unimp
8020702e:	0000                	unimp
80207030:	0a0d                	addi	s4,s4,3 # 80000003 <__bss_end+0xffdea2b3>
80207032:	0000                	unimp
80207034:	0000                	unimp
80207036:	0000                	unimp
80207038:	6d305b1b          	.insn	4, 0x6d305b1b
8020703c:	0000                	unimp
8020703e:	0000                	unimp
80207040:	6f66                	ld	t5,88(sp)
80207042:	6d72                	ld	s10,280(sp)
80207044:	7461                	lui	s0,0xffff8
80207046:	0000                	unimp
80207048:	7562                	ld	a0,56(sp)
8020704a:	0066                	c.slli	zero,0x19
8020704c:	0000                	unimp
8020704e:	0000                	unimp
80207050:	3025                	.insn	2, 0x3025
80207052:	5834                	lw	a3,112(s0)
80207054:	252d                	addiw	a0,a0,11
80207056:	3430                	fld	fa2,104(s0)
80207058:	3a58                	fld	fa4,176(a2)
8020705a:	0020                	addi	s0,sp,8
8020705c:	0000                	unimp
8020705e:	0000                	unimp
80207060:	3025                	.insn	2, 0x3025
80207062:	5832                	lw	a6,44(sp)
80207064:	0020                	addi	s0,sp,8
80207066:	0000                	unimp
80207068:	2020                	fld	fs0,64(s0)
8020706a:	0020                	addi	s0,sp,8
8020706c:	0000                	unimp
8020706e:	0000                	unimp
80207070:	2020                	fld	fs0,64(s0)
80207072:	0000                	unimp
80207074:	0000                	unimp
80207076:	0000                	unimp
80207078:	6325                	lui	t1,0x9
8020707a:	0000                	unimp
8020707c:	0000                	unimp
8020707e:	0000                	unimp
80207080:	6628                	ld	a0,72(a2)
80207082:	616d726f          	jal	tp,802de698 <__bss_end+0xc8948>
80207086:	2074                	fld	fa3,192(s0)
80207088:	2626                	fld	fa2,72(sp)
8020708a:	2120                	fld	fs0,64(a0)
8020708c:	6568                	ld	a0,200(a0)
8020708e:	5f78                	lw	a4,124(a4)
80207090:	7562                	ld	a0,56(sp)
80207092:	2966                	fld	fs2,88(sp)
80207094:	7c20                	ld	s0,120(s0)
80207096:	207c                	fld	fa5,192(s0)
80207098:	2128                	fld	fa0,64(a0)
8020709a:	6f66                	ld	t5,88(sp)
8020709c:	6d72                	ld	s10,280(sp)
8020709e:	7461                	lui	s0,0xffff8
802070a0:	2620                	fld	fs0,72(a2)
802070a2:	2026                	fld	ft0,72(sp)
802070a4:	6568                	ld	a0,200(a0)
802070a6:	5f78                	lw	a4,124(a4)
802070a8:	7562                	ld	a0,56(sp)
802070aa:	2966                	fld	fs2,88(sp)
802070ac:	0000                	unimp
802070ae:	0000                	unimp
802070b0:	7245                	lui	tp,0xffff1
802070b2:	6f72                	ld	t5,280(sp)
802070b4:	3a72                	fld	fs4,312(sp)
802070b6:	4320                	lw	s0,64(a4)
802070b8:	7275                	lui	tp,0xffffd
802070ba:	6572                	ld	a0,280(sp)
802070bc:	746e                	ld	s0,248(sp)
802070be:	6d20                	ld	s0,88(a0)
802070c0:	2065646f          	jal	s0,8025d2c6 <__bss_end+0x47576>
802070c4:	6f6e                	ld	t5,216(sp)
802070c6:	2074                	fld	fa3,192(s0)
802070c8:	70707573          	csrrci	a0,0x707,0
802070cc:	6574726f          	jal	tp,8024ef22 <__bss_end+0x391d2>
802070d0:	2064                	fld	fs1,192(s0)
802070d2:	7572                	ld	a0,312(sp)
802070d4:	206e                	fld	ft0,216(sp)
802070d6:	6e69                	lui	t3,0x1a
802070d8:	4920                	lw	s0,80(a0)
802070da:	202e5253          	.insn	4, 0x202e5253
802070de:	6c50                	ld	a2,152(s0)
802070e0:	6165                	addi	sp,sp,112
802070e2:	65206573          	csrrsi	a0,0x652,0
802070e6:	616e                	ld	sp,216(sp)
802070e8:	6c62                	ld	s8,24(sp)
802070ea:	2065                	.insn	2, 0x2065
802070ec:	4c55                	li	s8,21
802070ee:	555f474f          	.insn	4, 0x555f474f
802070f2:	474e4953          	.insn	4, 0x474e4953
802070f6:	495f 5253 4c5f      	.insn	6, 0x4c5f5253495f
802070fc:	0a2e474f          	fnmadd.d	fa4,ft8,ft2,ft1,rmm
	...
80207108:	6c75                	lui	s8,0x1d
8020710a:	692e676f          	jal	a4,802ed79c <__bss_end+0xd7a4c>
8020710e:	696e                	ld	s2,216(sp)
80207110:	5f74                	lw	a3,124(a4)
80207112:	00006b6f          	jal	s6,8020d112 <__global_pointer$+0x3642>
80207116:	0000                	unimp
80207118:	6162                	ld	sp,24(sp)
8020711a:	6e656b63          	bltu	a0,t1,80207810 <rt_system_timer_thread_init+0x852>
8020711e:	0064                	addi	s1,sp,12
80207120:	616e                	ld	sp,216(sp)
80207122:	656d                	lui	a0,0x1b
80207124:	0000                	unimp
80207126:	0000                	unimp
80207128:	6162                	ld	sp,24(sp)
8020712a:	6e656b63          	bltu	a0,t1,80207820 <rt_system_timer_thread_init+0x862>
8020712e:	2d64                	fld	fs1,216(a0)
80207130:	6f3e                	ld	t5,456(sp)
80207132:	7475                	lui	s0,0xffffd
80207134:	7570                	ld	a2,232(a0)
80207136:	0074                	addi	a3,sp,12
80207138:	006d3533          	sltu	a0,s10,t1
8020713c:	0000                	unimp
8020713e:	0000                	unimp
80207140:	006d3133          	sltu	sp,s10,t1
80207144:	0000                	unimp
80207146:	0000                	unimp
80207148:	006d3333          	sltu	t1,s10,t1
8020714c:	0000                	unimp
8020714e:	0000                	unimp
80207150:	006d3233          	sltu	tp,s10,t1
80207154:	0000                	unimp
80207156:	0000                	unimp
80207158:	2f41                	addiw	t5,t5,16
8020715a:	0000                	unimp
8020715c:	0000                	unimp
8020715e:	0000                	unimp
80207160:	2f45                	addiw	t5,t5,17
80207162:	0000                	unimp
80207164:	0000                	unimp
80207166:	0000                	unimp
80207168:	00002f57          	.insn	4, 0x2f57
8020716c:	0000                	unimp
8020716e:	0000                	unimp
80207170:	2f49                	addiw	t5,t5,18
80207172:	0000                	unimp
80207174:	0000                	unimp
80207176:	0000                	unimp
80207178:	2f44                	fld	fs1,152(a4)
8020717a:	0000                	unimp
8020717c:	0000                	unimp
8020717e:	0000                	unimp
80207180:	74756873          	csrrsi	a6,0x747,10
80207184:	6f64                	ld	s1,216(a4)
80207186:	2e2e6e77          	.insn	4, 0x2e2e6e77
8020718a:	0a2e                	slli	s4,s4,0xb
8020718c:	0000                	unimp
8020718e:	0000                	unimp
80207190:	4e55                	li	t3,21
80207192:	682d                	lui	a6,0xb
80207194:	6e61                	lui	t3,0x18
80207196:	6c64                	ld	s1,216(s0)
80207198:	6465                	lui	s0,0x19
8020719a:	6920                	ld	s0,80(a0)
8020719c:	746e                	ld	s0,248(sp)
8020719e:	7265                	lui	tp,0xffff9
802071a0:	7572                	ld	a0,312(sp)
802071a2:	7470                	ld	a2,232(s0)
802071a4:	2520                	fld	fs0,72(a0)
802071a6:	2064                	fld	fs1,192(s0)
802071a8:	7563636f          	jal	t1,8023d8fe <__bss_end+0x27bae>
802071ac:	7272                	ld	tp,312(sp)
802071ae:	6465                	lui	s0,0x19
802071b0:	2121                	addiw	sp,sp,8
802071b2:	0a21                	addi	s4,s4,8
802071b4:	0000                	unimp
802071b6:	0000                	unimp
802071b8:	6572                	ld	a0,280(sp)
802071ba:	2e74                	fld	fa3,216(a2)
802071bc:	7265                	lui	tp,0xffff9
802071be:	6f72                	ld	t5,280(sp)
802071c0:	2072                	fld	ft0,280(sp)
802071c2:	3d3d                	addiw	s10,s10,-17
802071c4:	5320                	lw	s0,96(a4)
802071c6:	4942                	lw	s2,16(sp)
802071c8:	535f 4355 4543      	.insn	6, 0x45434355535f
802071ce:	00005353          	fadd.s	ft6,ft0,ft0,unknown
802071d2:	0000                	unimp
802071d4:	0000                	unimp
802071d6:	0000                	unimp
802071d8:	65707553          	.insn	4, 0x65707553
802071dc:	7672                	ld	a2,312(sp)
802071de:	7369                	lui	t1,0xffffa
802071e0:	4920726f          	jal	tp,8020e672 <__stack_cpu0+0x1372>
802071e4:	746e                	ld	s0,248(sp)
802071e6:	7265                	lui	tp,0xffff9
802071e8:	7572                	ld	a0,312(sp)
802071ea:	7470                	ld	a2,232(s0)
802071ec:	4520                	lw	s0,72(a0)
802071ee:	616e                	ld	sp,216(sp)
802071f0:	6c62                	ld	s8,24(sp)
802071f2:	6465                	lui	s0,0x19
802071f4:	0000                	unimp
802071f6:	0000                	unimp
802071f8:	65707553          	.insn	4, 0x65707553
802071fc:	7672                	ld	a2,312(sp)
802071fe:	7369                	lui	t1,0xffffa
80207200:	4920726f          	jal	tp,8020e692 <__stack_cpu0+0x1392>
80207204:	746e                	ld	s0,248(sp)
80207206:	7265                	lui	tp,0xffff9
80207208:	7572                	ld	a0,312(sp)
8020720a:	7470                	ld	a2,232(s0)
8020720c:	4420                	lw	s0,72(s0)
8020720e:	7369                	lui	t1,0xffffa
80207210:	6261                	lui	tp,0x18
80207212:	656c                	ld	a1,200(a0)
80207214:	0064                	addi	s1,sp,12
80207216:	0000                	unimp
80207218:	614c                	ld	a1,128(a0)
8020721a:	54207473          	csrrci	s0,0x542,0
8020721e:	6d69                	lui	s10,0x1a
80207220:	2065                	.insn	2, 0x2065
80207222:	65707553          	.insn	4, 0x65707553
80207226:	7672                	ld	a2,312(sp)
80207228:	7369                	lui	t1,0xffffa
8020722a:	4920726f          	jal	tp,8020e6bc <__stack_cpu0+0x13bc>
8020722e:	746e                	ld	s0,248(sp)
80207230:	7265                	lui	tp,0xffff9
80207232:	7572                	ld	a0,312(sp)
80207234:	7470                	ld	a2,232(s0)
80207236:	4520                	lw	s0,72(a0)
80207238:	616e                	ld	sp,216(sp)
8020723a:	6c62                	ld	s8,24(sp)
8020723c:	6465                	lui	s0,0x19
8020723e:	0000                	unimp
80207240:	614c                	ld	a1,128(a0)
80207242:	54207473          	csrrci	s0,0x542,0
80207246:	6d69                	lui	s10,0x1a
80207248:	2065                	.insn	2, 0x2065
8020724a:	65707553          	.insn	4, 0x65707553
8020724e:	7672                	ld	a2,312(sp)
80207250:	7369                	lui	t1,0xffffa
80207252:	4920726f          	jal	tp,8020e6e4 <__stack_cpu0+0x13e4>
80207256:	746e                	ld	s0,248(sp)
80207258:	7265                	lui	tp,0xffff9
8020725a:	7572                	ld	a0,312(sp)
8020725c:	7470                	ld	a2,232(s0)
8020725e:	4420                	lw	s0,72(s0)
80207260:	7369                	lui	t1,0xffffa
80207262:	6261                	lui	tp,0x18
80207264:	656c                	ld	a1,200(a0)
80207266:	0064                	addi	s1,sp,12
80207268:	614c                	ld	a1,128(a0)
8020726a:	50207473          	csrrci	s0,0x502,0
8020726e:	6972                	ld	s2,280(sp)
80207270:	6976                	ld	s2,344(sp)
80207272:	656c                	ld	a1,200(a0)
80207274:	69206567          	.insn	4, 0x69206567
80207278:	75532073          	csrs	0x755,t1
8020727c:	6570                	ld	a2,200(a0)
8020727e:	7672                	ld	a2,312(sp)
80207280:	7369                	lui	t1,0xffffa
80207282:	4d20726f          	jal	tp,8020e754 <__stack_cpu0+0x1454>
80207286:	0065646f          	jal	s0,8025d28c <__bss_end+0x4753c>
8020728a:	0000                	unimp
8020728c:	0000                	unimp
8020728e:	0000                	unimp
80207290:	614c                	ld	a1,128(a0)
80207292:	50207473          	csrrci	s0,0x502,0
80207296:	6972                	ld	s2,280(sp)
80207298:	6976                	ld	s2,344(sp)
8020729a:	656c                	ld	a1,200(a0)
8020729c:	69206567          	.insn	4, 0x69206567
802072a0:	73552073          	csrs	mhpmevent21h,a0
802072a4:	7265                	lui	tp,0xffff9
802072a6:	4d20                	lw	s0,88(a0)
802072a8:	0065646f          	jal	s0,8025d2ae <__bss_end+0x4755e>
802072ac:	0000                	unimp
802072ae:	0000                	unimp
802072b0:	6550                	ld	a2,136(a0)
802072b2:	6d72                	ld	s10,280(sp)
802072b4:	7469                	lui	s0,0xffffa
802072b6:	7420                	ld	s0,104(s0)
802072b8:	6341206f          	j	802198ec <__bss_end+0x3b9c>
802072bc:	73736563          	bltu	t1,s7,802079e6 <rt_system_timer_thread_init+0xa28>
802072c0:	5520                	lw	s0,104(a0)
802072c2:	20726573          	csrrsi	a0,0x207,4
802072c6:	6150                	ld	a2,128(a0)
802072c8:	00006567          	.insn	4, 0x6567
802072cc:	0000                	unimp
802072ce:	0000                	unimp
802072d0:	6f4e                	ld	t5,208(sp)
802072d2:	2074                	fld	fa3,192(s0)
802072d4:	6550                	ld	a2,136(a0)
802072d6:	6d72                	ld	s10,280(sp)
802072d8:	7469                	lui	s0,0xffffa
802072da:	7420                	ld	s0,104(s0)
802072dc:	6341206f          	j	80219910 <__bss_end+0x3bc0>
802072e0:	73736563          	bltu	t1,s7,80207a0a <rt_system_timer_thread_init+0xa4c>
802072e4:	5520                	lw	s0,104(a0)
802072e6:	20726573          	csrrsi	a0,0x207,4
802072ea:	6150                	ld	a2,128(a0)
802072ec:	00006567          	.insn	4, 0x6567
802072f0:	6550                	ld	a2,136(a0)
802072f2:	6d72                	ld	s10,280(sp)
802072f4:	7469                	lui	s0,0xffffa
802072f6:	7420                	ld	s0,104(s0)
802072f8:	6552206f          	j	8022a14c <__bss_end+0x143fc>
802072fc:	6461                	lui	s0,0x18
802072fe:	4520                	lw	s0,72(a0)
80207300:	6578                	ld	a4,200(a0)
80207302:	61747563          	bgeu	s0,s7,8020790c <rt_system_timer_thread_init+0x94e>
80207306:	6c62                	ld	s8,24(sp)
80207308:	2d65                	addiw	s10,s10,25 # 1a019 <__text_size+0x10e71>
8020730a:	796c6e6f          	jal	t3,802cdaa0 <__bss_end+0xb7d50>
8020730e:	5020                	lw	s0,96(s0)
80207310:	6761                	lui	a4,0x18
80207312:	0065                	c.nop	25
80207314:	0000                	unimp
80207316:	0000                	unimp
80207318:	6f4e                	ld	t5,208(sp)
8020731a:	2074                	fld	fa3,192(s0)
8020731c:	6550                	ld	a2,136(a0)
8020731e:	6d72                	ld	s10,280(sp)
80207320:	7469                	lui	s0,0xffffa
80207322:	7420                	ld	s0,104(s0)
80207324:	6552206f          	j	8022a178 <__bss_end+0x14428>
80207328:	6461                	lui	s0,0x18
8020732a:	4520                	lw	s0,72(a0)
8020732c:	6578                	ld	a4,200(a0)
8020732e:	61747563          	bgeu	s0,s7,80207938 <rt_system_timer_thread_init+0x97a>
80207332:	6c62                	ld	s8,24(sp)
80207334:	2d65                	addiw	s10,s10,25
80207336:	796c6e6f          	jal	t3,802cdacc <__bss_end+0xb7d7c>
8020733a:	5020                	lw	s0,96(s0)
8020733c:	6761                	lui	a4,0x18
8020733e:	0065                	c.nop	25
80207340:	2d2d                	addiw	s10,s10,11
80207342:	2d2d                	addiw	s10,s10,11
80207344:	2d2d                	addiw	s10,s10,11
80207346:	2d2d                	addiw	s10,s10,11
80207348:	2d2d                	addiw	s10,s10,11
8020734a:	2d2d                	addiw	s10,s10,11
8020734c:	2d2d                	addiw	s10,s10,11
8020734e:	7544                	ld	s1,168(a0)
80207350:	706d                	c.lui	zero,0xffffb
80207352:	5220                	lw	s0,96(a2)
80207354:	6765                	lui	a4,0x19
80207356:	7369                	lui	t1,0xffffa
80207358:	6574                	ld	a3,200(a0)
8020735a:	7372                	ld	t1,312(sp)
8020735c:	2d2d                	addiw	s10,s10,11
8020735e:	2d2d                	addiw	s10,s10,11
80207360:	2d2d                	addiw	s10,s10,11
80207362:	2d2d                	addiw	s10,s10,11
80207364:	2d2d                	addiw	s10,s10,11
80207366:	2d2d                	addiw	s10,s10,11
80207368:	2d2d                	addiw	s10,s10,11
8020736a:	2d2d                	addiw	s10,s10,11
8020736c:	0a2d                	addi	s4,s4,11
8020736e:	0000                	unimp
80207370:	7546                	ld	a0,112(sp)
80207372:	636e                	ld	t1,216(sp)
80207374:	6974                	ld	a3,208(a0)
80207376:	52206e6f          	jal	t3,8020d898 <__stack_cpu0+0x598>
8020737a:	6765                	lui	a4,0x19
8020737c:	7369                	lui	t1,0xffffa
8020737e:	6574                	ld	a3,200(a0)
80207380:	7372                	ld	t1,312(sp)
80207382:	0a3a                	slli	s4,s4,0xe
80207384:	0000                	unimp
80207386:	0000                	unimp
80207388:	7209                	lui	tp,0xfffe2
8020738a:	2861                	addiw	a6,a6,24 # b018 <__text_size+0x1e70>
8020738c:	3178                	fld	fa4,224(a0)
8020738e:	2029                	.insn	2, 0x2029
80207390:	203d                	.insn	2, 0x203d
80207392:	7830                	ld	a2,112(s0)
80207394:	7025                	c.lui	zero,0xfffe9
80207396:	7509                	lui	a0,0xfffe2
80207398:	5f726573          	csrrsi	a0,0x5f7,4
8020739c:	3d207073          	csrci	0x3d2,0
802073a0:	3020                	fld	fs0,96(s0)
802073a2:	2578                	fld	fa4,200(a0)
802073a4:	0a70                	addi	a2,sp,284
802073a6:	0000                	unimp
802073a8:	6709                	lui	a4,0x2
802073aa:	2870                	fld	fa2,208(s0)
802073ac:	3378                	fld	fa4,224(a4)
802073ae:	2029                	.insn	2, 0x2029
802073b0:	203d                	.insn	2, 0x203d
802073b2:	7830                	ld	a2,112(s0)
802073b4:	7025                	c.lui	zero,0xfffe9
802073b6:	7409                	lui	s0,0xfffe2
802073b8:	2870                	fld	fa2,208(s0)
802073ba:	3478                	fld	fa4,232(s0)
802073bc:	2029                	.insn	2, 0x2029
802073be:	203d                	.insn	2, 0x203d
802073c0:	7830                	ld	a2,112(s0)
802073c2:	7025                	c.lui	zero,0xfffe9
802073c4:	000a                	c.slli	zero,0x2
802073c6:	0000                	unimp
802073c8:	6554                	ld	a3,136(a0)
802073ca:	706d                	c.lui	zero,0xffffb
802073cc:	7261726f          	jal	tp,8021eaf2 <__bss_end+0x8da2>
802073d0:	2079                	.insn	2, 0x2079
802073d2:	6552                	ld	a0,272(sp)
802073d4:	74736967          	.insn	4, 0x74736967
802073d8:	7265                	lui	tp,0xffff9
802073da:	000a3a73          	csrrc	s4,ustatus,s4
802073de:	0000                	unimp
802073e0:	7409                	lui	s0,0xfffe2
802073e2:	2830                	fld	fa2,80(s0)
802073e4:	3578                	fld	fa4,232(a0)
802073e6:	2029                	.insn	2, 0x2029
802073e8:	203d                	.insn	2, 0x203d
802073ea:	7830                	ld	a2,112(s0)
802073ec:	7025                	c.lui	zero,0xfffe9
802073ee:	7409                	lui	s0,0xfffe2
802073f0:	2831                	addiw	a6,a6,12
802073f2:	3678                	fld	fa4,232(a2)
802073f4:	2029                	.insn	2, 0x2029
802073f6:	203d                	.insn	2, 0x203d
802073f8:	7830                	ld	a2,112(s0)
802073fa:	7025                	c.lui	zero,0xfffe9
802073fc:	000a                	c.slli	zero,0x2
802073fe:	0000                	unimp
80207400:	7409                	lui	s0,0xfffe2
80207402:	2832                	fld	fa6,264(sp)
80207404:	3778                	fld	fa4,232(a4)
80207406:	2029                	.insn	2, 0x2029
80207408:	203d                	.insn	2, 0x203d
8020740a:	7830                	ld	a2,112(s0)
8020740c:	7025                	c.lui	zero,0xfffe9
8020740e:	000a                	c.slli	zero,0x2
80207410:	7409                	lui	s0,0xfffe2
80207412:	32782833          	.insn	4, 0x32782833
80207416:	2938                	fld	fa4,80(a0)
80207418:	3d20                	fld	fs0,120(a0)
8020741a:	3020                	fld	fs0,96(s0)
8020741c:	2578                	fld	fa4,200(a0)
8020741e:	0970                	addi	a2,sp,156
80207420:	3474                	fld	fa3,232(s0)
80207422:	7828                	ld	a0,112(s0)
80207424:	3932                	fld	fs2,296(sp)
80207426:	2029                	.insn	2, 0x2029
80207428:	203d                	.insn	2, 0x203d
8020742a:	7830                	ld	a2,112(s0)
8020742c:	7025                	c.lui	zero,0xfffe9
8020742e:	000a                	c.slli	zero,0x2
80207430:	7409                	lui	s0,0xfffe2
80207432:	2835                	addiw	a6,a6,13
80207434:	3378                	fld	fa4,224(a4)
80207436:	2930                	fld	fa2,80(a0)
80207438:	3d20                	fld	fs0,120(a0)
8020743a:	3020                	fld	fs0,96(s0)
8020743c:	2578                	fld	fa4,200(a0)
8020743e:	0970                	addi	a2,sp,156
80207440:	3674                	fld	fa3,232(a2)
80207442:	7828                	ld	a0,112(s0)
80207444:	20293133          	.insn	4, 0x20293133
80207448:	203d                	.insn	2, 0x203d
8020744a:	7830                	ld	a2,112(s0)
8020744c:	7025                	c.lui	zero,0xfffe9
8020744e:	000a                	c.slli	zero,0x2
80207450:	65766153          	.insn	4, 0x65766153
80207454:	2064                	fld	fs1,192(s0)
80207456:	6552                	ld	a0,272(sp)
80207458:	74736967          	.insn	4, 0x74736967
8020745c:	7265                	lui	tp,0xffff9
8020745e:	000a3a73          	csrrc	s4,ustatus,s4
80207462:	0000                	unimp
80207464:	0000                	unimp
80207466:	0000                	unimp
80207468:	7309                	lui	t1,0xfffe2
8020746a:	2f30                	fld	fa2,88(a4)
8020746c:	7066                	.insn	2, 0x7066
8020746e:	7828                	ld	a0,112(s0)
80207470:	2938                	fld	fa4,80(a0)
80207472:	3d20                	fld	fs0,120(a0)
80207474:	3020                	fld	fs0,96(s0)
80207476:	2578                	fld	fa4,200(a0)
80207478:	0970                	addi	a2,sp,156
8020747a:	78283173          	csrrc	sp,0x782,a6
8020747e:	2939                	addiw	s2,s2,14
80207480:	3d20                	fld	fs0,120(a0)
80207482:	3020                	fld	fs0,96(s0)
80207484:	2578                	fld	fa4,200(a0)
80207486:	0a70                	addi	a2,sp,284
	...
80207490:	7309                	lui	t1,0xfffe2
80207492:	2832                	fld	fa6,264(sp)
80207494:	3178                	fld	fa4,224(a0)
80207496:	2938                	fld	fa4,80(a0)
80207498:	3d20                	fld	fs0,120(a0)
8020749a:	3020                	fld	fs0,96(s0)
8020749c:	2578                	fld	fa4,200(a0)
8020749e:	0970                	addi	a2,sp,156
802074a0:	78283373          	csrrc	t1,0x782,a6
802074a4:	3931                	addiw	s2,s2,-20
802074a6:	2029                	.insn	2, 0x2029
802074a8:	203d                	.insn	2, 0x203d
802074aa:	7830                	ld	a2,112(s0)
802074ac:	7025                	c.lui	zero,0xfffe9
802074ae:	000a                	c.slli	zero,0x2
802074b0:	7309                	lui	t1,0xfffe2
802074b2:	2834                	fld	fa3,80(s0)
802074b4:	3278                	fld	fa4,224(a2)
802074b6:	2930                	fld	fa2,80(a0)
802074b8:	3d20                	fld	fs0,120(a0)
802074ba:	3020                	fld	fs0,96(s0)
802074bc:	2578                	fld	fa4,200(a0)
802074be:	0970                	addi	a2,sp,156
802074c0:	78283573          	csrrc	a0,0x782,a6
802074c4:	3132                	fld	ft2,296(sp)
802074c6:	2029                	.insn	2, 0x2029
802074c8:	203d                	.insn	2, 0x203d
802074ca:	7830                	ld	a2,112(s0)
802074cc:	7025                	c.lui	zero,0xfffe9
802074ce:	000a                	c.slli	zero,0x2
802074d0:	7309                	lui	t1,0xfffe2
802074d2:	2836                	fld	fa6,328(sp)
802074d4:	3278                	fld	fa4,224(a2)
802074d6:	2932                	fld	fs2,264(sp)
802074d8:	3d20                	fld	fs0,120(a0)
802074da:	3020                	fld	fs0,96(s0)
802074dc:	2578                	fld	fa4,200(a0)
802074de:	0970                	addi	a2,sp,156
802074e0:	78283773          	csrrc	a4,0x782,a6
802074e4:	3332                	fld	ft6,296(sp)
802074e6:	2029                	.insn	2, 0x2029
802074e8:	203d                	.insn	2, 0x203d
802074ea:	7830                	ld	a2,112(s0)
802074ec:	7025                	c.lui	zero,0xfffe9
802074ee:	000a                	c.slli	zero,0x2
802074f0:	7309                	lui	t1,0xfffe2
802074f2:	2838                	fld	fa4,80(s0)
802074f4:	3278                	fld	fa4,224(a2)
802074f6:	2934                	fld	fa3,80(a0)
802074f8:	3d20                	fld	fs0,120(a0)
802074fa:	3020                	fld	fs0,96(s0)
802074fc:	2578                	fld	fa4,200(a0)
802074fe:	0970                	addi	a2,sp,156
80207500:	78283973          	csrrc	s2,0x782,a6
80207504:	3532                	fld	fa0,296(sp)
80207506:	2029                	.insn	2, 0x2029
80207508:	203d                	.insn	2, 0x203d
8020750a:	7830                	ld	a2,112(s0)
8020750c:	7025                	c.lui	zero,0xfffe9
8020750e:	000a                	c.slli	zero,0x2
80207510:	7309                	lui	t1,0xfffe2
80207512:	3031                	.insn	2, 0x3031
80207514:	7828                	ld	a0,112(s0)
80207516:	3632                	fld	fa2,296(sp)
80207518:	2029                	.insn	2, 0x2029
8020751a:	203d                	.insn	2, 0x203d
8020751c:	7830                	ld	a2,112(s0)
8020751e:	7025                	c.lui	zero,0xfffe9
80207520:	7309                	lui	t1,0xfffe2
80207522:	3131                	addiw	sp,sp,-20
80207524:	7828                	ld	a0,112(s0)
80207526:	3732                	fld	fa4,296(sp)
80207528:	2029                	.insn	2, 0x2029
8020752a:	203d                	.insn	2, 0x203d
8020752c:	7830                	ld	a2,112(s0)
8020752e:	7025                	c.lui	zero,0xfffe9
80207530:	000a                	c.slli	zero,0x2
80207532:	0000                	unimp
80207534:	0000                	unimp
80207536:	0000                	unimp
80207538:	7546                	ld	a0,112(sp)
8020753a:	636e                	ld	t1,216(sp)
8020753c:	6974                	ld	a3,208(a0)
8020753e:	41206e6f          	jal	t3,8020d950 <__stack_cpu0+0x650>
80207542:	6772                	ld	a4,280(sp)
80207544:	6d75                	lui	s10,0x1d
80207546:	6e65                	lui	t3,0x19
80207548:	7374                	ld	a3,224(a4)
8020754a:	5220                	lw	s0,96(a2)
8020754c:	6765                	lui	a4,0x19
8020754e:	7369                	lui	t1,0xffffa
80207550:	6574                	ld	a3,200(a0)
80207552:	7372                	ld	t1,312(sp)
80207554:	0a3a                	slli	s4,s4,0xe
80207556:	0000                	unimp
80207558:	6109                	addi	sp,sp,128
8020755a:	2830                	fld	fa2,80(s0)
8020755c:	3178                	fld	fa4,224(a0)
8020755e:	2930                	fld	fa2,80(a0)
80207560:	3d20                	fld	fs0,120(a0)
80207562:	3020                	fld	fs0,96(s0)
80207564:	2578                	fld	fa4,200(a0)
80207566:	0970                	addi	a2,sp,156
80207568:	3161                	addiw	sp,sp,-8
8020756a:	7828                	ld	a0,112(s0)
8020756c:	3131                	addiw	sp,sp,-20
8020756e:	2029                	.insn	2, 0x2029
80207570:	203d                	.insn	2, 0x203d
80207572:	7830                	ld	a2,112(s0)
80207574:	7025                	c.lui	zero,0xfffe9
80207576:	000a                	c.slli	zero,0x2
80207578:	6109                	addi	sp,sp,128
8020757a:	2832                	fld	fa6,264(sp)
8020757c:	3178                	fld	fa4,224(a0)
8020757e:	2932                	fld	fs2,264(sp)
80207580:	3d20                	fld	fs0,120(a0)
80207582:	3020                	fld	fs0,96(s0)
80207584:	2578                	fld	fa4,200(a0)
80207586:	0970                	addi	a2,sp,156
80207588:	3361                	addiw	t1,t1,-8 # ffff9ff8 <__bss_end+0x7fde42a8>
8020758a:	7828                	ld	a0,112(s0)
8020758c:	3331                	addiw	t1,t1,-20
8020758e:	2029                	.insn	2, 0x2029
80207590:	203d                	.insn	2, 0x203d
80207592:	7830                	ld	a2,112(s0)
80207594:	7025                	c.lui	zero,0xfffe9
80207596:	000a                	c.slli	zero,0x2
80207598:	6109                	addi	sp,sp,128
8020759a:	2834                	fld	fa3,80(s0)
8020759c:	3178                	fld	fa4,224(a0)
8020759e:	2934                	fld	fa3,80(a0)
802075a0:	3d20                	fld	fs0,120(a0)
802075a2:	3020                	fld	fs0,96(s0)
802075a4:	2578                	fld	fa4,200(a0)
802075a6:	0970                	addi	a2,sp,156
802075a8:	3561                	addiw	a0,a0,-8 # fffe1ff8 <__bss_end+0x7fdcc2a8>
802075aa:	7828                	ld	a0,112(s0)
802075ac:	3531                	addiw	a0,a0,-20
802075ae:	2029                	.insn	2, 0x2029
802075b0:	203d                	.insn	2, 0x203d
802075b2:	7830                	ld	a2,112(s0)
802075b4:	7025                	c.lui	zero,0xfffe9
802075b6:	000a                	c.slli	zero,0x2
802075b8:	6109                	addi	sp,sp,128
802075ba:	2836                	fld	fa6,328(sp)
802075bc:	3178                	fld	fa4,224(a0)
802075be:	2936                	fld	fs2,328(sp)
802075c0:	3d20                	fld	fs0,120(a0)
802075c2:	3020                	fld	fs0,96(s0)
802075c4:	2578                	fld	fa4,200(a0)
802075c6:	0970                	addi	a2,sp,156
802075c8:	3761                	addiw	a4,a4,-8 # 18ff8 <__text_size+0xfe50>
802075ca:	7828                	ld	a0,112(s0)
802075cc:	3731                	addiw	a4,a4,-20
802075ce:	2029                	.insn	2, 0x2029
802075d0:	203d                	.insn	2, 0x203d
802075d2:	7830                	ld	a2,112(s0)
802075d4:	7025                	c.lui	zero,0xfffe9
802075d6:	000a                	c.slli	zero,0x2
802075d8:	61747373          	csrrci	t1,0x617,8
802075dc:	7574                	ld	a3,232(a0)
802075de:	203d2073          	csrs	0x203,s10
802075e2:	7830                	ld	a2,112(s0)
802075e4:	7025                	c.lui	zero,0xfffe9
802075e6:	000a                	c.slli	zero,0x2
802075e8:	2509                	addiw	a0,a0,2
802075ea:	00000a73          	.insn	4, 0x0a73
802075ee:	0000                	unimp
802075f0:	70746173          	csrrsi	sp,0x707,8
802075f4:	3d20                	fld	fs0,120(a0)
802075f6:	3020                	fld	fs0,96(s0)
802075f8:	2578                	fld	fa4,200(a0)
802075fa:	0a70                	addi	a2,sp,284
802075fc:	0000                	unimp
802075fe:	0000                	unimp
80207600:	6f4e                	ld	t5,208(sp)
80207602:	4120                	lw	s0,64(a0)
80207604:	6464                	ld	s1,200(s0)
80207606:	6572                	ld	a0,280(sp)
80207608:	54207373          	csrrci	t1,0x542,0
8020760c:	6172                	ld	sp,280(sp)
8020760e:	736e                	ld	t1,248(sp)
80207610:	616c                	ld	a1,192(a0)
80207612:	6974                	ld	a3,208(a0)
80207614:	502f6e6f          	jal	t3,802fdb16 <__bss_end+0xe7dc6>
80207618:	6f72                	ld	t5,280(sp)
8020761a:	6574                	ld	a3,200(a0)
8020761c:	6f697463          	bgeu	s2,s6,80207d04 <rt_system_timer_thread_init+0xd46>
80207620:	206e                	fld	ft0,216(sp)
80207622:	6f4d                	lui	t5,0x13
80207624:	6564                	ld	s1,200(a0)
80207626:	0000                	unimp
80207628:	4d09                	li	s10,2
8020762a:	2065646f          	jal	s0,8025d830 <__bss_end+0x47ae0>
8020762e:	203d                	.insn	2, 0x203d
80207630:	7325                	lui	t1,0xfffe9
80207632:	000a                	c.slli	zero,0x2
80207634:	0000                	unimp
80207636:	0000                	unimp
80207638:	2d2d                	addiw	s10,s10,11 # 1d00b <__text_size+0x13e63>
8020763a:	2d2d                	addiw	s10,s10,11
8020763c:	2d2d                	addiw	s10,s10,11
8020763e:	2d2d                	addiw	s10,s10,11
80207640:	2d2d                	addiw	s10,s10,11
80207642:	2d2d                	addiw	s10,s10,11
80207644:	2d2d                	addiw	s10,s10,11
80207646:	2d2d                	addiw	s10,s10,11
80207648:	442d                	li	s0,11
8020764a:	6d75                	lui	s10,0x1d
8020764c:	2070                	fld	fa2,192(s0)
8020764e:	2d2d4b4f          	.insn	4, 0x2d2d4b4f
80207652:	2d2d                	addiw	s10,s10,11 # 1d00b <__text_size+0x13e63>
80207654:	2d2d                	addiw	s10,s10,11
80207656:	2d2d                	addiw	s10,s10,11
80207658:	2d2d                	addiw	s10,s10,11
8020765a:	2d2d                	addiw	s10,s10,11
8020765c:	2d2d                	addiw	s10,s10,11
8020765e:	2d2d                	addiw	s10,s10,11
80207660:	2d2d                	addiw	s10,s10,11
80207662:	2d2d                	addiw	s10,s10,11
80207664:	0a2d                	addi	s4,s4,11
80207666:	0000                	unimp
80207668:	6e55                	lui	t3,0x15
8020766a:	776f6e6b          	.insn	4, 0x776f6e6b
8020766e:	206e                	fld	ft0,216(sp)
80207670:	6e49                	lui	t3,0x12
80207672:	6574                	ld	a3,200(a0)
80207674:	7272                	ld	tp,312(sp)
80207676:	7075                	c.lui	zero,0xffffd
80207678:	0074                	addi	a3,sp,12
8020767a:	0000                	unimp
8020767c:	0000                	unimp
8020767e:	0000                	unimp
80207680:	6e55                	lui	t3,0x15
80207682:	776f6e6b          	.insn	4, 0x776f6e6b
80207686:	206e                	fld	ft0,216(sp)
80207688:	7845                	lui	a6,0xffff1
8020768a:	74706563          	bltu	zero,t2,80207dd4 <rt_system_timer_thread_init+0xe16>
8020768e:	6f69                	lui	t5,0x1a
80207690:	006e                	c.slli	zero,0x1b
80207692:	0000                	unimp
80207694:	0000                	unimp
80207696:	0000                	unimp
80207698:	2d0a                	fld	fs10,128(sp)
8020769a:	2d2d                	addiw	s10,s10,11
8020769c:	2d2d                	addiw	s10,s10,11
8020769e:	2d2d                	addiw	s10,s10,11
802076a0:	202d                	.insn	2, 0x202d
802076a2:	5645535b          	.insn	4, 0x5645535b
802076a6:	5245                	li	tp,-15
802076a8:	4520                	lw	s0,72(a0)
802076aa:	5252                	lw	tp,52(sp)
802076ac:	205d524f          	fnmadd.s	ft4,fs10,ft5,ft4,unknown
802076b0:	2d2d                	addiw	s10,s10,11
802076b2:	2d2d                	addiw	s10,s10,11
802076b4:	2d2d                	addiw	s10,s10,11
802076b6:	2d2d                	addiw	s10,s10,11
	...
802076c0:	696c                	ld	a1,208(a0)
802076c2:	6362                	ld	t1,24(sp)
802076c4:	7570                	ld	a2,232(a0)
802076c6:	742e                	ld	s0,232(sp)
802076c8:	6172                	ld	sp,280(sp)
802076ca:	0070                	addi	a2,sp,12
802076cc:	0000                	unimp
802076ce:	0000                	unimp
802076d0:	654e                	ld	a0,208(sp)
802076d2:	64657473          	csrrci	s0,hviprio1,10
802076d6:	7420                	ld	s0,104(s0)
802076d8:	6172                	ld	sp,280(sp)
802076da:	2070                	fld	fa2,192(s0)
802076dc:	6564                	ld	s1,200(a0)
802076de:	6574                	ld	a3,200(a0)
802076e0:	64657463          	bgeu	a0,t1,80207d28 <rt_system_timer_thread_init+0xd6a>
802076e4:	0000                	unimp
802076e6:	0000                	unimp
802076e8:	75616373          	csrrsi	t1,0x756,2
802076ec:	303a6573          	csrrsi	a0,mideleg,20
802076f0:	2578                	fld	fa4,200(a0)
802076f2:	2c70                	fld	fa2,216(s0)
802076f4:	61767473          	csrrci	s0,0x617,12
802076f8:	3a6c                	fld	fa1,240(a2)
802076fa:	7830                	ld	a2,112(s0)
802076fc:	7025                	c.lui	zero,0xfffe9
802076fe:	732c                	ld	a1,96(a4)
80207700:	7065                	c.lui	zero,0xffff9
80207702:	78303a63          	.insn	4, 0x78303a63
80207706:	7025                	c.lui	zero,0xfffe9
80207708:	000a                	c.slli	zero,0x2
8020770a:	0000                	unimp
8020770c:	0000                	unimp
8020770e:	0000                	unimp
80207710:	6e55                	lui	t3,0x15
80207712:	6168                	ld	a0,192(a0)
80207714:	646e                	ld	s0,216(sp)
80207716:	656c                	ld	a1,200(a0)
80207718:	2064                	fld	fs1,192(s0)
8020771a:	6e49                	lui	t3,0x12
8020771c:	6574                	ld	a3,200(a0)
8020771e:	7272                	ld	tp,312(sp)
80207720:	7075                	c.lui	zero,0xffffd
80207722:	2074                	fld	fa3,192(s0)
80207724:	6c25                	lui	s8,0x9
80207726:	3a64                	fld	fs1,240(a2)
80207728:	7325                	lui	t1,0xfffe9
8020772a:	000a                	c.slli	zero,0x2
8020772c:	0000                	unimp
8020772e:	0000                	unimp
80207730:	6e55                	lui	t3,0x15
80207732:	6168                	ld	a0,192(a0)
80207734:	646e                	ld	s0,216(sp)
80207736:	656c                	ld	a1,200(a0)
80207738:	2064                	fld	fs1,192(s0)
8020773a:	7845                	lui	a6,0xffff1
8020773c:	74706563          	bltu	zero,t2,80207e86 <rt_system_timer_thread_init+0xec8>
80207740:	6f69                	lui	t5,0x1a
80207742:	206e                	fld	ft0,216(sp)
80207744:	6c25                	lui	s8,0x9
80207746:	3a64                	fld	fs1,240(a2)
80207748:	7325                	lui	t1,0xfffe9
8020774a:	000a                	c.slli	zero,0x2
8020774c:	0000                	unimp
8020774e:	0000                	unimp
80207750:	2d2d                	addiw	s10,s10,11
80207752:	2d2d                	addiw	s10,s10,11
80207754:	2d2d                	addiw	s10,s10,11
80207756:	2d2d                	addiw	s10,s10,11
80207758:	2d2d                	addiw	s10,s10,11
8020775a:	2d2d                	addiw	s10,s10,11
8020775c:	2d2d                	addiw	s10,s10,11
8020775e:	6854                	ld	a3,144(s0)
80207760:	6572                	ld	a0,280(sp)
80207762:	6461                	lui	s0,0x18
80207764:	6c20                	ld	s0,88(s0)
80207766:	7369                	lui	t1,0xffffa
80207768:	2d74                	fld	fa3,216(a0)
8020776a:	2d2d                	addiw	s10,s10,11
8020776c:	2d2d                	addiw	s10,s10,11
8020776e:	2d2d                	addiw	s10,s10,11
80207770:	2d2d                	addiw	s10,s10,11
80207772:	2d2d                	addiw	s10,s10,11
80207774:	2d2d                	addiw	s10,s10,11
80207776:	0a2d                	addi	s4,s4,11
	...
80207780:	72727563          	bgeu	tp,t2,80207eaa <rt_system_timer_thread_init+0xeec>
80207784:	6e65                	lui	t3,0x19
80207786:	2074                	fld	fa3,192(s0)
80207788:	6874                	ld	a3,208(s0)
8020778a:	6572                	ld	a0,280(sp)
8020778c:	6461                	lui	s0,0x18
8020778e:	203a                	fld	ft0,392(sp)
80207790:	7325                	lui	t1,0xfffe9
80207792:	000a                	c.slli	zero,0x2
80207794:	0000                	unimp
80207796:	0000                	unimp
80207798:	2d2d                	addiw	s10,s10,11
8020779a:	2d2d                	addiw	s10,s10,11
8020779c:	2d2d                	addiw	s10,s10,11
8020779e:	2d2d                	addiw	s10,s10,11
802077a0:	2d2d                	addiw	s10,s10,11
802077a2:	2d2d                	addiw	s10,s10,11
802077a4:	2d2d                	addiw	s10,s10,11
802077a6:	6142                	ld	sp,16(sp)
802077a8:	72746b63          	bltu	s0,t2,80207ede <rt_system_timer_thread_init+0xf20>
802077ac:	6361                	lui	t1,0x18
802077ae:	2d65                	addiw	s10,s10,25
802077b0:	2d2d                	addiw	s10,s10,11
802077b2:	2d2d                	addiw	s10,s10,11
802077b4:	2d2d                	addiw	s10,s10,11
802077b6:	2d2d                	addiw	s10,s10,11
802077b8:	2d2d                	addiw	s10,s10,11
802077ba:	2d2d                	addiw	s10,s10,11
802077bc:	0a2d                	addi	s4,s4,11
802077be:	0000                	unimp
802077c0:	7066                	.insn	2, 0x7066
802077c2:	3d20                	fld	fs0,120(a0)
802077c4:	2520                	fld	fs0,72(a0)
802077c6:	0070                	addi	a2,sp,12
802077c8:	7355                	lui	t1,0xffff5
802077ca:	7265                	lui	tp,0xffff9
802077cc:	5320                	lw	s0,96(a4)
802077ce:	7774666f          	jal	a2,8024e744 <__bss_end+0x389f4>
802077d2:	7261                	lui	tp,0xffff8
802077d4:	2065                	.insn	2, 0x2065
802077d6:	6e49                	lui	t3,0x12
802077d8:	6574                	ld	a3,200(a0)
802077da:	7272                	ld	tp,312(sp)
802077dc:	7075                	c.lui	zero,0xffffd
802077de:	0074                	addi	a3,sp,12
802077e0:	65707553          	.insn	4, 0x65707553
802077e4:	7672                	ld	a2,312(sp)
802077e6:	7369                	lui	t1,0xffffa
802077e8:	5320726f          	jal	tp,8020ed1a <__stack_cpu0+0x1a1a>
802077ec:	7774666f          	jal	a2,8024e762 <__bss_end+0x38a12>
802077f0:	7261                	lui	tp,0xffff8
802077f2:	2065                	.insn	2, 0x2065
802077f4:	6e49                	lui	t3,0x12
802077f6:	6574                	ld	a3,200(a0)
802077f8:	7272                	ld	tp,312(sp)
802077fa:	7075                	c.lui	zero,0xffffd
802077fc:	0074                	addi	a3,sp,12
802077fe:	0000                	unimp
80207800:	6552                	ld	a0,272(sp)
80207802:	6576                	ld	a0,344(sp)
80207804:	7372                	ld	t1,312(sp)
80207806:	6465                	lui	s0,0x19
80207808:	322d                	addiw	tp,tp,-21 # ffff7feb <__bss_end+0x7fde229b>
8020780a:	0000                	unimp
8020780c:	0000                	unimp
8020780e:	0000                	unimp
80207810:	6552                	ld	a0,272(sp)
80207812:	6576                	ld	a0,344(sp)
80207814:	7372                	ld	t1,312(sp)
80207816:	6465                	lui	s0,0x19
80207818:	332d                	addiw	t1,t1,-21 # ffff9feb <__bss_end+0x7fde429b>
8020781a:	0000                	unimp
8020781c:	0000                	unimp
8020781e:	0000                	unimp
80207820:	7355                	lui	t1,0xffff5
80207822:	7265                	lui	tp,0xffff9
80207824:	5420                	lw	s0,104(s0)
80207826:	6d69                	lui	s10,0x1a
80207828:	7265                	lui	tp,0xffff9
8020782a:	4920                	lw	s0,80(a0)
8020782c:	746e                	ld	s0,248(sp)
8020782e:	7265                	lui	tp,0xffff9
80207830:	7572                	ld	a0,312(sp)
80207832:	7470                	ld	a2,232(s0)
80207834:	0000                	unimp
80207836:	0000                	unimp
80207838:	65707553          	.insn	4, 0x65707553
8020783c:	7672                	ld	a2,312(sp)
8020783e:	7369                	lui	t1,0xffffa
80207840:	5420726f          	jal	tp,8020ed82 <__stack_cpu0+0x1a82>
80207844:	6d69                	lui	s10,0x1a
80207846:	7265                	lui	tp,0xffff9
80207848:	4920                	lw	s0,80(a0)
8020784a:	746e                	ld	s0,248(sp)
8020784c:	7265                	lui	tp,0xffff9
8020784e:	7572                	ld	a0,312(sp)
80207850:	7470                	ld	a2,232(s0)
80207852:	0000                	unimp
80207854:	0000                	unimp
80207856:	0000                	unimp
80207858:	6552                	ld	a0,272(sp)
8020785a:	6576                	ld	a0,344(sp)
8020785c:	7372                	ld	t1,312(sp)
8020785e:	6465                	lui	s0,0x19
80207860:	362d                	addiw	a2,a2,-21
80207862:	0000                	unimp
80207864:	0000                	unimp
80207866:	0000                	unimp
80207868:	6552                	ld	a0,272(sp)
8020786a:	6576                	ld	a0,344(sp)
8020786c:	7372                	ld	t1,312(sp)
8020786e:	6465                	lui	s0,0x19
80207870:	372d                	addiw	a4,a4,-21
80207872:	0000                	unimp
80207874:	0000                	unimp
80207876:	0000                	unimp
80207878:	7355                	lui	t1,0xffff5
8020787a:	7265                	lui	tp,0xffff9
8020787c:	4520                	lw	s0,72(a0)
8020787e:	7478                	ld	a4,232(s0)
80207880:	7265                	lui	tp,0xffff9
80207882:	616e                	ld	sp,216(sp)
80207884:	206c                	fld	fa1,192(s0)
80207886:	6e49                	lui	t3,0x12
80207888:	6574                	ld	a3,200(a0)
8020788a:	7272                	ld	tp,312(sp)
8020788c:	7075                	c.lui	zero,0xffffd
8020788e:	0074                	addi	a3,sp,12
80207890:	65707553          	.insn	4, 0x65707553
80207894:	7672                	ld	a2,312(sp)
80207896:	7369                	lui	t1,0xffffa
80207898:	4520726f          	jal	tp,8020ecea <__stack_cpu0+0x19ea>
8020789c:	7478                	ld	a4,232(s0)
8020789e:	7265                	lui	tp,0xffff9
802078a0:	616e                	ld	sp,216(sp)
802078a2:	206c                	fld	fa1,192(s0)
802078a4:	6e49                	lui	t3,0x12
802078a6:	6574                	ld	a3,200(a0)
802078a8:	7272                	ld	tp,312(sp)
802078aa:	7075                	c.lui	zero,0xffffd
802078ac:	0074                	addi	a3,sp,12
802078ae:	0000                	unimp
802078b0:	6552                	ld	a0,272(sp)
802078b2:	76726573          	csrrsi	a0,0x767,4
802078b6:	6465                	lui	s0,0x19
802078b8:	312d                	addiw	sp,sp,-21
802078ba:	0030                	addi	a2,sp,8
802078bc:	0000                	unimp
802078be:	0000                	unimp
802078c0:	6552                	ld	a0,272(sp)
802078c2:	76726573          	csrrsi	a0,0x767,4
802078c6:	6465                	lui	s0,0x19
802078c8:	312d                	addiw	sp,sp,-21
802078ca:	0031                	c.nop	12
802078cc:	0000                	unimp
802078ce:	0000                	unimp
802078d0:	6e49                	lui	t3,0x12
802078d2:	75727473          	csrrci	s0,0x757,4
802078d6:	6f697463          	bgeu	s2,s6,80207fbe <rt_system_timer_thread_init+0x1000>
802078da:	206e                	fld	ft0,216(sp)
802078dc:	6441                	lui	s0,0x10
802078de:	7264                	ld	s1,224(a2)
802078e0:	7365                	lui	t1,0xffff9
802078e2:	694d2073          	csrs	0x694,s10
802078e6:	696c6173          	csrrsi	sp,0x696,24
802078ea:	64656e67          	.insn	4, 0x64656e67
802078ee:	0000                	unimp
802078f0:	6e49                	lui	t3,0x12
802078f2:	75727473          	csrrci	s0,0x757,4
802078f6:	6f697463          	bgeu	s2,s6,80207fde <rt_system_timer_thread_init+0x1020>
802078fa:	206e                	fld	ft0,216(sp)
802078fc:	6341                	lui	t1,0x10
802078fe:	73736563          	bltu	t1,s7,80208028 <rt_system_timer_thread_init+0x106a>
80207902:	4620                	lw	s0,72(a2)
80207904:	7561                	lui	a0,0xffff8
80207906:	746c                	ld	a1,232(s0)
	...
80207910:	6c49                	lui	s8,0x12
80207912:	656c                	ld	a1,200(a0)
80207914:	206c6167          	.insn	4, 0x206c6167
80207918:	6e49                	lui	t3,0x12
8020791a:	75727473          	csrrci	s0,0x757,4
8020791e:	6f697463          	bgeu	s2,s6,80208006 <rt_system_timer_thread_init+0x1048>
80207922:	006e                	c.slli	zero,0x1b
80207924:	0000                	unimp
80207926:	0000                	unimp
80207928:	7242                	ld	tp,48(sp)
8020792a:	6165                	addi	sp,sp,112
8020792c:	696f706b          	.insn	4, 0x696f706b
80207930:	746e                	ld	s0,248(sp)
80207932:	0000                	unimp
80207934:	0000                	unimp
80207936:	0000                	unimp
80207938:	6f4c                	ld	a1,152(a4)
8020793a:	6461                	lui	s0,0x18
8020793c:	4120                	lw	s0,64(a0)
8020793e:	6464                	ld	s1,200(s0)
80207940:	6572                	ld	a0,280(sp)
80207942:	4d207373          	csrrci	t1,0x4d2,0
80207946:	7369                	lui	t1,0xffffa
80207948:	6c61                	lui	s8,0x18
8020794a:	6769                	lui	a4,0x1a
8020794c:	656e                	ld	a0,216(sp)
8020794e:	0064                	addi	s1,sp,12
80207950:	6f4c                	ld	a1,152(a4)
80207952:	6461                	lui	s0,0x18
80207954:	4120                	lw	s0,64(a0)
80207956:	73656363          	bltu	a0,s6,8020807c <rt_system_timer_thread_init+0x10be>
8020795a:	61462073          	csrs	0x614,a2
8020795e:	6c75                	lui	s8,0x1d
80207960:	0074                	addi	a3,sp,12
80207962:	0000                	unimp
80207964:	0000                	unimp
80207966:	0000                	unimp
80207968:	726f7453          	.insn	4, 0x726f7453
8020796c:	2f65                	addiw	t5,t5,25 # 1a019 <__text_size+0x10e71>
8020796e:	4d41                	li	s10,16
80207970:	6441204f          	.insn	4, 0x6441204f
80207974:	7264                	ld	s1,224(a2)
80207976:	7365                	lui	t1,0xffff9
80207978:	694d2073          	csrs	0x694,s10
8020797c:	696c6173          	csrrsi	sp,0x696,24
80207980:	64656e67          	.insn	4, 0x64656e67
80207984:	0000                	unimp
80207986:	0000                	unimp
80207988:	726f7453          	.insn	4, 0x726f7453
8020798c:	2f65                	addiw	t5,t5,25
8020798e:	4d41                	li	s10,16
80207990:	6341204f          	fnmadd.d	ft0,ft2,fs4,fa2,rdn
80207994:	73736563          	bltu	t1,s7,802080be <rt_system_timer_thread_init+0x1100>
80207998:	4620                	lw	s0,72(a2)
8020799a:	7561                	lui	a0,0xffff8
8020799c:	746c                	ld	a1,232(s0)
8020799e:	0000                	unimp
802079a0:	6e45                	lui	t3,0x11
802079a2:	6976                	ld	s2,344(sp)
802079a4:	6f72                	ld	t5,280(sp)
802079a6:	6d6e                	ld	s10,216(sp)
802079a8:	6e65                	lui	t3,0x19
802079aa:	2074                	fld	fa3,192(s0)
802079ac:	6c6c6163          	bltu	s8,t1,8020806e <rt_system_timer_thread_init+0x10b0>
802079b0:	6620                	ld	s0,72(a2)
802079b2:	6f72                	ld	t5,280(sp)
802079b4:	206d                	.insn	2, 0x206d
802079b6:	2d55                	addiw	s10,s10,21 # 1a015 <__text_size+0x10e6d>
802079b8:	6f6d                	lui	t5,0x1b
802079ba:	6564                	ld	s1,200(a0)
802079bc:	0000                	unimp
802079be:	0000                	unimp
802079c0:	6e45                	lui	t3,0x11
802079c2:	6976                	ld	s2,344(sp)
802079c4:	6f72                	ld	t5,280(sp)
802079c6:	6d6e                	ld	s10,216(sp)
802079c8:	6e65                	lui	t3,0x19
802079ca:	2074                	fld	fa3,192(s0)
802079cc:	6c6c6163          	bltu	s8,t1,8020808e <rt_system_timer_thread_init+0x10d0>
802079d0:	6620                	ld	s0,72(a2)
802079d2:	6f72                	ld	t5,280(sp)
802079d4:	206d                	.insn	2, 0x206d
802079d6:	6f6d2d53          	.insn	4, 0x6f6d2d53
802079da:	6564                	ld	s1,200(a0)
802079dc:	0000                	unimp
802079de:	0000                	unimp
802079e0:	6e49                	lui	t3,0x12
802079e2:	75727473          	csrrci	s0,0x757,4
802079e6:	6f697463          	bgeu	s2,s6,802080ce <rt_system_timer_thread_init+0x1110>
802079ea:	206e                	fld	ft0,216(sp)
802079ec:	6150                	ld	a2,128(a0)
802079ee:	46206567          	.insn	4, 0x46206567
802079f2:	7561                	lui	a0,0xffff8
802079f4:	746c                	ld	a1,232(s0)
802079f6:	0000                	unimp
802079f8:	6f4c                	ld	a1,152(a4)
802079fa:	6461                	lui	s0,0x18
802079fc:	5020                	lw	s0,96(s0)
802079fe:	6761                	lui	a4,0x18
80207a00:	2065                	.insn	2, 0x2065
80207a02:	6146                	ld	sp,80(sp)
80207a04:	6c75                	lui	s8,0x1d
80207a06:	0074                	addi	a3,sp,12
80207a08:	6552                	ld	a0,272(sp)
80207a0a:	76726573          	csrrsi	a0,0x767,4
80207a0e:	6465                	lui	s0,0x19
80207a10:	312d                	addiw	sp,sp,-21
80207a12:	0034                	addi	a3,sp,8
80207a14:	0000                	unimp
80207a16:	0000                	unimp
80207a18:	726f7453          	.insn	4, 0x726f7453
80207a1c:	2f65                	addiw	t5,t5,25 # 1b019 <__text_size+0x11e71>
80207a1e:	4d41                	li	s10,16
80207a20:	6150204f          	fnmadd.s	ft0,ft0,fs5,fa2,rdn
80207a24:	46206567          	.insn	4, 0x46206567
80207a28:	7561                	lui	a0,0xffff8
80207a2a:	746c                	ld	a1,232(s0)
80207a2c:	0000                	unimp
80207a2e:	0000                	unimp
80207a30:	6175                	addi	sp,sp,368
80207a32:	7472                	ld	s0,312(sp)
80207a34:	0030                	addi	a2,sp,8
80207a36:	0000                	unimp
80207a38:	6568                	ld	a0,200(a0)
80207a3a:	7061                	c.lui	zero,0xffff8
80207a3c:	203a                	fld	ft0,392(sp)
80207a3e:	2578305b          	.insn	4, 0x2578305b
80207a42:	3830                	fld	fa2,112(s0)
80207a44:	2078                	fld	fa4,192(s0)
80207a46:	202d                	.insn	2, 0x202d
80207a48:	7830                	ld	a2,112(s0)
80207a4a:	3025                	.insn	2, 0x3025
80207a4c:	7838                	ld	a4,112(s0)
80207a4e:	0a5d                	addi	s4,s4,23
	...
80207a58:	6564                	ld	s1,200(a0)
80207a5a:	2076                	fld	ft0,344(sp)
80207a5c:	3d21                	addiw	s10,s10,-24
80207a5e:	5220                	lw	s0,96(a2)
80207a60:	5f54                	lw	a3,60(a4)
80207a62:	554e                	lw	a0,240(sp)
80207a64:	4c4c                	lw	a1,28(s0)
80207a66:	0000                	unimp
80207a68:	7472                	ld	s0,312(sp)
80207a6a:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
80207a70:	5f74                	lw	a3,124(a4)
80207a72:	5f746567          	.insn	4, 0x5f746567
80207a76:	7974                	ld	a3,240(a0)
80207a78:	6570                	ld	a2,200(a0)
80207a7a:	2628                	fld	fa0,72(a2)
80207a7c:	6564                	ld	s1,200(a0)
80207a7e:	2d76                	fld	fs10,344(sp)
80207a80:	703e                	.insn	2, 0x703e
80207a82:	7261                	lui	tp,0xffff8
80207a84:	6e65                	lui	t3,0x19
80207a86:	2974                	fld	fa3,208(a0)
80207a88:	3d20                	fld	fs0,120(a0)
80207a8a:	203d                	.insn	2, 0x203d
80207a8c:	5452                	lw	s0,52(sp)
80207a8e:	4f5f 6a62 6365      	.insn	6, 0x63656a624f5f
80207a94:	5f74                	lw	a3,124(a4)
80207a96:	73616c43          	fmadd.d	fs8,ft2,fs6,fa4,unknown
80207a9a:	65445f73          	csrrwi	t5,0x654,8
80207a9e:	6976                	ld	s2,344(sp)
80207aa0:	00006563          	bltu	zero,zero,80207aaa <rt_system_timer_thread_init+0xaec>
80207aa4:	0000                	unimp
80207aa6:	0000                	unimp
80207aa8:	7472                	ld	s0,312(sp)
80207aaa:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
80207ab0:	5f74                	lw	a3,124(a4)
80207ab2:	7369                	lui	t1,0xffffa
80207ab4:	735f 7379 6574      	.insn	6, 0x65747379735f
80207aba:	6f6d                	lui	t5,0x1b
80207abc:	6a62                	ld	s4,24(sp)
80207abe:	6365                	lui	t1,0x19
80207ac0:	2874                	fld	fa3,208(s0)
80207ac2:	6426                	ld	s0,72(sp)
80207ac4:	7665                	lui	a2,0xffff9
80207ac6:	3e2d                	addiw	t3,t3,-21 # 18feb <__text_size+0xfe43>
80207ac8:	6170                	ld	a2,192(a0)
80207aca:	6572                	ld	a0,280(sp)
80207acc:	746e                	ld	s0,248(sp)
80207ace:	0029                	c.nop	10
80207ad0:	6f54                	ld	a3,152(a4)
80207ad2:	6920                	ld	s0,80(a0)
80207ad4:	696e                	ld	s2,216(sp)
80207ad6:	6974                	ld	a3,208(a0)
80207ad8:	6c61                	lui	s8,0x18
80207ada:	7a69                	lui	s4,0xffffa
80207adc:	2065                	.insn	2, 0x2065
80207ade:	6564                	ld	s1,200(a0)
80207ae0:	6976                	ld	s2,344(sp)
80207ae2:	253a6563          	bltu	s4,s3,80207d2c <rt_system_timer_thread_init+0xd6e>
80207ae6:	61662073          	csrs	0x616,a2
80207aea:	6c69                	lui	s8,0x1a
80207aec:	6465                	lui	s0,0x19
80207aee:	202e                	fld	ft0,200(sp)
80207af0:	6854                	ld	a3,144(s0)
80207af2:	2065                	.insn	2, 0x2065
80207af4:	7265                	lui	tp,0xffff9
80207af6:	6f72                	ld	t5,280(sp)
80207af8:	2072                	fld	ft0,280(sp)
80207afa:	65646f63          	bltu	s0,s6,80208158 <rt_system_timer_thread_init+0x119a>
80207afe:	6920                	ld	s0,80(a0)
80207b00:	64252073          	csrs	0x642,a0
80207b04:	0000                	unimp
80207b06:	0000                	unimp
80207b08:	6e72656b          	.insn	4, 0x6e72656b
80207b0c:	6c65                	lui	s8,0x19
80207b0e:	642e                	ld	s0,200(sp)
80207b10:	7665                	lui	a2,0xffff9
80207b12:	6369                	lui	t1,0x1a
80207b14:	0065                	c.nop	25
80207b16:	0000                	unimp
80207b18:	6564                	ld	s1,200(a0)
80207b1a:	2d76                	fld	fs10,344(sp)
80207b1c:	723e                	ld	tp,488(sp)
80207b1e:	6665                	lui	a2,0x19
80207b20:	635f 756f 746e      	.insn	6, 0x746e756f635f
80207b26:	2120                	fld	fs0,64(a0)
80207b28:	203d                	.insn	2, 0x203d
80207b2a:	0030                	addi	a2,sp,8
80207b2c:	0000                	unimp
80207b2e:	0000                	unimp
80207b30:	2d73706f          	j	8023f606 <__bss_end+0x298b6>
80207b34:	633e                	ld	t1,456(sp)
80207b36:	7570                	ld	a2,232(a0)
80207b38:	6974                	ld	a3,208(a0)
80207b3a:	656d                	lui	a0,0x1b
80207b3c:	675f 7465 6572      	.insn	6, 0x65727465675f
80207b42:	3d212073          	csrs	0x3d2,sp
80207b46:	5220                	lw	s0,96(a2)
80207b48:	5f54                	lw	a3,60(a4)
80207b4a:	554e                	lw	a0,240(sp)
80207b4c:	4c4c                	lw	a1,28(s0)
80207b4e:	0000                	unimp
80207b50:	2d73706f          	j	8023f626 <__bss_end+0x298d6>
80207b54:	633e                	ld	t1,456(sp)
80207b56:	7570                	ld	a2,232(a0)
80207b58:	6974                	ld	a3,208(a0)
80207b5a:	656d                	lui	a0,0x1b
80207b5c:	675f 7465 6974      	.insn	6, 0x69747465675f
80207b62:	656d                	lui	a0,0x1b
80207b64:	2120                	fld	fs0,64(a0)
80207b66:	203d                	.insn	2, 0x203d
80207b68:	5452                	lw	s0,52(sp)
80207b6a:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80207b70:	706d6f63          	bltu	s10,t1,8020828e <rt_system_timer_thread_init+0x12d0>
80207b74:	656c                	ld	a1,200(a0)
80207b76:	6974                	ld	a3,208(a0)
80207b78:	21206e6f          	jal	t3,8020dd8a <__stack_cpu0+0xa8a>
80207b7c:	203d                	.insn	2, 0x203d
80207b7e:	5452                	lw	s0,52(sp)
80207b80:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80207b86:	0000                	unimp
80207b88:	7546                	ld	a0,112(sp)
80207b8a:	636e                	ld	t1,216(sp)
80207b8c:	6974                	ld	a3,208(a0)
80207b8e:	255b6e6f          	jal	t3,802be5e2 <__bss_end+0xa8892>
80207b92:	203a5d73          	csrrwi	s10,0x203,20
80207b96:	65686373          	csrrsi	t1,hviprio1h,16
80207b9a:	7564                	ld	s1,232(a0)
80207b9c:	656c                	ld	a1,200(a0)
80207b9e:	2072                	fld	ft0,280(sp)
80207ba0:	7369                	lui	t1,0xffffa
80207ba2:	6e20                	ld	s0,88(a2)
80207ba4:	6120746f          	jal	s0,8020f1b6 <__stack_cpu0+0x1eb6>
80207ba8:	6176                	ld	sp,344(sp)
80207baa:	6c69                	lui	s8,0x1a
80207bac:	6261                	lui	tp,0x18
80207bae:	656c                	ld	a1,200(a0)
80207bb0:	000a                	c.slli	zero,0x2
80207bb2:	0000                	unimp
80207bb4:	0000                	unimp
80207bb6:	0000                	unimp
80207bb8:	7546                	ld	a0,112(sp)
80207bba:	636e                	ld	t1,216(sp)
80207bbc:	6974                	ld	a3,208(a0)
80207bbe:	255b6e6f          	jal	t3,802be612 <__bss_end+0xa88c2>
80207bc2:	73205d73          	csrrwi	s10,mhpmevent18h,0
80207bc6:	6168                	ld	a0,192(a0)
80207bc8:	6c6c                	ld	a1,216(s0)
80207bca:	6e20                	ld	s0,88(a2)
80207bcc:	6220746f          	jal	s0,8020f1ee <__stack_cpu0+0x1eee>
80207bd0:	2065                	.insn	2, 0x2065
80207bd2:	7375                	lui	t1,0xffffd
80207bd4:	6465                	lui	s0,0x19
80207bd6:	6220                	ld	s0,64(a2)
80207bd8:	6665                	lui	a2,0x19
80207bda:	2065726f          	jal	tp,8025ede0 <__bss_end+0x49090>
80207bde:	65686373          	csrrsi	t1,hviprio1h,16
80207be2:	7564                	ld	s1,232(a0)
80207be4:	656c                	ld	a1,200(a0)
80207be6:	2072                	fld	ft0,280(sp)
80207be8:	72617473          	csrrci	s0,mhpmevent6h,2
80207bec:	0a74                	addi	a3,sp,284
80207bee:	0000                	unimp
80207bf0:	7546                	ld	a0,112(sp)
80207bf2:	636e                	ld	t1,216(sp)
80207bf4:	6974                	ld	a3,208(a0)
80207bf6:	255b6e6f          	jal	t3,802be64a <__bss_end+0xa88fa>
80207bfa:	73205d73          	csrrwi	s10,mhpmevent18h,0
80207bfe:	6168                	ld	a0,192(a0)
80207c00:	6c6c                	ld	a1,216(s0)
80207c02:	6e20                	ld	s0,88(a2)
80207c04:	6220746f          	jal	s0,8020f226 <__stack_cpu0+0x1f26>
80207c08:	2065                	.insn	2, 0x2065
80207c0a:	7375                	lui	t1,0xffffd
80207c0c:	6465                	lui	s0,0x19
80207c0e:	6920                	ld	s0,80(a0)
80207c10:	206e                	fld	ft0,216(sp)
80207c12:	5349                	li	t1,-14
80207c14:	0a52                	slli	s4,s4,0x14
80207c16:	0000                	unimp
80207c18:	5452                	lw	s0,52(sp)
80207c1a:	435f 4d4f 4c50      	.insn	6, 0x4c504d4f435f
80207c20:	5445                	li	s0,-15
80207c22:	4f49                	li	t5,18
80207c24:	5f4e                	lw	t5,240(sp)
80207c26:	4854                	lw	a3,20(s0)
80207c28:	4552                	lw	a0,20(sp)
80207c2a:	4441                	li	s0,16
80207c2c:	6328                	ld	a0,64(a4)
80207c2e:	6c706d6f          	jal	s10,8020eaf4 <__stack_cpu0+0x17f4>
80207c32:	7465                	lui	s0,0xffff9
80207c34:	6f69                	lui	t5,0x1a
80207c36:	296e                	fld	fs2,216(sp)
80207c38:	3d20                	fld	fs0,120(a0)
80207c3a:	203d                	.insn	2, 0x203d
80207c3c:	5452                	lw	s0,52(sp)
80207c3e:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80207c44:	0000                	unimp
80207c46:	0000                	unimp
80207c48:	6572                	ld	a0,280(sp)
80207c4a:	746c7573          	csrrci	a0,0x746,24
80207c4e:	2120                	fld	fs0,64(a0)
80207c50:	203d                	.insn	2, 0x203d
80207c52:	5452                	lw	s0,52(sp)
80207c54:	455f 4b4f 0000      	.insn	6, 0x4b4f455f
80207c5a:	0000                	unimp
80207c5c:	0000                	unimp
80207c5e:	0000                	unimp
80207c60:	7571                	lui	a0,0xffffc
80207c62:	7565                	lui	a0,0xffff9
80207c64:	2065                	.insn	2, 0x2065
80207c66:	3d21                	addiw	s10,s10,-24
80207c68:	5220                	lw	s0,96(a2)
80207c6a:	5f54                	lw	a3,60(a4)
80207c6c:	554e                	lw	a0,240(sp)
80207c6e:	4c4c                	lw	a1,28(s0)
	...
80207c78:	657a6973          	csrrsi	s2,hviprio2h,20
80207c7c:	3e20                	fld	fs0,120(a2)
80207c7e:	3020                	fld	fs0,96(s0)
	...
80207c88:	7571                	lui	a0,0xffffc
80207c8a:	7565                	lui	a0,0xffff9
80207c8c:	2d65                	addiw	s10,s10,25
80207c8e:	6d3e                	ld	s10,456(sp)
80207c90:	6761                	lui	a4,0x18
80207c92:	6369                	lui	t1,0x1a
80207c94:	3d20                	fld	fs0,120(a0)
80207c96:	203d                	.insn	2, 0x203d
80207c98:	4144                	lw	s1,4(a0)
80207c9a:	4154                	lw	a3,4(a0)
80207c9c:	5551                	li	a0,-12
80207c9e:	5545                	li	a0,-15
80207ca0:	5f45                	li	t5,-15
80207ca2:	414d                	li	sp,19
80207ca4:	00434947          	fmsub.s	fs2,ft6,ft4,ft0,rmm
80207ca8:	6164                	ld	s1,192(a0)
80207caa:	6174                	ld	a3,192(a0)
80207cac:	705f 7274 2120      	.insn	6, 0x21207274705f
80207cb2:	203d                	.insn	2, 0x203d
80207cb4:	5452                	lw	s0,52(sp)
80207cb6:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80207cbc:	0000                	unimp
80207cbe:	0000                	unimp
80207cc0:	657a6973          	csrrsi	s2,hviprio2h,20
80207cc4:	2120                	fld	fs0,64(a0)
80207cc6:	203d                	.insn	2, 0x203d
80207cc8:	5452                	lw	s0,52(sp)
80207cca:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80207cd0:	7872                	ld	a6,312(sp)
80207cd2:	665f 6669 206f      	.insn	6, 0x206f6669665f
80207cd8:	3d21                	addiw	s10,s10,-24
80207cda:	5220                	lw	s0,96(a2)
80207cdc:	5f54                	lw	a3,60(a4)
80207cde:	554e                	lw	a0,240(sp)
80207ce0:	4c4c                	lw	a1,28(s0)
80207ce2:	0000                	unimp
80207ce4:	0000                	unimp
80207ce6:	0000                	unimp
80207ce8:	7872                	ld	a6,312(sp)
80207cea:	645f 616d 2120      	.insn	6, 0x2120616d645f
80207cf0:	203d                	.insn	2, 0x203d
80207cf2:	5452                	lw	s0,52(sp)
80207cf4:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80207cfa:	0000                	unimp
80207cfc:	0000                	unimp
80207cfe:	0000                	unimp
80207d00:	7874                	ld	a3,240(s0)
80207d02:	665f 6669 206f      	.insn	6, 0x206f6669665f
80207d08:	3d21                	addiw	s10,s10,-24
80207d0a:	5220                	lw	s0,96(a2)
80207d0c:	5f54                	lw	a3,60(a4)
80207d0e:	554e                	lw	a0,240(sp)
80207d10:	4c4c                	lw	a1,28(s0)
80207d12:	0000                	unimp
80207d14:	0000                	unimp
80207d16:	0000                	unimp
80207d18:	7874                	ld	a3,240(s0)
80207d1a:	645f 616d 2120      	.insn	6, 0x2120616d645f
80207d20:	203d                	.insn	2, 0x203d
80207d22:	5452                	lw	s0,52(sp)
80207d24:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80207d2a:	0000                	unimp
80207d2c:	0000                	unimp
80207d2e:	0000                	unimp
80207d30:	7874                	ld	a3,240(s0)
80207d32:	2120                	fld	fs0,64(a0)
80207d34:	203d                	.insn	2, 0x203d
80207d36:	5452                	lw	s0,52(sp)
80207d38:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80207d3e:	0000                	unimp
80207d40:	7328                	ld	a0,96(a4)
80207d42:	7265                	lui	tp,0xffff9
80207d44:	6169                	addi	sp,sp,208
80207d46:	206c                	fld	fa1,192(s0)
80207d48:	3d21                	addiw	s10,s10,-24
80207d4a:	5220                	lw	s0,96(a2)
80207d4c:	5f54                	lw	a3,60(a4)
80207d4e:	554e                	lw	a0,240(sp)
80207d50:	4c4c                	lw	a1,28(s0)
80207d52:	2029                	.insn	2, 0x2029
80207d54:	2626                	fld	fa2,72(sp)
80207d56:	2820                	fld	fs0,80(s0)
80207d58:	6164                	ld	s1,192(a0)
80207d5a:	6174                	ld	a3,192(a0)
80207d5c:	2120                	fld	fs0,64(a0)
80207d5e:	203d                	.insn	2, 0x203d
80207d60:	5452                	lw	s0,52(sp)
80207d62:	4e5f 4c55 294c      	.insn	6, 0x294c4c554e5f
	...
80207d70:	69726573          	csrrsi	a0,0x697,4
80207d74:	6c61                	lui	s8,0x18
80207d76:	3e2d                	addiw	t3,t3,-21
80207d78:	2d73706f          	j	8023f84e <__bss_end+0x29afe>
80207d7c:	643e                	ld	s0,456(sp)
80207d7e:	616d                	addi	sp,sp,240
80207d80:	745f 6172 736e      	.insn	6, 0x736e6172745f
80207d86:	696d                	lui	s2,0x1b
80207d88:	2074                	fld	fa3,192(s0)
80207d8a:	3d21                	addiw	s10,s10,-24
80207d8c:	5220                	lw	s0,96(a2)
80207d8e:	5f54                	lw	a3,60(a4)
80207d90:	554e                	lw	a0,240(sp)
80207d92:	4c4c                	lw	a1,28(s0)
80207d94:	0000                	unimp
80207d96:	0000                	unimp
80207d98:	656c                	ld	a1,200(a0)
80207d9a:	206e                	fld	ft0,216(sp)
80207d9c:	3d3c                	fld	fa5,120(a0)
80207d9e:	7220                	ld	s0,96(a2)
80207da0:	5f74                	lw	a3,124(a4)
80207da2:	6d64                	ld	s1,216(a0)
80207da4:	5f61                	li	t5,-8
80207da6:	636c6163          	bltu	s8,s6,802083c8 <rt_system_timer_thread_init+0x140a>
80207daa:	725f 6365 6576      	.insn	6, 0x65766365725f
80207db0:	5f64                	lw	s1,124(a4)
80207db2:	656c                	ld	a1,200(a0)
80207db4:	286e                	fld	fa6,216(sp)
80207db6:	69726573          	csrrsi	a0,0x697,4
80207dba:	6c61                	lui	s8,0x18
80207dbc:	0029                	c.nop	10
80207dbe:	0000                	unimp
80207dc0:	69726573          	csrrsi	a0,0x697,4
80207dc4:	6c61                	lui	s8,0x18
80207dc6:	2120                	fld	fs0,64(a0)
80207dc8:	203d                	.insn	2, 0x203d
80207dca:	5452                	lw	s0,52(sp)
80207dcc:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80207dd2:	0000                	unimp
80207dd4:	0000                	unimp
80207dd6:	0000                	unimp
80207dd8:	69726573          	csrrsi	a0,0x697,4
80207ddc:	6c61                	lui	s8,0x18
80207dde:	3e2d                	addiw	t3,t3,-21
80207de0:	6170                	ld	a2,192(a0)
80207de2:	6572                	ld	a0,280(sp)
80207de4:	746e                	ld	s0,248(sp)
80207de6:	722e                	ld	tp,232(sp)
80207de8:	5f78                	lw	a4,124(a4)
80207dea:	6e69                	lui	t3,0x1a
80207dec:	6964                	ld	s1,208(a0)
80207dee:	65746163          	bltu	s0,s7,80208430 <rt_system_timer_thread_init+0x1472>
80207df2:	2120                	fld	fs0,64(a0)
80207df4:	203d                	.insn	2, 0x203d
80207df6:	5452                	lw	s0,52(sp)
80207df8:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80207dfe:	0000                	unimp
80207e00:	7472                	ld	s0,312(sp)
80207e02:	695f 746e 7265      	.insn	6, 0x7265746e695f
80207e08:	7572                	ld	a0,312(sp)
80207e0a:	7470                	ld	a2,232(s0)
80207e0c:	675f 7465 6e5f      	.insn	6, 0x6e5f7465675f
80207e12:	7365                	lui	t1,0xffff9
80207e14:	2874                	fld	fa3,208(s0)
80207e16:	2029                	.insn	2, 0x2029
80207e18:	203e                	fld	ft0,456(sp)
80207e1a:	0030                	addi	a2,sp,8
80207e1c:	0000                	unimp
80207e1e:	0000                	unimp
80207e20:	6e69                	lui	t3,0x1a
80207e22:	7469                	lui	s0,0xffffa
80207e24:	6169                	addi	sp,sp,208
80207e26:	696c                	ld	a1,208(a0)
80207e28:	657a                	ld	a0,408(sp)
80207e2a:	2520                	fld	fs0,72(a0)
80207e2c:	00000073          	ecall
80207e30:	253a                	fld	fa0,392(sp)
80207e32:	2064                	fld	fs1,192(s0)
80207e34:	6f64                	ld	s1,216(a4)
80207e36:	656e                	ld	a0,216(sp)
80207e38:	000a                	c.slli	zero,0x2
80207e3a:	0000                	unimp
80207e3c:	0000                	unimp
80207e3e:	0000                	unimp
80207e40:	6f64                	ld	s1,216(a4)
80207e42:	6320                	ld	s0,64(a4)
80207e44:	6f706d6f          	jal	s10,8020ed3a <__stack_cpu0+0x1a3a>
80207e48:	656e                	ld	a0,216(sp)
80207e4a:	746e                	ld	s0,248(sp)
80207e4c:	6e692073          	csrs	0x6e6,s2
80207e50:	7469                	lui	s0,0xffffa
80207e52:	6169                	addi	sp,sp,208
80207e54:	696c                	ld	a1,208(a0)
80207e56:	617a                	ld	sp,408(sp)
80207e58:	6974                	ld	a3,208(a0)
80207e5a:	0a2e6e6f          	jal	t3,802edefc <__bss_end+0xd81ac>
80207e5e:	0000                	unimp
80207e60:	616d                	addi	sp,sp,240
80207e62:	6e69                	lui	t3,0x1a
80207e64:	0000                	unimp
80207e66:	0000                	unimp
80207e68:	6974                	ld	a3,208(a0)
80207e6a:	2064                	fld	fs1,192(s0)
80207e6c:	3d21                	addiw	s10,s10,-24
80207e6e:	5220                	lw	s0,96(a2)
80207e70:	5f54                	lw	a3,60(a4)
80207e72:	554e                	lw	a0,240(sp)
80207e74:	4c4c                	lw	a1,28(s0)
80207e76:	0000                	unimp
80207e78:	6974                	ld	a3,208(a0)
80207e7a:	6c64                	ld	s1,216(s0)
80207e7c:	2565                	addiw	a0,a0,25 # ffff9019 <__bss_end+0x7fde32c9>
80207e7e:	0064                	addi	s1,sp,12
80207e80:	206d6573          	csrrsi	a0,0x206,26
80207e84:	3d21                	addiw	s10,s10,-24
80207e86:	5220                	lw	s0,96(a2)
80207e88:	5f54                	lw	a3,60(a4)
80207e8a:	554e                	lw	a0,240(sp)
80207e8c:	4c4c                	lw	a1,28(s0)
80207e8e:	0000                	unimp
80207e90:	7472                	ld	s0,312(sp)
80207e92:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
80207e98:	5f74                	lw	a3,124(a4)
80207e9a:	5f746567          	.insn	4, 0x5f746567
80207e9e:	7974                	ld	a3,240(a0)
80207ea0:	6570                	ld	a2,200(a0)
80207ea2:	2628                	fld	fa0,72(a2)
80207ea4:	2d6d6573          	csrrsi	a0,0x2d6,26
80207ea8:	703e                	.insn	2, 0x703e
80207eaa:	7261                	lui	tp,0xffff8
80207eac:	6e65                	lui	t3,0x19
80207eae:	2e74                	fld	fa3,216(a2)
80207eb0:	6170                	ld	a2,192(a0)
80207eb2:	6572                	ld	a0,280(sp)
80207eb4:	746e                	ld	s0,248(sp)
80207eb6:	2029                	.insn	2, 0x2029
80207eb8:	3d3d                	addiw	s10,s10,-17
80207eba:	5220                	lw	s0,96(a2)
80207ebc:	5f54                	lw	a3,60(a4)
80207ebe:	656a624f          	.insn	4, 0x656a624f
80207ec2:	435f7463          	bgeu	t5,s5,802082ea <rt_system_timer_thread_init+0x132c>
80207ec6:	616c                	ld	a1,192(a0)
80207ec8:	535f7373          	csrrci	t1,0x535,30
80207ecc:	6d65                	lui	s10,0x19
80207ece:	7061                	c.lui	zero,0xffff8
80207ed0:	6f68                	ld	a0,216(a4)
80207ed2:	6572                	ld	a0,280(sp)
80207ed4:	0000                	unimp
80207ed6:	0000                	unimp
80207ed8:	70737573          	csrrci	a0,0x707,6
80207edc:	6c5f 7369 2074      	.insn	6, 0x207473696c5f
80207ee2:	3d21                	addiw	s10,s10,-24 # 18fe8 <__text_size+0xfe40>
80207ee4:	5220                	lw	s0,96(a2)
80207ee6:	5f54                	lw	a3,60(a4)
80207ee8:	554e                	lw	a0,240(sp)
80207eea:	4c4c                	lw	a1,28(s0)
80207eec:	0000                	unimp
80207eee:	0000                	unimp
80207ef0:	756d                	lui	a0,0xffffb
80207ef2:	6574                	ld	a3,200(a0)
80207ef4:	2078                	fld	fa4,192(s0)
80207ef6:	3d21                	addiw	s10,s10,-24
80207ef8:	5220                	lw	s0,96(a2)
80207efa:	5f54                	lw	a3,60(a4)
80207efc:	554e                	lw	a0,240(sp)
80207efe:	4c4c                	lw	a1,28(s0)
	...
80207f08:	7472                	ld	s0,312(sp)
80207f0a:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
80207f10:	5f74                	lw	a3,124(a4)
80207f12:	5f746567          	.insn	4, 0x5f746567
80207f16:	7974                	ld	a3,240(a0)
80207f18:	6570                	ld	a2,200(a0)
80207f1a:	2628                	fld	fa0,72(a2)
80207f1c:	756d                	lui	a0,0xffffb
80207f1e:	6574                	ld	a3,200(a0)
80207f20:	2d78                	fld	fa4,216(a0)
80207f22:	703e                	.insn	2, 0x703e
80207f24:	7261                	lui	tp,0xffff8
80207f26:	6e65                	lui	t3,0x19
80207f28:	2e74                	fld	fa3,216(a2)
80207f2a:	6170                	ld	a2,192(a0)
80207f2c:	6572                	ld	a0,280(sp)
80207f2e:	746e                	ld	s0,248(sp)
80207f30:	2029                	.insn	2, 0x2029
80207f32:	3d3d                	addiw	s10,s10,-17
80207f34:	5220                	lw	s0,96(a2)
80207f36:	5f54                	lw	a3,60(a4)
80207f38:	656a624f          	.insn	4, 0x656a624f
80207f3c:	435f7463          	bgeu	t5,s5,80208364 <rt_system_timer_thread_init+0x13a6>
80207f40:	616c                	ld	a1,192(a0)
80207f42:	4d5f7373          	csrrci	t1,0x4d5,30
80207f46:	7475                	lui	s0,0xffffd
80207f48:	7865                	lui	a6,0xffff9
80207f4a:	0000                	unimp
80207f4c:	0000                	unimp
80207f4e:	0000                	unimp
80207f50:	756d                	lui	a0,0xffffb
80207f52:	6574                	ld	a3,200(a0)
80207f54:	2d78                	fld	fa4,216(a0)
80207f56:	6f3e                	ld	t5,456(sp)
80207f58:	72656e77          	.insn	4, 0x72656e77
80207f5c:	3d20                	fld	fs0,120(a0)
80207f5e:	203d                	.insn	2, 0x203d
80207f60:	6874                	ld	a3,208(s0)
80207f62:	6572                	ld	a0,280(sp)
80207f64:	6461                	lui	s0,0x18
80207f66:	0000                	unimp
80207f68:	756d                	lui	a0,0xffffb
80207f6a:	6574                	ld	a3,200(a0)
80207f6c:	2d78                	fld	fa4,216(a0)
80207f6e:	6f3e                	ld	t5,456(sp)
80207f70:	72656e77          	.insn	4, 0x72656e77
80207f74:	2120                	fld	fs0,64(a0)
80207f76:	203d                	.insn	2, 0x203d
80207f78:	6874                	ld	a3,208(s0)
80207f7a:	6572                	ld	a0,280(sp)
80207f7c:	6461                	lui	s0,0x18
80207f7e:	0000                	unimp
80207f80:	6176                	ld	sp,344(sp)
80207f82:	756c                	ld	a1,232(a0)
80207f84:	2065                	.insn	2, 0x2065
80207f86:	203c                	fld	fa5,64(s0)
80207f88:	7830                	ld	a2,112(s0)
80207f8a:	3031                	.insn	2, 0x3031
80207f8c:	3030                	fld	fa2,96(s0)
80207f8e:	5530                	lw	a2,104(a0)
	...
80207f98:	6628                	ld	a0,72(a2)
80207f9a:	616c                	ld	a1,192(a0)
80207f9c:	3d3d2067          	.insn	4, 0x3d3d2067
80207fa0:	5220                	lw	s0,96(a2)
80207fa2:	5f54                	lw	a3,60(a4)
80207fa4:	5049                	c.li	zero,-14
80207fa6:	4c465f43          	.insn	4, 0x4c465f43
80207faa:	4741                	li	a4,16
80207fac:	465f 4649 294f      	.insn	6, 0x294f4649465f
80207fb2:	7c20                	ld	s0,120(s0)
80207fb4:	207c                	fld	fa5,192(s0)
80207fb6:	6628                	ld	a0,72(a2)
80207fb8:	616c                	ld	a1,192(a0)
80207fba:	3d3d2067          	.insn	4, 0x3d3d2067
80207fbe:	5220                	lw	s0,96(a2)
80207fc0:	5f54                	lw	a3,60(a4)
80207fc2:	5049                	c.li	zero,-14
80207fc4:	4c465f43          	.insn	4, 0x4c465f43
80207fc8:	4741                	li	a4,16
80207fca:	505f 4952 294f      	.insn	6, 0x294f4952505f
	...
80207fd8:	7472                	ld	s0,312(sp)
80207fda:	735f 6863 6465      	.insn	6, 0x64656863735f
80207fe0:	745f 7268 6165      	.insn	6, 0x61657268745f
80207fe6:	5f64                	lw	s1,124(a4)
80207fe8:	7369                	lui	t1,0xffffa
80207fea:	735f 7375 6570      	.insn	6, 0x65707375735f
80207ff0:	646e                	ld	s0,216(sp)
80207ff2:	6465                	lui	s0,0x19
80207ff4:	6e28                	ld	a0,88(a2)
80207ff6:	7865                	lui	a6,0xffff9
80207ff8:	5f74                	lw	a3,124(a4)
80207ffa:	6874                	ld	a3,208(s0)
80207ffc:	6572                	ld	a0,280(sp)
80207ffe:	6461                	lui	s0,0x18
80208000:	0029                	c.nop	10
80208002:	0000                	unimp
80208004:	0000                	unimp
80208006:	0000                	unimp
80208008:	4e28                	lw	a0,88(a2)
8020800a:	4c55                	li	s8,21
8020800c:	294c                	fld	fa1,144(a0)
8020800e:	0000                	unimp
80208010:	200a                	fld	ft0,128(sp)
80208012:	205c                	fld	fa5,128(s0)
80208014:	207c                	fld	fa5,192(s0)
80208016:	00000a2f          	.insn	4, 0x0a2f
8020801a:	0000                	unimp
8020801c:	0000                	unimp
8020801e:	0000                	unimp
80208020:	202d                	.insn	2, 0x202d
80208022:	5452                	lw	s0,52(sp)
80208024:	2d20                	fld	fs0,88(a0)
80208026:	2020                	fld	fs0,64(s0)
80208028:	2020                	fld	fs0,64(s0)
8020802a:	5420                	lw	s0,104(s0)
8020802c:	7268                	ld	a0,224(a2)
8020802e:	6165                	addi	sp,sp,112
80208030:	2064                	fld	fs1,192(s0)
80208032:	7265704f          	fnmadd.d	ft0,fa0,ft6,fa4
80208036:	7461                	lui	s0,0xffff8
80208038:	6e69                	lui	t3,0x1a
8020803a:	79532067          	.insn	4, 0x79532067
8020803e:	6d657473          	csrrci	s0,0x6d6,10
80208042:	000a                	c.slli	zero,0x2
80208044:	0000                	unimp
80208046:	0000                	unimp
80208048:	3431                	addiw	s0,s0,-20 # ffff7fec <__bss_end+0x7fde229c>
8020804a:	343a                	fld	fs0,424(sp)
8020804c:	3a38                	fld	fa4,112(a2)
8020804e:	00003333          	snez	t1,zero
80208052:	0000                	unimp
80208054:	0000                	unimp
80208056:	0000                	unimp
80208058:	754a                	ld	a0,176(sp)
8020805a:	206c                	fld	fa1,192(s0)
8020805c:	3131                	addiw	sp,sp,-20
8020805e:	3220                	fld	fs0,96(a2)
80208060:	3230                	fld	fa2,96(a2)
80208062:	0034                	addi	a3,sp,8
80208064:	0000                	unimp
80208066:	0000                	unimp
80208068:	2f20                	fld	fs0,88(a4)
8020806a:	7c20                	ld	s0,120(s0)
8020806c:	5c20                	lw	s0,120(s0)
8020806e:	2020                	fld	fs0,64(s0)
80208070:	2020                	fld	fs0,64(s0)
80208072:	2520                	fld	fs0,72(a0)
80208074:	2e64                	fld	fs1,216(a2)
80208076:	6425                	lui	s0,0x9
80208078:	252e                	fld	fa0,200(sp)
8020807a:	2064                	fld	fs1,192(s0)
8020807c:	7562                	ld	a0,56(sp)
8020807e:	6c69                	lui	s8,0x1a
80208080:	2064                	fld	fs1,192(s0)
80208082:	7325                	lui	t1,0xfffe9
80208084:	2520                	fld	fs0,72(a0)
80208086:	00000a73          	.insn	4, 0x0a73
8020808a:	0000                	unimp
8020808c:	0000                	unimp
8020808e:	0000                	unimp
80208090:	3220                	fld	fs0,96(a2)
80208092:	3030                	fld	fa2,96(s0)
80208094:	2036                	fld	ft0,328(sp)
80208096:	202d                	.insn	2, 0x202d
80208098:	3032                	fld	ft0,296(sp)
8020809a:	3432                	fld	fs0,296(sp)
8020809c:	4320                	lw	s0,64(a4)
8020809e:	7279706f          	j	8029ffc4 <__bss_end+0x8a274>
802080a2:	6769                	lui	a4,0x1a
802080a4:	7468                	ld	a0,232(s0)
802080a6:	6220                	ld	s0,64(a2)
802080a8:	2079                	.insn	2, 0x2079
802080aa:	5452                	lw	s0,52(sp)
802080ac:	542d                	li	s0,-21
802080ae:	7268                	ld	a0,224(a2)
802080b0:	6165                	addi	sp,sp,112
802080b2:	2064                	fld	fs1,192(s0)
802080b4:	6574                	ld	a3,200(a0)
802080b6:	6d61                	lui	s10,0x18
802080b8:	000a                	c.slli	zero,0x2
802080ba:	0000                	unimp
802080bc:	0000                	unimp
802080be:	0000                	unimp
802080c0:	6c70                	ld	a2,216(s0)
802080c2:	6165                	addi	sp,sp,112
802080c4:	75206573          	csrrsi	a0,0x752,0
802080c8:	203a6573          	csrrsi	a0,0x203,20
802080cc:	6461                	lui	s0,0x18
802080ce:	7264                	ld	s1,224(a2)
802080d0:	6c32                	ld	s8,264(sp)
802080d2:	6e69                	lui	t3,0x1a
802080d4:	2065                	.insn	2, 0x2065
802080d6:	652d                	lui	a0,0xb
802080d8:	7220                	ld	s0,96(a2)
802080da:	7474                	ld	a3,232(s0)
802080dc:	7268                	ld	a0,224(a2)
802080de:	6165                	addi	sp,sp,112
802080e0:	2e64                	fld	fs1,216(a2)
802080e2:	6c65                	lui	s8,0x19
802080e4:	2066                	fld	ft0,88(sp)
802080e6:	612d                	addi	sp,sp,224
802080e8:	2d20                	fld	fs0,88(a0)
802080ea:	0066                	c.slli	zero,0x19
802080ec:	0000                	unimp
802080ee:	0000                	unimp
802080f0:	3020                	fld	fs0,96(s0)
802080f2:	2578                	fld	fa4,200(a0)
802080f4:	786c                	ld	a1,240(s0)
802080f6:	0000                	unimp
802080f8:	2528                	fld	fa0,72(a0)
802080fa:	61202973          	csrr	s2,0x612
802080fe:	72657373          	csrrci	t1,mhpmevent6h,10
80208102:	6974                	ld	a3,208(a0)
80208104:	66206e6f          	jal	t3,8020e766 <__stack_cpu0+0x1466>
80208108:	6961                	lui	s2,0x18
8020810a:	656c                	ld	a1,200(a0)
8020810c:	2064                	fld	fs1,192(s0)
8020810e:	7461                	lui	s0,0xffff8
80208110:	6620                	ld	s0,72(a2)
80208112:	6e75                	lui	t3,0x1d
80208114:	6f697463          	bgeu	s2,s6,802087fc <Interrupt_Name+0x4>
80208118:	3a6e                	fld	fs4,248(sp)
8020811a:	7325                	lui	t1,0xfffe9
8020811c:	202c                	fld	fa1,64(s0)
8020811e:	696c                	ld	a1,208(a0)
80208120:	656e                	ld	a0,216(sp)
80208122:	6e20                	ld	s0,88(a2)
80208124:	6d75                	lui	s10,0x1d
80208126:	6562                	ld	a0,24(sp)
80208128:	3a72                	fld	fs4,312(sp)
8020812a:	6425                	lui	s0,0x9
8020812c:	0a20                	addi	s0,sp,280
8020812e:	0000                	unimp
80208130:	6e65                	lui	t3,0x19
80208132:	5f64                	lw	s1,124(a4)
80208134:	6c61                	lui	s8,0x18
80208136:	6769                	lui	a4,0x1a
80208138:	206e                	fld	ft0,216(sp)
8020813a:	203e                	fld	ft0,456(sp)
8020813c:	6562                	ld	a0,24(sp)
8020813e:	5f6e6967          	.insn	4, 0x5f6e6967
80208142:	6c61                	lui	s8,0x18
80208144:	6769                	lui	a4,0x1a
80208146:	006e                	c.slli	zero,0x1b
80208148:	6568                	ld	a0,200(a0)
8020814a:	7061                	c.lui	zero,0xffff8
8020814c:	0000                	unimp
8020814e:	0000                	unimp
80208150:	656c                	ld	a1,200(a0)
80208152:	6576                	ld	a0,344(sp)
80208154:	206c                	fld	fa1,192(s0)
80208156:	3d3d                	addiw	s10,s10,-17 # 1cfef <__text_size+0x13e47>
80208158:	5220                	lw	s0,96(a2)
8020815a:	5f54                	lw	a3,60(a4)
8020815c:	4f45                	li	t5,17
8020815e:	656d004b          	.insn	4, 0x656d004b
80208162:	686d                	lui	a6,0x1b
80208164:	6165                	addi	sp,sp,112
80208166:	2070                	fld	fa2,192(s0)
80208168:	3d21                	addiw	s10,s10,-24
8020816a:	5220                	lw	s0,96(a2)
8020816c:	5f54                	lw	a3,60(a4)
8020816e:	554e                	lw	a0,240(sp)
80208170:	4c4c                	lw	a1,28(s0)
80208172:	0000                	unimp
80208174:	0000                	unimp
80208176:	0000                	unimp
80208178:	7472                	ld	s0,312(sp)
8020817a:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
80208180:	5f74                	lw	a3,124(a4)
80208182:	5f746567          	.insn	4, 0x5f746567
80208186:	7974                	ld	a3,240(a0)
80208188:	6570                	ld	a2,200(a0)
8020818a:	2628                	fld	fa0,72(a2)
8020818c:	6568                	ld	a0,200(a0)
8020818e:	7061                	c.lui	zero,0xffff8
80208190:	3e2d                	addiw	t3,t3,-21 # 18feb <__text_size+0xfe43>
80208192:	6170                	ld	a2,192(a0)
80208194:	6572                	ld	a0,280(sp)
80208196:	746e                	ld	s0,248(sp)
80208198:	2029                	.insn	2, 0x2029
8020819a:	3d3d                	addiw	s10,s10,-17
8020819c:	5220                	lw	s0,96(a2)
8020819e:	5f54                	lw	a3,60(a4)
802081a0:	656a624f          	.insn	4, 0x656a624f
802081a4:	435f7463          	bgeu	t5,s5,802085cc <rt_system_timer_thread_init+0x160e>
802081a8:	616c                	ld	a1,192(a0)
802081aa:	4d5f7373          	csrrci	t1,0x4d5,30
802081ae:	6d65                	lui	s10,0x19
802081b0:	6548                	ld	a0,136(a0)
802081b2:	7061                	c.lui	zero,0xffff8
802081b4:	0000                	unimp
802081b6:	0000                	unimp
802081b8:	7472                	ld	s0,312(sp)
802081ba:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
802081c0:	5f74                	lw	a3,124(a4)
802081c2:	7369                	lui	t1,0xffffa
802081c4:	735f 7379 6574      	.insn	6, 0x65747379735f
802081ca:	6f6d                	lui	t5,0x1b
802081cc:	6a62                	ld	s4,24(sp)
802081ce:	6365                	lui	t1,0x19
802081d0:	2874                	fld	fa3,208(s0)
802081d2:	6826                	ld	a6,72(sp)
802081d4:	6165                	addi	sp,sp,112
802081d6:	2d70                	fld	fa2,216(a0)
802081d8:	703e                	.insn	2, 0x703e
802081da:	7261                	lui	tp,0xffff8
802081dc:	6e65                	lui	t3,0x19
802081de:	2974                	fld	fa3,208(a0)
	...
802081e8:	6568                	ld	a0,200(a0)
802081ea:	7061                	c.lui	zero,0xffff8
802081ec:	2120                	fld	fs0,64(a0)
802081ee:	203d                	.insn	2, 0x203d
802081f0:	5452                	lw	s0,52(sp)
802081f2:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
802081f8:	6828                	ld	a0,80(s0)
802081fa:	6165                	addi	sp,sp,112
802081fc:	6564                	ld	s1,200(a0)
802081fe:	5f72                	lw	t5,60(sp)
80208200:	7470                	ld	a2,232(s0)
80208202:	2d72                	fld	fs10,280(sp)
80208204:	6e3e                	ld	t3,456(sp)
80208206:	7865                	lui	a6,0xffff9
80208208:	2d74                	fld	fa3,216(a0)
8020820a:	6d3e                	ld	s10,456(sp)
8020820c:	6761                	lui	a4,0x18
8020820e:	6369                	lui	t1,0x1a
80208210:	2620                	fld	fs0,72(a2)
80208212:	5220                	lw	s0,96(a2)
80208214:	5f54                	lw	a3,60(a4)
80208216:	454d                	li	a0,19
80208218:	484d                	li	a6,19
8020821a:	4145                	li	sp,17
8020821c:	5f50                	lw	a2,60(a4)
8020821e:	414d                	li	sp,19
80208220:	20294b53          	.insn	4, 0x20294b53
80208224:	3d3d                	addiw	s10,s10,-17 # 18fef <__text_size+0xfe47>
80208226:	5220                	lw	s0,96(a2)
80208228:	5f54                	lw	a3,60(a4)
8020822a:	454d                	li	a0,19
8020822c:	484d                	li	a6,19
8020822e:	4145                	li	sp,17
80208230:	5f50                	lw	a2,60(a4)
80208232:	414d                	li	sp,19
80208234:	00434947          	fmsub.s	fs2,ft6,ft4,ft0,rmm
80208238:	6568                	ld	a0,200(a0)
8020823a:	6461                	lui	s0,0x18
8020823c:	7265                	lui	tp,0xffff9
8020823e:	705f 7274 3e2d      	.insn	6, 0x3e2d7274705f
80208244:	616d                	addi	sp,sp,240
80208246:	20636967          	.insn	4, 0x20636967
8020824a:	3d3d                	addiw	s10,s10,-17
8020824c:	2820                	fld	fs0,80(s0)
8020824e:	5452                	lw	s0,52(sp)
80208250:	4d5f 4d45 4548      	.insn	6, 0x45484d454d5f
80208256:	5041                	c.li	zero,-16
80208258:	4d5f 4741 4349      	.insn	6, 0x434947414d5f
8020825e:	7c20                	ld	s0,120(s0)
80208260:	5220                	lw	s0,96(a2)
80208262:	5f54                	lw	a3,60(a4)
80208264:	454d                	li	a0,19
80208266:	484d                	li	a6,19
80208268:	4145                	li	sp,17
8020826a:	5f50                	lw	a2,60(a4)
8020826c:	5355                	li	t1,-11
8020826e:	4445                	li	s0,17
80208270:	0029                	c.nop	10
80208272:	0000                	unimp
80208274:	0000                	unimp
80208276:	0000                	unimp
80208278:	6e69                	lui	t3,0x1a
8020827a:	6f66                	ld	t5,88(sp)
8020827c:	6d72                	ld	s10,280(sp)
8020827e:	7461                	lui	s0,0xffff8
80208280:	6f69                	lui	t5,0x1a
80208282:	206e                	fld	ft0,216(sp)
80208284:	3d21                	addiw	s10,s10,-24
80208286:	5220                	lw	s0,96(a2)
80208288:	5f54                	lw	a3,60(a4)
8020828a:	554e                	lw	a0,240(sp)
8020828c:	4c4c                	lw	a1,28(s0)
8020828e:	0000                	unimp
80208290:	706d                	c.lui	zero,0xffffb
80208292:	2120                	fld	fs0,64(a0)
80208294:	203d                	.insn	2, 0x203d
80208296:	5452                	lw	s0,52(sp)
80208298:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
8020829e:	0000                	unimp
802082a0:	616e                	ld	sp,216(sp)
802082a2:	656d                	lui	a0,0x1b
802082a4:	2120                	fld	fs0,64(a0)
802082a6:	203d                	.insn	2, 0x203d
802082a8:	5452                	lw	s0,52(sp)
802082aa:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
802082b0:	72617473          	csrrci	s0,mhpmevent6h,2
802082b4:	2074                	fld	fa3,192(s0)
802082b6:	3d21                	addiw	s10,s10,-24
802082b8:	5220                	lw	s0,96(a2)
802082ba:	5f54                	lw	a3,60(a4)
802082bc:	554e                	lw	a0,240(sp)
802082be:	4c4c                	lw	a1,28(s0)
	...
802082c8:	657a6973          	csrrsi	s2,hviprio2h,20
802082cc:	3e20                	fld	fs0,120(a2)
802082ce:	3020                	fld	fs0,96(s0)
802082d0:	2620                	fld	fs0,72(a2)
802082d2:	2026                	fld	ft0,72(sp)
802082d4:	6c62                	ld	s8,24(sp)
802082d6:	5f6b636f          	jal	t1,802be8cc <__bss_end+0xa8b7c>
802082da:	657a6973          	csrrsi	s2,hviprio2h,20
802082de:	3e20                	fld	fs0,120(a2)
802082e0:	3020                	fld	fs0,96(s0)
802082e2:	0000                	unimp
802082e4:	0000                	unimp
802082e6:	0000                	unimp
802082e8:	6c62                	ld	s8,24(sp)
802082ea:	5f6b636f          	jal	t1,802be8e0 <__bss_end+0xa8b90>
802082ee:	6e756f63          	bltu	a0,t2,802089ec <__FUNCTION__.6+0x14>
802082f2:	2074                	fld	fa3,192(s0)
802082f4:	203e                	fld	ft0,456(sp)
802082f6:	2030                	fld	fa2,64(s0)
802082f8:	2626                	fld	fa2,72(sp)
802082fa:	6220                	ld	s0,64(a2)
802082fc:	6f6c                	ld	a1,216(a4)
802082fe:	735f6b63          	bltu	t5,s5,80208a34 <__FUNCTION__.2+0x4>
80208302:	7a69                	lui	s4,0xffffa
80208304:	2065                	.insn	2, 0x2065
80208306:	203e                	fld	ft0,456(sp)
80208308:	0030                	addi	a2,sp,8
8020830a:	0000                	unimp
8020830c:	0000                	unimp
8020830e:	0000                	unimp
80208310:	206a626f          	jal	tp,802ae516 <__bss_end+0x987c6>
80208314:	3d21                	addiw	s10,s10,-24
80208316:	6f20                	ld	s0,88(a4)
80208318:	6a62                	ld	s4,24(sp)
8020831a:	6365                	lui	t1,0x19
8020831c:	0074                	addi	a3,sp,12
8020831e:	0000                	unimp
80208320:	656a626f          	jal	tp,802ae976 <__bss_end+0x98c26>
80208324:	21207463          	bgeu	zero,s2,8020852c <rt_system_timer_thread_init+0x156e>
80208328:	203d                	.insn	2, 0x203d
8020832a:	5452                	lw	s0,52(sp)
8020832c:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
80208332:	0000                	unimp
80208334:	0000                	unimp
80208336:	0000                	unimp
80208338:	2821                	addiw	a6,a6,8 # ffff9008 <__bss_end+0x7fde32b8>
8020833a:	656a626f          	jal	tp,802ae990 <__bss_end+0x98c40>
8020833e:	3e2d7463          	bgeu	s10,sp,80208726 <__FUNCTION__.11+0x6>
80208342:	7974                	ld	a3,240(a0)
80208344:	6570                	ld	a2,200(a0)
80208346:	2620                	fld	fs0,72(a2)
80208348:	5220                	lw	s0,96(a2)
8020834a:	5f54                	lw	a3,60(a4)
8020834c:	656a624f          	.insn	4, 0x656a624f
80208350:	435f7463          	bgeu	t5,s5,80208778 <__FUNCTION__.20>
80208354:	616c                	ld	a1,192(a0)
80208356:	535f7373          	csrrci	t1,0x535,30
8020835a:	6174                	ld	a3,192(a0)
8020835c:	6974                	ld	a3,208(a0)
8020835e:	00002963          	.insn	4, 0x2963
80208362:	0000                	unimp
80208364:	0000                	unimp
80208366:	0000                	unimp
80208368:	7270                	ld	a2,224(a2)
8020836a:	6f69                	lui	t5,0x1a
8020836c:	6972                	ld	s2,280(sp)
8020836e:	7974                	ld	a3,240(a0)
80208370:	3c20                	fld	fs0,120(s0)
80208372:	5220                	lw	s0,96(a2)
80208374:	5f54                	lw	a3,60(a4)
80208376:	4854                	lw	a3,20(s0)
80208378:	4552                	lw	a0,20(sp)
8020837a:	4441                	li	s0,16
8020837c:	505f 4952 524f      	.insn	6, 0x524f4952505f
80208382:	5449                	li	s0,-14
80208384:	5f59                	li	t5,-10
80208386:	414d                	li	sp,19
80208388:	0058                	addi	a4,sp,4
8020838a:	0000                	unimp
8020838c:	0000                	unimp
8020838e:	0000                	unimp
80208390:	6874                	ld	a3,208(s0)
80208392:	6572                	ld	a0,280(sp)
80208394:	6461                	lui	s0,0x18
80208396:	2120                	fld	fs0,64(a0)
80208398:	203d                	.insn	2, 0x203d
8020839a:	5452                	lw	s0,52(sp)
8020839c:	4e5f 4c55 004c      	.insn	6, 0x004c4c554e5f
802083a2:	0000                	unimp
802083a4:	0000                	unimp
802083a6:	0000                	unimp
802083a8:	6874                	ld	a3,208(s0)
802083aa:	6572                	ld	a0,280(sp)
802083ac:	6461                	lui	s0,0x18
802083ae:	253a                	fld	fa0,392(sp)
802083b0:	74732073          	csrs	0x747,t1
802083b4:	6361                	lui	t1,0x18
802083b6:	766f206b          	.insn	4, 0x766f206b
802083ba:	7265                	lui	tp,0xffff9
802083bc:	6c66                	ld	s8,88(sp)
802083be:	000a776f          	jal	a4,802af3be <__bss_end+0x9966e>
802083c2:	0000                	unimp
802083c4:	0000                	unimp
802083c6:	0000                	unimp
802083c8:	6e72656b          	.insn	4, 0x6e72656b
802083cc:	6c65                	lui	s8,0x19
802083ce:	732e                	ld	t1,232(sp)
802083d0:	64656863          	bltu	a0,t1,80208a20 <__FUNCTION__.0+0x10>
802083d4:	0000                	unimp
802083d6:	0000                	unimp
802083d8:	6e726177          	.insn	4, 0x6e726177
802083dc:	6e69                	lui	t3,0x1a
802083de:	25203a67          	.insn	4, 0x25203a67
802083e2:	74732073          	csrs	0x747,t1
802083e6:	6361                	lui	t1,0x18
802083e8:	7369206b          	.insn	4, 0x7369206b
802083ec:	6320                	ld	s0,64(a4)
802083ee:	6f6c                	ld	a1,216(a4)
802083f0:	74206573          	csrrsi	a0,0x742,0
802083f4:	6e65206f          	j	8025aada <__bss_end+0x44d8a>
802083f8:	2064                	fld	fs1,192(s0)
802083fa:	7320666f          	jal	a2,8020eb2c <__stack_cpu0+0x182c>
802083fe:	6174                	ld	a3,192(a0)
80208400:	61206b63          	bltu	zero,s2,80208a16 <__FUNCTION__.0+0x6>
80208404:	6464                	ld	s1,200(s0)
80208406:	6572                	ld	a0,280(sp)
80208408:	0a2e7373          	csrrci	t1,0xa2,28
8020840c:	0000                	unimp
8020840e:	0000                	unimp
80208410:	6854                	ld	a3,144(s0)
80208412:	2065                	.insn	2, 0x2065
80208414:	6c61                	lui	s8,0x18
80208416:	6f6c                	ld	a1,216(a4)
80208418:	69746163          	bltu	s0,s7,80208a9a <__FUNCTION__.8+0x2>
8020841c:	6f206e6f          	jal	t3,8020eb0e <__stack_cpu0+0x180e>
80208420:	2066                	fld	ft0,88(sp)
80208422:	6e676973          	csrrsi	s2,0x6e6,14
80208426:	6c61                	lui	s8,0x18
80208428:	6920                	ld	s0,80(a0)
8020842a:	666e                	ld	a2,216(sp)
8020842c:	6f6e206f          	j	802eab22 <__bss_end+0xd4dd2>
80208430:	6564                	ld	s1,200(a0)
80208432:	6620                	ld	s0,72(a2)
80208434:	6961                	lui	s2,0x18
80208436:	656c                	ld	a1,200(a0)
80208438:	2e64                	fld	fs1,216(a2)
8020843a:	0000                	unimp
8020843c:	0000                	unimp
8020843e:	0000                	unimp
80208440:	4e474953          	.insn	4, 0x4e474953
80208444:	0000                	unimp
80208446:	0000                	unimp
80208448:	6e676973          	csrrsi	s2,0x6e6,14
8020844c:	6c61                	lui	s8,0x18
8020844e:	0000                	unimp
80208450:	61657263          	bgeu	a0,s6,80208a54 <__FUNCTION__.3+0xc>
80208454:	6574                	ld	a3,200(a0)
80208456:	6d20                	ld	s0,88(a0)
80208458:	6d65                	lui	s10,0x19
8020845a:	2079726f          	jal	tp,8029fe60 <__bss_end+0x8a110>
8020845e:	6f70                	ld	a2,216(a4)
80208460:	66206c6f          	jal	s8,8020eac2 <__stack_cpu0+0x17c2>
80208464:	7320726f          	jal	tp,8020fb96 <__stack_cpu0+0x2896>
80208468:	6769                	lui	a4,0x1a
8020846a:	616e                	ld	sp,216(sp)
8020846c:	206c                	fld	fa1,192(s0)
8020846e:	6e69                	lui	t3,0x1a
80208470:	6f66                	ld	t5,88(sp)
80208472:	6620                	ld	s0,72(a2)
80208474:	6961                	lui	s2,0x18
80208476:	656c                	ld	a1,200(a0)
80208478:	2e64                	fld	fs1,216(a2)
8020847a:	0000                	unimp
8020847c:	0000                	unimp
8020847e:	0000                	unimp
80208480:	7472                	ld	s0,312(sp)
80208482:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
80208488:	5f74                	lw	a3,124(a4)
8020848a:	5f746567          	.insn	4, 0x5f746567
8020848e:	7974                	ld	a3,240(a0)
80208490:	6570                	ld	a2,200(a0)
80208492:	2828                	fld	fa0,80(s0)
80208494:	7472                	ld	s0,312(sp)
80208496:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
8020849c:	5f74                	lw	a3,124(a4)
8020849e:	2974                	fld	fa3,208(a0)
802084a0:	6874                	ld	a3,208(s0)
802084a2:	6572                	ld	a0,280(sp)
802084a4:	6461                	lui	s0,0x18
802084a6:	2029                	.insn	2, 0x2029
802084a8:	3d3d                	addiw	s10,s10,-17 # 18fef <__text_size+0xfe47>
802084aa:	5220                	lw	s0,96(a2)
802084ac:	5f54                	lw	a3,60(a4)
802084ae:	656a624f          	.insn	4, 0x656a624f
802084b2:	435f7463          	bgeu	t5,s5,802088da <__rti_riscv_cputime_init_name+0x12>
802084b6:	616c                	ld	a1,192(a0)
802084b8:	545f7373          	csrrci	t1,0x545,30
802084bc:	7268                	ld	a0,224(a2)
802084be:	6165                	addi	sp,sp,112
802084c0:	0064                	addi	s1,sp,12
802084c2:	0000                	unimp
802084c4:	0000                	unimp
802084c6:	0000                	unimp
802084c8:	7472                	ld	s0,312(sp)
802084ca:	735f 6863 6465      	.insn	6, 0x64656863735f
802084d0:	745f 7268 6165      	.insn	6, 0x61657268745f
802084d6:	5f64                	lw	s1,124(a4)
802084d8:	7369                	lui	t1,0xffffa
802084da:	735f 7375 6570      	.insn	6, 0x65707375735f
802084e0:	646e                	ld	s0,216(sp)
802084e2:	6465                	lui	s0,0x19
802084e4:	7428                	ld	a0,104(s0)
802084e6:	7268                	ld	a0,224(a2)
802084e8:	6165                	addi	sp,sp,112
802084ea:	2964                	fld	fs1,208(a0)
802084ec:	0000                	unimp
802084ee:	0000                	unimp
802084f0:	63617473          	csrrci	s0,0x636,2
802084f4:	74735f6b          	.insn	4, 0x74735f6b
802084f8:	7261                	lui	tp,0xffff8
802084fa:	2074                	fld	fa3,192(s0)
802084fc:	3d21                	addiw	s10,s10,-24
802084fe:	5220                	lw	s0,96(a2)
80208500:	5f54                	lw	a3,60(a4)
80208502:	554e                	lw	a0,240(sp)
80208504:	4c4c                	lw	a1,28(s0)
80208506:	0000                	unimp
80208508:	6974                	ld	a3,208(a0)
8020850a:	21206b63          	bltu	zero,s2,80208720 <__FUNCTION__.11>
8020850e:	203d                	.insn	2, 0x203d
80208510:	0030                	addi	a2,sp,8
80208512:	0000                	unimp
80208514:	0000                	unimp
80208516:	0000                	unimp
80208518:	6874                	ld	a3,208(s0)
8020851a:	6572                	ld	a0,280(sp)
8020851c:	6461                	lui	s0,0x18
8020851e:	2120                	fld	fs0,64(a0)
80208520:	203d                	.insn	2, 0x203d
80208522:	7472                	ld	s0,312(sp)
80208524:	745f 7268 6165      	.insn	6, 0x61657268745f
8020852a:	5f64                	lw	s1,124(a4)
8020852c:	666c6573          	csrrsi	a0,0x666,24
80208530:	2928                	fld	fa0,80(a0)
80208532:	7c20                	ld	s0,120(s0)
80208534:	207c                	fld	fa5,192(s0)
80208536:	7472                	ld	s0,312(sp)
80208538:	635f 6972 6974      	.insn	6, 0x69746972635f
8020853e:	5f6c6163          	bltu	s8,s6,80208b20 <__FUNCTION__.16>
80208542:	656c                	ld	a1,200(a0)
80208544:	6576                	ld	a0,344(sp)
80208546:	286c                	fld	fa1,208(s0)
80208548:	0029                	c.nop	10
8020854a:	0000                	unimp
8020854c:	0000                	unimp
8020854e:	0000                	unimp
80208550:	6874                	ld	a3,208(s0)
80208552:	6572                	ld	a0,280(sp)
80208554:	6461                	lui	s0,0x18
80208556:	3d20                	fld	fs0,120(a0)
80208558:	203d                	.insn	2, 0x203d
8020855a:	7472                	ld	s0,312(sp)
8020855c:	745f 7268 6165      	.insn	6, 0x61657268745f
80208562:	5f64                	lw	s1,124(a4)
80208564:	666c6573          	csrrsi	a0,0x666,24
80208568:	2928                	fld	fa0,80(a0)
8020856a:	0000                	unimp
8020856c:	0000                	unimp
8020856e:	0000                	unimp
80208570:	5228                	lw	a0,96(a2)
80208572:	5f54                	lw	a3,60(a4)
80208574:	45484353          	.insn	4, 0x45484353
80208578:	5f44                	lw	s1,60(a4)
8020857a:	28585443          	fmadd.s	fs0,fa6,ft5,ft5,unknown
8020857e:	6874                	ld	a3,208(s0)
80208580:	6572                	ld	a0,280(sp)
80208582:	6461                	lui	s0,0x18
80208584:	2e29                	addiw	t3,t3,10 # 1a00a <__text_size+0x10e62>
80208586:	74617473          	csrrci	s0,0x746,2
8020858a:	2620                	fld	fs0,72(a2)
8020858c:	5220                	lw	s0,96(a2)
8020858e:	5f54                	lw	a3,60(a4)
80208590:	4854                	lw	a3,20(s0)
80208592:	4552                	lw	a0,20(sp)
80208594:	4441                	li	s0,16
80208596:	535f 4154 5f54      	.insn	6, 0x5f544154535f
8020859c:	414d                	li	sp,19
8020859e:	20294b53          	.insn	4, 0x20294b53
802085a2:	3d3d                	addiw	s10,s10,-17
802085a4:	5220                	lw	s0,96(a2)
802085a6:	5f54                	lw	a3,60(a4)
802085a8:	4854                	lw	a3,20(s0)
802085aa:	4552                	lw	a0,20(sp)
802085ac:	4441                	li	s0,16
802085ae:	495f 494e 0054      	.insn	6, 0x0054494e495f
802085b4:	0000                	unimp
802085b6:	0000                	unimp
802085b8:	6974                	ld	a3,208(a0)
802085ba:	656d                	lui	a0,0x1b
802085bc:	2072                	fld	ft0,280(sp)
802085be:	3d21                	addiw	s10,s10,-24
802085c0:	5220                	lw	s0,96(a2)
802085c2:	5f54                	lw	a3,60(a4)
802085c4:	554e                	lw	a0,240(sp)
802085c6:	4c4c                	lw	a1,28(s0)
	...
802085d0:	6974                	ld	a3,208(a0)
802085d2:	656d                	lui	a0,0x1b
802085d4:	2074756f          	jal	a0,8024ffda <__bss_end+0x3a28a>
802085d8:	3d21                	addiw	s10,s10,-24
802085da:	5220                	lw	s0,96(a2)
802085dc:	5f54                	lw	a3,60(a4)
802085de:	554e                	lw	a0,240(sp)
802085e0:	4c4c                	lw	a1,28(s0)
802085e2:	0000                	unimp
802085e4:	0000                	unimp
802085e6:	0000                	unimp
802085e8:	6974                	ld	a3,208(a0)
802085ea:	656d                	lui	a0,0x1b
802085ec:	3c20                	fld	fs0,120(s0)
802085ee:	5220                	lw	s0,96(a2)
802085f0:	5f54                	lw	a3,60(a4)
802085f2:	4954                	lw	a3,20(a0)
802085f4:	4d5f4b43          	.insn	4, 0x4d5f4b43
802085f8:	5841                	li	a6,-16
802085fa:	2f20                	fld	fs0,88(a4)
802085fc:	3220                	fld	fs0,96(a2)
802085fe:	0000                	unimp
80208600:	7472                	ld	s0,312(sp)
80208602:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
80208608:	5f74                	lw	a3,124(a4)
8020860a:	5f746567          	.insn	4, 0x5f746567
8020860e:	7974                	ld	a3,240(a0)
80208610:	6570                	ld	a2,200(a0)
80208612:	2628                	fld	fa0,72(a2)
80208614:	6974                	ld	a3,208(a0)
80208616:	656d                	lui	a0,0x1b
80208618:	2d72                	fld	fs10,280(sp)
8020861a:	703e                	.insn	2, 0x703e
8020861c:	7261                	lui	tp,0xffff8
8020861e:	6e65                	lui	t3,0x19
80208620:	2974                	fld	fa3,208(a0)
80208622:	3d20                	fld	fs0,120(a0)
80208624:	203d                	.insn	2, 0x203d
80208626:	5452                	lw	s0,52(sp)
80208628:	4f5f 6a62 6365      	.insn	6, 0x63656a624f5f
8020862e:	5f74                	lw	a3,124(a4)
80208630:	73616c43          	fmadd.d	fs8,ft2,fs6,fa4,unknown
80208634:	69545f73          	csrrwi	t5,0x695,8
80208638:	656d                	lui	a0,0x1b
8020863a:	0072                	c.slli	zero,0x1c
8020863c:	0000                	unimp
8020863e:	0000                	unimp
80208640:	7472                	ld	s0,312(sp)
80208642:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
80208648:	5f74                	lw	a3,124(a4)
8020864a:	7369                	lui	t1,0xffffa
8020864c:	735f 7379 6574      	.insn	6, 0x65747379735f
80208652:	6f6d                	lui	t5,0x1b
80208654:	6a62                	ld	s4,24(sp)
80208656:	6365                	lui	t1,0x19
80208658:	2874                	fld	fa3,208(s0)
8020865a:	7426                	ld	s0,104(sp)
8020865c:	6d69                	lui	s10,0x1a
8020865e:	7265                	lui	tp,0xffff9
80208660:	3e2d                	addiw	t3,t3,-21 # 18feb <__text_size+0xfe43>
80208662:	6170                	ld	a2,192(a0)
80208664:	6572                	ld	a0,280(sp)
80208666:	746e                	ld	s0,248(sp)
80208668:	0029                	c.nop	10
8020866a:	0000                	unimp
8020866c:	0000                	unimp
8020866e:	0000                	unimp
80208670:	7472                	ld	s0,312(sp)
80208672:	6f5f 6a62 6365      	.insn	6, 0x63656a626f5f
80208678:	5f74                	lw	a3,124(a4)
8020867a:	5f746567          	.insn	4, 0x5f746567
8020867e:	7974                	ld	a3,240(a0)
80208680:	6570                	ld	a2,200(a0)
80208682:	2628                	fld	fa0,72(a2)
80208684:	6874                	ld	a3,208(s0)
80208686:	6572                	ld	a0,280(sp)
80208688:	6461                	lui	s0,0x18
8020868a:	3e2d                	addiw	t3,t3,-21
8020868c:	6170                	ld	a2,192(a0)
8020868e:	6572                	ld	a0,280(sp)
80208690:	746e                	ld	s0,248(sp)
80208692:	2029                	.insn	2, 0x2029
80208694:	3d3d                	addiw	s10,s10,-17 # 19fef <__text_size+0x10e47>
80208696:	5220                	lw	s0,96(a2)
80208698:	5f54                	lw	a3,60(a4)
8020869a:	656a624f          	.insn	4, 0x656a624f
8020869e:	435f7463          	bgeu	t5,s5,80208ac6 <__FUNCTION__.9+0xe>
802086a2:	616c                	ld	a1,192(a0)
802086a4:	545f7373          	csrrci	t1,0x545,30
802086a8:	7268                	ld	a0,224(a2)
802086aa:	6165                	addi	sp,sp,112
802086ac:	0064                	addi	s1,sp,12
802086ae:	0000                	unimp
802086b0:	2a28                	fld	fa0,80(a2)
802086b2:	7228                	ld	a0,96(a2)
802086b4:	5f74                	lw	a3,124(a4)
802086b6:	6974                	ld	a3,208(a0)
802086b8:	745f6b63          	bltu	t5,t0,80208e0e <__lowest_bit_bitmap+0xde>
802086bc:	2a20                	fld	fs0,80(a2)
802086be:	6129                	addi	sp,sp,192
802086c0:	6772                	ld	a4,280(sp)
802086c2:	2029                	.insn	2, 0x2029
802086c4:	203c                	fld	fa5,64(s0)
802086c6:	5452                	lw	s0,52(sp)
802086c8:	545f 4349 5f4b      	.insn	6, 0x5f4b4349545f
802086ce:	414d                	li	sp,19
802086d0:	2058                	fld	fa4,128(s0)
802086d2:	0032202f          	amoadd.w	zero,gp,(tp)
	...

802086d8 <__rti_ulog_console_backend_init_name>:
802086d8:	676f6c75 6e6f635f 656c6f73 6361625f     ulog_console_bac
802086e8:	646e656b 696e695f 00000074 00000000     kend_init.......

802086f8 <__FUNCTION__.3>:
802086f8:	676f6c75 6361625f 646e656b 6765725f     ulog_backend_reg
80208708:	65747369 00000072                       ister...

80208710 <__FUNCTION__.7>:
80208710:	676f6c75 756f765f 74757074 00000000     ulog_voutput....

80208720 <__FUNCTION__.11>:
80208720:	676f6c75 7865685f 726f665f 6574616d     ulog_hex_formate
80208730:	00000072 00000000                       r.......

80208738 <__FUNCTION__.14>:
80208738:	676f6c75 726f665f 6574616d 00000072     ulog_formater...

80208748 <__FUNCTION__.16>:
80208748:	676f6c75 6961745f 6f665f6c 74616d72     ulog_tail_format
80208758:	00007265 00000000                       er......

80208760 <__FUNCTION__.19>:
80208760:	676f6c75 6165685f 6f665f64 74616d72     ulog_head_format
80208770:	00007265 00000000                       er......

80208778 <__FUNCTION__.20>:
80208778:	676f6c75 7274735f 00797063 00000000     ulog_strcpy.....

80208788 <__rti_ulog_init_name>:
80208788:	676f6c75 696e695f 00000074 00000000     ulog_init.......

80208798 <color_output_info>:
80208798:	80207138 00000000 00000000 80207140     8q .........@q .
802087a8:	80207148 00000000 80207150 00000000     Hq .....Pq .....

802087b8 <level_output_info>:
802087b8:	80207158 00000000 00000000 80207160     Xq .........`q .
802087c8:	80207168 00000000 80207170 80207178     hq .....pq .xq .

802087d8 <__FUNCTION__.0>:
802087d8:	5f696273 5f746573 656d6974 00000072     sbi_set_timer...

802087e8 <__FUNCTION__.0>:
802087e8:	646e6168 745f656c 00706172 00000000     handle_trap.....

802087f8 <Interrupt_Name>:
802087f8:	802077c8 802077e0 80207800 80207810     .w ..w ..x ..x .
80208808:	80207820 80207838 80207858 80207868      x .8x .Xx .hx .
80208818:	80207878 80207890 802078b0 802078c0     xx ..x ..x ..x .

80208828 <Exception_Name>:
80208828:	802078d0 802078f0 80207910 80207928     .x ..x ..y .(y .
80208838:	80207938 80207950 80207968 80207988     8y .Py .hy ..y .
80208848:	802079a0 802079c0 802078b0 802078c0     .y ..y ..x ..x .
80208858:	802079e0 802079f8 80207a08 80207a18     .y ..y ..z ..z .

80208868 <_uart_ops>:
80208868:	80201748 802017be 8020174c 8020176a     H. ... .L. .j. .
	...

80208880 <__FUNCTION__.3>:
80208880:	645f7472 63697665 72775f65 00657469     rt_device_write.

80208890 <__FUNCTION__.5>:
80208890:	645f7472 63697665 6c635f65 0065736f     rt_device_close.

802088a0 <__FUNCTION__.6>:
802088a0:	645f7472 63697665 706f5f65 00006e65     rt_device_open..

802088b0 <__FUNCTION__.0>:
802088b0:	636f6c63 70635f6b 65735f75 73706f74     clock_cpu_setops
	...

802088c8 <__rti_riscv_cputime_init_name>:
802088c8:	63736972 70635f76 6d697475 6e695f65     riscv_cputime_in
802088d8:	00007469 00000000                       it......

802088e0 <_riscv_ops>:
802088e0:	80201b8e 80201b98 00000000 00000000     .. ... .........

802088f0 <__FUNCTION__.0>:
802088f0:	635f7472 6c706d6f 6f697465 61775f6e     rt_completion_wa
80208900:	7075656b 5f79625f 6e727265 0000006f     keup_by_errno...

80208910 <__FUNCTION__.1>:
80208910:	635f7472 6c706d6f 6f697465 61775f6e     rt_completion_wa
80208920:	665f7469 7367616c 00000000 00000000     it_flags........

80208930 <__FUNCTION__.2>:
80208930:	635f7472 6c706d6f 6f697465 6e695f6e     rt_completion_in
80208940:	00007469 00000000                       it......

80208948 <__FUNCTION__.0>:
80208948:	645f7472 5f617461 75657571 656c5f65     rt_data_queue_le
80208958:	0000006e 00000000                       n.......

80208960 <__FUNCTION__.1>:
80208960:	645f7472 5f617461 75657571 65645f65     rt_data_queue_de
80208970:	74696e69 00000000                       init....

80208978 <__FUNCTION__.2>:
80208978:	645f7472 5f617461 75657571 65725f65     rt_data_queue_re
80208988:	00746573 00000000                       set.....

80208990 <__FUNCTION__.3>:
80208990:	645f7472 5f617461 75657571 65705f65     rt_data_queue_pe
802089a0:	00006b65 00000000                       ek......

802089a8 <__FUNCTION__.4>:
802089a8:	645f7472 5f617461 75657571 6f705f65     rt_data_queue_po
802089b8:	00000070 00000000                       p.......

802089c0 <__FUNCTION__.5>:
802089c0:	645f7472 5f617461 75657571 75705f65     rt_data_queue_pu
802089d0:	00006873 00000000                       sh......

802089d8 <__FUNCTION__.6>:
802089d8:	645f7472 5f617461 75657571 6e695f65     rt_data_queue_in
802089e8:	00007469 ffff9d5e ffff9d42 ffff9d68     it..^...B...h...
802089f8:	ffff9dc8 ffff9da4 ffff9dc8 ffff9dc8     ................
80208a08:	ffff9dc8 ffff9db8                       ........

80208a10 <__FUNCTION__.0>:
80208a10:	645f7472 725f616d 5f766365 61647075     rt_dma_recv_upda
80208a20:	705f6574 695f7475 7865646e 00000000     te_put_index....

80208a30 <__FUNCTION__.2>:
80208a30:	685f7472 65735f77 6c616972 7273695f     rt_hw_serial_isr
	...

80208a48 <__FUNCTION__.3>:
80208a48:	735f7472 61697265 6e695f6c 00007469     rt_serial_init..

80208a58 <__FUNCTION__.4>:
80208a58:	735f7472 61697265 706f5f6c 00006e65     rt_serial_open..

80208a68 <__FUNCTION__.5>:
80208a68:	735f7472 61697265 6c635f6c 0065736f     rt_serial_close.

80208a78 <__FUNCTION__.7>:
80208a78:	645f7472 725f616d 5f766365 61647075     rt_dma_recv_upda
80208a88:	675f6574 695f7465 7865646e 00000000     te_get_index....

80208a98 <__FUNCTION__.8>:
80208a98:	7265735f 5f6c6169 6f666966 6c61635f     _serial_fifo_cal
80208aa8:	65725f63 64657663 6e656c5f 00000000     c_recved_len....

80208ab8 <__FUNCTION__.9>:
80208ab8:	7265735f 5f6c6169 5f616d64 00007872     _serial_dma_rx..

80208ac8 <__FUNCTION__.10>:
80208ac8:	7265735f 5f6c6169 5f746e69 00007872     _serial_int_rx..

80208ad8 <__FUNCTION__.11>:
80208ad8:	735f7472 61697265 65725f6c 00006461     rt_serial_read..

80208ae8 <__FUNCTION__.13>:
80208ae8:	7265735f 5f6c6169 5f746e69 00007874     _serial_int_tx..

80208af8 <__FUNCTION__.14>:
80208af8:	735f7472 61697265 72775f6c 00657469     rt_serial_write.

80208b08 <__FUNCTION__.15>:
80208b08:	735f7472 61697265 6f635f6c 6f72746e     rt_serial_contro
80208b18:	0000006c 00000000                       l.......

80208b20 <__FUNCTION__.16>:
80208b20:	685f7472 65735f77 6c616972 6765725f     rt_hw_serial_reg
80208b30:	65747369 00000072                       ister...

80208b38 <serial_ops>:
80208b38:	802027cc 80202824 80202f18 80202c42     .' .$( ../ .B, .
80208b48:	80202ade 802026e2                       .* ..& .

80208b50 <__FUNCTION__.0>:
80208b50:	745f7472 5f6b6369 72636e69 65736165     rt_tick_increase
	...

80208b68 <__FUNCTION__.0>:
80208b68:	615f7472 696c7070 69746163 695f6e6f     rt_application_i
80208b78:	0074696e 00000000                       nit.....

80208b80 <__rti_rti_board_end_name>:
80208b80:	5f697472 72616f62 6e655f64 00000064     rti_board_end...

80208b90 <__rti_rti_board_start_name>:
80208b90:	5f697472 72616f62 74735f64 00747261     rti_board_start.

80208ba0 <__rti_rti_start_name>:
80208ba0:	5f697472 72617473 00000074 00000000     rti_start.......

80208bb0 <__FUNCTION__.23>:
80208bb0:	6d5f7472 78657475 6c65725f 65736165     rt_mutex_release
	...

80208bc8 <__FUNCTION__.24>:
80208bc8:	5f74725f 6574756d 61745f78 0000656b     _rt_mutex_take..

80208bd8 <__FUNCTION__.31>:
80208bd8:	6d5f7472 78657475 696e695f 00000074     rt_mutex_init...

80208be8 <__FUNCTION__.33>:
80208be8:	735f7472 725f6d65 61656c65 00006573     rt_sem_release..

80208bf8 <__FUNCTION__.34>:
80208bf8:	5f74725f 5f6d6573 656b6174 00000000     _rt_sem_take....

80208c08 <__FUNCTION__.38>:
80208c08:	735f7472 695f6d65 0074696e 00000000     rt_sem_init.....

80208c18 <__FUNCTION__.39>:
80208c18:	735f7472 5f707375 7473696c 716e655f     rt_susp_list_enq
80208c28:	65756575 00000000                       ueue....

80208c30 <__FUNCTION__.40>:
80208c30:	735f7472 5f707375 7473696c 7165645f     rt_susp_list_deq
80208c40:	65756575 00000000 ffffbe18 ffffbb96     ueue............
80208c50:	ffffbb96 ffffbb96 ffffbb96 ffffbb96     ................
80208c60:	ffffbb96 ffffbb96 ffffbb96 ffffbb96     ................
80208c70:	ffffbc00 ffffbc26 ffffbe20 ffffbe28     ....&... ...(...
80208c80:	ffffbe28 ffffbe28 ffffbb96 ffffbe20     (...(....... ...
80208c90:	ffffbb96 ffffbb96 ffffbb96 ffffbb96     ................
80208ca0:	ffffbb96 ffffbe14 ffffbdea ffffbb96     ................
80208cb0:	ffffbb96 ffffbcf4 ffffbb96 ffffbe24     ............$...
80208cc0:	ffffbb96 ffffbb96 ffffbe1c 00000000     ................

80208cd0 <small_digits.0>:
80208cd0:	33323130 37363534 62613938 66656463     0123456789abcdef
	...

80208ce8 <large_digits.1>:
80208ce8:	33323130 37363534 42413938 46454443     0123456789ABCDEF
	...

80208d00 <__FUNCTION__.0>:
80208d00:	6165685f 6e755f70 6b636f6c 00000000     _heap_unlock....

80208d10 <__FUNCTION__.1>:
80208d10:	735f7472 65747379 65685f6d 695f7061     rt_system_heap_i
80208d20:	5f74696e 656e6567 00636972 00000000     nit_generic.....

80208d30 <__lowest_bit_bitmap>:
80208d30:	00010000 00010002 00010003 00010002     ................
80208d40:	00010004 00010002 00010003 00010002     ................
80208d50:	00010005 00010002 00010003 00010002     ................
80208d60:	00010004 00010002 00010003 00010002     ................
80208d70:	00010006 00010002 00010003 00010002     ................
80208d80:	00010004 00010002 00010003 00010002     ................
80208d90:	00010005 00010002 00010003 00010002     ................
80208da0:	00010004 00010002 00010003 00010002     ................
80208db0:	00010007 00010002 00010003 00010002     ................
80208dc0:	00010004 00010002 00010003 00010002     ................
80208dd0:	00010005 00010002 00010003 00010002     ................
80208de0:	00010004 00010002 00010003 00010002     ................
80208df0:	00010006 00010002 00010003 00010002     ................
80208e00:	00010004 00010002 00010003 00010002     ................
80208e10:	00010005 00010002 00010003 00010002     ................
80208e20:	00010004 00010002 00010003 00010002     ................

80208e30 <__FUNCTION__.0>:
80208e30:	6d656d5f 70616568 6c6c615f 0000636f     _memheap_alloc..

80208e40 <__FUNCTION__.1>:
80208e40:	6d5f7472 65686d65 665f7061 00656572     rt_memheap_free.

80208e50 <__FUNCTION__.3>:
80208e50:	6d5f7472 65686d65 615f7061 636f6c6c     rt_memheap_alloc
	...

80208e68 <__FUNCTION__.5>:
80208e68:	6d5f7472 65686d65 695f7061 0074696e     rt_memheap_init.

80208e78 <__FUNCTION__.2>:
80208e78:	6d5f7472 72635f70 65746165 00000000     rt_mp_create....

80208e88 <__FUNCTION__.0>:
80208e88:	6f5f7472 63656a62 69665f74 0000646e     rt_object_find..

80208e98 <__FUNCTION__.1>:
80208e98:	6f5f7472 63656a62 6f665f74 61655f72     rt_object_for_ea
80208ea8:	00006863 00000000                       ch......

80208eb0 <__FUNCTION__.2>:
80208eb0:	6f5f7472 63656a62 65675f74 79745f74     rt_object_get_ty
80208ec0:	00006570 00000000                       pe......

80208ec8 <__FUNCTION__.3>:
80208ec8:	6f5f7472 63656a62 73695f74 7379735f     rt_object_is_sys
80208ed8:	6f6d6574 63656a62 00000074 00000000     temobject.......

80208ee8 <__FUNCTION__.4>:
80208ee8:	6f5f7472 63656a62 65645f74 6574656c     rt_object_delete
	...

80208f00 <__FUNCTION__.5>:
80208f00:	6f5f7472 63656a62 6c615f74 61636f6c     rt_object_alloca
80208f10:	00006574 00000000                       te......

80208f18 <__FUNCTION__.6>:
80208f18:	6f5f7472 63656a62 65645f74 68636174     rt_object_detach
	...

80208f30 <__FUNCTION__.7>:
80208f30:	6f5f7472 63656a62 6e695f74 00007469     rt_object_init..

80208f40 <__FUNCTION__.0>:
80208f40:	735f7472 64656863 72656c75 6174735f     rt_scheduler_sta
80208f50:	635f6b63 6b636568 00000000 00000000     ck_check........

80208f60 <__FUNCTION__.1>:
80208f60:	735f7472 64656863 7268745f 5f646165     rt_sched_thread_
80208f70:	6e616863 705f6567 726f6972 00797469     change_priority.

80208f80 <__FUNCTION__.0>:
80208f80:	735f7472 64656863 6d65725f 5f65766f     rt_sched_remove_
80208f90:	65726874 00006461                       thread..

80208f98 <__FUNCTION__.1>:
80208f98:	735f7472 64656863 736e695f 5f747265     rt_sched_insert_
80208fa8:	65726874 00006461                       thread..

80208fb0 <__FUNCTION__.2>:
80208fb0:	735f7472 64656863 7268745f 5f646165     rt_sched_thread_
80208fc0:	74696e69 6972705f 00000076 00000000     init_priv.......

80208fd0 <__FUNCTION__.0>:
80208fd0:	735f7472 65747379 69735f6d 6c616e67     rt_system_signal
80208fe0:	696e695f 00000074                       _init...

80208fe8 <__FUNCTION__.0>:
80208fe8:	745f7472 61657268 65725f64 656d7573     rt_thread_resume
	...

80209000 <__FUNCTION__.1>:
80209000:	7268745f 5f646165 5f746573 70737573     _thread_set_susp
80209010:	5f646e65 74617473 00000065 00000000     end_state.......

80209020 <__FUNCTION__.2>:
80209020:	745f7472 61657268 75735f64 6e657073     rt_thread_suspen
80209030:	6f745f64 73696c5f 00000074 00000000     d_to_list.......

80209040 <__FUNCTION__.7>:
80209040:	745f7472 61657268 72635f64 65746165     rt_thread_create
	...

80209058 <__FUNCTION__.9>:
80209058:	745f7472 61657268 6c635f64 0065736f     rt_thread_close.

80209068 <__FUNCTION__.10>:
80209068:	745f7472 61657268 74735f64 75747261     rt_thread_startu
80209078:	00000070 00000000                       p.......

80209080 <__FUNCTION__.11>:
80209080:	7268745f 5f646165 656d6974 0074756f     _thread_timeout.

80209090 <__FUNCTION__.12>:
80209090:	745f7472 61657268 6e695f64 00007469     rt_thread_init..
802090a0:	ffffdd10 ffffdd0a ffffdd72 ffffdd7e     ........r...~...
802090b0:	ffffdd88 ffffdd9a ffffdd9e ffffdda2     ................
802090c0:	ffffdda6 ffffddaa                       ........

802090c8 <__FUNCTION__.0>:
802090c8:	745f7472 72656d69 6568635f 00006b63     rt_timer_check..

802090d8 <__FUNCTION__.1>:
802090d8:	745f7472 72656d69 6e6f635f 6c6f7274     rt_timer_control
	...

802090f0 <__FUNCTION__.2>:
802090f0:	745f7472 72656d69 6f74735f 00000070     rt_timer_stop...

80209100 <__FUNCTION__.4>:
80209100:	745f7472 72656d69 6174735f 00007472     rt_timer_start..

80209110 <__FUNCTION__.7>:
80209110:	745f7472 72656d69 7465645f 00686361     rt_timer_detach.

80209120 <__FUNCTION__.8>:
80209120:	745f7472 72656d69 696e695f 00000074     rt_timer_init...

80209130 <__rt_init_desc_rti_start>:
80209130:	80208ba0 80203494                       .. ..4 .

80209138 <__rt_init_desc_rti_board_start>:
80209138:	80208b90 8020349c                       .. ..4 .

80209140 <__rt_init_desc_ulog_init>:
80209140:	80208788 802005de                       .. ... .

80209148 <__rt_init_desc_riscv_cputime_init>:
80209148:	802088c8 80201b9e                       .. ... .

80209150 <__rt_init_desc_rti_board_end>:
80209150:	80208b80 802034a0                       .. ..4 .

80209158 <__rt_init_desc_ulog_console_backend_init>:
80209158:	802086d8 80200404                       .. ... .

80209160 <__rt_init_desc_rti_end>:
80209160:	802091a0 80203498                       .. ..4 .
