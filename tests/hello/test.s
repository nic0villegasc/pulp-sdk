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
1c008084:	24c50513          	addi	a0,a0,588 # 1c00b2cc <pos_init_entry>
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
1c0087ba:	7139                	addi	sp,sp,-64
1c0087bc:	dc22                	sw	s0,56(sp)
1c0087be:	da26                	sw	s1,52(sp)
1c0087c0:	d84a                	sw	s2,48(sp)
1c0087c2:	d64e                	sw	s3,44(sp)
1c0087c4:	ca66                	sw	s9,20(sp)
1c0087c6:	de06                	sw	ra,60(sp)
1c0087c8:	d452                	sw	s4,40(sp)
1c0087ca:	d256                	sw	s5,36(sp)
1c0087cc:	d05a                	sw	s6,32(sp)
1c0087ce:	ce5e                	sw	s7,28(sp)
1c0087d0:	cc62                	sw	s8,24(sp)
1c0087d2:	c03a                	sw	a4,0(sp)
1c0087d4:	c23e                	sw	a5,4(sp)
1c0087d6:	c43a                	sw	a4,8(sp)
1c0087d8:	c63e                	sw	a5,12(sp)
1c0087da:	890a                	mv	s2,sp
1c0087dc:	0024                	addi	s1,sp,8
1c0087de:	4981                	li	s3,0
1c0087e0:	00000413          	li	s0,0
1c0087e4:	1c001cb7          	lui	s9,0x1c001
1c0087e8:	0004aa03          	lw	s4,0(s1)
1c0087ec:	8522                	mv	a0,s0
1c0087ee:	3f21                	jal	1c008706 <__extendsfdf2>
1c0087f0:	00092c03          	lw	s8,0(s2)
1c0087f4:	8b2a                	mv	s6,a0
1c0087f6:	8552                	mv	a0,s4
1c0087f8:	8bae                	mv	s7,a1
1c0087fa:	3731                	jal	1c008706 <__extendsfdf2>
1c0087fc:	8a2a                	mv	s4,a0
1c0087fe:	8562                	mv	a0,s8
1c008800:	8aae                	mv	s5,a1
1c008802:	3711                	jal	1c008706 <__extendsfdf2>
1c008804:	862a                	mv	a2,a0
1c008806:	86ae                	mv	a3,a1
1c008808:	885a                	mv	a6,s6
1c00880a:	88de                	mv	a7,s7
1c00880c:	8752                	mv	a4,s4
1c00880e:	87d6                	mv	a5,s5
1c008810:	85ce                	mv	a1,s3
1c008812:	970c8513          	addi	a0,s9,-1680 # 1c000970 <__DTOR_END__+0x108>
1c008816:	211d                	jal	1c008c3c <printf>
1c008818:	0001                	nop
1c00881a:	0049270b          	p.lw	a4,4(s2!)
1c00881e:	0044a78b          	p.lw	a5,4(s1!)
1c008822:	40f77443          	fmadd.s	s0,a4,a5,s0
1c008826:	0001                	nop
1c008828:	0219b763          	p.bneimm	s3,1,1c008856 <pe_entry+0xac>
1c00882c:	8522                	mv	a0,s0
1c00882e:	3de1                	jal	1c008706 <__extendsfdf2>
1c008830:	5462                	lw	s0,56(sp)
1c008832:	50f2                	lw	ra,60(sp)
1c008834:	54d2                	lw	s1,52(sp)
1c008836:	5942                	lw	s2,48(sp)
1c008838:	59b2                	lw	s3,44(sp)
1c00883a:	5a22                	lw	s4,40(sp)
1c00883c:	5a92                	lw	s5,36(sp)
1c00883e:	5b02                	lw	s6,32(sp)
1c008840:	4bf2                	lw	s7,28(sp)
1c008842:	4c62                	lw	s8,24(sp)
1c008844:	4cd2                	lw	s9,20(sp)
1c008846:	862a                	mv	a2,a0
1c008848:	1c001537          	lui	a0,0x1c001
1c00884c:	86ae                	mv	a3,a1
1c00884e:	99050513          	addi	a0,a0,-1648 # 1c000990 <__DTOR_END__+0x128>
1c008852:	6121                	addi	sp,sp,64
1c008854:	a6e5                	j	1c008c3c <printf>
1c008856:	4985                	li	s3,1
1c008858:	bf41                	j	1c0087e8 <pe_entry+0x3e>

1c00885a <cluster_entry>:
1c00885a:	7139                	addi	sp,sp,-64
1c00885c:	4705                	li	a4,1
1c00885e:	002047b7          	lui	a5,0x204
1c008862:	de06                	sw	ra,60(sp)
1c008864:	dc22                	sw	s0,56(sp)
1c008866:	da26                	sw	s1,52(sp)
1c008868:	d84a                	sw	s2,48(sp)
1c00886a:	d64e                	sw	s3,44(sp)
1c00886c:	d452                	sw	s4,40(sp)
1c00886e:	d256                	sw	s5,36(sp)
1c008870:	d05a                	sw	s6,32(sp)
1c008872:	ce5e                	sw	s7,28(sp)
1c008874:	cc62                	sw	s8,24(sp)
1c008876:	ca66                	sw	s9,20(sp)
1c008878:	08e7a223          	sw	a4,132(a5) # 204084 <__l1_heap_size+0x1c40ac>
1c00887c:	20078693          	addi	a3,a5,512
1c008880:	00e6a023          	sw	a4,0(a3) # 400000 <__l1_heap_size+0x3c0028>
1c008884:	00e6a623          	sw	a4,12(a3)
1c008888:	10100713          	li	a4,257
1c00888c:	22078693          	addi	a3,a5,544
1c008890:	00e6a023          	sw	a4,0(a3)
1c008894:	00e6a623          	sw	a4,12(a3)
1c008898:	1c008737          	lui	a4,0x1c008
1c00889c:	7aa70713          	addi	a4,a4,1962 # 1c0087aa <pe_entry>
1c0088a0:	08e7a023          	sw	a4,128(a5)
1c0088a4:	0807a023          	sw	zero,128(a5)
1c0088a8:	1c0017b7          	lui	a5,0x1c001
1c0088ac:	9687a703          	lw	a4,-1688(a5) # 1c000968 <__DTOR_END__+0x100>
1c0088b0:	1c0017b7          	lui	a5,0x1c001
1c0088b4:	96c7a783          	lw	a5,-1684(a5) # 1c00096c <__DTOR_END__+0x104>
1c0088b8:	c03a                	sw	a4,0(sp)
1c0088ba:	c23e                	sw	a5,4(sp)
1c0088bc:	c43a                	sw	a4,8(sp)
1c0088be:	c63e                	sw	a5,12(sp)
1c0088c0:	890a                	mv	s2,sp
1c0088c2:	0024                	addi	s1,sp,8
1c0088c4:	00000413          	li	s0,0
1c0088c8:	4981                	li	s3,0
1c0088ca:	1c001cb7          	lui	s9,0x1c001
1c0088ce:	0004aa03          	lw	s4,0(s1)
1c0088d2:	8522                	mv	a0,s0
1c0088d4:	3d0d                	jal	1c008706 <__extendsfdf2>
1c0088d6:	00092c03          	lw	s8,0(s2)
1c0088da:	8b2a                	mv	s6,a0
1c0088dc:	8552                	mv	a0,s4
1c0088de:	8bae                	mv	s7,a1
1c0088e0:	351d                	jal	1c008706 <__extendsfdf2>
1c0088e2:	8a2a                	mv	s4,a0
1c0088e4:	8562                	mv	a0,s8
1c0088e6:	8aae                	mv	s5,a1
1c0088e8:	3d39                	jal	1c008706 <__extendsfdf2>
1c0088ea:	862a                	mv	a2,a0
1c0088ec:	86ae                	mv	a3,a1
1c0088ee:	885a                	mv	a6,s6
1c0088f0:	88de                	mv	a7,s7
1c0088f2:	8752                	mv	a4,s4
1c0088f4:	87d6                	mv	a5,s5
1c0088f6:	85ce                	mv	a1,s3
1c0088f8:	970c8513          	addi	a0,s9,-1680 # 1c000970 <__DTOR_END__+0x108>
1c0088fc:	2681                	jal	1c008c3c <printf>
1c0088fe:	0001                	nop
1c008900:	0049270b          	p.lw	a4,4(s2!)
1c008904:	0044a78b          	p.lw	a5,4(s1!)
1c008908:	40f77443          	fmadd.s	s0,a4,a5,s0
1c00890c:	0001                	nop
1c00890e:	0219bc63          	p.bneimm	s3,1,1c008946 <cluster_entry+0xec>
1c008912:	8522                	mv	a0,s0
1c008914:	3bcd                	jal	1c008706 <__extendsfdf2>
1c008916:	862a                	mv	a2,a0
1c008918:	1c001537          	lui	a0,0x1c001
1c00891c:	86ae                	mv	a3,a1
1c00891e:	99050513          	addi	a0,a0,-1648 # 1c000990 <__DTOR_END__+0x128>
1c008922:	2e29                	jal	1c008c3c <printf>
1c008924:	002047b7          	lui	a5,0x204
1c008928:	21c7a783          	lw	a5,540(a5) # 20421c <__l1_heap_size+0x1c4244>
1c00892c:	50f2                	lw	ra,60(sp)
1c00892e:	5462                	lw	s0,56(sp)
1c008930:	54d2                	lw	s1,52(sp)
1c008932:	5942                	lw	s2,48(sp)
1c008934:	59b2                	lw	s3,44(sp)
1c008936:	5a22                	lw	s4,40(sp)
1c008938:	5a92                	lw	s5,36(sp)
1c00893a:	5b02                	lw	s6,32(sp)
1c00893c:	4bf2                	lw	s7,28(sp)
1c00893e:	4c62                	lw	s8,24(sp)
1c008940:	4cd2                	lw	s9,20(sp)
1c008942:	6121                	addi	sp,sp,64
1c008944:	8082                	ret
1c008946:	4985                	li	s3,1
1c008948:	b759                	j	1c0088ce <cluster_entry+0x74>

1c00894a <main>:
1c00894a:	711d                	addi	sp,sp,-96
1c00894c:	45e5                	li	a1,25
1c00894e:	02700513          	li	a0,39
1c008952:	ce86                	sw	ra,92(sp)
1c008954:	cca2                	sw	s0,88(sp)
1c008956:	20a5                	jal	1c0089be <padctrl_mode_set>
1c008958:	45e9                	li	a1,26
1c00895a:	02600513          	li	a0,38
1c00895e:	2085                	jal	1c0089be <padctrl_mode_set>
1c008960:	0808                	addi	a0,sp,16
1c008962:	68c020ef          	jal	ra,1c00afee <pi_cluster_conf_init>
1c008966:	0048                	addi	a0,sp,4
1c008968:	080c                	addi	a1,sp,16
1c00896a:	725010ef          	jal	ra,1c00a88e <pi_open_from_conf>
1c00896e:	0048                	addi	a0,sp,4
1c008970:	688020ef          	jal	ra,1c00aff8 <pi_cluster_open>
1c008974:	e905                	bnez	a0,1c0089a4 <main+0x5a>
1c008976:	1c0097b7          	lui	a5,0x1c009
1c00897a:	85a78793          	addi	a5,a5,-1958 # 1c00885a <cluster_entry>
1c00897e:	d43e                	sw	a5,40(sp)
1c008980:	842a                	mv	s0,a0
1c008982:	47a1                	li	a5,8
1c008984:	102c                	addi	a1,sp,40
1c008986:	0048                	addi	a0,sp,4
1c008988:	d602                	sw	zero,44(sp)
1c00898a:	d802                	sw	zero,48(sp)
1c00898c:	da02                	sw	zero,52(sp)
1c00898e:	de3e                	sw	a5,60(sp)
1c008990:	039020ef          	jal	ra,1c00b1c8 <pi_cluster_send_task_to_cl>
1c008994:	0048                	addi	a0,sp,4
1c008996:	7ac020ef          	jal	ra,1c00b142 <pi_cluster_close>
1c00899a:	8522                	mv	a0,s0
1c00899c:	40f6                	lw	ra,92(sp)
1c00899e:	4466                	lw	s0,88(sp)
1c0089a0:	6125                	addi	sp,sp,96
1c0089a2:	8082                	ret
1c0089a4:	547d                	li	s0,-1
1c0089a6:	bfd5                	j	1c00899a <main+0x50>

1c0089a8 <pos_soc_init>:
1c0089a8:	02faf7b7          	lui	a5,0x2faf
1c0089ac:	08078793          	addi	a5,a5,128 # 2faf080 <__l1_heap_size+0x2f6f0a8>
1c0089b0:	00400713          	li	a4,4
1c0089b4:	00f02223          	sw	a5,4(zero) # 4 <pos_freq_domains>
1c0089b8:	c71c                	sw	a5,8(a4)
1c0089ba:	c35c                	sw	a5,4(a4)
1c0089bc:	8082                	ret

1c0089be <padctrl_mode_set>:
1c0089be:	034287b7          	lui	a5,0x3428
1c0089c2:	953e                	add	a0,a0,a5
1c0089c4:	050e                	slli	a0,a0,0x3
1c0089c6:	0511                	addi	a0,a0,4
1c0089c8:	411c                	lw	a5,0(a0)
1c0089ca:	c805a7b3          	p.insert	a5,a1,4,0
1c0089ce:	c11c                	sw	a5,0(a0)
1c0089d0:	8082                	ret

1c0089d2 <pos_libc_putc_uart_req>:
1c0089d2:	410c                	lw	a1,0(a0)
1c0089d4:	1141                	addi	sp,sp,-16
1c0089d6:	00759793          	slli	a5,a1,0x7
1c0089da:	1c0105b7          	lui	a1,0x1c010
1c0089de:	15058593          	addi	a1,a1,336 # 1c010150 <__cluster_text_end>
1c0089e2:	c422                	sw	s0,8(sp)
1c0089e4:	c606                	sw	ra,12(sp)
1c0089e6:	95be                	add	a1,a1,a5
1c0089e8:	0005c783          	lbu	a5,0(a1)
1c0089ec:	842a                	mv	s0,a0
1c0089ee:	cf9d                	beqz	a5,1c008a2c <pos_libc_putc_uart_req+0x5a>
1c0089f0:	00158613          	addi	a2,a1,1
1c0089f4:	a011                	j	1c0089f8 <pos_libc_putc_uart_req+0x26>
1c0089f6:	863a                	mv	a2,a4
1c0089f8:	00064783          	lbu	a5,0(a2)
1c0089fc:	00160713          	addi	a4,a2,1
1c008a00:	fbfd                	bnez	a5,1c0089f6 <pos_libc_putc_uart_req+0x24>
1c008a02:	8e0d                	sub	a2,a2,a1
1c008a04:	01000513          	li	a0,16
1c008a08:	4b6020ef          	jal	ra,1c00aebe <pi_uart_write>
1c008a0c:	401c                	lw	a5,0(s0)
1c008a0e:	4705                	li	a4,1
1c008a10:	c058                	sw	a4,4(s0)
1c008a12:	04078793          	addi	a5,a5,64 # 3428040 <__l1_heap_size+0x33e8068>
1c008a16:	00201737          	lui	a4,0x201
1c008a1a:	40b2                	lw	ra,12(sp)
1c008a1c:	4422                	lw	s0,8(sp)
1c008a1e:	07da                	slli	a5,a5,0x16
1c008a20:	e0470713          	addi	a4,a4,-508 # 200e04 <__l1_heap_size+0x1c0e2c>
1c008a24:	0007e723          	p.sw	zero,a4(a5)
1c008a28:	0141                	addi	sp,sp,16
1c008a2a:	8082                	ret
1c008a2c:	4601                	li	a2,0
1c008a2e:	bfd9                	j	1c008a04 <pos_libc_putc_uart_req+0x32>

1c008a30 <strchr>:
1c008a30:	00054783          	lbu	a5,0(a0)
1c008a34:	0ff5f593          	andi	a1,a1,255
1c008a38:	00b78c63          	beq	a5,a1,1c008a50 <strchr+0x20>
1c008a3c:	cb99                	beqz	a5,1c008a52 <strchr+0x22>
1c008a3e:	00150793          	addi	a5,a0,1
1c008a42:	a011                	j	1c008a46 <strchr+0x16>
1c008a44:	c719                	beqz	a4,1c008a52 <strchr+0x22>
1c008a46:	853e                	mv	a0,a5
1c008a48:	0017c70b          	p.lbu	a4,1(a5!)
1c008a4c:	feb71ce3          	bne	a4,a1,1c008a44 <strchr+0x14>
1c008a50:	8082                	ret
1c008a52:	0015b593          	seqz	a1,a1
1c008a56:	40b005b3          	neg	a1,a1
1c008a5a:	8d6d                	and	a0,a0,a1
1c008a5c:	8082                	ret

1c008a5e <pos_libc_fputc_locked>:
1c008a5e:	1c0017b7          	lui	a5,0x1c001
1c008a62:	2407a783          	lw	a5,576(a5) # 1c001240 <_edata>
1c008a66:	c7a1                	beqz	a5,1c008aae <pos_libc_fputc_locked+0x50>
1c008a68:	f14026f3          	csrr	a3,mhartid
1c008a6c:	477d                	li	a4,31
1c008a6e:	ca5697b3          	p.extractu	a5,a3,5,5
1c008a72:	08e78063          	beq	a5,a4,1c008af2 <pos_libc_fputc_locked+0x94>
1c008a76:	00779613          	slli	a2,a5,0x7
1c008a7a:	00279713          	slli	a4,a5,0x2
1c008a7e:	1c0105b7          	lui	a1,0x1c010
1c008a82:	1c0017b7          	lui	a5,0x1c001
1c008a86:	15058593          	addi	a1,a1,336 # 1c010150 <__cluster_text_end>
1c008a8a:	24878793          	addi	a5,a5,584 # 1c001248 <pos_libc_uart_buffer_index_cl>
1c008a8e:	95b2                	add	a1,a1,a2
1c008a90:	97ba                	add	a5,a5,a4
1c008a92:	4390                	lw	a2,0(a5)
1c008a94:	0ff57513          	andi	a0,a0,255
1c008a98:	00160713          	addi	a4,a2,1
1c008a9c:	00a5c623          	p.sb	a0,a2(a1)
1c008aa0:	c398                	sw	a4,0(a5)
1c008aa2:	07f00613          	li	a2,127
1c008aa6:	00c70663          	beq	a4,a2,1c008ab2 <pos_libc_fputc_locked+0x54>
1c008aaa:	00a52463          	p.beqimm	a0,10,1c008ab2 <pos_libc_fputc_locked+0x54>
1c008aae:	4501                	li	a0,0
1c008ab0:	8082                	ret
1c008ab2:	711d                	addi	sp,sp,-96
1c008ab4:	ce86                	sw	ra,92(sp)
1c008ab6:	0007a023          	sw	zero,0(a5)
1c008aba:	0005c723          	p.sb	zero,a4(a1)
1c008abe:	ca5696b3          	p.extractu	a3,a3,5,5
1c008ac2:	47fd                	li	a5,31
1c008ac4:	04f69063          	bne	a3,a5,1c008b04 <pos_libc_fputc_locked+0xa6>
1c008ac8:	0005c783          	lbu	a5,0(a1)
1c008acc:	cbb5                	beqz	a5,1c008b40 <pos_libc_fputc_locked+0xe2>
1c008ace:	00158613          	addi	a2,a1,1
1c008ad2:	a011                	j	1c008ad6 <pos_libc_fputc_locked+0x78>
1c008ad4:	863a                	mv	a2,a4
1c008ad6:	00064783          	lbu	a5,0(a2)
1c008ada:	00160713          	addi	a4,a2,1
1c008ade:	fbfd                	bnez	a5,1c008ad4 <pos_libc_fputc_locked+0x76>
1c008ae0:	8e0d                	sub	a2,a2,a1
1c008ae2:	01000513          	li	a0,16
1c008ae6:	3d8020ef          	jal	ra,1c00aebe <pi_uart_write>
1c008aea:	40f6                	lw	ra,92(sp)
1c008aec:	4501                	li	a0,0
1c008aee:	6125                	addi	sp,sp,96
1c008af0:	8082                	ret
1c008af2:	1c0017b7          	lui	a5,0x1c001
1c008af6:	1c0105b7          	lui	a1,0x1c010
1c008afa:	24478793          	addi	a5,a5,580 # 1c001244 <pos_libc_uart_buffer_index>
1c008afe:	1d058593          	addi	a1,a1,464 # 1c0101d0 <pos_libc_uart_buffer>
1c008b02:	bf41                	j	1c008a92 <pos_libc_fputc_locked+0x34>
1c008b04:	1c0097b7          	lui	a5,0x1c009
1c008b08:	9d278793          	addi	a5,a5,-1582 # 1c0089d2 <pos_libc_putc_uart_req>
1c008b0c:	ca3e                	sw	a5,20(sp)
1c008b0e:	0808                	addi	a0,sp,16
1c008b10:	003c                	addi	a5,sp,8
1c008b12:	cc3e                	sw	a5,24(sp)
1c008b14:	c436                	sw	a3,8(sp)
1c008b16:	c602                	sw	zero,12(sp)
1c008b18:	758020ef          	jal	ra,1c00b270 <pos_cluster_push_fc_event>
1c008b1c:	47b2                	lw	a5,12(sp)
1c008b1e:	f7f1                	bnez	a5,1c008aea <pos_libc_fputc_locked+0x8c>
1c008b20:	002047b7          	lui	a5,0x204
1c008b24:	4709                	li	a4,2
1c008b26:	03c78613          	addi	a2,a5,60 # 20403c <__l1_heap_size+0x1c4064>
1c008b2a:	00e7a423          	sw	a4,8(a5)
1c008b2e:	4214                	lw	a3,0(a2)
1c008b30:	00e7a223          	sw	a4,4(a5)
1c008b34:	46b2                	lw	a3,12(sp)
1c008b36:	daf5                	beqz	a3,1c008b2a <pos_libc_fputc_locked+0xcc>
1c008b38:	40f6                	lw	ra,92(sp)
1c008b3a:	4501                	li	a0,0
1c008b3c:	6125                	addi	sp,sp,96
1c008b3e:	8082                	ret
1c008b40:	4601                	li	a2,0
1c008b42:	b745                	j	1c008ae2 <pos_libc_fputc_locked+0x84>

1c008b44 <pos_libc_prf_locked>:
1c008b44:	1141                	addi	sp,sp,-16
1c008b46:	c422                	sw	s0,8(sp)
1c008b48:	f1402473          	csrr	s0,mhartid
1c008b4c:	c606                	sw	ra,12(sp)
1c008b4e:	47fd                	li	a5,31
1c008b50:	ca541733          	p.extractu	a4,s0,5,5
1c008b54:	02f70963          	beq	a4,a5,1c008b86 <pos_libc_prf_locked+0x42>
1c008b58:	00400813          	li	a6,4
1c008b5c:	c1484833          	p.bset	a6,a6,0,20
1c008b60:	00082783          	lw	a5,0(a6)
1c008b64:	03f7b163          	p.bneimm	a5,-1,1c008b86 <pos_libc_prf_locked+0x42>
1c008b68:	002047b7          	lui	a5,0x204
1c008b6c:	4711                	li	a4,4
1c008b6e:	03c78313          	addi	t1,a5,60 # 20403c <__l1_heap_size+0x1c4064>
1c008b72:	00e7a423          	sw	a4,8(a5)
1c008b76:	00032883          	lw	a7,0(t1)
1c008b7a:	00e7a223          	sw	a4,4(a5)
1c008b7e:	00082883          	lw	a7,0(a6)
1c008b82:	fff8a8e3          	p.beqimm	a7,-1,1c008b72 <pos_libc_prf_locked+0x2e>
1c008b86:	20d5                	jal	1c008c6a <pos_libc_prf>
1c008b88:	ca541433          	p.extractu	s0,s0,5,5
1c008b8c:	47fd                	li	a5,31
1c008b8e:	00f40863          	beq	s0,a5,1c008b9e <pos_libc_prf_locked+0x5a>
1c008b92:	00002223          	sw	zero,4(zero) # 4 <pos_freq_domains>
1c008b96:	002047b7          	lui	a5,0x204
1c008b9a:	1007a423          	sw	zero,264(a5) # 204108 <__l1_heap_size+0x1c4130>
1c008b9e:	40b2                	lw	ra,12(sp)
1c008ba0:	4422                	lw	s0,8(sp)
1c008ba2:	0141                	addi	sp,sp,16
1c008ba4:	8082                	ret

1c008ba6 <exit>:
1c008ba6:	1141                	addi	sp,sp,-16
1c008ba8:	c422                	sw	s0,8(sp)
1c008baa:	c606                	sw	ra,12(sp)
1c008bac:	842a                	mv	s0,a0
1c008bae:	49f010ef          	jal	ra,1c00a84c <pos_init_stop>
1c008bb2:	c1f44533          	p.bset	a0,s0,0,31
1c008bb6:	1a1047b7          	lui	a5,0x1a104
1c008bba:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <_emram_start+0x9904080>
1c008bbe:	1a10a7b7          	lui	a5,0x1a10a
1c008bc2:	577d                	li	a4,-1
1c008bc4:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <_emram_start+0x99097e8>
1c008bc8:	10500073          	wfi
1c008bcc:	10500073          	wfi
1c008bd0:	bfe5                	j	1c008bc8 <exit+0x22>

1c008bd2 <pos_io_start>:
1c008bd2:	1101                	addi	sp,sp,-32
1c008bd4:	0048                	addi	a0,sp,4
1c008bd6:	ce06                	sw	ra,28(sp)
1c008bd8:	cc22                	sw	s0,24(sp)
1c008bda:	0e6020ef          	jal	ra,1c00acc0 <pi_uart_conf_init>
1c008bde:	4785                	li	a5,1
1c008be0:	00f11623          	sh	a5,12(sp)
1c008be4:	67f1                	lui	a5,0x1c
1c008be6:	01000513          	li	a0,16
1c008bea:	20078793          	addi	a5,a5,512 # 1c200 <pos_soc_event_callback+0x1bdbc>
1c008bee:	004c                	addi	a1,sp,4
1c008bf0:	c23e                	sw	a5,4(sp)
1c008bf2:	49d010ef          	jal	ra,1c00a88e <pi_open_from_conf>
1c008bf6:	01000513          	li	a0,16
1c008bfa:	0e2020ef          	jal	ra,1c00acdc <pi_uart_open>
1c008bfe:	e911                	bnez	a0,1c008c12 <pos_io_start+0x40>
1c008c00:	1c0017b7          	lui	a5,0x1c001
1c008c04:	4705                	li	a4,1
1c008c06:	24e7a023          	sw	a4,576(a5) # 1c001240 <_edata>
1c008c0a:	40f2                	lw	ra,28(sp)
1c008c0c:	4462                	lw	s0,24(sp)
1c008c0e:	6105                	addi	sp,sp,32
1c008c10:	8082                	ret
1c008c12:	557d                	li	a0,-1
1c008c14:	bfdd                	j	1c008c0a <pos_io_start+0x38>

1c008c16 <pos_io_stop>:
1c008c16:	1141                	addi	sp,sp,-16
1c008c18:	01000513          	li	a0,16
1c008c1c:	1c0017b7          	lui	a5,0x1c001
1c008c20:	c606                	sw	ra,12(sp)
1c008c22:	2407a023          	sw	zero,576(a5) # 1c001240 <_edata>
1c008c26:	1d4020ef          	jal	ra,1c00adfa <pi_uart_close>
1c008c2a:	40b2                	lw	ra,12(sp)
1c008c2c:	4501                	li	a0,0
1c008c2e:	0141                	addi	sp,sp,16
1c008c30:	8082                	ret

1c008c32 <pos_io_init>:
1c008c32:	1c0017b7          	lui	a5,0x1c001
1c008c36:	2407a023          	sw	zero,576(a5) # 1c001240 <_edata>
1c008c3a:	8082                	ret

1c008c3c <printf>:
1c008c3c:	7139                	addi	sp,sp,-64
1c008c3e:	02410313          	addi	t1,sp,36
1c008c42:	d432                	sw	a2,40(sp)
1c008c44:	862a                	mv	a2,a0
1c008c46:	1c009537          	lui	a0,0x1c009
1c008c4a:	d22e                	sw	a1,36(sp)
1c008c4c:	d636                	sw	a3,44(sp)
1c008c4e:	4589                	li	a1,2
1c008c50:	869a                	mv	a3,t1
1c008c52:	a5e50513          	addi	a0,a0,-1442 # 1c008a5e <pos_libc_fputc_locked>
1c008c56:	ce06                	sw	ra,28(sp)
1c008c58:	d83a                	sw	a4,48(sp)
1c008c5a:	da3e                	sw	a5,52(sp)
1c008c5c:	dc42                	sw	a6,56(sp)
1c008c5e:	de46                	sw	a7,60(sp)
1c008c60:	c61a                	sw	t1,12(sp)
1c008c62:	35cd                	jal	1c008b44 <pos_libc_prf_locked>
1c008c64:	40f2                	lw	ra,28(sp)
1c008c66:	6121                	addi	sp,sp,64
1c008c68:	8082                	ret

