APP_CFLAGS=-DRTOS_PMSIS -I/home/siracusa/PULP/pulp-dsp/include  -O3 -g -DSKIP_PLL_INIT
riscv32-unknown-elf-objdump -Mmarch=rv32imcxgap9 -d /home/siracusa/PULP/pulp-sdk/tests/hello/BUILD/SIRACUSA/GCC_RISCV//test/test

/home/siracusa/PULP/pulp-sdk/tests/hello/BUILD/SIRACUSA/GCC_RISCV//test/test:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	08c0006f          	j	1c00808c <pos_illegal_instr>
1c008004:	08c0006f          	j	1c008090 <pos_no_irq_handler>
1c008008:	0880006f          	j	1c008090 <pos_no_irq_handler>
1c00800c:	0840006f          	j	1c008090 <pos_no_irq_handler>
1c008010:	0800006f          	j	1c008090 <pos_no_irq_handler>
1c008014:	07c0006f          	j	1c008090 <pos_no_irq_handler>
1c008018:	0780006f          	j	1c008090 <pos_no_irq_handler>
1c00801c:	0740006f          	j	1c008090 <pos_no_irq_handler>
1c008020:	0700006f          	j	1c008090 <pos_no_irq_handler>
1c008024:	06c0006f          	j	1c008090 <pos_no_irq_handler>
1c008028:	0680006f          	j	1c008090 <pos_no_irq_handler>
1c00802c:	0640006f          	j	1c008090 <pos_no_irq_handler>
1c008030:	0600006f          	j	1c008090 <pos_no_irq_handler>
1c008034:	05c0006f          	j	1c008090 <pos_no_irq_handler>
1c008038:	0580006f          	j	1c008090 <pos_no_irq_handler>
1c00803c:	0540006f          	j	1c008090 <pos_no_irq_handler>
1c008040:	0500006f          	j	1c008090 <pos_no_irq_handler>
1c008044:	04c0006f          	j	1c008090 <pos_no_irq_handler>
1c008048:	0480006f          	j	1c008090 <pos_no_irq_handler>
1c00804c:	0440006f          	j	1c008090 <pos_no_irq_handler>
1c008050:	0400006f          	j	1c008090 <pos_no_irq_handler>
1c008054:	03c0006f          	j	1c008090 <pos_no_irq_handler>
1c008058:	0380006f          	j	1c008090 <pos_no_irq_handler>
1c00805c:	0340006f          	j	1c008090 <pos_no_irq_handler>
1c008060:	0300006f          	j	1c008090 <pos_no_irq_handler>
1c008064:	02c0006f          	j	1c008090 <pos_no_irq_handler>
1c008068:	0280006f          	j	1c008090 <pos_no_irq_handler>
1c00806c:	0240006f          	j	1c008090 <pos_no_irq_handler>
1c008070:	0200006f          	j	1c008090 <pos_no_irq_handler>
1c008074:	01c0006f          	j	1c008090 <pos_no_irq_handler>
1c008078:	0180006f          	j	1c008090 <pos_no_irq_handler>
1c00807c:	0140006f          	j	1c008090 <pos_no_irq_handler>

1c008080 <_start>:
1c008080:	00003517          	auipc	a0,0x3
1c008084:	1a050513          	addi	a0,a0,416 # 1c00b220 <pos_init_entry>
1c008088:	00050067          	jr	a0

1c00808c <pos_illegal_instr>:
1c00808c:	0000006f          	j	1c00808c <pos_illegal_instr>

1c008090 <pos_no_irq_handler>:
1c008090:	30200073          	mret

1c008094 <pos_semihosting_call>:
1c008094:	00100073          	ebreak
1c008098:	00008067          	ret

Disassembly of section .text:

1c00809c <__udivdi3>:
1c00809c:	87b2                	mv	a5,a2
1c00809e:	8736                	mv	a4,a3
1c0080a0:	88aa                	mv	a7,a0
1c0080a2:	882e                	mv	a6,a1
1c0080a4:	1e069d63          	bnez	a3,1c00829e <__udivdi3+0x202>
1c0080a8:	1c001337          	lui	t1,0x1c001
1c0080ac:	86830313          	addi	t1,t1,-1944 # 1c000868 <__DTOR_END__>
1c0080b0:	0ac5fd63          	bleu	a2,a1,1c00816a <__udivdi3+0xce>
1c0080b4:	6741                	lui	a4,0x10
1c0080b6:	0ae67363          	bleu	a4,a2,1c00815c <__udivdi3+0xc0>
1c0080ba:	0ff00693          	li	a3,255
1c0080be:	00c6b6b3          	sltu	a3,a3,a2
1c0080c2:	068e                	slli	a3,a3,0x3
1c0080c4:	00d65733          	srl	a4,a2,a3
1c0080c8:	933a                	add	t1,t1,a4
1c0080ca:	00034703          	lbu	a4,0(t1)
1c0080ce:	02000313          	li	t1,32
1c0080d2:	96ba                	add	a3,a3,a4
1c0080d4:	40d30333          	sub	t1,t1,a3
1c0080d8:	00030c63          	beqz	t1,1c0080f0 <__udivdi3+0x54>
1c0080dc:	00659733          	sll	a4,a1,t1
1c0080e0:	00d556b3          	srl	a3,a0,a3
1c0080e4:	006617b3          	sll	a5,a2,t1
1c0080e8:	00e6e833          	or	a6,a3,a4
1c0080ec:	006518b3          	sll	a7,a0,t1
1c0080f0:	0107d513          	srli	a0,a5,0x10
1c0080f4:	02a87633          	remu	a2,a6,a0
1c0080f8:	02a85733          	divu	a4,a6,a0
1c0080fc:	0642                	slli	a2,a2,0x10
1c0080fe:	1007d5b3          	p.exthz	a1,a5
1c008102:	0108d693          	srli	a3,a7,0x10
1c008106:	8ed1                	or	a3,a3,a2
1c008108:	02e58833          	mul	a6,a1,a4
1c00810c:	863a                	mv	a2,a4
1c00810e:	0106fc63          	bleu	a6,a3,1c008126 <__udivdi3+0x8a>
1c008112:	96be                	add	a3,a3,a5
1c008114:	fff70613          	addi	a2,a4,-1 # ffff <pos_soc_event_callback+0xfbbb>
1c008118:	00f6e763          	bltu	a3,a5,1c008126 <__udivdi3+0x8a>
1c00811c:	0106f563          	bleu	a6,a3,1c008126 <__udivdi3+0x8a>
1c008120:	ffe70613          	addi	a2,a4,-2
1c008124:	96be                	add	a3,a3,a5
1c008126:	410686b3          	sub	a3,a3,a6
1c00812a:	02a6f833          	remu	a6,a3,a0
1c00812e:	02a6d6b3          	divu	a3,a3,a0
1c008132:	df0828b3          	p.insert	a7,a6,15,16
1c008136:	02d58733          	mul	a4,a1,a3
1c00813a:	8536                	mv	a0,a3
1c00813c:	00e8fb63          	bleu	a4,a7,1c008152 <__udivdi3+0xb6>
1c008140:	98be                	add	a7,a7,a5
1c008142:	fff68513          	addi	a0,a3,-1
1c008146:	00f8e663          	bltu	a7,a5,1c008152 <__udivdi3+0xb6>
1c00814a:	00e8f463          	bleu	a4,a7,1c008152 <__udivdi3+0xb6>
1c00814e:	ffe68513          	addi	a0,a3,-2
1c008152:	01061793          	slli	a5,a2,0x10
1c008156:	8fc9                	or	a5,a5,a0
1c008158:	4801                	li	a6,0
1c00815a:	a06d                	j	1c008204 <__udivdi3+0x168>
1c00815c:	01000737          	lui	a4,0x1000
1c008160:	46c1                	li	a3,16
1c008162:	f6e661e3          	bltu	a2,a4,1c0080c4 <__udivdi3+0x28>
1c008166:	46e1                	li	a3,24
1c008168:	bfb1                	j	1c0080c4 <__udivdi3+0x28>
1c00816a:	e601                	bnez	a2,1c008172 <__udivdi3+0xd6>
1c00816c:	4685                	li	a3,1
1c00816e:	02c6d7b3          	divu	a5,a3,a2
1c008172:	66c1                	lui	a3,0x10
1c008174:	08d7fb63          	bleu	a3,a5,1c00820a <__udivdi3+0x16e>
1c008178:	0ff00693          	li	a3,255
1c00817c:	00f6f363          	bleu	a5,a3,1c008182 <__udivdi3+0xe6>
1c008180:	4721                	li	a4,8
1c008182:	00e7d6b3          	srl	a3,a5,a4
1c008186:	9336                	add	t1,t1,a3
1c008188:	00034683          	lbu	a3,0(t1)
1c00818c:	02000613          	li	a2,32
1c008190:	96ba                	add	a3,a3,a4
1c008192:	8e15                	sub	a2,a2,a3
1c008194:	e251                	bnez	a2,1c008218 <__udivdi3+0x17c>
1c008196:	40f58733          	sub	a4,a1,a5
1c00819a:	4805                	li	a6,1
1c00819c:	0107d513          	srli	a0,a5,0x10
1c0081a0:	02a77633          	remu	a2,a4,a0
1c0081a4:	02a75733          	divu	a4,a4,a0
1c0081a8:	0642                	slli	a2,a2,0x10
1c0081aa:	1007d5b3          	p.exthz	a1,a5
1c0081ae:	0108d693          	srli	a3,a7,0x10
1c0081b2:	8ed1                	or	a3,a3,a2
1c0081b4:	02e58333          	mul	t1,a1,a4
1c0081b8:	863a                	mv	a2,a4
1c0081ba:	0066fc63          	bleu	t1,a3,1c0081d2 <__udivdi3+0x136>
1c0081be:	96be                	add	a3,a3,a5
1c0081c0:	fff70613          	addi	a2,a4,-1 # ffffff <__l1_heap_size+0xfc0027>
1c0081c4:	00f6e763          	bltu	a3,a5,1c0081d2 <__udivdi3+0x136>
1c0081c8:	0066f563          	bleu	t1,a3,1c0081d2 <__udivdi3+0x136>
1c0081cc:	ffe70613          	addi	a2,a4,-2
1c0081d0:	96be                	add	a3,a3,a5
1c0081d2:	406686b3          	sub	a3,a3,t1
1c0081d6:	02a6f333          	remu	t1,a3,a0
1c0081da:	02a6d6b3          	divu	a3,a3,a0
1c0081de:	df0328b3          	p.insert	a7,t1,15,16
1c0081e2:	02d58733          	mul	a4,a1,a3
1c0081e6:	8536                	mv	a0,a3
1c0081e8:	00e8fb63          	bleu	a4,a7,1c0081fe <__udivdi3+0x162>
1c0081ec:	98be                	add	a7,a7,a5
1c0081ee:	fff68513          	addi	a0,a3,-1 # ffff <pos_soc_event_callback+0xfbbb>
1c0081f2:	00f8e663          	bltu	a7,a5,1c0081fe <__udivdi3+0x162>
1c0081f6:	00e8f463          	bleu	a4,a7,1c0081fe <__udivdi3+0x162>
1c0081fa:	ffe68513          	addi	a0,a3,-2
1c0081fe:	01061793          	slli	a5,a2,0x10
1c008202:	8fc9                	or	a5,a5,a0
1c008204:	853e                	mv	a0,a5
1c008206:	85c2                	mv	a1,a6
1c008208:	8082                	ret
1c00820a:	010006b7          	lui	a3,0x1000
1c00820e:	4741                	li	a4,16
1c008210:	f6d7e9e3          	bltu	a5,a3,1c008182 <__udivdi3+0xe6>
1c008214:	4761                	li	a4,24
1c008216:	b7b5                	j	1c008182 <__udivdi3+0xe6>
1c008218:	00c797b3          	sll	a5,a5,a2
1c00821c:	00d5d333          	srl	t1,a1,a3
1c008220:	0107de13          	srli	t3,a5,0x10
1c008224:	00c59733          	sll	a4,a1,a2
1c008228:	00c518b3          	sll	a7,a0,a2
1c00822c:	03c37633          	remu	a2,t1,t3
1c008230:	00d555b3          	srl	a1,a0,a3
1c008234:	03c35533          	divu	a0,t1,t3
1c008238:	8dd9                	or	a1,a1,a4
1c00823a:	0642                	slli	a2,a2,0x10
1c00823c:	1007d733          	p.exthz	a4,a5
1c008240:	0105d693          	srli	a3,a1,0x10
1c008244:	02a70333          	mul	t1,a4,a0
1c008248:	8ed1                	or	a3,a3,a2
1c00824a:	882a                	mv	a6,a0
1c00824c:	0066fc63          	bleu	t1,a3,1c008264 <__udivdi3+0x1c8>
1c008250:	96be                	add	a3,a3,a5
1c008252:	fff50813          	addi	a6,a0,-1
1c008256:	00f6e763          	bltu	a3,a5,1c008264 <__udivdi3+0x1c8>
1c00825a:	0066f563          	bleu	t1,a3,1c008264 <__udivdi3+0x1c8>
1c00825e:	ffe50813          	addi	a6,a0,-2
1c008262:	96be                	add	a3,a3,a5
1c008264:	406686b3          	sub	a3,a3,t1
1c008268:	03c6f633          	remu	a2,a3,t3
1c00826c:	03c6d6b3          	divu	a3,a3,t3
1c008270:	df0625b3          	p.insert	a1,a2,15,16
1c008274:	02d70733          	mul	a4,a4,a3
1c008278:	8636                	mv	a2,a3
1c00827a:	00e5fc63          	bleu	a4,a1,1c008292 <__udivdi3+0x1f6>
1c00827e:	95be                	add	a1,a1,a5
1c008280:	fff68613          	addi	a2,a3,-1 # ffffff <__l1_heap_size+0xfc0027>
1c008284:	00f5e763          	bltu	a1,a5,1c008292 <__udivdi3+0x1f6>
1c008288:	00e5f563          	bleu	a4,a1,1c008292 <__udivdi3+0x1f6>
1c00828c:	ffe68613          	addi	a2,a3,-2
1c008290:	95be                	add	a1,a1,a5
1c008292:	0842                	slli	a6,a6,0x10
1c008294:	40e58733          	sub	a4,a1,a4
1c008298:	00c86833          	or	a6,a6,a2
1c00829c:	b701                	j	1c00819c <__udivdi3+0x100>
1c00829e:	12d5ea63          	bltu	a1,a3,1c0083d2 <__udivdi3+0x336>
1c0082a2:	67c1                	lui	a5,0x10
1c0082a4:	02f6fd63          	bleu	a5,a3,1c0082de <__udivdi3+0x242>
1c0082a8:	0ff00793          	li	a5,255
1c0082ac:	00d7b8b3          	sltu	a7,a5,a3
1c0082b0:	088e                	slli	a7,a7,0x3
1c0082b2:	1c001737          	lui	a4,0x1c001
1c0082b6:	0116d7b3          	srl	a5,a3,a7
1c0082ba:	86870713          	addi	a4,a4,-1944 # 1c000868 <__DTOR_END__>
1c0082be:	97ba                	add	a5,a5,a4
1c0082c0:	0007c783          	lbu	a5,0(a5) # 10000 <pos_soc_event_callback+0xfbbc>
1c0082c4:	02000813          	li	a6,32
1c0082c8:	97c6                	add	a5,a5,a7
1c0082ca:	40f80833          	sub	a6,a6,a5
1c0082ce:	00081f63          	bnez	a6,1c0082ec <__udivdi3+0x250>
1c0082d2:	4785                	li	a5,1
1c0082d4:	f2b6e8e3          	bltu	a3,a1,1c008204 <__udivdi3+0x168>
1c0082d8:	04a637b3          	p.sletu	a5,a2,a0
1c0082dc:	b725                	j	1c008204 <__udivdi3+0x168>
1c0082de:	010007b7          	lui	a5,0x1000
1c0082e2:	48c1                	li	a7,16
1c0082e4:	fcf6e7e3          	bltu	a3,a5,1c0082b2 <__udivdi3+0x216>
1c0082e8:	48e1                	li	a7,24
1c0082ea:	b7e1                	j	1c0082b2 <__udivdi3+0x216>
1c0082ec:	00f658b3          	srl	a7,a2,a5
1c0082f0:	010696b3          	sll	a3,a3,a6
1c0082f4:	00d8e6b3          	or	a3,a7,a3
1c0082f8:	00f5d333          	srl	t1,a1,a5
1c0082fc:	0106de13          	srli	t3,a3,0x10
1c008300:	00f55733          	srl	a4,a0,a5
1c008304:	03c377b3          	remu	a5,t1,t3
1c008308:	010595b3          	sll	a1,a1,a6
1c00830c:	03c35333          	divu	t1,t1,t3
1c008310:	8f4d                	or	a4,a4,a1
1c008312:	07c2                	slli	a5,a5,0x10
1c008314:	1006d8b3          	p.exthz	a7,a3
1c008318:	01075593          	srli	a1,a4,0x10
1c00831c:	8ddd                	or	a1,a1,a5
1c00831e:	02688eb3          	mul	t4,a7,t1
1c008322:	01061633          	sll	a2,a2,a6
1c008326:	879a                	mv	a5,t1
1c008328:	01d5fc63          	bleu	t4,a1,1c008340 <__udivdi3+0x2a4>
1c00832c:	95b6                	add	a1,a1,a3
1c00832e:	fff30793          	addi	a5,t1,-1
1c008332:	00d5e763          	bltu	a1,a3,1c008340 <__udivdi3+0x2a4>
1c008336:	01d5f563          	bleu	t4,a1,1c008340 <__udivdi3+0x2a4>
1c00833a:	ffe30793          	addi	a5,t1,-2
1c00833e:	95b6                	add	a1,a1,a3
1c008340:	41d585b3          	sub	a1,a1,t4
1c008344:	03c5f333          	remu	t1,a1,t3
1c008348:	03c5d5b3          	divu	a1,a1,t3
1c00834c:	df032733          	p.insert	a4,t1,15,16
1c008350:	02b888b3          	mul	a7,a7,a1
1c008354:	832e                	mv	t1,a1
1c008356:	01177c63          	bleu	a7,a4,1c00836e <__udivdi3+0x2d2>
1c00835a:	9736                	add	a4,a4,a3
1c00835c:	fff58313          	addi	t1,a1,-1
1c008360:	00d76763          	bltu	a4,a3,1c00836e <__udivdi3+0x2d2>
1c008364:	01177563          	bleu	a7,a4,1c00836e <__udivdi3+0x2d2>
1c008368:	ffe58313          	addi	t1,a1,-2
1c00836c:	9736                	add	a4,a4,a3
1c00836e:	07c2                	slli	a5,a5,0x10
1c008370:	6e41                	lui	t3,0x10
1c008372:	0067e7b3          	or	a5,a5,t1
1c008376:	fffe0593          	addi	a1,t3,-1 # ffff <pos_soc_event_callback+0xfbbb>
1c00837a:	00b7f6b3          	and	a3,a5,a1
1c00837e:	41170733          	sub	a4,a4,a7
1c008382:	8df1                	and	a1,a1,a2
1c008384:	0107d893          	srli	a7,a5,0x10
1c008388:	02b68333          	mul	t1,a3,a1
1c00838c:	02b885b3          	mul	a1,a7,a1
1c008390:	8241                	srli	a2,a2,0x10
1c008392:	8eae                	mv	t4,a1
1c008394:	42c68eb3          	p.mac	t4,a3,a2
1c008398:	01035693          	srli	a3,t1,0x10
1c00839c:	96f6                	add	a3,a3,t4
1c00839e:	02c888b3          	mul	a7,a7,a2
1c0083a2:	00b6f363          	bleu	a1,a3,1c0083a8 <__udivdi3+0x30c>
1c0083a6:	98f2                	add	a7,a7,t3
1c0083a8:	0106d613          	srli	a2,a3,0x10
1c0083ac:	98b2                	add	a7,a7,a2
1c0083ae:	03176063          	bltu	a4,a7,1c0083ce <__udivdi3+0x332>
1c0083b2:	db1713e3          	bne	a4,a7,1c008158 <__udivdi3+0xbc>
1c0083b6:	6741                	lui	a4,0x10
1c0083b8:	177d                	addi	a4,a4,-1
1c0083ba:	8ef9                	and	a3,a3,a4
1c0083bc:	06c2                	slli	a3,a3,0x10
1c0083be:	00e37333          	and	t1,t1,a4
1c0083c2:	01051533          	sll	a0,a0,a6
1c0083c6:	969a                	add	a3,a3,t1
1c0083c8:	4801                	li	a6,0
1c0083ca:	e2d57de3          	bleu	a3,a0,1c008204 <__udivdi3+0x168>
1c0083ce:	17fd                	addi	a5,a5,-1
1c0083d0:	b361                	j	1c008158 <__udivdi3+0xbc>
1c0083d2:	4801                	li	a6,0
1c0083d4:	4781                	li	a5,0
1c0083d6:	b53d                	j	1c008204 <__udivdi3+0x168>

1c0083d8 <__umoddi3>:
1c0083d8:	88b2                	mv	a7,a2
1c0083da:	8736                	mv	a4,a3
1c0083dc:	87aa                	mv	a5,a0
1c0083de:	882e                	mv	a6,a1
1c0083e0:	1a069963          	bnez	a3,1c008592 <__umoddi3+0x1ba>
1c0083e4:	1c0016b7          	lui	a3,0x1c001
1c0083e8:	86868693          	addi	a3,a3,-1944 # 1c000868 <__DTOR_END__>
1c0083ec:	0ac5f463          	bleu	a2,a1,1c008494 <__umoddi3+0xbc>
1c0083f0:	6341                	lui	t1,0x10
1c0083f2:	08667a63          	bleu	t1,a2,1c008486 <__umoddi3+0xae>
1c0083f6:	0ff00313          	li	t1,255
1c0083fa:	00c37363          	bleu	a2,t1,1c008400 <__umoddi3+0x28>
1c0083fe:	4721                	li	a4,8
1c008400:	00e65333          	srl	t1,a2,a4
1c008404:	969a                	add	a3,a3,t1
1c008406:	0006c683          	lbu	a3,0(a3)
1c00840a:	02000313          	li	t1,32
1c00840e:	9736                	add	a4,a4,a3
1c008410:	40e30333          	sub	t1,t1,a4
1c008414:	00030c63          	beqz	t1,1c00842c <__umoddi3+0x54>
1c008418:	006595b3          	sll	a1,a1,t1
1c00841c:	00e55733          	srl	a4,a0,a4
1c008420:	006618b3          	sll	a7,a2,t1
1c008424:	00b76833          	or	a6,a4,a1
1c008428:	006517b3          	sll	a5,a0,t1
1c00842c:	0108d613          	srli	a2,a7,0x10
1c008430:	02c87733          	remu	a4,a6,a2
1c008434:	02c85833          	divu	a6,a6,a2
1c008438:	1008d533          	p.exthz	a0,a7
1c00843c:	0742                	slli	a4,a4,0x10
1c00843e:	0107d693          	srli	a3,a5,0x10
1c008442:	03050833          	mul	a6,a0,a6
1c008446:	8ed9                	or	a3,a3,a4
1c008448:	0106f863          	bleu	a6,a3,1c008458 <__umoddi3+0x80>
1c00844c:	96c6                	add	a3,a3,a7
1c00844e:	0116e563          	bltu	a3,a7,1c008458 <__umoddi3+0x80>
1c008452:	0106f363          	bleu	a6,a3,1c008458 <__umoddi3+0x80>
1c008456:	96c6                	add	a3,a3,a7
1c008458:	410686b3          	sub	a3,a3,a6
1c00845c:	02c6f733          	remu	a4,a3,a2
1c008460:	02c6d6b3          	divu	a3,a3,a2
1c008464:	df0727b3          	p.insert	a5,a4,15,16
1c008468:	02d506b3          	mul	a3,a0,a3
1c00846c:	00d7f863          	bleu	a3,a5,1c00847c <__umoddi3+0xa4>
1c008470:	97c6                	add	a5,a5,a7
1c008472:	0117e563          	bltu	a5,a7,1c00847c <__umoddi3+0xa4>
1c008476:	00d7f363          	bleu	a3,a5,1c00847c <__umoddi3+0xa4>
1c00847a:	97c6                	add	a5,a5,a7
1c00847c:	8f95                	sub	a5,a5,a3
1c00847e:	0067d533          	srl	a0,a5,t1
1c008482:	4581                	li	a1,0
1c008484:	8082                	ret
1c008486:	01000337          	lui	t1,0x1000
1c00848a:	4741                	li	a4,16
1c00848c:	f6666ae3          	bltu	a2,t1,1c008400 <__umoddi3+0x28>
1c008490:	4761                	li	a4,24
1c008492:	b7bd                	j	1c008400 <__umoddi3+0x28>
1c008494:	e601                	bnez	a2,1c00849c <__umoddi3+0xc4>
1c008496:	4605                	li	a2,1
1c008498:	031658b3          	divu	a7,a2,a7
1c00849c:	6641                	lui	a2,0x10
1c00849e:	06c8ff63          	bleu	a2,a7,1c00851c <__umoddi3+0x144>
1c0084a2:	0ff00613          	li	a2,255
1c0084a6:	01167363          	bleu	a7,a2,1c0084ac <__umoddi3+0xd4>
1c0084aa:	4721                	li	a4,8
1c0084ac:	00e8d633          	srl	a2,a7,a4
1c0084b0:	96b2                	add	a3,a3,a2
1c0084b2:	0006c603          	lbu	a2,0(a3)
1c0084b6:	02000313          	li	t1,32
1c0084ba:	963a                	add	a2,a2,a4
1c0084bc:	40c30333          	sub	t1,t1,a2
1c0084c0:	06031563          	bnez	t1,1c00852a <__umoddi3+0x152>
1c0084c4:	411585b3          	sub	a1,a1,a7
1c0084c8:	0108d713          	srli	a4,a7,0x10
1c0084cc:	02e5f6b3          	remu	a3,a1,a4
1c0084d0:	02e5d5b3          	divu	a1,a1,a4
1c0084d4:	1008d533          	p.exthz	a0,a7
1c0084d8:	06c2                	slli	a3,a3,0x10
1c0084da:	0107d613          	srli	a2,a5,0x10
1c0084de:	02b505b3          	mul	a1,a0,a1
1c0084e2:	8ed1                	or	a3,a3,a2
1c0084e4:	00b6f863          	bleu	a1,a3,1c0084f4 <__umoddi3+0x11c>
1c0084e8:	96c6                	add	a3,a3,a7
1c0084ea:	0116e563          	bltu	a3,a7,1c0084f4 <__umoddi3+0x11c>
1c0084ee:	00b6f363          	bleu	a1,a3,1c0084f4 <__umoddi3+0x11c>
1c0084f2:	96c6                	add	a3,a3,a7
1c0084f4:	40b685b3          	sub	a1,a3,a1
1c0084f8:	02e5f6b3          	remu	a3,a1,a4
1c0084fc:	02e5d5b3          	divu	a1,a1,a4
1c008500:	df06a7b3          	p.insert	a5,a3,15,16
1c008504:	02b505b3          	mul	a1,a0,a1
1c008508:	00b7f863          	bleu	a1,a5,1c008518 <__umoddi3+0x140>
1c00850c:	97c6                	add	a5,a5,a7
1c00850e:	0117e563          	bltu	a5,a7,1c008518 <__umoddi3+0x140>
1c008512:	00b7f363          	bleu	a1,a5,1c008518 <__umoddi3+0x140>
1c008516:	97c6                	add	a5,a5,a7
1c008518:	8f8d                	sub	a5,a5,a1
1c00851a:	b795                	j	1c00847e <__umoddi3+0xa6>
1c00851c:	01000637          	lui	a2,0x1000
1c008520:	4741                	li	a4,16
1c008522:	f8c8e5e3          	bltu	a7,a2,1c0084ac <__umoddi3+0xd4>
1c008526:	4761                	li	a4,24
1c008528:	b751                	j	1c0084ac <__umoddi3+0xd4>
1c00852a:	006898b3          	sll	a7,a7,t1
1c00852e:	00c5d733          	srl	a4,a1,a2
1c008532:	006517b3          	sll	a5,a0,t1
1c008536:	00c55633          	srl	a2,a0,a2
1c00853a:	006595b3          	sll	a1,a1,t1
1c00853e:	0108d513          	srli	a0,a7,0x10
1c008542:	8dd1                	or	a1,a1,a2
1c008544:	02a77633          	remu	a2,a4,a0
1c008548:	02a75733          	divu	a4,a4,a0
1c00854c:	1008d833          	p.exthz	a6,a7
1c008550:	0642                	slli	a2,a2,0x10
1c008552:	0105d693          	srli	a3,a1,0x10
1c008556:	02e80733          	mul	a4,a6,a4
1c00855a:	8ed1                	or	a3,a3,a2
1c00855c:	00e6f863          	bleu	a4,a3,1c00856c <__umoddi3+0x194>
1c008560:	96c6                	add	a3,a3,a7
1c008562:	0116e563          	bltu	a3,a7,1c00856c <__umoddi3+0x194>
1c008566:	00e6f363          	bleu	a4,a3,1c00856c <__umoddi3+0x194>
1c00856a:	96c6                	add	a3,a3,a7
1c00856c:	8e99                	sub	a3,a3,a4
1c00856e:	02a6f733          	remu	a4,a3,a0
1c008572:	02a6d6b3          	divu	a3,a3,a0
1c008576:	df0725b3          	p.insert	a1,a4,15,16
1c00857a:	02d806b3          	mul	a3,a6,a3
1c00857e:	00d5f863          	bleu	a3,a1,1c00858e <__umoddi3+0x1b6>
1c008582:	95c6                	add	a1,a1,a7
1c008584:	0115e563          	bltu	a1,a7,1c00858e <__umoddi3+0x1b6>
1c008588:	00d5f363          	bleu	a3,a1,1c00858e <__umoddi3+0x1b6>
1c00858c:	95c6                	add	a1,a1,a7
1c00858e:	8d95                	sub	a1,a1,a3
1c008590:	bf25                	j	1c0084c8 <__umoddi3+0xf0>
1c008592:	eed5e9e3          	bltu	a1,a3,1c008484 <__umoddi3+0xac>
1c008596:	6741                	lui	a4,0x10
1c008598:	04e6f563          	bleu	a4,a3,1c0085e2 <__umoddi3+0x20a>
1c00859c:	0ff00e93          	li	t4,255
1c0085a0:	00deb733          	sltu	a4,t4,a3
1c0085a4:	070e                	slli	a4,a4,0x3
1c0085a6:	1c001337          	lui	t1,0x1c001
1c0085aa:	00e6d8b3          	srl	a7,a3,a4
1c0085ae:	86830313          	addi	t1,t1,-1944 # 1c000868 <__DTOR_END__>
1c0085b2:	989a                	add	a7,a7,t1
1c0085b4:	0008ce83          	lbu	t4,0(a7)
1c0085b8:	02000e13          	li	t3,32
1c0085bc:	9eba                	add	t4,t4,a4
1c0085be:	41de0e33          	sub	t3,t3,t4
1c0085c2:	020e1763          	bnez	t3,1c0085f0 <__umoddi3+0x218>
1c0085c6:	00b6e463          	bltu	a3,a1,1c0085ce <__umoddi3+0x1f6>
1c0085ca:	00c56963          	bltu	a0,a2,1c0085dc <__umoddi3+0x204>
1c0085ce:	40c507b3          	sub	a5,a0,a2
1c0085d2:	8d95                	sub	a1,a1,a3
1c0085d4:	00f53533          	sltu	a0,a0,a5
1c0085d8:	40a58833          	sub	a6,a1,a0
1c0085dc:	853e                	mv	a0,a5
1c0085de:	85c2                	mv	a1,a6
1c0085e0:	b555                	j	1c008484 <__umoddi3+0xac>
1c0085e2:	010008b7          	lui	a7,0x1000
1c0085e6:	4741                	li	a4,16
1c0085e8:	fb16efe3          	bltu	a3,a7,1c0085a6 <__umoddi3+0x1ce>
1c0085ec:	4761                	li	a4,24
1c0085ee:	bf65                	j	1c0085a6 <__umoddi3+0x1ce>
1c0085f0:	01d65733          	srl	a4,a2,t4
1c0085f4:	01c696b3          	sll	a3,a3,t3
1c0085f8:	8ed9                	or	a3,a3,a4
1c0085fa:	01d5d7b3          	srl	a5,a1,t4
1c0085fe:	0106d813          	srli	a6,a3,0x10
1c008602:	0307f333          	remu	t1,a5,a6
1c008606:	01d558b3          	srl	a7,a0,t4
1c00860a:	0307d7b3          	divu	a5,a5,a6
1c00860e:	01c595b3          	sll	a1,a1,t3
1c008612:	00b8e5b3          	or	a1,a7,a1
1c008616:	0342                	slli	t1,t1,0x10
1c008618:	1006d733          	p.exthz	a4,a3
1c00861c:	0105d893          	srli	a7,a1,0x10
1c008620:	011368b3          	or	a7,t1,a7
1c008624:	02f70f33          	mul	t5,a4,a5
1c008628:	01c61633          	sll	a2,a2,t3
1c00862c:	01c51533          	sll	a0,a0,t3
1c008630:	833e                	mv	t1,a5
1c008632:	01e8fc63          	bleu	t5,a7,1c00864a <__umoddi3+0x272>
1c008636:	98b6                	add	a7,a7,a3
1c008638:	fff78313          	addi	t1,a5,-1 # ffffff <__l1_heap_size+0xfc0027>
1c00863c:	00d8e763          	bltu	a7,a3,1c00864a <__umoddi3+0x272>
1c008640:	01e8f563          	bleu	t5,a7,1c00864a <__umoddi3+0x272>
1c008644:	ffe78313          	addi	t1,a5,-2
1c008648:	98b6                	add	a7,a7,a3
1c00864a:	41e888b3          	sub	a7,a7,t5
1c00864e:	0308f7b3          	remu	a5,a7,a6
1c008652:	0308d8b3          	divu	a7,a7,a6
1c008656:	df07a5b3          	p.insert	a1,a5,15,16
1c00865a:	03170733          	mul	a4,a4,a7
1c00865e:	87c6                	mv	a5,a7
1c008660:	00e5fc63          	bleu	a4,a1,1c008678 <__umoddi3+0x2a0>
1c008664:	95b6                	add	a1,a1,a3
1c008666:	fff88793          	addi	a5,a7,-1 # ffffff <__l1_heap_size+0xfc0027>
1c00866a:	00d5e763          	bltu	a1,a3,1c008678 <__umoddi3+0x2a0>
1c00866e:	00e5f563          	bleu	a4,a1,1c008678 <__umoddi3+0x2a0>
1c008672:	ffe88793          	addi	a5,a7,-2
1c008676:	95b6                	add	a1,a1,a3
1c008678:	0342                	slli	t1,t1,0x10
1c00867a:	6f41                	lui	t5,0x10
1c00867c:	00f36333          	or	t1,t1,a5
1c008680:	ffff0793          	addi	a5,t5,-1 # ffff <pos_soc_event_callback+0xfbbb>
1c008684:	00f37833          	and	a6,t1,a5
1c008688:	01035313          	srli	t1,t1,0x10
1c00868c:	8ff1                	and	a5,a5,a2
1c00868e:	02f808b3          	mul	a7,a6,a5
1c008692:	02f307b3          	mul	a5,t1,a5
1c008696:	8d99                	sub	a1,a1,a4
1c008698:	8fbe                	mv	t6,a5
1c00869a:	01065713          	srli	a4,a2,0x10
1c00869e:	42e80fb3          	p.mac	t6,a6,a4
1c0086a2:	0108d813          	srli	a6,a7,0x10
1c0086a6:	987e                	add	a6,a6,t6
1c0086a8:	02e30333          	mul	t1,t1,a4
1c0086ac:	00f87363          	bleu	a5,a6,1c0086b2 <__umoddi3+0x2da>
1c0086b0:	937a                	add	t1,t1,t5
1c0086b2:	01085713          	srli	a4,a6,0x10
1c0086b6:	933a                	add	t1,t1,a4
1c0086b8:	6741                	lui	a4,0x10
1c0086ba:	177d                	addi	a4,a4,-1
1c0086bc:	00e87833          	and	a6,a6,a4
1c0086c0:	0842                	slli	a6,a6,0x10
1c0086c2:	00e8f733          	and	a4,a7,a4
1c0086c6:	9742                	add	a4,a4,a6
1c0086c8:	0065e663          	bltu	a1,t1,1c0086d4 <__umoddi3+0x2fc>
1c0086cc:	00659d63          	bne	a1,t1,1c0086e6 <__umoddi3+0x30e>
1c0086d0:	00e57b63          	bleu	a4,a0,1c0086e6 <__umoddi3+0x30e>
1c0086d4:	40c70633          	sub	a2,a4,a2
1c0086d8:	00c73733          	sltu	a4,a4,a2
1c0086dc:	40d30333          	sub	t1,t1,a3
1c0086e0:	40e30333          	sub	t1,t1,a4
1c0086e4:	8732                	mv	a4,a2
1c0086e6:	40e50733          	sub	a4,a0,a4
1c0086ea:	00e53533          	sltu	a0,a0,a4
1c0086ee:	406585b3          	sub	a1,a1,t1
1c0086f2:	8d89                	sub	a1,a1,a0
1c0086f4:	01d597b3          	sll	a5,a1,t4
1c0086f8:	01c75733          	srl	a4,a4,t3
1c0086fc:	00e7e533          	or	a0,a5,a4
1c008700:	01c5d5b3          	srl	a1,a1,t3
1c008704:	b341                	j	1c008484 <__umoddi3+0xac>