1c008c6a <pos_libc_prf>:
1c008c6a:	7119                	addi	sp,sp,-128
1c008c6c:	dca2                	sw	s0,120(sp)
1c008c6e:	1058                	addi	a4,sp,36
1c008c70:	4401                	li	s0,0
1c008c72:	d6ce                	sw	s3,108(sp)
1c008c74:	d4d2                	sw	s4,104(sp)
1c008c76:	d2d6                	sw	s5,100(sp)
1c008c78:	cede                	sw	s7,92(sp)
1c008c7a:	cce2                	sw	s8,88(sp)
1c008c7c:	c8ea                	sw	s10,80(sp)
1c008c7e:	de86                	sw	ra,124(sp)
1c008c80:	daa6                	sw	s1,116(sp)
1c008c82:	d8ca                	sw	s2,112(sp)
1c008c84:	d0da                	sw	s6,96(sp)
1c008c86:	cae6                	sw	s9,84(sp)
1c008c88:	c6ee                	sw	s11,76(sp)
1c008c8a:	89aa                	mv	s3,a0
1c008c8c:	8bae                	mv	s7,a1
1c008c8e:	8d32                	mv	s10,a2
1c008c90:	8a36                	mv	s4,a3
1c008c92:	1c001c37          	lui	s8,0x1c001
1c008c96:	c03a                	sw	a4,0(sp)
1c008c98:	8aa2                	mv	s5,s0
1c008c9a:	a039                	j	1c008ca8 <pos_libc_prf+0x3e>
1c008c9c:	85de                	mv	a1,s7
1c008c9e:	9982                	jalr	s3
1c008ca0:	15f52063          	p.beqimm	a0,-1,1c008de0 <pos_libc_prf+0x176>
1c008ca4:	0a85                	addi	s5,s5,1
1c008ca6:	8d22                	mv	s10,s0
1c008ca8:	000d4503          	lbu	a0,0(s10)
1c008cac:	001d0413          	addi	s0,s10,1
1c008cb0:	c979                	beqz	a0,1c008d86 <pos_libc_prf+0x11c>
1c008cb2:	02500793          	li	a5,37
1c008cb6:	fef513e3          	bne	a0,a5,1c008c9c <pos_libc_prf+0x32>
1c008cba:	ca02                	sw	zero,20(sp)
1c008cbc:	c802                	sw	zero,16(sp)
1c008cbe:	c602                	sw	zero,12(sp)
1c008cc0:	c402                	sw	zero,8(sp)
1c008cc2:	c202                	sw	zero,4(sp)
1c008cc4:	02300493          	li	s1,35
1c008cc8:	02d00b13          	li	s6,45
1c008ccc:	00044c83          	lbu	s9,0(s0)
1c008cd0:	00140913          	addi	s2,s0,1
1c008cd4:	85e6                	mv	a1,s9
1c008cd6:	99cc0513          	addi	a0,s8,-1636 # 1c00099c <__DTOR_END__+0x134>
1c008cda:	8d4a                	mv	s10,s2
1c008cdc:	8de6                	mv	s11,s9
1c008cde:	3b89                	jal	1c008a30 <strchr>
1c008ce0:	c91d                	beqz	a0,1c008d16 <pos_libc_prf+0xac>
1c008ce2:	109c8963          	beq	s9,s1,1c008df4 <pos_libc_prf+0x18a>
1c008ce6:	0194fe63          	bleu	s9,s1,1c008d02 <pos_libc_prf+0x98>
1c008cea:	116c8163          	beq	s9,s6,1c008dec <pos_libc_prf+0x182>
1c008cee:	03000713          	li	a4,48
1c008cf2:	0eec8963          	beq	s9,a4,1c008de4 <pos_libc_prf+0x17a>
1c008cf6:	02b00793          	li	a5,43
1c008cfa:	0afc8763          	beq	s9,a5,1c008da8 <pos_libc_prf+0x13e>
1c008cfe:	844a                	mv	s0,s2
1c008d00:	b7f1                	j	1c008ccc <pos_libc_prf+0x62>
1c008d02:	080c8263          	beqz	s9,1c008d86 <pos_libc_prf+0x11c>
1c008d06:	02000793          	li	a5,32
1c008d0a:	fefc9ae3          	bne	s9,a5,1c008cfe <pos_libc_prf+0x94>
1c008d0e:	4785                	li	a5,1
1c008d10:	c83e                	sw	a5,16(sp)
1c008d12:	844a                	mv	s0,s2
1c008d14:	bf65                	j	1c008ccc <pos_libc_prf+0x62>
1c008d16:	02a00693          	li	a3,42
1c008d1a:	2edc8263          	beq	s9,a3,1c008ffe <pos_libc_prf+0x394>
1c008d1e:	fd0c8693          	addi	a3,s9,-48
1c008d22:	45a5                	li	a1,9
1c008d24:	4b01                	li	s6,0
1c008d26:	0cd5fd63          	bleu	a3,a1,1c008e00 <pos_libc_prf+0x196>
1c008d2a:	02e00793          	li	a5,46
1c008d2e:	28fd8663          	beq	s11,a5,1c008fba <pos_libc_prf+0x350>
1c008d32:	846e                	mv	s0,s11
1c008d34:	54fd                	li	s1,-1
1c008d36:	1c001737          	lui	a4,0x1c001
1c008d3a:	85ee                	mv	a1,s11
1c008d3c:	9a470513          	addi	a0,a4,-1628 # 1c0009a4 <__DTOR_END__+0x13c>
1c008d40:	39c5                	jal	1c008a30 <strchr>
1c008d42:	4781                	li	a5,0
1c008d44:	cd19                	beqz	a0,1c008d62 <pos_libc_prf+0xf8>
1c008d46:	06c00793          	li	a5,108
1c008d4a:	001d0693          	addi	a3,s10,1
1c008d4e:	000d4d83          	lbu	s11,0(s10)
1c008d52:	3af40563          	beq	s0,a5,1c0090fc <pos_libc_prf+0x492>
1c008d56:	06800793          	li	a5,104
1c008d5a:	3af40563          	beq	s0,a5,1c009104 <pos_libc_prf+0x49a>
1c008d5e:	8d36                	mv	s10,a3
1c008d60:	87a2                	mv	a5,s0
1c008d62:	06700693          	li	a3,103
1c008d66:	0bb6ee63          	bltu	a3,s11,1c008e22 <pos_libc_prf+0x1b8>
1c008d6a:	06500693          	li	a3,101
1c008d6e:	3addf2e3          	bleu	a3,s11,1c009912 <pos_libc_prf+0xca8>
1c008d72:	04700693          	li	a3,71
1c008d76:	39b6ed63          	bltu	a3,s11,1c009110 <pos_libc_prf+0x4a6>
1c008d7a:	04500793          	li	a5,69
1c008d7e:	38fdfae3          	bleu	a5,s11,1c009912 <pos_libc_prf+0xca8>
1c008d82:	2e0d9863          	bnez	s11,1c009072 <pos_libc_prf+0x408>
1c008d86:	8456                	mv	s0,s5
1c008d88:	8522                	mv	a0,s0
1c008d8a:	50f6                	lw	ra,124(sp)
1c008d8c:	5466                	lw	s0,120(sp)
1c008d8e:	54d6                	lw	s1,116(sp)
1c008d90:	5946                	lw	s2,112(sp)
1c008d92:	59b6                	lw	s3,108(sp)
1c008d94:	5a26                	lw	s4,104(sp)
1c008d96:	5a96                	lw	s5,100(sp)
1c008d98:	5b06                	lw	s6,96(sp)
1c008d9a:	4bf6                	lw	s7,92(sp)
1c008d9c:	4c66                	lw	s8,88(sp)
1c008d9e:	4cd6                	lw	s9,84(sp)
1c008da0:	4d46                	lw	s10,80(sp)
1c008da2:	4db6                	lw	s11,76(sp)
1c008da4:	6109                	addi	sp,sp,128
1c008da6:	8082                	ret
1c008da8:	4705                	li	a4,1
1c008daa:	c63a                	sw	a4,12(sp)
1c008dac:	844a                	mv	s0,s2
1c008dae:	bf39                	j	1c008ccc <pos_libc_prf+0x62>
1c008db0:	00044503          	lbu	a0,0(s0)
1c008db4:	47a5                	li	a5,9
1c008db6:	fd050693          	addi	a3,a0,-48
1c008dba:	72d7e9e3          	bltu	a5,a3,1c009cec <pos_libc_prf+0x1082>
1c008dbe:	00140793          	addi	a5,s0,1
1c008dc2:	8dbe                	mv	s11,a5
1c008dc4:	a809                	j	1c008dd6 <pos_libc_prf+0x16c>
1c008dc6:	001dc50b          	p.lbu	a0,1(s11!)
1c008dca:	4725                	li	a4,9
1c008dcc:	fd050793          	addi	a5,a0,-48
1c008dd0:	197d                	addi	s2,s2,-1
1c008dd2:	70f76ee3          	bltu	a4,a5,1c009cee <pos_libc_prf+0x1084>
1c008dd6:	85de                	mv	a1,s7
1c008dd8:	846e                	mv	s0,s11
1c008dda:	9982                	jalr	s3
1c008ddc:	fff535e3          	p.bneimm	a0,-1,1c008dc6 <pos_libc_prf+0x15c>
1c008de0:	547d                	li	s0,-1
1c008de2:	b75d                	j	1c008d88 <pos_libc_prf+0x11e>
1c008de4:	4785                	li	a5,1
1c008de6:	ca3e                	sw	a5,20(sp)
1c008de8:	844a                	mv	s0,s2
1c008dea:	b5cd                	j	1c008ccc <pos_libc_prf+0x62>
1c008dec:	4705                	li	a4,1
1c008dee:	c43a                	sw	a4,8(sp)
1c008df0:	844a                	mv	s0,s2
1c008df2:	bde9                	j	1c008ccc <pos_libc_prf+0x62>
1c008df4:	4705                	li	a4,1
1c008df6:	c23a                	sw	a4,4(sp)
1c008df8:	844a                	mv	s0,s2
1c008dfa:	bdc9                	j	1c008ccc <pos_libc_prf+0x62>
1c008dfc:	844a                	mv	s0,s2
1c008dfe:	0905                	addi	s2,s2,1
1c008e00:	002b1793          	slli	a5,s6,0x2
1c008e04:	00094d83          	lbu	s11,0(s2)
1c008e08:	97da                	add	a5,a5,s6
1c008e0a:	0786                	slli	a5,a5,0x1
1c008e0c:	97e6                	add	a5,a5,s9
1c008e0e:	fd0d8713          	addi	a4,s11,-48
1c008e12:	fd078b13          	addi	s6,a5,-48
1c008e16:	8cee                	mv	s9,s11
1c008e18:	fee5f2e3          	bleu	a4,a1,1c008dfc <pos_libc_prf+0x192>
1c008e1c:	00240d13          	addi	s10,s0,2
1c008e20:	b729                	j	1c008d2a <pos_libc_prf+0xc0>
1c008e22:	07000693          	li	a3,112
1c008e26:	24dd85e3          	beq	s11,a3,1c009870 <pos_libc_prf+0xc06>
1c008e2a:	1fb6e463          	bltu	a3,s11,1c009012 <pos_libc_prf+0x3a8>
1c008e2e:	06e00693          	li	a3,110
1c008e32:	20dd8ae3          	beq	s11,a3,1c009846 <pos_libc_prf+0xbdc>
1c008e36:	2fb6e763          	bltu	a3,s11,1c009124 <pos_libc_prf+0x4ba>
1c008e3a:	06900693          	li	a3,105
1c008e3e:	2add9ce3          	bne	s11,a3,1c0098f6 <pos_libc_prf+0xc8c>
1c008e42:	06c00693          	li	a3,108
1c008e46:	00d78a63          	beq	a5,a3,1c008e5a <pos_libc_prf+0x1f0>
1c008e4a:	07a00693          	li	a3,122
1c008e4e:	00d78663          	beq	a5,a3,1c008e5a <pos_libc_prf+0x1f0>
1c008e52:	04c00693          	li	a3,76
1c008e56:	5ed78de3          	beq	a5,a3,1c009c50 <pos_libc_prf+0xfe6>
1c008e5a:	000a2783          	lw	a5,0(s4)
1c008e5e:	0a11                	addi	s4,s4,4
1c008e60:	41f7d713          	srai	a4,a5,0x1f
1c008e64:	ce52                	sw	s4,28(sp)
1c008e66:	c23a                	sw	a4,4(sp)
1c008e68:	4e0741e3          	bltz	a4,1c009b4a <pos_libc_prf+0xee0>
1c008e6c:	4732                	lw	a4,12(sp)
1c008e6e:	440709e3          	beqz	a4,1c009ac0 <pos_libc_prf+0xe56>
1c008e72:	02b00693          	li	a3,43
1c008e76:	4c92                	lw	s9,4(sp)
1c008e78:	02d10223          	sb	a3,36(sp)
1c008e7c:	02510a13          	addi	s4,sp,37
1c008e80:	843e                	mv	s0,a5
1c008e82:	8dd2                	mv	s11,s4
1c008e84:	a011                	j	1c008e88 <pos_libc_prf+0x21e>
1c008e86:	8dca                	mv	s11,s2
1c008e88:	4629                	li	a2,10
1c008e8a:	4681                	li	a3,0
1c008e8c:	8522                	mv	a0,s0
1c008e8e:	85e6                	mv	a1,s9
1c008e90:	d48ff0ef          	jal	ra,1c0083d8 <__umoddi3>
1c008e94:	892a                	mv	s2,a0
1c008e96:	85e6                	mv	a1,s9
1c008e98:	8522                	mv	a0,s0
1c008e9a:	4629                	li	a2,10
1c008e9c:	4681                	li	a3,0
1c008e9e:	9feff0ef          	jal	ra,1c00809c <__udivdi3>
1c008ea2:	03090913          	addi	s2,s2,48
1c008ea6:	012d8023          	sb	s2,0(s11)
1c008eaa:	00a5e7b3          	or	a5,a1,a0
1c008eae:	001d8913          	addi	s2,s11,1
1c008eb2:	842a                	mv	s0,a0
1c008eb4:	8cae                	mv	s9,a1
1c008eb6:	fbe1                	bnez	a5,1c008e86 <pos_libc_prf+0x21c>
1c008eb8:	00090023          	sb	zero,0(s2)
1c008ebc:	01ba7d63          	bleu	s11,s4,1c008ed6 <pos_libc_prf+0x26c>
1c008ec0:	87ee                	mv	a5,s11
1c008ec2:	000a4683          	lbu	a3,0(s4)
1c008ec6:	0007c703          	lbu	a4,0(a5)
1c008eca:	fed78fab          	p.sb	a3,-1(a5!)
1c008ece:	00ea00ab          	p.sb	a4,1(s4!)
1c008ed2:	fefa68e3          	bltu	s4,a5,1c008ec2 <pos_libc_prf+0x258>
1c008ed6:	4782                	lw	a5,0(sp)
1c008ed8:	4732                	lw	a4,12(sp)
1c008eda:	40f90933          	sub	s2,s2,a5
1c008ede:	3c071de3          	bnez	a4,1c009ab8 <pos_libc_prf+0xe4e>
1c008ee2:	47c2                	lw	a5,16(sp)
1c008ee4:	3c079ae3          	bnez	a5,1c009ab8 <pos_libc_prf+0xe4e>
1c008ee8:	4712                	lw	a4,4(sp)
1c008eea:	837d                	srli	a4,a4,0x1f
1c008eec:	c23a                	sw	a4,4(sp)
1c008eee:	3404c463          	bltz	s1,1c009236 <pos_libc_prf+0x5cc>
1c008ef2:	4712                	lw	a4,4(sp)
1c008ef4:	412484b3          	sub	s1,s1,s2
1c008ef8:	94ba                	add	s1,s1,a4
1c008efa:	0404e4b3          	p.max	s1,s1,zero
1c008efe:	009907b3          	add	a5,s2,s1
1c008f02:	40fb0b33          	sub	s6,s6,a5
1c008f06:	1040                	addi	s0,sp,36
1c008f08:	4c81                	li	s9,0
1c008f0a:	cc02                	sw	zero,24(sp)
1c008f0c:	4a01                	li	s4,0
1c008f0e:	4722                	lw	a4,8(sp)
1c008f10:	e305                	bnez	a4,1c008f30 <pos_libc_prf+0x2c6>
1c008f12:	01605f63          	blez	s6,1c008f30 <pos_libc_prf+0x2c6>
1c008f16:	fffb0d93          	addi	s11,s6,-1
1c008f1a:	85de                	mv	a1,s7
1c008f1c:	02000513          	li	a0,32
1c008f20:	9982                	jalr	s3
1c008f22:	1dfd                	addi	s11,s11,-1
1c008f24:	ebf52ee3          	p.beqimm	a0,-1,1c008de0 <pos_libc_prf+0x176>
1c008f28:	fffdb9e3          	p.bneimm	s11,-1,1c008f1a <pos_libc_prf+0x2b0>
1c008f2c:	9ada                	add	s5,s5,s6
1c008f2e:	5b7d                	li	s6,-1
1c008f30:	4792                	lw	a5,4(sp)
1c008f32:	00f40db3          	add	s11,s0,a5
1c008f36:	a031                	j	1c008f42 <pos_libc_prf+0x2d8>
1c008f38:	0014450b          	p.lbu	a0,1(s0!)
1c008f3c:	9982                	jalr	s3
1c008f3e:	ebf521e3          	p.beqimm	a0,-1,1c008de0 <pos_libc_prf+0x176>
1c008f42:	85de                	mv	a1,s7
1c008f44:	ffb41ae3          	bne	s0,s11,1c008f38 <pos_libc_prf+0x2ce>
1c008f48:	8da6                	mv	s11,s1
1c008f4a:	a021                	j	1c008f52 <pos_libc_prf+0x2e8>
1c008f4c:	9982                	jalr	s3
1c008f4e:	e9f529e3          	p.beqimm	a0,-1,1c008de0 <pos_libc_prf+0x176>
1c008f52:	1dfd                	addi	s11,s11,-1
1c008f54:	85de                	mv	a1,s7
1c008f56:	03000513          	li	a0,48
1c008f5a:	fffdb9e3          	p.bneimm	s11,-1,1c008f4c <pos_libc_prf+0x2e2>
1c008f5e:	4712                	lw	a4,4(sp)
1c008f60:	40e90933          	sub	s2,s2,a4
1c008f64:	c44a                	sw	s2,8(sp)
1c008f66:	e40a15e3          	bnez	s4,1c008db0 <pos_libc_prf+0x146>
1c008f6a:	47e2                	lw	a5,24(sp)
1c008f6c:	16079763          	bnez	a5,1c0090da <pos_libc_prf+0x470>
1c008f70:	120c8863          	beqz	s9,1c0090a0 <pos_libc_prf+0x436>
1c008f74:	00044783          	lbu	a5,0(s0)
1c008f78:	4a25                	li	s4,9
1c008f7a:	02e00d93          	li	s11,46
1c008f7e:	a801                	j	1c008f8e <pos_libc_prf+0x324>
1c008f80:	0405                	addi	s0,s0,1
1c008f82:	9982                	jalr	s3
1c008f84:	e5f52ee3          	p.beqimm	a0,-1,1c008de0 <pos_libc_prf+0x176>
1c008f88:	00044783          	lbu	a5,0(s0)
1c008f8c:	197d                	addi	s2,s2,-1
1c008f8e:	fd078713          	addi	a4,a5,-48
1c008f92:	853e                	mv	a0,a5
1c008f94:	85de                	mv	a1,s7
1c008f96:	feea75e3          	bleu	a4,s4,1c008f80 <pos_libc_prf+0x316>
1c008f9a:	ffb783e3          	beq	a5,s11,1c008f80 <pos_libc_prf+0x316>
1c008f9e:	8a66                	mv	s4,s9
1c008fa0:	85de                	mv	a1,s7
1c008fa2:	03000513          	li	a0,48
1c008fa6:	01404463          	bgtz	s4,1c008fae <pos_libc_prf+0x344>
1c008faa:	0010106f          	j	1c00a7aa <pos_libc_prf+0x1b40>
1c008fae:	9982                	jalr	s3
1c008fb0:	1a7d                	addi	s4,s4,-1
1c008fb2:	fff537e3          	p.bneimm	a0,-1,1c008fa0 <pos_libc_prf+0x336>
1c008fb6:	547d                	li	s0,-1
1c008fb8:	bbc1                	j	1c008d88 <pos_libc_prf+0x11e>
1c008fba:	000d4d83          	lbu	s11,0(s10)
1c008fbe:	02a00793          	li	a5,42
1c008fc2:	001d0513          	addi	a0,s10,1
1c008fc6:	08fd8e63          	beq	s11,a5,1c009062 <pos_libc_prf+0x3f8>
1c008fca:	fd0d8793          	addi	a5,s11,-48
1c008fce:	4825                	li	a6,9
1c008fd0:	846e                	mv	s0,s11
1c008fd2:	86aa                	mv	a3,a0
1c008fd4:	4481                	li	s1,0
1c008fd6:	45a5                	li	a1,9
1c008fd8:	8d2a                	mv	s10,a0
1c008fda:	d4f86ee3          	bltu	a6,a5,1c008d36 <pos_libc_prf+0xcc>
1c008fde:	00249793          	slli	a5,s1,0x2
1c008fe2:	97a6                	add	a5,a5,s1
1c008fe4:	0786                	slli	a5,a5,0x1
1c008fe6:	97ee                	add	a5,a5,s11
1c008fe8:	0016cd8b          	p.lbu	s11,1(a3!)
1c008fec:	fd078493          	addi	s1,a5,-48
1c008ff0:	fd0d8793          	addi	a5,s11,-48
1c008ff4:	846e                	mv	s0,s11
1c008ff6:	fef5f4e3          	bleu	a5,a1,1c008fde <pos_libc_prf+0x374>
1c008ffa:	8d36                	mv	s10,a3
1c008ffc:	bb2d                	j	1c008d36 <pos_libc_prf+0xcc>
1c008ffe:	000a2b03          	lw	s6,0(s4)
1c009002:	0a11                	addi	s4,s4,4
1c009004:	080b4363          	bltz	s6,1c00908a <pos_libc_prf+0x420>
1c009008:	00094d83          	lbu	s11,0(s2)
1c00900c:	00240d13          	addi	s10,s0,2
1c009010:	bb29                	j	1c008d2a <pos_libc_prf+0xc0>
1c009012:	07500693          	li	a3,117
1c009016:	10dd8763          	beq	s11,a3,1c009124 <pos_libc_prf+0x4ba>
1c00901a:	07800693          	li	a3,120
1c00901e:	10dd8363          	beq	s11,a3,1c009124 <pos_libc_prf+0x4ba>
1c009022:	07300793          	li	a5,115
1c009026:	0cfd98e3          	bne	s11,a5,1c0098f6 <pos_libc_prf+0xc8c>
1c00902a:	004a0713          	addi	a4,s4,4
1c00902e:	ce3a                	sw	a4,28(sp)
1c009030:	000a2403          	lw	s0,0(s4)
1c009034:	3c04c2e3          	bltz	s1,1c009bf8 <pos_libc_prf+0xf8e>
1c009038:	460481e3          	beqz	s1,1c009c9a <pos_libc_prf+0x1030>
1c00903c:	00044783          	lbu	a5,0(s0)
1c009040:	44078ce3          	beqz	a5,1c009c98 <pos_libc_prf+0x102e>
1c009044:	00140793          	addi	a5,s0,1
1c009048:	4901                	li	s2,0
1c00904a:	a021                	j	1c009052 <pos_libc_prf+0x3e8>
1c00904c:	0017c70b          	p.lbu	a4,1(a5!)
1c009050:	c701                	beqz	a4,1c009058 <pos_libc_prf+0x3ee>
1c009052:	0905                	addi	s2,s2,1
1c009054:	fe994ce3          	blt	s2,s1,1c00904c <pos_libc_prf+0x3e2>
1c009058:	412b0b33          	sub	s6,s6,s2
1c00905c:	4481                	li	s1,0
1c00905e:	c202                	sw	zero,4(sp)
1c009060:	b565                	j	1c008f08 <pos_libc_prf+0x29e>
1c009062:	001d4d83          	lbu	s11,1(s10)
1c009066:	000a2483          	lw	s1,0(s4)
1c00906a:	846e                	mv	s0,s11
1c00906c:	0d09                	addi	s10,s10,2
1c00906e:	0a11                	addi	s4,s4,4
1c009070:	b1d9                	j	1c008d36 <pos_libc_prf+0xcc>
1c009072:	02500793          	li	a5,37
1c009076:	08fd90e3          	bne	s11,a5,1c0098f6 <pos_libc_prf+0xc8c>
1c00907a:	85de                	mv	a1,s7
1c00907c:	02500513          	li	a0,37
1c009080:	9982                	jalr	s3
1c009082:	d5f52fe3          	p.beqimm	a0,-1,1c008de0 <pos_libc_prf+0x176>
1c009086:	0a85                	addi	s5,s5,1
1c009088:	b105                	j	1c008ca8 <pos_libc_prf+0x3e>
1c00908a:	4785                	li	a5,1
1c00908c:	41600b33          	neg	s6,s6
1c009090:	c43e                	sw	a5,8(sp)
1c009092:	bf9d                	j	1c009008 <pos_libc_prf+0x39e>
1c009094:	0014450b          	p.lbu	a0,1(s0!)
1c009098:	197d                	addi	s2,s2,-1
1c00909a:	9982                	jalr	s3
1c00909c:	d5f522e3          	p.beqimm	a0,-1,1c008de0 <pos_libc_prf+0x176>
1c0090a0:	85de                	mv	a1,s7
1c0090a2:	ff2049e3          	bgtz	s2,1c009094 <pos_libc_prf+0x42a>
1c0090a6:	4792                	lw	a5,4(sp)
1c0090a8:	4a72                	lw	s4,28(sp)
1c0090aa:	00fa8733          	add	a4,s5,a5
1c0090ae:	47a2                	lw	a5,8(sp)
1c0090b0:	9726                	add	a4,a4,s1
1c0090b2:	00e78ab3          	add	s5,a5,a4
1c0090b6:	bf6059e3          	blez	s6,1c008ca8 <pos_libc_prf+0x3e>
1c0090ba:	9ada                	add	s5,s5,s6
1c0090bc:	1b7d                	addi	s6,s6,-1
1c0090be:	a029                	j	1c0090c8 <pos_libc_prf+0x45e>
1c0090c0:	01fb3463          	p.bneimm	s6,-1,1c0090c8 <pos_libc_prf+0x45e>
1c0090c4:	5fe0106f          	j	1c00a6c2 <pos_libc_prf+0x1a58>
1c0090c8:	85de                	mv	a1,s7
1c0090ca:	02000513          	li	a0,32
1c0090ce:	9982                	jalr	s3
1c0090d0:	1b7d                	addi	s6,s6,-1
1c0090d2:	fff537e3          	p.bneimm	a0,-1,1c0090c0 <pos_libc_prf+0x456>
1c0090d6:	547d                	li	s0,-1
1c0090d8:	b945                	j	1c008d88 <pos_libc_prf+0x11e>
1c0090da:	02e00a13          	li	s4,46
1c0090de:	a031                	j	1c0090ea <pos_libc_prf+0x480>
1c0090e0:	197d                	addi	s2,s2,-1
1c0090e2:	014d9463          	bne	s11,s4,1c0090ea <pos_libc_prf+0x480>
1c0090e6:	5320106f          	j	1c00a618 <pos_libc_prf+0x19ae>
1c0090ea:	00144d8b          	p.lbu	s11,1(s0!)
1c0090ee:	85de                	mv	a1,s7
1c0090f0:	856e                	mv	a0,s11
1c0090f2:	9982                	jalr	s3
1c0090f4:	fff536e3          	p.bneimm	a0,-1,1c0090e0 <pos_libc_prf+0x476>
1c0090f8:	547d                	li	s0,-1
1c0090fa:	b179                	j	1c008d88 <pos_libc_prf+0x11e>
1c0090fc:	188d83e3          	beq	s11,s0,1c009a82 <pos_libc_prf+0xe18>
1c009100:	8d36                	mv	s10,a3
1c009102:	b185                	j	1c008d62 <pos_libc_prf+0xf8>
1c009104:	188d86e3          	beq	s11,s0,1c009a90 <pos_libc_prf+0xe26>
1c009108:	8d36                	mv	s10,a3
1c00910a:	06800793          	li	a5,104
1c00910e:	b991                	j	1c008d62 <pos_libc_prf+0xf8>
1c009110:	06300693          	li	a3,99
1c009114:	70dd8c63          	beq	s11,a3,1c00982c <pos_libc_prf+0xbc2>
1c009118:	d3b6e5e3          	bltu	a3,s11,1c008e42 <pos_libc_prf+0x1d8>
1c00911c:	05800693          	li	a3,88
1c009120:	7cdd9b63          	bne	s11,a3,1c0098f6 <pos_libc_prf+0xc8c>
1c009124:	06c00693          	li	a3,108
1c009128:	18d780e3          	beq	a5,a3,1c009aa8 <pos_libc_prf+0xe3e>
1c00912c:	07a00693          	li	a3,122
1c009130:	16d78ce3          	beq	a5,a3,1c009aa8 <pos_libc_prf+0xe3e>
1c009134:	04c00693          	li	a3,76
1c009138:	2cd78ee3          	beq	a5,a3,1c009c14 <pos_libc_prf+0xfaa>
1c00913c:	000a2403          	lw	s0,0(s4)
1c009140:	0a11                	addi	s4,s4,4
1c009142:	ce52                	sw	s4,28(sp)
1c009144:	4c81                	li	s9,0
1c009146:	06f00793          	li	a5,111
1c00914a:	3cfd81e3          	beq	s11,a5,1c009d0c <pos_libc_prf+0x10a2>
1c00914e:	07500793          	li	a5,117
1c009152:	02410a13          	addi	s4,sp,36
1c009156:	04fd8763          	beq	s11,a5,1c0091a4 <pos_libc_prf+0x53a>
1c00915a:	4712                	lw	a4,4(sp)
1c00915c:	2a0708e3          	beqz	a4,1c009c0c <pos_libc_prf+0xfa2>
1c009160:	77e1                	lui	a5,0xffff8
1c009162:	8307c793          	xori	a5,a5,-2000
1c009166:	02f11223          	sh	a5,36(sp)
1c00916a:	4909                	li	s2,2
1c00916c:	02610693          	addi	a3,sp,38
1c009170:	87b6                	mv	a5,a3
1c009172:	4e25                	li	t3,9
1c009174:	f6443733          	p.bclr	a4,s0,27,4
1c009178:	01cc9613          	slli	a2,s9,0x1c
1c00917c:	8011                	srli	s0,s0,0x4
1c00917e:	8c51                	or	s0,s0,a2
1c009180:	004cdc93          	srli	s9,s9,0x4
1c009184:	05770813          	addi	a6,a4,87
1c009188:	03070593          	addi	a1,a4,48
1c00918c:	01946533          	or	a0,s0,s9
1c009190:	06ee7663          	bleu	a4,t3,1c0091fc <pos_libc_prf+0x592>
1c009194:	01078023          	sb	a6,0(a5) # ffff8000 <pulp__FC+0xffff8001>
1c009198:	00178593          	addi	a1,a5,1
1c00919c:	c52d                	beqz	a0,1c009206 <pos_libc_prf+0x59c>
1c00919e:	87ae                	mv	a5,a1
1c0091a0:	bfd1                	j	1c009174 <pos_libc_prf+0x50a>
1c0091a2:	8a4a                	mv	s4,s2
1c0091a4:	4629                	li	a2,10
1c0091a6:	4681                	li	a3,0
1c0091a8:	8522                	mv	a0,s0
1c0091aa:	85e6                	mv	a1,s9
1c0091ac:	a2cff0ef          	jal	ra,1c0083d8 <__umoddi3>
1c0091b0:	892a                	mv	s2,a0
1c0091b2:	85e6                	mv	a1,s9
1c0091b4:	8522                	mv	a0,s0
1c0091b6:	4629                	li	a2,10
1c0091b8:	4681                	li	a3,0
1c0091ba:	ee3fe0ef          	jal	ra,1c00809c <__udivdi3>
1c0091be:	03090913          	addi	s2,s2,48
1c0091c2:	012a0023          	sb	s2,0(s4)
1c0091c6:	00a5e7b3          	or	a5,a1,a0
1c0091ca:	001a0913          	addi	s2,s4,1
1c0091ce:	842a                	mv	s0,a0
1c0091d0:	8cae                	mv	s9,a1
1c0091d2:	fbe1                	bnez	a5,1c0091a2 <pos_libc_prf+0x538>
1c0091d4:	4782                	lw	a5,0(sp)
1c0091d6:	00090023          	sb	zero,0(s2)
1c0091da:	40f90933          	sub	s2,s2,a5
1c0091de:	0147fd63          	bleu	s4,a5,1c0091f8 <pos_libc_prf+0x58e>
1c0091e2:	105c                	addi	a5,sp,36
1c0091e4:	0007c683          	lbu	a3,0(a5)
1c0091e8:	000a4703          	lbu	a4,0(s4)
1c0091ec:	feda0fab          	p.sb	a3,-1(s4!)
1c0091f0:	00e780ab          	p.sb	a4,1(a5!)
1c0091f4:	ff47e8e3          	bltu	a5,s4,1c0091e4 <pos_libc_prf+0x57a>
1c0091f8:	c202                	sw	zero,4(sp)
1c0091fa:	b9d5                	j	1c008eee <pos_libc_prf+0x284>
1c0091fc:	00b78023          	sb	a1,0(a5)
1c009200:	00178593          	addi	a1,a5,1
1c009204:	fd49                	bnez	a0,1c00919e <pos_libc_prf+0x534>
1c009206:	00058023          	sb	zero,0(a1)
1c00920a:	8d95                	sub	a1,a1,a3
1c00920c:	00f6fc63          	bleu	a5,a3,1c009224 <pos_libc_prf+0x5ba>
1c009210:	0006c603          	lbu	a2,0(a3)
1c009214:	0007c703          	lbu	a4,0(a5)
1c009218:	fec78fab          	p.sb	a2,-1(a5!)
1c00921c:	00e680ab          	p.sb	a4,1(a3!)
1c009220:	fef6e8e3          	bltu	a3,a5,1c009210 <pos_libc_prf+0x5a6>
1c009224:	05800793          	li	a5,88
1c009228:	28fd82e3          	beq	s11,a5,1c009cac <pos_libc_prf+0x1042>
1c00922c:	4712                	lw	a4,4(sp)
1c00922e:	992e                	add	s2,s2,a1
1c009230:	0706                	slli	a4,a4,0x1
1c009232:	c23a                	sw	a4,4(sp)
1c009234:	b96d                	j	1c008eee <pos_libc_prf+0x284>
1c009236:	4c81                	li	s9,0
1c009238:	cc02                	sw	zero,24(sp)
1c00923a:	4a01                	li	s4,0
1c00923c:	47d2                	lw	a5,20(sp)
1c00923e:	5e078163          	beqz	a5,1c009820 <pos_libc_prf+0xbb6>
1c009242:	412b04b3          	sub	s1,s6,s2
1c009246:	0404e4b3          	p.max	s1,s1,zero
1c00924a:	009907b3          	add	a5,s2,s1
1c00924e:	40fb0b33          	sub	s6,s6,a5
1c009252:	1040                	addi	s0,sp,36
1c009254:	b96d                	j	1c008f0e <pos_libc_prf+0x2a4>
1c009256:	4881                	li	a7,0
1c009258:	4801                	li	a6,0
1c00925a:	4581                	li	a1,0
1c00925c:	4501                	li	a0,0
1c00925e:	4f11                	li	t5,4
1c009260:	410f0f33          	sub	t5,t5,a6
1c009264:	012f40fb          	lp.setup	x1,t5,1c009288 <pos_libc_prf+0x61e>
1c009268:	01f51713          	slli	a4,a0,0x1f
1c00926c:	0015d793          	srli	a5,a1,0x1
1c009270:	8fd9                	or	a5,a5,a4
1c009272:	fc15b5b3          	p.bclr	a1,a1,30,1
1c009276:	00f58eb3          	add	t4,a1,a5
1c00927a:	8105                	srli	a0,a0,0x1
1c00927c:	00beb5b3          	sltu	a1,t4,a1
1c009280:	00a587b3          	add	a5,a1,a0
1c009284:	853e                	mv	a0,a5
1c009286:	85f6                	mv	a1,t4
1c009288:	0805                	addi	a6,a6,1
1c00928a:	0004d363          	bgez	s1,1c009290 <pos_libc_prf+0x626>
1c00928e:	4499                	li	s1,6
1c009290:	04700693          	li	a3,71
1c009294:	0cde0be3          	beq	t3,a3,1c009b6a <pos_libc_prf+0xf00>
1c009298:	06600693          	li	a3,102
1c00929c:	4f81                	li	t6,0
1c00929e:	0edd84e3          	beq	s11,a3,1c009b86 <pos_libc_prf+0xf1c>
1c0092a2:	00148f13          	addi	t5,s1,1
1c0092a6:	4741                	li	a4,16
1c0092a8:	04ef4f33          	p.min	t5,t5,a4
1c0092ac:	1f7d                	addi	t5,t5,-1
1c0092ae:	4501                	li	a0,0
1c0092b0:	080006b7          	lui	a3,0x8000
1c0092b4:	4295                	li	t0,5
1c0092b6:	0f05                	addi	t5,t5,1
1c0092b8:	030f40fb          	lp.setup	x1,t5,1c009318 <pos_libc_prf+0x6ae>
1c0092bc:	00250613          	addi	a2,a0,2
1c0092c0:	00a63733          	sltu	a4,a2,a0
1c0092c4:	9736                	add	a4,a4,a3
1c0092c6:	02575533          	divu	a0,a4,t0
1c0092ca:	00251693          	slli	a3,a0,0x2
1c0092ce:	96aa                	add	a3,a3,a0
1c0092d0:	8f15                	sub	a4,a4,a3
1c0092d2:	0776                	slli	a4,a4,0x1d
1c0092d4:	00365593          	srli	a1,a2,0x3
1c0092d8:	8dd9                	or	a1,a1,a4
1c0092da:	0255d5b3          	divu	a1,a1,t0
1c0092de:	00359693          	slli	a3,a1,0x3
1c0092e2:	00559713          	slli	a4,a1,0x5
1c0092e6:	9736                	add	a4,a4,a3
1c0092e8:	40e60733          	sub	a4,a2,a4
1c0092ec:	02575733          	divu	a4,a4,t0
1c0092f0:	81f5                	srli	a1,a1,0x1d
1c0092f2:	00d70633          	add	a2,a4,a3
1c0092f6:	95aa                	add	a1,a1,a0
1c0092f8:	00e63733          	sltu	a4,a2,a4
1c0092fc:	00b706b3          	add	a3,a4,a1
1c009300:	01f69593          	slli	a1,a3,0x1f
1c009304:	00165713          	srli	a4,a2,0x1
1c009308:	8f4d                	or	a4,a4,a1
1c00930a:	fc163633          	p.bclr	a2,a2,30,1
1c00930e:	00e60533          	add	a0,a2,a4
1c009312:	8285                	srli	a3,a3,0x1
1c009314:	00c53633          	sltu	a2,a0,a2
1c009318:	96b2                	add	a3,a3,a2
1c00931a:	00ae85b3          	add	a1,t4,a0
1c00931e:	96be                	add	a3,a3,a5
1c009320:	01d5beb3          	sltu	t4,a1,t4
1c009324:	96f6                	add	a3,a3,t4
1c009326:	f606b533          	p.bclr	a0,a3,27,0
1c00932a:	87ae                	mv	a5,a1
1c00932c:	c125                	beqz	a0,1c00938c <pos_libc_prf+0x722>
1c00932e:	00258513          	addi	a0,a1,2
1c009332:	00b537b3          	sltu	a5,a0,a1
1c009336:	96be                	add	a3,a3,a5
1c009338:	4e95                	li	t4,5
1c00933a:	03d6de33          	divu	t3,a3,t4
1c00933e:	002e1793          	slli	a5,t3,0x2
1c009342:	97f2                	add	a5,a5,t3
1c009344:	8e9d                	sub	a3,a3,a5
1c009346:	01d69793          	slli	a5,a3,0x1d
1c00934a:	00355693          	srli	a3,a0,0x3
1c00934e:	8edd                	or	a3,a3,a5
1c009350:	03d6d6b3          	divu	a3,a3,t4
1c009354:	00369593          	slli	a1,a3,0x3
1c009358:	00569793          	slli	a5,a3,0x5
1c00935c:	97ae                	add	a5,a5,a1
1c00935e:	40f507b3          	sub	a5,a0,a5
1c009362:	03d7d7b3          	divu	a5,a5,t4
1c009366:	82f5                	srli	a3,a3,0x1d
1c009368:	95be                	add	a1,a1,a5
1c00936a:	00f5b7b3          	sltu	a5,a1,a5
1c00936e:	96f2                	add	a3,a3,t3
1c009370:	96be                	add	a3,a3,a5
1c009372:	01f69513          	slli	a0,a3,0x1f
1c009376:	0015d793          	srli	a5,a1,0x1
1c00937a:	8fc9                	or	a5,a5,a0
1c00937c:	fc15b5b3          	p.bclr	a1,a1,30,1
1c009380:	97ae                	add	a5,a5,a1
1c009382:	8285                	srli	a3,a3,0x1
1c009384:	00b7b5b3          	sltu	a1,a5,a1
1c009388:	96ae                	add	a3,a3,a1
1c00938a:	0885                	addi	a7,a7,1
1c00938c:	06600593          	li	a1,102
1c009390:	00130513          	addi	a0,t1,1
1c009394:	1ebd82e3          	beq	s11,a1,1c009d78 <pos_libc_prf+0x110e>
1c009398:	01e7de13          	srli	t3,a5,0x1e
1c00939c:	00279593          	slli	a1,a5,0x2
1c0093a0:	00269813          	slli	a6,a3,0x2
1c0093a4:	97ae                	add	a5,a5,a1
1c0093a6:	010e6833          	or	a6,t3,a6
1c0093aa:	00b7b5b3          	sltu	a1,a5,a1
1c0093ae:	96c2                	add	a3,a3,a6
1c0093b0:	96ae                	add	a3,a3,a1
1c0093b2:	0686                	slli	a3,a3,0x1
1c0093b4:	01f7d593          	srli	a1,a5,0x1f
1c0093b8:	8ecd                	or	a3,a3,a1
1c0093ba:	01c6d593          	srli	a1,a3,0x1c
1c0093be:	882e                	mv	a6,a1
1c0093c0:	4712                	lw	a4,4(sp)
1c0093c2:	03058593          	addi	a1,a1,48
1c0093c6:	01003833          	snez	a6,a6
1c0093ca:	00b30023          	sb	a1,0(t1)
1c0093ce:	c7c6be33          	p.bclr	t3,a3,3,28
1c0093d2:	00179593          	slli	a1,a5,0x1
1c0093d6:	410888b3          	sub	a7,a7,a6
1c0093da:	0a0714e3          	bnez	a4,1c009c82 <pos_libc_prf+0x1018>
1c0093de:	8ca6                	mv	s9,s1
1c0093e0:	3c905d63          	blez	s1,1c0097ba <pos_libc_prf+0xb50>
1c0093e4:	02e00693          	li	a3,46
1c0093e8:	00230793          	addi	a5,t1,2
1c0093ec:	00d300a3          	sb	a3,1(t1)
1c0093f0:	00259693          	slli	a3,a1,0x2
1c0093f4:	01e5d813          	srli	a6,a1,0x1e
1c0093f8:	002e1513          	slli	a0,t3,0x2
1c0093fc:	95b6                	add	a1,a1,a3
1c0093fe:	00a86533          	or	a0,a6,a0
1c009402:	00d5b833          	sltu	a6,a1,a3
1c009406:	01c506b3          	add	a3,a0,t3
1c00940a:	9836                	add	a6,a6,a3
1c00940c:	0806                	slli	a6,a6,0x1
1c00940e:	01f5d693          	srli	a3,a1,0x1f
1c009412:	0106e833          	or	a6,a3,a6
1c009416:	01c85313          	srli	t1,a6,0x1c
1c00941a:	03030313          	addi	t1,t1,48
1c00941e:	100006b7          	lui	a3,0x10000
1c009422:	fff68513          	addi	a0,a3,-1 # fffffff <__l1_heap_size+0xffc0027>
1c009426:	00678023          	sb	t1,0(a5)
1c00942a:	00159e13          	slli	t3,a1,0x1
1c00942e:	00a87833          	and	a6,a6,a0
1c009432:	0014b463          	p.bneimm	s1,1,1c00943a <pos_libc_prf+0x7d0>
1c009436:	3d40106f          	j	1c00a80a <pos_libc_prf+0x1ba0>
1c00943a:	00359693          	slli	a3,a1,0x3
1c00943e:	00281313          	slli	t1,a6,0x2
1c009442:	01ee5e93          	srli	t4,t3,0x1e
1c009446:	01c685b3          	add	a1,a3,t3
1c00944a:	006ee333          	or	t1,t4,t1
1c00944e:	981a                	add	a6,a6,t1
1c009450:	00d5b6b3          	sltu	a3,a1,a3
1c009454:	96c2                	add	a3,a3,a6
1c009456:	0686                	slli	a3,a3,0x1
1c009458:	01f5d813          	srli	a6,a1,0x1f
1c00945c:	00d866b3          	or	a3,a6,a3
1c009460:	01c6d813          	srli	a6,a3,0x1c
1c009464:	03080813          	addi	a6,a6,48
1c009468:	010780a3          	sb	a6,1(a5)
1c00946c:	ffe48c93          	addi	s9,s1,-2
1c009470:	00159313          	slli	t1,a1,0x1
1c009474:	8ee9                	and	a3,a3,a0
1c009476:	01904463          	bgtz	s9,1c00947e <pos_libc_prf+0x814>
1c00947a:	3880106f          	j	1c00a802 <pos_libc_prf+0x1b98>
1c00947e:	01e35e13          	srli	t3,t1,0x1e
1c009482:	058e                	slli	a1,a1,0x3
1c009484:	00269813          	slli	a6,a3,0x2
1c009488:	932e                	add	t1,t1,a1
1c00948a:	010e6833          	or	a6,t3,a6
1c00948e:	96c2                	add	a3,a3,a6
1c009490:	00b335b3          	sltu	a1,t1,a1
1c009494:	95b6                	add	a1,a1,a3
1c009496:	0586                	slli	a1,a1,0x1
1c009498:	01f35693          	srli	a3,t1,0x1f
1c00949c:	8dd5                	or	a1,a1,a3
1c00949e:	01c5d693          	srli	a3,a1,0x1c
1c0094a2:	03068693          	addi	a3,a3,48
1c0094a6:	00d78123          	sb	a3,2(a5)
1c0094aa:	ffd48c93          	addi	s9,s1,-3
1c0094ae:	00131e13          	slli	t3,t1,0x1
1c0094b2:	8de9                	and	a1,a1,a0
1c0094b4:	01904463          	bgtz	s9,1c0094bc <pos_libc_prf+0x852>
1c0094b8:	3420106f          	j	1c00a7fa <pos_libc_prf+0x1b90>
1c0094bc:	00331693          	slli	a3,t1,0x3
1c0094c0:	00259813          	slli	a6,a1,0x2
1c0094c4:	01ee5313          	srli	t1,t3,0x1e
1c0094c8:	01036833          	or	a6,t1,a6
1c0094cc:	9e36                	add	t3,t3,a3
1c0094ce:	95c2                	add	a1,a1,a6
1c0094d0:	00de36b3          	sltu	a3,t3,a3
1c0094d4:	96ae                	add	a3,a3,a1
1c0094d6:	0686                	slli	a3,a3,0x1
1c0094d8:	01fe5593          	srli	a1,t3,0x1f
1c0094dc:	8ecd                	or	a3,a3,a1
1c0094de:	01c6d593          	srli	a1,a3,0x1c
1c0094e2:	03058593          	addi	a1,a1,48
1c0094e6:	00b781a3          	sb	a1,3(a5)
1c0094ea:	ffc48c93          	addi	s9,s1,-4
1c0094ee:	001e1313          	slli	t1,t3,0x1
1c0094f2:	8ee9                	and	a3,a3,a0
1c0094f4:	01904463          	bgtz	s9,1c0094fc <pos_libc_prf+0x892>
1c0094f8:	2fa0106f          	j	1c00a7f2 <pos_libc_prf+0x1b88>
1c0094fc:	003e1593          	slli	a1,t3,0x3
1c009500:	00269813          	slli	a6,a3,0x2
1c009504:	01e35e13          	srli	t3,t1,0x1e
1c009508:	010e6833          	or	a6,t3,a6
1c00950c:	932e                	add	t1,t1,a1
1c00950e:	96c2                	add	a3,a3,a6
1c009510:	00b335b3          	sltu	a1,t1,a1
1c009514:	95b6                	add	a1,a1,a3
1c009516:	0586                	slli	a1,a1,0x1
1c009518:	01f35693          	srli	a3,t1,0x1f
1c00951c:	8dd5                	or	a1,a1,a3
1c00951e:	01c5d693          	srli	a3,a1,0x1c
1c009522:	03068693          	addi	a3,a3,48
1c009526:	00d78223          	sb	a3,4(a5)
1c00952a:	ffb48c93          	addi	s9,s1,-5
1c00952e:	00131e13          	slli	t3,t1,0x1
1c009532:	8de9                	and	a1,a1,a0
1c009534:	01904463          	bgtz	s9,1c00953c <pos_libc_prf+0x8d2>
1c009538:	2b20106f          	j	1c00a7ea <pos_libc_prf+0x1b80>
1c00953c:	00331693          	slli	a3,t1,0x3
1c009540:	00259813          	slli	a6,a1,0x2
1c009544:	01ee5313          	srli	t1,t3,0x1e
1c009548:	01036833          	or	a6,t1,a6
1c00954c:	9e36                	add	t3,t3,a3
1c00954e:	95c2                	add	a1,a1,a6
1c009550:	00de36b3          	sltu	a3,t3,a3
1c009554:	96ae                	add	a3,a3,a1
1c009556:	0686                	slli	a3,a3,0x1
1c009558:	01fe5593          	srli	a1,t3,0x1f
1c00955c:	8ecd                	or	a3,a3,a1
1c00955e:	01c6d593          	srli	a1,a3,0x1c
1c009562:	03058593          	addi	a1,a1,48
1c009566:	00b782a3          	sb	a1,5(a5)
1c00956a:	ffa48c93          	addi	s9,s1,-6
1c00956e:	001e1313          	slli	t1,t3,0x1
1c009572:	8ee9                	and	a3,a3,a0
1c009574:	01904463          	bgtz	s9,1c00957c <pos_libc_prf+0x912>
1c009578:	26a0106f          	j	1c00a7e2 <pos_libc_prf+0x1b78>
1c00957c:	003e1593          	slli	a1,t3,0x3
1c009580:	00269813          	slli	a6,a3,0x2
1c009584:	01e35e13          	srli	t3,t1,0x1e
1c009588:	010e6833          	or	a6,t3,a6
1c00958c:	932e                	add	t1,t1,a1
1c00958e:	96c2                	add	a3,a3,a6
1c009590:	00b335b3          	sltu	a1,t1,a1
1c009594:	95b6                	add	a1,a1,a3
1c009596:	0586                	slli	a1,a1,0x1
1c009598:	01f35693          	srli	a3,t1,0x1f
1c00959c:	8dd5                	or	a1,a1,a3
1c00959e:	01c5d693          	srli	a3,a1,0x1c
1c0095a2:	03068693          	addi	a3,a3,48
1c0095a6:	00d78323          	sb	a3,6(a5)
1c0095aa:	ff948c93          	addi	s9,s1,-7
1c0095ae:	00131e13          	slli	t3,t1,0x1
1c0095b2:	8de9                	and	a1,a1,a0
1c0095b4:	01904463          	bgtz	s9,1c0095bc <pos_libc_prf+0x952>
1c0095b8:	2220106f          	j	1c00a7da <pos_libc_prf+0x1b70>
1c0095bc:	00331693          	slli	a3,t1,0x3
1c0095c0:	00259813          	slli	a6,a1,0x2
1c0095c4:	01ee5313          	srli	t1,t3,0x1e
1c0095c8:	01036833          	or	a6,t1,a6
1c0095cc:	9e36                	add	t3,t3,a3
1c0095ce:	95c2                	add	a1,a1,a6
1c0095d0:	00de36b3          	sltu	a3,t3,a3
1c0095d4:	96ae                	add	a3,a3,a1
1c0095d6:	0686                	slli	a3,a3,0x1
1c0095d8:	01fe5593          	srli	a1,t3,0x1f
1c0095dc:	8ecd                	or	a3,a3,a1
1c0095de:	01c6d593          	srli	a1,a3,0x1c
1c0095e2:	03058593          	addi	a1,a1,48
1c0095e6:	00b783a3          	sb	a1,7(a5)
1c0095ea:	ff848c93          	addi	s9,s1,-8
1c0095ee:	001e1313          	slli	t1,t3,0x1
1c0095f2:	8ee9                	and	a3,a3,a0
1c0095f4:	01904463          	bgtz	s9,1c0095fc <pos_libc_prf+0x992>
1c0095f8:	1da0106f          	j	1c00a7d2 <pos_libc_prf+0x1b68>
1c0095fc:	003e1593          	slli	a1,t3,0x3
1c009600:	00269813          	slli	a6,a3,0x2
1c009604:	01e35e13          	srli	t3,t1,0x1e
1c009608:	010e6833          	or	a6,t3,a6
1c00960c:	932e                	add	t1,t1,a1
1c00960e:	96c2                	add	a3,a3,a6
1c009610:	00b335b3          	sltu	a1,t1,a1
1c009614:	95b6                	add	a1,a1,a3
1c009616:	0586                	slli	a1,a1,0x1
1c009618:	01f35693          	srli	a3,t1,0x1f
1c00961c:	8dd5                	or	a1,a1,a3
1c00961e:	01c5d693          	srli	a3,a1,0x1c
1c009622:	03068693          	addi	a3,a3,48
1c009626:	00d78423          	sb	a3,8(a5)
1c00962a:	ff748c93          	addi	s9,s1,-9
1c00962e:	00131e13          	slli	t3,t1,0x1
1c009632:	8de9                	and	a1,a1,a0
1c009634:	01904463          	bgtz	s9,1c00963c <pos_libc_prf+0x9d2>
1c009638:	1920106f          	j	1c00a7ca <pos_libc_prf+0x1b60>
1c00963c:	00331693          	slli	a3,t1,0x3
1c009640:	00259813          	slli	a6,a1,0x2
1c009644:	01ee5e93          	srli	t4,t3,0x1e
1c009648:	01c68333          	add	t1,a3,t3
1c00964c:	010ee833          	or	a6,t4,a6
1c009650:	982e                	add	a6,a6,a1
1c009652:	00d336b3          	sltu	a3,t1,a3
1c009656:	96c2                	add	a3,a3,a6
1c009658:	01f35593          	srli	a1,t1,0x1f
1c00965c:	0686                	slli	a3,a3,0x1
1c00965e:	8ecd                	or	a3,a3,a1
1c009660:	01c6d593          	srli	a1,a3,0x1c
1c009664:	03058593          	addi	a1,a1,48
1c009668:	00b784a3          	sb	a1,9(a5)
1c00966c:	ff648c93          	addi	s9,s1,-10
1c009670:	8ee9                	and	a3,a3,a0
1c009672:	00131593          	slli	a1,t1,0x1
1c009676:	00a78513          	addi	a0,a5,10
1c00967a:	15905063          	blez	s9,1c0097ba <pos_libc_prf+0xb50>
1c00967e:	00259513          	slli	a0,a1,0x2
1c009682:	01e5d813          	srli	a6,a1,0x1e
1c009686:	00269313          	slli	t1,a3,0x2
1c00968a:	95aa                	add	a1,a1,a0
1c00968c:	00686333          	or	t1,a6,t1
1c009690:	969a                	add	a3,a3,t1
1c009692:	00a5b833          	sltu	a6,a1,a0
1c009696:	9836                	add	a6,a6,a3
1c009698:	0806                	slli	a6,a6,0x1
1c00969a:	01f5d693          	srli	a3,a1,0x1f
1c00969e:	0106e833          	or	a6,a3,a6
1c0096a2:	01c85313          	srli	t1,a6,0x1c
1c0096a6:	03030313          	addi	t1,t1,48
1c0096aa:	100006b7          	lui	a3,0x10000
1c0096ae:	fff68513          	addi	a0,a3,-1 # fffffff <__l1_heap_size+0xffc0027>
1c0096b2:	00678523          	sb	t1,10(a5)
1c0096b6:	ff548c93          	addi	s9,s1,-11
1c0096ba:	00159e13          	slli	t3,a1,0x1
1c0096be:	00a87833          	and	a6,a6,a0
1c0096c2:	01904463          	bgtz	s9,1c0096ca <pos_libc_prf+0xa60>
1c0096c6:	0fc0106f          	j	1c00a7c2 <pos_libc_prf+0x1b58>
1c0096ca:	00359693          	slli	a3,a1,0x3
1c0096ce:	00281313          	slli	t1,a6,0x2
1c0096d2:	01ee5e93          	srli	t4,t3,0x1e
1c0096d6:	01c685b3          	add	a1,a3,t3
1c0096da:	006ee333          	or	t1,t4,t1
1c0096de:	981a                	add	a6,a6,t1
1c0096e0:	00d5b6b3          	sltu	a3,a1,a3
1c0096e4:	96c2                	add	a3,a3,a6
1c0096e6:	0686                	slli	a3,a3,0x1
1c0096e8:	01f5d813          	srli	a6,a1,0x1f
1c0096ec:	00d866b3          	or	a3,a6,a3
1c0096f0:	01c6d813          	srli	a6,a3,0x1c
1c0096f4:	03080813          	addi	a6,a6,48
1c0096f8:	010785a3          	sb	a6,11(a5)
1c0096fc:	ff448c93          	addi	s9,s1,-12
1c009700:	00159313          	slli	t1,a1,0x1
1c009704:	8ee9                	and	a3,a3,a0
1c009706:	01904463          	bgtz	s9,1c00970e <pos_libc_prf+0xaa4>
1c00970a:	0b00106f          	j	1c00a7ba <pos_libc_prf+0x1b50>
1c00970e:	058e                	slli	a1,a1,0x3
1c009710:	01e35e13          	srli	t3,t1,0x1e
1c009714:	00269813          	slli	a6,a3,0x2
1c009718:	932e                	add	t1,t1,a1
1c00971a:	010e6833          	or	a6,t3,a6
1c00971e:	96c2                	add	a3,a3,a6
1c009720:	00b335b3          	sltu	a1,t1,a1
1c009724:	95b6                	add	a1,a1,a3
1c009726:	0586                	slli	a1,a1,0x1
1c009728:	01f35693          	srli	a3,t1,0x1f
1c00972c:	8dd5                	or	a1,a1,a3
1c00972e:	01c5d693          	srli	a3,a1,0x1c
1c009732:	03068693          	addi	a3,a3,48
1c009736:	00d78623          	sb	a3,12(a5)
1c00973a:	ff348c93          	addi	s9,s1,-13
1c00973e:	00131813          	slli	a6,t1,0x1
1c009742:	01904463          	bgtz	s9,1c00974a <pos_libc_prf+0xae0>
1c009746:	06c0106f          	j	1c00a7b2 <pos_libc_prf+0x1b48>
1c00974a:	8de9                	and	a1,a1,a0
1c00974c:	00331693          	slli	a3,t1,0x3
1c009750:	01e85e13          	srli	t3,a6,0x1e
1c009754:	00259313          	slli	t1,a1,0x2
1c009758:	9836                	add	a6,a6,a3
1c00975a:	006e6333          	or	t1,t3,t1
1c00975e:	959a                	add	a1,a1,t1
1c009760:	00d836b3          	sltu	a3,a6,a3
1c009764:	96ae                	add	a3,a3,a1
1c009766:	0686                	slli	a3,a3,0x1
1c009768:	01f85593          	srli	a1,a6,0x1f
1c00976c:	8ecd                	or	a3,a3,a1
1c00976e:	01c6d593          	srli	a1,a3,0x1c
1c009772:	03058593          	addi	a1,a1,48
1c009776:	00b786a3          	sb	a1,13(a5)
1c00977a:	ff248c93          	addi	s9,s1,-14
1c00977e:	8ee9                	and	a3,a3,a0
1c009780:	00181593          	slli	a1,a6,0x1
1c009784:	00e78513          	addi	a0,a5,14
1c009788:	03905963          	blez	s9,1c0097ba <pos_libc_prf+0xb50>
1c00978c:	00381513          	slli	a0,a6,0x3
1c009790:	01e5d313          	srli	t1,a1,0x1e
1c009794:	00269813          	slli	a6,a3,0x2
1c009798:	95aa                	add	a1,a1,a0
1c00979a:	01036833          	or	a6,t1,a6
1c00979e:	00a5b5b3          	sltu	a1,a1,a0
1c0097a2:	96c2                	add	a3,a3,a6
1c0097a4:	96ae                	add	a3,a3,a1
1c0097a6:	0686                	slli	a3,a3,0x1
1c0097a8:	82f1                	srli	a3,a3,0x1c
1c0097aa:	03068693          	addi	a3,a3,48
1c0097ae:	00f78513          	addi	a0,a5,15
1c0097b2:	00d78723          	sb	a3,14(a5)
1c0097b6:	ff148c93          	addi	s9,s1,-15
1c0097ba:	440f8563          	beqz	t6,1c009c04 <pos_libc_prf+0xf9a>
1c0097be:	4581                	li	a1,0
1c0097c0:	cc02                	sw	zero,24(sp)
1c0097c2:	4a01                	li	s4,0
1c0097c4:	03000813          	li	a6,48
1c0097c8:	a011                	j	1c0097cc <pos_libc_prf+0xb62>
1c0097ca:	853e                	mv	a0,a5
1c0097cc:	fff50793          	addi	a5,a0,-1
1c0097d0:	0007c683          	lbu	a3,0(a5)
1c0097d4:	ff068be3          	beq	a3,a6,1c0097ca <pos_libc_prf+0xb60>
1c0097d8:	02e00813          	li	a6,46
1c0097dc:	4c81                	li	s9,0
1c0097de:	01069363          	bne	a3,a6,1c0097e4 <pos_libc_prf+0xb7a>
1c0097e2:	853e                	mv	a0,a5
1c0097e4:	0dfdf793          	andi	a5,s11,223
1c0097e8:	04500693          	li	a3,69
1c0097ec:	3ad78e63          	beq	a5,a3,1c009ba8 <pos_libc_prf+0xf3e>
1c0097f0:	4782                	lw	a5,0(sp)
1c0097f2:	00050023          	sb	zero,0(a0)
1c0097f6:	8d1d                	sub	a0,a0,a5
1c0097f8:	4732                	lw	a4,12(sp)
1c0097fa:	2a071263          	bnez	a4,1c009a9e <pos_libc_prf+0xe34>
1c0097fe:	47c2                	lw	a5,16(sp)
1c009800:	28079f63          	bnez	a5,1c009a9e <pos_libc_prf+0xe34>
1c009804:	02414783          	lbu	a5,36(sp)
1c009808:	02d00693          	li	a3,45
1c00980c:	c202                	sw	zero,4(sp)
1c00980e:	28d78863          	beq	a5,a3,1c009a9e <pos_libc_prf+0xe34>
1c009812:	fd078793          	addi	a5,a5,-48
1c009816:	46a5                	li	a3,9
1c009818:	00b50933          	add	s2,a0,a1
1c00981c:	a2f6f0e3          	bleu	a5,a3,1c00923c <pos_libc_prf+0x5d2>
1c009820:	412b0b33          	sub	s6,s6,s2
1c009824:	1040                	addi	s0,sp,36
1c009826:	4481                	li	s1,0
1c009828:	ee6ff06f          	j	1c008f0e <pos_libc_prf+0x2a4>
1c00982c:	000a2783          	lw	a5,0(s4)
1c009830:	0a11                	addi	s4,s4,4
1c009832:	ce52                	sw	s4,28(sp)
1c009834:	02f10223          	sb	a5,36(sp)
1c009838:	1b7d                	addi	s6,s6,-1
1c00983a:	4481                	li	s1,0
1c00983c:	c202                	sw	zero,4(sp)
1c00983e:	4905                	li	s2,1
1c009840:	1040                	addi	s0,sp,36
1c009842:	ec6ff06f          	j	1c008f08 <pos_libc_prf+0x29e>
1c009846:	04c00613          	li	a2,76
1c00984a:	004a268b          	p.lw	a3,4(s4!)
1c00984e:	5ac78ee3          	beq	a5,a2,1c00a60a <pos_libc_prf+0x19a0>
1c009852:	28f65363          	ble	a5,a2,1c009ad8 <pos_libc_prf+0xe6e>
1c009856:	06800613          	li	a2,104
1c00985a:	00c78663          	beq	a5,a2,1c009866 <pos_libc_prf+0xbfc>
1c00985e:	0156a023          	sw	s5,0(a3)
1c009862:	c46ff06f          	j	1c008ca8 <pos_libc_prf+0x3e>
1c009866:	87d6                	mv	a5,s5
1c009868:	00f69023          	sh	a5,0(a3)
1c00986c:	c3cff06f          	j	1c008ca8 <pos_libc_prf+0x3e>
1c009870:	004a0793          	addi	a5,s4,4
1c009874:	7761                	lui	a4,0xffff8
1c009876:	02610593          	addi	a1,sp,38
1c00987a:	ce3e                	sw	a5,28(sp)
1c00987c:	83074713          	xori	a4,a4,-2000
1c009880:	000a2783          	lw	a5,0(s4)
1c009884:	4601                	li	a2,0
1c009886:	02e11223          	sh	a4,36(sp)
1c00988a:	86ae                	mv	a3,a1
1c00988c:	4ea5                	li	t4,9
1c00988e:	f647b733          	p.bclr	a4,a5,27,4
1c009892:	01c61513          	slli	a0,a2,0x1c
1c009896:	8391                	srli	a5,a5,0x4
1c009898:	8fc9                	or	a5,a5,a0
1c00989a:	8211                	srli	a2,a2,0x4
1c00989c:	05770e13          	addi	t3,a4,87 # ffff8057 <pulp__FC+0xffff8058>
1c0098a0:	03070893          	addi	a7,a4,48
1c0098a4:	00c7e333          	or	t1,a5,a2
1c0098a8:	00eefa63          	bleu	a4,t4,1c0098bc <pos_libc_prf+0xc52>
1c0098ac:	01c68023          	sb	t3,0(a3)
1c0098b0:	00168513          	addi	a0,a3,1
1c0098b4:	00030a63          	beqz	t1,1c0098c8 <pos_libc_prf+0xc5e>
1c0098b8:	86aa                	mv	a3,a0
1c0098ba:	bfd1                	j	1c00988e <pos_libc_prf+0xc24>
1c0098bc:	01168023          	sb	a7,0(a3)
1c0098c0:	00168513          	addi	a0,a3,1
1c0098c4:	fe031ae3          	bnez	t1,1c0098b8 <pos_libc_prf+0xc4e>
1c0098c8:	00050023          	sb	zero,0(a0)
1c0098cc:	8d0d                	sub	a0,a0,a1
1c0098ce:	00d5fe63          	bleu	a3,a1,1c0098ea <pos_libc_prf+0xc80>
1c0098d2:	87b6                	mv	a5,a3
1c0098d4:	86ae                	mv	a3,a1
1c0098d6:	0006c603          	lbu	a2,0(a3)
1c0098da:	0007c703          	lbu	a4,0(a5)
1c0098de:	fec78fab          	p.sb	a2,-1(a5!)
1c0098e2:	00e680ab          	p.sb	a4,1(a3!)
1c0098e6:	fef6e8e3          	bltu	a3,a5,1c0098d6 <pos_libc_prf+0xc6c>
1c0098ea:	4789                	li	a5,2
1c0098ec:	00250913          	addi	s2,a0,2
1c0098f0:	c23e                	sw	a5,4(sp)
1c0098f2:	dfcff06f          	j	1c008eee <pos_libc_prf+0x284>
1c0098f6:	85de                	mv	a1,s7
1c0098f8:	02500513          	li	a0,37
1c0098fc:	9982                	jalr	s3
1c0098fe:	cff52163          	p.beqimm	a0,-1,1c008de0 <pos_libc_prf+0x176>
1c009902:	85de                	mv	a1,s7
1c009904:	856e                	mv	a0,s11
1c009906:	9982                	jalr	s3
1c009908:	cdf52c63          	p.beqimm	a0,-1,1c008de0 <pos_libc_prf+0x176>
1c00990c:	0a89                	addi	s5,s5,2
1c00990e:	b9aff06f          	j	1c008ca8 <pos_libc_prf+0x3e>
1c009912:	007a0893          	addi	a7,s4,7
1c009916:	c408b8b3          	p.bclr	a7,a7,2,0
1c00991a:	0008a783          	lw	a5,0(a7)
1c00991e:	0048a303          	lw	t1,4(a7)
1c009922:	0157d693          	srli	a3,a5,0x15
1c009926:	00b31513          	slli	a0,t1,0xb
1c00992a:	08a1                	addi	a7,a7,8
1c00992c:	01435813          	srli	a6,t1,0x14
1c009930:	8d55                	or	a0,a0,a3
1c009932:	ce46                	sw	a7,28(sp)
1c009934:	e8b83833          	p.bclr	a6,a6,20,11
1c009938:	00b79593          	slli	a1,a5,0xb
1c00993c:	c1f53533          	p.bclr	a0,a0,0,31
1c009940:	1e034e63          	bltz	t1,1c009b3c <pos_libc_prf+0xed2>
1c009944:	47b2                	lw	a5,12(sp)
1c009946:	1c078f63          	beqz	a5,1c009b24 <pos_libc_prf+0xeba>
1c00994a:	02b00793          	li	a5,43
1c00994e:	02f10223          	sb	a5,36(sp)
1c009952:	02510313          	addi	t1,sp,37
1c009956:	7ff00793          	li	a5,2047
1c00995a:	18f80863          	beq	a6,a5,1c009aea <pos_libc_prf+0xe80>
1c00995e:	04600793          	li	a5,70
1c009962:	0dfdfe13          	andi	t3,s11,223
1c009966:	32fd8e63          	beq	s11,a5,1c009ca2 <pos_libc_prf+0x1038>
1c00996a:	41f85693          	srai	a3,a6,0x1f
1c00996e:	00b867b3          	or	a5,a6,a1
1c009972:	8ec9                	or	a3,a3,a0
1c009974:	8fd5                	or	a5,a5,a3
1c009976:	8e0780e3          	beqz	a5,1c009256 <pos_libc_prf+0x5ec>
1c00997a:	02081363          	bnez	a6,1c0099a0 <pos_libc_prf+0xd36>
1c00997e:	01f5d793          	srli	a5,a1,0x1f
1c009982:	00151693          	slli	a3,a0,0x1
1c009986:	00d7e533          	or	a0,a5,a3
1c00998a:	0586                	slli	a1,a1,0x1
1c00998c:	5a054fe3          	bltz	a0,1c00a74a <pos_libc_prf+0x1ae0>
1c009990:	01f5d793          	srli	a5,a1,0x1f
1c009994:	0506                	slli	a0,a0,0x1
1c009996:	8d5d                	or	a0,a0,a5
1c009998:	187d                	addi	a6,a6,-1
1c00999a:	0586                	slli	a1,a1,0x1
1c00999c:	fe055ae3          	bgez	a0,1c009990 <pos_libc_prf+0xd26>
1c0099a0:	c0280813          	addi	a6,a6,-1022
1c0099a4:	57f9                	li	a5,-2
1c0099a6:	c1f54533          	p.bset	a0,a0,0,31
1c0099aa:	4881                	li	a7,0
1c0099ac:	06f85763          	ble	a5,a6,1c009a1a <pos_libc_prf+0xdb0>
1c0099b0:	33333eb7          	lui	t4,0x33333
1c0099b4:	80000f37          	lui	t5,0x80000
1c0099b8:	4881                	li	a7,0
1c0099ba:	332e8e93          	addi	t4,t4,818 # 33333332 <__l2_shared_end+0x17323086>
1c0099be:	ffff4f13          	not	t5,t5
1c0099c2:	5ff9                	li	t6,-2
1c0099c4:	a011                	j	1c0099c8 <pos_libc_prf+0xd5e>
1c0099c6:	883e                	mv	a6,a5
1c0099c8:	01f51693          	slli	a3,a0,0x1f
1c0099cc:	0015d713          	srli	a4,a1,0x1
1c0099d0:	fc15b7b3          	p.bclr	a5,a1,30,1
1c0099d4:	8f55                	or	a4,a4,a3
1c0099d6:	00e785b3          	add	a1,a5,a4
1c0099da:	00f5b7b3          	sltu	a5,a1,a5
1c0099de:	8105                	srli	a0,a0,0x1
1c0099e0:	953e                	add	a0,a0,a5
1c0099e2:	00180793          	addi	a5,a6,1
1c0099e6:	feaee0e3          	bltu	t4,a0,1c0099c6 <pos_libc_prf+0xd5c>
1c0099ea:	00259693          	slli	a3,a1,0x2
1c0099ee:	01e5d613          	srli	a2,a1,0x1e
1c0099f2:	00251713          	slli	a4,a0,0x2
1c0099f6:	95b6                	add	a1,a1,a3
1c0099f8:	8f51                	or	a4,a4,a2
1c0099fa:	953a                	add	a0,a0,a4
1c0099fc:	00d5b6b3          	sltu	a3,a1,a3
1c009a00:	9536                	add	a0,a0,a3
1c009a02:	01f5d713          	srli	a4,a1,0x1f
1c009a06:	0809                	addi	a6,a6,2
1c009a08:	18fd                	addi	a7,a7,-1
1c009a0a:	01e51663          	bne	a0,t5,1c009a16 <pos_libc_prf+0xdac>
1c009a0e:	0586                	slli	a1,a1,0x1
1c009a10:	fc174533          	p.bset	a0,a4,30,1
1c009a14:	883e                	mv	a6,a5
1c009a16:	fbf849e3          	blt	a6,t6,1c0099c8 <pos_libc_prf+0xd5e>
1c009a1a:	80000f37          	lui	t5,0x80000
1c009a1e:	4f95                	li	t6,5
1c009a20:	ffff4f13          	not	t5,t5
1c009a24:	83005de3          	blez	a6,1c00925e <pos_libc_prf+0x5f4>
1c009a28:	00258693          	addi	a3,a1,2
1c009a2c:	00b6b5b3          	sltu	a1,a3,a1
1c009a30:	952e                	add	a0,a0,a1
1c009a32:	03f557b3          	divu	a5,a0,t6
1c009a36:	00279713          	slli	a4,a5,0x2
1c009a3a:	973e                	add	a4,a4,a5
1c009a3c:	8d19                	sub	a0,a0,a4
1c009a3e:	01d51713          	slli	a4,a0,0x1d
1c009a42:	0036d613          	srli	a2,a3,0x3
1c009a46:	8e59                	or	a2,a2,a4
1c009a48:	03f65633          	divu	a2,a2,t6
1c009a4c:	00361593          	slli	a1,a2,0x3
1c009a50:	00561713          	slli	a4,a2,0x5
1c009a54:	972e                	add	a4,a4,a1
1c009a56:	40e68733          	sub	a4,a3,a4
1c009a5a:	03f75733          	divu	a4,a4,t6
1c009a5e:	8275                	srli	a2,a2,0x1d
1c009a60:	95ba                	add	a1,a1,a4
1c009a62:	97b2                	add	a5,a5,a2
1c009a64:	00e5b733          	sltu	a4,a1,a4
1c009a68:	00f70533          	add	a0,a4,a5
1c009a6c:	187d                	addi	a6,a6,-1
1c009a6e:	0885                	addi	a7,a7,1
1c009a70:	01f5d793          	srli	a5,a1,0x1f
1c009a74:	0506                	slli	a0,a0,0x1
1c009a76:	8d5d                	or	a0,a0,a5
1c009a78:	0586                	slli	a1,a1,0x1
1c009a7a:	187d                	addi	a6,a6,-1
1c009a7c:	feaf7ae3          	bleu	a0,t5,1c009a70 <pos_libc_prf+0xe06>
1c009a80:	b755                	j	1c009a24 <pos_libc_prf+0xdba>
1c009a82:	001d4d83          	lbu	s11,1(s10)
1c009a86:	04c00793          	li	a5,76
1c009a8a:	0d09                	addi	s10,s10,2
1c009a8c:	ad6ff06f          	j	1c008d62 <pos_libc_prf+0xf8>
1c009a90:	001d4d83          	lbu	s11,1(s10)
1c009a94:	04800793          	li	a5,72
1c009a98:	0d09                	addi	s10,s10,2
1c009a9a:	ac8ff06f          	j	1c008d62 <pos_libc_prf+0xf8>
1c009a9e:	4705                	li	a4,1
1c009aa0:	02514783          	lbu	a5,37(sp)
1c009aa4:	c23a                	sw	a4,4(sp)
1c009aa6:	b3b5                	j	1c009812 <pos_libc_prf+0xba8>
1c009aa8:	004a0793          	addi	a5,s4,4
1c009aac:	ce3e                	sw	a5,28(sp)
1c009aae:	000a2403          	lw	s0,0(s4)
1c009ab2:	4c81                	li	s9,0
1c009ab4:	e92ff06f          	j	1c009146 <pos_libc_prf+0x4dc>
1c009ab8:	4785                	li	a5,1
1c009aba:	c23e                	sw	a5,4(sp)
1c009abc:	c32ff06f          	j	1c008eee <pos_libc_prf+0x284>
1c009ac0:	4742                	lw	a4,16(sp)
1c009ac2:	22070063          	beqz	a4,1c009ce2 <pos_libc_prf+0x1078>
1c009ac6:	02000693          	li	a3,32
1c009aca:	02d10223          	sb	a3,36(sp)
1c009ace:	4c92                	lw	s9,4(sp)
1c009ad0:	02510a13          	addi	s4,sp,37
1c009ad4:	bacff06f          	j	1c008e80 <pos_libc_prf+0x216>
1c009ad8:	04800613          	li	a2,72
1c009adc:	d8c791e3          	bne	a5,a2,1c00985e <pos_libc_prf+0xbf4>
1c009ae0:	87d6                	mv	a5,s5
1c009ae2:	00f68023          	sb	a5,0(a3)
1c009ae6:	9c2ff06f          	j	1c008ca8 <pos_libc_prf+0x3e>
1c009aea:	00a5e6b3          	or	a3,a1,a0
1c009aee:	fbfd8613          	addi	a2,s11,-65
1c009af2:	00330513          	addi	a0,t1,3
1c009af6:	47e5                	li	a5,25
1c009af8:	16069963          	bnez	a3,1c009c6a <pos_libc_prf+0x1000>
1c009afc:	3ec7e1e3          	bltu	a5,a2,1c00a6de <pos_libc_prf+0x1a74>
1c009b00:	6795                	lui	a5,0x5
1c009b02:	e4978793          	addi	a5,a5,-439 # 4e49 <pos_soc_event_callback+0x4a05>
1c009b06:	00f31023          	sh	a5,0(t1)
1c009b0a:	04600793          	li	a5,70
1c009b0e:	00f30123          	sb	a5,2(t1)
1c009b12:	4782                	lw	a5,0(sp)
1c009b14:	000301a3          	sb	zero,3(t1)
1c009b18:	8d1d                	sub	a0,a0,a5
1c009b1a:	4581                	li	a1,0
1c009b1c:	4c81                	li	s9,0
1c009b1e:	cc02                	sw	zero,24(sp)
1c009b20:	4a01                	li	s4,0
1c009b22:	b9d9                	j	1c0097f8 <pos_libc_prf+0xb8e>
1c009b24:	4742                	lw	a4,16(sp)
1c009b26:	02410313          	addi	t1,sp,36
1c009b2a:	e20706e3          	beqz	a4,1c009956 <pos_libc_prf+0xcec>
1c009b2e:	02000793          	li	a5,32
1c009b32:	02f10223          	sb	a5,36(sp)
1c009b36:	02510313          	addi	t1,sp,37
1c009b3a:	bd31                	j	1c009956 <pos_libc_prf+0xcec>
1c009b3c:	02d00793          	li	a5,45
1c009b40:	02f10223          	sb	a5,36(sp)
1c009b44:	02510313          	addi	t1,sp,37
1c009b48:	b539                	j	1c009956 <pos_libc_prf+0xcec>
1c009b4a:	40f007b3          	neg	a5,a5
1c009b4e:	00f036b3          	snez	a3,a5
1c009b52:	40e00cb3          	neg	s9,a4
1c009b56:	02d00613          	li	a2,45
1c009b5a:	02c10223          	sb	a2,36(sp)
1c009b5e:	40dc8cb3          	sub	s9,s9,a3
1c009b62:	02510a13          	addi	s4,sp,37
1c009b66:	b1aff06f          	j	1c008e80 <pos_libc_prf+0x216>
1c009b6a:	56f5                	li	a3,-3
1c009b6c:	0cd8c063          	blt	a7,a3,1c009c2c <pos_libc_prf+0xfc2>
1c009b70:	0b14ce63          	blt	s1,a7,1c009c2c <pos_libc_prf+0xfc2>
1c009b74:	4712                	lw	a4,4(sp)
1c009b76:	411484b3          	sub	s1,s1,a7
1c009b7a:	4f81                	li	t6,0
1c009b7c:	e709                	bnez	a4,1c009b86 <pos_libc_prf+0xf1c>
1c009b7e:	00902fb3          	sgtz	t6,s1
1c009b82:	0fffff93          	andi	t6,t6,255
1c009b86:	009886b3          	add	a3,a7,s1
1c009b8a:	2e06cae3          	bltz	a3,1c00a67e <pos_libc_prf+0x1a14>
1c009b8e:	4741                	li	a4,16
1c009b90:	04e6cf33          	p.min	t5,a3,a4
1c009b94:	1f7d                	addi	t5,t5,-1
1c009b96:	06600d93          	li	s11,102
1c009b9a:	f0069a63          	bnez	a3,1c0092ae <pos_libc_prf+0x644>
1c009b9e:	4501                	li	a0,0
1c009ba0:	080006b7          	lui	a3,0x8000
1c009ba4:	f76ff06f          	j	1c00931a <pos_libc_prf+0x6b0>
1c009ba8:	86aa                	mv	a3,a0
1c009baa:	01b6812b          	p.sb	s11,2(a3!) # 8000002 <__l1_heap_size+0x7fc002a>
1c009bae:	2408c6e3          	bltz	a7,1c00a5fa <pos_libc_prf+0x1990>
1c009bb2:	02b00793          	li	a5,43
1c009bb6:	00f500a3          	sb	a5,1(a0)
1c009bba:	06300793          	li	a5,99
1c009bbe:	0117de63          	ble	a7,a5,1c009bda <pos_libc_prf+0xf70>
1c009bc2:	06400693          	li	a3,100
1c009bc6:	02d8c7b3          	div	a5,a7,a3
1c009bca:	03078793          	addi	a5,a5,48
1c009bce:	02d8e8b3          	rem	a7,a7,a3
1c009bd2:	00f50123          	sb	a5,2(a0)
1c009bd6:	00350693          	addi	a3,a0,3
1c009bda:	47a9                	li	a5,10
1c009bdc:	02f8c633          	div	a2,a7,a5
1c009be0:	02f8e7b3          	rem	a5,a7,a5
1c009be4:	03060613          	addi	a2,a2,48
1c009be8:	8536                	mv	a0,a3
1c009bea:	00c5012b          	p.sb	a2,2(a0!)
1c009bee:	03078793          	addi	a5,a5,48
1c009bf2:	00f680a3          	sb	a5,1(a3)
1c009bf6:	beed                	j	1c0097f0 <pos_libc_prf+0xb86>
1c009bf8:	800004b7          	lui	s1,0x80000
1c009bfc:	fff4c493          	not	s1,s1
1c009c00:	c3cff06f          	j	1c00903c <pos_libc_prf+0x3d2>
1c009c04:	85e6                	mv	a1,s9
1c009c06:	cc02                	sw	zero,24(sp)
1c009c08:	4a01                	li	s4,0
1c009c0a:	bee9                	j	1c0097e4 <pos_libc_prf+0xb7a>
1c009c0c:	4901                	li	s2,0
1c009c0e:	1054                	addi	a3,sp,36
1c009c10:	d60ff06f          	j	1c009170 <pos_libc_prf+0x506>
1c009c14:	007a0793          	addi	a5,s4,7
1c009c18:	c407b7b3          	p.bclr	a5,a5,2,0
1c009c1c:	00878713          	addi	a4,a5,8
1c009c20:	ce3a                	sw	a4,28(sp)
1c009c22:	4380                	lw	s0,0(a5)
1c009c24:	0047ac83          	lw	s9,4(a5)
1c009c28:	d1eff06f          	j	1c009146 <pos_libc_prf+0x4dc>
1c009c2c:	ffed8613          	addi	a2,s11,-2
1c009c30:	0ff67d93          	andi	s11,a2,255
1c009c34:	220486e3          	beqz	s1,1c00a660 <pos_libc_prf+0x19f6>
1c009c38:	4712                	lw	a4,4(sp)
1c009c3a:	fff48693          	addi	a3,s1,-1 # 7fffffff <pulp__FC+0x80000000>
1c009c3e:	1e071fe3          	bnez	a4,1c00a63c <pos_libc_prf+0x19d2>
1c009c42:	00d02fb3          	sgtz	t6,a3
1c009c46:	0fffff93          	andi	t6,t6,255
1c009c4a:	84b6                	mv	s1,a3
1c009c4c:	e56ff06f          	j	1c0092a2 <pos_libc_prf+0x638>
1c009c50:	007a0693          	addi	a3,s4,7
1c009c54:	c406b6b3          	p.bclr	a3,a3,2,0
1c009c58:	00868793          	addi	a5,a3,8
1c009c5c:	ce3e                	sw	a5,28(sp)
1c009c5e:	429c                	lw	a5,0(a3)
1c009c60:	42d4                	lw	a3,4(a3)
1c009c62:	c236                	sw	a3,4(sp)
1c009c64:	8736                	mv	a4,a3
1c009c66:	a02ff06f          	j	1c008e68 <pos_libc_prf+0x1fe>
1c009c6a:	24c7efe3          	bltu	a5,a2,1c00a6c8 <pos_libc_prf+0x1a5e>
1c009c6e:	6791                	lui	a5,0x4
1c009c70:	14e78793          	addi	a5,a5,334 # 414e <pos_soc_event_callback+0x3d0a>
1c009c74:	00f31023          	sh	a5,0(t1)
1c009c78:	04e00793          	li	a5,78
1c009c7c:	00f30123          	sb	a5,2(t1)
1c009c80:	bd49                	j	1c009b12 <pos_libc_prf+0xea8>
1c009c82:	02e00793          	li	a5,46
1c009c86:	00f300a3          	sb	a5,1(t1)
1c009c8a:	00230793          	addi	a5,t1,2
1c009c8e:	f6904163          	bgtz	s1,1c0093f0 <pos_libc_prf+0x786>
1c009c92:	8ca6                	mv	s9,s1
1c009c94:	853e                	mv	a0,a5
1c009c96:	b615                	j	1c0097ba <pos_libc_prf+0xb50>
1c009c98:	4481                	li	s1,0
1c009c9a:	c202                	sw	zero,4(sp)
1c009c9c:	4901                	li	s2,0
1c009c9e:	a6aff06f          	j	1c008f08 <pos_libc_prf+0x29e>
1c009ca2:	04600e13          	li	t3,70
1c009ca6:	06600d93          	li	s11,102
1c009caa:	b1c1                	j	1c00996a <pos_libc_prf+0xd00>
1c009cac:	105c                	addi	a5,sp,36
1c009cae:	4565                	li	a0,25
1c009cb0:	0017c70b          	p.lbu	a4,1(a5!)
1c009cb4:	f9f70693          	addi	a3,a4,-97
1c009cb8:	0ff6f693          	andi	a3,a3,255
1c009cbc:	fe070613          	addi	a2,a4,-32
1c009cc0:	00d56e63          	bltu	a0,a3,1c009cdc <pos_libc_prf+0x1072>
1c009cc4:	fec78fa3          	sb	a2,-1(a5)
1c009cc8:	0017c70b          	p.lbu	a4,1(a5!)
1c009ccc:	f9f70693          	addi	a3,a4,-97
1c009cd0:	0ff6f693          	andi	a3,a3,255
1c009cd4:	fe070613          	addi	a2,a4,-32
1c009cd8:	fed576e3          	bleu	a3,a0,1c009cc4 <pos_libc_prf+0x105a>
1c009cdc:	fb71                	bnez	a4,1c009cb0 <pos_libc_prf+0x1046>
1c009cde:	d4eff06f          	j	1c00922c <pos_libc_prf+0x5c2>
1c009ce2:	4c92                	lw	s9,4(sp)
1c009ce4:	02410a13          	addi	s4,sp,36
1c009ce8:	998ff06f          	j	1c008e80 <pos_libc_prf+0x216>
1c009cec:	4922                	lw	s2,8(sp)
1c009cee:	8dd2                	mv	s11,s4
1c009cf0:	a029                	j	1c009cfa <pos_libc_prf+0x1090>
1c009cf2:	9982                	jalr	s3
1c009cf4:	1dfd                	addi	s11,s11,-1
1c009cf6:	8ff52563          	p.beqimm	a0,-1,1c008de0 <pos_libc_prf+0x176>
1c009cfa:	85de                	mv	a1,s7
1c009cfc:	03000513          	li	a0,48
1c009d00:	ffb049e3          	bgtz	s11,1c009cf2 <pos_libc_prf+0x1088>
1c009d04:	41490933          	sub	s2,s2,s4
1c009d08:	a62ff06f          	j	1c008f6a <pos_libc_prf+0x300>
1c009d0c:	4712                	lw	a4,4(sp)
1c009d0e:	12070fe3          	beqz	a4,1c00a64c <pos_libc_prf+0x19e2>
1c009d12:	03000793          	li	a5,48
1c009d16:	02f10223          	sb	a5,36(sp)
1c009d1a:	019467b3          	or	a5,s0,s9
1c009d1e:	14078ae3          	beqz	a5,1c00a672 <pos_libc_prf+0x1a08>
1c009d22:	02510593          	addi	a1,sp,37
1c009d26:	4905                	li	s2,1
1c009d28:	86ae                	mv	a3,a1
1c009d2a:	87b6                	mv	a5,a3
1c009d2c:	a011                	j	1c009d30 <pos_libc_prf+0x10c6>
1c009d2e:	87b2                	mv	a5,a2
1c009d30:	01dc9613          	slli	a2,s9,0x1d
1c009d34:	f8343733          	p.bclr	a4,s0,28,3
1c009d38:	800d                	srli	s0,s0,0x3
1c009d3a:	8c51                	or	s0,s0,a2
1c009d3c:	03070713          	addi	a4,a4,48
1c009d40:	003cdc93          	srli	s9,s9,0x3
1c009d44:	00e78023          	sb	a4,0(a5)
1c009d48:	01946733          	or	a4,s0,s9
1c009d4c:	00178613          	addi	a2,a5,1
1c009d50:	ff79                	bnez	a4,1c009d2e <pos_libc_prf+0x10c4>
1c009d52:	00060023          	sb	zero,0(a2)
1c009d56:	8e0d                	sub	a2,a2,a1
1c009d58:	00f6fc63          	bleu	a5,a3,1c009d70 <pos_libc_prf+0x1106>
1c009d5c:	0006c583          	lbu	a1,0(a3)
1c009d60:	0007c703          	lbu	a4,0(a5)
1c009d64:	feb78fab          	p.sb	a1,-1(a5!)
1c009d68:	00e680ab          	p.sb	a4,1(a3!)
1c009d6c:	fef6e8e3          	bltu	a3,a5,1c009d5c <pos_libc_prf+0x10f2>
1c009d70:	9932                	add	s2,s2,a2
1c009d72:	c202                	sw	zero,4(sp)
1c009d74:	97aff06f          	j	1c008eee <pos_libc_prf+0x284>
1c009d78:	111057e3          	blez	a7,1c00a686 <pos_libc_prf+0x1a1c>
1c009d7c:	00279e13          	slli	t3,a5,0x2
1c009d80:	01e7df13          	srli	t5,a5,0x1e
1c009d84:	00269e93          	slli	t4,a3,0x2
1c009d88:	00fe05b3          	add	a1,t3,a5
1c009d8c:	01df6eb3          	or	t4,t5,t4
1c009d90:	9eb6                	add	t4,t4,a3
1c009d92:	01c5b6b3          	sltu	a3,a1,t3
1c009d96:	96f6                	add	a3,a3,t4
1c009d98:	01f5d793          	srli	a5,a1,0x1f
1c009d9c:	0686                	slli	a3,a3,0x1
1c009d9e:	8edd                	or	a3,a3,a5
1c009da0:	01c6d793          	srli	a5,a3,0x1c
1c009da4:	03078793          	addi	a5,a5,48
1c009da8:	10000e37          	lui	t3,0x10000
1c009dac:	1e7d                	addi	t3,t3,-1
1c009dae:	00f30023          	sb	a5,0(t1)
1c009db2:	01c6f6b3          	and	a3,a3,t3
1c009db6:	00159793          	slli	a5,a1,0x1
1c009dba:	1618aee3          	p.beqimm	a7,1,1c00a736 <pos_libc_prf+0x1acc>
1c009dbe:	01e7df13          	srli	t5,a5,0x1e
1c009dc2:	00269e93          	slli	t4,a3,0x2
1c009dc6:	058e                	slli	a1,a1,0x3
1c009dc8:	00f58533          	add	a0,a1,a5
1c009dcc:	01df6eb3          	or	t4,t5,t4
1c009dd0:	9eb6                	add	t4,t4,a3
1c009dd2:	00b536b3          	sltu	a3,a0,a1
1c009dd6:	96f6                	add	a3,a3,t4
1c009dd8:	01f55793          	srli	a5,a0,0x1f
1c009ddc:	0686                	slli	a3,a3,0x1
1c009dde:	8edd                	or	a3,a3,a5
1c009de0:	01c6d793          	srli	a5,a3,0x1c
1c009de4:	03078793          	addi	a5,a5,48
1c009de8:	00f300a3          	sb	a5,1(t1)
1c009dec:	01c6f6b3          	and	a3,a3,t3
1c009df0:	00151793          	slli	a5,a0,0x1
1c009df4:	1628a3e3          	p.beqimm	a7,2,1c00a75a <pos_libc_prf+0x1af0>
1c009df8:	01e7df13          	srli	t5,a5,0x1e
1c009dfc:	00269e93          	slli	t4,a3,0x2
1c009e00:	050e                	slli	a0,a0,0x3
1c009e02:	00f505b3          	add	a1,a0,a5
1c009e06:	01df6eb3          	or	t4,t5,t4
1c009e0a:	9eb6                	add	t4,t4,a3
1c009e0c:	00a5b6b3          	sltu	a3,a1,a0
1c009e10:	96f6                	add	a3,a3,t4
1c009e12:	01f5d793          	srli	a5,a1,0x1f
1c009e16:	0686                	slli	a3,a3,0x1
1c009e18:	8edd                	or	a3,a3,a5
1c009e1a:	01c6d793          	srli	a5,a3,0x1c
1c009e1e:	03078793          	addi	a5,a5,48
1c009e22:	00f30123          	sb	a5,2(t1)
1c009e26:	ffd88a13          	addi	s4,a7,-3
1c009e2a:	00159793          	slli	a5,a1,0x1
1c009e2e:	01c6f6b3          	and	a3,a3,t3
1c009e32:	134050e3          	blez	s4,1c00a752 <pos_libc_prf+0x1ae8>
1c009e36:	01e7df13          	srli	t5,a5,0x1e
1c009e3a:	00269e93          	slli	t4,a3,0x2
1c009e3e:	058e                	slli	a1,a1,0x3
1c009e40:	00f58533          	add	a0,a1,a5
1c009e44:	01df6eb3          	or	t4,t5,t4
1c009e48:	9eb6                	add	t4,t4,a3
1c009e4a:	00b536b3          	sltu	a3,a0,a1
1c009e4e:	96f6                	add	a3,a3,t4
1c009e50:	01f55793          	srli	a5,a0,0x1f
1c009e54:	0686                	slli	a3,a3,0x1
1c009e56:	8edd                	or	a3,a3,a5
1c009e58:	01c6d793          	srli	a5,a3,0x1c
1c009e5c:	03078793          	addi	a5,a5,48
1c009e60:	00f301a3          	sb	a5,3(t1)
1c009e64:	ffc88a13          	addi	s4,a7,-4
1c009e68:	00151793          	slli	a5,a0,0x1
1c009e6c:	01c6f6b3          	and	a3,a3,t3
1c009e70:	134056e3          	blez	s4,1c00a79c <pos_libc_prf+0x1b32>
1c009e74:	01e7df13          	srli	t5,a5,0x1e
1c009e78:	00269e93          	slli	t4,a3,0x2
1c009e7c:	050e                	slli	a0,a0,0x3
1c009e7e:	00f505b3          	add	a1,a0,a5
1c009e82:	01df6eb3          	or	t4,t5,t4
1c009e86:	9eb6                	add	t4,t4,a3
1c009e88:	00a5b6b3          	sltu	a3,a1,a0
1c009e8c:	96f6                	add	a3,a3,t4
1c009e8e:	01f5d793          	srli	a5,a1,0x1f
1c009e92:	0686                	slli	a3,a3,0x1
1c009e94:	8edd                	or	a3,a3,a5
1c009e96:	01c6d793          	srli	a5,a3,0x1c
1c009e9a:	03078793          	addi	a5,a5,48
1c009e9e:	00f30223          	sb	a5,4(t1)
1c009ea2:	ffb88a13          	addi	s4,a7,-5
1c009ea6:	00159793          	slli	a5,a1,0x1
1c009eaa:	01c6f6b3          	and	a3,a3,t3
1c009eae:	0f4053e3          	blez	s4,1c00a794 <pos_libc_prf+0x1b2a>
1c009eb2:	01e7df13          	srli	t5,a5,0x1e
1c009eb6:	00269e93          	slli	t4,a3,0x2
1c009eba:	058e                	slli	a1,a1,0x3
1c009ebc:	00f58533          	add	a0,a1,a5
1c009ec0:	01df6eb3          	or	t4,t5,t4
1c009ec4:	9eb6                	add	t4,t4,a3
1c009ec6:	00b536b3          	sltu	a3,a0,a1
1c009eca:	96f6                	add	a3,a3,t4
1c009ecc:	01f55793          	srli	a5,a0,0x1f
1c009ed0:	0686                	slli	a3,a3,0x1
1c009ed2:	8edd                	or	a3,a3,a5
1c009ed4:	01c6d793          	srli	a5,a3,0x1c
1c009ed8:	03078793          	addi	a5,a5,48
1c009edc:	00f302a3          	sb	a5,5(t1)
1c009ee0:	ffa88a13          	addi	s4,a7,-6
1c009ee4:	00151793          	slli	a5,a0,0x1
1c009ee8:	01c6f6b3          	and	a3,a3,t3
1c009eec:	0b4050e3          	blez	s4,1c00a78c <pos_libc_prf+0x1b22>
1c009ef0:	01e7df13          	srli	t5,a5,0x1e
1c009ef4:	00269e93          	slli	t4,a3,0x2
1c009ef8:	050e                	slli	a0,a0,0x3
1c009efa:	00f505b3          	add	a1,a0,a5
1c009efe:	01df6eb3          	or	t4,t5,t4
1c009f02:	9eb6                	add	t4,t4,a3
1c009f04:	00a5b6b3          	sltu	a3,a1,a0
1c009f08:	96f6                	add	a3,a3,t4
1c009f0a:	01f5d793          	srli	a5,a1,0x1f
1c009f0e:	0686                	slli	a3,a3,0x1
1c009f10:	8edd                	or	a3,a3,a5
1c009f12:	01c6d793          	srli	a5,a3,0x1c
1c009f16:	03078793          	addi	a5,a5,48
1c009f1a:	00f30323          	sb	a5,6(t1)
1c009f1e:	ff988a13          	addi	s4,a7,-7
1c009f22:	00159793          	slli	a5,a1,0x1
1c009f26:	01c6f6b3          	and	a3,a3,t3
1c009f2a:	05405de3          	blez	s4,1c00a784 <pos_libc_prf+0x1b1a>
1c009f2e:	058e                	slli	a1,a1,0x3
1c009f30:	01e7de93          	srli	t4,a5,0x1e
1c009f34:	00269513          	slli	a0,a3,0x2
1c009f38:	97ae                	add	a5,a5,a1
1c009f3a:	00aee533          	or	a0,t4,a0
1c009f3e:	9536                	add	a0,a0,a3
1c009f40:	00b7b6b3          	sltu	a3,a5,a1
1c009f44:	96aa                	add	a3,a3,a0
1c009f46:	01f7d593          	srli	a1,a5,0x1f
1c009f4a:	0686                	slli	a3,a3,0x1
1c009f4c:	8ecd                	or	a3,a3,a1
1c009f4e:	01c6d593          	srli	a1,a3,0x1c
1c009f52:	03058593          	addi	a1,a1,48
1c009f56:	0786                	slli	a5,a5,0x1
1c009f58:	00b303a3          	sb	a1,7(t1)
1c009f5c:	ff888a13          	addi	s4,a7,-8
1c009f60:	85be                	mv	a1,a5
1c009f62:	01c6f6b3          	and	a3,a3,t3
1c009f66:	01405be3          	blez	s4,1c00a77c <pos_libc_prf+0x1b12>
1c009f6a:	078a                	slli	a5,a5,0x2
1c009f6c:	01e5de13          	srli	t3,a1,0x1e
1c009f70:	00269513          	slli	a0,a3,0x2
1c009f74:	95be                	add	a1,a1,a5
1c009f76:	00ae6533          	or	a0,t3,a0
1c009f7a:	9536                	add	a0,a0,a3
1c009f7c:	00f5b6b3          	sltu	a3,a1,a5
1c009f80:	96aa                	add	a3,a3,a0
1c009f82:	01f5d793          	srli	a5,a1,0x1f
1c009f86:	0686                	slli	a3,a3,0x1
1c009f88:	8edd                	or	a3,a3,a5
1c009f8a:	01c6d793          	srli	a5,a3,0x1c
1c009f8e:	03078793          	addi	a5,a5,48
1c009f92:	10000e37          	lui	t3,0x10000
1c009f96:	1e7d                	addi	t3,t3,-1
1c009f98:	00f30423          	sb	a5,8(t1)
1c009f9c:	ff788a13          	addi	s4,a7,-9
1c009fa0:	00159793          	slli	a5,a1,0x1
1c009fa4:	01c6f6b3          	and	a3,a3,t3
1c009fa8:	7d405663          	blez	s4,1c00a774 <pos_libc_prf+0x1b0a>
1c009fac:	01e7df13          	srli	t5,a5,0x1e
1c009fb0:	00269e93          	slli	t4,a3,0x2
1c009fb4:	058e                	slli	a1,a1,0x3
1c009fb6:	00f58533          	add	a0,a1,a5
1c009fba:	01df6eb3          	or	t4,t5,t4
1c009fbe:	9eb6                	add	t4,t4,a3
1c009fc0:	00b536b3          	sltu	a3,a0,a1
1c009fc4:	96f6                	add	a3,a3,t4
1c009fc6:	01f55793          	srli	a5,a0,0x1f
1c009fca:	0686                	slli	a3,a3,0x1
1c009fcc:	8edd                	or	a3,a3,a5
1c009fce:	01c6d793          	srli	a5,a3,0x1c
1c009fd2:	03078793          	addi	a5,a5,48
1c009fd6:	00f304a3          	sb	a5,9(t1)
1c009fda:	ff688a13          	addi	s4,a7,-10
1c009fde:	00151793          	slli	a5,a0,0x1
1c009fe2:	01c6f6b3          	and	a3,a3,t3
1c009fe6:	79405363          	blez	s4,1c00a76c <pos_libc_prf+0x1b02>
1c009fea:	01e7df13          	srli	t5,a5,0x1e
1c009fee:	00269e93          	slli	t4,a3,0x2
1c009ff2:	050e                	slli	a0,a0,0x3
1c009ff4:	00f505b3          	add	a1,a0,a5
1c009ff8:	01df6eb3          	or	t4,t5,t4
1c009ffc:	9eb6                	add	t4,t4,a3
1c009ffe:	00a5b6b3          	sltu	a3,a1,a0
1c00a002:	96f6                	add	a3,a3,t4
1c00a004:	01f5d793          	srli	a5,a1,0x1f
1c00a008:	0686                	slli	a3,a3,0x1
1c00a00a:	8edd                	or	a3,a3,a5
1c00a00c:	01c6d793          	srli	a5,a3,0x1c
1c00a010:	03078793          	addi	a5,a5,48
1c00a014:	00f30523          	sb	a5,10(t1)
1c00a018:	ff588a13          	addi	s4,a7,-11
1c00a01c:	00159793          	slli	a5,a1,0x1
1c00a020:	01c6f6b3          	and	a3,a3,t3
1c00a024:	75405063          	blez	s4,1c00a764 <pos_libc_prf+0x1afa>
1c00a028:	01e7df13          	srli	t5,a5,0x1e
1c00a02c:	00269e93          	slli	t4,a3,0x2
1c00a030:	058e                	slli	a1,a1,0x3
1c00a032:	00f58533          	add	a0,a1,a5
1c00a036:	01df6eb3          	or	t4,t5,t4
1c00a03a:	9eb6                	add	t4,t4,a3
1c00a03c:	00b536b3          	sltu	a3,a0,a1
1c00a040:	96f6                	add	a3,a3,t4
1c00a042:	01f55793          	srli	a5,a0,0x1f
1c00a046:	0686                	slli	a3,a3,0x1
1c00a048:	8edd                	or	a3,a3,a5
1c00a04a:	01c6d793          	srli	a5,a3,0x1c
1c00a04e:	03078793          	addi	a5,a5,48
1c00a052:	00f305a3          	sb	a5,11(t1)
1c00a056:	ff488a13          	addi	s4,a7,-12
1c00a05a:	00151793          	slli	a5,a0,0x1
1c00a05e:	01c6f6b3          	and	a3,a3,t3
1c00a062:	6f405163          	blez	s4,1c00a744 <pos_libc_prf+0x1ada>
1c00a066:	050e                	slli	a0,a0,0x3
1c00a068:	01e7de93          	srli	t4,a5,0x1e
1c00a06c:	00269813          	slli	a6,a3,0x2
1c00a070:	00f505b3          	add	a1,a0,a5
1c00a074:	010ee833          	or	a6,t4,a6
1c00a078:	9836                	add	a6,a6,a3
1c00a07a:	00a5b6b3          	sltu	a3,a1,a0
1c00a07e:	96c2                	add	a3,a3,a6
1c00a080:	01f5d793          	srli	a5,a1,0x1f
1c00a084:	0686                	slli	a3,a3,0x1
1c00a086:	8edd                	or	a3,a3,a5
1c00a088:	01c6d793          	srli	a5,a3,0x1c
1c00a08c:	03078793          	addi	a5,a5,48
1c00a090:	00f30623          	sb	a5,12(t1)
1c00a094:	ff388a13          	addi	s4,a7,-13
1c00a098:	00159793          	slli	a5,a1,0x1
1c00a09c:	01c6f6b3          	and	a3,a3,t3
1c00a0a0:	00d30513          	addi	a0,t1,13
1c00a0a4:	480d                	li	a6,3
1c00a0a6:	0d405163          	blez	s4,1c00a168 <pos_libc_prf+0x14fe>
1c00a0aa:	01e7de93          	srli	t4,a5,0x1e
1c00a0ae:	00269813          	slli	a6,a3,0x2
1c00a0b2:	058e                	slli	a1,a1,0x3
1c00a0b4:	00f58533          	add	a0,a1,a5
1c00a0b8:	010ee833          	or	a6,t4,a6
1c00a0bc:	9836                	add	a6,a6,a3
1c00a0be:	00b536b3          	sltu	a3,a0,a1
1c00a0c2:	96c2                	add	a3,a3,a6
1c00a0c4:	01f55793          	srli	a5,a0,0x1f
1c00a0c8:	0686                	slli	a3,a3,0x1
1c00a0ca:	8edd                	or	a3,a3,a5
1c00a0cc:	01c6d793          	srli	a5,a3,0x1c
1c00a0d0:	03078793          	addi	a5,a5,48
1c00a0d4:	00f306a3          	sb	a5,13(t1)
1c00a0d8:	ff288a13          	addi	s4,a7,-14
1c00a0dc:	00151793          	slli	a5,a0,0x1
1c00a0e0:	01c6f6b3          	and	a3,a3,t3
1c00a0e4:	65405c63          	blez	s4,1c00a73c <pos_libc_prf+0x1ad2>
1c00a0e8:	050e                	slli	a0,a0,0x3
1c00a0ea:	01e7de93          	srli	t4,a5,0x1e
1c00a0ee:	00269813          	slli	a6,a3,0x2
1c00a0f2:	00f505b3          	add	a1,a0,a5
1c00a0f6:	010ee833          	or	a6,t4,a6
1c00a0fa:	9836                	add	a6,a6,a3
1c00a0fc:	00a5b6b3          	sltu	a3,a1,a0
1c00a100:	96c2                	add	a3,a3,a6
1c00a102:	01f5d793          	srli	a5,a1,0x1f
1c00a106:	0686                	slli	a3,a3,0x1
1c00a108:	8edd                	or	a3,a3,a5
1c00a10a:	01c6d793          	srli	a5,a3,0x1c
1c00a10e:	03078793          	addi	a5,a5,48
1c00a112:	00f30723          	sb	a5,14(t1)
1c00a116:	ff188a13          	addi	s4,a7,-15
1c00a11a:	00159793          	slli	a5,a1,0x1
1c00a11e:	01c6f6b3          	and	a3,a3,t3
1c00a122:	00f30513          	addi	a0,t1,15
1c00a126:	4805                	li	a6,1
1c00a128:	05405063          	blez	s4,1c00a168 <pos_libc_prf+0x14fe>
1c00a12c:	01e7d813          	srli	a6,a5,0x1e
1c00a130:	058e                	slli	a1,a1,0x3
1c00a132:	00269513          	slli	a0,a3,0x2
1c00a136:	97ae                	add	a5,a5,a1
1c00a138:	00a86533          	or	a0,a6,a0
1c00a13c:	9536                	add	a0,a0,a3
1c00a13e:	00b7b6b3          	sltu	a3,a5,a1
1c00a142:	96aa                	add	a3,a3,a0
1c00a144:	01f7d593          	srli	a1,a5,0x1f
1c00a148:	0686                	slli	a3,a3,0x1
1c00a14a:	8ecd                	or	a3,a3,a1
1c00a14c:	01c6d593          	srli	a1,a3,0x1c
1c00a150:	03058593          	addi	a1,a1,48
1c00a154:	01030513          	addi	a0,t1,16
1c00a158:	0786                	slli	a5,a5,0x1
1c00a15a:	01c6f6b3          	and	a3,a3,t3
1c00a15e:	00b307a3          	sb	a1,15(t1)
1c00a162:	ff088a13          	addi	s4,a7,-16
1c00a166:	4801                	li	a6,0
1c00a168:	4712                	lw	a4,4(sp)
1c00a16a:	4e070663          	beqz	a4,1c00a656 <pos_libc_prf+0x19ec>
1c00a16e:	02e00893          	li	a7,46
1c00a172:	01150023          	sb	a7,0(a0)
1c00a176:	8326                	mv	t1,s1
1c00a178:	cc02                	sw	zero,24(sp)
1c00a17a:	00150593          	addi	a1,a0,1
1c00a17e:	4881                	li	a7,0
1c00a180:	62605263          	blez	t1,1c00a7a4 <pos_libc_prf+0x1b3a>
1c00a184:	62080063          	beqz	a6,1c00a7a4 <pos_libc_prf+0x1b3a>
1c00a188:	00279513          	slli	a0,a5,0x2
1c00a18c:	01e7de93          	srli	t4,a5,0x1e
1c00a190:	00269e13          	slli	t3,a3,0x2
1c00a194:	97aa                	add	a5,a5,a0
1c00a196:	01ceee33          	or	t3,t4,t3
1c00a19a:	96f2                	add	a3,a3,t3
1c00a19c:	00a7beb3          	sltu	t4,a5,a0
1c00a1a0:	9eb6                	add	t4,t4,a3
1c00a1a2:	0e86                	slli	t4,t4,0x1
1c00a1a4:	01f7d693          	srli	a3,a5,0x1f
1c00a1a8:	01d6eeb3          	or	t4,a3,t4
1c00a1ac:	01ced693          	srli	a3,t4,0x1c
1c00a1b0:	03068693          	addi	a3,a3,48
1c00a1b4:	00d58023          	sb	a3,0(a1)
1c00a1b8:	fff30493          	addi	s1,t1,-1
1c00a1bc:	00158513          	addi	a0,a1,1
1c00a1c0:	00179693          	slli	a3,a5,0x1
1c00a1c4:	42048263          	beqz	s1,1c00a5e8 <pos_libc_prf+0x197e>
1c00a1c8:	42182063          	p.beqimm	a6,1,1c00a5e8 <pos_libc_prf+0x197e>
1c00a1cc:	10000e37          	lui	t3,0x10000
1c00a1d0:	1e7d                	addi	t3,t3,-1
1c00a1d2:	01cefeb3          	and	t4,t4,t3
1c00a1d6:	078e                	slli	a5,a5,0x3
1c00a1d8:	01e6df13          	srli	t5,a3,0x1e
1c00a1dc:	002e9513          	slli	a0,t4,0x2
1c00a1e0:	96be                	add	a3,a3,a5
1c00a1e2:	00af6533          	or	a0,t5,a0
1c00a1e6:	9eaa                	add	t4,t4,a0
1c00a1e8:	00f6b7b3          	sltu	a5,a3,a5
1c00a1ec:	97f6                	add	a5,a5,t4
1c00a1ee:	01f6d513          	srli	a0,a3,0x1f
1c00a1f2:	0786                	slli	a5,a5,0x1
1c00a1f4:	8fc9                	or	a5,a5,a0
1c00a1f6:	01c7d513          	srli	a0,a5,0x1c
1c00a1fa:	03050513          	addi	a0,a0,48
1c00a1fe:	00a580a3          	sb	a0,1(a1)
1c00a202:	ffe30493          	addi	s1,t1,-2
1c00a206:	00258513          	addi	a0,a1,2
1c00a20a:	00169e93          	slli	t4,a3,0x1
1c00a20e:	01c7f7b3          	and	a5,a5,t3
1c00a212:	3c048b63          	beqz	s1,1c00a5e8 <pos_libc_prf+0x197e>
1c00a216:	3c282963          	p.beqimm	a6,2,1c00a5e8 <pos_libc_prf+0x197e>
1c00a21a:	01eedf13          	srli	t5,t4,0x1e
1c00a21e:	068e                	slli	a3,a3,0x3
1c00a220:	00279513          	slli	a0,a5,0x2
1c00a224:	9eb6                	add	t4,t4,a3
1c00a226:	00af6533          	or	a0,t5,a0
1c00a22a:	00deb6b3          	sltu	a3,t4,a3
1c00a22e:	97aa                	add	a5,a5,a0
1c00a230:	97b6                	add	a5,a5,a3
1c00a232:	0786                	slli	a5,a5,0x1
1c00a234:	01fed693          	srli	a3,t4,0x1f
1c00a238:	8fd5                	or	a5,a5,a3
1c00a23a:	01c7d693          	srli	a3,a5,0x1c
1c00a23e:	03068693          	addi	a3,a3,48
1c00a242:	00d58123          	sb	a3,2(a1)
1c00a246:	ffd30493          	addi	s1,t1,-3
1c00a24a:	00358513          	addi	a0,a1,3
1c00a24e:	001e9693          	slli	a3,t4,0x1
1c00a252:	01c7ff33          	and	t5,a5,t3
1c00a256:	38905963          	blez	s1,1c00a5e8 <pos_libc_prf+0x197e>
1c00a25a:	38382763          	p.beqimm	a6,3,1c00a5e8 <pos_libc_prf+0x197e>
1c00a25e:	003e9513          	slli	a0,t4,0x3
1c00a262:	01e6d793          	srli	a5,a3,0x1e
1c00a266:	002f1e93          	slli	t4,t5,0x2
1c00a26a:	96aa                	add	a3,a3,a0
1c00a26c:	01d7eeb3          	or	t4,a5,t4
1c00a270:	9efa                	add	t4,t4,t5
1c00a272:	00a6b7b3          	sltu	a5,a3,a0
1c00a276:	97f6                	add	a5,a5,t4
1c00a278:	01f6d513          	srli	a0,a3,0x1f
1c00a27c:	0786                	slli	a5,a5,0x1
1c00a27e:	8fc9                	or	a5,a5,a0
1c00a280:	01c7d513          	srli	a0,a5,0x1c
1c00a284:	03050513          	addi	a0,a0,48
1c00a288:	00a581a3          	sb	a0,3(a1)
1c00a28c:	ffc30493          	addi	s1,t1,-4
1c00a290:	00458513          	addi	a0,a1,4
1c00a294:	00169e93          	slli	t4,a3,0x1
1c00a298:	01c7fe33          	and	t3,a5,t3
1c00a29c:	34905663          	blez	s1,1c00a5e8 <pos_libc_prf+0x197e>
1c00a2a0:	34482463          	p.beqimm	a6,4,1c00a5e8 <pos_libc_prf+0x197e>
1c00a2a4:	068e                	slli	a3,a3,0x3
1c00a2a6:	01eed793          	srli	a5,t4,0x1e
1c00a2aa:	002e1513          	slli	a0,t3,0x2
1c00a2ae:	9eb6                	add	t4,t4,a3
1c00a2b0:	8d5d                	or	a0,a0,a5
1c00a2b2:	9e2a                	add	t3,t3,a0
1c00a2b4:	00deb7b3          	sltu	a5,t4,a3
1c00a2b8:	97f2                	add	a5,a5,t3
1c00a2ba:	01fed693          	srli	a3,t4,0x1f
1c00a2be:	0786                	slli	a5,a5,0x1
1c00a2c0:	8fd5                	or	a5,a5,a3
1c00a2c2:	01c7d693          	srli	a3,a5,0x1c
1c00a2c6:	03068693          	addi	a3,a3,48
1c00a2ca:	00d58223          	sb	a3,4(a1)
1c00a2ce:	ffb30493          	addi	s1,t1,-5
1c00a2d2:	00558513          	addi	a0,a1,5
1c00a2d6:	001e9693          	slli	a3,t4,0x1
1c00a2da:	30905763          	blez	s1,1c00a5e8 <pos_libc_prf+0x197e>
1c00a2de:	30582563          	p.beqimm	a6,5,1c00a5e8 <pos_libc_prf+0x197e>
1c00a2e2:	10000e37          	lui	t3,0x10000
1c00a2e6:	1e7d                	addi	t3,t3,-1
1c00a2e8:	01c7f7b3          	and	a5,a5,t3
1c00a2ec:	01e6de93          	srli	t4,a3,0x1e
1c00a2f0:	00269513          	slli	a0,a3,0x2
1c00a2f4:	00279f13          	slli	t5,a5,0x2
1c00a2f8:	96aa                	add	a3,a3,a0
1c00a2fa:	01eeef33          	or	t5,t4,t5
1c00a2fe:	00a6b533          	sltu	a0,a3,a0
1c00a302:	97fa                	add	a5,a5,t5
1c00a304:	97aa                	add	a5,a5,a0
1c00a306:	00179e93          	slli	t4,a5,0x1
1c00a30a:	01f6d513          	srli	a0,a3,0x1f
1c00a30e:	01d56eb3          	or	t4,a0,t4
1c00a312:	01ced793          	srli	a5,t4,0x1c
1c00a316:	03078793          	addi	a5,a5,48
1c00a31a:	00f582a3          	sb	a5,5(a1)
1c00a31e:	ffa30493          	addi	s1,t1,-6
1c00a322:	00658513          	addi	a0,a1,6
1c00a326:	00169793          	slli	a5,a3,0x1
1c00a32a:	01cefeb3          	and	t4,t4,t3
1c00a32e:	2a905d63          	blez	s1,1c00a5e8 <pos_libc_prf+0x197e>
1c00a332:	2a682b63          	p.beqimm	a6,6,1c00a5e8 <pos_libc_prf+0x197e>
1c00a336:	068e                	slli	a3,a3,0x3
1c00a338:	01e7df13          	srli	t5,a5,0x1e
1c00a33c:	002e9513          	slli	a0,t4,0x2
1c00a340:	97b6                	add	a5,a5,a3
1c00a342:	00af6533          	or	a0,t5,a0
1c00a346:	9eaa                	add	t4,t4,a0
1c00a348:	00d7b6b3          	sltu	a3,a5,a3
1c00a34c:	96f6                	add	a3,a3,t4
1c00a34e:	01f7d513          	srli	a0,a5,0x1f
1c00a352:	00169e93          	slli	t4,a3,0x1
1c00a356:	01d56eb3          	or	t4,a0,t4
1c00a35a:	01ced693          	srli	a3,t4,0x1c
1c00a35e:	03068693          	addi	a3,a3,48
1c00a362:	00d58323          	sb	a3,6(a1)
1c00a366:	ff930493          	addi	s1,t1,-7
1c00a36a:	00758513          	addi	a0,a1,7
1c00a36e:	00179693          	slli	a3,a5,0x1
1c00a372:	01cefeb3          	and	t4,t4,t3
1c00a376:	26905963          	blez	s1,1c00a5e8 <pos_libc_prf+0x197e>
1c00a37a:	26782763          	p.beqimm	a6,7,1c00a5e8 <pos_libc_prf+0x197e>
1c00a37e:	078e                	slli	a5,a5,0x3
1c00a380:	01e6df13          	srli	t5,a3,0x1e
1c00a384:	002e9513          	slli	a0,t4,0x2
1c00a388:	96be                	add	a3,a3,a5
1c00a38a:	00af6533          	or	a0,t5,a0
1c00a38e:	9eaa                	add	t4,t4,a0
1c00a390:	00f6b7b3          	sltu	a5,a3,a5
1c00a394:	97f6                	add	a5,a5,t4
1c00a396:	01f6d513          	srli	a0,a3,0x1f
1c00a39a:	00179e93          	slli	t4,a5,0x1
1c00a39e:	01d56eb3          	or	t4,a0,t4
1c00a3a2:	01ced793          	srli	a5,t4,0x1c
1c00a3a6:	03078793          	addi	a5,a5,48
1c00a3aa:	00f583a3          	sb	a5,7(a1)
1c00a3ae:	ff830493          	addi	s1,t1,-8
1c00a3b2:	00858513          	addi	a0,a1,8
1c00a3b6:	00169793          	slli	a5,a3,0x1
1c00a3ba:	01cefeb3          	and	t4,t4,t3
1c00a3be:	22905563          	blez	s1,1c00a5e8 <pos_libc_prf+0x197e>
1c00a3c2:	22882363          	p.beqimm	a6,8,1c00a5e8 <pos_libc_prf+0x197e>
1c00a3c6:	01e7df13          	srli	t5,a5,0x1e
1c00a3ca:	068e                	slli	a3,a3,0x3
1c00a3cc:	002e9513          	slli	a0,t4,0x2
1c00a3d0:	97b6                	add	a5,a5,a3
1c00a3d2:	00af6533          	or	a0,t5,a0
1c00a3d6:	9eaa                	add	t4,t4,a0
1c00a3d8:	00d7b6b3          	sltu	a3,a5,a3
1c00a3dc:	96f6                	add	a3,a3,t4
1c00a3de:	01f7d513          	srli	a0,a5,0x1f
1c00a3e2:	0686                	slli	a3,a3,0x1
1c00a3e4:	8ec9                	or	a3,a3,a0
1c00a3e6:	01c6d513          	srli	a0,a3,0x1c
1c00a3ea:	03050513          	addi	a0,a0,48
1c00a3ee:	00a58423          	sb	a0,8(a1)
1c00a3f2:	ff730493          	addi	s1,t1,-9
1c00a3f6:	00958513          	addi	a0,a1,9
1c00a3fa:	00179f13          	slli	t5,a5,0x1
1c00a3fe:	01c6feb3          	and	t4,a3,t3
1c00a402:	1e905363          	blez	s1,1c00a5e8 <pos_libc_prf+0x197e>
1c00a406:	1e982163          	p.beqimm	a6,9,1c00a5e8 <pos_libc_prf+0x197e>
1c00a40a:	078e                	slli	a5,a5,0x3
1c00a40c:	01ef5293          	srli	t0,t5,0x1e
1c00a410:	002e9513          	slli	a0,t4,0x2
1c00a414:	01e786b3          	add	a3,a5,t5
1c00a418:	00a2e533          	or	a0,t0,a0
1c00a41c:	00f6b7b3          	sltu	a5,a3,a5
1c00a420:	9576                	add	a0,a0,t4
1c00a422:	97aa                	add	a5,a5,a0
1c00a424:	0786                	slli	a5,a5,0x1
1c00a426:	01f6d513          	srli	a0,a3,0x1f
1c00a42a:	8fc9                	or	a5,a5,a0
1c00a42c:	01c7d513          	srli	a0,a5,0x1c
1c00a430:	03050513          	addi	a0,a0,48
1c00a434:	00a584a3          	sb	a0,9(a1)
1c00a438:	ff630493          	addi	s1,t1,-10
1c00a43c:	00a58513          	addi	a0,a1,10
1c00a440:	0686                	slli	a3,a3,0x1
1c00a442:	01c7f7b3          	and	a5,a5,t3
1c00a446:	1a905163          	blez	s1,1c00a5e8 <pos_libc_prf+0x197e>
1c00a44a:	18a82f63          	p.beqimm	a6,10,1c00a5e8 <pos_libc_prf+0x197e>
1c00a44e:	01e6de93          	srli	t4,a3,0x1e
1c00a452:	00269513          	slli	a0,a3,0x2
1c00a456:	00279e13          	slli	t3,a5,0x2
1c00a45a:	96aa                	add	a3,a3,a0
1c00a45c:	01ceee33          	or	t3,t4,t3
1c00a460:	00a6b533          	sltu	a0,a3,a0
1c00a464:	97f2                	add	a5,a5,t3
1c00a466:	97aa                	add	a5,a5,a0
1c00a468:	00179e93          	slli	t4,a5,0x1
1c00a46c:	01f6d513          	srli	a0,a3,0x1f
1c00a470:	01d56eb3          	or	t4,a0,t4
1c00a474:	01ced793          	srli	a5,t4,0x1c
1c00a478:	03078793          	addi	a5,a5,48
1c00a47c:	10000e37          	lui	t3,0x10000
1c00a480:	1e7d                	addi	t3,t3,-1
1c00a482:	00f58523          	sb	a5,10(a1)
1c00a486:	ff530493          	addi	s1,t1,-11
1c00a48a:	00b58513          	addi	a0,a1,11
1c00a48e:	00169793          	slli	a5,a3,0x1
1c00a492:	01cefeb3          	and	t4,t4,t3
1c00a496:	14905963          	blez	s1,1c00a5e8 <pos_libc_prf+0x197e>
1c00a49a:	14b82763          	p.beqimm	a6,11,1c00a5e8 <pos_libc_prf+0x197e>
1c00a49e:	068e                	slli	a3,a3,0x3
1c00a4a0:	01e7df13          	srli	t5,a5,0x1e
1c00a4a4:	002e9513          	slli	a0,t4,0x2
1c00a4a8:	97b6                	add	a5,a5,a3
1c00a4aa:	00af6533          	or	a0,t5,a0
1c00a4ae:	9eaa                	add	t4,t4,a0
1c00a4b0:	00d7b6b3          	sltu	a3,a5,a3
1c00a4b4:	96f6                	add	a3,a3,t4
1c00a4b6:	01f7d513          	srli	a0,a5,0x1f
1c00a4ba:	0686                	slli	a3,a3,0x1
1c00a4bc:	8ec9                	or	a3,a3,a0
1c00a4be:	01c6d513          	srli	a0,a3,0x1c
1c00a4c2:	03050513          	addi	a0,a0,48
1c00a4c6:	00a585a3          	sb	a0,11(a1)
1c00a4ca:	ff430493          	addi	s1,t1,-12
1c00a4ce:	00c58513          	addi	a0,a1,12
1c00a4d2:	00179e93          	slli	t4,a5,0x1
1c00a4d6:	10905963          	blez	s1,1c00a5e8 <pos_libc_prf+0x197e>
1c00a4da:	10c82763          	p.beqimm	a6,12,1c00a5e8 <pos_libc_prf+0x197e>
1c00a4de:	01c6f6b3          	and	a3,a3,t3
1c00a4e2:	01eedf13          	srli	t5,t4,0x1e
1c00a4e6:	078e                	slli	a5,a5,0x3
1c00a4e8:	00269513          	slli	a0,a3,0x2
1c00a4ec:	9ebe                	add	t4,t4,a5
1c00a4ee:	00af6533          	or	a0,t5,a0
1c00a4f2:	96aa                	add	a3,a3,a0
1c00a4f4:	00feb7b3          	sltu	a5,t4,a5
1c00a4f8:	97b6                	add	a5,a5,a3
1c00a4fa:	01fed513          	srli	a0,t4,0x1f
1c00a4fe:	00179693          	slli	a3,a5,0x1
1c00a502:	8ec9                	or	a3,a3,a0
1c00a504:	01c6d793          	srli	a5,a3,0x1c
1c00a508:	03078793          	addi	a5,a5,48
1c00a50c:	00f58623          	sb	a5,12(a1)
1c00a510:	ff330493          	addi	s1,t1,-13
1c00a514:	00d58513          	addi	a0,a1,13
1c00a518:	001e9793          	slli	a5,t4,0x1
1c00a51c:	01c6ff33          	and	t5,a3,t3
1c00a520:	0c905463          	blez	s1,1c00a5e8 <pos_libc_prf+0x197e>
1c00a524:	0cd82263          	p.beqimm	a6,13,1c00a5e8 <pos_libc_prf+0x197e>
1c00a528:	003e9693          	slli	a3,t4,0x3
1c00a52c:	002f1513          	slli	a0,t5,0x2
1c00a530:	01e7de93          	srli	t4,a5,0x1e
1c00a534:	00aee533          	or	a0,t4,a0
1c00a538:	97b6                	add	a5,a5,a3
1c00a53a:	957a                	add	a0,a0,t5
1c00a53c:	00d7b6b3          	sltu	a3,a5,a3
1c00a540:	96aa                	add	a3,a3,a0
1c00a542:	0686                	slli	a3,a3,0x1
1c00a544:	01f7d513          	srli	a0,a5,0x1f
1c00a548:	8ec9                	or	a3,a3,a0
1c00a54a:	01c6d513          	srli	a0,a3,0x1c
1c00a54e:	03050513          	addi	a0,a0,48
1c00a552:	00a586a3          	sb	a0,13(a1)
1c00a556:	ff230493          	addi	s1,t1,-14
1c00a55a:	00e58513          	addi	a0,a1,14
1c00a55e:	00179f13          	slli	t5,a5,0x1
1c00a562:	01c6feb3          	and	t4,a3,t3
1c00a566:	08905163          	blez	s1,1c00a5e8 <pos_libc_prf+0x197e>
1c00a56a:	06e82f63          	p.beqimm	a6,14,1c00a5e8 <pos_libc_prf+0x197e>
1c00a56e:	078e                	slli	a5,a5,0x3
1c00a570:	002e9513          	slli	a0,t4,0x2
1c00a574:	01ef5293          	srli	t0,t5,0x1e
1c00a578:	01e786b3          	add	a3,a5,t5
1c00a57c:	00a2e533          	or	a0,t0,a0
1c00a580:	9576                	add	a0,a0,t4
1c00a582:	00f6b7b3          	sltu	a5,a3,a5
1c00a586:	97aa                	add	a5,a5,a0
1c00a588:	00179e93          	slli	t4,a5,0x1
1c00a58c:	01f6d513          	srli	a0,a3,0x1f
1c00a590:	01d56eb3          	or	t4,a0,t4
1c00a594:	01ced793          	srli	a5,t4,0x1c
1c00a598:	03078793          	addi	a5,a5,48
1c00a59c:	00f58723          	sb	a5,14(a1)
1c00a5a0:	ff130493          	addi	s1,t1,-15
1c00a5a4:	00f58513          	addi	a0,a1,15
1c00a5a8:	00169793          	slli	a5,a3,0x1
1c00a5ac:	01cefe33          	and	t3,t4,t3
1c00a5b0:	02905c63          	blez	s1,1c00a5e8 <pos_libc_prf+0x197e>
1c00a5b4:	46c1                	li	a3,16
1c00a5b6:	02d81963          	bne	a6,a3,1c00a5e8 <pos_libc_prf+0x197e>
1c00a5ba:	00279513          	slli	a0,a5,0x2
1c00a5be:	01e7d813          	srli	a6,a5,0x1e
1c00a5c2:	002e1693          	slli	a3,t3,0x2
1c00a5c6:	97aa                	add	a5,a5,a0
1c00a5c8:	00d866b3          	or	a3,a6,a3
1c00a5cc:	00a7b7b3          	sltu	a5,a5,a0
1c00a5d0:	9e36                	add	t3,t3,a3
1c00a5d2:	97f2                	add	a5,a5,t3
1c00a5d4:	0786                	slli	a5,a5,0x1
1c00a5d6:	83f1                	srli	a5,a5,0x1c
1c00a5d8:	03078793          	addi	a5,a5,48
1c00a5dc:	01058513          	addi	a0,a1,16
1c00a5e0:	00f587a3          	sb	a5,15(a1)
1c00a5e4:	ff030493          	addi	s1,t1,-16
1c00a5e8:	47e2                	lw	a5,24(sp)
1c00a5ea:	014785b3          	add	a1,a5,s4
1c00a5ee:	9c0f9b63          	bnez	t6,1c0097c4 <pos_libc_prf+0xb5a>
1c00a5f2:	95a6                	add	a1,a1,s1
1c00a5f4:	8ca6                	mv	s9,s1
1c00a5f6:	9faff06f          	j	1c0097f0 <pos_libc_prf+0xb86>
1c00a5fa:	02d00793          	li	a5,45
1c00a5fe:	411008b3          	neg	a7,a7
1c00a602:	00f500a3          	sb	a5,1(a0)
1c00a606:	db4ff06f          	j	1c009bba <pos_libc_prf+0xf50>
1c00a60a:	41fad793          	srai	a5,s5,0x1f
1c00a60e:	0156a023          	sw	s5,0(a3)
1c00a612:	c2dc                	sw	a5,4(a3)
1c00a614:	e94fe06f          	j	1c008ca8 <pos_libc_prf+0x3e>
1c00a618:	4a62                	lw	s4,24(sp)
1c00a61a:	a039                	j	1c00a628 <pos_libc_prf+0x19be>
1c00a61c:	9982                	jalr	s3
1c00a61e:	1a7d                	addi	s4,s4,-1
1c00a620:	01f53463          	p.bneimm	a0,-1,1c00a628 <pos_libc_prf+0x19be>
1c00a624:	fbcfe06f          	j	1c008de0 <pos_libc_prf+0x176>
1c00a628:	85de                	mv	a1,s7
1c00a62a:	03000513          	li	a0,48
1c00a62e:	ff4047e3          	bgtz	s4,1c00a61c <pos_libc_prf+0x19b2>
1c00a632:	4762                	lw	a4,24(sp)
1c00a634:	40e90933          	sub	s2,s2,a4
1c00a638:	939fe06f          	j	1c008f70 <pos_libc_prf+0x306>
1c00a63c:	4741                	li	a4,16
1c00a63e:	04e4cf33          	p.min	t5,s1,a4
1c00a642:	1f7d                	addi	t5,t5,-1
1c00a644:	84b6                	mv	s1,a3
1c00a646:	4f81                	li	t6,0
1c00a648:	c67fe06f          	j	1c0092ae <pos_libc_prf+0x644>
1c00a64c:	104c                	addi	a1,sp,36
1c00a64e:	4901                	li	s2,0
1c00a650:	86ae                	mv	a3,a1
1c00a652:	ed8ff06f          	j	1c009d2a <pos_libc_prf+0x10c0>
1c00a656:	0c904463          	bgtz	s1,1c00a71e <pos_libc_prf+0x1ab4>
1c00a65a:	4881                	li	a7,0
1c00a65c:	cc02                	sw	zero,24(sp)
1c00a65e:	b769                	j	1c00a5e8 <pos_libc_prf+0x197e>
1c00a660:	4712                	lw	a4,4(sp)
1c00a662:	4f81                	li	t6,0
1c00a664:	e319                	bnez	a4,1c00a66a <pos_libc_prf+0x1a00>
1c00a666:	c3dfe06f          	j	1c0092a2 <pos_libc_prf+0x638>
1c00a66a:	4f01                	li	t5,0
1c00a66c:	4f81                	li	t6,0
1c00a66e:	c41fe06f          	j	1c0092ae <pos_libc_prf+0x644>
1c00a672:	020102a3          	sb	zero,37(sp)
1c00a676:	c202                	sw	zero,4(sp)
1c00a678:	4905                	li	s2,1
1c00a67a:	875fe06f          	j	1c008eee <pos_libc_prf+0x284>
1c00a67e:	06600d93          	li	s11,102
1c00a682:	d1cff06f          	j	1c009b9e <pos_libc_prf+0xf34>
1c00a686:	03000593          	li	a1,48
1c00a68a:	4712                	lw	a4,4(sp)
1c00a68c:	00b30023          	sb	a1,0(t1)
1c00a690:	e335                	bnez	a4,1c00a6f4 <pos_libc_prf+0x1a8a>
1c00a692:	06905b63          	blez	s1,1c00a708 <pos_libc_prf+0x1a9e>
1c00a696:	02e00593          	li	a1,46
1c00a69a:	00b300a3          	sb	a1,1(t1)
1c00a69e:	00230513          	addi	a0,t1,2
1c00a6a2:	4841                	li	a6,16
1c00a6a4:	08088363          	beqz	a7,1c00a72a <pos_libc_prf+0x1ac0>
1c00a6a8:	41100733          	neg	a4,a7
1c00a6ac:	04974733          	p.min	a4,a4,s1
1c00a6b0:	cc3a                	sw	a4,24(sp)
1c00a6b2:	40e48333          	sub	t1,s1,a4
1c00a6b6:	85aa                	mv	a1,a0
1c00a6b8:	4a01                	li	s4,0
1c00a6ba:	4841                	li	a6,16
1c00a6bc:	ac6044e3          	bgtz	t1,1c00a184 <pos_libc_prf+0x151a>
1c00a6c0:	a0d5                	j	1c00a7a4 <pos_libc_prf+0x1b3a>
1c00a6c2:	4a72                	lw	s4,28(sp)
1c00a6c4:	de4fe06f          	j	1c008ca8 <pos_libc_prf+0x3e>
1c00a6c8:	6799                	lui	a5,0x6
1c00a6ca:	16e78793          	addi	a5,a5,366 # 616e <pos_soc_event_callback+0x5d2a>
1c00a6ce:	00f31023          	sh	a5,0(t1)
1c00a6d2:	06e00793          	li	a5,110
1c00a6d6:	00f30123          	sb	a5,2(t1)
1c00a6da:	c38ff06f          	j	1c009b12 <pos_libc_prf+0xea8>
1c00a6de:	679d                	lui	a5,0x7
1c00a6e0:	e6978793          	addi	a5,a5,-407 # 6e69 <pos_soc_event_callback+0x6a25>
1c00a6e4:	00f31023          	sh	a5,0(t1)
1c00a6e8:	06600793          	li	a5,102
1c00a6ec:	00f30123          	sb	a5,2(t1)
1c00a6f0:	c22ff06f          	j	1c009b12 <pos_libc_prf+0xea8>
1c00a6f4:	02e00593          	li	a1,46
1c00a6f8:	00b300a3          	sb	a1,1(t1)
1c00a6fc:	00230513          	addi	a0,t1,2
1c00a700:	00088763          	beqz	a7,1c00a70e <pos_libc_prf+0x1aa4>
1c00a704:	fa9042e3          	bgtz	s1,1c00a6a8 <pos_libc_prf+0x1a3e>
1c00a708:	4a01                	li	s4,0
1c00a70a:	cc02                	sw	zero,24(sp)
1c00a70c:	bdf1                	j	1c00a5e8 <pos_libc_prf+0x197e>
1c00a70e:	fe905de3          	blez	s1,1c00a708 <pos_libc_prf+0x1a9e>
1c00a712:	85aa                	mv	a1,a0
1c00a714:	4a01                	li	s4,0
1c00a716:	cc02                	sw	zero,24(sp)
1c00a718:	8326                	mv	t1,s1
1c00a71a:	4841                	li	a6,16
1c00a71c:	b4b5                	j	1c00a188 <pos_libc_prf+0x151e>
1c00a71e:	02e00593          	li	a1,46
1c00a722:	00b50023          	sb	a1,0(a0)
1c00a726:	88d2                	mv	a7,s4
1c00a728:	0505                	addi	a0,a0,1
1c00a72a:	8a46                	mv	s4,a7
1c00a72c:	85aa                	mv	a1,a0
1c00a72e:	8326                	mv	t1,s1
1c00a730:	cc02                	sw	zero,24(sp)
1c00a732:	4881                	li	a7,0
1c00a734:	bc81                	j	1c00a184 <pos_libc_prf+0x151a>
1c00a736:	4a01                	li	s4,0
1c00a738:	483d                	li	a6,15
1c00a73a:	b43d                	j	1c00a168 <pos_libc_prf+0x14fe>
1c00a73c:	00e30513          	addi	a0,t1,14
1c00a740:	4809                	li	a6,2
1c00a742:	b41d                	j	1c00a168 <pos_libc_prf+0x14fe>
1c00a744:	00c30513          	addi	a0,t1,12
1c00a748:	b405                	j	1c00a168 <pos_libc_prf+0x14fe>
1c00a74a:	c0200813          	li	a6,-1022
1c00a74e:	a62ff06f          	j	1c0099b0 <pos_libc_prf+0xd46>
1c00a752:	00330513          	addi	a0,t1,3
1c00a756:	4835                	li	a6,13
1c00a758:	bc01                	j	1c00a168 <pos_libc_prf+0x14fe>
1c00a75a:	00230513          	addi	a0,t1,2
1c00a75e:	4a01                	li	s4,0
1c00a760:	4839                	li	a6,14
1c00a762:	b419                	j	1c00a168 <pos_libc_prf+0x14fe>
1c00a764:	00b30513          	addi	a0,t1,11
1c00a768:	4815                	li	a6,5
1c00a76a:	bafd                	j	1c00a168 <pos_libc_prf+0x14fe>
1c00a76c:	00a30513          	addi	a0,t1,10
1c00a770:	4819                	li	a6,6
1c00a772:	badd                	j	1c00a168 <pos_libc_prf+0x14fe>
1c00a774:	00930513          	addi	a0,t1,9
1c00a778:	481d                	li	a6,7
1c00a77a:	b2fd                	j	1c00a168 <pos_libc_prf+0x14fe>
1c00a77c:	00830513          	addi	a0,t1,8
1c00a780:	4821                	li	a6,8
1c00a782:	b2dd                	j	1c00a168 <pos_libc_prf+0x14fe>
1c00a784:	00730513          	addi	a0,t1,7
1c00a788:	4825                	li	a6,9
1c00a78a:	baf9                	j	1c00a168 <pos_libc_prf+0x14fe>
1c00a78c:	00630513          	addi	a0,t1,6
1c00a790:	4829                	li	a6,10
1c00a792:	bad9                	j	1c00a168 <pos_libc_prf+0x14fe>
1c00a794:	00530513          	addi	a0,t1,5
1c00a798:	482d                	li	a6,11
1c00a79a:	b2f9                	j	1c00a168 <pos_libc_prf+0x14fe>
1c00a79c:	00430513          	addi	a0,t1,4
1c00a7a0:	4831                	li	a6,12
1c00a7a2:	b2d9                	j	1c00a168 <pos_libc_prf+0x14fe>
1c00a7a4:	849a                	mv	s1,t1
1c00a7a6:	852e                	mv	a0,a1
1c00a7a8:	b581                	j	1c00a5e8 <pos_libc_prf+0x197e>
1c00a7aa:	41990933          	sub	s2,s2,s9
1c00a7ae:	8f3fe06f          	j	1c0090a0 <pos_libc_prf+0x436>
1c00a7b2:	00d78513          	addi	a0,a5,13
1c00a7b6:	804ff06f          	j	1c0097ba <pos_libc_prf+0xb50>
1c00a7ba:	00c78513          	addi	a0,a5,12
1c00a7be:	ffdfe06f          	j	1c0097ba <pos_libc_prf+0xb50>
1c00a7c2:	00b78513          	addi	a0,a5,11
1c00a7c6:	ff5fe06f          	j	1c0097ba <pos_libc_prf+0xb50>
1c00a7ca:	00978513          	addi	a0,a5,9
1c00a7ce:	fedfe06f          	j	1c0097ba <pos_libc_prf+0xb50>
1c00a7d2:	00878513          	addi	a0,a5,8
1c00a7d6:	fe5fe06f          	j	1c0097ba <pos_libc_prf+0xb50>
1c00a7da:	00778513          	addi	a0,a5,7
1c00a7de:	fddfe06f          	j	1c0097ba <pos_libc_prf+0xb50>
1c00a7e2:	00678513          	addi	a0,a5,6
1c00a7e6:	fd5fe06f          	j	1c0097ba <pos_libc_prf+0xb50>
1c00a7ea:	00578513          	addi	a0,a5,5
1c00a7ee:	fcdfe06f          	j	1c0097ba <pos_libc_prf+0xb50>
1c00a7f2:	00478513          	addi	a0,a5,4
1c00a7f6:	fc5fe06f          	j	1c0097ba <pos_libc_prf+0xb50>
1c00a7fa:	00378513          	addi	a0,a5,3
1c00a7fe:	fbdfe06f          	j	1c0097ba <pos_libc_prf+0xb50>
1c00a802:	00278513          	addi	a0,a5,2
1c00a806:	fb5fe06f          	j	1c0097ba <pos_libc_prf+0xb50>
1c00a80a:	00178513          	addi	a0,a5,1
1c00a80e:	4c81                	li	s9,0
1c00a810:	fabfe06f          	j	1c0097ba <pos_libc_prf+0xb50>