1c008706 <__extendsfdf2>:
1c008706:	002027f3          	csrr	a5,0x2
1c00870a:	cf751633          	p.extractu	a2,a0,7,23
1c00870e:	00160713          	addi	a4,a2,1 # 1000001 <__l1_heap_size+0xfc0029>
1c008712:	ee873733          	p.bclr	a4,a4,23,8
1c008716:	4685                	li	a3,1
1c008718:	ec0517b3          	p.extractu	a5,a0,22,0
1c00871c:	817d                	srli	a0,a0,0x1f
1c00871e:	00e6d963          	ble	a4,a3,1c008730 <__extendsfdf2+0x2a>
1c008722:	0037d713          	srli	a4,a5,0x3
1c008726:	38060613          	addi	a2,a2,896
1c00872a:	07f6                	slli	a5,a5,0x1d
1c00872c:	4681                	li	a3,0
1c00872e:	a899                	j	1c008784 <__extendsfdf2+0x7e>
1c008730:	ee05                	bnez	a2,1c008768 <__extendsfdf2+0x62>
1c008732:	c7ad                	beqz	a5,1c00879c <__extendsfdf2+0x96>
1c008734:	477d                	li	a4,31
1c008736:	100796b3          	p.fl1	a3,a5
1c00873a:	40d706b3          	sub	a3,a4,a3
1c00873e:	4729                	li	a4,10
1c008740:	00d74e63          	blt	a4,a3,1c00875c <__extendsfdf2+0x56>
1c008744:	472d                	li	a4,11
1c008746:	8f15                	sub	a4,a4,a3
1c008748:	01568613          	addi	a2,a3,21
1c00874c:	00e7d733          	srl	a4,a5,a4
1c008750:	00c797b3          	sll	a5,a5,a2
1c008754:	38900613          	li	a2,905
1c008758:	8e15                	sub	a2,a2,a3
1c00875a:	bfc9                	j	1c00872c <__extendsfdf2+0x26>
1c00875c:	ff568713          	addi	a4,a3,-11
1c008760:	00e79733          	sll	a4,a5,a4
1c008764:	4781                	li	a5,0
1c008766:	b7fd                	j	1c008754 <__extendsfdf2+0x4e>
1c008768:	cf8d                	beqz	a5,1c0087a2 <__extendsfdf2+0x9c>
1c00876a:	004006b7          	lui	a3,0x400
1c00876e:	8efd                	and	a3,a3,a5
1c008770:	0037d713          	srli	a4,a5,0x3
1c008774:	0016b693          	seqz	a3,a3
1c008778:	0692                	slli	a3,a3,0x4
1c00877a:	c1374733          	p.bset	a4,a4,0,19
1c00877e:	07f6                	slli	a5,a5,0x1d
1c008780:	7ff00613          	li	a2,2047
1c008784:	4581                	li	a1,0
1c008786:	e60725b3          	p.insert	a1,a4,19,0
1c00878a:	d54625b3          	p.insert	a1,a2,10,20
1c00878e:	c1f525b3          	p.insert	a1,a0,0,31
1c008792:	853e                	mv	a0,a5
1c008794:	c299                	beqz	a3,1c00879a <__extendsfdf2+0x94>
1c008796:	0016a073          	csrs	0x1,a3
1c00879a:	8082                	ret
1c00879c:	4701                	li	a4,0
1c00879e:	4601                	li	a2,0
1c0087a0:	b771                	j	1c00872c <__extendsfdf2+0x26>
1c0087a2:	4701                	li	a4,0
1c0087a4:	7ff00613          	li	a2,2047
1c0087a8:	b751                	j	1c00872c <__extendsfdf2+0x26>

1c0087aa <pe_entry>:
1c0087aa:	1c0017b7          	lui	a5,0x1c001
1c0087ae:	9687a703          	lw	a4,-1688(a5) # 1c000968 <__DTOR_END__+0x100>
1c0087b2:	1c0017b7          	lui	a5,0x1c001
1c0087b6:	96c7a783          	lw	a5,-1684(a5) # 1c00096c <__DTOR_END__+0x104>
1c0087ba:	7179                	addi	sp,sp,-48
1c0087bc:	d606                	sw	ra,44(sp)
1c0087be:	c83a                	sw	a4,16(sp)
1c0087c0:	ca3e                	sw	a5,20(sp)
1c0087c2:	cc3a                	sw	a4,24(sp)
1c0087c4:	ce3e                	sw	a5,28(sp)
1c0087c6:	c602                	sw	zero,12(sp)
1c0087c8:	0001                	nop
1c0087ca:	4609                	li	a2,2
1c0087cc:	0074                	addi	a3,sp,12
1c0087ce:	082c                	addi	a1,sp,24
1c0087d0:	0808                	addi	a0,sp,16
1c0087d2:	231020ef          	jal	ra,1c00b202 <plp_dot_prod_f32s_xpulpv2>
1c0087d6:	0001                	nop
1c0087d8:	4532                	lw	a0,12(sp)
1c0087da:	3735                	jal	1c008706 <__extendsfdf2>
1c0087dc:	862a                	mv	a2,a0
1c0087de:	1c001537          	lui	a0,0x1c001
1c0087e2:	86ae                	mv	a3,a1
1c0087e4:	97050513          	addi	a0,a0,-1680 # 1c000970 <__DTOR_END__+0x108>
1c0087e8:	2669                	jal	1c008b72 <printf>
1c0087ea:	50b2                	lw	ra,44(sp)
1c0087ec:	6145                	addi	sp,sp,48
1c0087ee:	8082                	ret

1c0087f0 <cluster_entry>:
1c0087f0:	7179                	addi	sp,sp,-48
1c0087f2:	d422                	sw	s0,40(sp)
1c0087f4:	4785                	li	a5,1
1c0087f6:	00204437          	lui	s0,0x204
1c0087fa:	d606                	sw	ra,44(sp)
1c0087fc:	08f42223          	sw	a5,132(s0) # 204084 <__l1_heap_size+0x1c40ac>
1c008800:	20040793          	addi	a5,s0,512
1c008804:	4705                	li	a4,1
1c008806:	00e7a023          	sw	a4,0(a5)
1c00880a:	00e7a623          	sw	a4,12(a5)
1c00880e:	22040793          	addi	a5,s0,544
1c008812:	10100713          	li	a4,257
1c008816:	00e7a023          	sw	a4,0(a5)
1c00881a:	00e7a623          	sw	a4,12(a5)
1c00881e:	1c0087b7          	lui	a5,0x1c008
1c008822:	7aa78793          	addi	a5,a5,1962 # 1c0087aa <pe_entry>
1c008826:	00204737          	lui	a4,0x204
1c00882a:	08f72023          	sw	a5,128(a4) # 204080 <__l1_heap_size+0x1c40a8>
1c00882e:	002047b7          	lui	a5,0x204
1c008832:	0807a023          	sw	zero,128(a5) # 204080 <__l1_heap_size+0x1c40a8>
1c008836:	1c0017b7          	lui	a5,0x1c001
1c00883a:	9687a703          	lw	a4,-1688(a5) # 1c000968 <__DTOR_END__+0x100>
1c00883e:	1c0017b7          	lui	a5,0x1c001
1c008842:	96c7a783          	lw	a5,-1684(a5) # 1c00096c <__DTOR_END__+0x104>
1c008846:	c83a                	sw	a4,16(sp)
1c008848:	ca3e                	sw	a5,20(sp)
1c00884a:	cc3a                	sw	a4,24(sp)
1c00884c:	ce3e                	sw	a5,28(sp)
1c00884e:	c602                	sw	zero,12(sp)
1c008850:	0001                	nop
1c008852:	4609                	li	a2,2
1c008854:	0074                	addi	a3,sp,12
1c008856:	082c                	addi	a1,sp,24
1c008858:	0808                	addi	a0,sp,16
1c00885a:	1a9020ef          	jal	ra,1c00b202 <plp_dot_prod_f32s_xpulpv2>
1c00885e:	0001                	nop
1c008860:	4532                	lw	a0,12(sp)
1c008862:	3555                	jal	1c008706 <__extendsfdf2>
1c008864:	862a                	mv	a2,a0
1c008866:	1c001537          	lui	a0,0x1c001
1c00886a:	86ae                	mv	a3,a1
1c00886c:	97050513          	addi	a0,a0,-1680 # 1c000970 <__DTOR_END__+0x108>
1c008870:	2609                	jal	1c008b72 <printf>
1c008872:	21c40413          	addi	s0,s0,540
1c008876:	401c                	lw	a5,0(s0)
1c008878:	50b2                	lw	ra,44(sp)
1c00887a:	5422                	lw	s0,40(sp)
1c00887c:	6145                	addi	sp,sp,48
1c00887e:	8082                	ret

1c008880 <main>:
1c008880:	711d                	addi	sp,sp,-96
1c008882:	45e5                	li	a1,25
1c008884:	02700513          	li	a0,39
1c008888:	ce86                	sw	ra,92(sp)
1c00888a:	cca2                	sw	s0,88(sp)
1c00888c:	20a5                	jal	1c0088f4 <padctrl_mode_set>
1c00888e:	45e9                	li	a1,26
1c008890:	02600513          	li	a0,38
1c008894:	2085                	jal	1c0088f4 <padctrl_mode_set>
1c008896:	0808                	addi	a0,sp,16
1c008898:	68c020ef          	jal	ra,1c00af24 <pi_cluster_conf_init>
1c00889c:	0048                	addi	a0,sp,4
1c00889e:	080c                	addi	a1,sp,16
1c0088a0:	725010ef          	jal	ra,1c00a7c4 <pi_open_from_conf>
1c0088a4:	0048                	addi	a0,sp,4
1c0088a6:	688020ef          	jal	ra,1c00af2e <pi_cluster_open>
1c0088aa:	e905                	bnez	a0,1c0088da <main+0x5a>
1c0088ac:	1c0087b7          	lui	a5,0x1c008
1c0088b0:	7f078793          	addi	a5,a5,2032 # 1c0087f0 <cluster_entry>
1c0088b4:	d43e                	sw	a5,40(sp)
1c0088b6:	842a                	mv	s0,a0
1c0088b8:	47a1                	li	a5,8
1c0088ba:	102c                	addi	a1,sp,40
1c0088bc:	0048                	addi	a0,sp,4
1c0088be:	d602                	sw	zero,44(sp)
1c0088c0:	d802                	sw	zero,48(sp)
1c0088c2:	da02                	sw	zero,52(sp)
1c0088c4:	de3e                	sw	a5,60(sp)
1c0088c6:	039020ef          	jal	ra,1c00b0fe <pi_cluster_send_task_to_cl>
1c0088ca:	0048                	addi	a0,sp,4
1c0088cc:	7ac020ef          	jal	ra,1c00b078 <pi_cluster_close>
1c0088d0:	8522                	mv	a0,s0
1c0088d2:	40f6                	lw	ra,92(sp)
1c0088d4:	4466                	lw	s0,88(sp)
1c0088d6:	6125                	addi	sp,sp,96
1c0088d8:	8082                	ret
1c0088da:	547d                	li	s0,-1
1c0088dc:	bfd5                	j	1c0088d0 <main+0x50>

1c0088de <pos_soc_init>:
1c0088de:	02faf7b7          	lui	a5,0x2faf
1c0088e2:	08078793          	addi	a5,a5,128 # 2faf080 <__l1_heap_size+0x2f6f0a8>
1c0088e6:	00400713          	li	a4,4
1c0088ea:	00f02223          	sw	a5,4(zero) # 4 <pos_freq_domains>
1c0088ee:	c71c                	sw	a5,8(a4)
1c0088f0:	c35c                	sw	a5,4(a4)
1c0088f2:	8082                	ret

1c0088f4 <padctrl_mode_set>:
1c0088f4:	034287b7          	lui	a5,0x3428
1c0088f8:	953e                	add	a0,a0,a5
1c0088fa:	050e                	slli	a0,a0,0x3
1c0088fc:	0511                	addi	a0,a0,4
1c0088fe:	411c                	lw	a5,0(a0)
1c008900:	c805a7b3          	p.insert	a5,a1,4,0
1c008904:	c11c                	sw	a5,0(a0)
1c008906:	8082                	ret

1c008908 <pos_libc_putc_uart_req>:
1c008908:	410c                	lw	a1,0(a0)
1c00890a:	1141                	addi	sp,sp,-16
1c00890c:	00759793          	slli	a5,a1,0x7
1c008910:	1c0105b7          	lui	a1,0x1c010
1c008914:	15058593          	addi	a1,a1,336 # 1c010150 <__cluster_text_end>
1c008918:	c422                	sw	s0,8(sp)
1c00891a:	c606                	sw	ra,12(sp)
1c00891c:	95be                	add	a1,a1,a5
1c00891e:	0005c783          	lbu	a5,0(a1)
1c008922:	842a                	mv	s0,a0
1c008924:	cf9d                	beqz	a5,1c008962 <pos_libc_putc_uart_req+0x5a>
1c008926:	00158613          	addi	a2,a1,1
1c00892a:	a011                	j	1c00892e <pos_libc_putc_uart_req+0x26>
1c00892c:	863a                	mv	a2,a4
1c00892e:	00064783          	lbu	a5,0(a2)
1c008932:	00160713          	addi	a4,a2,1
1c008936:	fbfd                	bnez	a5,1c00892c <pos_libc_putc_uart_req+0x24>
1c008938:	8e0d                	sub	a2,a2,a1
1c00893a:	01000513          	li	a0,16
1c00893e:	4b6020ef          	jal	ra,1c00adf4 <pi_uart_write>
1c008942:	401c                	lw	a5,0(s0)
1c008944:	4705                	li	a4,1
1c008946:	c058                	sw	a4,4(s0)
1c008948:	04078793          	addi	a5,a5,64 # 3428040 <__l1_heap_size+0x33e8068>
1c00894c:	00201737          	lui	a4,0x201
1c008950:	40b2                	lw	ra,12(sp)
1c008952:	4422                	lw	s0,8(sp)
1c008954:	07da                	slli	a5,a5,0x16
1c008956:	e0470713          	addi	a4,a4,-508 # 200e04 <__l1_heap_size+0x1c0e2c>
1c00895a:	0007e723          	p.sw	zero,a4(a5)
1c00895e:	0141                	addi	sp,sp,16
1c008960:	8082                	ret
1c008962:	4601                	li	a2,0
1c008964:	bfd9                	j	1c00893a <pos_libc_putc_uart_req+0x32>

1c008966 <strchr>:
1c008966:	00054783          	lbu	a5,0(a0)
1c00896a:	0ff5f593          	andi	a1,a1,255
1c00896e:	00b78c63          	beq	a5,a1,1c008986 <strchr+0x20>
1c008972:	cb99                	beqz	a5,1c008988 <strchr+0x22>
1c008974:	00150793          	addi	a5,a0,1
1c008978:	a011                	j	1c00897c <strchr+0x16>
1c00897a:	c719                	beqz	a4,1c008988 <strchr+0x22>
1c00897c:	853e                	mv	a0,a5
1c00897e:	0017c70b          	p.lbu	a4,1(a5!)
1c008982:	feb71ce3          	bne	a4,a1,1c00897a <strchr+0x14>
1c008986:	8082                	ret
1c008988:	0015b593          	seqz	a1,a1
1c00898c:	40b005b3          	neg	a1,a1
1c008990:	8d6d                	and	a0,a0,a1
1c008992:	8082                	ret

1c008994 <pos_libc_fputc_locked>:
1c008994:	1c0017b7          	lui	a5,0x1c001
1c008998:	2207a783          	lw	a5,544(a5) # 1c001220 <_edata>
1c00899c:	c7a1                	beqz	a5,1c0089e4 <pos_libc_fputc_locked+0x50>
1c00899e:	f14026f3          	csrr	a3,mhartid
1c0089a2:	477d                	li	a4,31
1c0089a4:	ca5697b3          	p.extractu	a5,a3,5,5
1c0089a8:	08e78063          	beq	a5,a4,1c008a28 <pos_libc_fputc_locked+0x94>
1c0089ac:	00779613          	slli	a2,a5,0x7
1c0089b0:	00279713          	slli	a4,a5,0x2
1c0089b4:	1c0105b7          	lui	a1,0x1c010
1c0089b8:	1c0017b7          	lui	a5,0x1c001
1c0089bc:	15058593          	addi	a1,a1,336 # 1c010150 <__cluster_text_end>
1c0089c0:	22878793          	addi	a5,a5,552 # 1c001228 <pos_libc_uart_buffer_index_cl>
1c0089c4:	95b2                	add	a1,a1,a2
1c0089c6:	97ba                	add	a5,a5,a4
1c0089c8:	4390                	lw	a2,0(a5)
1c0089ca:	0ff57513          	andi	a0,a0,255
1c0089ce:	00160713          	addi	a4,a2,1
1c0089d2:	00a5c623          	p.sb	a0,a2(a1)
1c0089d6:	c398                	sw	a4,0(a5)
1c0089d8:	07f00613          	li	a2,127
1c0089dc:	00c70663          	beq	a4,a2,1c0089e8 <pos_libc_fputc_locked+0x54>
1c0089e0:	00a52463          	p.beqimm	a0,10,1c0089e8 <pos_libc_fputc_locked+0x54>
1c0089e4:	4501                	li	a0,0
1c0089e6:	8082                	ret
1c0089e8:	711d                	addi	sp,sp,-96
1c0089ea:	ce86                	sw	ra,92(sp)
1c0089ec:	0007a023          	sw	zero,0(a5)
1c0089f0:	0005c723          	p.sb	zero,a4(a1)
1c0089f4:	ca5696b3          	p.extractu	a3,a3,5,5
1c0089f8:	47fd                	li	a5,31
1c0089fa:	04f69063          	bne	a3,a5,1c008a3a <pos_libc_fputc_locked+0xa6>
1c0089fe:	0005c783          	lbu	a5,0(a1)
1c008a02:	cbb5                	beqz	a5,1c008a76 <pos_libc_fputc_locked+0xe2>
1c008a04:	00158613          	addi	a2,a1,1
1c008a08:	a011                	j	1c008a0c <pos_libc_fputc_locked+0x78>
1c008a0a:	863a                	mv	a2,a4
1c008a0c:	00064783          	lbu	a5,0(a2)
1c008a10:	00160713          	addi	a4,a2,1
1c008a14:	fbfd                	bnez	a5,1c008a0a <pos_libc_fputc_locked+0x76>
1c008a16:	8e0d                	sub	a2,a2,a1
1c008a18:	01000513          	li	a0,16
1c008a1c:	3d8020ef          	jal	ra,1c00adf4 <pi_uart_write>
1c008a20:	40f6                	lw	ra,92(sp)
1c008a22:	4501                	li	a0,0
1c008a24:	6125                	addi	sp,sp,96
1c008a26:	8082                	ret
1c008a28:	1c0017b7          	lui	a5,0x1c001
1c008a2c:	1c0105b7          	lui	a1,0x1c010
1c008a30:	22478793          	addi	a5,a5,548 # 1c001224 <pos_libc_uart_buffer_index>
1c008a34:	1d058593          	addi	a1,a1,464 # 1c0101d0 <pos_libc_uart_buffer>
1c008a38:	bf41                	j	1c0089c8 <pos_libc_fputc_locked+0x34>
1c008a3a:	1c0097b7          	lui	a5,0x1c009
1c008a3e:	90878793          	addi	a5,a5,-1784 # 1c008908 <pos_libc_putc_uart_req>
1c008a42:	ca3e                	sw	a5,20(sp)
1c008a44:	0808                	addi	a0,sp,16
1c008a46:	003c                	addi	a5,sp,8
1c008a48:	cc3e                	sw	a5,24(sp)
1c008a4a:	c436                	sw	a3,8(sp)
1c008a4c:	c602                	sw	zero,12(sp)
1c008a4e:	758020ef          	jal	ra,1c00b1a6 <pos_cluster_push_fc_event>
1c008a52:	47b2                	lw	a5,12(sp)
1c008a54:	f7f1                	bnez	a5,1c008a20 <pos_libc_fputc_locked+0x8c>
1c008a56:	002047b7          	lui	a5,0x204
1c008a5a:	4709                	li	a4,2
1c008a5c:	03c78613          	addi	a2,a5,60 # 20403c <__l1_heap_size+0x1c4064>
1c008a60:	00e7a423          	sw	a4,8(a5)
1c008a64:	4214                	lw	a3,0(a2)
1c008a66:	00e7a223          	sw	a4,4(a5)
1c008a6a:	46b2                	lw	a3,12(sp)
1c008a6c:	daf5                	beqz	a3,1c008a60 <pos_libc_fputc_locked+0xcc>
1c008a6e:	40f6                	lw	ra,92(sp)
1c008a70:	4501                	li	a0,0
1c008a72:	6125                	addi	sp,sp,96
1c008a74:	8082                	ret
1c008a76:	4601                	li	a2,0
1c008a78:	b745                	j	1c008a18 <pos_libc_fputc_locked+0x84>

1c008a7a <pos_libc_prf_locked>:
1c008a7a:	1141                	addi	sp,sp,-16
1c008a7c:	c422                	sw	s0,8(sp)
1c008a7e:	f1402473          	csrr	s0,mhartid
1c008a82:	c606                	sw	ra,12(sp)
1c008a84:	47fd                	li	a5,31
1c008a86:	ca541733          	p.extractu	a4,s0,5,5
1c008a8a:	02f70963          	beq	a4,a5,1c008abc <pos_libc_prf_locked+0x42>
1c008a8e:	00400813          	li	a6,4
1c008a92:	c1484833          	p.bset	a6,a6,0,20
1c008a96:	00082783          	lw	a5,0(a6)
1c008a9a:	03f7b163          	p.bneimm	a5,-1,1c008abc <pos_libc_prf_locked+0x42>
1c008a9e:	002047b7          	lui	a5,0x204
1c008aa2:	4711                	li	a4,4
1c008aa4:	03c78313          	addi	t1,a5,60 # 20403c <__l1_heap_size+0x1c4064>
1c008aa8:	00e7a423          	sw	a4,8(a5)
1c008aac:	00032883          	lw	a7,0(t1)
1c008ab0:	00e7a223          	sw	a4,4(a5)
1c008ab4:	00082883          	lw	a7,0(a6)
1c008ab8:	fff8a8e3          	p.beqimm	a7,-1,1c008aa8 <pos_libc_prf_locked+0x2e>
1c008abc:	20d5                	jal	1c008ba0 <pos_libc_prf>
1c008abe:	ca541433          	p.extractu	s0,s0,5,5
1c008ac2:	47fd                	li	a5,31
1c008ac4:	00f40863          	beq	s0,a5,1c008ad4 <pos_libc_prf_locked+0x5a>
1c008ac8:	00002223          	sw	zero,4(zero) # 4 <pos_freq_domains>
1c008acc:	002047b7          	lui	a5,0x204
1c008ad0:	1007a423          	sw	zero,264(a5) # 204108 <__l1_heap_size+0x1c4130>
1c008ad4:	40b2                	lw	ra,12(sp)
1c008ad6:	4422                	lw	s0,8(sp)
1c008ad8:	0141                	addi	sp,sp,16
1c008ada:	8082                	ret

1c008adc <exit>:
1c008adc:	1141                	addi	sp,sp,-16
1c008ade:	c422                	sw	s0,8(sp)
1c008ae0:	c606                	sw	ra,12(sp)
1c008ae2:	842a                	mv	s0,a0
1c008ae4:	49f010ef          	jal	ra,1c00a782 <pos_init_stop>
1c008ae8:	c1f44533          	p.bset	a0,s0,0,31
1c008aec:	1a1047b7          	lui	a5,0x1a104
1c008af0:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <_emram_start+0x9904080>
1c008af4:	1a10a7b7          	lui	a5,0x1a10a
1c008af8:	577d                	li	a4,-1
1c008afa:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <_emram_start+0x99097e8>
1c008afe:	10500073          	wfi
1c008b02:	10500073          	wfi
1c008b06:	bfe5                	j	1c008afe <exit+0x22>

1c008b08 <pos_io_start>:
1c008b08:	1101                	addi	sp,sp,-32
1c008b0a:	0048                	addi	a0,sp,4
1c008b0c:	ce06                	sw	ra,28(sp)
1c008b0e:	cc22                	sw	s0,24(sp)
1c008b10:	0e6020ef          	jal	ra,1c00abf6 <pi_uart_conf_init>
1c008b14:	4785                	li	a5,1
1c008b16:	00f11623          	sh	a5,12(sp)
1c008b1a:	67f1                	lui	a5,0x1c
1c008b1c:	01000513          	li	a0,16
1c008b20:	20078793          	addi	a5,a5,512 # 1c200 <pos_soc_event_callback+0x1bdbc>
1c008b24:	004c                	addi	a1,sp,4
1c008b26:	c23e                	sw	a5,4(sp)
1c008b28:	49d010ef          	jal	ra,1c00a7c4 <pi_open_from_conf>
1c008b2c:	01000513          	li	a0,16
1c008b30:	0e2020ef          	jal	ra,1c00ac12 <pi_uart_open>
1c008b34:	e911                	bnez	a0,1c008b48 <pos_io_start+0x40>
1c008b36:	1c0017b7          	lui	a5,0x1c001
1c008b3a:	4705                	li	a4,1
1c008b3c:	22e7a023          	sw	a4,544(a5) # 1c001220 <_edata>
1c008b40:	40f2                	lw	ra,28(sp)
1c008b42:	4462                	lw	s0,24(sp)
1c008b44:	6105                	addi	sp,sp,32
1c008b46:	8082                	ret
1c008b48:	557d                	li	a0,-1
1c008b4a:	bfdd                	j	1c008b40 <pos_io_start+0x38>

1c008b4c <pos_io_stop>:
1c008b4c:	1141                	addi	sp,sp,-16
1c008b4e:	01000513          	li	a0,16
1c008b52:	1c0017b7          	lui	a5,0x1c001
1c008b56:	c606                	sw	ra,12(sp)
1c008b58:	2207a023          	sw	zero,544(a5) # 1c001220 <_edata>
1c008b5c:	1d4020ef          	jal	ra,1c00ad30 <pi_uart_close>
1c008b60:	40b2                	lw	ra,12(sp)
1c008b62:	4501                	li	a0,0
1c008b64:	0141                	addi	sp,sp,16
1c008b66:	8082                	ret

1c008b68 <pos_io_init>:
1c008b68:	1c0017b7          	lui	a5,0x1c001
1c008b6c:	2207a023          	sw	zero,544(a5) # 1c001220 <_edata>
1c008b70:	8082                	ret

1c008b72 <printf>:
1c008b72:	7139                	addi	sp,sp,-64
1c008b74:	02410313          	addi	t1,sp,36
1c008b78:	d432                	sw	a2,40(sp)
1c008b7a:	862a                	mv	a2,a0
1c008b7c:	1c009537          	lui	a0,0x1c009
1c008b80:	d22e                	sw	a1,36(sp)
1c008b82:	d636                	sw	a3,44(sp)
1c008b84:	4589                	li	a1,2
1c008b86:	869a                	mv	a3,t1
1c008b88:	99450513          	addi	a0,a0,-1644 # 1c008994 <pos_libc_fputc_locked>
1c008b8c:	ce06                	sw	ra,28(sp)
1c008b8e:	d83a                	sw	a4,48(sp)
1c008b90:	da3e                	sw	a5,52(sp)
1c008b92:	dc42                	sw	a6,56(sp)
1c008b94:	de46                	sw	a7,60(sp)
1c008b96:	c61a                	sw	t1,12(sp)
1c008b98:	35cd                	jal	1c008a7a <pos_libc_prf_locked>
1c008b9a:	40f2                	lw	ra,28(sp)
1c008b9c:	6121                	addi	sp,sp,64
1c008b9e:	8082                	ret

1c008ba0 <pos_libc_prf>:
1c008ba0:	7119                	addi	sp,sp,-128
1c008ba2:	dca2                	sw	s0,120(sp)
1c008ba4:	1058                	addi	a4,sp,36
1c008ba6:	4401                	li	s0,0
1c008ba8:	d6ce                	sw	s3,108(sp)
1c008baa:	d4d2                	sw	s4,104(sp)
1c008bac:	d2d6                	sw	s5,100(sp)
1c008bae:	cede                	sw	s7,92(sp)
1c008bb0:	cce2                	sw	s8,88(sp)
1c008bb2:	c8ea                	sw	s10,80(sp)
1c008bb4:	de86                	sw	ra,124(sp)
1c008bb6:	daa6                	sw	s1,116(sp)
1c008bb8:	d8ca                	sw	s2,112(sp)
1c008bba:	d0da                	sw	s6,96(sp)
1c008bbc:	cae6                	sw	s9,84(sp)
1c008bbe:	c6ee                	sw	s11,76(sp)
1c008bc0:	89aa                	mv	s3,a0
1c008bc2:	8bae                	mv	s7,a1
1c008bc4:	8d32                	mv	s10,a2
1c008bc6:	8a36                	mv	s4,a3
1c008bc8:	1c001c37          	lui	s8,0x1c001
1c008bcc:	c03a                	sw	a4,0(sp)
1c008bce:	8aa2                	mv	s5,s0
1c008bd0:	a039                	j	1c008bde <pos_libc_prf+0x3e>
1c008bd2:	85de                	mv	a1,s7
1c008bd4:	9982                	jalr	s3
1c008bd6:	15f52063          	p.beqimm	a0,-1,1c008d16 <pos_libc_prf+0x176>
1c008bda:	0a85                	addi	s5,s5,1
1c008bdc:	8d22                	mv	s10,s0
1c008bde:	000d4503          	lbu	a0,0(s10)
1c008be2:	001d0413          	addi	s0,s10,1
1c008be6:	c979                	beqz	a0,1c008cbc <pos_libc_prf+0x11c>
1c008be8:	02500793          	li	a5,37
1c008bec:	fef513e3          	bne	a0,a5,1c008bd2 <pos_libc_prf+0x32>
1c008bf0:	ca02                	sw	zero,20(sp)
1c008bf2:	c802                	sw	zero,16(sp)
1c008bf4:	c602                	sw	zero,12(sp)
1c008bf6:	c402                	sw	zero,8(sp)
1c008bf8:	c202                	sw	zero,4(sp)
1c008bfa:	02300493          	li	s1,35
1c008bfe:	02d00b13          	li	s6,45
1c008c02:	00044c83          	lbu	s9,0(s0)
1c008c06:	00140913          	addi	s2,s0,1
1c008c0a:	85e6                	mv	a1,s9
1c008c0c:	97cc0513          	addi	a0,s8,-1668 # 1c00097c <__DTOR_END__+0x114>
1c008c10:	8d4a                	mv	s10,s2
1c008c12:	8de6                	mv	s11,s9
1c008c14:	3b89                	jal	1c008966 <strchr>
1c008c16:	c91d                	beqz	a0,1c008c4c <pos_libc_prf+0xac>
1c008c18:	109c8963          	beq	s9,s1,1c008d2a <pos_libc_prf+0x18a>
1c008c1c:	0194fe63          	bleu	s9,s1,1c008c38 <pos_libc_prf+0x98>
1c008c20:	116c8163          	beq	s9,s6,1c008d22 <pos_libc_prf+0x182>
1c008c24:	03000713          	li	a4,48
1c008c28:	0eec8963          	beq	s9,a4,1c008d1a <pos_libc_prf+0x17a>
1c008c2c:	02b00793          	li	a5,43
1c008c30:	0afc8763          	beq	s9,a5,1c008cde <pos_libc_prf+0x13e>
1c008c34:	844a                	mv	s0,s2
1c008c36:	b7f1                	j	1c008c02 <pos_libc_prf+0x62>
1c008c38:	080c8263          	beqz	s9,1c008cbc <pos_libc_prf+0x11c>
1c008c3c:	02000793          	li	a5,32
1c008c40:	fefc9ae3          	bne	s9,a5,1c008c34 <pos_libc_prf+0x94>
1c008c44:	4785                	li	a5,1
1c008c46:	c83e                	sw	a5,16(sp)
1c008c48:	844a                	mv	s0,s2
1c008c4a:	bf65                	j	1c008c02 <pos_libc_prf+0x62>
1c008c4c:	02a00693          	li	a3,42
1c008c50:	2edc8263          	beq	s9,a3,1c008f34 <pos_libc_prf+0x394>
1c008c54:	fd0c8693          	addi	a3,s9,-48
1c008c58:	45a5                	li	a1,9
1c008c5a:	4b01                	li	s6,0
1c008c5c:	0cd5fd63          	bleu	a3,a1,1c008d36 <pos_libc_prf+0x196>
1c008c60:	02e00793          	li	a5,46
1c008c64:	28fd8663          	beq	s11,a5,1c008ef0 <pos_libc_prf+0x350>
1c008c68:	846e                	mv	s0,s11
1c008c6a:	54fd                	li	s1,-1
1c008c6c:	1c001737          	lui	a4,0x1c001
1c008c70:	85ee                	mv	a1,s11
1c008c72:	98470513          	addi	a0,a4,-1660 # 1c000984 <__DTOR_END__+0x11c>
1c008c76:	39c5                	jal	1c008966 <strchr>
1c008c78:	4781                	li	a5,0
1c008c7a:	cd19                	beqz	a0,1c008c98 <pos_libc_prf+0xf8>
1c008c7c:	06c00793          	li	a5,108
1c008c80:	001d0693          	addi	a3,s10,1
1c008c84:	000d4d83          	lbu	s11,0(s10)
1c008c88:	3af40563          	beq	s0,a5,1c009032 <pos_libc_prf+0x492>
1c008c8c:	06800793          	li	a5,104
1c008c90:	3af40563          	beq	s0,a5,1c00903a <pos_libc_prf+0x49a>
1c008c94:	8d36                	mv	s10,a3
1c008c96:	87a2                	mv	a5,s0
1c008c98:	06700693          	li	a3,103
1c008c9c:	0bb6ee63          	bltu	a3,s11,1c008d58 <pos_libc_prf+0x1b8>
1c008ca0:	06500693          	li	a3,101
1c008ca4:	3addf2e3          	bleu	a3,s11,1c009848 <pos_libc_prf+0xca8>
1c008ca8:	04700693          	li	a3,71
1c008cac:	39b6ed63          	bltu	a3,s11,1c009046 <pos_libc_prf+0x4a6>
1c008cb0:	04500793          	li	a5,69
1c008cb4:	38fdfae3          	bleu	a5,s11,1c009848 <pos_libc_prf+0xca8>
1c008cb8:	2e0d9863          	bnez	s11,1c008fa8 <pos_libc_prf+0x408>
1c008cbc:	8456                	mv	s0,s5
1c008cbe:	8522                	mv	a0,s0
1c008cc0:	50f6                	lw	ra,124(sp)
1c008cc2:	5466                	lw	s0,120(sp)
1c008cc4:	54d6                	lw	s1,116(sp)
1c008cc6:	5946                	lw	s2,112(sp)
1c008cc8:	59b6                	lw	s3,108(sp)
1c008cca:	5a26                	lw	s4,104(sp)
1c008ccc:	5a96                	lw	s5,100(sp)
1c008cce:	5b06                	lw	s6,96(sp)
1c008cd0:	4bf6                	lw	s7,92(sp)
1c008cd2:	4c66                	lw	s8,88(sp)
1c008cd4:	4cd6                	lw	s9,84(sp)
1c008cd6:	4d46                	lw	s10,80(sp)
1c008cd8:	4db6                	lw	s11,76(sp)
1c008cda:	6109                	addi	sp,sp,128
1c008cdc:	8082                	ret
1c008cde:	4705                	li	a4,1
1c008ce0:	c63a                	sw	a4,12(sp)
1c008ce2:	844a                	mv	s0,s2
1c008ce4:	bf39                	j	1c008c02 <pos_libc_prf+0x62>
1c008ce6:	00044503          	lbu	a0,0(s0)
1c008cea:	47a5                	li	a5,9
1c008cec:	fd050693          	addi	a3,a0,-48
1c008cf0:	72d7e9e3          	bltu	a5,a3,1c009c22 <pos_libc_prf+0x1082>
1c008cf4:	00140793          	addi	a5,s0,1
1c008cf8:	8dbe                	mv	s11,a5
1c008cfa:	a809                	j	1c008d0c <pos_libc_prf+0x16c>
1c008cfc:	001dc50b          	p.lbu	a0,1(s11!)
1c008d00:	4725                	li	a4,9
1c008d02:	fd050793          	addi	a5,a0,-48
1c008d06:	197d                	addi	s2,s2,-1
1c008d08:	70f76ee3          	bltu	a4,a5,1c009c24 <pos_libc_prf+0x1084>
1c008d0c:	85de                	mv	a1,s7
1c008d0e:	846e                	mv	s0,s11
1c008d10:	9982                	jalr	s3
1c008d12:	fff535e3          	p.bneimm	a0,-1,1c008cfc <pos_libc_prf+0x15c>
1c008d16:	547d                	li	s0,-1
1c008d18:	b75d                	j	1c008cbe <pos_libc_prf+0x11e>
1c008d1a:	4785                	li	a5,1
1c008d1c:	ca3e                	sw	a5,20(sp)
1c008d1e:	844a                	mv	s0,s2
1c008d20:	b5cd                	j	1c008c02 <pos_libc_prf+0x62>
1c008d22:	4705                	li	a4,1
1c008d24:	c43a                	sw	a4,8(sp)
1c008d26:	844a                	mv	s0,s2
1c008d28:	bde9                	j	1c008c02 <pos_libc_prf+0x62>
1c008d2a:	4705                	li	a4,1
1c008d2c:	c23a                	sw	a4,4(sp)
1c008d2e:	844a                	mv	s0,s2
1c008d30:	bdc9                	j	1c008c02 <pos_libc_prf+0x62>
1c008d32:	844a                	mv	s0,s2
1c008d34:	0905                	addi	s2,s2,1
1c008d36:	002b1793          	slli	a5,s6,0x2
1c008d3a:	00094d83          	lbu	s11,0(s2)
1c008d3e:	97da                	add	a5,a5,s6
1c008d40:	0786                	slli	a5,a5,0x1
1c008d42:	97e6                	add	a5,a5,s9
1c008d44:	fd0d8713          	addi	a4,s11,-48
1c008d48:	fd078b13          	addi	s6,a5,-48
1c008d4c:	8cee                	mv	s9,s11
1c008d4e:	fee5f2e3          	bleu	a4,a1,1c008d32 <pos_libc_prf+0x192>
1c008d52:	00240d13          	addi	s10,s0,2
1c008d56:	b729                	j	1c008c60 <pos_libc_prf+0xc0>
1c008d58:	07000693          	li	a3,112
1c008d5c:	24dd85e3          	beq	s11,a3,1c0097a6 <pos_libc_prf+0xc06>
1c008d60:	1fb6e463          	bltu	a3,s11,1c008f48 <pos_libc_prf+0x3a8>
1c008d64:	06e00693          	li	a3,110
1c008d68:	20dd8ae3          	beq	s11,a3,1c00977c <pos_libc_prf+0xbdc>
1c008d6c:	2fb6e763          	bltu	a3,s11,1c00905a <pos_libc_prf+0x4ba>
1c008d70:	06900693          	li	a3,105
1c008d74:	2add9ce3          	bne	s11,a3,1c00982c <pos_libc_prf+0xc8c>
1c008d78:	06c00693          	li	a3,108
1c008d7c:	00d78a63          	beq	a5,a3,1c008d90 <pos_libc_prf+0x1f0>
1c008d80:	07a00693          	li	a3,122
1c008d84:	00d78663          	beq	a5,a3,1c008d90 <pos_libc_prf+0x1f0>
1c008d88:	04c00693          	li	a3,76
1c008d8c:	5ed78de3          	beq	a5,a3,1c009b86 <pos_libc_prf+0xfe6>
1c008d90:	000a2783          	lw	a5,0(s4)
1c008d94:	0a11                	addi	s4,s4,4
1c008d96:	41f7d713          	srai	a4,a5,0x1f
1c008d9a:	ce52                	sw	s4,28(sp)
1c008d9c:	c23a                	sw	a4,4(sp)
1c008d9e:	4e0741e3          	bltz	a4,1c009a80 <pos_libc_prf+0xee0>
1c008da2:	4732                	lw	a4,12(sp)
1c008da4:	440709e3          	beqz	a4,1c0099f6 <pos_libc_prf+0xe56>
1c008da8:	02b00693          	li	a3,43
1c008dac:	4c92                	lw	s9,4(sp)
1c008dae:	02d10223          	sb	a3,36(sp)
1c008db2:	02510a13          	addi	s4,sp,37
1c008db6:	843e                	mv	s0,a5
1c008db8:	8dd2                	mv	s11,s4
1c008dba:	a011                	j	1c008dbe <pos_libc_prf+0x21e>
1c008dbc:	8dca                	mv	s11,s2
1c008dbe:	4629                	li	a2,10
1c008dc0:	4681                	li	a3,0
1c008dc2:	8522                	mv	a0,s0
1c008dc4:	85e6                	mv	a1,s9
1c008dc6:	e12ff0ef          	jal	ra,1c0083d8 <__umoddi3>
1c008dca:	892a                	mv	s2,a0
1c008dcc:	85e6                	mv	a1,s9
1c008dce:	8522                	mv	a0,s0
1c008dd0:	4629                	li	a2,10
1c008dd2:	4681                	li	a3,0
1c008dd4:	ac8ff0ef          	jal	ra,1c00809c <__udivdi3>
1c008dd8:	03090913          	addi	s2,s2,48
1c008ddc:	012d8023          	sb	s2,0(s11)
1c008de0:	00a5e7b3          	or	a5,a1,a0
1c008de4:	001d8913          	addi	s2,s11,1
1c008de8:	842a                	mv	s0,a0
1c008dea:	8cae                	mv	s9,a1
1c008dec:	fbe1                	bnez	a5,1c008dbc <pos_libc_prf+0x21c>
1c008dee:	00090023          	sb	zero,0(s2)
1c008df2:	01ba7d63          	bleu	s11,s4,1c008e0c <pos_libc_prf+0x26c>
1c008df6:	87ee                	mv	a5,s11
1c008df8:	000a4683          	lbu	a3,0(s4)
1c008dfc:	0007c703          	lbu	a4,0(a5)
1c008e00:	fed78fab          	p.sb	a3,-1(a5!)
1c008e04:	00ea00ab          	p.sb	a4,1(s4!)
1c008e08:	fefa68e3          	bltu	s4,a5,1c008df8 <pos_libc_prf+0x258>
1c008e0c:	4782                	lw	a5,0(sp)
1c008e0e:	4732                	lw	a4,12(sp)
1c008e10:	40f90933          	sub	s2,s2,a5
1c008e14:	3c071de3          	bnez	a4,1c0099ee <pos_libc_prf+0xe4e>
1c008e18:	47c2                	lw	a5,16(sp)
1c008e1a:	3c079ae3          	bnez	a5,1c0099ee <pos_libc_prf+0xe4e>
1c008e1e:	4712                	lw	a4,4(sp)
1c008e20:	837d                	srli	a4,a4,0x1f
1c008e22:	c23a                	sw	a4,4(sp)
1c008e24:	3404c463          	bltz	s1,1c00916c <pos_libc_prf+0x5cc>
1c008e28:	4712                	lw	a4,4(sp)
1c008e2a:	412484b3          	sub	s1,s1,s2
1c008e2e:	94ba                	add	s1,s1,a4
1c008e30:	0404e4b3          	p.max	s1,s1,zero
1c008e34:	009907b3          	add	a5,s2,s1
1c008e38:	40fb0b33          	sub	s6,s6,a5
1c008e3c:	1040                	addi	s0,sp,36
1c008e3e:	4c81                	li	s9,0
1c008e40:	cc02                	sw	zero,24(sp)
1c008e42:	4a01                	li	s4,0
1c008e44:	4722                	lw	a4,8(sp)
1c008e46:	e305                	bnez	a4,1c008e66 <pos_libc_prf+0x2c6>
1c008e48:	01605f63          	blez	s6,1c008e66 <pos_libc_prf+0x2c6>
1c008e4c:	fffb0d93          	addi	s11,s6,-1
1c008e50:	85de                	mv	a1,s7
1c008e52:	02000513          	li	a0,32
1c008e56:	9982                	jalr	s3
1c008e58:	1dfd                	addi	s11,s11,-1
1c008e5a:	ebf52ee3          	p.beqimm	a0,-1,1c008d16 <pos_libc_prf+0x176>
1c008e5e:	fffdb9e3          	p.bneimm	s11,-1,1c008e50 <pos_libc_prf+0x2b0>
1c008e62:	9ada                	add	s5,s5,s6
1c008e64:	5b7d                	li	s6,-1
1c008e66:	4792                	lw	a5,4(sp)
1c008e68:	00f40db3          	add	s11,s0,a5
1c008e6c:	a031                	j	1c008e78 <pos_libc_prf+0x2d8>
1c008e6e:	0014450b          	p.lbu	a0,1(s0!)
1c008e72:	9982                	jalr	s3
1c008e74:	ebf521e3          	p.beqimm	a0,-1,1c008d16 <pos_libc_prf+0x176>
1c008e78:	85de                	mv	a1,s7
1c008e7a:	ffb41ae3          	bne	s0,s11,1c008e6e <pos_libc_prf+0x2ce>
1c008e7e:	8da6                	mv	s11,s1
1c008e80:	a021                	j	1c008e88 <pos_libc_prf+0x2e8>
1c008e82:	9982                	jalr	s3
1c008e84:	e9f529e3          	p.beqimm	a0,-1,1c008d16 <pos_libc_prf+0x176>
1c008e88:	1dfd                	addi	s11,s11,-1
1c008e8a:	85de                	mv	a1,s7
1c008e8c:	03000513          	li	a0,48
1c008e90:	fffdb9e3          	p.bneimm	s11,-1,1c008e82 <pos_libc_prf+0x2e2>
1c008e94:	4712                	lw	a4,4(sp)
1c008e96:	40e90933          	sub	s2,s2,a4
1c008e9a:	c44a                	sw	s2,8(sp)
1c008e9c:	e40a15e3          	bnez	s4,1c008ce6 <pos_libc_prf+0x146>
1c008ea0:	47e2                	lw	a5,24(sp)
1c008ea2:	16079763          	bnez	a5,1c009010 <pos_libc_prf+0x470>
1c008ea6:	120c8863          	beqz	s9,1c008fd6 <pos_libc_prf+0x436>
1c008eaa:	00044783          	lbu	a5,0(s0)
1c008eae:	4a25                	li	s4,9
1c008eb0:	02e00d93          	li	s11,46
1c008eb4:	a801                	j	1c008ec4 <pos_libc_prf+0x324>
1c008eb6:	0405                	addi	s0,s0,1
1c008eb8:	9982                	jalr	s3
1c008eba:	e5f52ee3          	p.beqimm	a0,-1,1c008d16 <pos_libc_prf+0x176>
1c008ebe:	00044783          	lbu	a5,0(s0)
1c008ec2:	197d                	addi	s2,s2,-1
1c008ec4:	fd078713          	addi	a4,a5,-48
1c008ec8:	853e                	mv	a0,a5
1c008eca:	85de                	mv	a1,s7
1c008ecc:	feea75e3          	bleu	a4,s4,1c008eb6 <pos_libc_prf+0x316>
1c008ed0:	ffb783e3          	beq	a5,s11,1c008eb6 <pos_libc_prf+0x316>
1c008ed4:	8a66                	mv	s4,s9
1c008ed6:	85de                	mv	a1,s7
1c008ed8:	03000513          	li	a0,48
1c008edc:	01404463          	bgtz	s4,1c008ee4 <pos_libc_prf+0x344>
1c008ee0:	0010106f          	j	1c00a6e0 <pos_libc_prf+0x1b40>
1c008ee4:	9982                	jalr	s3
1c008ee6:	1a7d                	addi	s4,s4,-1
1c008ee8:	fff537e3          	p.bneimm	a0,-1,1c008ed6 <pos_libc_prf+0x336>
1c008eec:	547d                	li	s0,-1
1c008eee:	bbc1                	j	1c008cbe <pos_libc_prf+0x11e>
1c008ef0:	000d4d83          	lbu	s11,0(s10)
1c008ef4:	02a00793          	li	a5,42
1c008ef8:	001d0513          	addi	a0,s10,1
1c008efc:	08fd8e63          	beq	s11,a5,1c008f98 <pos_libc_prf+0x3f8>
1c008f00:	fd0d8793          	addi	a5,s11,-48
1c008f04:	4825                	li	a6,9
1c008f06:	846e                	mv	s0,s11
1c008f08:	86aa                	mv	a3,a0
1c008f0a:	4481                	li	s1,0
1c008f0c:	45a5                	li	a1,9
1c008f0e:	8d2a                	mv	s10,a0
1c008f10:	d4f86ee3          	bltu	a6,a5,1c008c6c <pos_libc_prf+0xcc>
1c008f14:	00249793          	slli	a5,s1,0x2
1c008f18:	97a6                	add	a5,a5,s1
1c008f1a:	0786                	slli	a5,a5,0x1
1c008f1c:	97ee                	add	a5,a5,s11
1c008f1e:	0016cd8b          	p.lbu	s11,1(a3!) # 400001 <__l1_heap_size+0x3c0029>
1c008f22:	fd078493          	addi	s1,a5,-48
1c008f26:	fd0d8793          	addi	a5,s11,-48
1c008f2a:	846e                	mv	s0,s11
1c008f2c:	fef5f4e3          	bleu	a5,a1,1c008f14 <pos_libc_prf+0x374>
1c008f30:	8d36                	mv	s10,a3
1c008f32:	bb2d                	j	1c008c6c <pos_libc_prf+0xcc>
1c008f34:	000a2b03          	lw	s6,0(s4)
1c008f38:	0a11                	addi	s4,s4,4
1c008f3a:	080b4363          	bltz	s6,1c008fc0 <pos_libc_prf+0x420>
1c008f3e:	00094d83          	lbu	s11,0(s2)
1c008f42:	00240d13          	addi	s10,s0,2
1c008f46:	bb29                	j	1c008c60 <pos_libc_prf+0xc0>
1c008f48:	07500693          	li	a3,117
1c008f4c:	10dd8763          	beq	s11,a3,1c00905a <pos_libc_prf+0x4ba>
1c008f50:	07800693          	li	a3,120
1c008f54:	10dd8363          	beq	s11,a3,1c00905a <pos_libc_prf+0x4ba>
1c008f58:	07300793          	li	a5,115
1c008f5c:	0cfd98e3          	bne	s11,a5,1c00982c <pos_libc_prf+0xc8c>
1c008f60:	004a0713          	addi	a4,s4,4
1c008f64:	ce3a                	sw	a4,28(sp)
1c008f66:	000a2403          	lw	s0,0(s4)
1c008f6a:	3c04c2e3          	bltz	s1,1c009b2e <pos_libc_prf+0xf8e>
1c008f6e:	460481e3          	beqz	s1,1c009bd0 <pos_libc_prf+0x1030>
1c008f72:	00044783          	lbu	a5,0(s0)
1c008f76:	44078ce3          	beqz	a5,1c009bce <pos_libc_prf+0x102e>
1c008f7a:	00140793          	addi	a5,s0,1
1c008f7e:	4901                	li	s2,0
1c008f80:	a021                	j	1c008f88 <pos_libc_prf+0x3e8>
1c008f82:	0017c70b          	p.lbu	a4,1(a5!)
1c008f86:	c701                	beqz	a4,1c008f8e <pos_libc_prf+0x3ee>
1c008f88:	0905                	addi	s2,s2,1
1c008f8a:	fe994ce3          	blt	s2,s1,1c008f82 <pos_libc_prf+0x3e2>
1c008f8e:	412b0b33          	sub	s6,s6,s2
1c008f92:	4481                	li	s1,0
1c008f94:	c202                	sw	zero,4(sp)
1c008f96:	b565                	j	1c008e3e <pos_libc_prf+0x29e>
1c008f98:	001d4d83          	lbu	s11,1(s10)
1c008f9c:	000a2483          	lw	s1,0(s4)
1c008fa0:	846e                	mv	s0,s11
1c008fa2:	0d09                	addi	s10,s10,2
1c008fa4:	0a11                	addi	s4,s4,4
1c008fa6:	b1d9                	j	1c008c6c <pos_libc_prf+0xcc>
1c008fa8:	02500793          	li	a5,37
1c008fac:	08fd90e3          	bne	s11,a5,1c00982c <pos_libc_prf+0xc8c>
1c008fb0:	85de                	mv	a1,s7
1c008fb2:	02500513          	li	a0,37
1c008fb6:	9982                	jalr	s3
1c008fb8:	d5f52fe3          	p.beqimm	a0,-1,1c008d16 <pos_libc_prf+0x176>
1c008fbc:	0a85                	addi	s5,s5,1
1c008fbe:	b105                	j	1c008bde <pos_libc_prf+0x3e>
1c008fc0:	4785                	li	a5,1
1c008fc2:	41600b33          	neg	s6,s6
1c008fc6:	c43e                	sw	a5,8(sp)
1c008fc8:	bf9d                	j	1c008f3e <pos_libc_prf+0x39e>
1c008fca:	0014450b          	p.lbu	a0,1(s0!)
1c008fce:	197d                	addi	s2,s2,-1
1c008fd0:	9982                	jalr	s3
1c008fd2:	d5f522e3          	p.beqimm	a0,-1,1c008d16 <pos_libc_prf+0x176>
1c008fd6:	85de                	mv	a1,s7
1c008fd8:	ff2049e3          	bgtz	s2,1c008fca <pos_libc_prf+0x42a>
1c008fdc:	4792                	lw	a5,4(sp)
1c008fde:	4a72                	lw	s4,28(sp)
1c008fe0:	00fa8733          	add	a4,s5,a5
1c008fe4:	47a2                	lw	a5,8(sp)
1c008fe6:	9726                	add	a4,a4,s1
1c008fe8:	00e78ab3          	add	s5,a5,a4
1c008fec:	bf6059e3          	blez	s6,1c008bde <pos_libc_prf+0x3e>
1c008ff0:	9ada                	add	s5,s5,s6
1c008ff2:	1b7d                	addi	s6,s6,-1
1c008ff4:	a029                	j	1c008ffe <pos_libc_prf+0x45e>
1c008ff6:	01fb3463          	p.bneimm	s6,-1,1c008ffe <pos_libc_prf+0x45e>
1c008ffa:	5fe0106f          	j	1c00a5f8 <pos_libc_prf+0x1a58>
1c008ffe:	85de                	mv	a1,s7
1c009000:	02000513          	li	a0,32
1c009004:	9982                	jalr	s3
1c009006:	1b7d                	addi	s6,s6,-1
1c009008:	fff537e3          	p.bneimm	a0,-1,1c008ff6 <pos_libc_prf+0x456>
1c00900c:	547d                	li	s0,-1
1c00900e:	b945                	j	1c008cbe <pos_libc_prf+0x11e>
1c009010:	02e00a13          	li	s4,46
1c009014:	a031                	j	1c009020 <pos_libc_prf+0x480>
1c009016:	197d                	addi	s2,s2,-1
1c009018:	014d9463          	bne	s11,s4,1c009020 <pos_libc_prf+0x480>
1c00901c:	5320106f          	j	1c00a54e <pos_libc_prf+0x19ae>
1c009020:	00144d8b          	p.lbu	s11,1(s0!)
1c009024:	85de                	mv	a1,s7
1c009026:	856e                	mv	a0,s11
1c009028:	9982                	jalr	s3
1c00902a:	fff536e3          	p.bneimm	a0,-1,1c009016 <pos_libc_prf+0x476>
1c00902e:	547d                	li	s0,-1
1c009030:	b179                	j	1c008cbe <pos_libc_prf+0x11e>
1c009032:	188d83e3          	beq	s11,s0,1c0099b8 <pos_libc_prf+0xe18>
1c009036:	8d36                	mv	s10,a3
1c009038:	b185                	j	1c008c98 <pos_libc_prf+0xf8>
1c00903a:	188d86e3          	beq	s11,s0,1c0099c6 <pos_libc_prf+0xe26>
1c00903e:	8d36                	mv	s10,a3
1c009040:	06800793          	li	a5,104
1c009044:	b991                	j	1c008c98 <pos_libc_prf+0xf8>
1c009046:	06300693          	li	a3,99
1c00904a:	70dd8c63          	beq	s11,a3,1c009762 <pos_libc_prf+0xbc2>
1c00904e:	d3b6e5e3          	bltu	a3,s11,1c008d78 <pos_libc_prf+0x1d8>
1c009052:	05800693          	li	a3,88
1c009056:	7cdd9b63          	bne	s11,a3,1c00982c <pos_libc_prf+0xc8c>
1c00905a:	06c00693          	li	a3,108
1c00905e:	18d780e3          	beq	a5,a3,1c0099de <pos_libc_prf+0xe3e>
1c009062:	07a00693          	li	a3,122
1c009066:	16d78ce3          	beq	a5,a3,1c0099de <pos_libc_prf+0xe3e>
1c00906a:	04c00693          	li	a3,76
1c00906e:	2cd78ee3          	beq	a5,a3,1c009b4a <pos_libc_prf+0xfaa>
1c009072:	000a2403          	lw	s0,0(s4)
1c009076:	0a11                	addi	s4,s4,4
1c009078:	ce52                	sw	s4,28(sp)
1c00907a:	4c81                	li	s9,0
1c00907c:	06f00793          	li	a5,111
1c009080:	3cfd81e3          	beq	s11,a5,1c009c42 <pos_libc_prf+0x10a2>
1c009084:	07500793          	li	a5,117
1c009088:	02410a13          	addi	s4,sp,36
1c00908c:	04fd8763          	beq	s11,a5,1c0090da <pos_libc_prf+0x53a>
1c009090:	4712                	lw	a4,4(sp)
1c009092:	2a0708e3          	beqz	a4,1c009b42 <pos_libc_prf+0xfa2>
1c009096:	77e1                	lui	a5,0xffff8
1c009098:	8307c793          	xori	a5,a5,-2000
1c00909c:	02f11223          	sh	a5,36(sp)
1c0090a0:	4909                	li	s2,2
1c0090a2:	02610693          	addi	a3,sp,38
1c0090a6:	87b6                	mv	a5,a3
1c0090a8:	4e25                	li	t3,9
1c0090aa:	f6443733          	p.bclr	a4,s0,27,4
1c0090ae:	01cc9613          	slli	a2,s9,0x1c
1c0090b2:	8011                	srli	s0,s0,0x4
1c0090b4:	8c51                	or	s0,s0,a2
1c0090b6:	004cdc93          	srli	s9,s9,0x4
1c0090ba:	05770813          	addi	a6,a4,87
1c0090be:	03070593          	addi	a1,a4,48
1c0090c2:	01946533          	or	a0,s0,s9
1c0090c6:	06ee7663          	bleu	a4,t3,1c009132 <pos_libc_prf+0x592>
1c0090ca:	01078023          	sb	a6,0(a5) # ffff8000 <pulp__FC+0xffff8001>
1c0090ce:	00178593          	addi	a1,a5,1
1c0090d2:	c52d                	beqz	a0,1c00913c <pos_libc_prf+0x59c>
1c0090d4:	87ae                	mv	a5,a1
1c0090d6:	bfd1                	j	1c0090aa <pos_libc_prf+0x50a>
1c0090d8:	8a4a                	mv	s4,s2
1c0090da:	4629                	li	a2,10
1c0090dc:	4681                	li	a3,0
1c0090de:	8522                	mv	a0,s0
1c0090e0:	85e6                	mv	a1,s9
1c0090e2:	af6ff0ef          	jal	ra,1c0083d8 <__umoddi3>
1c0090e6:	892a                	mv	s2,a0
1c0090e8:	85e6                	mv	a1,s9
1c0090ea:	8522                	mv	a0,s0
1c0090ec:	4629                	li	a2,10
1c0090ee:	4681                	li	a3,0
1c0090f0:	fadfe0ef          	jal	ra,1c00809c <__udivdi3>
1c0090f4:	03090913          	addi	s2,s2,48
1c0090f8:	012a0023          	sb	s2,0(s4)
1c0090fc:	00a5e7b3          	or	a5,a1,a0
1c009100:	001a0913          	addi	s2,s4,1
1c009104:	842a                	mv	s0,a0
1c009106:	8cae                	mv	s9,a1
1c009108:	fbe1                	bnez	a5,1c0090d8 <pos_libc_prf+0x538>
1c00910a:	4782                	lw	a5,0(sp)
1c00910c:	00090023          	sb	zero,0(s2)
1c009110:	40f90933          	sub	s2,s2,a5
1c009114:	0147fd63          	bleu	s4,a5,1c00912e <pos_libc_prf+0x58e>
1c009118:	105c                	addi	a5,sp,36
1c00911a:	0007c683          	lbu	a3,0(a5)
1c00911e:	000a4703          	lbu	a4,0(s4)
1c009122:	feda0fab          	p.sb	a3,-1(s4!)
1c009126:	00e780ab          	p.sb	a4,1(a5!)
1c00912a:	ff47e8e3          	bltu	a5,s4,1c00911a <pos_libc_prf+0x57a>
1c00912e:	c202                	sw	zero,4(sp)
1c009130:	b9d5                	j	1c008e24 <pos_libc_prf+0x284>
1c009132:	00b78023          	sb	a1,0(a5)
1c009136:	00178593          	addi	a1,a5,1
1c00913a:	fd49                	bnez	a0,1c0090d4 <pos_libc_prf+0x534>
1c00913c:	00058023          	sb	zero,0(a1)
1c009140:	8d95                	sub	a1,a1,a3
1c009142:	00f6fc63          	bleu	a5,a3,1c00915a <pos_libc_prf+0x5ba>
1c009146:	0006c603          	lbu	a2,0(a3)
1c00914a:	0007c703          	lbu	a4,0(a5)
1c00914e:	fec78fab          	p.sb	a2,-1(a5!)
1c009152:	00e680ab          	p.sb	a4,1(a3!)
1c009156:	fef6e8e3          	bltu	a3,a5,1c009146 <pos_libc_prf+0x5a6>
1c00915a:	05800793          	li	a5,88
1c00915e:	28fd82e3          	beq	s11,a5,1c009be2 <pos_libc_prf+0x1042>
1c009162:	4712                	lw	a4,4(sp)
1c009164:	992e                	add	s2,s2,a1
1c009166:	0706                	slli	a4,a4,0x1
1c009168:	c23a                	sw	a4,4(sp)
1c00916a:	b96d                	j	1c008e24 <pos_libc_prf+0x284>
1c00916c:	4c81                	li	s9,0
1c00916e:	cc02                	sw	zero,24(sp)
1c009170:	4a01                	li	s4,0
1c009172:	47d2                	lw	a5,20(sp)
1c009174:	5e078163          	beqz	a5,1c009756 <pos_libc_prf+0xbb6>
1c009178:	412b04b3          	sub	s1,s6,s2
1c00917c:	0404e4b3          	p.max	s1,s1,zero
1c009180:	009907b3          	add	a5,s2,s1
1c009184:	40fb0b33          	sub	s6,s6,a5
1c009188:	1040                	addi	s0,sp,36
1c00918a:	b96d                	j	1c008e44 <pos_libc_prf+0x2a4>
1c00918c:	4881                	li	a7,0
1c00918e:	4801                	li	a6,0
1c009190:	4581                	li	a1,0
1c009192:	4501                	li	a0,0
1c009194:	4f11                	li	t5,4
1c009196:	410f0f33          	sub	t5,t5,a6
1c00919a:	012f40fb          	lp.setup	x1,t5,1c0091be <pos_libc_prf+0x61e>
1c00919e:	01f51713          	slli	a4,a0,0x1f
1c0091a2:	0015d793          	srli	a5,a1,0x1
1c0091a6:	8fd9                	or	a5,a5,a4
1c0091a8:	fc15b5b3          	p.bclr	a1,a1,30,1
1c0091ac:	00f58eb3          	add	t4,a1,a5
1c0091b0:	8105                	srli	a0,a0,0x1
1c0091b2:	00beb5b3          	sltu	a1,t4,a1
1c0091b6:	00a587b3          	add	a5,a1,a0
1c0091ba:	853e                	mv	a0,a5
1c0091bc:	85f6                	mv	a1,t4
1c0091be:	0805                	addi	a6,a6,1
1c0091c0:	0004d363          	bgez	s1,1c0091c6 <pos_libc_prf+0x626>
1c0091c4:	4499                	li	s1,6
1c0091c6:	04700693          	li	a3,71
1c0091ca:	0cde0be3          	beq	t3,a3,1c009aa0 <pos_libc_prf+0xf00>
1c0091ce:	06600693          	li	a3,102
1c0091d2:	4f81                	li	t6,0
1c0091d4:	0edd84e3          	beq	s11,a3,1c009abc <pos_libc_prf+0xf1c>
1c0091d8:	00148f13          	addi	t5,s1,1
1c0091dc:	4741                	li	a4,16
1c0091de:	04ef4f33          	p.min	t5,t5,a4
1c0091e2:	1f7d                	addi	t5,t5,-1
1c0091e4:	4501                	li	a0,0
1c0091e6:	080006b7          	lui	a3,0x8000
1c0091ea:	4295                	li	t0,5
1c0091ec:	0f05                	addi	t5,t5,1
1c0091ee:	030f40fb          	lp.setup	x1,t5,1c00924e <pos_libc_prf+0x6ae>
1c0091f2:	00250613          	addi	a2,a0,2
1c0091f6:	00a63733          	sltu	a4,a2,a0
1c0091fa:	9736                	add	a4,a4,a3
1c0091fc:	02575533          	divu	a0,a4,t0
1c009200:	00251693          	slli	a3,a0,0x2
1c009204:	96aa                	add	a3,a3,a0
1c009206:	8f15                	sub	a4,a4,a3
1c009208:	0776                	slli	a4,a4,0x1d
1c00920a:	00365593          	srli	a1,a2,0x3
1c00920e:	8dd9                	or	a1,a1,a4
1c009210:	0255d5b3          	divu	a1,a1,t0
1c009214:	00359693          	slli	a3,a1,0x3
1c009218:	00559713          	slli	a4,a1,0x5
1c00921c:	9736                	add	a4,a4,a3
1c00921e:	40e60733          	sub	a4,a2,a4
1c009222:	02575733          	divu	a4,a4,t0
1c009226:	81f5                	srli	a1,a1,0x1d
1c009228:	00d70633          	add	a2,a4,a3
1c00922c:	95aa                	add	a1,a1,a0
1c00922e:	00e63733          	sltu	a4,a2,a4
1c009232:	00b706b3          	add	a3,a4,a1
1c009236:	01f69593          	slli	a1,a3,0x1f
1c00923a:	00165713          	srli	a4,a2,0x1
1c00923e:	8f4d                	or	a4,a4,a1
1c009240:	fc163633          	p.bclr	a2,a2,30,1
1c009244:	00e60533          	add	a0,a2,a4
1c009248:	8285                	srli	a3,a3,0x1
1c00924a:	00c53633          	sltu	a2,a0,a2
1c00924e:	96b2                	add	a3,a3,a2
1c009250:	00ae85b3          	add	a1,t4,a0
1c009254:	96be                	add	a3,a3,a5
1c009256:	01d5beb3          	sltu	t4,a1,t4
1c00925a:	96f6                	add	a3,a3,t4
1c00925c:	f606b533          	p.bclr	a0,a3,27,0
1c009260:	87ae                	mv	a5,a1
1c009262:	c125                	beqz	a0,1c0092c2 <pos_libc_prf+0x722>
1c009264:	00258513          	addi	a0,a1,2
1c009268:	00b537b3          	sltu	a5,a0,a1
1c00926c:	96be                	add	a3,a3,a5
1c00926e:	4e95                	li	t4,5
1c009270:	03d6de33          	divu	t3,a3,t4
1c009274:	002e1793          	slli	a5,t3,0x2
1c009278:	97f2                	add	a5,a5,t3
1c00927a:	8e9d                	sub	a3,a3,a5
1c00927c:	01d69793          	slli	a5,a3,0x1d
1c009280:	00355693          	srli	a3,a0,0x3
1c009284:	8edd                	or	a3,a3,a5
1c009286:	03d6d6b3          	divu	a3,a3,t4
1c00928a:	00369593          	slli	a1,a3,0x3
1c00928e:	00569793          	slli	a5,a3,0x5
1c009292:	97ae                	add	a5,a5,a1
1c009294:	40f507b3          	sub	a5,a0,a5
1c009298:	03d7d7b3          	divu	a5,a5,t4
1c00929c:	82f5                	srli	a3,a3,0x1d
1c00929e:	95be                	add	a1,a1,a5
1c0092a0:	00f5b7b3          	sltu	a5,a1,a5
1c0092a4:	96f2                	add	a3,a3,t3
1c0092a6:	96be                	add	a3,a3,a5
1c0092a8:	01f69513          	slli	a0,a3,0x1f
1c0092ac:	0015d793          	srli	a5,a1,0x1
1c0092b0:	8fc9                	or	a5,a5,a0
1c0092b2:	fc15b5b3          	p.bclr	a1,a1,30,1
1c0092b6:	97ae                	add	a5,a5,a1
1c0092b8:	8285                	srli	a3,a3,0x1
1c0092ba:	00b7b5b3          	sltu	a1,a5,a1
1c0092be:	96ae                	add	a3,a3,a1
1c0092c0:	0885                	addi	a7,a7,1
1c0092c2:	06600593          	li	a1,102
1c0092c6:	00130513          	addi	a0,t1,1
1c0092ca:	1ebd82e3          	beq	s11,a1,1c009cae <pos_libc_prf+0x110e>
1c0092ce:	01e7de13          	srli	t3,a5,0x1e
1c0092d2:	00279593          	slli	a1,a5,0x2
1c0092d6:	00269813          	slli	a6,a3,0x2
1c0092da:	97ae                	add	a5,a5,a1
1c0092dc:	010e6833          	or	a6,t3,a6
1c0092e0:	00b7b5b3          	sltu	a1,a5,a1
1c0092e4:	96c2                	add	a3,a3,a6
1c0092e6:	96ae                	add	a3,a3,a1
1c0092e8:	0686                	slli	a3,a3,0x1
1c0092ea:	01f7d593          	srli	a1,a5,0x1f
1c0092ee:	8ecd                	or	a3,a3,a1
1c0092f0:	01c6d593          	srli	a1,a3,0x1c
1c0092f4:	882e                	mv	a6,a1
1c0092f6:	4712                	lw	a4,4(sp)
1c0092f8:	03058593          	addi	a1,a1,48
1c0092fc:	01003833          	snez	a6,a6
1c009300:	00b30023          	sb	a1,0(t1)
1c009304:	c7c6be33          	p.bclr	t3,a3,3,28
1c009308:	00179593          	slli	a1,a5,0x1
1c00930c:	410888b3          	sub	a7,a7,a6
1c009310:	0a0714e3          	bnez	a4,1c009bb8 <pos_libc_prf+0x1018>
1c009314:	8ca6                	mv	s9,s1
1c009316:	3c905d63          	blez	s1,1c0096f0 <pos_libc_prf+0xb50>
1c00931a:	02e00693          	li	a3,46
1c00931e:	00230793          	addi	a5,t1,2
1c009322:	00d300a3          	sb	a3,1(t1)
1c009326:	00259693          	slli	a3,a1,0x2
1c00932a:	01e5d813          	srli	a6,a1,0x1e
1c00932e:	002e1513          	slli	a0,t3,0x2
1c009332:	95b6                	add	a1,a1,a3
1c009334:	00a86533          	or	a0,a6,a0
1c009338:	00d5b833          	sltu	a6,a1,a3
1c00933c:	01c506b3          	add	a3,a0,t3
1c009340:	9836                	add	a6,a6,a3
1c009342:	0806                	slli	a6,a6,0x1
1c009344:	01f5d693          	srli	a3,a1,0x1f
1c009348:	0106e833          	or	a6,a3,a6
1c00934c:	01c85313          	srli	t1,a6,0x1c
1c009350:	03030313          	addi	t1,t1,48
1c009354:	100006b7          	lui	a3,0x10000
1c009358:	fff68513          	addi	a0,a3,-1 # fffffff <__l1_heap_size+0xffc0027>
1c00935c:	00678023          	sb	t1,0(a5)
1c009360:	00159e13          	slli	t3,a1,0x1
1c009364:	00a87833          	and	a6,a6,a0
1c009368:	0014b463          	p.bneimm	s1,1,1c009370 <pos_libc_prf+0x7d0>
1c00936c:	3d40106f          	j	1c00a740 <pos_libc_prf+0x1ba0>
1c009370:	00359693          	slli	a3,a1,0x3
1c009374:	00281313          	slli	t1,a6,0x2
1c009378:	01ee5e93          	srli	t4,t3,0x1e
1c00937c:	01c685b3          	add	a1,a3,t3
1c009380:	006ee333          	or	t1,t4,t1
1c009384:	981a                	add	a6,a6,t1
1c009386:	00d5b6b3          	sltu	a3,a1,a3
1c00938a:	96c2                	add	a3,a3,a6
1c00938c:	0686                	slli	a3,a3,0x1
1c00938e:	01f5d813          	srli	a6,a1,0x1f
1c009392:	00d866b3          	or	a3,a6,a3
1c009396:	01c6d813          	srli	a6,a3,0x1c
1c00939a:	03080813          	addi	a6,a6,48
1c00939e:	010780a3          	sb	a6,1(a5)
1c0093a2:	ffe48c93          	addi	s9,s1,-2
1c0093a6:	00159313          	slli	t1,a1,0x1
1c0093aa:	8ee9                	and	a3,a3,a0
1c0093ac:	01904463          	bgtz	s9,1c0093b4 <pos_libc_prf+0x814>
1c0093b0:	3880106f          	j	1c00a738 <pos_libc_prf+0x1b98>
1c0093b4:	01e35e13          	srli	t3,t1,0x1e
1c0093b8:	058e                	slli	a1,a1,0x3
1c0093ba:	00269813          	slli	a6,a3,0x2
1c0093be:	932e                	add	t1,t1,a1
1c0093c0:	010e6833          	or	a6,t3,a6
1c0093c4:	96c2                	add	a3,a3,a6
1c0093c6:	00b335b3          	sltu	a1,t1,a1
1c0093ca:	95b6                	add	a1,a1,a3
1c0093cc:	0586                	slli	a1,a1,0x1
1c0093ce:	01f35693          	srli	a3,t1,0x1f
1c0093d2:	8dd5                	or	a1,a1,a3
1c0093d4:	01c5d693          	srli	a3,a1,0x1c
1c0093d8:	03068693          	addi	a3,a3,48
1c0093dc:	00d78123          	sb	a3,2(a5)
1c0093e0:	ffd48c93          	addi	s9,s1,-3
1c0093e4:	00131e13          	slli	t3,t1,0x1
1c0093e8:	8de9                	and	a1,a1,a0
1c0093ea:	01904463          	bgtz	s9,1c0093f2 <pos_libc_prf+0x852>
1c0093ee:	3420106f          	j	1c00a730 <pos_libc_prf+0x1b90>
1c0093f2:	00331693          	slli	a3,t1,0x3
1c0093f6:	00259813          	slli	a6,a1,0x2
1c0093fa:	01ee5313          	srli	t1,t3,0x1e
1c0093fe:	01036833          	or	a6,t1,a6
1c009402:	9e36                	add	t3,t3,a3
1c009404:	95c2                	add	a1,a1,a6
1c009406:	00de36b3          	sltu	a3,t3,a3
1c00940a:	96ae                	add	a3,a3,a1
1c00940c:	0686                	slli	a3,a3,0x1
1c00940e:	01fe5593          	srli	a1,t3,0x1f
1c009412:	8ecd                	or	a3,a3,a1
1c009414:	01c6d593          	srli	a1,a3,0x1c
1c009418:	03058593          	addi	a1,a1,48
1c00941c:	00b781a3          	sb	a1,3(a5)
1c009420:	ffc48c93          	addi	s9,s1,-4
1c009424:	001e1313          	slli	t1,t3,0x1
1c009428:	8ee9                	and	a3,a3,a0
1c00942a:	01904463          	bgtz	s9,1c009432 <pos_libc_prf+0x892>
1c00942e:	2fa0106f          	j	1c00a728 <pos_libc_prf+0x1b88>
1c009432:	003e1593          	slli	a1,t3,0x3
1c009436:	00269813          	slli	a6,a3,0x2
1c00943a:	01e35e13          	srli	t3,t1,0x1e
1c00943e:	010e6833          	or	a6,t3,a6
1c009442:	932e                	add	t1,t1,a1
1c009444:	96c2                	add	a3,a3,a6
1c009446:	00b335b3          	sltu	a1,t1,a1
1c00944a:	95b6                	add	a1,a1,a3
1c00944c:	0586                	slli	a1,a1,0x1
1c00944e:	01f35693          	srli	a3,t1,0x1f
1c009452:	8dd5                	or	a1,a1,a3
1c009454:	01c5d693          	srli	a3,a1,0x1c
1c009458:	03068693          	addi	a3,a3,48
1c00945c:	00d78223          	sb	a3,4(a5)
1c009460:	ffb48c93          	addi	s9,s1,-5
1c009464:	00131e13          	slli	t3,t1,0x1
1c009468:	8de9                	and	a1,a1,a0
1c00946a:	01904463          	bgtz	s9,1c009472 <pos_libc_prf+0x8d2>
1c00946e:	2b20106f          	j	1c00a720 <pos_libc_prf+0x1b80>
1c009472:	00331693          	slli	a3,t1,0x3
1c009476:	00259813          	slli	a6,a1,0x2
1c00947a:	01ee5313          	srli	t1,t3,0x1e
1c00947e:	01036833          	or	a6,t1,a6
1c009482:	9e36                	add	t3,t3,a3
1c009484:	95c2                	add	a1,a1,a6
1c009486:	00de36b3          	sltu	a3,t3,a3
1c00948a:	96ae                	add	a3,a3,a1
1c00948c:	0686                	slli	a3,a3,0x1
1c00948e:	01fe5593          	srli	a1,t3,0x1f
1c009492:	8ecd                	or	a3,a3,a1
1c009494:	01c6d593          	srli	a1,a3,0x1c
1c009498:	03058593          	addi	a1,a1,48
1c00949c:	00b782a3          	sb	a1,5(a5)
1c0094a0:	ffa48c93          	addi	s9,s1,-6
1c0094a4:	001e1313          	slli	t1,t3,0x1
1c0094a8:	8ee9                	and	a3,a3,a0
1c0094aa:	01904463          	bgtz	s9,1c0094b2 <pos_libc_prf+0x912>
1c0094ae:	26a0106f          	j	1c00a718 <pos_libc_prf+0x1b78>
1c0094b2:	003e1593          	slli	a1,t3,0x3
1c0094b6:	00269813          	slli	a6,a3,0x2
1c0094ba:	01e35e13          	srli	t3,t1,0x1e
1c0094be:	010e6833          	or	a6,t3,a6
1c0094c2:	932e                	add	t1,t1,a1
1c0094c4:	96c2                	add	a3,a3,a6
1c0094c6:	00b335b3          	sltu	a1,t1,a1
1c0094ca:	95b6                	add	a1,a1,a3
1c0094cc:	0586                	slli	a1,a1,0x1
1c0094ce:	01f35693          	srli	a3,t1,0x1f
1c0094d2:	8dd5                	or	a1,a1,a3
1c0094d4:	01c5d693          	srli	a3,a1,0x1c
1c0094d8:	03068693          	addi	a3,a3,48
1c0094dc:	00d78323          	sb	a3,6(a5)
1c0094e0:	ff948c93          	addi	s9,s1,-7
1c0094e4:	00131e13          	slli	t3,t1,0x1
1c0094e8:	8de9                	and	a1,a1,a0
1c0094ea:	01904463          	bgtz	s9,1c0094f2 <pos_libc_prf+0x952>
1c0094ee:	2220106f          	j	1c00a710 <pos_libc_prf+0x1b70>
1c0094f2:	00331693          	slli	a3,t1,0x3
1c0094f6:	00259813          	slli	a6,a1,0x2
1c0094fa:	01ee5313          	srli	t1,t3,0x1e
1c0094fe:	01036833          	or	a6,t1,a6
1c009502:	9e36                	add	t3,t3,a3
1c009504:	95c2                	add	a1,a1,a6
1c009506:	00de36b3          	sltu	a3,t3,a3
1c00950a:	96ae                	add	a3,a3,a1
1c00950c:	0686                	slli	a3,a3,0x1
1c00950e:	01fe5593          	srli	a1,t3,0x1f
1c009512:	8ecd                	or	a3,a3,a1
1c009514:	01c6d593          	srli	a1,a3,0x1c
1c009518:	03058593          	addi	a1,a1,48
1c00951c:	00b783a3          	sb	a1,7(a5)
1c009520:	ff848c93          	addi	s9,s1,-8
1c009524:	001e1313          	slli	t1,t3,0x1
1c009528:	8ee9                	and	a3,a3,a0
1c00952a:	01904463          	bgtz	s9,1c009532 <pos_libc_prf+0x992>
1c00952e:	1da0106f          	j	1c00a708 <pos_libc_prf+0x1b68>
1c009532:	003e1593          	slli	a1,t3,0x3
1c009536:	00269813          	slli	a6,a3,0x2
1c00953a:	01e35e13          	srli	t3,t1,0x1e
1c00953e:	010e6833          	or	a6,t3,a6
1c009542:	932e                	add	t1,t1,a1
1c009544:	96c2                	add	a3,a3,a6
1c009546:	00b335b3          	sltu	a1,t1,a1
1c00954a:	95b6                	add	a1,a1,a3
1c00954c:	0586                	slli	a1,a1,0x1
1c00954e:	01f35693          	srli	a3,t1,0x1f
1c009552:	8dd5                	or	a1,a1,a3
1c009554:	01c5d693          	srli	a3,a1,0x1c
1c009558:	03068693          	addi	a3,a3,48
1c00955c:	00d78423          	sb	a3,8(a5)
1c009560:	ff748c93          	addi	s9,s1,-9
1c009564:	00131e13          	slli	t3,t1,0x1
1c009568:	8de9                	and	a1,a1,a0
1c00956a:	01904463          	bgtz	s9,1c009572 <pos_libc_prf+0x9d2>
1c00956e:	1920106f          	j	1c00a700 <pos_libc_prf+0x1b60>
1c009572:	00331693          	slli	a3,t1,0x3
1c009576:	00259813          	slli	a6,a1,0x2
1c00957a:	01ee5e93          	srli	t4,t3,0x1e
1c00957e:	01c68333          	add	t1,a3,t3
1c009582:	010ee833          	or	a6,t4,a6
1c009586:	982e                	add	a6,a6,a1
1c009588:	00d336b3          	sltu	a3,t1,a3
1c00958c:	96c2                	add	a3,a3,a6
1c00958e:	01f35593          	srli	a1,t1,0x1f
1c009592:	0686                	slli	a3,a3,0x1
1c009594:	8ecd                	or	a3,a3,a1
1c009596:	01c6d593          	srli	a1,a3,0x1c
1c00959a:	03058593          	addi	a1,a1,48
1c00959e:	00b784a3          	sb	a1,9(a5)
1c0095a2:	ff648c93          	addi	s9,s1,-10
1c0095a6:	8ee9                	and	a3,a3,a0
1c0095a8:	00131593          	slli	a1,t1,0x1
1c0095ac:	00a78513          	addi	a0,a5,10
1c0095b0:	15905063          	blez	s9,1c0096f0 <pos_libc_prf+0xb50>
1c0095b4:	00259513          	slli	a0,a1,0x2
1c0095b8:	01e5d813          	srli	a6,a1,0x1e
1c0095bc:	00269313          	slli	t1,a3,0x2
1c0095c0:	95aa                	add	a1,a1,a0
1c0095c2:	00686333          	or	t1,a6,t1
1c0095c6:	969a                	add	a3,a3,t1
1c0095c8:	00a5b833          	sltu	a6,a1,a0
1c0095cc:	9836                	add	a6,a6,a3
1c0095ce:	0806                	slli	a6,a6,0x1
1c0095d0:	01f5d693          	srli	a3,a1,0x1f
1c0095d4:	0106e833          	or	a6,a3,a6
1c0095d8:	01c85313          	srli	t1,a6,0x1c
1c0095dc:	03030313          	addi	t1,t1,48
1c0095e0:	100006b7          	lui	a3,0x10000
1c0095e4:	fff68513          	addi	a0,a3,-1 # fffffff <__l1_heap_size+0xffc0027>
1c0095e8:	00678523          	sb	t1,10(a5)
1c0095ec:	ff548c93          	addi	s9,s1,-11
1c0095f0:	00159e13          	slli	t3,a1,0x1
1c0095f4:	00a87833          	and	a6,a6,a0
1c0095f8:	01904463          	bgtz	s9,1c009600 <pos_libc_prf+0xa60>
1c0095fc:	0fc0106f          	j	1c00a6f8 <pos_libc_prf+0x1b58>
1c009600:	00359693          	slli	a3,a1,0x3
1c009604:	00281313          	slli	t1,a6,0x2
1c009608:	01ee5e93          	srli	t4,t3,0x1e
1c00960c:	01c685b3          	add	a1,a3,t3
1c009610:	006ee333          	or	t1,t4,t1
1c009614:	981a                	add	a6,a6,t1
1c009616:	00d5b6b3          	sltu	a3,a1,a3
1c00961a:	96c2                	add	a3,a3,a6
1c00961c:	0686                	slli	a3,a3,0x1
1c00961e:	01f5d813          	srli	a6,a1,0x1f
1c009622:	00d866b3          	or	a3,a6,a3
1c009626:	01c6d813          	srli	a6,a3,0x1c
1c00962a:	03080813          	addi	a6,a6,48
1c00962e:	010785a3          	sb	a6,11(a5)
1c009632:	ff448c93          	addi	s9,s1,-12
1c009636:	00159313          	slli	t1,a1,0x1
1c00963a:	8ee9                	and	a3,a3,a0
1c00963c:	01904463          	bgtz	s9,1c009644 <pos_libc_prf+0xaa4>
1c009640:	0b00106f          	j	1c00a6f0 <pos_libc_prf+0x1b50>
1c009644:	058e                	slli	a1,a1,0x3
1c009646:	01e35e13          	srli	t3,t1,0x1e
1c00964a:	00269813          	slli	a6,a3,0x2
1c00964e:	932e                	add	t1,t1,a1
1c009650:	010e6833          	or	a6,t3,a6
1c009654:	96c2                	add	a3,a3,a6
1c009656:	00b335b3          	sltu	a1,t1,a1
1c00965a:	95b6                	add	a1,a1,a3
1c00965c:	0586                	slli	a1,a1,0x1
1c00965e:	01f35693          	srli	a3,t1,0x1f
1c009662:	8dd5                	or	a1,a1,a3
1c009664:	01c5d693          	srli	a3,a1,0x1c
1c009668:	03068693          	addi	a3,a3,48
1c00966c:	00d78623          	sb	a3,12(a5)
1c009670:	ff348c93          	addi	s9,s1,-13
1c009674:	00131813          	slli	a6,t1,0x1
1c009678:	01904463          	bgtz	s9,1c009680 <pos_libc_prf+0xae0>
1c00967c:	06c0106f          	j	1c00a6e8 <pos_libc_prf+0x1b48>
1c009680:	8de9                	and	a1,a1,a0
1c009682:	00331693          	slli	a3,t1,0x3
1c009686:	01e85e13          	srli	t3,a6,0x1e
1c00968a:	00259313          	slli	t1,a1,0x2
1c00968e:	9836                	add	a6,a6,a3
1c009690:	006e6333          	or	t1,t3,t1
1c009694:	959a                	add	a1,a1,t1
1c009696:	00d836b3          	sltu	a3,a6,a3
1c00969a:	96ae                	add	a3,a3,a1
1c00969c:	0686                	slli	a3,a3,0x1
1c00969e:	01f85593          	srli	a1,a6,0x1f
1c0096a2:	8ecd                	or	a3,a3,a1
1c0096a4:	01c6d593          	srli	a1,a3,0x1c
1c0096a8:	03058593          	addi	a1,a1,48
1c0096ac:	00b786a3          	sb	a1,13(a5)
1c0096b0:	ff248c93          	addi	s9,s1,-14
1c0096b4:	8ee9                	and	a3,a3,a0
1c0096b6:	00181593          	slli	a1,a6,0x1
1c0096ba:	00e78513          	addi	a0,a5,14
1c0096be:	03905963          	blez	s9,1c0096f0 <pos_libc_prf+0xb50>
1c0096c2:	00381513          	slli	a0,a6,0x3
1c0096c6:	01e5d313          	srli	t1,a1,0x1e
1c0096ca:	00269813          	slli	a6,a3,0x2
1c0096ce:	95aa                	add	a1,a1,a0
1c0096d0:	01036833          	or	a6,t1,a6
1c0096d4:	00a5b5b3          	sltu	a1,a1,a0
1c0096d8:	96c2                	add	a3,a3,a6
1c0096da:	96ae                	add	a3,a3,a1
1c0096dc:	0686                	slli	a3,a3,0x1
1c0096de:	82f1                	srli	a3,a3,0x1c
1c0096e0:	03068693          	addi	a3,a3,48
1c0096e4:	00f78513          	addi	a0,a5,15
1c0096e8:	00d78723          	sb	a3,14(a5)
1c0096ec:	ff148c93          	addi	s9,s1,-15
1c0096f0:	440f8563          	beqz	t6,1c009b3a <pos_libc_prf+0xf9a>
1c0096f4:	4581                	li	a1,0
1c0096f6:	cc02                	sw	zero,24(sp)
1c0096f8:	4a01                	li	s4,0
1c0096fa:	03000813          	li	a6,48
1c0096fe:	a011                	j	1c009702 <pos_libc_prf+0xb62>
1c009700:	853e                	mv	a0,a5
1c009702:	fff50793          	addi	a5,a0,-1
1c009706:	0007c683          	lbu	a3,0(a5)
1c00970a:	ff068be3          	beq	a3,a6,1c009700 <pos_libc_prf+0xb60>
1c00970e:	02e00813          	li	a6,46
1c009712:	4c81                	li	s9,0
1c009714:	01069363          	bne	a3,a6,1c00971a <pos_libc_prf+0xb7a>
1c009718:	853e                	mv	a0,a5
1c00971a:	0dfdf793          	andi	a5,s11,223
1c00971e:	04500693          	li	a3,69
1c009722:	3ad78e63          	beq	a5,a3,1c009ade <pos_libc_prf+0xf3e>
1c009726:	4782                	lw	a5,0(sp)
1c009728:	00050023          	sb	zero,0(a0)
1c00972c:	8d1d                	sub	a0,a0,a5
1c00972e:	4732                	lw	a4,12(sp)
1c009730:	2a071263          	bnez	a4,1c0099d4 <pos_libc_prf+0xe34>
1c009734:	47c2                	lw	a5,16(sp)
1c009736:	28079f63          	bnez	a5,1c0099d4 <pos_libc_prf+0xe34>
1c00973a:	02414783          	lbu	a5,36(sp)
1c00973e:	02d00693          	li	a3,45
1c009742:	c202                	sw	zero,4(sp)
1c009744:	28d78863          	beq	a5,a3,1c0099d4 <pos_libc_prf+0xe34>
1c009748:	fd078793          	addi	a5,a5,-48
1c00974c:	46a5                	li	a3,9
1c00974e:	00b50933          	add	s2,a0,a1
1c009752:	a2f6f0e3          	bleu	a5,a3,1c009172 <pos_libc_prf+0x5d2>
1c009756:	412b0b33          	sub	s6,s6,s2
1c00975a:	1040                	addi	s0,sp,36
1c00975c:	4481                	li	s1,0
1c00975e:	ee6ff06f          	j	1c008e44 <pos_libc_prf+0x2a4>
1c009762:	000a2783          	lw	a5,0(s4)
1c009766:	0a11                	addi	s4,s4,4
1c009768:	ce52                	sw	s4,28(sp)
1c00976a:	02f10223          	sb	a5,36(sp)
1c00976e:	1b7d                	addi	s6,s6,-1
1c009770:	4481                	li	s1,0
1c009772:	c202                	sw	zero,4(sp)
1c009774:	4905                	li	s2,1
1c009776:	1040                	addi	s0,sp,36
1c009778:	ec6ff06f          	j	1c008e3e <pos_libc_prf+0x29e>
1c00977c:	04c00613          	li	a2,76
1c009780:	004a268b          	p.lw	a3,4(s4!)
1c009784:	5ac78ee3          	beq	a5,a2,1c00a540 <pos_libc_prf+0x19a0>
1c009788:	28f65363          	ble	a5,a2,1c009a0e <pos_libc_prf+0xe6e>
1c00978c:	06800613          	li	a2,104
1c009790:	00c78663          	beq	a5,a2,1c00979c <pos_libc_prf+0xbfc>
1c009794:	0156a023          	sw	s5,0(a3)
1c009798:	c46ff06f          	j	1c008bde <pos_libc_prf+0x3e>
1c00979c:	87d6                	mv	a5,s5
1c00979e:	00f69023          	sh	a5,0(a3)
1c0097a2:	c3cff06f          	j	1c008bde <pos_libc_prf+0x3e>
1c0097a6:	004a0793          	addi	a5,s4,4
1c0097aa:	7761                	lui	a4,0xffff8
1c0097ac:	02610593          	addi	a1,sp,38
1c0097b0:	ce3e                	sw	a5,28(sp)
1c0097b2:	83074713          	xori	a4,a4,-2000
1c0097b6:	000a2783          	lw	a5,0(s4)
1c0097ba:	4601                	li	a2,0
1c0097bc:	02e11223          	sh	a4,36(sp)
1c0097c0:	86ae                	mv	a3,a1
1c0097c2:	4ea5                	li	t4,9
1c0097c4:	f647b733          	p.bclr	a4,a5,27,4
1c0097c8:	01c61513          	slli	a0,a2,0x1c
1c0097cc:	8391                	srli	a5,a5,0x4
1c0097ce:	8fc9                	or	a5,a5,a0
1c0097d0:	8211                	srli	a2,a2,0x4
1c0097d2:	05770e13          	addi	t3,a4,87 # ffff8057 <pulp__FC+0xffff8058>
1c0097d6:	03070893          	addi	a7,a4,48
1c0097da:	00c7e333          	or	t1,a5,a2
1c0097de:	00eefa63          	bleu	a4,t4,1c0097f2 <pos_libc_prf+0xc52>
1c0097e2:	01c68023          	sb	t3,0(a3)
1c0097e6:	00168513          	addi	a0,a3,1
1c0097ea:	00030a63          	beqz	t1,1c0097fe <pos_libc_prf+0xc5e>
1c0097ee:	86aa                	mv	a3,a0
1c0097f0:	bfd1                	j	1c0097c4 <pos_libc_prf+0xc24>
1c0097f2:	01168023          	sb	a7,0(a3)
1c0097f6:	00168513          	addi	a0,a3,1
1c0097fa:	fe031ae3          	bnez	t1,1c0097ee <pos_libc_prf+0xc4e>
1c0097fe:	00050023          	sb	zero,0(a0)
1c009802:	8d0d                	sub	a0,a0,a1
1c009804:	00d5fe63          	bleu	a3,a1,1c009820 <pos_libc_prf+0xc80>
1c009808:	87b6                	mv	a5,a3
1c00980a:	86ae                	mv	a3,a1
1c00980c:	0006c603          	lbu	a2,0(a3)
1c009810:	0007c703          	lbu	a4,0(a5)
1c009814:	fec78fab          	p.sb	a2,-1(a5!)
1c009818:	00e680ab          	p.sb	a4,1(a3!)
1c00981c:	fef6e8e3          	bltu	a3,a5,1c00980c <pos_libc_prf+0xc6c>
1c009820:	4789                	li	a5,2
1c009822:	00250913          	addi	s2,a0,2
1c009826:	c23e                	sw	a5,4(sp)
1c009828:	dfcff06f          	j	1c008e24 <pos_libc_prf+0x284>
1c00982c:	85de                	mv	a1,s7
1c00982e:	02500513          	li	a0,37
1c009832:	9982                	jalr	s3
1c009834:	cff52163          	p.beqimm	a0,-1,1c008d16 <pos_libc_prf+0x176>
1c009838:	85de                	mv	a1,s7
1c00983a:	856e                	mv	a0,s11
1c00983c:	9982                	jalr	s3
1c00983e:	cdf52c63          	p.beqimm	a0,-1,1c008d16 <pos_libc_prf+0x176>
1c009842:	0a89                	addi	s5,s5,2
1c009844:	b9aff06f          	j	1c008bde <pos_libc_prf+0x3e>
1c009848:	007a0893          	addi	a7,s4,7
1c00984c:	c408b8b3          	p.bclr	a7,a7,2,0
1c009850:	0008a783          	lw	a5,0(a7)
1c009854:	0048a303          	lw	t1,4(a7)
1c009858:	0157d693          	srli	a3,a5,0x15
1c00985c:	00b31513          	slli	a0,t1,0xb
1c009860:	08a1                	addi	a7,a7,8
1c009862:	01435813          	srli	a6,t1,0x14
1c009866:	8d55                	or	a0,a0,a3
1c009868:	ce46                	sw	a7,28(sp)
1c00986a:	e8b83833          	p.bclr	a6,a6,20,11
1c00986e:	00b79593          	slli	a1,a5,0xb
1c009872:	c1f53533          	p.bclr	a0,a0,0,31
1c009876:	1e034e63          	bltz	t1,1c009a72 <pos_libc_prf+0xed2>
1c00987a:	47b2                	lw	a5,12(sp)
1c00987c:	1c078f63          	beqz	a5,1c009a5a <pos_libc_prf+0xeba>
1c009880:	02b00793          	li	a5,43
1c009884:	02f10223          	sb	a5,36(sp)
1c009888:	02510313          	addi	t1,sp,37
1c00988c:	7ff00793          	li	a5,2047
1c009890:	18f80863          	beq	a6,a5,1c009a20 <pos_libc_prf+0xe80>
1c009894:	04600793          	li	a5,70
1c009898:	0dfdfe13          	andi	t3,s11,223
1c00989c:	32fd8e63          	beq	s11,a5,1c009bd8 <pos_libc_prf+0x1038>
1c0098a0:	41f85693          	srai	a3,a6,0x1f
1c0098a4:	00b867b3          	or	a5,a6,a1
1c0098a8:	8ec9                	or	a3,a3,a0
1c0098aa:	8fd5                	or	a5,a5,a3
1c0098ac:	8e0780e3          	beqz	a5,1c00918c <pos_libc_prf+0x5ec>
1c0098b0:	02081363          	bnez	a6,1c0098d6 <pos_libc_prf+0xd36>
1c0098b4:	01f5d793          	srli	a5,a1,0x1f
1c0098b8:	00151693          	slli	a3,a0,0x1
1c0098bc:	00d7e533          	or	a0,a5,a3
1c0098c0:	0586                	slli	a1,a1,0x1
1c0098c2:	5a054fe3          	bltz	a0,1c00a680 <pos_libc_prf+0x1ae0>
1c0098c6:	01f5d793          	srli	a5,a1,0x1f
1c0098ca:	0506                	slli	a0,a0,0x1
1c0098cc:	8d5d                	or	a0,a0,a5
1c0098ce:	187d                	addi	a6,a6,-1
1c0098d0:	0586                	slli	a1,a1,0x1
1c0098d2:	fe055ae3          	bgez	a0,1c0098c6 <pos_libc_prf+0xd26>
1c0098d6:	c0280813          	addi	a6,a6,-1022
1c0098da:	57f9                	li	a5,-2
1c0098dc:	c1f54533          	p.bset	a0,a0,0,31
1c0098e0:	4881                	li	a7,0
1c0098e2:	06f85763          	ble	a5,a6,1c009950 <pos_libc_prf+0xdb0>
1c0098e6:	33333eb7          	lui	t4,0x33333
1c0098ea:	80000f37          	lui	t5,0x80000
1c0098ee:	4881                	li	a7,0
1c0098f0:	332e8e93          	addi	t4,t4,818 # 33333332 <__l2_shared_end+0x17323086>
1c0098f4:	ffff4f13          	not	t5,t5
1c0098f8:	5ff9                	li	t6,-2
1c0098fa:	a011                	j	1c0098fe <pos_libc_prf+0xd5e>
1c0098fc:	883e                	mv	a6,a5
1c0098fe:	01f51693          	slli	a3,a0,0x1f
1c009902:	0015d713          	srli	a4,a1,0x1
1c009906:	fc15b7b3          	p.bclr	a5,a1,30,1
1c00990a:	8f55                	or	a4,a4,a3
1c00990c:	00e785b3          	add	a1,a5,a4
1c009910:	00f5b7b3          	sltu	a5,a1,a5
1c009914:	8105                	srli	a0,a0,0x1
1c009916:	953e                	add	a0,a0,a5
1c009918:	00180793          	addi	a5,a6,1
1c00991c:	feaee0e3          	bltu	t4,a0,1c0098fc <pos_libc_prf+0xd5c>
1c009920:	00259693          	slli	a3,a1,0x2
1c009924:	01e5d613          	srli	a2,a1,0x1e
1c009928:	00251713          	slli	a4,a0,0x2
1c00992c:	95b6                	add	a1,a1,a3
1c00992e:	8f51                	or	a4,a4,a2
1c009930:	953a                	add	a0,a0,a4
1c009932:	00d5b6b3          	sltu	a3,a1,a3
1c009936:	9536                	add	a0,a0,a3
1c009938:	01f5d713          	srli	a4,a1,0x1f
1c00993c:	0809                	addi	a6,a6,2
1c00993e:	18fd                	addi	a7,a7,-1
1c009940:	01e51663          	bne	a0,t5,1c00994c <pos_libc_prf+0xdac>
1c009944:	0586                	slli	a1,a1,0x1
1c009946:	fc174533          	p.bset	a0,a4,30,1
1c00994a:	883e                	mv	a6,a5
1c00994c:	fbf849e3          	blt	a6,t6,1c0098fe <pos_libc_prf+0xd5e>
1c009950:	80000f37          	lui	t5,0x80000
1c009954:	4f95                	li	t6,5
1c009956:	ffff4f13          	not	t5,t5
1c00995a:	83005de3          	blez	a6,1c009194 <pos_libc_prf+0x5f4>
1c00995e:	00258693          	addi	a3,a1,2
1c009962:	00b6b5b3          	sltu	a1,a3,a1
1c009966:	952e                	add	a0,a0,a1
1c009968:	03f557b3          	divu	a5,a0,t6
1c00996c:	00279713          	slli	a4,a5,0x2
1c009970:	973e                	add	a4,a4,a5
1c009972:	8d19                	sub	a0,a0,a4
1c009974:	01d51713          	slli	a4,a0,0x1d
1c009978:	0036d613          	srli	a2,a3,0x3
1c00997c:	8e59                	or	a2,a2,a4
1c00997e:	03f65633          	divu	a2,a2,t6
1c009982:	00361593          	slli	a1,a2,0x3
1c009986:	00561713          	slli	a4,a2,0x5
1c00998a:	972e                	add	a4,a4,a1
1c00998c:	40e68733          	sub	a4,a3,a4
1c009990:	03f75733          	divu	a4,a4,t6
1c009994:	8275                	srli	a2,a2,0x1d
1c009996:	95ba                	add	a1,a1,a4
1c009998:	97b2                	add	a5,a5,a2
1c00999a:	00e5b733          	sltu	a4,a1,a4
1c00999e:	00f70533          	add	a0,a4,a5
1c0099a2:	187d                	addi	a6,a6,-1
1c0099a4:	0885                	addi	a7,a7,1
1c0099a6:	01f5d793          	srli	a5,a1,0x1f
1c0099aa:	0506                	slli	a0,a0,0x1
1c0099ac:	8d5d                	or	a0,a0,a5
1c0099ae:	0586                	slli	a1,a1,0x1
1c0099b0:	187d                	addi	a6,a6,-1
1c0099b2:	feaf7ae3          	bleu	a0,t5,1c0099a6 <pos_libc_prf+0xe06>
1c0099b6:	b755                	j	1c00995a <pos_libc_prf+0xdba>
1c0099b8:	001d4d83          	lbu	s11,1(s10)
1c0099bc:	04c00793          	li	a5,76
1c0099c0:	0d09                	addi	s10,s10,2
1c0099c2:	ad6ff06f          	j	1c008c98 <pos_libc_prf+0xf8>
1c0099c6:	001d4d83          	lbu	s11,1(s10)
1c0099ca:	04800793          	li	a5,72
1c0099ce:	0d09                	addi	s10,s10,2
1c0099d0:	ac8ff06f          	j	1c008c98 <pos_libc_prf+0xf8>
1c0099d4:	4705                	li	a4,1
1c0099d6:	02514783          	lbu	a5,37(sp)
1c0099da:	c23a                	sw	a4,4(sp)
1c0099dc:	b3b5                	j	1c009748 <pos_libc_prf+0xba8>
1c0099de:	004a0793          	addi	a5,s4,4
1c0099e2:	ce3e                	sw	a5,28(sp)
1c0099e4:	000a2403          	lw	s0,0(s4)
1c0099e8:	4c81                	li	s9,0
1c0099ea:	e92ff06f          	j	1c00907c <pos_libc_prf+0x4dc>
1c0099ee:	4785                	li	a5,1
1c0099f0:	c23e                	sw	a5,4(sp)
1c0099f2:	c32ff06f          	j	1c008e24 <pos_libc_prf+0x284>
1c0099f6:	4742                	lw	a4,16(sp)
1c0099f8:	22070063          	beqz	a4,1c009c18 <pos_libc_prf+0x1078>
1c0099fc:	02000693          	li	a3,32
1c009a00:	02d10223          	sb	a3,36(sp)
1c009a04:	4c92                	lw	s9,4(sp)
1c009a06:	02510a13          	addi	s4,sp,37
1c009a0a:	bacff06f          	j	1c008db6 <pos_libc_prf+0x216>
1c009a0e:	04800613          	li	a2,72
1c009a12:	d8c791e3          	bne	a5,a2,1c009794 <pos_libc_prf+0xbf4>
1c009a16:	87d6                	mv	a5,s5
1c009a18:	00f68023          	sb	a5,0(a3)
1c009a1c:	9c2ff06f          	j	1c008bde <pos_libc_prf+0x3e>
1c009a20:	00a5e6b3          	or	a3,a1,a0
1c009a24:	fbfd8613          	addi	a2,s11,-65
1c009a28:	00330513          	addi	a0,t1,3
1c009a2c:	47e5                	li	a5,25
1c009a2e:	16069963          	bnez	a3,1c009ba0 <pos_libc_prf+0x1000>
1c009a32:	3ec7e1e3          	bltu	a5,a2,1c00a614 <pos_libc_prf+0x1a74>
1c009a36:	6795                	lui	a5,0x5
1c009a38:	e4978793          	addi	a5,a5,-439 # 4e49 <pos_soc_event_callback+0x4a05>
1c009a3c:	00f31023          	sh	a5,0(t1)
1c009a40:	04600793          	li	a5,70
1c009a44:	00f30123          	sb	a5,2(t1)
1c009a48:	4782                	lw	a5,0(sp)
1c009a4a:	000301a3          	sb	zero,3(t1)
1c009a4e:	8d1d                	sub	a0,a0,a5
1c009a50:	4581                	li	a1,0
1c009a52:	4c81                	li	s9,0
1c009a54:	cc02                	sw	zero,24(sp)
1c009a56:	4a01                	li	s4,0
1c009a58:	b9d9                	j	1c00972e <pos_libc_prf+0xb8e>
1c009a5a:	4742                	lw	a4,16(sp)
1c009a5c:	02410313          	addi	t1,sp,36
1c009a60:	e20706e3          	beqz	a4,1c00988c <pos_libc_prf+0xcec>
1c009a64:	02000793          	li	a5,32
1c009a68:	02f10223          	sb	a5,36(sp)
1c009a6c:	02510313          	addi	t1,sp,37
1c009a70:	bd31                	j	1c00988c <pos_libc_prf+0xcec>
1c009a72:	02d00793          	li	a5,45
1c009a76:	02f10223          	sb	a5,36(sp)
1c009a7a:	02510313          	addi	t1,sp,37
1c009a7e:	b539                	j	1c00988c <pos_libc_prf+0xcec>
1c009a80:	40f007b3          	neg	a5,a5
1c009a84:	00f036b3          	snez	a3,a5
1c009a88:	40e00cb3          	neg	s9,a4
1c009a8c:	02d00613          	li	a2,45
1c009a90:	02c10223          	sb	a2,36(sp)
1c009a94:	40dc8cb3          	sub	s9,s9,a3
1c009a98:	02510a13          	addi	s4,sp,37
1c009a9c:	b1aff06f          	j	1c008db6 <pos_libc_prf+0x216>
1c009aa0:	56f5                	li	a3,-3
1c009aa2:	0cd8c063          	blt	a7,a3,1c009b62 <pos_libc_prf+0xfc2>
1c009aa6:	0b14ce63          	blt	s1,a7,1c009b62 <pos_libc_prf+0xfc2>
1c009aaa:	4712                	lw	a4,4(sp)
1c009aac:	411484b3          	sub	s1,s1,a7
1c009ab0:	4f81                	li	t6,0
1c009ab2:	e709                	bnez	a4,1c009abc <pos_libc_prf+0xf1c>
1c009ab4:	00902fb3          	sgtz	t6,s1
1c009ab8:	0fffff93          	andi	t6,t6,255
1c009abc:	009886b3          	add	a3,a7,s1
1c009ac0:	2e06cae3          	bltz	a3,1c00a5b4 <pos_libc_prf+0x1a14>
1c009ac4:	4741                	li	a4,16
1c009ac6:	04e6cf33          	p.min	t5,a3,a4
1c009aca:	1f7d                	addi	t5,t5,-1
1c009acc:	06600d93          	li	s11,102
1c009ad0:	f0069a63          	bnez	a3,1c0091e4 <pos_libc_prf+0x644>
1c009ad4:	4501                	li	a0,0
1c009ad6:	080006b7          	lui	a3,0x8000
1c009ada:	f76ff06f          	j	1c009250 <pos_libc_prf+0x6b0>
1c009ade:	86aa                	mv	a3,a0
1c009ae0:	01b6812b          	p.sb	s11,2(a3!) # 8000002 <__l1_heap_size+0x7fc002a>
1c009ae4:	2408c6e3          	bltz	a7,1c00a530 <pos_libc_prf+0x1990>
1c009ae8:	02b00793          	li	a5,43
1c009aec:	00f500a3          	sb	a5,1(a0)
1c009af0:	06300793          	li	a5,99
1c009af4:	0117de63          	ble	a7,a5,1c009b10 <pos_libc_prf+0xf70>
1c009af8:	06400693          	li	a3,100
1c009afc:	02d8c7b3          	div	a5,a7,a3
1c009b00:	03078793          	addi	a5,a5,48
1c009b04:	02d8e8b3          	rem	a7,a7,a3
1c009b08:	00f50123          	sb	a5,2(a0)
1c009b0c:	00350693          	addi	a3,a0,3
1c009b10:	47a9                	li	a5,10
1c009b12:	02f8c633          	div	a2,a7,a5
1c009b16:	02f8e7b3          	rem	a5,a7,a5
1c009b1a:	03060613          	addi	a2,a2,48
1c009b1e:	8536                	mv	a0,a3
1c009b20:	00c5012b          	p.sb	a2,2(a0!)
1c009b24:	03078793          	addi	a5,a5,48
1c009b28:	00f680a3          	sb	a5,1(a3)
1c009b2c:	beed                	j	1c009726 <pos_libc_prf+0xb86>
1c009b2e:	800004b7          	lui	s1,0x80000
1c009b32:	fff4c493          	not	s1,s1
1c009b36:	c3cff06f          	j	1c008f72 <pos_libc_prf+0x3d2>
1c009b3a:	85e6                	mv	a1,s9
1c009b3c:	cc02                	sw	zero,24(sp)
1c009b3e:	4a01                	li	s4,0
1c009b40:	bee9                	j	1c00971a <pos_libc_prf+0xb7a>
1c009b42:	4901                	li	s2,0
1c009b44:	1054                	addi	a3,sp,36
1c009b46:	d60ff06f          	j	1c0090a6 <pos_libc_prf+0x506>
1c009b4a:	007a0793          	addi	a5,s4,7
1c009b4e:	c407b7b3          	p.bclr	a5,a5,2,0
1c009b52:	00878713          	addi	a4,a5,8
1c009b56:	ce3a                	sw	a4,28(sp)
1c009b58:	4380                	lw	s0,0(a5)
1c009b5a:	0047ac83          	lw	s9,4(a5)
1c009b5e:	d1eff06f          	j	1c00907c <pos_libc_prf+0x4dc>
1c009b62:	ffed8613          	addi	a2,s11,-2
1c009b66:	0ff67d93          	andi	s11,a2,255
1c009b6a:	220486e3          	beqz	s1,1c00a596 <pos_libc_prf+0x19f6>
1c009b6e:	4712                	lw	a4,4(sp)
1c009b70:	fff48693          	addi	a3,s1,-1 # 7fffffff <pulp__FC+0x80000000>
1c009b74:	1e071fe3          	bnez	a4,1c00a572 <pos_libc_prf+0x19d2>
1c009b78:	00d02fb3          	sgtz	t6,a3
1c009b7c:	0fffff93          	andi	t6,t6,255
1c009b80:	84b6                	mv	s1,a3
1c009b82:	e56ff06f          	j	1c0091d8 <pos_libc_prf+0x638>
1c009b86:	007a0693          	addi	a3,s4,7
1c009b8a:	c406b6b3          	p.bclr	a3,a3,2,0
1c009b8e:	00868793          	addi	a5,a3,8
1c009b92:	ce3e                	sw	a5,28(sp)
1c009b94:	429c                	lw	a5,0(a3)
1c009b96:	42d4                	lw	a3,4(a3)
1c009b98:	c236                	sw	a3,4(sp)
1c009b9a:	8736                	mv	a4,a3
1c009b9c:	a02ff06f          	j	1c008d9e <pos_libc_prf+0x1fe>
1c009ba0:	24c7efe3          	bltu	a5,a2,1c00a5fe <pos_libc_prf+0x1a5e>
1c009ba4:	6791                	lui	a5,0x4
1c009ba6:	14e78793          	addi	a5,a5,334 # 414e <pos_soc_event_callback+0x3d0a>
1c009baa:	00f31023          	sh	a5,0(t1)
1c009bae:	04e00793          	li	a5,78
1c009bb2:	00f30123          	sb	a5,2(t1)
1c009bb6:	bd49                	j	1c009a48 <pos_libc_prf+0xea8>
1c009bb8:	02e00793          	li	a5,46
1c009bbc:	00f300a3          	sb	a5,1(t1)
1c009bc0:	00230793          	addi	a5,t1,2
1c009bc4:	f6904163          	bgtz	s1,1c009326 <pos_libc_prf+0x786>
1c009bc8:	8ca6                	mv	s9,s1
1c009bca:	853e                	mv	a0,a5
1c009bcc:	b615                	j	1c0096f0 <pos_libc_prf+0xb50>
1c009bce:	4481                	li	s1,0
1c009bd0:	c202                	sw	zero,4(sp)
1c009bd2:	4901                	li	s2,0
1c009bd4:	a6aff06f          	j	1c008e3e <pos_libc_prf+0x29e>
1c009bd8:	04600e13          	li	t3,70
1c009bdc:	06600d93          	li	s11,102
1c009be0:	b1c1                	j	1c0098a0 <pos_libc_prf+0xd00>
1c009be2:	105c                	addi	a5,sp,36
1c009be4:	4565                	li	a0,25
1c009be6:	0017c70b          	p.lbu	a4,1(a5!)
1c009bea:	f9f70693          	addi	a3,a4,-97
1c009bee:	0ff6f693          	andi	a3,a3,255
1c009bf2:	fe070613          	addi	a2,a4,-32
1c009bf6:	00d56e63          	bltu	a0,a3,1c009c12 <pos_libc_prf+0x1072>
1c009bfa:	fec78fa3          	sb	a2,-1(a5)
1c009bfe:	0017c70b          	p.lbu	a4,1(a5!)
1c009c02:	f9f70693          	addi	a3,a4,-97
1c009c06:	0ff6f693          	andi	a3,a3,255
1c009c0a:	fe070613          	addi	a2,a4,-32
1c009c0e:	fed576e3          	bleu	a3,a0,1c009bfa <pos_libc_prf+0x105a>
1c009c12:	fb71                	bnez	a4,1c009be6 <pos_libc_prf+0x1046>
1c009c14:	d4eff06f          	j	1c009162 <pos_libc_prf+0x5c2>
1c009c18:	4c92                	lw	s9,4(sp)
1c009c1a:	02410a13          	addi	s4,sp,36
1c009c1e:	998ff06f          	j	1c008db6 <pos_libc_prf+0x216>
1c009c22:	4922                	lw	s2,8(sp)
1c009c24:	8dd2                	mv	s11,s4
1c009c26:	a029                	j	1c009c30 <pos_libc_prf+0x1090>
1c009c28:	9982                	jalr	s3
1c009c2a:	1dfd                	addi	s11,s11,-1
1c009c2c:	8ff52563          	p.beqimm	a0,-1,1c008d16 <pos_libc_prf+0x176>
1c009c30:	85de                	mv	a1,s7
1c009c32:	03000513          	li	a0,48
1c009c36:	ffb049e3          	bgtz	s11,1c009c28 <pos_libc_prf+0x1088>
1c009c3a:	41490933          	sub	s2,s2,s4
1c009c3e:	a62ff06f          	j	1c008ea0 <pos_libc_prf+0x300>
1c009c42:	4712                	lw	a4,4(sp)
1c009c44:	12070fe3          	beqz	a4,1c00a582 <pos_libc_prf+0x19e2>
1c009c48:	03000793          	li	a5,48
1c009c4c:	02f10223          	sb	a5,36(sp)
1c009c50:	019467b3          	or	a5,s0,s9
1c009c54:	14078ae3          	beqz	a5,1c00a5a8 <pos_libc_prf+0x1a08>
1c009c58:	02510593          	addi	a1,sp,37
1c009c5c:	4905                	li	s2,1
1c009c5e:	86ae                	mv	a3,a1
1c009c60:	87b6                	mv	a5,a3
1c009c62:	a011                	j	1c009c66 <pos_libc_prf+0x10c6>
1c009c64:	87b2                	mv	a5,a2
1c009c66:	01dc9613          	slli	a2,s9,0x1d
1c009c6a:	f8343733          	p.bclr	a4,s0,28,3
1c009c6e:	800d                	srli	s0,s0,0x3
1c009c70:	8c51                	or	s0,s0,a2
1c009c72:	03070713          	addi	a4,a4,48
1c009c76:	003cdc93          	srli	s9,s9,0x3
1c009c7a:	00e78023          	sb	a4,0(a5)
1c009c7e:	01946733          	or	a4,s0,s9
1c009c82:	00178613          	addi	a2,a5,1
1c009c86:	ff79                	bnez	a4,1c009c64 <pos_libc_prf+0x10c4>
1c009c88:	00060023          	sb	zero,0(a2)
1c009c8c:	8e0d                	sub	a2,a2,a1
1c009c8e:	00f6fc63          	bleu	a5,a3,1c009ca6 <pos_libc_prf+0x1106>
1c009c92:	0006c583          	lbu	a1,0(a3)
1c009c96:	0007c703          	lbu	a4,0(a5)
1c009c9a:	feb78fab          	p.sb	a1,-1(a5!)
1c009c9e:	00e680ab          	p.sb	a4,1(a3!)
1c009ca2:	fef6e8e3          	bltu	a3,a5,1c009c92 <pos_libc_prf+0x10f2>
1c009ca6:	9932                	add	s2,s2,a2
1c009ca8:	c202                	sw	zero,4(sp)
1c009caa:	97aff06f          	j	1c008e24 <pos_libc_prf+0x284>
1c009cae:	111057e3          	blez	a7,1c00a5bc <pos_libc_prf+0x1a1c>
1c009cb2:	00279e13          	slli	t3,a5,0x2
1c009cb6:	01e7df13          	srli	t5,a5,0x1e
1c009cba:	00269e93          	slli	t4,a3,0x2
1c009cbe:	00fe05b3          	add	a1,t3,a5
1c009cc2:	01df6eb3          	or	t4,t5,t4
1c009cc6:	9eb6                	add	t4,t4,a3
1c009cc8:	01c5b6b3          	sltu	a3,a1,t3
1c009ccc:	96f6                	add	a3,a3,t4
1c009cce:	01f5d793          	srli	a5,a1,0x1f
1c009cd2:	0686                	slli	a3,a3,0x1
1c009cd4:	8edd                	or	a3,a3,a5
1c009cd6:	01c6d793          	srli	a5,a3,0x1c
1c009cda:	03078793          	addi	a5,a5,48
1c009cde:	10000e37          	lui	t3,0x10000
1c009ce2:	1e7d                	addi	t3,t3,-1
1c009ce4:	00f30023          	sb	a5,0(t1)
1c009ce8:	01c6f6b3          	and	a3,a3,t3
1c009cec:	00159793          	slli	a5,a1,0x1
1c009cf0:	1618aee3          	p.beqimm	a7,1,1c00a66c <pos_libc_prf+0x1acc>
1c009cf4:	01e7df13          	srli	t5,a5,0x1e
1c009cf8:	00269e93          	slli	t4,a3,0x2
1c009cfc:	058e                	slli	a1,a1,0x3
1c009cfe:	00f58533          	add	a0,a1,a5
1c009d02:	01df6eb3          	or	t4,t5,t4
1c009d06:	9eb6                	add	t4,t4,a3
1c009d08:	00b536b3          	sltu	a3,a0,a1
1c009d0c:	96f6                	add	a3,a3,t4
1c009d0e:	01f55793          	srli	a5,a0,0x1f
1c009d12:	0686                	slli	a3,a3,0x1
1c009d14:	8edd                	or	a3,a3,a5
1c009d16:	01c6d793          	srli	a5,a3,0x1c
1c009d1a:	03078793          	addi	a5,a5,48
1c009d1e:	00f300a3          	sb	a5,1(t1)
1c009d22:	01c6f6b3          	and	a3,a3,t3
1c009d26:	00151793          	slli	a5,a0,0x1
1c009d2a:	1628a3e3          	p.beqimm	a7,2,1c00a690 <pos_libc_prf+0x1af0>
1c009d2e:	01e7df13          	srli	t5,a5,0x1e
1c009d32:	00269e93          	slli	t4,a3,0x2
1c009d36:	050e                	slli	a0,a0,0x3
1c009d38:	00f505b3          	add	a1,a0,a5
1c009d3c:	01df6eb3          	or	t4,t5,t4
1c009d40:	9eb6                	add	t4,t4,a3
1c009d42:	00a5b6b3          	sltu	a3,a1,a0
1c009d46:	96f6                	add	a3,a3,t4
1c009d48:	01f5d793          	srli	a5,a1,0x1f
1c009d4c:	0686                	slli	a3,a3,0x1
1c009d4e:	8edd                	or	a3,a3,a5
1c009d50:	01c6d793          	srli	a5,a3,0x1c
1c009d54:	03078793          	addi	a5,a5,48
1c009d58:	00f30123          	sb	a5,2(t1)
1c009d5c:	ffd88a13          	addi	s4,a7,-3
1c009d60:	00159793          	slli	a5,a1,0x1
1c009d64:	01c6f6b3          	and	a3,a3,t3
1c009d68:	134050e3          	blez	s4,1c00a688 <pos_libc_prf+0x1ae8>
1c009d6c:	01e7df13          	srli	t5,a5,0x1e
1c009d70:	00269e93          	slli	t4,a3,0x2
1c009d74:	058e                	slli	a1,a1,0x3
1c009d76:	00f58533          	add	a0,a1,a5
1c009d7a:	01df6eb3          	or	t4,t5,t4
1c009d7e:	9eb6                	add	t4,t4,a3
1c009d80:	00b536b3          	sltu	a3,a0,a1
1c009d84:	96f6                	add	a3,a3,t4
1c009d86:	01f55793          	srli	a5,a0,0x1f
1c009d8a:	0686                	slli	a3,a3,0x1
1c009d8c:	8edd                	or	a3,a3,a5
1c009d8e:	01c6d793          	srli	a5,a3,0x1c
1c009d92:	03078793          	addi	a5,a5,48
1c009d96:	00f301a3          	sb	a5,3(t1)
1c009d9a:	ffc88a13          	addi	s4,a7,-4
1c009d9e:	00151793          	slli	a5,a0,0x1
1c009da2:	01c6f6b3          	and	a3,a3,t3
1c009da6:	134056e3          	blez	s4,1c00a6d2 <pos_libc_prf+0x1b32>
1c009daa:	01e7df13          	srli	t5,a5,0x1e
1c009dae:	00269e93          	slli	t4,a3,0x2
1c009db2:	050e                	slli	a0,a0,0x3
1c009db4:	00f505b3          	add	a1,a0,a5
1c009db8:	01df6eb3          	or	t4,t5,t4
1c009dbc:	9eb6                	add	t4,t4,a3
1c009dbe:	00a5b6b3          	sltu	a3,a1,a0
1c009dc2:	96f6                	add	a3,a3,t4
1c009dc4:	01f5d793          	srli	a5,a1,0x1f
1c009dc8:	0686                	slli	a3,a3,0x1
1c009dca:	8edd                	or	a3,a3,a5
1c009dcc:	01c6d793          	srli	a5,a3,0x1c
1c009dd0:	03078793          	addi	a5,a5,48
1c009dd4:	00f30223          	sb	a5,4(t1)
1c009dd8:	ffb88a13          	addi	s4,a7,-5
1c009ddc:	00159793          	slli	a5,a1,0x1
1c009de0:	01c6f6b3          	and	a3,a3,t3
1c009de4:	0f4053e3          	blez	s4,1c00a6ca <pos_libc_prf+0x1b2a>
1c009de8:	01e7df13          	srli	t5,a5,0x1e
1c009dec:	00269e93          	slli	t4,a3,0x2
1c009df0:	058e                	slli	a1,a1,0x3
1c009df2:	00f58533          	add	a0,a1,a5
1c009df6:	01df6eb3          	or	t4,t5,t4
1c009dfa:	9eb6                	add	t4,t4,a3
1c009dfc:	00b536b3          	sltu	a3,a0,a1
1c009e00:	96f6                	add	a3,a3,t4
1c009e02:	01f55793          	srli	a5,a0,0x1f
1c009e06:	0686                	slli	a3,a3,0x1
1c009e08:	8edd                	or	a3,a3,a5
1c009e0a:	01c6d793          	srli	a5,a3,0x1c
1c009e0e:	03078793          	addi	a5,a5,48
1c009e12:	00f302a3          	sb	a5,5(t1)
1c009e16:	ffa88a13          	addi	s4,a7,-6
1c009e1a:	00151793          	slli	a5,a0,0x1
1c009e1e:	01c6f6b3          	and	a3,a3,t3
1c009e22:	0b4050e3          	blez	s4,1c00a6c2 <pos_libc_prf+0x1b22>
1c009e26:	01e7df13          	srli	t5,a5,0x1e
1c009e2a:	00269e93          	slli	t4,a3,0x2
1c009e2e:	050e                	slli	a0,a0,0x3
1c009e30:	00f505b3          	add	a1,a0,a5
1c009e34:	01df6eb3          	or	t4,t5,t4
1c009e38:	9eb6                	add	t4,t4,a3
1c009e3a:	00a5b6b3          	sltu	a3,a1,a0
1c009e3e:	96f6                	add	a3,a3,t4
1c009e40:	01f5d793          	srli	a5,a1,0x1f
1c009e44:	0686                	slli	a3,a3,0x1
1c009e46:	8edd                	or	a3,a3,a5
1c009e48:	01c6d793          	srli	a5,a3,0x1c
1c009e4c:	03078793          	addi	a5,a5,48
1c009e50:	00f30323          	sb	a5,6(t1)
1c009e54:	ff988a13          	addi	s4,a7,-7
1c009e58:	00159793          	slli	a5,a1,0x1
1c009e5c:	01c6f6b3          	and	a3,a3,t3
1c009e60:	05405de3          	blez	s4,1c00a6ba <pos_libc_prf+0x1b1a>
1c009e64:	058e                	slli	a1,a1,0x3
1c009e66:	01e7de93          	srli	t4,a5,0x1e
1c009e6a:	00269513          	slli	a0,a3,0x2
1c009e6e:	97ae                	add	a5,a5,a1
1c009e70:	00aee533          	or	a0,t4,a0
1c009e74:	9536                	add	a0,a0,a3
1c009e76:	00b7b6b3          	sltu	a3,a5,a1
1c009e7a:	96aa                	add	a3,a3,a0
1c009e7c:	01f7d593          	srli	a1,a5,0x1f
1c009e80:	0686                	slli	a3,a3,0x1
1c009e82:	8ecd                	or	a3,a3,a1
1c009e84:	01c6d593          	srli	a1,a3,0x1c
1c009e88:	03058593          	addi	a1,a1,48
1c009e8c:	0786                	slli	a5,a5,0x1
1c009e8e:	00b303a3          	sb	a1,7(t1)
1c009e92:	ff888a13          	addi	s4,a7,-8
1c009e96:	85be                	mv	a1,a5
1c009e98:	01c6f6b3          	and	a3,a3,t3
1c009e9c:	01405be3          	blez	s4,1c00a6b2 <pos_libc_prf+0x1b12>
1c009ea0:	078a                	slli	a5,a5,0x2
1c009ea2:	01e5de13          	srli	t3,a1,0x1e
1c009ea6:	00269513          	slli	a0,a3,0x2
1c009eaa:	95be                	add	a1,a1,a5
1c009eac:	00ae6533          	or	a0,t3,a0
1c009eb0:	9536                	add	a0,a0,a3
1c009eb2:	00f5b6b3          	sltu	a3,a1,a5
1c009eb6:	96aa                	add	a3,a3,a0
1c009eb8:	01f5d793          	srli	a5,a1,0x1f
1c009ebc:	0686                	slli	a3,a3,0x1
1c009ebe:	8edd                	or	a3,a3,a5
1c009ec0:	01c6d793          	srli	a5,a3,0x1c
1c009ec4:	03078793          	addi	a5,a5,48
1c009ec8:	10000e37          	lui	t3,0x10000
1c009ecc:	1e7d                	addi	t3,t3,-1
1c009ece:	00f30423          	sb	a5,8(t1)
1c009ed2:	ff788a13          	addi	s4,a7,-9
1c009ed6:	00159793          	slli	a5,a1,0x1
1c009eda:	01c6f6b3          	and	a3,a3,t3
1c009ede:	7d405663          	blez	s4,1c00a6aa <pos_libc_prf+0x1b0a>
1c009ee2:	01e7df13          	srli	t5,a5,0x1e
1c009ee6:	00269e93          	slli	t4,a3,0x2
1c009eea:	058e                	slli	a1,a1,0x3
1c009eec:	00f58533          	add	a0,a1,a5
1c009ef0:	01df6eb3          	or	t4,t5,t4
1c009ef4:	9eb6                	add	t4,t4,a3
1c009ef6:	00b536b3          	sltu	a3,a0,a1
1c009efa:	96f6                	add	a3,a3,t4
1c009efc:	01f55793          	srli	a5,a0,0x1f
1c009f00:	0686                	slli	a3,a3,0x1
1c009f02:	8edd                	or	a3,a3,a5
1c009f04:	01c6d793          	srli	a5,a3,0x1c
1c009f08:	03078793          	addi	a5,a5,48
1c009f0c:	00f304a3          	sb	a5,9(t1)
1c009f10:	ff688a13          	addi	s4,a7,-10
1c009f14:	00151793          	slli	a5,a0,0x1
1c009f18:	01c6f6b3          	and	a3,a3,t3
1c009f1c:	79405363          	blez	s4,1c00a6a2 <pos_libc_prf+0x1b02>
1c009f20:	01e7df13          	srli	t5,a5,0x1e
1c009f24:	00269e93          	slli	t4,a3,0x2
1c009f28:	050e                	slli	a0,a0,0x3
1c009f2a:	00f505b3          	add	a1,a0,a5
1c009f2e:	01df6eb3          	or	t4,t5,t4
1c009f32:	9eb6                	add	t4,t4,a3
1c009f34:	00a5b6b3          	sltu	a3,a1,a0
1c009f38:	96f6                	add	a3,a3,t4
1c009f3a:	01f5d793          	srli	a5,a1,0x1f
1c009f3e:	0686                	slli	a3,a3,0x1
1c009f40:	8edd                	or	a3,a3,a5
1c009f42:	01c6d793          	srli	a5,a3,0x1c
1c009f46:	03078793          	addi	a5,a5,48
1c009f4a:	00f30523          	sb	a5,10(t1)
1c009f4e:	ff588a13          	addi	s4,a7,-11
1c009f52:	00159793          	slli	a5,a1,0x1
1c009f56:	01c6f6b3          	and	a3,a3,t3
1c009f5a:	75405063          	blez	s4,1c00a69a <pos_libc_prf+0x1afa>
1c009f5e:	01e7df13          	srli	t5,a5,0x1e
1c009f62:	00269e93          	slli	t4,a3,0x2
1c009f66:	058e                	slli	a1,a1,0x3
1c009f68:	00f58533          	add	a0,a1,a5
1c009f6c:	01df6eb3          	or	t4,t5,t4
1c009f70:	9eb6                	add	t4,t4,a3
1c009f72:	00b536b3          	sltu	a3,a0,a1
1c009f76:	96f6                	add	a3,a3,t4
1c009f78:	01f55793          	srli	a5,a0,0x1f
1c009f7c:	0686                	slli	a3,a3,0x1
1c009f7e:	8edd                	or	a3,a3,a5
1c009f80:	01c6d793          	srli	a5,a3,0x1c
1c009f84:	03078793          	addi	a5,a5,48
1c009f88:	00f305a3          	sb	a5,11(t1)
1c009f8c:	ff488a13          	addi	s4,a7,-12
1c009f90:	00151793          	slli	a5,a0,0x1
1c009f94:	01c6f6b3          	and	a3,a3,t3
1c009f98:	6f405163          	blez	s4,1c00a67a <pos_libc_prf+0x1ada>
1c009f9c:	050e                	slli	a0,a0,0x3
1c009f9e:	01e7de93          	srli	t4,a5,0x1e
1c009fa2:	00269813          	slli	a6,a3,0x2
1c009fa6:	00f505b3          	add	a1,a0,a5
1c009faa:	010ee833          	or	a6,t4,a6
1c009fae:	9836                	add	a6,a6,a3
1c009fb0:	00a5b6b3          	sltu	a3,a1,a0
1c009fb4:	96c2                	add	a3,a3,a6
1c009fb6:	01f5d793          	srli	a5,a1,0x1f
1c009fba:	0686                	slli	a3,a3,0x1
1c009fbc:	8edd                	or	a3,a3,a5
1c009fbe:	01c6d793          	srli	a5,a3,0x1c
1c009fc2:	03078793          	addi	a5,a5,48
1c009fc6:	00f30623          	sb	a5,12(t1)
1c009fca:	ff388a13          	addi	s4,a7,-13
1c009fce:	00159793          	slli	a5,a1,0x1
1c009fd2:	01c6f6b3          	and	a3,a3,t3
1c009fd6:	00d30513          	addi	a0,t1,13
1c009fda:	480d                	li	a6,3
1c009fdc:	0d405163          	blez	s4,1c00a09e <pos_libc_prf+0x14fe>
1c009fe0:	01e7de93          	srli	t4,a5,0x1e
1c009fe4:	00269813          	slli	a6,a3,0x2
1c009fe8:	058e                	slli	a1,a1,0x3
1c009fea:	00f58533          	add	a0,a1,a5
1c009fee:	010ee833          	or	a6,t4,a6
1c009ff2:	9836                	add	a6,a6,a3
1c009ff4:	00b536b3          	sltu	a3,a0,a1
1c009ff8:	96c2                	add	a3,a3,a6
1c009ffa:	01f55793          	srli	a5,a0,0x1f
1c009ffe:	0686                	slli	a3,a3,0x1
1c00a000:	8edd                	or	a3,a3,a5
1c00a002:	01c6d793          	srli	a5,a3,0x1c
1c00a006:	03078793          	addi	a5,a5,48
1c00a00a:	00f306a3          	sb	a5,13(t1)
1c00a00e:	ff288a13          	addi	s4,a7,-14
1c00a012:	00151793          	slli	a5,a0,0x1
1c00a016:	01c6f6b3          	and	a3,a3,t3
1c00a01a:	65405c63          	blez	s4,1c00a672 <pos_libc_prf+0x1ad2>
1c00a01e:	050e                	slli	a0,a0,0x3
1c00a020:	01e7de93          	srli	t4,a5,0x1e
1c00a024:	00269813          	slli	a6,a3,0x2
1c00a028:	00f505b3          	add	a1,a0,a5
1c00a02c:	010ee833          	or	a6,t4,a6
1c00a030:	9836                	add	a6,a6,a3
1c00a032:	00a5b6b3          	sltu	a3,a1,a0
1c00a036:	96c2                	add	a3,a3,a6
1c00a038:	01f5d793          	srli	a5,a1,0x1f
1c00a03c:	0686                	slli	a3,a3,0x1
1c00a03e:	8edd                	or	a3,a3,a5
1c00a040:	01c6d793          	srli	a5,a3,0x1c
1c00a044:	03078793          	addi	a5,a5,48
1c00a048:	00f30723          	sb	a5,14(t1)
1c00a04c:	ff188a13          	addi	s4,a7,-15
1c00a050:	00159793          	slli	a5,a1,0x1
1c00a054:	01c6f6b3          	and	a3,a3,t3
1c00a058:	00f30513          	addi	a0,t1,15
1c00a05c:	4805                	li	a6,1
1c00a05e:	05405063          	blez	s4,1c00a09e <pos_libc_prf+0x14fe>
1c00a062:	01e7d813          	srli	a6,a5,0x1e
1c00a066:	058e                	slli	a1,a1,0x3
1c00a068:	00269513          	slli	a0,a3,0x2
1c00a06c:	97ae                	add	a5,a5,a1
1c00a06e:	00a86533          	or	a0,a6,a0
1c00a072:	9536                	add	a0,a0,a3
1c00a074:	00b7b6b3          	sltu	a3,a5,a1
1c00a078:	96aa                	add	a3,a3,a0
1c00a07a:	01f7d593          	srli	a1,a5,0x1f
1c00a07e:	0686                	slli	a3,a3,0x1
1c00a080:	8ecd                	or	a3,a3,a1
1c00a082:	01c6d593          	srli	a1,a3,0x1c
1c00a086:	03058593          	addi	a1,a1,48
1c00a08a:	01030513          	addi	a0,t1,16
1c00a08e:	0786                	slli	a5,a5,0x1
1c00a090:	01c6f6b3          	and	a3,a3,t3
1c00a094:	00b307a3          	sb	a1,15(t1)
1c00a098:	ff088a13          	addi	s4,a7,-16
1c00a09c:	4801                	li	a6,0
1c00a09e:	4712                	lw	a4,4(sp)
1c00a0a0:	4e070663          	beqz	a4,1c00a58c <pos_libc_prf+0x19ec>
1c00a0a4:	02e00893          	li	a7,46
1c00a0a8:	01150023          	sb	a7,0(a0)
1c00a0ac:	8326                	mv	t1,s1
1c00a0ae:	cc02                	sw	zero,24(sp)
1c00a0b0:	00150593          	addi	a1,a0,1
1c00a0b4:	4881                	li	a7,0
1c00a0b6:	62605263          	blez	t1,1c00a6da <pos_libc_prf+0x1b3a>
1c00a0ba:	62080063          	beqz	a6,1c00a6da <pos_libc_prf+0x1b3a>
1c00a0be:	00279513          	slli	a0,a5,0x2
1c00a0c2:	01e7de93          	srli	t4,a5,0x1e
1c00a0c6:	00269e13          	slli	t3,a3,0x2
1c00a0ca:	97aa                	add	a5,a5,a0
1c00a0cc:	01ceee33          	or	t3,t4,t3
1c00a0d0:	96f2                	add	a3,a3,t3
1c00a0d2:	00a7beb3          	sltu	t4,a5,a0
1c00a0d6:	9eb6                	add	t4,t4,a3
1c00a0d8:	0e86                	slli	t4,t4,0x1
1c00a0da:	01f7d693          	srli	a3,a5,0x1f
1c00a0de:	01d6eeb3          	or	t4,a3,t4
1c00a0e2:	01ced693          	srli	a3,t4,0x1c
1c00a0e6:	03068693          	addi	a3,a3,48
1c00a0ea:	00d58023          	sb	a3,0(a1)
1c00a0ee:	fff30493          	addi	s1,t1,-1
1c00a0f2:	00158513          	addi	a0,a1,1
1c00a0f6:	00179693          	slli	a3,a5,0x1
1c00a0fa:	42048263          	beqz	s1,1c00a51e <pos_libc_prf+0x197e>
1c00a0fe:	42182063          	p.beqimm	a6,1,1c00a51e <pos_libc_prf+0x197e>
1c00a102:	10000e37          	lui	t3,0x10000
1c00a106:	1e7d                	addi	t3,t3,-1
1c00a108:	01cefeb3          	and	t4,t4,t3
1c00a10c:	078e                	slli	a5,a5,0x3
1c00a10e:	01e6df13          	srli	t5,a3,0x1e
1c00a112:	002e9513          	slli	a0,t4,0x2
1c00a116:	96be                	add	a3,a3,a5
1c00a118:	00af6533          	or	a0,t5,a0
1c00a11c:	9eaa                	add	t4,t4,a0
1c00a11e:	00f6b7b3          	sltu	a5,a3,a5
1c00a122:	97f6                	add	a5,a5,t4
1c00a124:	01f6d513          	srli	a0,a3,0x1f
1c00a128:	0786                	slli	a5,a5,0x1
1c00a12a:	8fc9                	or	a5,a5,a0
1c00a12c:	01c7d513          	srli	a0,a5,0x1c
1c00a130:	03050513          	addi	a0,a0,48
1c00a134:	00a580a3          	sb	a0,1(a1)
1c00a138:	ffe30493          	addi	s1,t1,-2
1c00a13c:	00258513          	addi	a0,a1,2
1c00a140:	00169e93          	slli	t4,a3,0x1
1c00a144:	01c7f7b3          	and	a5,a5,t3
1c00a148:	3c048b63          	beqz	s1,1c00a51e <pos_libc_prf+0x197e>
1c00a14c:	3c282963          	p.beqimm	a6,2,1c00a51e <pos_libc_prf+0x197e>
1c00a150:	01eedf13          	srli	t5,t4,0x1e
1c00a154:	068e                	slli	a3,a3,0x3
1c00a156:	00279513          	slli	a0,a5,0x2
1c00a15a:	9eb6                	add	t4,t4,a3
1c00a15c:	00af6533          	or	a0,t5,a0
1c00a160:	00deb6b3          	sltu	a3,t4,a3
1c00a164:	97aa                	add	a5,a5,a0
1c00a166:	97b6                	add	a5,a5,a3
1c00a168:	0786                	slli	a5,a5,0x1
1c00a16a:	01fed693          	srli	a3,t4,0x1f
1c00a16e:	8fd5                	or	a5,a5,a3
1c00a170:	01c7d693          	srli	a3,a5,0x1c
1c00a174:	03068693          	addi	a3,a3,48
1c00a178:	00d58123          	sb	a3,2(a1)
1c00a17c:	ffd30493          	addi	s1,t1,-3
1c00a180:	00358513          	addi	a0,a1,3
1c00a184:	001e9693          	slli	a3,t4,0x1
1c00a188:	01c7ff33          	and	t5,a5,t3
1c00a18c:	38905963          	blez	s1,1c00a51e <pos_libc_prf+0x197e>
1c00a190:	38382763          	p.beqimm	a6,3,1c00a51e <pos_libc_prf+0x197e>
1c00a194:	003e9513          	slli	a0,t4,0x3
1c00a198:	01e6d793          	srli	a5,a3,0x1e
1c00a19c:	002f1e93          	slli	t4,t5,0x2
1c00a1a0:	96aa                	add	a3,a3,a0
1c00a1a2:	01d7eeb3          	or	t4,a5,t4
1c00a1a6:	9efa                	add	t4,t4,t5
1c00a1a8:	00a6b7b3          	sltu	a5,a3,a0
1c00a1ac:	97f6                	add	a5,a5,t4
1c00a1ae:	01f6d513          	srli	a0,a3,0x1f
1c00a1b2:	0786                	slli	a5,a5,0x1
1c00a1b4:	8fc9                	or	a5,a5,a0
1c00a1b6:	01c7d513          	srli	a0,a5,0x1c
1c00a1ba:	03050513          	addi	a0,a0,48
1c00a1be:	00a581a3          	sb	a0,3(a1)
1c00a1c2:	ffc30493          	addi	s1,t1,-4
1c00a1c6:	00458513          	addi	a0,a1,4
1c00a1ca:	00169e93          	slli	t4,a3,0x1
1c00a1ce:	01c7fe33          	and	t3,a5,t3
1c00a1d2:	34905663          	blez	s1,1c00a51e <pos_libc_prf+0x197e>
1c00a1d6:	34482463          	p.beqimm	a6,4,1c00a51e <pos_libc_prf+0x197e>
1c00a1da:	068e                	slli	a3,a3,0x3
1c00a1dc:	01eed793          	srli	a5,t4,0x1e
1c00a1e0:	002e1513          	slli	a0,t3,0x2
1c00a1e4:	9eb6                	add	t4,t4,a3
1c00a1e6:	8d5d                	or	a0,a0,a5
1c00a1e8:	9e2a                	add	t3,t3,a0
1c00a1ea:	00deb7b3          	sltu	a5,t4,a3
1c00a1ee:	97f2                	add	a5,a5,t3
1c00a1f0:	01fed693          	srli	a3,t4,0x1f
1c00a1f4:	0786                	slli	a5,a5,0x1
1c00a1f6:	8fd5                	or	a5,a5,a3
1c00a1f8:	01c7d693          	srli	a3,a5,0x1c
1c00a1fc:	03068693          	addi	a3,a3,48
1c00a200:	00d58223          	sb	a3,4(a1)
1c00a204:	ffb30493          	addi	s1,t1,-5
1c00a208:	00558513          	addi	a0,a1,5
1c00a20c:	001e9693          	slli	a3,t4,0x1
1c00a210:	30905763          	blez	s1,1c00a51e <pos_libc_prf+0x197e>
1c00a214:	30582563          	p.beqimm	a6,5,1c00a51e <pos_libc_prf+0x197e>
1c00a218:	10000e37          	lui	t3,0x10000
1c00a21c:	1e7d                	addi	t3,t3,-1
1c00a21e:	01c7f7b3          	and	a5,a5,t3
1c00a222:	01e6de93          	srli	t4,a3,0x1e
1c00a226:	00269513          	slli	a0,a3,0x2
1c00a22a:	00279f13          	slli	t5,a5,0x2
1c00a22e:	96aa                	add	a3,a3,a0
1c00a230:	01eeef33          	or	t5,t4,t5
1c00a234:	00a6b533          	sltu	a0,a3,a0
1c00a238:	97fa                	add	a5,a5,t5
1c00a23a:	97aa                	add	a5,a5,a0
1c00a23c:	00179e93          	slli	t4,a5,0x1
1c00a240:	01f6d513          	srli	a0,a3,0x1f
1c00a244:	01d56eb3          	or	t4,a0,t4
1c00a248:	01ced793          	srli	a5,t4,0x1c
1c00a24c:	03078793          	addi	a5,a5,48
1c00a250:	00f582a3          	sb	a5,5(a1)
1c00a254:	ffa30493          	addi	s1,t1,-6
1c00a258:	00658513          	addi	a0,a1,6
1c00a25c:	00169793          	slli	a5,a3,0x1
1c00a260:	01cefeb3          	and	t4,t4,t3
1c00a264:	2a905d63          	blez	s1,1c00a51e <pos_libc_prf+0x197e>
1c00a268:	2a682b63          	p.beqimm	a6,6,1c00a51e <pos_libc_prf+0x197e>
1c00a26c:	068e                	slli	a3,a3,0x3
1c00a26e:	01e7df13          	srli	t5,a5,0x1e
1c00a272:	002e9513          	slli	a0,t4,0x2
1c00a276:	97b6                	add	a5,a5,a3
1c00a278:	00af6533          	or	a0,t5,a0
1c00a27c:	9eaa                	add	t4,t4,a0
1c00a27e:	00d7b6b3          	sltu	a3,a5,a3
1c00a282:	96f6                	add	a3,a3,t4
1c00a284:	01f7d513          	srli	a0,a5,0x1f
1c00a288:	00169e93          	slli	t4,a3,0x1
1c00a28c:	01d56eb3          	or	t4,a0,t4
1c00a290:	01ced693          	srli	a3,t4,0x1c
1c00a294:	03068693          	addi	a3,a3,48
1c00a298:	00d58323          	sb	a3,6(a1)
1c00a29c:	ff930493          	addi	s1,t1,-7
1c00a2a0:	00758513          	addi	a0,a1,7
1c00a2a4:	00179693          	slli	a3,a5,0x1
1c00a2a8:	01cefeb3          	and	t4,t4,t3
1c00a2ac:	26905963          	blez	s1,1c00a51e <pos_libc_prf+0x197e>
1c00a2b0:	26782763          	p.beqimm	a6,7,1c00a51e <pos_libc_prf+0x197e>
1c00a2b4:	078e                	slli	a5,a5,0x3
1c00a2b6:	01e6df13          	srli	t5,a3,0x1e
1c00a2ba:	002e9513          	slli	a0,t4,0x2
1c00a2be:	96be                	add	a3,a3,a5
1c00a2c0:	00af6533          	or	a0,t5,a0
1c00a2c4:	9eaa                	add	t4,t4,a0
1c00a2c6:	00f6b7b3          	sltu	a5,a3,a5
1c00a2ca:	97f6                	add	a5,a5,t4
1c00a2cc:	01f6d513          	srli	a0,a3,0x1f
1c00a2d0:	00179e93          	slli	t4,a5,0x1
1c00a2d4:	01d56eb3          	or	t4,a0,t4
1c00a2d8:	01ced793          	srli	a5,t4,0x1c
1c00a2dc:	03078793          	addi	a5,a5,48
1c00a2e0:	00f583a3          	sb	a5,7(a1)
1c00a2e4:	ff830493          	addi	s1,t1,-8
1c00a2e8:	00858513          	addi	a0,a1,8
1c00a2ec:	00169793          	slli	a5,a3,0x1
1c00a2f0:	01cefeb3          	and	t4,t4,t3
1c00a2f4:	22905563          	blez	s1,1c00a51e <pos_libc_prf+0x197e>
1c00a2f8:	22882363          	p.beqimm	a6,8,1c00a51e <pos_libc_prf+0x197e>
1c00a2fc:	01e7df13          	srli	t5,a5,0x1e
1c00a300:	068e                	slli	a3,a3,0x3
1c00a302:	002e9513          	slli	a0,t4,0x2
1c00a306:	97b6                	add	a5,a5,a3
1c00a308:	00af6533          	or	a0,t5,a0
1c00a30c:	9eaa                	add	t4,t4,a0
1c00a30e:	00d7b6b3          	sltu	a3,a5,a3
1c00a312:	96f6                	add	a3,a3,t4
1c00a314:	01f7d513          	srli	a0,a5,0x1f
1c00a318:	0686                	slli	a3,a3,0x1
1c00a31a:	8ec9                	or	a3,a3,a0
1c00a31c:	01c6d513          	srli	a0,a3,0x1c
1c00a320:	03050513          	addi	a0,a0,48
1c00a324:	00a58423          	sb	a0,8(a1)
1c00a328:	ff730493          	addi	s1,t1,-9
1c00a32c:	00958513          	addi	a0,a1,9
1c00a330:	00179f13          	slli	t5,a5,0x1
1c00a334:	01c6feb3          	and	t4,a3,t3
1c00a338:	1e905363          	blez	s1,1c00a51e <pos_libc_prf+0x197e>
1c00a33c:	1e982163          	p.beqimm	a6,9,1c00a51e <pos_libc_prf+0x197e>
1c00a340:	078e                	slli	a5,a5,0x3
1c00a342:	01ef5293          	srli	t0,t5,0x1e
1c00a346:	002e9513          	slli	a0,t4,0x2
1c00a34a:	01e786b3          	add	a3,a5,t5
1c00a34e:	00a2e533          	or	a0,t0,a0
1c00a352:	00f6b7b3          	sltu	a5,a3,a5
1c00a356:	9576                	add	a0,a0,t4
1c00a358:	97aa                	add	a5,a5,a0
1c00a35a:	0786                	slli	a5,a5,0x1
1c00a35c:	01f6d513          	srli	a0,a3,0x1f
1c00a360:	8fc9                	or	a5,a5,a0
1c00a362:	01c7d513          	srli	a0,a5,0x1c
1c00a366:	03050513          	addi	a0,a0,48
1c00a36a:	00a584a3          	sb	a0,9(a1)
1c00a36e:	ff630493          	addi	s1,t1,-10
1c00a372:	00a58513          	addi	a0,a1,10
1c00a376:	0686                	slli	a3,a3,0x1
1c00a378:	01c7f7b3          	and	a5,a5,t3
1c00a37c:	1a905163          	blez	s1,1c00a51e <pos_libc_prf+0x197e>
1c00a380:	18a82f63          	p.beqimm	a6,10,1c00a51e <pos_libc_prf+0x197e>
1c00a384:	01e6de93          	srli	t4,a3,0x1e
1c00a388:	00269513          	slli	a0,a3,0x2
1c00a38c:	00279e13          	slli	t3,a5,0x2
1c00a390:	96aa                	add	a3,a3,a0
1c00a392:	01ceee33          	or	t3,t4,t3
1c00a396:	00a6b533          	sltu	a0,a3,a0
1c00a39a:	97f2                	add	a5,a5,t3
1c00a39c:	97aa                	add	a5,a5,a0
1c00a39e:	00179e93          	slli	t4,a5,0x1
1c00a3a2:	01f6d513          	srli	a0,a3,0x1f
1c00a3a6:	01d56eb3          	or	t4,a0,t4
1c00a3aa:	01ced793          	srli	a5,t4,0x1c
1c00a3ae:	03078793          	addi	a5,a5,48
1c00a3b2:	10000e37          	lui	t3,0x10000
1c00a3b6:	1e7d                	addi	t3,t3,-1
1c00a3b8:	00f58523          	sb	a5,10(a1)
1c00a3bc:	ff530493          	addi	s1,t1,-11
1c00a3c0:	00b58513          	addi	a0,a1,11
1c00a3c4:	00169793          	slli	a5,a3,0x1
1c00a3c8:	01cefeb3          	and	t4,t4,t3
1c00a3cc:	14905963          	blez	s1,1c00a51e <pos_libc_prf+0x197e>
1c00a3d0:	14b82763          	p.beqimm	a6,11,1c00a51e <pos_libc_prf+0x197e>
1c00a3d4:	068e                	slli	a3,a3,0x3
1c00a3d6:	01e7df13          	srli	t5,a5,0x1e
1c00a3da:	002e9513          	slli	a0,t4,0x2
1c00a3de:	97b6                	add	a5,a5,a3
1c00a3e0:	00af6533          	or	a0,t5,a0
1c00a3e4:	9eaa                	add	t4,t4,a0
1c00a3e6:	00d7b6b3          	sltu	a3,a5,a3
1c00a3ea:	96f6                	add	a3,a3,t4
1c00a3ec:	01f7d513          	srli	a0,a5,0x1f
1c00a3f0:	0686                	slli	a3,a3,0x1
1c00a3f2:	8ec9                	or	a3,a3,a0
1c00a3f4:	01c6d513          	srli	a0,a3,0x1c
1c00a3f8:	03050513          	addi	a0,a0,48
1c00a3fc:	00a585a3          	sb	a0,11(a1)
1c00a400:	ff430493          	addi	s1,t1,-12
1c00a404:	00c58513          	addi	a0,a1,12
1c00a408:	00179e93          	slli	t4,a5,0x1
1c00a40c:	10905963          	blez	s1,1c00a51e <pos_libc_prf+0x197e>
1c00a410:	10c82763          	p.beqimm	a6,12,1c00a51e <pos_libc_prf+0x197e>
1c00a414:	01c6f6b3          	and	a3,a3,t3
1c00a418:	01eedf13          	srli	t5,t4,0x1e
1c00a41c:	078e                	slli	a5,a5,0x3
1c00a41e:	00269513          	slli	a0,a3,0x2
1c00a422:	9ebe                	add	t4,t4,a5
1c00a424:	00af6533          	or	a0,t5,a0
1c00a428:	96aa                	add	a3,a3,a0
1c00a42a:	00feb7b3          	sltu	a5,t4,a5
1c00a42e:	97b6                	add	a5,a5,a3
1c00a430:	01fed513          	srli	a0,t4,0x1f
1c00a434:	00179693          	slli	a3,a5,0x1
1c00a438:	8ec9                	or	a3,a3,a0
1c00a43a:	01c6d793          	srli	a5,a3,0x1c
1c00a43e:	03078793          	addi	a5,a5,48
1c00a442:	00f58623          	sb	a5,12(a1)
1c00a446:	ff330493          	addi	s1,t1,-13
1c00a44a:	00d58513          	addi	a0,a1,13
1c00a44e:	001e9793          	slli	a5,t4,0x1
1c00a452:	01c6ff33          	and	t5,a3,t3
1c00a456:	0c905463          	blez	s1,1c00a51e <pos_libc_prf+0x197e>
1c00a45a:	0cd82263          	p.beqimm	a6,13,1c00a51e <pos_libc_prf+0x197e>
1c00a45e:	003e9693          	slli	a3,t4,0x3
1c00a462:	002f1513          	slli	a0,t5,0x2
1c00a466:	01e7de93          	srli	t4,a5,0x1e
1c00a46a:	00aee533          	or	a0,t4,a0
1c00a46e:	97b6                	add	a5,a5,a3
1c00a470:	957a                	add	a0,a0,t5
1c00a472:	00d7b6b3          	sltu	a3,a5,a3
1c00a476:	96aa                	add	a3,a3,a0
1c00a478:	0686                	slli	a3,a3,0x1
1c00a47a:	01f7d513          	srli	a0,a5,0x1f
1c00a47e:	8ec9                	or	a3,a3,a0
1c00a480:	01c6d513          	srli	a0,a3,0x1c
1c00a484:	03050513          	addi	a0,a0,48
1c00a488:	00a586a3          	sb	a0,13(a1)
1c00a48c:	ff230493          	addi	s1,t1,-14
1c00a490:	00e58513          	addi	a0,a1,14
1c00a494:	00179f13          	slli	t5,a5,0x1
1c00a498:	01c6feb3          	and	t4,a3,t3
1c00a49c:	08905163          	blez	s1,1c00a51e <pos_libc_prf+0x197e>
1c00a4a0:	06e82f63          	p.beqimm	a6,14,1c00a51e <pos_libc_prf+0x197e>
1c00a4a4:	078e                	slli	a5,a5,0x3
1c00a4a6:	002e9513          	slli	a0,t4,0x2
1c00a4aa:	01ef5293          	srli	t0,t5,0x1e
1c00a4ae:	01e786b3          	add	a3,a5,t5
1c00a4b2:	00a2e533          	or	a0,t0,a0
1c00a4b6:	9576                	add	a0,a0,t4
1c00a4b8:	00f6b7b3          	sltu	a5,a3,a5
1c00a4bc:	97aa                	add	a5,a5,a0
1c00a4be:	00179e93          	slli	t4,a5,0x1
1c00a4c2:	01f6d513          	srli	a0,a3,0x1f
1c00a4c6:	01d56eb3          	or	t4,a0,t4
1c00a4ca:	01ced793          	srli	a5,t4,0x1c
1c00a4ce:	03078793          	addi	a5,a5,48
1c00a4d2:	00f58723          	sb	a5,14(a1)
1c00a4d6:	ff130493          	addi	s1,t1,-15
1c00a4da:	00f58513          	addi	a0,a1,15
1c00a4de:	00169793          	slli	a5,a3,0x1
1c00a4e2:	01cefe33          	and	t3,t4,t3
1c00a4e6:	02905c63          	blez	s1,1c00a51e <pos_libc_prf+0x197e>
1c00a4ea:	46c1                	li	a3,16
1c00a4ec:	02d81963          	bne	a6,a3,1c00a51e <pos_libc_prf+0x197e>
1c00a4f0:	00279513          	slli	a0,a5,0x2
1c00a4f4:	01e7d813          	srli	a6,a5,0x1e
1c00a4f8:	002e1693          	slli	a3,t3,0x2
1c00a4fc:	97aa                	add	a5,a5,a0
1c00a4fe:	00d866b3          	or	a3,a6,a3
1c00a502:	00a7b7b3          	sltu	a5,a5,a0
1c00a506:	9e36                	add	t3,t3,a3
1c00a508:	97f2                	add	a5,a5,t3
1c00a50a:	0786                	slli	a5,a5,0x1
1c00a50c:	83f1                	srli	a5,a5,0x1c
1c00a50e:	03078793          	addi	a5,a5,48
1c00a512:	01058513          	addi	a0,a1,16
1c00a516:	00f587a3          	sb	a5,15(a1)
1c00a51a:	ff030493          	addi	s1,t1,-16
1c00a51e:	47e2                	lw	a5,24(sp)
1c00a520:	014785b3          	add	a1,a5,s4
1c00a524:	9c0f9b63          	bnez	t6,1c0096fa <pos_libc_prf+0xb5a>
1c00a528:	95a6                	add	a1,a1,s1
1c00a52a:	8ca6                	mv	s9,s1
1c00a52c:	9faff06f          	j	1c009726 <pos_libc_prf+0xb86>
1c00a530:	02d00793          	li	a5,45
1c00a534:	411008b3          	neg	a7,a7
1c00a538:	00f500a3          	sb	a5,1(a0)
1c00a53c:	db4ff06f          	j	1c009af0 <pos_libc_prf+0xf50>
1c00a540:	41fad793          	srai	a5,s5,0x1f
1c00a544:	0156a023          	sw	s5,0(a3)
1c00a548:	c2dc                	sw	a5,4(a3)
1c00a54a:	e94fe06f          	j	1c008bde <pos_libc_prf+0x3e>
1c00a54e:	4a62                	lw	s4,24(sp)
1c00a550:	a039                	j	1c00a55e <pos_libc_prf+0x19be>
1c00a552:	9982                	jalr	s3
1c00a554:	1a7d                	addi	s4,s4,-1
1c00a556:	01f53463          	p.bneimm	a0,-1,1c00a55e <pos_libc_prf+0x19be>
1c00a55a:	fbcfe06f          	j	1c008d16 <pos_libc_prf+0x176>
1c00a55e:	85de                	mv	a1,s7
1c00a560:	03000513          	li	a0,48
1c00a564:	ff4047e3          	bgtz	s4,1c00a552 <pos_libc_prf+0x19b2>
1c00a568:	4762                	lw	a4,24(sp)
1c00a56a:	40e90933          	sub	s2,s2,a4
1c00a56e:	939fe06f          	j	1c008ea6 <pos_libc_prf+0x306>
1c00a572:	4741                	li	a4,16
1c00a574:	04e4cf33          	p.min	t5,s1,a4
1c00a578:	1f7d                	addi	t5,t5,-1
1c00a57a:	84b6                	mv	s1,a3
1c00a57c:	4f81                	li	t6,0
1c00a57e:	c67fe06f          	j	1c0091e4 <pos_libc_prf+0x644>
1c00a582:	104c                	addi	a1,sp,36
1c00a584:	4901                	li	s2,0
1c00a586:	86ae                	mv	a3,a1
1c00a588:	ed8ff06f          	j	1c009c60 <pos_libc_prf+0x10c0>
1c00a58c:	0c904463          	bgtz	s1,1c00a654 <pos_libc_prf+0x1ab4>
1c00a590:	4881                	li	a7,0
1c00a592:	cc02                	sw	zero,24(sp)
1c00a594:	b769                	j	1c00a51e <pos_libc_prf+0x197e>
1c00a596:	4712                	lw	a4,4(sp)
1c00a598:	4f81                	li	t6,0
1c00a59a:	e319                	bnez	a4,1c00a5a0 <pos_libc_prf+0x1a00>
1c00a59c:	c3dfe06f          	j	1c0091d8 <pos_libc_prf+0x638>
1c00a5a0:	4f01                	li	t5,0
1c00a5a2:	4f81                	li	t6,0
1c00a5a4:	c41fe06f          	j	1c0091e4 <pos_libc_prf+0x644>
1c00a5a8:	020102a3          	sb	zero,37(sp)
1c00a5ac:	c202                	sw	zero,4(sp)
1c00a5ae:	4905                	li	s2,1
1c00a5b0:	875fe06f          	j	1c008e24 <pos_libc_prf+0x284>
1c00a5b4:	06600d93          	li	s11,102
1c00a5b8:	d1cff06f          	j	1c009ad4 <pos_libc_prf+0xf34>
1c00a5bc:	03000593          	li	a1,48
1c00a5c0:	4712                	lw	a4,4(sp)
1c00a5c2:	00b30023          	sb	a1,0(t1)
1c00a5c6:	e335                	bnez	a4,1c00a62a <pos_libc_prf+0x1a8a>
1c00a5c8:	06905b63          	blez	s1,1c00a63e <pos_libc_prf+0x1a9e>
1c00a5cc:	02e00593          	li	a1,46
1c00a5d0:	00b300a3          	sb	a1,1(t1)
1c00a5d4:	00230513          	addi	a0,t1,2
1c00a5d8:	4841                	li	a6,16
1c00a5da:	08088363          	beqz	a7,1c00a660 <pos_libc_prf+0x1ac0>
1c00a5de:	41100733          	neg	a4,a7
1c00a5e2:	04974733          	p.min	a4,a4,s1
1c00a5e6:	cc3a                	sw	a4,24(sp)
1c00a5e8:	40e48333          	sub	t1,s1,a4
1c00a5ec:	85aa                	mv	a1,a0
1c00a5ee:	4a01                	li	s4,0
1c00a5f0:	4841                	li	a6,16
1c00a5f2:	ac6044e3          	bgtz	t1,1c00a0ba <pos_libc_prf+0x151a>
1c00a5f6:	a0d5                	j	1c00a6da <pos_libc_prf+0x1b3a>
1c00a5f8:	4a72                	lw	s4,28(sp)
1c00a5fa:	de4fe06f          	j	1c008bde <pos_libc_prf+0x3e>
1c00a5fe:	6799                	lui	a5,0x6
1c00a600:	16e78793          	addi	a5,a5,366 # 616e <pos_soc_event_callback+0x5d2a>
1c00a604:	00f31023          	sh	a5,0(t1)
1c00a608:	06e00793          	li	a5,110
1c00a60c:	00f30123          	sb	a5,2(t1)
1c00a610:	c38ff06f          	j	1c009a48 <pos_libc_prf+0xea8>
1c00a614:	679d                	lui	a5,0x7
1c00a616:	e6978793          	addi	a5,a5,-407 # 6e69 <pos_soc_event_callback+0x6a25>
1c00a61a:	00f31023          	sh	a5,0(t1)
1c00a61e:	06600793          	li	a5,102
1c00a622:	00f30123          	sb	a5,2(t1)
1c00a626:	c22ff06f          	j	1c009a48 <pos_libc_prf+0xea8>
1c00a62a:	02e00593          	li	a1,46
1c00a62e:	00b300a3          	sb	a1,1(t1)
1c00a632:	00230513          	addi	a0,t1,2
1c00a636:	00088763          	beqz	a7,1c00a644 <pos_libc_prf+0x1aa4>
1c00a63a:	fa9042e3          	bgtz	s1,1c00a5de <pos_libc_prf+0x1a3e>
1c00a63e:	4a01                	li	s4,0
1c00a640:	cc02                	sw	zero,24(sp)
1c00a642:	bdf1                	j	1c00a51e <pos_libc_prf+0x197e>
1c00a644:	fe905de3          	blez	s1,1c00a63e <pos_libc_prf+0x1a9e>
1c00a648:	85aa                	mv	a1,a0
1c00a64a:	4a01                	li	s4,0
1c00a64c:	cc02                	sw	zero,24(sp)
1c00a64e:	8326                	mv	t1,s1
1c00a650:	4841                	li	a6,16
1c00a652:	b4b5                	j	1c00a0be <pos_libc_prf+0x151e>
1c00a654:	02e00593          	li	a1,46
1c00a658:	00b50023          	sb	a1,0(a0)
1c00a65c:	88d2                	mv	a7,s4
1c00a65e:	0505                	addi	a0,a0,1
1c00a660:	8a46                	mv	s4,a7
1c00a662:	85aa                	mv	a1,a0
1c00a664:	8326                	mv	t1,s1
1c00a666:	cc02                	sw	zero,24(sp)
1c00a668:	4881                	li	a7,0
1c00a66a:	bc81                	j	1c00a0ba <pos_libc_prf+0x151a>
1c00a66c:	4a01                	li	s4,0
1c00a66e:	483d                	li	a6,15
1c00a670:	b43d                	j	1c00a09e <pos_libc_prf+0x14fe>
1c00a672:	00e30513          	addi	a0,t1,14
1c00a676:	4809                	li	a6,2
1c00a678:	b41d                	j	1c00a09e <pos_libc_prf+0x14fe>
1c00a67a:	00c30513          	addi	a0,t1,12
1c00a67e:	b405                	j	1c00a09e <pos_libc_prf+0x14fe>
1c00a680:	c0200813          	li	a6,-1022
1c00a684:	a62ff06f          	j	1c0098e6 <pos_libc_prf+0xd46>
1c00a688:	00330513          	addi	a0,t1,3
1c00a68c:	4835                	li	a6,13
1c00a68e:	bc01                	j	1c00a09e <pos_libc_prf+0x14fe>
1c00a690:	00230513          	addi	a0,t1,2
1c00a694:	4a01                	li	s4,0
1c00a696:	4839                	li	a6,14
1c00a698:	b419                	j	1c00a09e <pos_libc_prf+0x14fe>
1c00a69a:	00b30513          	addi	a0,t1,11
1c00a69e:	4815                	li	a6,5
1c00a6a0:	bafd                	j	1c00a09e <pos_libc_prf+0x14fe>
1c00a6a2:	00a30513          	addi	a0,t1,10
1c00a6a6:	4819                	li	a6,6
1c00a6a8:	badd                	j	1c00a09e <pos_libc_prf+0x14fe>
1c00a6aa:	00930513          	addi	a0,t1,9
1c00a6ae:	481d                	li	a6,7
1c00a6b0:	b2fd                	j	1c00a09e <pos_libc_prf+0x14fe>
1c00a6b2:	00830513          	addi	a0,t1,8
1c00a6b6:	4821                	li	a6,8
1c00a6b8:	b2dd                	j	1c00a09e <pos_libc_prf+0x14fe>
1c00a6ba:	00730513          	addi	a0,t1,7
1c00a6be:	4825                	li	a6,9
1c00a6c0:	baf9                	j	1c00a09e <pos_libc_prf+0x14fe>
1c00a6c2:	00630513          	addi	a0,t1,6
1c00a6c6:	4829                	li	a6,10
1c00a6c8:	bad9                	j	1c00a09e <pos_libc_prf+0x14fe>
1c00a6ca:	00530513          	addi	a0,t1,5
1c00a6ce:	482d                	li	a6,11
1c00a6d0:	b2f9                	j	1c00a09e <pos_libc_prf+0x14fe>
1c00a6d2:	00430513          	addi	a0,t1,4
1c00a6d6:	4831                	li	a6,12
1c00a6d8:	b2d9                	j	1c00a09e <pos_libc_prf+0x14fe>
1c00a6da:	849a                	mv	s1,t1
1c00a6dc:	852e                	mv	a0,a1
1c00a6de:	b581                	j	1c00a51e <pos_libc_prf+0x197e>
1c00a6e0:	41990933          	sub	s2,s2,s9
1c00a6e4:	8f3fe06f          	j	1c008fd6 <pos_libc_prf+0x436>
1c00a6e8:	00d78513          	addi	a0,a5,13
1c00a6ec:	804ff06f          	j	1c0096f0 <pos_libc_prf+0xb50>
1c00a6f0:	00c78513          	addi	a0,a5,12
1c00a6f4:	ffdfe06f          	j	1c0096f0 <pos_libc_prf+0xb50>
1c00a6f8:	00b78513          	addi	a0,a5,11
1c00a6fc:	ff5fe06f          	j	1c0096f0 <pos_libc_prf+0xb50>
1c00a700:	00978513          	addi	a0,a5,9
1c00a704:	fedfe06f          	j	1c0096f0 <pos_libc_prf+0xb50>
1c00a708:	00878513          	addi	a0,a5,8
1c00a70c:	fe5fe06f          	j	1c0096f0 <pos_libc_prf+0xb50>
1c00a710:	00778513          	addi	a0,a5,7
1c00a714:	fddfe06f          	j	1c0096f0 <pos_libc_prf+0xb50>
1c00a718:	00678513          	addi	a0,a5,6
1c00a71c:	fd5fe06f          	j	1c0096f0 <pos_libc_prf+0xb50>
1c00a720:	00578513          	addi	a0,a5,5
1c00a724:	fcdfe06f          	j	1c0096f0 <pos_libc_prf+0xb50>
1c00a728:	00478513          	addi	a0,a5,4
1c00a72c:	fc5fe06f          	j	1c0096f0 <pos_libc_prf+0xb50>
1c00a730:	00378513          	addi	a0,a5,3
1c00a734:	fbdfe06f          	j	1c0096f0 <pos_libc_prf+0xb50>
1c00a738:	00278513          	addi	a0,a5,2
1c00a73c:	fb5fe06f          	j	1c0096f0 <pos_libc_prf+0xb50>
1c00a740:	00178513          	addi	a0,a5,1
1c00a744:	4c81                	li	s9,0
1c00a746:	fabfe06f          	j	1c0096f0 <pos_libc_prf+0xb50>