1c00a814 <pos_init_start>:
1c00a814:	1141                	addi	sp,sp,-16
1c00a816:	c422                	sw	s0,8(sp)
1c00a818:	1c001437          	lui	s0,0x1c001
1c00a81c:	c606                	sw	ra,12(sp)
1c00a81e:	84840413          	addi	s0,s0,-1976 # 1c000848 <ctor_list>
1c00a822:	2445                	jal	1c00aac2 <pos_irq_init>
1c00a824:	984fe0ef          	jal	ra,1c0089a8 <pos_soc_init>
1c00a828:	24f1                	jal	1c00aaf4 <pos_soc_event_init>
1c00a82a:	2a6d                	jal	1c00a9e4 <pos_allocs_init>
1c00a82c:	284d                	jal	1c00a8de <pos_sched_init>
1c00a82e:	405c                	lw	a5,4(s0)
1c00a830:	c791                	beqz	a5,1c00a83c <pos_init_start+0x28>
1c00a832:	0421                	addi	s0,s0,8
1c00a834:	9782                	jalr	a5
1c00a836:	0044278b          	p.lw	a5,4(s0!)
1c00a83a:	ffed                	bnez	a5,1c00a834 <pos_init_start+0x20>
1c00a83c:	b96fe0ef          	jal	ra,1c008bd2 <pos_io_start>
1c00a840:	300467f3          	csrrsi	a5,mstatus,8
1c00a844:	40b2                	lw	ra,12(sp)
1c00a846:	4422                	lw	s0,8(sp)
1c00a848:	0141                	addi	sp,sp,16
1c00a84a:	8082                	ret