1c00a74a <pos_init_start>:
1c00a74a:	1141                	addi	sp,sp,-16
1c00a74c:	c422                	sw	s0,8(sp)
1c00a74e:	1c001437          	lui	s0,0x1c001
1c00a752:	c606                	sw	ra,12(sp)
1c00a754:	84840413          	addi	s0,s0,-1976 # 1c000848 <ctor_list>
1c00a758:	2445                	jal	1c00a9f8 <pos_irq_init>
1c00a75a:	984fe0ef          	jal	ra,1c0088de <pos_soc_init>
1c00a75e:	24f1                	jal	1c00aa2a <pos_soc_event_init>
1c00a760:	2a6d                	jal	1c00a91a <pos_allocs_init>
1c00a762:	284d                	jal	1c00a814 <pos_sched_init>
1c00a764:	405c                	lw	a5,4(s0)
1c00a766:	c791                	beqz	a5,1c00a772 <pos_init_start+0x28>
1c00a768:	0421                	addi	s0,s0,8
1c00a76a:	9782                	jalr	a5
1c00a76c:	0044278b          	p.lw	a5,4(s0!)
1c00a770:	ffed                	bnez	a5,1c00a76a <pos_init_start+0x20>
1c00a772:	b96fe0ef          	jal	ra,1c008b08 <pos_io_start>
1c00a776:	300467f3          	csrrsi	a5,mstatus,8
1c00a77a:	40b2                	lw	ra,12(sp)
1c00a77c:	4422                	lw	s0,8(sp)
1c00a77e:	0141                	addi	sp,sp,16
1c00a780:	8082                	ret

1c00a782 <pos_init_stop>:
1c00a782:	1141                	addi	sp,sp,-16
1c00a784:	c422                	sw	s0,8(sp)
1c00a786:	1c001437          	lui	s0,0x1c001
1c00a78a:	c606                	sw	ra,12(sp)
1c00a78c:	86040413          	addi	s0,s0,-1952 # 1c000860 <dtor_list>
1c00a790:	bbcfe0ef          	jal	ra,1c008b4c <pos_io_stop>
1c00a794:	405c                	lw	a5,4(s0)
1c00a796:	c791                	beqz	a5,1c00a7a2 <pos_init_stop+0x20>
1c00a798:	0421                	addi	s0,s0,8
1c00a79a:	9782                	jalr	a5
1c00a79c:	0044278b          	p.lw	a5,4(s0!)
1c00a7a0:	ffed                	bnez	a5,1c00a79a <pos_init_stop+0x18>
1c00a7a2:	40b2                	lw	ra,12(sp)
1c00a7a4:	4422                	lw	s0,8(sp)
1c00a7a6:	0141                	addi	sp,sp,16
1c00a7a8:	8082                	ret

1c00a7aa <pos_cbsys_add>:
1c00a7aa:	00259793          	slli	a5,a1,0x2
1c00a7ae:	1c0015b7          	lui	a1,0x1c001
1c00a7b2:	1e058593          	addi	a1,a1,480 # 1c0011e0 <stack>
1c00a7b6:	95be                	add	a1,a1,a5
1c00a7b8:	419c                	lw	a5,0(a1)
1c00a7ba:	c110                	sw	a2,0(a0)
1c00a7bc:	c154                	sw	a3,4(a0)
1c00a7be:	c51c                	sw	a5,8(a0)
1c00a7c0:	c188                	sw	a0,0(a1)
1c00a7c2:	8082                	ret