1c00a84c <pos_init_stop>:
1c00a84c:	1141                	addi	sp,sp,-16
1c00a84e:	c422                	sw	s0,8(sp)
1c00a850:	1c001437          	lui	s0,0x1c001
1c00a854:	c606                	sw	ra,12(sp)
1c00a856:	86040413          	addi	s0,s0,-1952 # 1c000860 <dtor_list>
1c00a85a:	bbcfe0ef          	jal	ra,1c008c16 <pos_io_stop>
1c00a85e:	405c                	lw	a5,4(s0)
1c00a860:	c791                	beqz	a5,1c00a86c <pos_init_stop+0x20>
1c00a862:	0421                	addi	s0,s0,8
1c00a864:	9782                	jalr	a5
1c00a866:	0044278b          	p.lw	a5,4(s0!)
1c00a86a:	ffed                	bnez	a5,1c00a864 <pos_init_stop+0x18>
1c00a86c:	40b2                	lw	ra,12(sp)
1c00a86e:	4422                	lw	s0,8(sp)
1c00a870:	0141                	addi	sp,sp,16
1c00a872:	8082                	ret

1c00a874 <pos_cbsys_add>:
1c00a874:	00259793          	slli	a5,a1,0x2
1c00a878:	1c0015b7          	lui	a1,0x1c001
1c00a87c:	20058593          	addi	a1,a1,512 # 1c001200 <stack>
1c00a880:	95be                	add	a1,a1,a5
1c00a882:	419c                	lw	a5,0(a1)
1c00a884:	c110                	sw	a2,0(a0)
1c00a886:	c154                	sw	a3,4(a0)
1c00a888:	c51c                	sw	a5,8(a0)
1c00a88a:	c188                	sw	a0,0(a1)
1c00a88c:	8082                	ret

1c00a88e <pi_open_from_conf>:
1c00a88e:	c14c                	sw	a1,4(a0)
1c00a890:	8082                	ret

1c00a892 <pos_task_handle_blocking>:
1c00a892:	4785                	li	a5,1
1c00a894:	00f50a23          	sb	a5,20(a0)
1c00a898:	8082                	ret

1c00a89a <pos_task_handle>:
1c00a89a:	1141                	addi	sp,sp,-16
1c00a89c:	c422                	sw	s0,8(sp)
1c00a89e:	01c00413          	li	s0,28
1c00a8a2:	401c                	lw	a5,0(s0)
1c00a8a4:	c606                	sw	ra,12(sp)
1c00a8a6:	c385                	beqz	a5,1c00a8c6 <pos_task_handle+0x2c>
1c00a8a8:	4394                	lw	a3,0(a5)
1c00a8aa:	43d8                	lw	a4,4(a5)
1c00a8ac:	c014                	sw	a3,0(s0)
1c00a8ae:	4788                	lw	a0,8(a5)
1c00a8b0:	300467f3          	csrrsi	a5,mstatus,8
1c00a8b4:	9702                	jalr	a4
1c00a8b6:	300477f3          	csrrci	a5,mstatus,8
1c00a8ba:	401c                	lw	a5,0(s0)
1c00a8bc:	f7f5                	bnez	a5,1c00a8a8 <pos_task_handle+0xe>
1c00a8be:	40b2                	lw	ra,12(sp)
1c00a8c0:	4422                	lw	s0,8(sp)
1c00a8c2:	0141                	addi	sp,sp,16
1c00a8c4:	8082                	ret
1c00a8c6:	10500073          	wfi
1c00a8ca:	300467f3          	csrrsi	a5,mstatus,8
1c00a8ce:	300477f3          	csrrci	a5,mstatus,8
1c00a8d2:	401c                	lw	a5,0(s0)
1c00a8d4:	fbf1                	bnez	a5,1c00a8a8 <pos_task_handle+0xe>
1c00a8d6:	40b2                	lw	ra,12(sp)
1c00a8d8:	4422                	lw	s0,8(sp)
1c00a8da:	0141                	addi	sp,sp,16
1c00a8dc:	8082                	ret