1c00a7c4 <pi_open_from_conf>:
1c00a7c4:	c14c                	sw	a1,4(a0)
1c00a7c6:	8082                	ret

1c00a7c8 <pos_task_handle_blocking>:
1c00a7c8:	4785                	li	a5,1
1c00a7ca:	00f50a23          	sb	a5,20(a0)
1c00a7ce:	8082                	ret

1c00a7d0 <pos_task_handle>:
1c00a7d0:	1141                	addi	sp,sp,-16
1c00a7d2:	c422                	sw	s0,8(sp)
1c00a7d4:	01c00413          	li	s0,28
1c00a7d8:	401c                	lw	a5,0(s0)
1c00a7da:	c606                	sw	ra,12(sp)
1c00a7dc:	c385                	beqz	a5,1c00a7fc <pos_task_handle+0x2c>
1c00a7de:	4394                	lw	a3,0(a5)
1c00a7e0:	43d8                	lw	a4,4(a5)
1c00a7e2:	c014                	sw	a3,0(s0)
1c00a7e4:	4788                	lw	a0,8(a5)
1c00a7e6:	300467f3          	csrrsi	a5,mstatus,8
1c00a7ea:	9702                	jalr	a4
1c00a7ec:	300477f3          	csrrci	a5,mstatus,8
1c00a7f0:	401c                	lw	a5,0(s0)
1c00a7f2:	f7f5                	bnez	a5,1c00a7de <pos_task_handle+0xe>
1c00a7f4:	40b2                	lw	ra,12(sp)
1c00a7f6:	4422                	lw	s0,8(sp)
1c00a7f8:	0141                	addi	sp,sp,16
1c00a7fa:	8082                	ret
1c00a7fc:	10500073          	wfi
1c00a800:	300467f3          	csrrsi	a5,mstatus,8
1c00a804:	300477f3          	csrrci	a5,mstatus,8
1c00a808:	401c                	lw	a5,0(s0)
1c00a80a:	fbf1                	bnez	a5,1c00a7de <pos_task_handle+0xe>
1c00a80c:	40b2                	lw	ra,12(sp)
1c00a80e:	4422                	lw	s0,8(sp)
1c00a810:	0141                	addi	sp,sp,16
1c00a812:	8082                	ret

1c00a814 <pos_sched_init>:
1c00a814:	00002e23          	sw	zero,28(zero) # 1c <pos_sched_first>
1c00a818:	8082                	ret

1c00a81a <pos_alloc_init>:
1c00a81a:	00758793          	addi	a5,a1,7
1c00a81e:	c407b7b3          	p.bclr	a5,a5,2,0
1c00a822:	40b785b3          	sub	a1,a5,a1
1c00a826:	c11c                	sw	a5,0(a0)
1c00a828:	8e0d                	sub	a2,a2,a1
1c00a82a:	00c05763          	blez	a2,1c00a838 <pos_alloc_init+0x1e>
1c00a82e:	c4063633          	p.bclr	a2,a2,2,0
1c00a832:	c390                	sw	a2,0(a5)
1c00a834:	0007a223          	sw	zero,4(a5)
1c00a838:	8082                	ret

1c00a83a <pos_alloc>:
1c00a83a:	4110                	lw	a2,0(a0)
1c00a83c:	059d                	addi	a1,a1,7
1c00a83e:	c405b5b3          	p.bclr	a1,a1,2,0
1c00a842:	ca31                	beqz	a2,1c00a896 <pos_alloc+0x5c>
1c00a844:	4218                	lw	a4,0(a2)
1c00a846:	425c                	lw	a5,4(a2)
1c00a848:	02b75963          	ble	a1,a4,1c00a87a <pos_alloc+0x40>
1c00a84c:	cb81                	beqz	a5,1c00a85c <pos_alloc+0x22>
1c00a84e:	4398                	lw	a4,0(a5)
1c00a850:	43d4                	lw	a3,4(a5)
1c00a852:	00b75763          	ble	a1,a4,1c00a860 <pos_alloc+0x26>
1c00a856:	863e                	mv	a2,a5
1c00a858:	87b6                	mv	a5,a3
1c00a85a:	fbf5                	bnez	a5,1c00a84e <pos_alloc+0x14>
1c00a85c:	853e                	mv	a0,a5
1c00a85e:	8082                	ret
1c00a860:	00b70a63          	beq	a4,a1,1c00a874 <pos_alloc+0x3a>
1c00a864:	00b78533          	add	a0,a5,a1
1c00a868:	8f0d                	sub	a4,a4,a1
1c00a86a:	c118                	sw	a4,0(a0)
1c00a86c:	c154                	sw	a3,4(a0)
1c00a86e:	c248                	sw	a0,4(a2)
1c00a870:	853e                	mv	a0,a5
1c00a872:	8082                	ret
1c00a874:	c254                	sw	a3,4(a2)
1c00a876:	853e                	mv	a0,a5
1c00a878:	8082                	ret
1c00a87a:	00e58b63          	beq	a1,a4,1c00a890 <pos_alloc+0x56>
1c00a87e:	00b606b3          	add	a3,a2,a1
1c00a882:	8f0d                	sub	a4,a4,a1
1c00a884:	c2dc                	sw	a5,4(a3)
1c00a886:	c298                	sw	a4,0(a3)
1c00a888:	87b2                	mv	a5,a2
1c00a88a:	c114                	sw	a3,0(a0)
1c00a88c:	853e                	mv	a0,a5
1c00a88e:	8082                	ret
1c00a890:	c11c                	sw	a5,0(a0)
1c00a892:	87b2                	mv	a5,a2
1c00a894:	b7e1                	j	1c00a85c <pos_alloc+0x22>
1c00a896:	4781                	li	a5,0
1c00a898:	b7d1                	j	1c00a85c <pos_alloc+0x22>

1c00a89a <pos_free>:
1c00a89a:	4118                	lw	a4,0(a0)
1c00a89c:	061d                	addi	a2,a2,7
1c00a89e:	c4063633          	p.bclr	a2,a2,2,0
1c00a8a2:	c729                	beqz	a4,1c00a8ec <pos_free+0x52>
1c00a8a4:	00b76663          	bltu	a4,a1,1c00a8b0 <pos_free+0x16>
1c00a8a8:	a0a1                	j	1c00a8f0 <pos_free+0x56>
1c00a8aa:	00b7f563          	bleu	a1,a5,1c00a8b4 <pos_free+0x1a>
1c00a8ae:	873e                	mv	a4,a5
1c00a8b0:	435c                	lw	a5,4(a4)
1c00a8b2:	ffe5                	bnez	a5,1c00a8aa <pos_free+0x10>
1c00a8b4:	00c586b3          	add	a3,a1,a2
1c00a8b8:	02d78463          	beq	a5,a3,1c00a8e0 <pos_free+0x46>
1c00a8bc:	c190                	sw	a2,0(a1)
1c00a8be:	c1dc                	sw	a5,4(a1)
1c00a8c0:	cf11                	beqz	a4,1c00a8dc <pos_free+0x42>
1c00a8c2:	431c                	lw	a5,0(a4)
1c00a8c4:	00f706b3          	add	a3,a4,a5
1c00a8c8:	00d58463          	beq	a1,a3,1c00a8d0 <pos_free+0x36>
1c00a8cc:	c34c                	sw	a1,4(a4)
1c00a8ce:	8082                	ret
1c00a8d0:	4194                	lw	a3,0(a1)
1c00a8d2:	41d0                	lw	a2,4(a1)
1c00a8d4:	97b6                	add	a5,a5,a3
1c00a8d6:	c31c                	sw	a5,0(a4)
1c00a8d8:	c350                	sw	a2,4(a4)
1c00a8da:	8082                	ret
1c00a8dc:	c10c                	sw	a1,0(a0)
1c00a8de:	8082                	ret
1c00a8e0:	4394                	lw	a3,0(a5)
1c00a8e2:	43dc                	lw	a5,4(a5)
1c00a8e4:	9636                	add	a2,a2,a3
1c00a8e6:	c190                	sw	a2,0(a1)
1c00a8e8:	c1dc                	sw	a5,4(a1)
1c00a8ea:	bfd9                	j	1c00a8c0 <pos_free+0x26>
1c00a8ec:	4781                	li	a5,0
1c00a8ee:	b7d9                	j	1c00a8b4 <pos_free+0x1a>
1c00a8f0:	87ba                	mv	a5,a4
1c00a8f2:	4701                	li	a4,0
1c00a8f4:	b7c1                	j	1c00a8b4 <pos_free+0x1a>

1c00a8f6 <pos_alloc_init_l1>:
1c00a8f6:	1c0017b7          	lui	a5,0x1c001
1c00a8fa:	22c7a703          	lw	a4,556(a5) # 1c00122c <pos_alloc_l1>
1c00a8fe:	100007b7          	lui	a5,0x10000
1c00a902:	01651593          	slli	a1,a0,0x16
1c00a906:	00040637          	lui	a2,0x40
1c00a90a:	050a                	slli	a0,a0,0x2
1c00a90c:	02878793          	addi	a5,a5,40 # 10000028 <__l1_end>
1c00a910:	fd860613          	addi	a2,a2,-40 # 3ffd8 <__l1_heap_size>
1c00a914:	95be                	add	a1,a1,a5
1c00a916:	953a                	add	a0,a0,a4
1c00a918:	b709                	j	1c00a81a <pos_alloc_init>

1c00a91a <pos_allocs_init>:
1c00a91a:	1141                	addi	sp,sp,-16
1c00a91c:	1c0015b7          	lui	a1,0x1c001
1c00a920:	c606                	sw	ra,12(sp)
1c00a922:	c422                	sw	s0,8(sp)
1c00a924:	25858793          	addi	a5,a1,600 # 1c001258 <__l2_priv0_end>
1c00a928:	1c008637          	lui	a2,0x1c008
1c00a92c:	04c7c363          	blt	a5,a2,1c00a972 <pos_allocs_init+0x58>
1c00a930:	4581                	li	a1,0
1c00a932:	4601                	li	a2,0
1c00a934:	1c001437          	lui	s0,0x1c001
1c00a938:	23040513          	addi	a0,s0,560 # 1c001230 <pos_alloc_l2>
1c00a93c:	3df9                	jal	1c00a81a <pos_alloc_init>
1c00a93e:	1c0105b7          	lui	a1,0x1c010
1c00a942:	2ac58793          	addi	a5,a1,684 # 1c0102ac <__l2_shared_end>
1c00a946:	1c200637          	lui	a2,0x1c200
1c00a94a:	1c001537          	lui	a0,0x1c001
1c00a94e:	8e1d                	sub	a2,a2,a5
1c00a950:	2ac58593          	addi	a1,a1,684
1c00a954:	23450513          	addi	a0,a0,564 # 1c001234 <pos_alloc_l2+0x4>
1c00a958:	35c9                	jal	1c00a81a <pos_alloc_init>
1c00a95a:	23040513          	addi	a0,s0,560
1c00a95e:	4591                	li	a1,4
1c00a960:	3de9                	jal	1c00a83a <pos_alloc>
1c00a962:	40b2                	lw	ra,12(sp)
1c00a964:	4422                	lw	s0,8(sp)
1c00a966:	1c0017b7          	lui	a5,0x1c001
1c00a96a:	22a7a623          	sw	a0,556(a5) # 1c00122c <pos_alloc_l1>
1c00a96e:	0141                	addi	sp,sp,16
1c00a970:	8082                	ret
1c00a972:	8e1d                	sub	a2,a2,a5
1c00a974:	25858593          	addi	a1,a1,600
1c00a978:	bf75                	j	1c00a934 <pos_allocs_init+0x1a>

1c00a97a <pi_cl_l1_malloc>:
1c00a97a:	4781                	li	a5,0
1c00a97c:	c509                	beqz	a0,1c00a986 <pi_cl_l1_malloc+0xc>
1c00a97e:	451c                	lw	a5,8(a0)
1c00a980:	01c7c783          	lbu	a5,28(a5)
1c00a984:	078a                	slli	a5,a5,0x2
1c00a986:	1c001737          	lui	a4,0x1c001
1c00a98a:	22c72503          	lw	a0,556(a4) # 1c00122c <pos_alloc_l1>
1c00a98e:	953e                	add	a0,a0,a5
1c00a990:	b56d                	j	1c00a83a <pos_alloc>

1c00a992 <pi_cl_l1_free>:
1c00a992:	4781                	li	a5,0
1c00a994:	c509                	beqz	a0,1c00a99e <pi_cl_l1_free+0xc>
1c00a996:	451c                	lw	a5,8(a0)
1c00a998:	01c7c783          	lbu	a5,28(a5)
1c00a99c:	078a                	slli	a5,a5,0x2
1c00a99e:	1c001737          	lui	a4,0x1c001
1c00a9a2:	22c72503          	lw	a0,556(a4) # 1c00122c <pos_alloc_l1>
1c00a9a6:	953e                	add	a0,a0,a5
1c00a9a8:	bdcd                	j	1c00a89a <pos_free>

1c00a9aa <pos_irq_set_handler>:
1c00a9aa:	f14027f3          	csrr	a5,mhartid
1c00a9ae:	477d                	li	a4,31
1c00a9b0:	ca5797b3          	p.extractu	a5,a5,5,5
1c00a9b4:	02e78d63          	beq	a5,a4,1c00a9ee <pos_irq_set_handler+0x44>
1c00a9b8:	002007b7          	lui	a5,0x200
1c00a9bc:	43b8                	lw	a4,64(a5)
1c00a9be:	050a                	slli	a0,a0,0x2
1c00a9c0:	8d89                	sub	a1,a1,a0
1c00a9c2:	8d99                	sub	a1,a1,a4
1c00a9c4:	c14586b3          	p.extract	a3,a1,0,20
1c00a9c8:	06f00793          	li	a5,111
1c00a9cc:	c1f6a7b3          	p.insert	a5,a3,0,31
1c00a9d0:	d21586b3          	p.extract	a3,a1,9,1
1c00a9d4:	d356a7b3          	p.insert	a5,a3,9,21
1c00a9d8:	c0b586b3          	p.extract	a3,a1,0,11
1c00a9dc:	c146a7b3          	p.insert	a5,a3,0,20
1c00a9e0:	cec585b3          	p.extract	a1,a1,7,12
1c00a9e4:	cec5a7b3          	p.insert	a5,a1,7,12
1c00a9e8:	00f56723          	p.sw	a5,a4(a0)
1c00a9ec:	8082                	ret
1c00a9ee:	30502773          	csrr	a4,mtvec
1c00a9f2:	c0073733          	p.bclr	a4,a4,0,0
1c00a9f6:	b7e1                	j	1c00a9be <pos_irq_set_handler+0x14>

1c00a9f8 <pos_irq_init>:
1c00a9f8:	f1402773          	csrr	a4,mhartid
1c00a9fc:	1a10a7b7          	lui	a5,0x1a10a
1c00aa00:	56fd                	li	a3,-1
1c00aa02:	80d7a423          	sw	a3,-2040(a5) # 1a109808 <_emram_start+0x99097e8>
1c00aa06:	ca571733          	p.extractu	a4,a4,5,5
1c00aa0a:	1c0087b7          	lui	a5,0x1c008
1c00aa0e:	46fd                	li	a3,31
1c00aa10:	00078793          	mv	a5,a5
1c00aa14:	00d70663          	beq	a4,a3,1c00aa20 <pos_irq_init+0x28>
1c00aa18:	00200737          	lui	a4,0x200
1c00aa1c:	c33c                	sw	a5,64(a4)
1c00aa1e:	8082                	ret
1c00aa20:	c007c7b3          	p.bset	a5,a5,0,0
1c00aa24:	30579073          	csrw	mtvec,a5
1c00aa28:	8082                	ret

1c00aa2a <pos_soc_event_init>:
1c00aa2a:	1a1067b7          	lui	a5,0x1a106
1c00aa2e:	1141                	addi	sp,sp,-16
1c00aa30:	c606                	sw	ra,12(sp)
1c00aa32:	577d                	li	a4,-1
1c00aa34:	00478693          	addi	a3,a5,4 # 1a106004 <_emram_start+0x9905fe4>
1c00aa38:	c298                	sw	a4,0(a3)
1c00aa3a:	00878693          	addi	a3,a5,8
1c00aa3e:	c298                	sw	a4,0(a3)
1c00aa40:	00c78693          	addi	a3,a5,12
1c00aa44:	c298                	sw	a4,0(a3)
1c00aa46:	01078693          	addi	a3,a5,16
1c00aa4a:	c298                	sw	a4,0(a3)
1c00aa4c:	01478693          	addi	a3,a5,20
1c00aa50:	c298                	sw	a4,0(a3)
1c00aa52:	01878693          	addi	a3,a5,24
1c00aa56:	c298                	sw	a4,0(a3)
1c00aa58:	01c78693          	addi	a3,a5,28
1c00aa5c:	c298                	sw	a4,0(a3)
1c00aa5e:	02078793          	addi	a5,a5,32
1c00aa62:	1c00b5b7          	lui	a1,0x1c00b
1c00aa66:	c398                	sw	a4,0(a5)
1c00aa68:	3fe58593          	addi	a1,a1,1022 # 1c00b3fe <pos_soc_event_handler_asm>
1c00aa6c:	4569                	li	a0,26
1c00aa6e:	3f35                	jal	1c00a9aa <pos_irq_set_handler>
1c00aa70:	40b2                	lw	ra,12(sp)
1c00aa72:	1a10a7b7          	lui	a5,0x1a10a
1c00aa76:	04000737          	lui	a4,0x4000
1c00aa7a:	80e7a223          	sw	a4,-2044(a5) # 1a109804 <_emram_start+0x99097e4>
1c00aa7e:	0141                	addi	sp,sp,16
1c00aa80:	8082                	ret

1c00aa82 <pos_time_poweroff>:
1c00aa82:	1a10b7b7          	lui	a5,0x1a10b
1c00aa86:	0791                	addi	a5,a5,4
1c00aa88:	0087a783          	lw	a5,8(a5) # 1a10b008 <_emram_start+0x990afe8>
1c00aa8c:	1c001737          	lui	a4,0x1c001
1c00aa90:	1ef72c23          	sw	a5,504(a4) # 1c0011f8 <pos_time_timer_count>
1c00aa94:	4501                	li	a0,0
1c00aa96:	8082                	ret

1c00aa98 <pos_time_poweron>:
1c00aa98:	1c0017b7          	lui	a5,0x1c001
1c00aa9c:	1f87a703          	lw	a4,504(a5) # 1c0011f8 <pos_time_timer_count>
1c00aaa0:	1a10b7b7          	lui	a5,0x1a10b
1c00aaa4:	0791                	addi	a5,a5,4
1c00aaa6:	00e7a423          	sw	a4,8(a5) # 1a10b008 <_emram_start+0x990afe8>
1c00aaaa:	4501                	li	a0,0
1c00aaac:	8082                	ret

1c00aaae <pos_time_timer_handler>:
1c00aaae:	1c0018b7          	lui	a7,0x1c001
1c00aab2:	1f888893          	addi	a7,a7,504 # 1c0011f8 <pos_time_timer_count>
1c00aab6:	0048a783          	lw	a5,4(a7)
1c00aaba:	1a10b637          	lui	a2,0x1a10b
1c00aabe:	0611                	addi	a2,a2,4
1c00aac0:	00862603          	lw	a2,8(a2) # 1a10b008 <_emram_start+0x990afe8>
1c00aac4:	cba9                	beqz	a5,1c00ab16 <pos_time_timer_handler+0x68>
1c00aac6:	5fd8                	lw	a4,60(a5)
1c00aac8:	800005b7          	lui	a1,0x80000
1c00aacc:	40e60733          	sub	a4,a2,a4
1c00aad0:	ffe5c593          	xori	a1,a1,-2
1c00aad4:	0ae5e763          	bltu	a1,a4,1c00ab82 <pos_time_timer_handler+0xd4>
1c00aad8:	01c02803          	lw	a6,28(zero) # 1c <pos_sched_first>
1c00aadc:	02002503          	lw	a0,32(zero) # 20 <pos_sched_last>
1c00aae0:	4398                	lw	a4,0(a5)
1c00aae2:	0007a023          	sw	zero,0(a5)
1c00aae6:	4301                	li	t1,0
1c00aae8:	02080063          	beqz	a6,1c00ab08 <pos_time_timer_handler+0x5a>
1c00aaec:	c11c                	sw	a5,0(a0)
1c00aaee:	c305                	beqz	a4,1c00ab0e <pos_time_timer_handler+0x60>
1c00aaf0:	5f54                	lw	a3,60(a4)
1c00aaf2:	853e                	mv	a0,a5
1c00aaf4:	40d606b3          	sub	a3,a2,a3
1c00aaf8:	04d5e763          	bltu	a1,a3,1c00ab46 <pos_time_timer_handler+0x98>
1c00aafc:	87ba                	mv	a5,a4
1c00aafe:	4398                	lw	a4,0(a5)
1c00ab00:	0007a023          	sw	zero,0(a5)
1c00ab04:	fe0814e3          	bnez	a6,1c00aaec <pos_time_timer_handler+0x3e>
1c00ab08:	883e                	mv	a6,a5
1c00ab0a:	4305                	li	t1,1
1c00ab0c:	f375                	bnez	a4,1c00aaf0 <pos_time_timer_handler+0x42>
1c00ab0e:	06031c63          	bnez	t1,1c00ab86 <pos_time_timer_handler+0xd8>
1c00ab12:	02f02023          	sw	a5,32(zero) # 20 <pos_sched_last>
1c00ab16:	1a10b7b7          	lui	a5,0x1a10b
1c00ab1a:	08100713          	li	a4,129
1c00ab1e:	0791                	addi	a5,a5,4
1c00ab20:	0008a223          	sw	zero,4(a7)
1c00ab24:	00e7a023          	sw	a4,0(a5) # 1a10b000 <_emram_start+0x990afe0>
1c00ab28:	f14027f3          	csrr	a5,mhartid
1c00ab2c:	477d                	li	a4,31
1c00ab2e:	ca5797b3          	p.extractu	a5,a5,5,5
1c00ab32:	04e78063          	beq	a5,a4,1c00ab72 <pos_time_timer_handler+0xc4>
1c00ab36:	6785                	lui	a5,0x1
1c00ab38:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3bc>
1c00ab3c:	00204737          	lui	a4,0x204
1c00ab40:	02f72423          	sw	a5,40(a4) # 204028 <__l1_heap_size+0x1c4050>
1c00ab44:	8082                	ret
1c00ab46:	04031363          	bnez	t1,1c00ab8c <pos_time_timer_handler+0xde>
1c00ab4a:	02f02023          	sw	a5,32(zero) # 20 <pos_sched_last>
1c00ab4e:	1a10b7b7          	lui	a5,0x1a10b
1c00ab52:	0791                	addi	a5,a5,4
1c00ab54:	00e8a223          	sw	a4,4(a7)
1c00ab58:	0087a683          	lw	a3,8(a5) # 1a10b008 <_emram_start+0x990afe8>
1c00ab5c:	5f58                	lw	a4,60(a4)
1c00ab5e:	40c70633          	sub	a2,a4,a2
1c00ab62:	9636                	add	a2,a2,a3
1c00ab64:	00c7a823          	sw	a2,16(a5)
1c00ab68:	08500713          	li	a4,133
1c00ab6c:	00e7a023          	sw	a4,0(a5)
1c00ab70:	8082                	ret
1c00ab72:	6785                	lui	a5,0x1
1c00ab74:	1a10a737          	lui	a4,0x1a10a
1c00ab78:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3bc>
1c00ab7c:	80f72a23          	sw	a5,-2028(a4) # 1a109814 <_emram_start+0x99097f4>
1c00ab80:	8082                	ret
1c00ab82:	873e                	mv	a4,a5
1c00ab84:	b7e9                	j	1c00ab4e <pos_time_timer_handler+0xa0>
1c00ab86:	01002e23          	sw	a6,28(zero) # 1c <pos_sched_first>
1c00ab8a:	b761                	j	1c00ab12 <pos_time_timer_handler+0x64>
1c00ab8c:	01002e23          	sw	a6,28(zero) # 1c <pos_sched_first>
1c00ab90:	bf6d                	j	1c00ab4a <pos_time_timer_handler+0x9c>

1c00ab92 <pos_time_init>:
1c00ab92:	1141                	addi	sp,sp,-16
1c00ab94:	c422                	sw	s0,8(sp)
1c00ab96:	1a10b7b7          	lui	a5,0x1a10b
1c00ab9a:	1c001437          	lui	s0,0x1c001
1c00ab9e:	c606                	sw	ra,12(sp)
1c00aba0:	1f840413          	addi	s0,s0,504 # 1c0011f8 <pos_time_timer_count>
1c00aba4:	08300713          	li	a4,131
1c00aba8:	0791                	addi	a5,a5,4
1c00abaa:	00042223          	sw	zero,4(s0)
1c00abae:	00e7a023          	sw	a4,0(a5) # 1a10b000 <_emram_start+0x990afe0>
1c00abb2:	1c00b5b7          	lui	a1,0x1c00b
1c00abb6:	3da58593          	addi	a1,a1,986 # 1c00b3da <pos_time_timer_handler_asm>
1c00abba:	452d                	li	a0,11
1c00abbc:	33fd                	jal	1c00a9aa <pos_irq_set_handler>
1c00abbe:	6785                	lui	a5,0x1
1c00abc0:	1a10a737          	lui	a4,0x1a10a
1c00abc4:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3bc>
1c00abc8:	1c00b637          	lui	a2,0x1c00b
1c00abcc:	00840513          	addi	a0,s0,8
1c00abd0:	4681                	li	a3,0
1c00abd2:	a8260613          	addi	a2,a2,-1406 # 1c00aa82 <pos_time_poweroff>
1c00abd6:	4589                	li	a1,2
1c00abd8:	80f72223          	sw	a5,-2044(a4) # 1a109804 <_emram_start+0x99097e4>
1c00abdc:	36f9                	jal	1c00a7aa <pos_cbsys_add>
1c00abde:	01840513          	addi	a0,s0,24
1c00abe2:	4422                	lw	s0,8(sp)
1c00abe4:	40b2                	lw	ra,12(sp)
1c00abe6:	1c00b637          	lui	a2,0x1c00b
1c00abea:	4681                	li	a3,0
1c00abec:	a9860613          	addi	a2,a2,-1384 # 1c00aa98 <pos_time_poweron>
1c00abf0:	458d                	li	a1,3
1c00abf2:	0141                	addi	sp,sp,16
1c00abf4:	be5d                	j	1c00a7aa <pos_cbsys_add>

1c00abf6 <pi_uart_conf_init>:
1c00abf6:	67f1                	lui	a5,0x1c
1c00abf8:	20078793          	addi	a5,a5,512 # 1c200 <pos_soc_event_callback+0x1bdbc>
1c00abfc:	c11c                	sw	a5,0(a0)
1c00abfe:	4785                	li	a5,1
1c00ac00:	00f51223          	sh	a5,4(a0)
1c00ac04:	10100793          	li	a5,257
1c00ac08:	00f513a3          	sh	a5,7(a0)
1c00ac0c:	000504a3          	sb	zero,9(a0)
1c00ac10:	8082                	ret

1c00ac12 <pi_uart_open>:
1c00ac12:	7179                	addi	sp,sp,-48
1c00ac14:	d606                	sw	ra,44(sp)
1c00ac16:	d422                	sw	s0,40(sp)
1c00ac18:	d226                	sw	s1,36(sp)
1c00ac1a:	d04a                	sw	s2,32(sp)
1c00ac1c:	ce4e                	sw	s3,28(sp)
1c00ac1e:	cc52                	sw	s4,24(sp)
1c00ac20:	ca56                	sw	s5,20(sp)
1c00ac22:	c85a                	sw	s6,16(sp)
1c00ac24:	c65e                	sw	s7,12(sp)
1c00ac26:	c462                	sw	s8,8(sp)
1c00ac28:	c266                	sw	s9,4(sp)
1c00ac2a:	300479f3          	csrrci	s3,mstatus,8
1c00ac2e:	4154                	lw	a3,4(a0)
1c00ac30:	1c0107b7          	lui	a5,0x1c010
1c00ac34:	0096c483          	lbu	s1,9(a3)
1c00ac38:	25078913          	addi	s2,a5,592 # 1c010250 <pos_uart>
1c00ac3c:	00349a93          	slli	s5,s1,0x3
1c00ac40:	409a8b33          	sub	s6,s5,s1
1c00ac44:	0b0e                	slli	s6,s6,0x3
1c00ac46:	01690a33          	add	s4,s2,s6
1c00ac4a:	000a2703          	lw	a4,0(s4)
1c00ac4e:	00249413          	slli	s0,s1,0x2
1c00ac52:	0006ac03          	lw	s8,0(a3)
1c00ac56:	01452423          	sw	s4,8(a0)
1c00ac5a:	00140b93          	addi	s7,s0,1
1c00ac5e:	e315                	bnez	a4,1c00ac82 <pi_uart_open+0x70>
1c00ac60:	00149c93          	slli	s9,s1,0x1
1c00ac64:	024b0513          	addi	a0,s6,36
1c00ac68:	8622                	mv	a2,s0
1c00ac6a:	85e6                	mv	a1,s9
1c00ac6c:	954a                	add	a0,a0,s2
1c00ac6e:	240d                	jal	1c00ae90 <pos_udma_create_channel>
1c00ac70:	010b0513          	addi	a0,s6,16
1c00ac74:	865e                	mv	a2,s7
1c00ac76:	001c8593          	addi	a1,s9,1
1c00ac7a:	954a                	add	a0,a0,s2
1c00ac7c:	2c11                	jal	1c00ae90 <pos_udma_create_channel>
1c00ac7e:	000a2703          	lw	a4,0(s4)
1c00ac82:	409a87b3          	sub	a5,s5,s1
1c00ac86:	078e                	slli	a5,a5,0x3
1c00ac88:	97ca                	add	a5,a5,s2
1c00ac8a:	0705                	addi	a4,a4,1
1c00ac8c:	c398                	sw	a4,0(a5)
1c00ac8e:	c3c0                	sw	s0,4(a5)
1c00ac90:	0187a423          	sw	s8,8(a5)
1c00ac94:	1a102737          	lui	a4,0x1a102
1c00ac98:	4314                	lw	a3,0(a4)
1c00ac9a:	4605                	li	a2,1
1c00ac9c:	1a1065b7          	lui	a1,0x1a106
1c00aca0:	009614b3          	sll	s1,a2,s1
1c00aca4:	40545793          	srai	a5,s0,0x5
1c00aca8:	00458813          	addi	a6,a1,4 # 1a106004 <_emram_start+0x9905fe4>
1c00acac:	8cd5                	or	s1,s1,a3
1c00acae:	078a                	slli	a5,a5,0x2
1c00acb0:	0a97222b          	p.sw	s1,164(a4!) # 1a1020a4 <_emram_start+0x9902084>
1c00acb4:	010788b3          	add	a7,a5,a6
1c00acb8:	0008a503          	lw	a0,0(a7)
1c00acbc:	00861433          	sll	s0,a2,s0
1c00acc0:	fff44413          	not	s0,s0
1c00acc4:	405bd693          	srai	a3,s7,0x5
1c00acc8:	8d61                	and	a0,a0,s0
1c00acca:	068a                	slli	a3,a3,0x2
1c00accc:	00a8a023          	sw	a0,0(a7)
1c00acd0:	96c2                	add	a3,a3,a6
1c00acd2:	4288                	lw	a0,0(a3)
1c00acd4:	01761633          	sll	a2,a2,s7
1c00acd8:	fff64613          	not	a2,a2
1c00acdc:	8e69                	and	a2,a2,a0
1c00acde:	04458593          	addi	a1,a1,68
1c00ace2:	c290                	sw	a2,0(a3)
1c00ace4:	97ae                	add	a5,a5,a1
1c00ace6:	4394                	lw	a3,0(a5)
1c00ace8:	8c75                	and	s0,s0,a3
1c00acea:	c380                	sw	s0,0(a5)
1c00acec:	008a2683          	lw	a3,8(s4)
1c00acf0:	00802603          	lw	a2,8(zero) # 8 <pos_cluster_pool>
1c00acf4:	0016d793          	srli	a5,a3,0x1
1c00acf8:	97b2                	add	a5,a5,a2
1c00acfa:	02d7d7b3          	divu	a5,a5,a3
1c00acfe:	004a2683          	lw	a3,4(s4)
1c00ad02:	17fd                	addi	a5,a5,-1
1c00ad04:	07c2                	slli	a5,a5,0x10
1c00ad06:	3067e793          	ori	a5,a5,774
1c00ad0a:	069e                	slli	a3,a3,0x7
1c00ad0c:	00f766a3          	p.sw	a5,a3(a4)
1c00ad10:	30099073          	csrw	mstatus,s3
1c00ad14:	50b2                	lw	ra,44(sp)
1c00ad16:	5422                	lw	s0,40(sp)
1c00ad18:	5492                	lw	s1,36(sp)
1c00ad1a:	5902                	lw	s2,32(sp)
1c00ad1c:	49f2                	lw	s3,28(sp)
1c00ad1e:	4a62                	lw	s4,24(sp)
1c00ad20:	4ad2                	lw	s5,20(sp)
1c00ad22:	4b42                	lw	s6,16(sp)
1c00ad24:	4bb2                	lw	s7,12(sp)
1c00ad26:	4c22                	lw	s8,8(sp)
1c00ad28:	4c92                	lw	s9,4(sp)
1c00ad2a:	4501                	li	a0,0
1c00ad2c:	6145                	addi	sp,sp,48
1c00ad2e:	8082                	ret

1c00ad30 <pi_uart_close>:
1c00ad30:	30047e73          	csrrci	t3,mstatus,8
1c00ad34:	00852303          	lw	t1,8(a0)
1c00ad38:	1a1026b7          	lui	a3,0x1a102
1c00ad3c:	00432783          	lw	a5,4(t1)
1c00ad40:	00032603          	lw	a2,0(t1)
1c00ad44:	079e                	slli	a5,a5,0x7
1c00ad46:	09068693          	addi	a3,a3,144 # 1a102090 <_emram_start+0x9902070>
1c00ad4a:	00d78733          	add	a4,a5,a3
1c00ad4e:	167d                	addi	a2,a2,-1
1c00ad50:	00c32023          	sw	a2,0(t1)
1c00ad54:	0721                	addi	a4,a4,8
1c00ad56:	4318                	lw	a4,0(a4)
1c00ad58:	8b41                	andi	a4,a4,16
1c00ad5a:	cf01                	beqz	a4,1c00ad72 <pi_uart_close+0x42>
1c00ad5c:	10500073          	wfi
1c00ad60:	00432783          	lw	a5,4(t1)
1c00ad64:	079e                	slli	a5,a5,0x7
1c00ad66:	00d78733          	add	a4,a5,a3
1c00ad6a:	0721                	addi	a4,a4,8
1c00ad6c:	4318                	lw	a4,0(a4)
1c00ad6e:	8b41                	andi	a4,a4,16
1c00ad70:	f775                	bnez	a4,1c00ad5c <pi_uart_close+0x2c>
1c00ad72:	1a102737          	lui	a4,0x1a102
1c00ad76:	0a070713          	addi	a4,a4,160 # 1a1020a0 <_emram_start+0x9902080>
1c00ad7a:	97ba                	add	a5,a5,a4
1c00ad7c:	4398                	lw	a4,0(a5)
1c00ad7e:	fc173733          	p.bclr	a4,a4,30,1
1c00ad82:	ff6d                	bnez	a4,1c00ad7c <pi_uart_close+0x4c>
1c00ad84:	f14026f3          	csrr	a3,mhartid
1c00ad88:	1a10a8b7          	lui	a7,0x1a10a
1c00ad8c:	80488593          	addi	a1,a7,-2044 # 1a109804 <_emram_start+0x99097e4>
1c00ad90:	80888613          	addi	a2,a7,-2040
1c00ad94:	03200713          	li	a4,50
1c00ad98:	ca5696b3          	p.extractu	a3,a3,5,5
1c00ad9c:	457d                	li	a0,31
1c00ad9e:	6791                	lui	a5,0x4
1c00ada0:	00204837          	lui	a6,0x204
1c00ada4:	81488893          	addi	a7,a7,-2028
1c00ada8:	04a68363          	beq	a3,a0,1c00adee <pi_uart_close+0xbe>
1c00adac:	02f82423          	sw	a5,40(a6) # 204028 <__l1_heap_size+0x1c4050>
1c00adb0:	c19c                	sw	a5,0(a1)
1c00adb2:	10500073          	wfi
1c00adb6:	c21c                	sw	a5,0(a2)
1c00adb8:	177d                	addi	a4,a4,-1
1c00adba:	f77d                	bnez	a4,1c00ada8 <pi_uart_close+0x78>
1c00adbc:	00432783          	lw	a5,4(t1)
1c00adc0:	1a102737          	lui	a4,0x1a102
1c00adc4:	00500637          	lui	a2,0x500
1c00adc8:	0a470693          	addi	a3,a4,164 # 1a1020a4 <_emram_start+0x9902084>
1c00adcc:	079e                	slli	a5,a5,0x7
1c00adce:	0619                	addi	a2,a2,6
1c00add0:	00c7e6a3          	p.sw	a2,a3(a5)
1c00add4:	00432603          	lw	a2,4(t1)
1c00add8:	4785                	li	a5,1
1c00adda:	4314                	lw	a3,0(a4)
1c00addc:	00c797b3          	sll	a5,a5,a2
1c00ade0:	fff7c793          	not	a5,a5
1c00ade4:	8ff5                	and	a5,a5,a3
1c00ade6:	c31c                	sw	a5,0(a4)
1c00ade8:	300e1073          	csrw	mstatus,t3
1c00adec:	8082                	ret
1c00adee:	00f8a023          	sw	a5,0(a7)
1c00adf2:	bf7d                	j	1c00adb0 <pi_uart_close+0x80>

1c00adf4 <pi_uart_write>:
1c00adf4:	4508                	lw	a0,8(a0)
1c00adf6:	1c00a7b7          	lui	a5,0x1c00a
1c00adfa:	715d                	addi	sp,sp,-80
1c00adfc:	7c878793          	addi	a5,a5,1992 # 1c00a7c8 <pos_task_handle_blocking>
1c00ae00:	86b2                	mv	a3,a2
1c00ae02:	c23e                	sw	a5,4(sp)
1c00ae04:	862e                	mv	a2,a1
1c00ae06:	00010793          	mv	a5,sp
1c00ae0a:	4701                	li	a4,0
1c00ae0c:	0541                	addi	a0,a0,16
1c00ae0e:	858a                	mv	a1,sp
1c00ae10:	c686                	sw	ra,76(sp)
1c00ae12:	c4a2                	sw	s0,72(sp)
1c00ae14:	c43e                	sw	a5,8(sp)
1c00ae16:	00010a23          	sb	zero,20(sp)
1c00ae1a:	285d                	jal	1c00aed0 <pos_udma_enqueue>
1c00ae1c:	30047473          	csrrci	s0,mstatus,8
1c00ae20:	01410783          	lb	a5,20(sp)
1c00ae24:	e789                	bnez	a5,1c00ae2e <pi_uart_write+0x3a>
1c00ae26:	326d                	jal	1c00a7d0 <pos_task_handle>
1c00ae28:	01410783          	lb	a5,20(sp)
1c00ae2c:	dfed                	beqz	a5,1c00ae26 <pi_uart_write+0x32>
1c00ae2e:	30041073          	csrw	mstatus,s0
1c00ae32:	40b6                	lw	ra,76(sp)
1c00ae34:	4426                	lw	s0,72(sp)
1c00ae36:	4501                	li	a0,0
1c00ae38:	6161                	addi	sp,sp,80
1c00ae3a:	8082                	ret

1c00ae3c <pos_uart_init>:
1c00ae3c:	1c0107b7          	lui	a5,0x1c010
1c00ae40:	2407a823          	sw	zero,592(a5) # 1c010250 <pos_uart>
1c00ae44:	8082                	ret

1c00ae46 <pos_udma_handle_copy>:
1c00ae46:	41d4                	lw	a3,4(a1)
1c00ae48:	459c                	lw	a5,8(a1)
1c00ae4a:	4198                	lw	a4,0(a1)
1c00ae4c:	c194                	sw	a3,0(a1)
1c00ae4e:	cf95                	beqz	a5,1c00ae8a <pos_udma_handle_copy+0x44>
1c00ae50:	4390                	lw	a2,0(a5)
1c00ae52:	4994                	lw	a3,16(a1)
1c00ae54:	4fc8                	lw	a0,28(a5)
1c00ae56:	c590                	sw	a2,8(a1)
1c00ae58:	c1dc                	sw	a5,4(a1)
1c00ae5a:	5390                	lw	a2,32(a5)
1c00ae5c:	87b6                	mv	a5,a3
1c00ae5e:	00a7a22b          	p.sw	a0,4(a5!)
1c00ae62:	c390                	sw	a2,0(a5)
1c00ae64:	06a1                	addi	a3,a3,8
1c00ae66:	47c1                	li	a5,16
1c00ae68:	c29c                	sw	a5,0(a3)
1c00ae6a:	01c02683          	lw	a3,28(zero) # 1c <pos_sched_first>
1c00ae6e:	00072023          	sw	zero,0(a4)
1c00ae72:	c699                	beqz	a3,1c00ae80 <pos_udma_handle_copy+0x3a>
1c00ae74:	02002683          	lw	a3,32(zero) # 20 <pos_sched_last>
1c00ae78:	c298                	sw	a4,0(a3)
1c00ae7a:	02e02023          	sw	a4,32(zero) # 20 <pos_sched_last>
1c00ae7e:	8082                	ret
1c00ae80:	00e02e23          	sw	a4,28(zero) # 1c <pos_sched_first>
1c00ae84:	02e02023          	sw	a4,32(zero) # 20 <pos_sched_last>
1c00ae88:	8082                	ret
1c00ae8a:	0005a223          	sw	zero,4(a1)
1c00ae8e:	bff1                	j	1c00ae6a <pos_udma_handle_copy+0x24>

1c00ae90 <pos_udma_create_channel>:
1c00ae90:	4015d793          	srai	a5,a1,0x1
1c00ae94:	1a102837          	lui	a6,0x1a102
1c00ae98:	08080813          	addi	a6,a6,128 # 1a102080 <_emram_start+0x9902060>
1c00ae9c:	079e                	slli	a5,a5,0x7
1c00ae9e:	97c2                	add	a5,a5,a6
1c00aea0:	0592                	slli	a1,a1,0x4
1c00aea2:	1c00b837          	lui	a6,0x1c00b
1c00aea6:	060a                	slli	a2,a2,0x2
1c00aea8:	89c1                	andi	a1,a1,16
1c00aeaa:	44400693          	li	a3,1092
1c00aeae:	e4680813          	addi	a6,a6,-442 # 1c00ae46 <pos_udma_handle_copy>
1c00aeb2:	04400713          	li	a4,68
1c00aeb6:	0106e623          	p.sw	a6,a2(a3)
1c00aeba:	00a76623          	p.sw	a0,a2(a4)
1c00aebe:	97ae                	add	a5,a5,a1
1c00aec0:	00052023          	sw	zero,0(a0)
1c00aec4:	00052223          	sw	zero,4(a0)
1c00aec8:	00052423          	sw	zero,8(a0)
1c00aecc:	c91c                	sw	a5,16(a0)
1c00aece:	8082                	ret

1c00aed0 <pos_udma_enqueue>:
1c00aed0:	411c                	lw	a5,0(a0)
1c00aed2:	cf91                	beqz	a5,1c00aeee <pos_udma_enqueue+0x1e>
1c00aed4:	415c                	lw	a5,4(a0)
1c00aed6:	cf85                	beqz	a5,1c00af0e <pos_udma_enqueue+0x3e>
1c00aed8:	451c                	lw	a5,8(a0)
1c00aeda:	cdd0                	sw	a2,28(a1)
1c00aedc:	d194                	sw	a3,32(a1)
1c00aede:	d1d8                	sw	a4,36(a1)
1c00aee0:	c395                	beqz	a5,1c00af04 <pos_udma_enqueue+0x34>
1c00aee2:	455c                	lw	a5,12(a0)
1c00aee4:	c38c                	sw	a1,0(a5)
1c00aee6:	c54c                	sw	a1,12(a0)
1c00aee8:	0005a023          	sw	zero,0(a1)
1c00aeec:	8082                	ret
1c00aeee:	491c                	lw	a5,16(a0)
1c00aef0:	c10c                	sw	a1,0(a0)
1c00aef2:	85be                	mv	a1,a5
1c00aef4:	00c5a22b          	p.sw	a2,4(a1!)
1c00aef8:	c0474733          	p.bset	a4,a4,0,4
1c00aefc:	c194                	sw	a3,0(a1)
1c00aefe:	07a1                	addi	a5,a5,8
1c00af00:	c398                	sw	a4,0(a5)
1c00af02:	8082                	ret
1c00af04:	c50c                	sw	a1,8(a0)
1c00af06:	c54c                	sw	a1,12(a0)
1c00af08:	0005a023          	sw	zero,0(a1)
1c00af0c:	8082                	ret
1c00af0e:	491c                	lw	a5,16(a0)
1c00af10:	c14c                	sw	a1,4(a0)
1c00af12:	85be                	mv	a1,a5
1c00af14:	00c5a22b          	p.sw	a2,4(a1!)
1c00af18:	c0474733          	p.bset	a4,a4,0,4
1c00af1c:	c194                	sw	a3,0(a1)
1c00af1e:	07a1                	addi	a5,a5,8
1c00af20:	c398                	sw	a4,0(a5)
1c00af22:	8082                	ret

1c00af24 <pi_cluster_conf_init>:
1c00af24:	00052223          	sw	zero,4(a0)
1c00af28:	00052a23          	sw	zero,20(a0)
1c00af2c:	8082                	ret