1c00a8de <pos_sched_init>:
1c00a8de:	00002e23          	sw	zero,28(zero) # 1c <pos_sched_first>
1c00a8e2:	8082                	ret

1c00a8e4 <pos_alloc_init>:
1c00a8e4:	00758793          	addi	a5,a1,7
1c00a8e8:	c407b7b3          	p.bclr	a5,a5,2,0
1c00a8ec:	40b785b3          	sub	a1,a5,a1
1c00a8f0:	c11c                	sw	a5,0(a0)
1c00a8f2:	8e0d                	sub	a2,a2,a1
1c00a8f4:	00c05763          	blez	a2,1c00a902 <pos_alloc_init+0x1e>
1c00a8f8:	c4063633          	p.bclr	a2,a2,2,0
1c00a8fc:	c390                	sw	a2,0(a5)
1c00a8fe:	0007a223          	sw	zero,4(a5)
1c00a902:	8082                	ret

1c00a904 <pos_alloc>:
1c00a904:	4110                	lw	a2,0(a0)
1c00a906:	059d                	addi	a1,a1,7
1c00a908:	c405b5b3          	p.bclr	a1,a1,2,0
1c00a90c:	ca31                	beqz	a2,1c00a960 <pos_alloc+0x5c>
1c00a90e:	4218                	lw	a4,0(a2)
1c00a910:	425c                	lw	a5,4(a2)
1c00a912:	02b75963          	ble	a1,a4,1c00a944 <pos_alloc+0x40>
1c00a916:	cb81                	beqz	a5,1c00a926 <pos_alloc+0x22>
1c00a918:	4398                	lw	a4,0(a5)
1c00a91a:	43d4                	lw	a3,4(a5)
1c00a91c:	00b75763          	ble	a1,a4,1c00a92a <pos_alloc+0x26>
1c00a920:	863e                	mv	a2,a5
1c00a922:	87b6                	mv	a5,a3
1c00a924:	fbf5                	bnez	a5,1c00a918 <pos_alloc+0x14>
1c00a926:	853e                	mv	a0,a5
1c00a928:	8082                	ret
1c00a92a:	00b70a63          	beq	a4,a1,1c00a93e <pos_alloc+0x3a>
1c00a92e:	00b78533          	add	a0,a5,a1
1c00a932:	8f0d                	sub	a4,a4,a1
1c00a934:	c118                	sw	a4,0(a0)
1c00a936:	c154                	sw	a3,4(a0)
1c00a938:	c248                	sw	a0,4(a2)
1c00a93a:	853e                	mv	a0,a5
1c00a93c:	8082                	ret
1c00a93e:	c254                	sw	a3,4(a2)
1c00a940:	853e                	mv	a0,a5
1c00a942:	8082                	ret
1c00a944:	00e58b63          	beq	a1,a4,1c00a95a <pos_alloc+0x56>
1c00a948:	00b606b3          	add	a3,a2,a1
1c00a94c:	8f0d                	sub	a4,a4,a1
1c00a94e:	c2dc                	sw	a5,4(a3)
1c00a950:	c298                	sw	a4,0(a3)
1c00a952:	87b2                	mv	a5,a2
1c00a954:	c114                	sw	a3,0(a0)
1c00a956:	853e                	mv	a0,a5
1c00a958:	8082                	ret
1c00a95a:	c11c                	sw	a5,0(a0)
1c00a95c:	87b2                	mv	a5,a2
1c00a95e:	b7e1                	j	1c00a926 <pos_alloc+0x22>
1c00a960:	4781                	li	a5,0
1c00a962:	b7d1                	j	1c00a926 <pos_alloc+0x22>

1c00a964 <pos_free>:
1c00a964:	4118                	lw	a4,0(a0)
1c00a966:	061d                	addi	a2,a2,7
1c00a968:	c4063633          	p.bclr	a2,a2,2,0
1c00a96c:	c729                	beqz	a4,1c00a9b6 <pos_free+0x52>
1c00a96e:	00b76663          	bltu	a4,a1,1c00a97a <pos_free+0x16>
1c00a972:	a0a1                	j	1c00a9ba <pos_free+0x56>
1c00a974:	00b7f563          	bleu	a1,a5,1c00a97e <pos_free+0x1a>
1c00a978:	873e                	mv	a4,a5
1c00a97a:	435c                	lw	a5,4(a4)
1c00a97c:	ffe5                	bnez	a5,1c00a974 <pos_free+0x10>
1c00a97e:	00c586b3          	add	a3,a1,a2
1c00a982:	02d78463          	beq	a5,a3,1c00a9aa <pos_free+0x46>
1c00a986:	c190                	sw	a2,0(a1)
1c00a988:	c1dc                	sw	a5,4(a1)
1c00a98a:	cf11                	beqz	a4,1c00a9a6 <pos_free+0x42>
1c00a98c:	431c                	lw	a5,0(a4)
1c00a98e:	00f706b3          	add	a3,a4,a5
1c00a992:	00d58463          	beq	a1,a3,1c00a99a <pos_free+0x36>
1c00a996:	c34c                	sw	a1,4(a4)
1c00a998:	8082                	ret
1c00a99a:	4194                	lw	a3,0(a1)
1c00a99c:	41d0                	lw	a2,4(a1)
1c00a99e:	97b6                	add	a5,a5,a3
1c00a9a0:	c31c                	sw	a5,0(a4)
1c00a9a2:	c350                	sw	a2,4(a4)
1c00a9a4:	8082                	ret
1c00a9a6:	c10c                	sw	a1,0(a0)
1c00a9a8:	8082                	ret
1c00a9aa:	4394                	lw	a3,0(a5)
1c00a9ac:	43dc                	lw	a5,4(a5)
1c00a9ae:	9636                	add	a2,a2,a3
1c00a9b0:	c190                	sw	a2,0(a1)
1c00a9b2:	c1dc                	sw	a5,4(a1)
1c00a9b4:	bfd9                	j	1c00a98a <pos_free+0x26>
1c00a9b6:	4781                	li	a5,0
1c00a9b8:	b7d9                	j	1c00a97e <pos_free+0x1a>
1c00a9ba:	87ba                	mv	a5,a4
1c00a9bc:	4701                	li	a4,0
1c00a9be:	b7c1                	j	1c00a97e <pos_free+0x1a>

1c00a9c0 <pos_alloc_init_l1>:
1c00a9c0:	1c0017b7          	lui	a5,0x1c001
1c00a9c4:	24c7a703          	lw	a4,588(a5) # 1c00124c <pos_alloc_l1>
1c00a9c8:	100007b7          	lui	a5,0x10000
1c00a9cc:	01651593          	slli	a1,a0,0x16
1c00a9d0:	00040637          	lui	a2,0x40
1c00a9d4:	050a                	slli	a0,a0,0x2
1c00a9d6:	02878793          	addi	a5,a5,40 # 10000028 <__l1_end>
1c00a9da:	fd860613          	addi	a2,a2,-40 # 3ffd8 <__l1_heap_size>
1c00a9de:	95be                	add	a1,a1,a5
1c00a9e0:	953a                	add	a0,a0,a4
1c00a9e2:	b709                	j	1c00a8e4 <pos_alloc_init>

1c00a9e4 <pos_allocs_init>:
1c00a9e4:	1141                	addi	sp,sp,-16
1c00a9e6:	1c0015b7          	lui	a1,0x1c001
1c00a9ea:	c606                	sw	ra,12(sp)
1c00a9ec:	c422                	sw	s0,8(sp)
1c00a9ee:	27858793          	addi	a5,a1,632 # 1c001278 <__l2_priv0_end>
1c00a9f2:	1c008637          	lui	a2,0x1c008
1c00a9f6:	04c7c363          	blt	a5,a2,1c00aa3c <pos_allocs_init+0x58>
1c00a9fa:	4581                	li	a1,0
1c00a9fc:	4601                	li	a2,0
1c00a9fe:	1c001437          	lui	s0,0x1c001
1c00aa02:	25040513          	addi	a0,s0,592 # 1c001250 <pos_alloc_l2>
1c00aa06:	3df9                	jal	1c00a8e4 <pos_alloc_init>
1c00aa08:	1c0105b7          	lui	a1,0x1c010
1c00aa0c:	2ac58793          	addi	a5,a1,684 # 1c0102ac <__l2_shared_end>
1c00aa10:	1c200637          	lui	a2,0x1c200
1c00aa14:	1c001537          	lui	a0,0x1c001
1c00aa18:	8e1d                	sub	a2,a2,a5
1c00aa1a:	2ac58593          	addi	a1,a1,684
1c00aa1e:	25450513          	addi	a0,a0,596 # 1c001254 <pos_alloc_l2+0x4>
1c00aa22:	35c9                	jal	1c00a8e4 <pos_alloc_init>
1c00aa24:	25040513          	addi	a0,s0,592
1c00aa28:	4591                	li	a1,4
1c00aa2a:	3de9                	jal	1c00a904 <pos_alloc>
1c00aa2c:	40b2                	lw	ra,12(sp)
1c00aa2e:	4422                	lw	s0,8(sp)
1c00aa30:	1c0017b7          	lui	a5,0x1c001
1c00aa34:	24a7a623          	sw	a0,588(a5) # 1c00124c <pos_alloc_l1>
1c00aa38:	0141                	addi	sp,sp,16
1c00aa3a:	8082                	ret
1c00aa3c:	8e1d                	sub	a2,a2,a5
1c00aa3e:	27858593          	addi	a1,a1,632
1c00aa42:	bf75                	j	1c00a9fe <pos_allocs_init+0x1a>

1c00aa44 <pi_cl_l1_malloc>:
1c00aa44:	4781                	li	a5,0
1c00aa46:	c509                	beqz	a0,1c00aa50 <pi_cl_l1_malloc+0xc>
1c00aa48:	451c                	lw	a5,8(a0)
1c00aa4a:	01c7c783          	lbu	a5,28(a5)
1c00aa4e:	078a                	slli	a5,a5,0x2
1c00aa50:	1c001737          	lui	a4,0x1c001
1c00aa54:	24c72503          	lw	a0,588(a4) # 1c00124c <pos_alloc_l1>
1c00aa58:	953e                	add	a0,a0,a5
1c00aa5a:	b56d                	j	1c00a904 <pos_alloc>

1c00aa5c <pi_cl_l1_free>:
1c00aa5c:	4781                	li	a5,0
1c00aa5e:	c509                	beqz	a0,1c00aa68 <pi_cl_l1_free+0xc>
1c00aa60:	451c                	lw	a5,8(a0)
1c00aa62:	01c7c783          	lbu	a5,28(a5)
1c00aa66:	078a                	slli	a5,a5,0x2
1c00aa68:	1c001737          	lui	a4,0x1c001
1c00aa6c:	24c72503          	lw	a0,588(a4) # 1c00124c <pos_alloc_l1>
1c00aa70:	953e                	add	a0,a0,a5
1c00aa72:	bdcd                	j	1c00a964 <pos_free>

1c00aa74 <pos_irq_set_handler>:
1c00aa74:	f14027f3          	csrr	a5,mhartid
1c00aa78:	477d                	li	a4,31
1c00aa7a:	ca5797b3          	p.extractu	a5,a5,5,5
1c00aa7e:	02e78d63          	beq	a5,a4,1c00aab8 <pos_irq_set_handler+0x44>
1c00aa82:	002007b7          	lui	a5,0x200
1c00aa86:	43b8                	lw	a4,64(a5)
1c00aa88:	050a                	slli	a0,a0,0x2
1c00aa8a:	8d89                	sub	a1,a1,a0
1c00aa8c:	8d99                	sub	a1,a1,a4
1c00aa8e:	c14586b3          	p.extract	a3,a1,0,20
1c00aa92:	06f00793          	li	a5,111
1c00aa96:	c1f6a7b3          	p.insert	a5,a3,0,31
1c00aa9a:	d21586b3          	p.extract	a3,a1,9,1
1c00aa9e:	d356a7b3          	p.insert	a5,a3,9,21
1c00aaa2:	c0b586b3          	p.extract	a3,a1,0,11
1c00aaa6:	c146a7b3          	p.insert	a5,a3,0,20
1c00aaaa:	cec585b3          	p.extract	a1,a1,7,12
1c00aaae:	cec5a7b3          	p.insert	a5,a1,7,12
1c00aab2:	00f56723          	p.sw	a5,a4(a0)
1c00aab6:	8082                	ret
1c00aab8:	30502773          	csrr	a4,mtvec
1c00aabc:	c0073733          	p.bclr	a4,a4,0,0
1c00aac0:	b7e1                	j	1c00aa88 <pos_irq_set_handler+0x14>