1c00af2e <pi_cluster_open>:
1c00af2e:	1101                	addi	sp,sp,-32
1c00af30:	c452                	sw	s4,8(sp)
1c00af32:	00452a03          	lw	s4,4(a0)
1c00af36:	c64e                	sw	s3,12(sp)
1c00af38:	004a2983          	lw	s3,4(s4)
1c00af3c:	1c0017b7          	lui	a5,0x1c001
1c00af40:	cc22                	sw	s0,24(sp)
1c00af42:	c05a                	sw	s6,0(sp)
1c00af44:	23878413          	addi	s0,a5,568 # 1c001238 <pos_cluster>
1c00af48:	00599b13          	slli	s6,s3,0x5
1c00af4c:	ca26                	sw	s1,20(sp)
1c00af4e:	c84a                	sw	s2,16(sp)
1c00af50:	c256                	sw	s5,4(sp)
1c00af52:	016404b3          	add	s1,s0,s6
1c00af56:	ce06                	sw	ra,28(sp)
1c00af58:	c504                	sw	s1,8(a0)
1c00af5a:	0ff9fa93          	andi	s5,s3,255
1c00af5e:	1c00b5b7          	lui	a1,0x1c00b
1c00af62:	01548e23          	sb	s5,28(s1)
1c00af66:	35258593          	addi	a1,a1,850 # 1c00b352 <pos_task_remote_enqueue>
1c00af6a:	4505                	li	a0,1
1c00af6c:	3c3d                	jal	1c00a9aa <pos_irq_set_handler>
1c00af6e:	6685                	lui	a3,0x1
1c00af70:	04098793          	addi	a5,s3,64
1c00af74:	fff68713          	addi	a4,a3,-1 # fff <pos_soc_event_callback+0xbbb>
1c00af78:	1a10a637          	lui	a2,0x1a10a
1c00af7c:	4689                	li	a3,2
1c00af7e:	00800593          	li	a1,8
1c00af82:	80d62223          	sw	a3,-2044(a2) # 1a109804 <_emram_start+0x99097e4>
1c00af86:	01679913          	slli	s2,a5,0x16
1c00af8a:	8df9                	and	a1,a1,a4
1c00af8c:	0004a023          	sw	zero,0(s1)
1c00af90:	95ca                	add	a1,a1,s2
1c00af92:	10000837          	lui	a6,0x10000
1c00af96:	002004b7          	lui	s1,0x200
1c00af9a:	0005a023          	sw	zero,0(a1)
1c00af9e:	02080813          	addi	a6,a6,32 # 10000020 <pos_cluster_fc_task_lock>
1c00afa2:	94ca                	add	s1,s1,s2
1c00afa4:	4785                	li	a5,1
1c00afa6:	0005a623          	sw	zero,12(a1)
1c00afaa:	0005a223          	sw	zero,4(a1)
1c00afae:	00082023          	sw	zero,0(a6)
1c00afb2:	02f4a023          	sw	a5,32(s1) # 200020 <__l1_heap_size+0x1c0048>
1c00afb6:	00400693          	li	a3,4
1c00afba:	8ef9                	and	a3,a3,a4
1c00afbc:	02400793          	li	a5,36
1c00afc0:	96ca                	add	a3,a3,s2
1c00afc2:	02f05563          	blez	a5,1c00afec <pi_cluster_open+0xbe>
1c00afc6:	17fd                	addi	a5,a5,-1
1c00afc8:	1c010737          	lui	a4,0x1c010
1c00afcc:	28870713          	addi	a4,a4,648 # 1c010288 <_l1_preload_start_inL2>
1c00afd0:	8389                	srli	a5,a5,0x2
1c00afd2:	02000613          	li	a2,32
1c00afd6:	5575                	li	a0,-3
1c00afd8:	8e99                	sub	a3,a3,a4
1c00afda:	0785                	addi	a5,a5,1
1c00afdc:	08a64c63          	blt	a2,a0,1c00b074 <pi_cluster_open+0x146>
1c00afe0:	0057c0fb          	lp.setup	x1,a5,1c00afea <pi_cluster_open+0xbc>
1c00afe4:	4310                	lw	a2,0(a4)
1c00afe6:	00c766a3          	p.sw	a2,a3(a4)
1c00afea:	0711                	addi	a4,a4,4
1c00afec:	016407b3          	add	a5,s0,s6
1c00aff0:	01578e23          	sb	s5,28(a5)
1c00aff4:	00201437          	lui	s0,0x201
1c00aff8:	014a4683          	lbu	a3,20(s4)
1c00affc:	e0440713          	addi	a4,s0,-508 # 200e04 <__l1_heap_size+0x1c0e2c>
1c00b000:	974a                	add	a4,a4,s2
1c00b002:	cf98                	sw	a4,24(a5)
1c00b004:	cb98                	sw	a4,16(a5)
1c00b006:	c3cc                	sw	a1,4(a5)
1c00b008:	00d78ea3          	sb	a3,29(a5)
1c00b00c:	854e                	mv	a0,s3
1c00b00e:	0007a423          	sw	zero,8(a5)
1c00b012:	0007aa23          	sw	zero,20(a5)
1c00b016:	00078f23          	sb	zero,30(a5)
1c00b01a:	00d80223          	sb	a3,4(a6)
1c00b01e:	8d9ff0ef          	jal	ra,1c00a8f6 <pos_alloc_init_l1>
1c00b022:	40040793          	addi	a5,s0,1024
1c00b026:	97ca                	add	a5,a5,s2
1c00b028:	577d                	li	a4,-1
1c00b02a:	00e7a023          	sw	a4,0(a5)
1c00b02e:	1c0087b7          	lui	a5,0x1c008
1c00b032:	08078793          	addi	a5,a5,128 # 1c008080 <_start>
1c00b036:	04f4a023          	sw	a5,64(s1)
1c00b03a:	04f4a223          	sw	a5,68(s1)
1c00b03e:	04f4a423          	sw	a5,72(s1)
1c00b042:	04f4a623          	sw	a5,76(s1)
1c00b046:	04f4a823          	sw	a5,80(s1)
1c00b04a:	04f4aa23          	sw	a5,84(s1)
1c00b04e:	04f4ac23          	sw	a5,88(s1)
1c00b052:	04f4ae23          	sw	a5,92(s1)
1c00b056:	0ff00793          	li	a5,255
1c00b05a:	00f4a423          	sw	a5,8(s1)
1c00b05e:	40f2                	lw	ra,28(sp)
1c00b060:	4462                	lw	s0,24(sp)
1c00b062:	44d2                	lw	s1,20(sp)
1c00b064:	4942                	lw	s2,16(sp)
1c00b066:	49b2                	lw	s3,12(sp)
1c00b068:	4a22                	lw	s4,8(sp)
1c00b06a:	4a92                	lw	s5,4(sp)
1c00b06c:	4b02                	lw	s6,0(sp)
1c00b06e:	4501                	li	a0,0
1c00b070:	6105                	addi	sp,sp,32
1c00b072:	8082                	ret
1c00b074:	4785                	li	a5,1
1c00b076:	b7ad                	j	1c00afe0 <pi_cluster_open+0xb2>

1c00b078 <pi_cluster_close>:
1c00b078:	4501                	li	a0,0
1c00b07a:	8082                	ret

1c00b07c <pos_cluster_task_set_stack>:
1c00b07c:	1101                	addi	sp,sp,-32
1c00b07e:	c84a                	sw	s2,16(sp)
1c00b080:	00852903          	lw	s2,8(a0)
1c00b084:	ca26                	sw	s1,20(sp)
1c00b086:	c64e                	sw	s3,12(sp)
1c00b088:	4785                	li	a5,1
1c00b08a:	ce06                	sw	ra,28(sp)
1c00b08c:	cc22                	sw	s0,24(sp)
1c00b08e:	00f90f23          	sb	a5,30(s2)
1c00b092:	45dc                	lw	a5,12(a1)
1c00b094:	89aa                	mv	s3,a0
1c00b096:	84ae                	mv	s1,a1
1c00b098:	efa1                	bnez	a5,1c00b0f0 <pos_cluster_task_set_stack+0x74>
1c00b09a:	6785                	lui	a5,0x1
1c00b09c:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3bc>
1c00b0a0:	40000713          	li	a4,1024
1c00b0a4:	c5dc                	sw	a5,12(a1)
1c00b0a6:	c998                	sw	a4,16(a1)
1c00b0a8:	40000693          	li	a3,1024
1c00b0ac:	48d8                	lw	a4,20(s1)
1c00b0ae:	00892503          	lw	a0,8(s2)
1c00b0b2:	177d                	addi	a4,a4,-1
1c00b0b4:	843e                	mv	s0,a5
1c00b0b6:	42d70433          	p.mac	s0,a4,a3
1c00b0ba:	c909                	beqz	a0,1c00b0cc <pos_cluster_task_set_stack+0x50>
1c00b0bc:	00c92603          	lw	a2,12(s2)
1c00b0c0:	00860f63          	beq	a2,s0,1c00b0de <pos_cluster_task_set_stack+0x62>
1c00b0c4:	85aa                	mv	a1,a0
1c00b0c6:	854e                	mv	a0,s3
1c00b0c8:	8cbff0ef          	jal	ra,1c00a992 <pi_cl_l1_free>
1c00b0cc:	00892623          	sw	s0,12(s2)
1c00b0d0:	85a2                	mv	a1,s0
1c00b0d2:	854e                	mv	a0,s3
1c00b0d4:	8a7ff0ef          	jal	ra,1c00a97a <pi_cl_l1_malloc>
1c00b0d8:	00a92423          	sw	a0,8(s2)
1c00b0dc:	cd19                	beqz	a0,1c00b0fa <pos_cluster_task_set_stack+0x7e>
1c00b0de:	c488                	sw	a0,8(s1)
1c00b0e0:	4501                	li	a0,0
1c00b0e2:	40f2                	lw	ra,28(sp)
1c00b0e4:	4462                	lw	s0,24(sp)
1c00b0e6:	44d2                	lw	s1,20(sp)
1c00b0e8:	4942                	lw	s2,16(sp)
1c00b0ea:	49b2                	lw	s3,12(sp)
1c00b0ec:	6105                	addi	sp,sp,32
1c00b0ee:	8082                	ret
1c00b0f0:	4994                	lw	a3,16(a1)
1c00b0f2:	fecd                	bnez	a3,1c00b0ac <pos_cluster_task_set_stack+0x30>
1c00b0f4:	c99c                	sw	a5,16(a1)
1c00b0f6:	86be                	mv	a3,a5
1c00b0f8:	bf55                	j	1c00b0ac <pos_cluster_task_set_stack+0x30>
1c00b0fa:	557d                	li	a0,-1
1c00b0fc:	b7dd                	j	1c00b0e2 <pos_cluster_task_set_stack+0x66>

1c00b0fe <pi_cluster_send_task_to_cl>:
1c00b0fe:	715d                	addi	sp,sp,-80
1c00b100:	c2a6                	sw	s1,68(sp)
1c00b102:	1c00a7b7          	lui	a5,0x1c00a
1c00b106:	4504                	lw	s1,8(a0)
1c00b108:	c4a2                	sw	s0,72(sp)
1c00b10a:	c0ca                	sw	s2,64(sp)
1c00b10c:	7c878793          	addi	a5,a5,1992 # 1c00a7c8 <pos_task_handle_blocking>
1c00b110:	c686                	sw	ra,76(sp)
1c00b112:	c23e                	sw	a5,4(sp)
1c00b114:	01d4c703          	lbu	a4,29(s1)
1c00b118:	00010793          	mv	a5,sp
1c00b11c:	00010a23          	sb	zero,20(sp)
1c00b120:	c43e                	sw	a5,8(sp)
1c00b122:	842e                	mv	s0,a1
1c00b124:	0044a903          	lw	s2,4(s1)
1c00b128:	459c                	lw	a5,8(a1)
1c00b12a:	04173c63          	p.bneimm	a4,1,1c00b182 <pi_cluster_send_task_to_cl+0x84>
1c00b12e:	c3b5                	beqz	a5,1c00b192 <pi_cluster_send_task_to_cl+0x94>
1c00b130:	00010793          	mv	a5,sp
1c00b134:	02042023          	sw	zero,32(s0)
1c00b138:	cc1c                	sw	a5,24(s0)
1c00b13a:	30047773          	csrrci	a4,mstatus,8
1c00b13e:	409c                	lw	a5,0(s1)
1c00b140:	c391                	beqz	a5,1c00b144 <pi_cluster_send_task_to_cl+0x46>
1c00b142:	d380                	sw	s0,32(a5)
1c00b144:	c080                	sw	s0,0(s1)
1c00b146:	00092783          	lw	a5,0(s2)
1c00b14a:	cb8d                	beqz	a5,1c00b17c <pi_cluster_send_task_to_cl+0x7e>
1c00b14c:	4c9c                	lw	a5,24(s1)
1c00b14e:	0007a023          	sw	zero,0(a5)
1c00b152:	30071073          	csrw	mstatus,a4
1c00b156:	30047473          	csrrci	s0,mstatus,8
1c00b15a:	01410783          	lb	a5,20(sp)
1c00b15e:	e791                	bnez	a5,1c00b16a <pi_cluster_send_task_to_cl+0x6c>
1c00b160:	e70ff0ef          	jal	ra,1c00a7d0 <pos_task_handle>
1c00b164:	01410783          	lb	a5,20(sp)
1c00b168:	dfe5                	beqz	a5,1c00b160 <pi_cluster_send_task_to_cl+0x62>
1c00b16a:	30041073          	csrw	mstatus,s0
1c00b16e:	4501                	li	a0,0
1c00b170:	40b6                	lw	ra,76(sp)
1c00b172:	4426                	lw	s0,72(sp)
1c00b174:	4496                	lw	s1,68(sp)
1c00b176:	4906                	lw	s2,64(sp)
1c00b178:	6161                	addi	sp,sp,80
1c00b17a:	8082                	ret
1c00b17c:	00892023          	sw	s0,0(s2)
1c00b180:	b7f1                	j	1c00b14c <pi_cluster_send_task_to_cl+0x4e>
1c00b182:	cf99                	beqz	a5,1c00b1a0 <pi_cluster_send_task_to_cl+0xa2>
1c00b184:	4858                	lw	a4,20(s0)
1c00b186:	4785                	li	a5,1
1c00b188:	00e797b3          	sll	a5,a5,a4
1c00b18c:	17fd                	addi	a5,a5,-1
1c00b18e:	d05c                	sw	a5,36(s0)
1c00b190:	b745                	j	1c00b130 <pi_cluster_send_task_to_cl+0x32>
1c00b192:	01e4c783          	lbu	a5,30(s1)
1c00b196:	ffc9                	bnez	a5,1c00b130 <pi_cluster_send_task_to_cl+0x32>
1c00b198:	35d5                	jal	1c00b07c <pos_cluster_task_set_stack>
1c00b19a:	d959                	beqz	a0,1c00b130 <pi_cluster_send_task_to_cl+0x32>
1c00b19c:	557d                	li	a0,-1
1c00b19e:	bfc9                	j	1c00b170 <pi_cluster_send_task_to_cl+0x72>
1c00b1a0:	3df1                	jal	1c00b07c <pos_cluster_task_set_stack>
1c00b1a2:	d16d                	beqz	a0,1c00b184 <pi_cluster_send_task_to_cl+0x86>
1c00b1a4:	bfe5                	j	1c00b19c <pi_cluster_send_task_to_cl+0x9e>

1c00b1a6 <pos_cluster_push_fc_event>:
1c00b1a6:	002046b7          	lui	a3,0x204
1c00b1aa:	0c068693          	addi	a3,a3,192 # 2040c0 <__l1_heap_size+0x1c40e8>
1c00b1ae:	429c                	lw	a5,0(a3)
1c00b1b0:	f1402373          	csrr	t1,mhartid
1c00b1b4:	1c001837          	lui	a6,0x1c001
1c00b1b8:	23880813          	addi	a6,a6,568 # 1c001238 <pos_cluster>
1c00b1bc:	7e037313          	andi	t1,t1,2016
1c00b1c0:	006805b3          	add	a1,a6,t1
1c00b1c4:	49dc                	lw	a5,20(a1)
1c00b1c6:	c38d                	beqz	a5,1c00b1e8 <pos_cluster_push_fc_event+0x42>
1c00b1c8:	002047b7          	lui	a5,0x204
1c00b1cc:	4709                	li	a4,2
1c00b1ce:	03c78893          	addi	a7,a5,60 # 20403c <__l1_heap_size+0x1c4064>
1c00b1d2:	0c07a023          	sw	zero,192(a5)
1c00b1d6:	00e7a423          	sw	a4,8(a5)
1c00b1da:	0008a603          	lw	a2,0(a7)
1c00b1de:	00e7a223          	sw	a4,4(a5)
1c00b1e2:	4290                	lw	a2,0(a3)
1c00b1e4:	49d0                	lw	a2,20(a1)
1c00b1e6:	f675                	bnez	a2,1c00b1d2 <pos_cluster_push_fc_event+0x2c>
1c00b1e8:	981a                	add	a6,a6,t1
1c00b1ea:	1a10a7b7          	lui	a5,0x1a10a
1c00b1ee:	00a82a23          	sw	a0,20(a6)
1c00b1f2:	4709                	li	a4,2
1c00b1f4:	80e7a823          	sw	a4,-2032(a5) # 1a109810 <_emram_start+0x99097f0>
1c00b1f8:	002047b7          	lui	a5,0x204
1c00b1fc:	0c07a023          	sw	zero,192(a5) # 2040c0 <__l1_heap_size+0x1c40e8>
1c00b200:	8082                	ret

1c00b202 <plp_dot_prod_f32s_xpulpv2>:
1c00b202:	0006a023          	sw	zero,0(a3)
1c00b206:	ce01                	beqz	a2,1c00b21e <plp_dot_prod_f32s_xpulpv2+0x1c>
1c00b208:	00000793          	li	a5,0
1c00b20c:	006640fb          	lp.setup	x1,a2,1c00b218 <plp_dot_prod_f32s_xpulpv2+0x16>
1c00b210:	0045280b          	p.lw	a6,4(a0!)
1c00b214:	0045a70b          	p.lw	a4,4(a1!)
1c00b218:	78e877c3          	fmadd.s	a5,a6,a4,a5
1c00b21c:	c29c                	sw	a5,0(a3)
1c00b21e:	8082                	ret

1c00b220 <pos_init_entry>:
1c00b220:	7a101073          	csrw	pcmr,zero
1c00b224:	f1402573          	csrr	a0,mhartid
1c00b228:	01f57593          	andi	a1,a0,31
1c00b22c:	8115                	srli	a0,a0,0x5
1c00b22e:	467d                	li	a2,31
1c00b230:	00c50463          	beq	a0,a2,1c00b238 <pos_init_entry+0x18>
1c00b234:	5cd0406f          	j	1c010000 <__cluster_text_start>
1c00b238:	ffff6297          	auipc	t0,0xffff6
1c00b23c:	fe828293          	addi	t0,t0,-24 # 1c001220 <_edata>
1c00b240:	ffff6317          	auipc	t1,0xffff6
1c00b244:	01830313          	addi	t1,t1,24 # 1c001258 <__l2_priv0_end>
1c00b248:	0002a023          	sw	zero,0(t0)
1c00b24c:	0291                	addi	t0,t0,4
1c00b24e:	fe62ede3          	bltu	t0,t1,1c00b248 <pos_init_entry+0x28>
1c00b252:	ffff6117          	auipc	sp,0xffff6
1c00b256:	f8e10113          	addi	sp,sp,-114 # 1c0011e0 <stack>
1c00b25a:	fffff297          	auipc	t0,0xfffff
1c00b25e:	4f028293          	addi	t0,t0,1264 # 1c00a74a <pos_init_start>
1c00b262:	000280e7          	jalr	t0
1c00b266:	00000513          	li	a0,0
1c00b26a:	00000593          	li	a1,0
1c00b26e:	ffffd397          	auipc	t2,0xffffd
1c00b272:	61238393          	addi	t2,t2,1554 # 1c008880 <main>
1c00b276:	000380e7          	jalr	t2
1c00b27a:	842a                	mv	s0,a0
1c00b27c:	8522                	mv	a0,s0
1c00b27e:	ffffe297          	auipc	t0,0xffffe
1c00b282:	85e28293          	addi	t0,t0,-1954 # 1c008adc <exit>
1c00b286:	000280e7          	jalr	t0

1c00b28a <pos_irq_call_external_c_function>:
1c00b28a:	7119                	addi	sp,sp,-128
1c00b28c:	c006                	sw	ra,0(sp)
1c00b28e:	c20e                	sw	gp,4(sp)
1c00b290:	c412                	sw	tp,8(sp)
1c00b292:	c616                	sw	t0,12(sp)
1c00b294:	c81a                	sw	t1,16(sp)
1c00b296:	ca1e                	sw	t2,20(sp)
1c00b298:	d236                	sw	a3,36(sp)
1c00b29a:	d43a                	sw	a4,40(sp)
1c00b29c:	d63e                	sw	a5,44(sp)
1c00b29e:	d842                	sw	a6,48(sp)
1c00b2a0:	da46                	sw	a7,52(sp)
1c00b2a2:	dc72                	sw	t3,56(sp)
1c00b2a4:	de76                	sw	t4,60(sp)
1c00b2a6:	c0fa                	sw	t5,64(sp)
1c00b2a8:	c6fe                	sw	t6,76(sp)
1c00b2aa:	000600e7          	jalr	a2
1c00b2ae:	4082                	lw	ra,0(sp)
1c00b2b0:	4192                	lw	gp,4(sp)
1c00b2b2:	4222                	lw	tp,8(sp)
1c00b2b4:	42b2                	lw	t0,12(sp)
1c00b2b6:	4342                	lw	t1,16(sp)
1c00b2b8:	43d2                	lw	t2,20(sp)
1c00b2ba:	5692                	lw	a3,36(sp)
1c00b2bc:	5722                	lw	a4,40(sp)
1c00b2be:	57b2                	lw	a5,44(sp)
1c00b2c0:	5842                	lw	a6,48(sp)
1c00b2c2:	58d2                	lw	a7,52(sp)
1c00b2c4:	5e62                	lw	t3,56(sp)
1c00b2c6:	5ef2                	lw	t4,60(sp)
1c00b2c8:	4f06                	lw	t5,64(sp)
1c00b2ca:	4fb6                	lw	t6,76(sp)
1c00b2cc:	6109                	addi	sp,sp,128
1c00b2ce:	8482                	jr	s1

1c00b2d0 <pos_irq_call_external_c_function_full>:
1c00b2d0:	7119                	addi	sp,sp,-128
1c00b2d2:	c006                	sw	ra,0(sp)
1c00b2d4:	c20e                	sw	gp,4(sp)
1c00b2d6:	c412                	sw	tp,8(sp)
1c00b2d8:	c616                	sw	t0,12(sp)
1c00b2da:	c81a                	sw	t1,16(sp)
1c00b2dc:	ca1e                	sw	t2,20(sp)
1c00b2de:	cc2a                	sw	a0,24(sp)
1c00b2e0:	ce2e                	sw	a1,28(sp)
1c00b2e2:	d236                	sw	a3,36(sp)
1c00b2e4:	d43a                	sw	a4,40(sp)
1c00b2e6:	d63e                	sw	a5,44(sp)
1c00b2e8:	d842                	sw	a6,48(sp)
1c00b2ea:	da46                	sw	a7,52(sp)
1c00b2ec:	dc72                	sw	t3,56(sp)
1c00b2ee:	de76                	sw	t4,60(sp)
1c00b2f0:	c0fa                	sw	t5,64(sp)
1c00b2f2:	c6fe                	sw	t6,76(sp)
1c00b2f4:	000600e7          	jalr	a2
1c00b2f8:	4082                	lw	ra,0(sp)
1c00b2fa:	4192                	lw	gp,4(sp)
1c00b2fc:	4222                	lw	tp,8(sp)
1c00b2fe:	42b2                	lw	t0,12(sp)
1c00b300:	4342                	lw	t1,16(sp)
1c00b302:	43d2                	lw	t2,20(sp)
1c00b304:	4562                	lw	a0,24(sp)
1c00b306:	45f2                	lw	a1,28(sp)
1c00b308:	5692                	lw	a3,36(sp)
1c00b30a:	5722                	lw	a4,40(sp)
1c00b30c:	57b2                	lw	a5,44(sp)
1c00b30e:	5842                	lw	a6,48(sp)
1c00b310:	58d2                	lw	a7,52(sp)
1c00b312:	5e62                	lw	t3,56(sp)
1c00b314:	5ef2                	lw	t4,60(sp)
1c00b316:	4f06                	lw	t5,64(sp)
1c00b318:	4fb6                	lw	t6,76(sp)
1c00b31a:	6109                	addi	sp,sp,128
1c00b31c:	8482                	jr	s1

1c00b31e <pos_task_push_asm>:
1c00b31e:	e3ff5297          	auipc	t0,0xe3ff5
1c00b322:	cfe28293          	addi	t0,t0,-770 # 1c <pos_sched_first>
1c00b326:	0002a603          	lw	a2,0(t0)
1c00b32a:	0005a023          	sw	zero,0(a1)
1c00b32e:	ca09                	beqz	a2,1c00b340 <__rt_no_first>
1c00b330:	e3ff5297          	auipc	t0,0xe3ff5
1c00b334:	cf028293          	addi	t0,t0,-784 # 20 <pos_sched_last>
1c00b338:	0002a603          	lw	a2,0(t0)
1c00b33c:	c20c                	sw	a1,0(a2)
1c00b33e:	a029                	j	1c00b348 <__rt_common>

1c00b340 <__rt_no_first>:
1c00b340:	e3ff5297          	auipc	t0,0xe3ff5
1c00b344:	ccb2ae23          	sw	a1,-804(t0) # 1c <pos_sched_first>

1c00b348 <__rt_common>:
1c00b348:	e3ff5297          	auipc	t0,0xe3ff5
1c00b34c:	ccb2ac23          	sw	a1,-808(t0) # 20 <pos_sched_last>

1c00b350 <enqueue_end>:
1c00b350:	8482                	jr	s1

1c00b352 <pos_task_remote_enqueue>:
1c00b352:	fe812e23          	sw	s0,-4(sp)
1c00b356:	fe912c23          	sw	s1,-8(sp)
1c00b35a:	fea12a23          	sw	a0,-12(sp)
1c00b35e:	feb12823          	sw	a1,-16(sp)
1c00b362:	fec12623          	sw	a2,-20(sp)
1c00b366:	4405                	li	s0,1
1c00b368:	ffff6497          	auipc	s1,0xffff6
1c00b36c:	ed048493          	addi	s1,s1,-304 # 1c001238 <pos_cluster>

1c00b370 <pos_task_remote_enqueue_event_loop_cluster>:
1c00b370:	48cc                	lw	a1,20(s1)
1c00b372:	40d0                	lw	a2,4(s1)
1c00b374:	02058a63          	beqz	a1,1c00b3a8 <pos_task_remote_enqueue_event_loop_cluster_continue>
1c00b378:	4208                	lw	a0,0(a2)
1c00b37a:	e119                	bnez	a0,1c00b380 <pos_task_remote_enqueue_no_queue_update>
1c00b37c:	0004a023          	sw	zero,0(s1)

1c00b380 <pos_task_remote_enqueue_no_queue_update>:
1c00b380:	4890                	lw	a2,16(s1)
1c00b382:	0004aa23          	sw	zero,20(s1)
1c00b386:	00062023          	sw	zero,0(a2)
1c00b38a:	00000497          	auipc	s1,0x0
1c00b38e:	01e48493          	addi	s1,s1,30 # 1c00b3a8 <pos_task_remote_enqueue_event_loop_cluster_continue>
1c00b392:	0035f513          	andi	a0,a1,3
1c00b396:	00051363          	bnez	a0,1c00b39c <pos_task_callback>
1c00b39a:	b751                	j	1c00b31e <pos_task_push_asm>

1c00b39c <pos_task_callback>:
1c00b39c:	5571                	li	a0,-4
1c00b39e:	8de9                	and	a1,a1,a0
1c00b3a0:	41d0                	lw	a2,4(a1)
1c00b3a2:	4588                	lw	a0,8(a1)
1c00b3a4:	ee7ff06f          	j	1c00b28a <pos_irq_call_external_c_function>

1c00b3a8 <pos_task_remote_enqueue_event_loop_cluster_continue>:
1c00b3a8:	147d                	addi	s0,s0,-1
1c00b3aa:	00804e63          	bgtz	s0,1c00b3c6 <pos_task_remote_enqueue_event_loop_next_cluster>
1c00b3ae:	ffc12403          	lw	s0,-4(sp)
1c00b3b2:	ff812483          	lw	s1,-8(sp)
1c00b3b6:	ff412503          	lw	a0,-12(sp)
1c00b3ba:	ff012583          	lw	a1,-16(sp)
1c00b3be:	fec12603          	lw	a2,-20(sp)
1c00b3c2:	30200073          	mret

1c00b3c6 <pos_task_remote_enqueue_event_loop_next_cluster>:
1c00b3c6:	ffff6497          	auipc	s1,0xffff6
1c00b3ca:	e7248493          	addi	s1,s1,-398 # 1c001238 <pos_cluster>
1c00b3ce:	02c00593          	li	a1,44
1c00b3d2:	02b405b3          	mul	a1,s0,a1
1c00b3d6:	94ae                	add	s1,s1,a1
1c00b3d8:	bf61                	j	1c00b370 <pos_task_remote_enqueue_event_loop_cluster>

1c00b3da <pos_time_timer_handler_asm>:
1c00b3da:	1161                	addi	sp,sp,-8
1c00b3dc:	c032                	sw	a2,0(sp)
1c00b3de:	c226                	sw	s1,4(sp)
1c00b3e0:	fffff617          	auipc	a2,0xfffff
1c00b3e4:	6ce60613          	addi	a2,a2,1742 # 1c00aaae <pos_time_timer_handler>
1c00b3e8:	00000497          	auipc	s1,0x0
1c00b3ec:	00c48493          	addi	s1,s1,12 # 1c00b3f4 <pos_time_timer_handler_asm_ret>
1c00b3f0:	ee1ff06f          	j	1c00b2d0 <pos_irq_call_external_c_function_full>

1c00b3f4 <pos_time_timer_handler_asm_ret>:
1c00b3f4:	4492                	lw	s1,4(sp)
1c00b3f6:	4602                	lw	a2,0(sp)
1c00b3f8:	0121                	addi	sp,sp,8
1c00b3fa:	30200073          	mret

1c00b3fe <pos_soc_event_handler_asm>:
1c00b3fe:	7119                	addi	sp,sp,-128
1c00b400:	c022                	sw	s0,0(sp)
1c00b402:	c226                	sw	s1,4(sp)
1c00b404:	c42a                	sw	a0,8(sp)
1c00b406:	c62e                	sw	a1,12(sp)
1c00b408:	c832                	sw	a2,16(sp)
1c00b40a:	1a10a437          	lui	s0,0x1a10a
1c00b40e:	80040413          	addi	s0,s0,-2048 # 1a109800 <_emram_start+0x99097e0>
1c00b412:	5048                	lw	a0,36(s0)
1c00b414:	00251593          	slli	a1,a0,0x2
1c00b418:	e3ff5297          	auipc	t0,0xe3ff5
1c00b41c:	02c28293          	addi	t0,t0,44 # 444 <pos_soc_event_callback>
1c00b420:	2055f603          	p.lw	a2,t0(a1)
1c00b424:	e3ff5297          	auipc	t0,0xe3ff5
1c00b428:	c2028293          	addi	t0,t0,-992 # 44 <pos_soc_event_callback_arg>
1c00b42c:	2055f583          	p.lw	a1,t0(a1)
1c00b430:	00000497          	auipc	s1,0x0
1c00b434:	03048493          	addi	s1,s1,48 # 1c00b460 <pos_soc_event_handler_end_asm>
1c00b438:	e53ff06f          	j	1c00b28a <pos_irq_call_external_c_function>

1c00b43c <pos_soc_event_no_udma_asm>:
1c00b43c:	00555593          	srli	a1,a0,0x5
1c00b440:	058a                	slli	a1,a1,0x2
1c00b442:	e3ff5297          	auipc	t0,0xe3ff5
1c00b446:	be228293          	addi	t0,t0,-1054 # 24 <_l1_preload_size>
1c00b44a:	2055f603          	p.lw	a2,t0(a1)
1c00b44e:	897d                	andi	a0,a0,31
1c00b450:	80a64633          	p.bsetr	a2,a2,a0
1c00b454:	e3ff5297          	auipc	t0,0xe3ff5
1c00b458:	bd028293          	addi	t0,t0,-1072 # 24 <_l1_preload_size>
1c00b45c:	00c5e2a3          	p.sw	a2,t0(a1)

1c00b460 <pos_soc_event_handler_end_asm>:
1c00b460:	4402                	lw	s0,0(sp)
1c00b462:	4492                	lw	s1,4(sp)
1c00b464:	4522                	lw	a0,8(sp)
1c00b466:	45b2                	lw	a1,12(sp)
1c00b468:	4642                	lw	a2,16(sp)
1c00b46a:	6109                	addi	sp,sp,128
1c00b46c:	30200073          	mret

Disassembly of section .l2_data:

1c010000 <__cluster_text_start>:
1c010000:	f1402573          	csrr	a0,mhartid
1c010004:	01f57593          	andi	a1,a0,31
1c010008:	8115                	srli	a0,a0,0x5
1c01000a:	000702b7          	lui	t0,0x70
1c01000e:	00204337          	lui	t1,0x204
1c010012:	00532023          	sw	t0,0(t1) # 204000 <__l1_heap_size+0x1c4028>
1c010016:	4381                	li	t2,0
1c010018:	0e759463          	bne	a1,t2,1c010100 <pos_slave_start>
1c01001c:	20000293          	li	t0,512
1c010020:	00204337          	lui	t1,0x204
1c010024:	00532a23          	sw	t0,20(t1) # 204014 <__l1_heap_size+0x1c403c>
1c010028:	e3ff0417          	auipc	s0,0xe3ff0
1c01002c:	fe040413          	addi	s0,s0,-32 # 8 <pos_cluster_pool>
1c010030:	002049b7          	lui	s3,0x204
1c010034:	4a09                	li	s4,2
1c010036:	00000a97          	auipc	s5,0x0
1c01003a:	038a8a93          	addi	s5,s5,56 # 1c01006e <pos_master_event>
1c01003e:	ffff1b97          	auipc	s7,0xffff1
1c010042:	1fab8b93          	addi	s7,s7,506 # 1c001238 <pos_cluster>
1c010046:	02c00393          	li	t2,44
1c01004a:	02a383b3          	mul	t2,t2,a0
1c01004e:	9b9e                	add	s7,s7,t2
1c010050:	0bd1                	addi	s7,s7,20
1c010052:	1a10acb7          	lui	s9,0x1a10a
1c010056:	810c8c93          	addi	s9,s9,-2032 # 1a109810 <_emram_start+0x99097f0>
1c01005a:	4c09                	li	s8,2
1c01005c:	00000d17          	auipc	s10,0x0
1c010060:	0e2d0d13          	addi	s10,s10,226 # 1c01013e <pos_set_slave_stack>
1c010064:	001d6d13          	ori	s10,s10,1
1c010068:	30045073          	csrwi	mstatus,8
1c01006c:	a829                	j	1c010086 <pos_master_loop>

1c01006e <pos_master_event>:
1c01006e:	018b2b03          	lw	s6,24(s6)
1c010072:	000b0a63          	beqz	s6,1c010086 <pos_master_loop>

1c010076 <pos_push_event_to_fc_retry>:
1c010076:	000ba283          	lw	t0,0(s7)
1c01007a:	06029c63          	bnez	t0,1c0100f2 <pos_push_event_to_fc_wait>
1c01007e:	016ba023          	sw	s6,0(s7)
1c010082:	018ca023          	sw	s8,0(s9)

1c010086 <pos_master_loop>:
1c010086:	00042b03          	lw	s6,0(s0)
1c01008a:	040b0d63          	beqz	s6,1c0100e4 <pos_master_sleep>

1c01008e <pos_master_loop_update_next>:
1c01008e:	020b2e83          	lw	t4,32(s6)
1c010092:	01d42023          	sw	t4,0(s0)
1c010096:	020b2f03          	lw	t5,32(s6)
1c01009a:	ffee9ae3          	bne	t4,t5,1c01008e <pos_master_loop_update_next>

1c01009e <pos_master_loop_exec_task>:
1c01009e:	004b2503          	lw	a0,4(s6)
1c0100a2:	000b2283          	lw	t0,0(s6)
1c0100a6:	008b2103          	lw	sp,8(s6)
1c0100aa:	00cb2303          	lw	t1,12(s6)
1c0100ae:	010b2383          	lw	t2,16(s6)
1c0100b2:	024b2f03          	lw	t5,36(s6)
1c0100b6:	014b2f83          	lw	t6,20(s6)
1c0100ba:	80d6                	mv	ra,s5
1c0100bc:	911a                	add	sp,sp,t1
1c0100be:	e3ff0e17          	auipc	t3,0xe3ff0
1c0100c2:	f5fe2f23          	sw	t6,-162(t3) # 1c <pos_sched_first>

1c0100c6 <pos_no_stack_check>:
1c0100c6:	09e9a223          	sw	t5,132(s3) # 204084 <__l1_heap_size+0x1c40ac>
1c0100ca:	21e9a023          	sw	t5,512(s3)
1c0100ce:	21e9a623          	sw	t5,524(s3)

1c0100d2 <pos_master_no_slave_barrier>:
1c0100d2:	000f2863          	p.beqimm	t5,0,1c0100e2 <pos_master_loop_no_slave>
1c0100d6:	09a9a023          	sw	s10,128(s3)
1c0100da:	0879a023          	sw	t2,128(s3)
1c0100de:	0829a023          	sw	sp,128(s3)

1c0100e2 <pos_master_loop_no_slave>:
1c0100e2:	8282                	jr	t0

1c0100e4 <pos_master_sleep>:
1c0100e4:	0149a423          	sw	s4,8(s3)
1c0100e8:	03c9e003          	p.elw	zero,60(s3)
1c0100ec:	0149a223          	sw	s4,4(s3)
1c0100f0:	bf59                	j	1c010086 <pos_master_loop>

1c0100f2 <pos_push_event_to_fc_wait>:
1c0100f2:	0149a423          	sw	s4,8(s3)
1c0100f6:	03c9e003          	p.elw	zero,60(s3)
1c0100fa:	0149a223          	sw	s4,4(s3)
1c0100fe:	bfa5                	j	1c010076 <pos_push_event_to_fc_retry>

1c010100 <pos_slave_start>:
1c010100:	00204937          	lui	s2,0x204
1c010104:	f14029f3          	csrr	s3,mhartid
1c010108:	01f9f993          	andi	s3,s3,31
1c01010c:	00000a17          	auipc	s4,0x0
1c010110:	012a0a13          	addi	s4,s4,18 # 1c01011e <pos_fork_return>
1c010114:	00000a97          	auipc	s5,0x0
1c010118:	00ea8a93          	addi	s5,s5,14 # 1c010122 <pos_wait_for_dispatch>
1c01011c:	a019                	j	1c010122 <pos_wait_for_dispatch>

1c01011e <pos_fork_return>:
1c01011e:	21c96283          	p.elw	t0,540(s2) # 20421c <__l1_heap_size+0x1c4244>

1c010122 <pos_wait_for_dispatch>:
1c010122:	08096283          	p.elw	t0,128(s2)
1c010126:	08096503          	p.elw	a0,128(s2)
1c01012a:	0012f313          	andi	t1,t0,1
1c01012e:	00031563          	bnez	t1,1c010138 <pos_other_entry>

1c010132 <pos_fork_entry>:
1c010132:	000a00b3          	add	ra,s4,zero
1c010136:	8282                	jr	t0

1c010138 <pos_other_entry>:
1c010138:	000a80b3          	add	ra,s5,zero
1c01013c:	8282                	jr	t0

1c01013e <pos_set_slave_stack>:
1c01013e:	08096283          	p.elw	t0,128(s2)
1c010142:	00098f13          	mv	t5,s3
1c010146:	02af0eb3          	mul	t4,t5,a0
1c01014a:	005e8133          	add	sp,t4,t0
1c01014e:	8082                	ret

1c010150 <__cluster_text_end>:
	...

1c0101d0 <pos_libc_uart_buffer>:
	...

1c010250 <pos_uart>:
	...