1c00aac2 <pos_irq_init>:
1c00aac2:	f1402773          	csrr	a4,mhartid
1c00aac6:	1a10a7b7          	lui	a5,0x1a10a
1c00aaca:	56fd                	li	a3,-1
1c00aacc:	80d7a423          	sw	a3,-2040(a5) # 1a109808 <_emram_start+0x99097e8>
1c00aad0:	ca571733          	p.extractu	a4,a4,5,5
1c00aad4:	1c0087b7          	lui	a5,0x1c008
1c00aad8:	46fd                	li	a3,31
1c00aada:	00078793          	mv	a5,a5
1c00aade:	00d70663          	beq	a4,a3,1c00aaea <pos_irq_init+0x28>
1c00aae2:	00200737          	lui	a4,0x200
1c00aae6:	c33c                	sw	a5,64(a4)
1c00aae8:	8082                	ret
1c00aaea:	c007c7b3          	p.bset	a5,a5,0,0
1c00aaee:	30579073          	csrw	mtvec,a5
1c00aaf2:	8082                	ret

1c00aaf4 <pos_soc_event_init>:
1c00aaf4:	1a1067b7          	lui	a5,0x1a106
1c00aaf8:	1141                	addi	sp,sp,-16
1c00aafa:	c606                	sw	ra,12(sp)
1c00aafc:	577d                	li	a4,-1
1c00aafe:	00478693          	addi	a3,a5,4 # 1a106004 <_emram_start+0x9905fe4>
1c00ab02:	c298                	sw	a4,0(a3)
1c00ab04:	00878693          	addi	a3,a5,8
1c00ab08:	c298                	sw	a4,0(a3)
1c00ab0a:	00c78693          	addi	a3,a5,12
1c00ab0e:	c298                	sw	a4,0(a3)
1c00ab10:	01078693          	addi	a3,a5,16
1c00ab14:	c298                	sw	a4,0(a3)
1c00ab16:	01478693          	addi	a3,a5,20
1c00ab1a:	c298                	sw	a4,0(a3)
1c00ab1c:	01878693          	addi	a3,a5,24
1c00ab20:	c298                	sw	a4,0(a3)
1c00ab22:	01c78693          	addi	a3,a5,28
1c00ab26:	c298                	sw	a4,0(a3)
1c00ab28:	02078793          	addi	a5,a5,32
1c00ab2c:	1c00b5b7          	lui	a1,0x1c00b
1c00ab30:	c398                	sw	a4,0(a5)
1c00ab32:	4aa58593          	addi	a1,a1,1194 # 1c00b4aa <pos_soc_event_handler_asm>
1c00ab36:	4569                	li	a0,26
1c00ab38:	3f35                	jal	1c00aa74 <pos_irq_set_handler>
1c00ab3a:	40b2                	lw	ra,12(sp)
1c00ab3c:	1a10a7b7          	lui	a5,0x1a10a
1c00ab40:	04000737          	lui	a4,0x4000
1c00ab44:	80e7a223          	sw	a4,-2044(a5) # 1a109804 <_emram_start+0x99097e4>
1c00ab48:	0141                	addi	sp,sp,16
1c00ab4a:	8082                	ret

1c00ab4c <pos_time_poweroff>:
1c00ab4c:	1a10b7b7          	lui	a5,0x1a10b
1c00ab50:	0791                	addi	a5,a5,4
1c00ab52:	0087a783          	lw	a5,8(a5) # 1a10b008 <_emram_start+0x990afe8>
1c00ab56:	1c001737          	lui	a4,0x1c001
1c00ab5a:	20f72c23          	sw	a5,536(a4) # 1c001218 <pos_time_timer_count>
1c00ab5e:	4501                	li	a0,0
1c00ab60:	8082                	ret

1c00ab62 <pos_time_poweron>:
1c00ab62:	1c0017b7          	lui	a5,0x1c001
1c00ab66:	2187a703          	lw	a4,536(a5) # 1c001218 <pos_time_timer_count>
1c00ab6a:	1a10b7b7          	lui	a5,0x1a10b
1c00ab6e:	0791                	addi	a5,a5,4
1c00ab70:	00e7a423          	sw	a4,8(a5) # 1a10b008 <_emram_start+0x990afe8>
1c00ab74:	4501                	li	a0,0
1c00ab76:	8082                	ret

1c00ab78 <pos_time_timer_handler>:
1c00ab78:	1c0018b7          	lui	a7,0x1c001
1c00ab7c:	21888893          	addi	a7,a7,536 # 1c001218 <pos_time_timer_count>
1c00ab80:	0048a783          	lw	a5,4(a7)
1c00ab84:	1a10b637          	lui	a2,0x1a10b
1c00ab88:	0611                	addi	a2,a2,4
1c00ab8a:	00862603          	lw	a2,8(a2) # 1a10b008 <_emram_start+0x990afe8>
1c00ab8e:	cba9                	beqz	a5,1c00abe0 <pos_time_timer_handler+0x68>
1c00ab90:	5fd8                	lw	a4,60(a5)
1c00ab92:	800005b7          	lui	a1,0x80000
1c00ab96:	40e60733          	sub	a4,a2,a4
1c00ab9a:	ffe5c593          	xori	a1,a1,-2
1c00ab9e:	0ae5e763          	bltu	a1,a4,1c00ac4c <pos_time_timer_handler+0xd4>
1c00aba2:	01c02803          	lw	a6,28(zero) # 1c <pos_sched_first>
1c00aba6:	02002503          	lw	a0,32(zero) # 20 <pos_sched_last>
1c00abaa:	4398                	lw	a4,0(a5)
1c00abac:	0007a023          	sw	zero,0(a5)
1c00abb0:	4301                	li	t1,0
1c00abb2:	02080063          	beqz	a6,1c00abd2 <pos_time_timer_handler+0x5a>
1c00abb6:	c11c                	sw	a5,0(a0)
1c00abb8:	c305                	beqz	a4,1c00abd8 <pos_time_timer_handler+0x60>
1c00abba:	5f54                	lw	a3,60(a4)
1c00abbc:	853e                	mv	a0,a5
1c00abbe:	40d606b3          	sub	a3,a2,a3
1c00abc2:	04d5e763          	bltu	a1,a3,1c00ac10 <pos_time_timer_handler+0x98>
1c00abc6:	87ba                	mv	a5,a4
1c00abc8:	4398                	lw	a4,0(a5)
1c00abca:	0007a023          	sw	zero,0(a5)
1c00abce:	fe0814e3          	bnez	a6,1c00abb6 <pos_time_timer_handler+0x3e>
1c00abd2:	883e                	mv	a6,a5
1c00abd4:	4305                	li	t1,1
1c00abd6:	f375                	bnez	a4,1c00abba <pos_time_timer_handler+0x42>
1c00abd8:	06031c63          	bnez	t1,1c00ac50 <pos_time_timer_handler+0xd8>
1c00abdc:	02f02023          	sw	a5,32(zero) # 20 <pos_sched_last>
1c00abe0:	1a10b7b7          	lui	a5,0x1a10b
1c00abe4:	08100713          	li	a4,129
1c00abe8:	0791                	addi	a5,a5,4
1c00abea:	0008a223          	sw	zero,4(a7)
1c00abee:	00e7a023          	sw	a4,0(a5) # 1a10b000 <_emram_start+0x990afe0>
1c00abf2:	f14027f3          	csrr	a5,mhartid
1c00abf6:	477d                	li	a4,31
1c00abf8:	ca5797b3          	p.extractu	a5,a5,5,5
1c00abfc:	04e78063          	beq	a5,a4,1c00ac3c <pos_time_timer_handler+0xc4>
1c00ac00:	6785                	lui	a5,0x1
1c00ac02:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3bc>
1c00ac06:	00204737          	lui	a4,0x204
1c00ac0a:	02f72423          	sw	a5,40(a4) # 204028 <__l1_heap_size+0x1c4050>
1c00ac0e:	8082                	ret
1c00ac10:	04031363          	bnez	t1,1c00ac56 <pos_time_timer_handler+0xde>
1c00ac14:	02f02023          	sw	a5,32(zero) # 20 <pos_sched_last>
1c00ac18:	1a10b7b7          	lui	a5,0x1a10b
1c00ac1c:	0791                	addi	a5,a5,4
1c00ac1e:	00e8a223          	sw	a4,4(a7)
1c00ac22:	0087a683          	lw	a3,8(a5) # 1a10b008 <_emram_start+0x990afe8>
1c00ac26:	5f58                	lw	a4,60(a4)
1c00ac28:	40c70633          	sub	a2,a4,a2
1c00ac2c:	9636                	add	a2,a2,a3
1c00ac2e:	00c7a823          	sw	a2,16(a5)
1c00ac32:	08500713          	li	a4,133
1c00ac36:	00e7a023          	sw	a4,0(a5)
1c00ac3a:	8082                	ret
1c00ac3c:	6785                	lui	a5,0x1
1c00ac3e:	1a10a737          	lui	a4,0x1a10a
1c00ac42:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3bc>
1c00ac46:	80f72a23          	sw	a5,-2028(a4) # 1a109814 <_emram_start+0x99097f4>
1c00ac4a:	8082                	ret
1c00ac4c:	873e                	mv	a4,a5
1c00ac4e:	b7e9                	j	1c00ac18 <pos_time_timer_handler+0xa0>
1c00ac50:	01002e23          	sw	a6,28(zero) # 1c <pos_sched_first>
1c00ac54:	b761                	j	1c00abdc <pos_time_timer_handler+0x64>
1c00ac56:	01002e23          	sw	a6,28(zero) # 1c <pos_sched_first>
1c00ac5a:	bf6d                	j	1c00ac14 <pos_time_timer_handler+0x9c>

1c00ac5c <pos_time_init>:
1c00ac5c:	1141                	addi	sp,sp,-16
1c00ac5e:	c422                	sw	s0,8(sp)
1c00ac60:	1a10b7b7          	lui	a5,0x1a10b
1c00ac64:	1c001437          	lui	s0,0x1c001
1c00ac68:	c606                	sw	ra,12(sp)
1c00ac6a:	21840413          	addi	s0,s0,536 # 1c001218 <pos_time_timer_count>
1c00ac6e:	08300713          	li	a4,131
1c00ac72:	0791                	addi	a5,a5,4
1c00ac74:	00042223          	sw	zero,4(s0)
1c00ac78:	00e7a023          	sw	a4,0(a5) # 1a10b000 <_emram_start+0x990afe0>
1c00ac7c:	1c00b5b7          	lui	a1,0x1c00b
1c00ac80:	48658593          	addi	a1,a1,1158 # 1c00b486 <pos_time_timer_handler_asm>
1c00ac84:	452d                	li	a0,11
1c00ac86:	33fd                	jal	1c00aa74 <pos_irq_set_handler>
1c00ac88:	6785                	lui	a5,0x1
1c00ac8a:	1a10a737          	lui	a4,0x1a10a
1c00ac8e:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3bc>
1c00ac92:	1c00b637          	lui	a2,0x1c00b
1c00ac96:	00840513          	addi	a0,s0,8
1c00ac9a:	4681                	li	a3,0
1c00ac9c:	b4c60613          	addi	a2,a2,-1204 # 1c00ab4c <pos_time_poweroff>
1c00aca0:	4589                	li	a1,2
1c00aca2:	80f72223          	sw	a5,-2044(a4) # 1a109804 <_emram_start+0x99097e4>
1c00aca6:	36f9                	jal	1c00a874 <pos_cbsys_add>
1c00aca8:	01840513          	addi	a0,s0,24
1c00acac:	4422                	lw	s0,8(sp)
1c00acae:	40b2                	lw	ra,12(sp)
1c00acb0:	1c00b637          	lui	a2,0x1c00b
1c00acb4:	4681                	li	a3,0
1c00acb6:	b6260613          	addi	a2,a2,-1182 # 1c00ab62 <pos_time_poweron>
1c00acba:	458d                	li	a1,3
1c00acbc:	0141                	addi	sp,sp,16
1c00acbe:	be5d                	j	1c00a874 <pos_cbsys_add>

1c00acc0 <pi_uart_conf_init>:
1c00acc0:	67f1                	lui	a5,0x1c
1c00acc2:	20078793          	addi	a5,a5,512 # 1c200 <pos_soc_event_callback+0x1bdbc>
1c00acc6:	c11c                	sw	a5,0(a0)
1c00acc8:	4785                	li	a5,1
1c00acca:	00f51223          	sh	a5,4(a0)
1c00acce:	10100793          	li	a5,257
1c00acd2:	00f513a3          	sh	a5,7(a0)
1c00acd6:	000504a3          	sb	zero,9(a0)
1c00acda:	8082                	ret

1c00acdc <pi_uart_open>:
1c00acdc:	7179                	addi	sp,sp,-48
1c00acde:	d606                	sw	ra,44(sp)
1c00ace0:	d422                	sw	s0,40(sp)
1c00ace2:	d226                	sw	s1,36(sp)
1c00ace4:	d04a                	sw	s2,32(sp)
1c00ace6:	ce4e                	sw	s3,28(sp)
1c00ace8:	cc52                	sw	s4,24(sp)
1c00acea:	ca56                	sw	s5,20(sp)
1c00acec:	c85a                	sw	s6,16(sp)
1c00acee:	c65e                	sw	s7,12(sp)
1c00acf0:	c462                	sw	s8,8(sp)
1c00acf2:	c266                	sw	s9,4(sp)
1c00acf4:	300479f3          	csrrci	s3,mstatus,8
1c00acf8:	4154                	lw	a3,4(a0)
1c00acfa:	1c0107b7          	lui	a5,0x1c010
1c00acfe:	0096c483          	lbu	s1,9(a3)
1c00ad02:	25078913          	addi	s2,a5,592 # 1c010250 <pos_uart>
1c00ad06:	00349a93          	slli	s5,s1,0x3
1c00ad0a:	409a8b33          	sub	s6,s5,s1
1c00ad0e:	0b0e                	slli	s6,s6,0x3
1c00ad10:	01690a33          	add	s4,s2,s6
1c00ad14:	000a2703          	lw	a4,0(s4)
1c00ad18:	00249413          	slli	s0,s1,0x2
1c00ad1c:	0006ac03          	lw	s8,0(a3)
1c00ad20:	01452423          	sw	s4,8(a0)
1c00ad24:	00140b93          	addi	s7,s0,1
1c00ad28:	e315                	bnez	a4,1c00ad4c <pi_uart_open+0x70>
1c00ad2a:	00149c93          	slli	s9,s1,0x1
1c00ad2e:	024b0513          	addi	a0,s6,36
1c00ad32:	8622                	mv	a2,s0
1c00ad34:	85e6                	mv	a1,s9
1c00ad36:	954a                	add	a0,a0,s2
1c00ad38:	240d                	jal	1c00af5a <pos_udma_create_channel>
1c00ad3a:	010b0513          	addi	a0,s6,16
1c00ad3e:	865e                	mv	a2,s7
1c00ad40:	001c8593          	addi	a1,s9,1
1c00ad44:	954a                	add	a0,a0,s2
1c00ad46:	2c11                	jal	1c00af5a <pos_udma_create_channel>
1c00ad48:	000a2703          	lw	a4,0(s4)
1c00ad4c:	409a87b3          	sub	a5,s5,s1
1c00ad50:	078e                	slli	a5,a5,0x3
1c00ad52:	97ca                	add	a5,a5,s2
1c00ad54:	0705                	addi	a4,a4,1
1c00ad56:	c398                	sw	a4,0(a5)
1c00ad58:	c3c0                	sw	s0,4(a5)
1c00ad5a:	0187a423          	sw	s8,8(a5)
1c00ad5e:	1a102737          	lui	a4,0x1a102
1c00ad62:	4314                	lw	a3,0(a4)
1c00ad64:	4605                	li	a2,1
1c00ad66:	1a1065b7          	lui	a1,0x1a106
1c00ad6a:	009614b3          	sll	s1,a2,s1
1c00ad6e:	40545793          	srai	a5,s0,0x5
1c00ad72:	00458813          	addi	a6,a1,4 # 1a106004 <_emram_start+0x9905fe4>
1c00ad76:	8cd5                	or	s1,s1,a3
1c00ad78:	078a                	slli	a5,a5,0x2
1c00ad7a:	0a97222b          	p.sw	s1,164(a4!) # 1a1020a4 <_emram_start+0x9902084>
1c00ad7e:	010788b3          	add	a7,a5,a6
1c00ad82:	0008a503          	lw	a0,0(a7)
1c00ad86:	00861433          	sll	s0,a2,s0
1c00ad8a:	fff44413          	not	s0,s0
1c00ad8e:	405bd693          	srai	a3,s7,0x5
1c00ad92:	8d61                	and	a0,a0,s0
1c00ad94:	068a                	slli	a3,a3,0x2
1c00ad96:	00a8a023          	sw	a0,0(a7)
1c00ad9a:	96c2                	add	a3,a3,a6
1c00ad9c:	4288                	lw	a0,0(a3)
1c00ad9e:	01761633          	sll	a2,a2,s7
1c00ada2:	fff64613          	not	a2,a2
1c00ada6:	8e69                	and	a2,a2,a0
1c00ada8:	04458593          	addi	a1,a1,68
1c00adac:	c290                	sw	a2,0(a3)
1c00adae:	97ae                	add	a5,a5,a1
1c00adb0:	4394                	lw	a3,0(a5)
1c00adb2:	8c75                	and	s0,s0,a3
1c00adb4:	c380                	sw	s0,0(a5)
1c00adb6:	008a2683          	lw	a3,8(s4)
1c00adba:	00802603          	lw	a2,8(zero) # 8 <pos_cluster_pool>
1c00adbe:	0016d793          	srli	a5,a3,0x1
1c00adc2:	97b2                	add	a5,a5,a2
1c00adc4:	02d7d7b3          	divu	a5,a5,a3
1c00adc8:	004a2683          	lw	a3,4(s4)
1c00adcc:	17fd                	addi	a5,a5,-1
1c00adce:	07c2                	slli	a5,a5,0x10
1c00add0:	3067e793          	ori	a5,a5,774
1c00add4:	069e                	slli	a3,a3,0x7
1c00add6:	00f766a3          	p.sw	a5,a3(a4)
1c00adda:	30099073          	csrw	mstatus,s3
1c00adde:	50b2                	lw	ra,44(sp)
1c00ade0:	5422                	lw	s0,40(sp)
1c00ade2:	5492                	lw	s1,36(sp)
1c00ade4:	5902                	lw	s2,32(sp)
1c00ade6:	49f2                	lw	s3,28(sp)
1c00ade8:	4a62                	lw	s4,24(sp)
1c00adea:	4ad2                	lw	s5,20(sp)
1c00adec:	4b42                	lw	s6,16(sp)
1c00adee:	4bb2                	lw	s7,12(sp)
1c00adf0:	4c22                	lw	s8,8(sp)
1c00adf2:	4c92                	lw	s9,4(sp)
1c00adf4:	4501                	li	a0,0
1c00adf6:	6145                	addi	sp,sp,48
1c00adf8:	8082                	ret

1c00adfa <pi_uart_close>:
1c00adfa:	30047e73          	csrrci	t3,mstatus,8
1c00adfe:	00852303          	lw	t1,8(a0)
1c00ae02:	1a1026b7          	lui	a3,0x1a102
1c00ae06:	00432783          	lw	a5,4(t1)
1c00ae0a:	00032603          	lw	a2,0(t1)
1c00ae0e:	079e                	slli	a5,a5,0x7
1c00ae10:	09068693          	addi	a3,a3,144 # 1a102090 <_emram_start+0x9902070>
1c00ae14:	00d78733          	add	a4,a5,a3
1c00ae18:	167d                	addi	a2,a2,-1
1c00ae1a:	00c32023          	sw	a2,0(t1)
1c00ae1e:	0721                	addi	a4,a4,8
1c00ae20:	4318                	lw	a4,0(a4)
1c00ae22:	8b41                	andi	a4,a4,16
1c00ae24:	cf01                	beqz	a4,1c00ae3c <pi_uart_close+0x42>
1c00ae26:	10500073          	wfi
1c00ae2a:	00432783          	lw	a5,4(t1)
1c00ae2e:	079e                	slli	a5,a5,0x7
1c00ae30:	00d78733          	add	a4,a5,a3
1c00ae34:	0721                	addi	a4,a4,8
1c00ae36:	4318                	lw	a4,0(a4)
1c00ae38:	8b41                	andi	a4,a4,16
1c00ae3a:	f775                	bnez	a4,1c00ae26 <pi_uart_close+0x2c>
1c00ae3c:	1a102737          	lui	a4,0x1a102
1c00ae40:	0a070713          	addi	a4,a4,160 # 1a1020a0 <_emram_start+0x9902080>
1c00ae44:	97ba                	add	a5,a5,a4
1c00ae46:	4398                	lw	a4,0(a5)
1c00ae48:	fc173733          	p.bclr	a4,a4,30,1
1c00ae4c:	ff6d                	bnez	a4,1c00ae46 <pi_uart_close+0x4c>
1c00ae4e:	f14026f3          	csrr	a3,mhartid
1c00ae52:	1a10a8b7          	lui	a7,0x1a10a
1c00ae56:	80488593          	addi	a1,a7,-2044 # 1a109804 <_emram_start+0x99097e4>
1c00ae5a:	80888613          	addi	a2,a7,-2040
1c00ae5e:	03200713          	li	a4,50
1c00ae62:	ca5696b3          	p.extractu	a3,a3,5,5
1c00ae66:	457d                	li	a0,31
1c00ae68:	6791                	lui	a5,0x4
1c00ae6a:	00204837          	lui	a6,0x204
1c00ae6e:	81488893          	addi	a7,a7,-2028
1c00ae72:	04a68363          	beq	a3,a0,1c00aeb8 <pi_uart_close+0xbe>
1c00ae76:	02f82423          	sw	a5,40(a6) # 204028 <__l1_heap_size+0x1c4050>
1c00ae7a:	c19c                	sw	a5,0(a1)
1c00ae7c:	10500073          	wfi
1c00ae80:	c21c                	sw	a5,0(a2)
1c00ae82:	177d                	addi	a4,a4,-1
1c00ae84:	f77d                	bnez	a4,1c00ae72 <pi_uart_close+0x78>
1c00ae86:	00432783          	lw	a5,4(t1)
1c00ae8a:	1a102737          	lui	a4,0x1a102
1c00ae8e:	00500637          	lui	a2,0x500
1c00ae92:	0a470693          	addi	a3,a4,164 # 1a1020a4 <_emram_start+0x9902084>
1c00ae96:	079e                	slli	a5,a5,0x7
1c00ae98:	0619                	addi	a2,a2,6
1c00ae9a:	00c7e6a3          	p.sw	a2,a3(a5)
1c00ae9e:	00432603          	lw	a2,4(t1)
1c00aea2:	4785                	li	a5,1
1c00aea4:	4314                	lw	a3,0(a4)
1c00aea6:	00c797b3          	sll	a5,a5,a2
1c00aeaa:	fff7c793          	not	a5,a5
1c00aeae:	8ff5                	and	a5,a5,a3
1c00aeb0:	c31c                	sw	a5,0(a4)
1c00aeb2:	300e1073          	csrw	mstatus,t3
1c00aeb6:	8082                	ret
1c00aeb8:	00f8a023          	sw	a5,0(a7)
1c00aebc:	bf7d                	j	1c00ae7a <pi_uart_close+0x80>

1c00aebe <pi_uart_write>:
1c00aebe:	4508                	lw	a0,8(a0)
1c00aec0:	1c00b7b7          	lui	a5,0x1c00b
1c00aec4:	715d                	addi	sp,sp,-80
1c00aec6:	89278793          	addi	a5,a5,-1902 # 1c00a892 <pos_task_handle_blocking>
1c00aeca:	86b2                	mv	a3,a2
1c00aecc:	c23e                	sw	a5,4(sp)
1c00aece:	862e                	mv	a2,a1
1c00aed0:	00010793          	mv	a5,sp
1c00aed4:	4701                	li	a4,0
1c00aed6:	0541                	addi	a0,a0,16
1c00aed8:	858a                	mv	a1,sp
1c00aeda:	c686                	sw	ra,76(sp)
1c00aedc:	c4a2                	sw	s0,72(sp)
1c00aede:	c43e                	sw	a5,8(sp)
1c00aee0:	00010a23          	sb	zero,20(sp)
1c00aee4:	285d                	jal	1c00af9a <pos_udma_enqueue>
1c00aee6:	30047473          	csrrci	s0,mstatus,8
1c00aeea:	01410783          	lb	a5,20(sp)
1c00aeee:	e789                	bnez	a5,1c00aef8 <pi_uart_write+0x3a>
1c00aef0:	326d                	jal	1c00a89a <pos_task_handle>
1c00aef2:	01410783          	lb	a5,20(sp)
1c00aef6:	dfed                	beqz	a5,1c00aef0 <pi_uart_write+0x32>
1c00aef8:	30041073          	csrw	mstatus,s0
1c00aefc:	40b6                	lw	ra,76(sp)
1c00aefe:	4426                	lw	s0,72(sp)
1c00af00:	4501                	li	a0,0
1c00af02:	6161                	addi	sp,sp,80
1c00af04:	8082                	ret

1c00af06 <pos_uart_init>:
1c00af06:	1c0107b7          	lui	a5,0x1c010
1c00af0a:	2407a823          	sw	zero,592(a5) # 1c010250 <pos_uart>
1c00af0e:	8082                	ret

1c00af10 <pos_udma_handle_copy>:
1c00af10:	41d4                	lw	a3,4(a1)
1c00af12:	459c                	lw	a5,8(a1)
1c00af14:	4198                	lw	a4,0(a1)
1c00af16:	c194                	sw	a3,0(a1)
1c00af18:	cf95                	beqz	a5,1c00af54 <pos_udma_handle_copy+0x44>
1c00af1a:	4390                	lw	a2,0(a5)
1c00af1c:	4994                	lw	a3,16(a1)
1c00af1e:	4fc8                	lw	a0,28(a5)
1c00af20:	c590                	sw	a2,8(a1)
1c00af22:	c1dc                	sw	a5,4(a1)
1c00af24:	5390                	lw	a2,32(a5)
1c00af26:	87b6                	mv	a5,a3
1c00af28:	00a7a22b          	p.sw	a0,4(a5!)
1c00af2c:	c390                	sw	a2,0(a5)
1c00af2e:	06a1                	addi	a3,a3,8
1c00af30:	47c1                	li	a5,16
1c00af32:	c29c                	sw	a5,0(a3)
1c00af34:	01c02683          	lw	a3,28(zero) # 1c <pos_sched_first>
1c00af38:	00072023          	sw	zero,0(a4)
1c00af3c:	c699                	beqz	a3,1c00af4a <pos_udma_handle_copy+0x3a>
1c00af3e:	02002683          	lw	a3,32(zero) # 20 <pos_sched_last>
1c00af42:	c298                	sw	a4,0(a3)
1c00af44:	02e02023          	sw	a4,32(zero) # 20 <pos_sched_last>
1c00af48:	8082                	ret
1c00af4a:	00e02e23          	sw	a4,28(zero) # 1c <pos_sched_first>
1c00af4e:	02e02023          	sw	a4,32(zero) # 20 <pos_sched_last>
1c00af52:	8082                	ret
1c00af54:	0005a223          	sw	zero,4(a1)
1c00af58:	bff1                	j	1c00af34 <pos_udma_handle_copy+0x24>

1c00af5a <pos_udma_create_channel>:
1c00af5a:	4015d793          	srai	a5,a1,0x1
1c00af5e:	1a102837          	lui	a6,0x1a102
1c00af62:	08080813          	addi	a6,a6,128 # 1a102080 <_emram_start+0x9902060>
1c00af66:	079e                	slli	a5,a5,0x7
1c00af68:	97c2                	add	a5,a5,a6
1c00af6a:	0592                	slli	a1,a1,0x4
1c00af6c:	1c00b837          	lui	a6,0x1c00b
1c00af70:	060a                	slli	a2,a2,0x2
1c00af72:	89c1                	andi	a1,a1,16
1c00af74:	44400693          	li	a3,1092
1c00af78:	f1080813          	addi	a6,a6,-240 # 1c00af10 <pos_udma_handle_copy>
1c00af7c:	04400713          	li	a4,68
1c00af80:	0106e623          	p.sw	a6,a2(a3)
1c00af84:	00a76623          	p.sw	a0,a2(a4)
1c00af88:	97ae                	add	a5,a5,a1
1c00af8a:	00052023          	sw	zero,0(a0)
1c00af8e:	00052223          	sw	zero,4(a0)
1c00af92:	00052423          	sw	zero,8(a0)
1c00af96:	c91c                	sw	a5,16(a0)
1c00af98:	8082                	ret

1c00af9a <pos_udma_enqueue>:
1c00af9a:	411c                	lw	a5,0(a0)
1c00af9c:	cf91                	beqz	a5,1c00afb8 <pos_udma_enqueue+0x1e>
1c00af9e:	415c                	lw	a5,4(a0)
1c00afa0:	cf85                	beqz	a5,1c00afd8 <pos_udma_enqueue+0x3e>
1c00afa2:	451c                	lw	a5,8(a0)
1c00afa4:	cdd0                	sw	a2,28(a1)
1c00afa6:	d194                	sw	a3,32(a1)
1c00afa8:	d1d8                	sw	a4,36(a1)
1c00afaa:	c395                	beqz	a5,1c00afce <pos_udma_enqueue+0x34>
1c00afac:	455c                	lw	a5,12(a0)
1c00afae:	c38c                	sw	a1,0(a5)
1c00afb0:	c54c                	sw	a1,12(a0)
1c00afb2:	0005a023          	sw	zero,0(a1)
1c00afb6:	8082                	ret
1c00afb8:	491c                	lw	a5,16(a0)
1c00afba:	c10c                	sw	a1,0(a0)
1c00afbc:	85be                	mv	a1,a5
1c00afbe:	00c5a22b          	p.sw	a2,4(a1!)
1c00afc2:	c0474733          	p.bset	a4,a4,0,4
1c00afc6:	c194                	sw	a3,0(a1)
1c00afc8:	07a1                	addi	a5,a5,8
1c00afca:	c398                	sw	a4,0(a5)
1c00afcc:	8082                	ret
1c00afce:	c50c                	sw	a1,8(a0)
1c00afd0:	c54c                	sw	a1,12(a0)
1c00afd2:	0005a023          	sw	zero,0(a1)
1c00afd6:	8082                	ret
1c00afd8:	491c                	lw	a5,16(a0)
1c00afda:	c14c                	sw	a1,4(a0)
1c00afdc:	85be                	mv	a1,a5
1c00afde:	00c5a22b          	p.sw	a2,4(a1!)
1c00afe2:	c0474733          	p.bset	a4,a4,0,4
1c00afe6:	c194                	sw	a3,0(a1)
1c00afe8:	07a1                	addi	a5,a5,8
1c00afea:	c398                	sw	a4,0(a5)
1c00afec:	8082                	ret

1c00afee <pi_cluster_conf_init>:
1c00afee:	00052223          	sw	zero,4(a0)
1c00aff2:	00052a23          	sw	zero,20(a0)
1c00aff6:	8082                	ret

1c00aff8 <pi_cluster_open>:
1c00aff8:	1101                	addi	sp,sp,-32
1c00affa:	c452                	sw	s4,8(sp)
1c00affc:	00452a03          	lw	s4,4(a0)
1c00b000:	c64e                	sw	s3,12(sp)
1c00b002:	004a2983          	lw	s3,4(s4)
1c00b006:	1c0017b7          	lui	a5,0x1c001
1c00b00a:	cc22                	sw	s0,24(sp)
1c00b00c:	c05a                	sw	s6,0(sp)
1c00b00e:	25878413          	addi	s0,a5,600 # 1c001258 <pos_cluster>
1c00b012:	00599b13          	slli	s6,s3,0x5
1c00b016:	ca26                	sw	s1,20(sp)
1c00b018:	c84a                	sw	s2,16(sp)
1c00b01a:	c256                	sw	s5,4(sp)
1c00b01c:	016404b3          	add	s1,s0,s6
1c00b020:	ce06                	sw	ra,28(sp)
1c00b022:	c504                	sw	s1,8(a0)
1c00b024:	0ff9fa93          	andi	s5,s3,255
1c00b028:	1c00b5b7          	lui	a1,0x1c00b
1c00b02c:	01548e23          	sb	s5,28(s1)
1c00b030:	3fe58593          	addi	a1,a1,1022 # 1c00b3fe <pos_task_remote_enqueue>
1c00b034:	4505                	li	a0,1
1c00b036:	3c3d                	jal	1c00aa74 <pos_irq_set_handler>
1c00b038:	6685                	lui	a3,0x1
1c00b03a:	04098793          	addi	a5,s3,64
1c00b03e:	fff68713          	addi	a4,a3,-1 # fff <pos_soc_event_callback+0xbbb>
1c00b042:	1a10a637          	lui	a2,0x1a10a
1c00b046:	4689                	li	a3,2
1c00b048:	00800593          	li	a1,8
1c00b04c:	80d62223          	sw	a3,-2044(a2) # 1a109804 <_emram_start+0x99097e4>
1c00b050:	01679913          	slli	s2,a5,0x16
1c00b054:	8df9                	and	a1,a1,a4
1c00b056:	0004a023          	sw	zero,0(s1)
1c00b05a:	95ca                	add	a1,a1,s2
1c00b05c:	10000837          	lui	a6,0x10000
1c00b060:	002004b7          	lui	s1,0x200
1c00b064:	0005a023          	sw	zero,0(a1)
1c00b068:	02080813          	addi	a6,a6,32 # 10000020 <pos_cluster_fc_task_lock>
1c00b06c:	94ca                	add	s1,s1,s2
1c00b06e:	4785                	li	a5,1
1c00b070:	0005a623          	sw	zero,12(a1)
1c00b074:	0005a223          	sw	zero,4(a1)
1c00b078:	00082023          	sw	zero,0(a6)
1c00b07c:	02f4a023          	sw	a5,32(s1) # 200020 <__l1_heap_size+0x1c0048>
1c00b080:	00400693          	li	a3,4
1c00b084:	8ef9                	and	a3,a3,a4
1c00b086:	02400793          	li	a5,36
1c00b08a:	96ca                	add	a3,a3,s2
1c00b08c:	02f05563          	blez	a5,1c00b0b6 <pi_cluster_open+0xbe>
1c00b090:	17fd                	addi	a5,a5,-1
1c00b092:	1c010737          	lui	a4,0x1c010
1c00b096:	28870713          	addi	a4,a4,648 # 1c010288 <_l1_preload_start_inL2>
1c00b09a:	8389                	srli	a5,a5,0x2
1c00b09c:	02000613          	li	a2,32
1c00b0a0:	5575                	li	a0,-3
1c00b0a2:	8e99                	sub	a3,a3,a4
1c00b0a4:	0785                	addi	a5,a5,1
1c00b0a6:	08a64c63          	blt	a2,a0,1c00b13e <pi_cluster_open+0x146>
1c00b0aa:	0057c0fb          	lp.setup	x1,a5,1c00b0b4 <pi_cluster_open+0xbc>
1c00b0ae:	4310                	lw	a2,0(a4)
1c00b0b0:	00c766a3          	p.sw	a2,a3(a4)
1c00b0b4:	0711                	addi	a4,a4,4
1c00b0b6:	016407b3          	add	a5,s0,s6
1c00b0ba:	01578e23          	sb	s5,28(a5)
1c00b0be:	00201437          	lui	s0,0x201
1c00b0c2:	014a4683          	lbu	a3,20(s4)
1c00b0c6:	e0440713          	addi	a4,s0,-508 # 200e04 <__l1_heap_size+0x1c0e2c>
1c00b0ca:	974a                	add	a4,a4,s2
1c00b0cc:	cf98                	sw	a4,24(a5)
1c00b0ce:	cb98                	sw	a4,16(a5)
1c00b0d0:	c3cc                	sw	a1,4(a5)
1c00b0d2:	00d78ea3          	sb	a3,29(a5)
1c00b0d6:	854e                	mv	a0,s3
1c00b0d8:	0007a423          	sw	zero,8(a5)
1c00b0dc:	0007aa23          	sw	zero,20(a5)
1c00b0e0:	00078f23          	sb	zero,30(a5)
1c00b0e4:	00d80223          	sb	a3,4(a6)
1c00b0e8:	8d9ff0ef          	jal	ra,1c00a9c0 <pos_alloc_init_l1>
1c00b0ec:	40040793          	addi	a5,s0,1024
1c00b0f0:	97ca                	add	a5,a5,s2
1c00b0f2:	577d                	li	a4,-1
1c00b0f4:	00e7a023          	sw	a4,0(a5)
1c00b0f8:	1c0087b7          	lui	a5,0x1c008
1c00b0fc:	08078793          	addi	a5,a5,128 # 1c008080 <_start>
1c00b100:	04f4a023          	sw	a5,64(s1)
1c00b104:	04f4a223          	sw	a5,68(s1)
1c00b108:	04f4a423          	sw	a5,72(s1)
1c00b10c:	04f4a623          	sw	a5,76(s1)
1c00b110:	04f4a823          	sw	a5,80(s1)
1c00b114:	04f4aa23          	sw	a5,84(s1)
1c00b118:	04f4ac23          	sw	a5,88(s1)
1c00b11c:	04f4ae23          	sw	a5,92(s1)
1c00b120:	0ff00793          	li	a5,255
1c00b124:	00f4a423          	sw	a5,8(s1)
1c00b128:	40f2                	lw	ra,28(sp)
1c00b12a:	4462                	lw	s0,24(sp)
1c00b12c:	44d2                	lw	s1,20(sp)
1c00b12e:	4942                	lw	s2,16(sp)
1c00b130:	49b2                	lw	s3,12(sp)
1c00b132:	4a22                	lw	s4,8(sp)
1c00b134:	4a92                	lw	s5,4(sp)
1c00b136:	4b02                	lw	s6,0(sp)
1c00b138:	4501                	li	a0,0
1c00b13a:	6105                	addi	sp,sp,32
1c00b13c:	8082                	ret
1c00b13e:	4785                	li	a5,1
1c00b140:	b7ad                	j	1c00b0aa <pi_cluster_open+0xb2>

1c00b142 <pi_cluster_close>:
1c00b142:	4501                	li	a0,0
1c00b144:	8082                	ret

1c00b146 <pos_cluster_task_set_stack>:
1c00b146:	1101                	addi	sp,sp,-32
1c00b148:	c84a                	sw	s2,16(sp)
1c00b14a:	00852903          	lw	s2,8(a0)
1c00b14e:	ca26                	sw	s1,20(sp)
1c00b150:	c64e                	sw	s3,12(sp)
1c00b152:	4785                	li	a5,1
1c00b154:	ce06                	sw	ra,28(sp)
1c00b156:	cc22                	sw	s0,24(sp)
1c00b158:	00f90f23          	sb	a5,30(s2)
1c00b15c:	45dc                	lw	a5,12(a1)
1c00b15e:	89aa                	mv	s3,a0
1c00b160:	84ae                	mv	s1,a1
1c00b162:	efa1                	bnez	a5,1c00b1ba <pos_cluster_task_set_stack+0x74>
1c00b164:	6785                	lui	a5,0x1
1c00b166:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3bc>
1c00b16a:	40000713          	li	a4,1024
1c00b16e:	c5dc                	sw	a5,12(a1)
1c00b170:	c998                	sw	a4,16(a1)
1c00b172:	40000693          	li	a3,1024
1c00b176:	48d8                	lw	a4,20(s1)
1c00b178:	00892503          	lw	a0,8(s2)
1c00b17c:	177d                	addi	a4,a4,-1
1c00b17e:	843e                	mv	s0,a5
1c00b180:	42d70433          	p.mac	s0,a4,a3
1c00b184:	c909                	beqz	a0,1c00b196 <pos_cluster_task_set_stack+0x50>
1c00b186:	00c92603          	lw	a2,12(s2)
1c00b18a:	00860f63          	beq	a2,s0,1c00b1a8 <pos_cluster_task_set_stack+0x62>
1c00b18e:	85aa                	mv	a1,a0
1c00b190:	854e                	mv	a0,s3
1c00b192:	8cbff0ef          	jal	ra,1c00aa5c <pi_cl_l1_free>
1c00b196:	00892623          	sw	s0,12(s2)
1c00b19a:	85a2                	mv	a1,s0
1c00b19c:	854e                	mv	a0,s3
1c00b19e:	8a7ff0ef          	jal	ra,1c00aa44 <pi_cl_l1_malloc>
1c00b1a2:	00a92423          	sw	a0,8(s2)
1c00b1a6:	cd19                	beqz	a0,1c00b1c4 <pos_cluster_task_set_stack+0x7e>
1c00b1a8:	c488                	sw	a0,8(s1)
1c00b1aa:	4501                	li	a0,0
1c00b1ac:	40f2                	lw	ra,28(sp)
1c00b1ae:	4462                	lw	s0,24(sp)
1c00b1b0:	44d2                	lw	s1,20(sp)
1c00b1b2:	4942                	lw	s2,16(sp)
1c00b1b4:	49b2                	lw	s3,12(sp)
1c00b1b6:	6105                	addi	sp,sp,32
1c00b1b8:	8082                	ret
1c00b1ba:	4994                	lw	a3,16(a1)
1c00b1bc:	fecd                	bnez	a3,1c00b176 <pos_cluster_task_set_stack+0x30>
1c00b1be:	c99c                	sw	a5,16(a1)
1c00b1c0:	86be                	mv	a3,a5
1c00b1c2:	bf55                	j	1c00b176 <pos_cluster_task_set_stack+0x30>
1c00b1c4:	557d                	li	a0,-1
1c00b1c6:	b7dd                	j	1c00b1ac <pos_cluster_task_set_stack+0x66>

1c00b1c8 <pi_cluster_send_task_to_cl>:
1c00b1c8:	715d                	addi	sp,sp,-80
1c00b1ca:	c2a6                	sw	s1,68(sp)
1c00b1cc:	1c00b7b7          	lui	a5,0x1c00b
1c00b1d0:	4504                	lw	s1,8(a0)
1c00b1d2:	c4a2                	sw	s0,72(sp)
1c00b1d4:	c0ca                	sw	s2,64(sp)
1c00b1d6:	89278793          	addi	a5,a5,-1902 # 1c00a892 <pos_task_handle_blocking>
1c00b1da:	c686                	sw	ra,76(sp)
1c00b1dc:	c23e                	sw	a5,4(sp)
1c00b1de:	01d4c703          	lbu	a4,29(s1)
1c00b1e2:	00010793          	mv	a5,sp
1c00b1e6:	00010a23          	sb	zero,20(sp)
1c00b1ea:	c43e                	sw	a5,8(sp)
1c00b1ec:	842e                	mv	s0,a1
1c00b1ee:	0044a903          	lw	s2,4(s1)
1c00b1f2:	459c                	lw	a5,8(a1)
1c00b1f4:	04173c63          	p.bneimm	a4,1,1c00b24c <pi_cluster_send_task_to_cl+0x84>
1c00b1f8:	c3b5                	beqz	a5,1c00b25c <pi_cluster_send_task_to_cl+0x94>
1c00b1fa:	00010793          	mv	a5,sp
1c00b1fe:	02042023          	sw	zero,32(s0)
1c00b202:	cc1c                	sw	a5,24(s0)
1c00b204:	30047773          	csrrci	a4,mstatus,8
1c00b208:	409c                	lw	a5,0(s1)
1c00b20a:	c391                	beqz	a5,1c00b20e <pi_cluster_send_task_to_cl+0x46>
1c00b20c:	d380                	sw	s0,32(a5)
1c00b20e:	c080                	sw	s0,0(s1)
1c00b210:	00092783          	lw	a5,0(s2)
1c00b214:	cb8d                	beqz	a5,1c00b246 <pi_cluster_send_task_to_cl+0x7e>
1c00b216:	4c9c                	lw	a5,24(s1)
1c00b218:	0007a023          	sw	zero,0(a5)
1c00b21c:	30071073          	csrw	mstatus,a4
1c00b220:	30047473          	csrrci	s0,mstatus,8
1c00b224:	01410783          	lb	a5,20(sp)
1c00b228:	e791                	bnez	a5,1c00b234 <pi_cluster_send_task_to_cl+0x6c>
1c00b22a:	e70ff0ef          	jal	ra,1c00a89a <pos_task_handle>
1c00b22e:	01410783          	lb	a5,20(sp)
1c00b232:	dfe5                	beqz	a5,1c00b22a <pi_cluster_send_task_to_cl+0x62>
1c00b234:	30041073          	csrw	mstatus,s0
1c00b238:	4501                	li	a0,0
1c00b23a:	40b6                	lw	ra,76(sp)
1c00b23c:	4426                	lw	s0,72(sp)
1c00b23e:	4496                	lw	s1,68(sp)
1c00b240:	4906                	lw	s2,64(sp)
1c00b242:	6161                	addi	sp,sp,80
1c00b244:	8082                	ret
1c00b246:	00892023          	sw	s0,0(s2)
1c00b24a:	b7f1                	j	1c00b216 <pi_cluster_send_task_to_cl+0x4e>
1c00b24c:	cf99                	beqz	a5,1c00b26a <pi_cluster_send_task_to_cl+0xa2>
1c00b24e:	4858                	lw	a4,20(s0)
1c00b250:	4785                	li	a5,1
1c00b252:	00e797b3          	sll	a5,a5,a4
1c00b256:	17fd                	addi	a5,a5,-1
1c00b258:	d05c                	sw	a5,36(s0)
1c00b25a:	b745                	j	1c00b1fa <pi_cluster_send_task_to_cl+0x32>
1c00b25c:	01e4c783          	lbu	a5,30(s1)
1c00b260:	ffc9                	bnez	a5,1c00b1fa <pi_cluster_send_task_to_cl+0x32>
1c00b262:	35d5                	jal	1c00b146 <pos_cluster_task_set_stack>
1c00b264:	d959                	beqz	a0,1c00b1fa <pi_cluster_send_task_to_cl+0x32>
1c00b266:	557d                	li	a0,-1
1c00b268:	bfc9                	j	1c00b23a <pi_cluster_send_task_to_cl+0x72>
1c00b26a:	3df1                	jal	1c00b146 <pos_cluster_task_set_stack>
1c00b26c:	d16d                	beqz	a0,1c00b24e <pi_cluster_send_task_to_cl+0x86>
1c00b26e:	bfe5                	j	1c00b266 <pi_cluster_send_task_to_cl+0x9e>

1c00b270 <pos_cluster_push_fc_event>:
1c00b270:	002046b7          	lui	a3,0x204
1c00b274:	0c068693          	addi	a3,a3,192 # 2040c0 <__l1_heap_size+0x1c40e8>
1c00b278:	429c                	lw	a5,0(a3)
1c00b27a:	f1402373          	csrr	t1,mhartid
1c00b27e:	1c001837          	lui	a6,0x1c001
1c00b282:	25880813          	addi	a6,a6,600 # 1c001258 <pos_cluster>
1c00b286:	7e037313          	andi	t1,t1,2016
1c00b28a:	006805b3          	add	a1,a6,t1
1c00b28e:	49dc                	lw	a5,20(a1)
1c00b290:	c38d                	beqz	a5,1c00b2b2 <pos_cluster_push_fc_event+0x42>
1c00b292:	002047b7          	lui	a5,0x204
1c00b296:	4709                	li	a4,2
1c00b298:	03c78893          	addi	a7,a5,60 # 20403c <__l1_heap_size+0x1c4064>
1c00b29c:	0c07a023          	sw	zero,192(a5)
1c00b2a0:	00e7a423          	sw	a4,8(a5)
1c00b2a4:	0008a603          	lw	a2,0(a7)
1c00b2a8:	00e7a223          	sw	a4,4(a5)
1c00b2ac:	4290                	lw	a2,0(a3)
1c00b2ae:	49d0                	lw	a2,20(a1)
1c00b2b0:	f675                	bnez	a2,1c00b29c <pos_cluster_push_fc_event+0x2c>
1c00b2b2:	981a                	add	a6,a6,t1
1c00b2b4:	1a10a7b7          	lui	a5,0x1a10a
1c00b2b8:	00a82a23          	sw	a0,20(a6)
1c00b2bc:	4709                	li	a4,2
1c00b2be:	80e7a823          	sw	a4,-2032(a5) # 1a109810 <_emram_start+0x99097f0>
1c00b2c2:	002047b7          	lui	a5,0x204
1c00b2c6:	0c07a023          	sw	zero,192(a5) # 2040c0 <__l1_heap_size+0x1c40e8>
1c00b2ca:	8082                	ret

1c00b2cc <pos_init_entry>:
1c00b2cc:	7a101073          	csrw	pcmr,zero
1c00b2d0:	f1402573          	csrr	a0,mhartid
1c00b2d4:	01f57593          	andi	a1,a0,31
1c00b2d8:	8115                	srli	a0,a0,0x5
1c00b2da:	467d                	li	a2,31
1c00b2dc:	00c50463          	beq	a0,a2,1c00b2e4 <pos_init_entry+0x18>
1c00b2e0:	5210406f          	j	1c010000 <__cluster_text_start>
1c00b2e4:	ffff6297          	auipc	t0,0xffff6
1c00b2e8:	f5c28293          	addi	t0,t0,-164 # 1c001240 <_edata>
1c00b2ec:	ffff6317          	auipc	t1,0xffff6
1c00b2f0:	f8c30313          	addi	t1,t1,-116 # 1c001278 <__l2_priv0_end>
1c00b2f4:	0002a023          	sw	zero,0(t0)
1c00b2f8:	0291                	addi	t0,t0,4
1c00b2fa:	fe62ede3          	bltu	t0,t1,1c00b2f4 <pos_init_entry+0x28>
1c00b2fe:	ffff6117          	auipc	sp,0xffff6
1c00b302:	f0210113          	addi	sp,sp,-254 # 1c001200 <stack>
1c00b306:	fffff297          	auipc	t0,0xfffff
1c00b30a:	50e28293          	addi	t0,t0,1294 # 1c00a814 <pos_init_start>
1c00b30e:	000280e7          	jalr	t0
1c00b312:	00000513          	li	a0,0
1c00b316:	00000593          	li	a1,0
1c00b31a:	ffffd397          	auipc	t2,0xffffd
1c00b31e:	63038393          	addi	t2,t2,1584 # 1c00894a <main>
1c00b322:	000380e7          	jalr	t2
1c00b326:	842a                	mv	s0,a0
1c00b328:	8522                	mv	a0,s0
1c00b32a:	ffffe297          	auipc	t0,0xffffe
1c00b32e:	87c28293          	addi	t0,t0,-1924 # 1c008ba6 <exit>
1c00b332:	000280e7          	jalr	t0

1c00b336 <pos_irq_call_external_c_function>:
1c00b336:	7119                	addi	sp,sp,-128
1c00b338:	c006                	sw	ra,0(sp)
1c00b33a:	c20e                	sw	gp,4(sp)
1c00b33c:	c412                	sw	tp,8(sp)
1c00b33e:	c616                	sw	t0,12(sp)
1c00b340:	c81a                	sw	t1,16(sp)
1c00b342:	ca1e                	sw	t2,20(sp)
1c00b344:	d236                	sw	a3,36(sp)
1c00b346:	d43a                	sw	a4,40(sp)
1c00b348:	d63e                	sw	a5,44(sp)
1c00b34a:	d842                	sw	a6,48(sp)
1c00b34c:	da46                	sw	a7,52(sp)
1c00b34e:	dc72                	sw	t3,56(sp)
1c00b350:	de76                	sw	t4,60(sp)
1c00b352:	c0fa                	sw	t5,64(sp)
1c00b354:	c6fe                	sw	t6,76(sp)
1c00b356:	000600e7          	jalr	a2
1c00b35a:	4082                	lw	ra,0(sp)
1c00b35c:	4192                	lw	gp,4(sp)
1c00b35e:	4222                	lw	tp,8(sp)
1c00b360:	42b2                	lw	t0,12(sp)
1c00b362:	4342                	lw	t1,16(sp)
1c00b364:	43d2                	lw	t2,20(sp)
1c00b366:	5692                	lw	a3,36(sp)
1c00b368:	5722                	lw	a4,40(sp)
1c00b36a:	57b2                	lw	a5,44(sp)
1c00b36c:	5842                	lw	a6,48(sp)
1c00b36e:	58d2                	lw	a7,52(sp)
1c00b370:	5e62                	lw	t3,56(sp)
1c00b372:	5ef2                	lw	t4,60(sp)
1c00b374:	4f06                	lw	t5,64(sp)
1c00b376:	4fb6                	lw	t6,76(sp)
1c00b378:	6109                	addi	sp,sp,128
1c00b37a:	8482                	jr	s1

1c00b37c <pos_irq_call_external_c_function_full>:
1c00b37c:	7119                	addi	sp,sp,-128
1c00b37e:	c006                	sw	ra,0(sp)
1c00b380:	c20e                	sw	gp,4(sp)
1c00b382:	c412                	sw	tp,8(sp)
1c00b384:	c616                	sw	t0,12(sp)
1c00b386:	c81a                	sw	t1,16(sp)
1c00b388:	ca1e                	sw	t2,20(sp)
1c00b38a:	cc2a                	sw	a0,24(sp)
1c00b38c:	ce2e                	sw	a1,28(sp)
1c00b38e:	d236                	sw	a3,36(sp)
1c00b390:	d43a                	sw	a4,40(sp)
1c00b392:	d63e                	sw	a5,44(sp)
1c00b394:	d842                	sw	a6,48(sp)
1c00b396:	da46                	sw	a7,52(sp)
1c00b398:	dc72                	sw	t3,56(sp)
1c00b39a:	de76                	sw	t4,60(sp)
1c00b39c:	c0fa                	sw	t5,64(sp)
1c00b39e:	c6fe                	sw	t6,76(sp)
1c00b3a0:	000600e7          	jalr	a2
1c00b3a4:	4082                	lw	ra,0(sp)
1c00b3a6:	4192                	lw	gp,4(sp)
1c00b3a8:	4222                	lw	tp,8(sp)
1c00b3aa:	42b2                	lw	t0,12(sp)
1c00b3ac:	4342                	lw	t1,16(sp)
1c00b3ae:	43d2                	lw	t2,20(sp)
1c00b3b0:	4562                	lw	a0,24(sp)
1c00b3b2:	45f2                	lw	a1,28(sp)
1c00b3b4:	5692                	lw	a3,36(sp)
1c00b3b6:	5722                	lw	a4,40(sp)
1c00b3b8:	57b2                	lw	a5,44(sp)
1c00b3ba:	5842                	lw	a6,48(sp)
1c00b3bc:	58d2                	lw	a7,52(sp)
1c00b3be:	5e62                	lw	t3,56(sp)
1c00b3c0:	5ef2                	lw	t4,60(sp)
1c00b3c2:	4f06                	lw	t5,64(sp)
1c00b3c4:	4fb6                	lw	t6,76(sp)
1c00b3c6:	6109                	addi	sp,sp,128
1c00b3c8:	8482                	jr	s1

1c00b3ca <pos_task_push_asm>:
1c00b3ca:	e3ff5297          	auipc	t0,0xe3ff5
1c00b3ce:	c5228293          	addi	t0,t0,-942 # 1c <pos_sched_first>
1c00b3d2:	0002a603          	lw	a2,0(t0)
1c00b3d6:	0005a023          	sw	zero,0(a1)
1c00b3da:	ca09                	beqz	a2,1c00b3ec <__rt_no_first>
1c00b3dc:	e3ff5297          	auipc	t0,0xe3ff5
1c00b3e0:	c4428293          	addi	t0,t0,-956 # 20 <pos_sched_last>
1c00b3e4:	0002a603          	lw	a2,0(t0)
1c00b3e8:	c20c                	sw	a1,0(a2)
1c00b3ea:	a029                	j	1c00b3f4 <__rt_common>

1c00b3ec <__rt_no_first>:
1c00b3ec:	e3ff5297          	auipc	t0,0xe3ff5
1c00b3f0:	c2b2a823          	sw	a1,-976(t0) # 1c <pos_sched_first>

1c00b3f4 <__rt_common>:
1c00b3f4:	e3ff5297          	auipc	t0,0xe3ff5
1c00b3f8:	c2b2a623          	sw	a1,-980(t0) # 20 <pos_sched_last>

1c00b3fc <enqueue_end>:
1c00b3fc:	8482                	jr	s1

1c00b3fe <pos_task_remote_enqueue>:
1c00b3fe:	fe812e23          	sw	s0,-4(sp)
1c00b402:	fe912c23          	sw	s1,-8(sp)
1c00b406:	fea12a23          	sw	a0,-12(sp)
1c00b40a:	feb12823          	sw	a1,-16(sp)
1c00b40e:	fec12623          	sw	a2,-20(sp)
1c00b412:	4405                	li	s0,1
1c00b414:	ffff6497          	auipc	s1,0xffff6
1c00b418:	e4448493          	addi	s1,s1,-444 # 1c001258 <pos_cluster>

1c00b41c <pos_task_remote_enqueue_event_loop_cluster>:
1c00b41c:	48cc                	lw	a1,20(s1)
1c00b41e:	40d0                	lw	a2,4(s1)
1c00b420:	02058a63          	beqz	a1,1c00b454 <pos_task_remote_enqueue_event_loop_cluster_continue>
1c00b424:	4208                	lw	a0,0(a2)
1c00b426:	e119                	bnez	a0,1c00b42c <pos_task_remote_enqueue_no_queue_update>
1c00b428:	0004a023          	sw	zero,0(s1)

1c00b42c <pos_task_remote_enqueue_no_queue_update>:
1c00b42c:	4890                	lw	a2,16(s1)
1c00b42e:	0004aa23          	sw	zero,20(s1)
1c00b432:	00062023          	sw	zero,0(a2)
1c00b436:	00000497          	auipc	s1,0x0
1c00b43a:	01e48493          	addi	s1,s1,30 # 1c00b454 <pos_task_remote_enqueue_event_loop_cluster_continue>
1c00b43e:	0035f513          	andi	a0,a1,3
1c00b442:	00051363          	bnez	a0,1c00b448 <pos_task_callback>
1c00b446:	b751                	j	1c00b3ca <pos_task_push_asm>

1c00b448 <pos_task_callback>:
1c00b448:	5571                	li	a0,-4
1c00b44a:	8de9                	and	a1,a1,a0
1c00b44c:	41d0                	lw	a2,4(a1)
1c00b44e:	4588                	lw	a0,8(a1)
1c00b450:	ee7ff06f          	j	1c00b336 <pos_irq_call_external_c_function>

1c00b454 <pos_task_remote_enqueue_event_loop_cluster_continue>:
1c00b454:	147d                	addi	s0,s0,-1
1c00b456:	00804e63          	bgtz	s0,1c00b472 <pos_task_remote_enqueue_event_loop_next_cluster>
1c00b45a:	ffc12403          	lw	s0,-4(sp)
1c00b45e:	ff812483          	lw	s1,-8(sp)
1c00b462:	ff412503          	lw	a0,-12(sp)
1c00b466:	ff012583          	lw	a1,-16(sp)
1c00b46a:	fec12603          	lw	a2,-20(sp)
1c00b46e:	30200073          	mret

1c00b472 <pos_task_remote_enqueue_event_loop_next_cluster>:
1c00b472:	ffff6497          	auipc	s1,0xffff6
1c00b476:	de648493          	addi	s1,s1,-538 # 1c001258 <pos_cluster>
1c00b47a:	02c00593          	li	a1,44
1c00b47e:	02b405b3          	mul	a1,s0,a1
1c00b482:	94ae                	add	s1,s1,a1
1c00b484:	bf61                	j	1c00b41c <pos_task_remote_enqueue_event_loop_cluster>

1c00b486 <pos_time_timer_handler_asm>:
1c00b486:	1161                	addi	sp,sp,-8
1c00b488:	c032                	sw	a2,0(sp)
1c00b48a:	c226                	sw	s1,4(sp)
1c00b48c:	fffff617          	auipc	a2,0xfffff
1c00b490:	6ec60613          	addi	a2,a2,1772 # 1c00ab78 <pos_time_timer_handler>
1c00b494:	00000497          	auipc	s1,0x0
1c00b498:	00c48493          	addi	s1,s1,12 # 1c00b4a0 <pos_time_timer_handler_asm_ret>
1c00b49c:	ee1ff06f          	j	1c00b37c <pos_irq_call_external_c_function_full>

1c00b4a0 <pos_time_timer_handler_asm_ret>:
1c00b4a0:	4492                	lw	s1,4(sp)
1c00b4a2:	4602                	lw	a2,0(sp)
1c00b4a4:	0121                	addi	sp,sp,8
1c00b4a6:	30200073          	mret

1c00b4aa <pos_soc_event_handler_asm>:
1c00b4aa:	7119                	addi	sp,sp,-128
1c00b4ac:	c022                	sw	s0,0(sp)
1c00b4ae:	c226                	sw	s1,4(sp)
1c00b4b0:	c42a                	sw	a0,8(sp)
1c00b4b2:	c62e                	sw	a1,12(sp)
1c00b4b4:	c832                	sw	a2,16(sp)
1c00b4b6:	1a10a437          	lui	s0,0x1a10a
1c00b4ba:	80040413          	addi	s0,s0,-2048 # 1a109800 <_emram_start+0x99097e0>
1c00b4be:	5048                	lw	a0,36(s0)
1c00b4c0:	00251593          	slli	a1,a0,0x2
1c00b4c4:	e3ff5297          	auipc	t0,0xe3ff5
1c00b4c8:	f8028293          	addi	t0,t0,-128 # 444 <pos_soc_event_callback>
1c00b4cc:	2055f603          	p.lw	a2,t0(a1)
1c00b4d0:	e3ff5297          	auipc	t0,0xe3ff5
1c00b4d4:	b7428293          	addi	t0,t0,-1164 # 44 <pos_soc_event_callback_arg>
1c00b4d8:	2055f583          	p.lw	a1,t0(a1)
1c00b4dc:	00000497          	auipc	s1,0x0
1c00b4e0:	03048493          	addi	s1,s1,48 # 1c00b50c <pos_soc_event_handler_end_asm>
1c00b4e4:	e53ff06f          	j	1c00b336 <pos_irq_call_external_c_function>

1c00b4e8 <pos_soc_event_no_udma_asm>:
1c00b4e8:	00555593          	srli	a1,a0,0x5
1c00b4ec:	058a                	slli	a1,a1,0x2
1c00b4ee:	e3ff5297          	auipc	t0,0xe3ff5
1c00b4f2:	b3628293          	addi	t0,t0,-1226 # 24 <_l1_preload_size>
1c00b4f6:	2055f603          	p.lw	a2,t0(a1)
1c00b4fa:	897d                	andi	a0,a0,31
1c00b4fc:	80a64633          	p.bsetr	a2,a2,a0
1c00b500:	e3ff5297          	auipc	t0,0xe3ff5
1c00b504:	b2428293          	addi	t0,t0,-1244 # 24 <_l1_preload_size>
1c00b508:	00c5e2a3          	p.sw	a2,t0(a1)

1c00b50c <pos_soc_event_handler_end_asm>:
1c00b50c:	4402                	lw	s0,0(sp)
1c00b50e:	4492                	lw	s1,4(sp)
1c00b510:	4522                	lw	a0,8(sp)
1c00b512:	45b2                	lw	a1,12(sp)
1c00b514:	4642                	lw	a2,16(sp)
1c00b516:	6109                	addi	sp,sp,128
1c00b518:	30200073          	mret

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
1c010042:	21ab8b93          	addi	s7,s7,538 # 1c001258 <pos_cluster>
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
