/tmp/v21a/x/var/jb/Library/MobileSubstrate/DynamicLibraries/TriggrRelay.dylib:
(__TEXT,__text) section

; ===== sub_4000 =====
    4000:	sub	sp, sp, #0x1f0
    4004:	stp	d11, d10, [sp, #0x190]
    4008:	stp	d9, d8, [sp, #0x1a0]
    400c:	stp	x28, x27, [sp, #0x1b0]
    4010:	stp	x22, x21, [sp, #0x1c0]
    4014:	stp	x20, x19, [sp, #0x1d0]
    4018:	stp	x29, x30, [sp, #0x1e0]
    401c:	add	x29, sp, #0x1e0
    4020:	mov	x0, x2
    4024:	adrp	x8, 8 ; 0xc000
    4028:	ldr	x8, [x8, #0x550] ; literal pool symbol address: ___stack_chk_guard
    402c:	ldr	x8, [x8]
    4030:	stur	x8, [x29, #-0x58]
    4034:	bl	0x6afc ; symbol stub for: _objc_retain
    4038:	mov	x19, x0
    403c:	adrp	x8, 8 ; 0xc000
    4040:	ldr	x8, [x8, #0x5b0] ; literal pool symbol address: _CGPointZero
    4044:	ldp	d9, d8, [x8]
    4048:	movi.16b	v0, #0x0
    404c:	stp	q0, q0, [sp, #0x40]
    4050:	stp	q0, q0, [sp, #0x60]
    4054:	add	x2, sp, #0x40
    4058:	sub	x3, x29, #0xd8
    405c:	mov	w4, #0x10
    4060:	bl	0x6d00
    4064:	cbz	x0, 0x40d0
    4068:	mov	x20, x0
    406c:	ldr	x8, [sp, #0x50]
    4070:	ldr	x21, [x8]
    4074:	mov	x22, #0x0
    4078:	ldr	x8, [sp, #0x50]
    407c:	ldr	x8, [x8]
    4080:	cmp	x8, x21
    4084:	b.eq	0x4090
    4088:	mov	x0, x19
    408c:	bl	0x6a84 ; symbol stub for: _objc_enumerationMutation
    4090:	ldr	x8, [sp, #0x48]
    4094:	ldr	x0, [x8, x22, lsl #3]
    4098:	mov	x2, #0x0
    409c:	bl	0x6f00
    40a0:	fadd	d9, d9, d0
    40a4:	fadd	d8, d8, d1
    40a8:	add	x22, x22, #0x1
    40ac:	cmp	x20, x22
    40b0:	b.ne	0x4078
    40b4:	add	x2, sp, #0x40
    40b8:	sub	x3, x29, #0xd8
    40bc:	mov	x0, x19
    40c0:	mov	w4, #0x10
    40c4:	bl	0x6d00
    40c8:	mov	x20, x0
    40cc:	cbnz	x0, 0x4074
    40d0:	mov	x0, x19
    40d4:	bl	0x6ce0
    40d8:	mov	x21, x0
    40dc:	mov	x0, x19
    40e0:	bl	0x6ce0
    40e4:	mov	x22, x0
    40e8:	movi.16b	v0, #0x0
    40ec:	stp	q0, q0, [sp]
    40f0:	stp	q0, q0, [sp, #0x20]
    40f4:	mov	x0, x19
    40f8:	bl	0x6afc ; symbol stub for: _objc_retain
    40fc:	mov	x19, x0
    4100:	mov	x2, sp
    4104:	add	x3, sp, #0x88
    4108:	mov	w4, #0x10
    410c:	bl	0x6d00
    4110:	cbz	x0, 0x419c
    4114:	mov	x20, x0
    4118:	ucvtf	d0, x21
    411c:	fdiv	d10, d9, d0
    4120:	ucvtf	d0, x22
    4124:	ldr	x8, [sp, #0x10]
    4128:	ldr	x21, [x8]
    412c:	fmov	d9, xzr
    4130:	fdiv	d8, d8, d0
    4134:	mov	x22, #0x0
    4138:	ldr	x8, [sp, #0x10]
    413c:	ldr	x8, [x8]
    4140:	cmp	x8, x21
    4144:	b.eq	0x4150
    4148:	mov	x0, x19
    414c:	bl	0x6a84 ; symbol stub for: _objc_enumerationMutation
    4150:	ldr	x8, [sp, #0x8]
    4154:	ldr	x0, [x8, x22, lsl #3]
    4158:	mov	x2, #0x0
    415c:	bl	0x6f00
    4160:	fsub	d0, d0, d10
    4164:	fsub	d1, d1, d8
    4168:	bl	0x6a0c ; symbol stub for: _hypot
    416c:	fadd	d9, d9, d0
    4170:	add	x22, x22, #0x1
    4174:	cmp	x20, x22
    4178:	b.ne	0x4138
    417c:	mov	x2, sp
    4180:	add	x3, sp, #0x88
    4184:	mov	x0, x19
    4188:	mov	w4, #0x10
    418c:	bl	0x6d00
    4190:	mov	x20, x0
    4194:	cbnz	x0, 0x4134
    4198:	b	0x41a0
    419c:	fmov	d9, xzr

; ===== sub_41a0 =====
    41a0:	mov	x0, x19
    41a4:	bl	0x6af0 ; symbol stub for: _objc_release
    41a8:	mov	x0, x19
    41ac:	bl	0x6ce0
    41b0:	mov	x20, x0
    41b4:	mov	x0, x19
    41b8:	bl	0x6af0 ; symbol stub for: _objc_release
    41bc:	ldur	x8, [x29, #-0x58]
    41c0:	adrp	x9, 8 ; 0xc000
    41c4:	ldr	x9, [x9, #0x550] ; literal pool symbol address: ___stack_chk_guard
    41c8:	ldr	x9, [x9]
    41cc:	cmp	x9, x8
    41d0:	b.ne	0x41fc
    41d4:	ucvtf	d0, x20
    41d8:	fdiv	d0, d9, d0
    41dc:	ldp	x29, x30, [sp, #0x1e0]
    41e0:	ldp	x20, x19, [sp, #0x1d0]
    41e4:	ldp	x22, x21, [sp, #0x1c0]
    41e8:	ldp	x28, x27, [sp, #0x1b0]
    41ec:	ldp	d9, d8, [sp, #0x1a0]
    41f0:	ldp	d11, d10, [sp, #0x190]
    41f4:	add	sp, sp, #0x1f0
    41f8:	ret
    41fc:	bl	0x69dc ; symbol stub for: ___stack_chk_fail
    4200:	sub	sp, sp, #0x120
    4204:	stp	x26, x25, [sp, #0xd0]
    4208:	stp	x24, x23, [sp, #0xe0]
    420c:	stp	x22, x21, [sp, #0xf0]
    4210:	stp	x20, x19, [sp, #0x100]
    4214:	stp	x29, x30, [sp, #0x110]
    4218:	add	x29, sp, #0x110
    421c:	mov	x0, x2
    4220:	adrp	x8, 8 ; 0xc000
    4224:	ldr	x8, [x8, #0x550] ; literal pool symbol address: ___stack_chk_guard
    4228:	ldr	x8, [x8]
    422c:	stur	x8, [x29, #-0x48]
    4230:	bl	0x6afc ; symbol stub for: _objc_retain
    4234:	mov	x20, x0
    4238:	adrp	x8, 12 ; 0x10000
    423c:	ldr	x0, [x8, #0x6d0] ; Objc class ref: bad class ref
    4240:	bl	0x7120
    4244:	mov	x29, x29
    4248:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    424c:	mov	x19, x0
    4250:	movi.16b	v0, #0x0
    4254:	stp	q0, q0, [sp]
    4258:	stp	q0, q0, [sp, #0x20]
    425c:	mov	x0, x20
    4260:	bl	0x6be0
    4264:	mov	x29, x29
    4268:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    426c:	mov	x21, x0
    4270:	mov	x2, sp
    4274:	add	x3, sp, #0x48
    4278:	mov	w4, #0x10
    427c:	bl	0x6d00
    4280:	cbz	x0, 0x4308
    4284:	mov	x22, x0
    4288:	ldr	x8, [sp, #0x10]
    428c:	ldr	x24, [x8]
    4290:	mov	x25, #0x0
    4294:	ldr	x8, [sp, #0x10]
    4298:	ldr	x8, [x8]
    429c:	cmp	x8, x24
    42a0:	b.eq	0x42ac
    42a4:	mov	x0, x21
    42a8:	bl	0x6a84 ; symbol stub for: _objc_enumerationMutation
    42ac:	ldr	x8, [sp, #0x8]
    42b0:	ldr	x23, [x8, x25, lsl #3]
    42b4:	mov	x0, x23
    42b8:	bl	0x6fa0
    42bc:	cmp	x0, #0x3
    42c0:	b.eq	0x42e0
    42c4:	mov	x0, x23
    42c8:	bl	0x6fa0
    42cc:	cmp	x0, #0x4
    42d0:	b.eq	0x42e0
    42d4:	mov	x0, x19
    42d8:	mov	x2, x23
    42dc:	bl	0x6ba0
    42e0:	add	x25, x25, #0x1
    42e4:	cmp	x22, x25
    42e8:	b.ne	0x4294
    42ec:	mov	x2, sp
    42f0:	add	x3, sp, #0x48
    42f4:	mov	x0, x21
    42f8:	mov	w4, #0x10
    42fc:	bl	0x6d00
    4300:	mov	x22, x0
    4304:	cbnz	x0, 0x4290
    4308:	mov	x0, x21
    430c:	bl	0x6af0 ; symbol stub for: _objc_release
    4310:	mov	x0, x20
    4314:	bl	0x6af0 ; symbol stub for: _objc_release
    4318:	ldur	x8, [x29, #-0x48]
    431c:	adrp	x9, 8 ; 0xc000
    4320:	ldr	x9, [x9, #0x550] ; literal pool symbol address: ___stack_chk_guard
    4324:	ldr	x9, [x9]
    4328:	cmp	x9, x8
    432c:	b.ne	0x4350
    4330:	mov	x0, x19
    4334:	ldp	x29, x30, [sp, #0x110]
    4338:	ldp	x20, x19, [sp, #0x100]
    433c:	ldp	x22, x21, [sp, #0xf0]
    4340:	ldp	x24, x23, [sp, #0xe0]
    4344:	ldp	x26, x25, [sp, #0xd0]
    4348:	add	sp, sp, #0x120
    434c:	b	0x6a60 ; symbol stub for: _objc_autoreleaseReturnValue
    4350:	bl	0x69dc ; symbol stub for: ___stack_chk_fail
    4354:	sub	sp, sp, #0x30
    4358:	stp	x20, x19, [sp, #0x10]
    435c:	stp	x29, x30, [sp, #0x20]
    4360:	add	x29, sp, #0x20
    4364:	mov	x19, x0
    4368:	adrp	x8, 12 ; 0x10000
    436c:	ldr	x8, [x8, #0x748] ; Objc class ref: bad class ref
    4370:	stp	x0, x8, [sp]
    4374:	adrp	x8, 12 ; 0x10000
    4378:	ldr	x1, [x8, #0x398]
    437c:	mov	x0, sp
    4380:	bl	0x6ab4 ; symbol stub for: _objc_msgSendSuper2
    4384:	adrp	x8, 12 ; 0x10000
    4388:	ldrsw	x8, [x8, #0x750]
    438c:	strb	wzr, [x19, x8]
    4390:	adrp	x8, 12 ; 0x10000
    4394:	ldrsw	x8, [x8, #0x754]
    4398:	str	xzr, [x19, x8]
    439c:	adrp	x8, 12 ; 0x10000
    43a0:	ldrsw	x8, [x8, #0x758]
    43a4:	mov	x9, #0x3ff0000000000000
    43a8:	str	x9, [x19, x8]
    43ac:	adrp	x8, 12 ; 0x10000
    43b0:	ldrsw	x8, [x8, #0x75c]
    43b4:	strb	wzr, [x19, x8]
    43b8:	ldp	x29, x30, [sp, #0x20]
    43bc:	ldp	x20, x19, [sp, #0x10]
    43c0:	add	sp, sp, #0x30
    43c4:	ret
    43c8:	stp	x22, x21, [sp, #-0x30]!
    43cc:	stp	x20, x19, [sp, #0x10]
    43d0:	stp	x29, x30, [sp, #0x20]
    43d4:	add	x29, sp, #0x20
    43d8:	mov	x2, x3
    43dc:	mov	x19, x0
    43e0:	bl	0x6ee0
    43e4:	mov	x29, x29
    43e8:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    43ec:	mov	x20, x0
    43f0:	bl	0x6ce0
    43f4:	mov	x21, x0
    43f8:	mov	x0, x19
    43fc:	bl	0x6d80
    4400:	cmp	x21, x0
    4404:	b.ls	0x442c
    4408:	adrp	x8, 12 ; 0x10000
    440c:	ldrsw	x8, [x8, #0x750]
    4410:	ldrb	w8, [x19, x8]
    4414:	cmp	w8, #0x0
    4418:	mov	w8, #0x4
    441c:	cinc	x2, x8, eq

; ===== sub_4420 =====
    4420:	mov	x0, x19
    4424:	bl	0x7240
    4428:	b	0x4498
    442c:	mov	x0, x20
    4430:	bl	0x6ce0
    4434:	mov	x21, x0
    4438:	mov	x0, x19
    443c:	bl	0x6d80
    4440:	cmp	x21, x0
    4444:	b.ne	0x4498
    4448:	mov	x0, x19
    444c:	mov	x2, x20
    4450:	bl	0x72a0
    4454:	adrp	x8, 12 ; 0x10000
    4458:	ldrsw	x8, [x8, #0x754]
    445c:	str	d0, [x19, x8]
    4460:	fmov	d1, #10.00000000
    4464:	fcmp	d0, d1
    4468:	cset	w8, gt
    446c:	adrp	x9, 12 ; 0x10000
    4470:	ldrsw	x9, [x9, #0x750]
    4474:	strb	w8, [x19, x9]
    4478:	adrp	x8, 12 ; 0x10000
    447c:	ldrsw	x8, [x8, #0x758]
    4480:	mov	x9, #0x3ff0000000000000
    4484:	str	x9, [x19, x8]
    4488:	b.le	0x4498
    448c:	mov	x0, x19
    4490:	bl	0x72c0
    4494:	cbz	x0, 0x44ac

; ===== sub_4498 =====
    4498:	mov	x0, x20
    449c:	ldp	x29, x30, [sp, #0x20]
    44a0:	ldp	x20, x19, [sp, #0x10]
    44a4:	ldp	x22, x21, [sp], #0x30
    44a8:	b	0x6af0 ; symbol stub for: _objc_release
    44ac:	mov	w2, #0x1
    44b0:	b	0x4420
    44b4:	adrp	x8, 12 ; 0x10000
    44b8:	ldrsw	x8, [x8, #0x750]
    44bc:	ldrb	w8, [x0, x8]
    44c0:	cmp	w8, #0x1
    44c4:	b.ne	0x4570
    44c8:	stp	x22, x21, [sp, #-0x30]!
    44cc:	stp	x20, x19, [sp, #0x10]
    44d0:	stp	x29, x30, [sp, #0x20]
    44d4:	add	x29, sp, #0x20
    44d8:	mov	x19, x0
    44dc:	mov	x2, x3
    44e0:	bl	0x6ee0
    44e4:	mov	x29, x29
    44e8:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    44ec:	mov	x20, x0
    44f0:	bl	0x6ce0
    44f4:	mov	x21, x0
    44f8:	mov	x0, x19
    44fc:	bl	0x6d80
    4500:	cmp	x21, x0
    4504:	b.ne	0x4530
    4508:	mov	x0, x19
    450c:	mov	x2, x20
    4510:	bl	0x72a0
    4514:	adrp	x8, 12 ; 0x10000
    4518:	ldrsw	x8, [x8, #0x754]
    451c:	ldr	d1, [x19, x8]
    4520:	fdiv	d0, d0, d1
    4524:	adrp	x8, 12 ; 0x10000
    4528:	ldrsw	x8, [x8, #0x758]
    452c:	str	d0, [x19, x8]
    4530:	mov	x0, x19
    4534:	bl	0x72c0
    4538:	cmp	x0, #0x1
    453c:	b.eq	0x4550
    4540:	mov	x0, x19
    4544:	bl	0x72c0
    4548:	cmp	x0, #0x2
    454c:	b.ne	0x455c
    4550:	mov	x0, x19
    4554:	mov	w2, #0x2
    4558:	bl	0x7240
    455c:	mov	x0, x20
    4560:	ldp	x29, x30, [sp, #0x20]
    4564:	ldp	x20, x19, [sp, #0x10]
    4568:	ldp	x22, x21, [sp], #0x30
    456c:	b	0x6af0 ; symbol stub for: _objc_release
    4570:	ret
    4574:	stp	x24, x23, [sp, #-0x40]!
    4578:	stp	x22, x21, [sp, #0x10]
    457c:	stp	x20, x19, [sp, #0x20]
    4580:	stp	x29, x30, [sp, #0x30]
    4584:	add	x29, sp, #0x30
    4588:	mov	x21, x3
    458c:	mov	x20, x0
    4590:	mov	x0, x2
    4594:	bl	0x6afc ; symbol stub for: _objc_retain
    4598:	mov	x19, x0
    459c:	mov	x0, x21
    45a0:	bl	0x6afc ; symbol stub for: _objc_retain
    45a4:	mov	x21, x0
    45a8:	adrp	x8, 12 ; 0x10000
    45ac:	ldrsw	x8, [x8, #0x750]
    45b0:	ldrb	w8, [x20, x8]
    45b4:	tbz	w8, #0x0, 0x45c0
    45b8:	mov	w2, #0x3
    45bc:	b	0x45f0
    45c0:	mov	x0, x20
    45c4:	mov	x2, x21
    45c8:	bl	0x6ee0
    45cc:	mov	x29, x29
    45d0:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    45d4:	mov	x22, x0
    45d8:	bl	0x6ce0
    45dc:	mov	x23, x0
    45e0:	mov	x0, x22
    45e4:	bl	0x6af0 ; symbol stub for: _objc_release
    45e8:	cbnz	x23, 0x45f8
    45ec:	mov	w2, #0x5

; ===== sub_45f0 =====
    45f0:	mov	x0, x20
    45f4:	bl	0x7240
    45f8:	mov	x0, x21
    45fc:	bl	0x6af0 ; symbol stub for: _objc_release
    4600:	mov	x0, x19
    4604:	ldp	x29, x30, [sp, #0x30]
    4608:	ldp	x20, x19, [sp, #0x20]
    460c:	ldp	x22, x21, [sp, #0x10]
    4610:	ldp	x24, x23, [sp], #0x40
    4614:	b	0x6af0 ; symbol stub for: _objc_release
    4618:	adrp	x8, 12 ; 0x10000
    461c:	ldrsw	x8, [x8, #0x750]
    4620:	ldrb	w8, [x0, x8]
    4624:	cmp	w8, #0x0
    4628:	mov	w8, #0x4
    462c:	cinc	x2, x8, eq
    4630:	b	0x7240
    4634:	adrp	x8, 12 ; 0x10000
    4638:	ldrsw	x8, [x8, #0x760]
    463c:	ldr	x0, [x0, x8]
    4640:	ret
    4644:	adrp	x8, 12 ; 0x10000
    4648:	ldrsw	x8, [x8, #0x760]
    464c:	str	x2, [x0, x8]
    4650:	ret
    4654:	adrp	x8, 12 ; 0x10000
    4658:	ldrsw	x8, [x8, #0x758]
    465c:	ldr	d0, [x0, x8]
    4660:	ret
    4664:	adrp	x8, 12 ; 0x10000
    4668:	ldrsw	x8, [x8, #0x75c]
    466c:	ldrb	w0, [x0, x8]
    4670:	ret
    4674:	adrp	x8, 12 ; 0x10000
    4678:	ldrsw	x8, [x8, #0x75c]
    467c:	strb	w2, [x0, x8]
    4680:	ret
    4684:	stp	x20, x19, [sp, #-0x20]!
    4688:	stp	x29, x30, [sp, #0x10]
    468c:	add	x29, sp, #0x10
    4690:	adrp	x19, 12 ; 0x10000
    4694:	ldr	x0, [x19, #0x8d8]
    4698:	cbnz	x0, 0x46bc
    469c:	adrp	x8, 12 ; 0x10000
    46a0:	ldr	x0, [x8, #0x6d8] ; Objc class ref: bad class ref
    46a4:	bl	0x6ad8 ; symbol stub for: _objc_opt_new
    46a8:	ldr	x8, [x19, #0x8d8]
    46ac:	str	x0, [x19, #0x8d8]
    46b0:	mov	x0, x8
    46b4:	bl	0x6af0 ; symbol stub for: _objc_release
    46b8:	ldr	x0, [x19, #0x8d8]
    46bc:	ldp	x29, x30, [sp, #0x10]
    46c0:	ldp	x20, x19, [sp], #0x20
    46c4:	b	0x6b08 ; symbol stub for: _objc_retainAutoreleaseReturnValue
    46c8:	stp	x22, x21, [sp, #-0x30]!
    46cc:	stp	x20, x19, [sp, #0x10]
    46d0:	stp	x29, x30, [sp, #0x20]
    46d4:	add	x29, sp, #0x20
    46d8:	cmp	w2, #0x13
    46dc:	b.hi	0x4834
    46e0:	mov	x19, x2
    46e4:	mov	x20, x0
    46e8:	mov	w8, #0x1
    46ec:	lsl	w8, w8, w2
    46f0:	tst	w8, #0x3fc
    46f4:	b.ne	0x4760
    46f8:	mov	w9, #0xcc00
    46fc:	movk	w9, #0xf, lsl #16
    4700:	tst	w8, w9
    4704:	b.eq	0x47b8
    4708:	adrp	x8, 12 ; 0x10000
    470c:	ldr	x0, [x8, #0x6e8] ; Objc class ref: bad class ref
    4710:	bl	0x6a54 ; symbol stub for: _objc_alloc
    4714:	adrp	x8, 12 ; 0x10000
    4718:	ldr	x3, [x8, #0x3a0]
    471c:	mov	x2, x20
    4720:	bl	0x6e20
    4724:	mov	x21, x0
    4728:	cmp	w19, #0x13
    472c:	b.hi	0x4804
    4730:	mov	w8, #0x1
    4734:	lsl	w8, w8, w19
    4738:	tst	w8, #0xc000
    473c:	b.ne	0x4828
    4740:	tst	w8, #0x30000
    4744:	b.ne	0x481c
    4748:	mov	w8, #0x1
    474c:	lsl	w8, w8, w19
    4750:	tst	w8, #0xc0000
    4754:	b.eq	0x4804
    4758:	mov	w19, #0x12
    475c:	b	0x4840
    4760:	adrp	x8, 12 ; 0x10000
    4764:	ldr	x0, [x8, #0x6f0] ; Objc class ref: bad class ref
    4768:	bl	0x6a54 ; symbol stub for: _objc_alloc
    476c:	adrp	x8, 12 ; 0x10000
    4770:	ldr	x3, [x8, #0x3a0]
    4774:	mov	x2, x20
    4778:	bl	0x6e20
    477c:	mov	x21, x0
    4780:	cmp	w19, #0x5
    4784:	mov	w8, #-0x2
    4788:	mov	w9, #-0x6
    478c:	csel	w8, w9, w8, hi
    4790:	add	w22, w8, w19
    4794:	mov	w8, #0x2
    4798:	cinc	x2, x8, hi
    479c:	bl	0x7220
    47a0:	adrp	x8, 3 ; 0x7000
    47a4:	add	x8, x8, #0x640
    47a8:	ldr	x2, [x8, w22, uxtw #3]
    47ac:	mov	x0, x21
    47b0:	bl	0x71c0
    47b4:	b	0x484c
    47b8:	adrp	x8, 12 ; 0x10000
    47bc:	ldr	x0, [x8, #0x6e0] ; Objc class ref: bad class ref
    47c0:	bl	0x6a54 ; symbol stub for: _objc_alloc
    47c4:	adrp	x8, 12 ; 0x10000
    47c8:	ldr	x3, [x8, #0x3a0]
    47cc:	mov	x2, x20
    47d0:	bl	0x6e20
    47d4:	mov	x21, x0
    47d8:	mov	w8, #0x2
    47dc:	mov	w9, #0x3
    47e0:	cmp	w19, #0xc
    47e4:	mov	w10, #0x4
    47e8:	cinc	x10, x10, ne
    47ec:	cmp	w19, #0x1
    47f0:	csel	x9, x9, x10, eq
    47f4:	cmp	w19, #0x0
    47f8:	csel	x2, x8, x9, eq
    47fc:	bl	0x7220
    4800:	b	0x484c
    4804:	sub	w8, w19, #0xa
    4808:	cmp	w8, #0x2
    480c:	b.hs	0x483c
    4810:	mov	w19, #0xa
    4814:	mov	w2, #0x2
    4818:	b	0x4844
    481c:	mov	w19, #0x10
    4820:	mov	w2, #0x4
    4824:	b	0x4844
    4828:	mov	w19, #0xe
    482c:	mov	w2, #0x3
    4830:	b	0x4844
    4834:	mov	x21, #0x0
    4838:	b	0x48b8
    483c:	mov	w19, #-0x1

; ===== sub_4840 =====
    4840:	mov	w2, #0x5

; ===== sub_4844 =====
    4844:	mov	x0, x21
    4848:	bl	0x71e0

; ===== sub_484c =====
    484c:	mov	x0, x21
    4850:	mov	x2, x20
    4854:	bl	0x71a0
    4858:	mov	x0, x21
    485c:	mov	w2, #0x0
    4860:	bl	0x7140
    4864:	mov	x0, x21
    4868:	mov	w2, #0x0
    486c:	bl	0x7160
    4870:	mov	x0, x21
    4874:	mov	w2, #0x0
    4878:	bl	0x7180
    487c:	adrp	x8, 12 ; 0x10000
    4880:	ldr	x0, [x8, #0x6f8] ; Objc class ref: bad class ref
    4884:	mov	x2, x19
    4888:	bl	0x6f80
    488c:	mov	x29, x29
    4890:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4894:	mov	x19, x0
    4898:	adrp	x1, 4 ; 0x8000
    489c:	add	x1, x1, #0x1e1 ; literal pool for: "TGInAppIndex"
    48a0:	mov	x0, x21
    48a4:	mov	x2, x19
    48a8:	mov	w3, #0x1
    48ac:	bl	0x6b20 ; symbol stub for: _objc_setAssociatedObject
    48b0:	mov	x0, x19
    48b4:	bl	0x6af0 ; symbol stub for: _objc_release

; ===== sub_48b8 =====
    48b8:	mov	x0, x21
    48bc:	ldp	x29, x30, [sp, #0x20]
    48c0:	ldp	x20, x19, [sp, #0x10]
    48c4:	ldp	x22, x21, [sp], #0x30
    48c8:	b	0x6a60 ; symbol stub for: _objc_autoreleaseReturnValue
    48cc:	sub	sp, sp, #0x160
    48d0:	stp	x28, x27, [sp, #0x100]
    48d4:	stp	x26, x25, [sp, #0x110]
    48d8:	stp	x24, x23, [sp, #0x120]
    48dc:	stp	x22, x21, [sp, #0x130]
    48e0:	stp	x20, x19, [sp, #0x140]
    48e4:	stp	x29, x30, [sp, #0x150]
    48e8:	add	x29, sp, #0x150
    48ec:	mov	x21, x3
    48f0:	mov	x19, x0
    48f4:	adrp	x8, 8 ; 0xc000
    48f8:	ldr	x8, [x8, #0x550] ; literal pool symbol address: ___stack_chk_guard
    48fc:	ldr	x8, [x8]
    4900:	stur	x8, [x29, #-0x60]
    4904:	mov	x0, x2
    4908:	bl	0x6afc ; symbol stub for: _objc_retain
    490c:	mov	x27, x0
    4910:	cbz	x0, 0x4ae8
    4914:	str	x19, [sp, #0x8]
    4918:	mov	x0, x27
    491c:	bl	0x4b2c
    4920:	cmp	w0, #0x0
    4924:	csel	x24, xzr, x21, ne
    4928:	stp	xzr, xzr, [x29, #-0x78]
    492c:	stur	wzr, [x29, #-0x68]
    4930:	movi.16b	v0, #0x0
    4934:	stp	q0, q0, [sp, #0x10]
    4938:	stp	q0, q0, [sp, #0x30]
    493c:	mov	x19, x27
    4940:	mov	x0, x27
    4944:	bl	0x6dc0
    4948:	mov	x29, x29
    494c:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4950:	mov	x22, x0
    4954:	bl	0x6cc0
    4958:	mov	x21, x0
    495c:	mov	x0, x22
    4960:	bl	0x6af0 ; symbol stub for: _objc_release
    4964:	add	x2, sp, #0x10
    4968:	add	x3, sp, #0x58
    496c:	mov	x0, x21
    4970:	mov	w4, #0x10
    4974:	bl	0x6d00
    4978:	cbz	x0, 0x4a48
    497c:	mov	x22, x0
    4980:	ldr	x8, [sp, #0x20]
    4984:	ldr	x26, [x8]
    4988:	mov	w27, #0x3f3
    498c:	mov	w28, #0x4
    4990:	mov	w25, #0x1
    4994:	mov	x20, #0x0
    4998:	ldr	x8, [sp, #0x20]
    499c:	ldr	x8, [x8]
    49a0:	cmp	x8, x26
    49a4:	b.eq	0x49b0
    49a8:	mov	x0, x21
    49ac:	bl	0x6a84 ; symbol stub for: _objc_enumerationMutation
    49b0:	ldr	x8, [sp, #0x18]
    49b4:	ldr	x23, [x8, x20, lsl #3]
    49b8:	mov	x0, x23
    49bc:	bl	0x4b90
    49c0:	tbnz	w0, #0x1f, 0x4a20
    49c4:	mov	w8, w0
    49c8:	sub	w9, w0, #0xa
    49cc:	cmp	w9, #0x9
    49d0:	b.hi	0x4a10
    49d4:	lsr	w10, w27, w9
    49d8:	tbz	w10, #0x0, 0x4a10
    49dc:	adrp	x10, 3 ; 0x7000
    49e0:	add	x10, x10, #0x660
    49e4:	ldr	w9, [x10, w9, uxtw #2]
    49e8:	lsl	x10, x28, x9
    49ec:	orr	x9, x9, #0x1
    49f0:	lsl	x9, x28, x9
    49f4:	orr	x9, x10, x9
    49f8:	tst	x9, x24
    49fc:	b.ne	0x4a18
    4a00:	mov	x0, x19
    4a04:	mov	x2, x23
    4a08:	bl	0x7080
    4a0c:	b	0x4a20
    4a10:	lsr	x9, x24, x8
    4a14:	tbz	w9, #0x2, 0x4a00
    4a18:	sub	x9, x29, #0x78
    4a1c:	strb	w25, [x9, x8]

; ===== sub_4a20 =====
    4a20:	add	x20, x20, #0x1
    4a24:	cmp	x22, x20
    4a28:	b.ne	0x4998
    4a2c:	add	x2, sp, #0x10
    4a30:	add	x3, sp, #0x58
    4a34:	mov	x0, x21
    4a38:	mov	w4, #0x10
    4a3c:	bl	0x6d00
    4a40:	mov	x22, x0
    4a44:	cbnz	x0, 0x4994
    4a48:	mov	x0, x21
    4a4c:	bl	0x6af0 ; symbol stub for: _objc_release
    4a50:	mov	x21, #0x0
    4a54:	sub	x28, x29, #0x78
    4a58:	mov	w23, #0x3f3
    4a5c:	mov	w25, #0x1
    4a60:	ldr	x26, [sp, #0x8]
    4a64:	mov	x27, x19
    4a68:	ldrb	w8, [x28, x21]
    4a6c:	tbnz	w8, #0x0, 0x4adc
    4a70:	lsr	x8, x24, x21
    4a74:	tbz	w8, #0x2, 0x4adc
    4a78:	sub	x8, x21, #0xa
    4a7c:	cmp	w8, #0x9
    4a80:	b.hi	0x4aa4
    4a84:	lsr	w9, w23, w8
    4a88:	tbz	w9, #0x0, 0x4aa4
    4a8c:	adrp	x9, 3 ; 0x7000
    4a90:	add	x9, x9, #0x660
    4a94:	ldr	w20, [x9, w8, uxtw #2]
    4a98:	ldrb	w8, [x28, x20]
    4a9c:	tbz	w8, #0x0, 0x4aa8
    4aa0:	b	0x4adc
    4aa4:	mov	x20, x21
    4aa8:	mov	x0, x26
    4aac:	mov	x2, x21
    4ab0:	bl	0x7020
    4ab4:	mov	x29, x29
    4ab8:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4abc:	mov	x22, x0
    4ac0:	cbz	x0, 0x4ad4
    4ac4:	mov	x0, x27
    4ac8:	mov	x2, x22
    4acc:	bl	0x6b80
    4ad0:	strb	w25, [x28, w20, sxtw]
    4ad4:	mov	x0, x22
    4ad8:	bl	0x6af0 ; symbol stub for: _objc_release

; ===== sub_4adc =====
    4adc:	add	x21, x21, #0x1
    4ae0:	cmp	x21, #0x14
    4ae4:	b.ne	0x4a68
    4ae8:	mov	x0, x27
    4aec:	bl	0x6af0 ; symbol stub for: _objc_release
    4af0:	ldur	x8, [x29, #-0x60]
    4af4:	adrp	x9, 8 ; 0xc000
    4af8:	ldr	x9, [x9, #0x550] ; literal pool symbol address: ___stack_chk_guard
    4afc:	ldr	x9, [x9]
    4b00:	cmp	x9, x8
    4b04:	b.ne	0x4b28
    4b08:	ldp	x29, x30, [sp, #0x150]
    4b0c:	ldp	x20, x19, [sp, #0x140]
    4b10:	ldp	x22, x21, [sp, #0x130]
    4b14:	ldp	x24, x23, [sp, #0x120]
    4b18:	ldp	x26, x25, [sp, #0x110]
    4b1c:	ldp	x28, x27, [sp, #0x100]
    4b20:	add	sp, sp, #0x160
    4b24:	ret
    4b28:	bl	0x69dc ; symbol stub for: ___stack_chk_fail

; ===== sub_4b2c =====
    4b2c:	stp	x20, x19, [sp, #-0x20]!
    4b30:	stp	x29, x30, [sp, #0x10]
    4b34:	add	x29, sp, #0x10
    4b38:	bl	0x6ac0 ; symbol stub for: _objc_opt_class
    4b3c:	bl	0x69c4 ; symbol stub for: _NSStringFromClass
    4b40:	mov	x29, x29
    4b44:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4b48:	mov	x19, x0
    4b4c:	adrp	x2, 8 ; 0xc000
    4b50:	add	x2, x2, #0x1c0 ; "Keyboard"
    4b54:	bl	0x6ca0
    4b58:	tbz	w0, #0x0, 0x4b64
    4b5c:	mov	w20, #0x1
    4b60:	b	0x4b78
    4b64:	adrp	x2, 8 ; 0xc000
    4b68:	add	x2, x2, #0x1e0 ; "TextEffects"
    4b6c:	mov	x0, x19
    4b70:	bl	0x6ca0
    4b74:	mov	x20, x0

; ===== sub_4b78 =====
    4b78:	mov	x0, x19
    4b7c:	bl	0x6af0 ; symbol stub for: _objc_release
    4b80:	mov	x0, x20
    4b84:	ldp	x29, x30, [sp, #0x10]
    4b88:	ldp	x20, x19, [sp], #0x20
    4b8c:	ret

; ===== sub_4b90 =====
    4b90:	stp	x20, x19, [sp, #-0x20]!
    4b94:	stp	x29, x30, [sp, #0x10]
    4b98:	add	x29, sp, #0x10
    4b9c:	adrp	x1, 4 ; 0x8000
    4ba0:	add	x1, x1, #0x1e1 ; literal pool for: "TGInAppIndex"
    4ba4:	bl	0x6a90 ; symbol stub for: _objc_getAssociatedObject
    4ba8:	mov	x29, x29
    4bac:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4bb0:	mov	x19, x0
    4bb4:	cbz	x0, 0x4bc8
    4bb8:	mov	x0, x19
    4bbc:	bl	0x6e40
    4bc0:	mov	x20, x0
    4bc4:	b	0x4bcc
    4bc8:	mov	w20, #-0x1

; ===== sub_4bcc =====
    4bcc:	mov	x0, x19
    4bd0:	bl	0x6af0 ; symbol stub for: _objc_release
    4bd4:	mov	x0, x20
    4bd8:	ldp	x29, x30, [sp, #0x10]
    4bdc:	ldp	x20, x19, [sp], #0x20
    4be0:	ret
    4be4:	stp	x28, x27, [sp, #-0x60]!
    4be8:	stp	x26, x25, [sp, #0x10]
    4bec:	stp	x24, x23, [sp, #0x20]
    4bf0:	stp	x22, x21, [sp, #0x30]
    4bf4:	stp	x20, x19, [sp, #0x40]
    4bf8:	stp	x29, x30, [sp, #0x50]
    4bfc:	add	x29, sp, #0x50
    4c00:	sub	sp, sp, #0x1a0
    4c04:	mov	x19, x0
    4c08:	adrp	x8, 8 ; 0xc000
    4c0c:	ldr	x8, [x8, #0x550] ; literal pool symbol address: ___stack_chk_guard
    4c10:	ldr	x8, [x8]
    4c14:	stur	x8, [x29, #-0x60]
    4c18:	bl	0x4dd0
    4c1c:	mov	x20, x0
    4c20:	movi.16b	v0, #0x0
    4c24:	stp	q0, q0, [sp, #0x50]
    4c28:	stp	q0, q0, [sp, #0x70]
    4c2c:	adrp	x8, 12 ; 0x10000
    4c30:	ldr	x0, [x8, #0x700] ; Objc class ref: bad class ref
    4c34:	bl	0x7280
    4c38:	mov	x29, x29
    4c3c:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4c40:	mov	x22, x0
    4c44:	bl	0x6c80
    4c48:	mov	x29, x29
    4c4c:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4c50:	mov	x21, x0
    4c54:	mov	x0, x22
    4c58:	bl	0x6af0 ; symbol stub for: _objc_release
    4c5c:	add	x2, sp, #0x50
    4c60:	sub	x3, x29, #0xe0
    4c64:	str	x21, [sp, #0x8]
    4c68:	mov	x0, x21
    4c6c:	mov	w4, #0x10
    4c70:	bl	0x6d00
    4c74:	cbz	x0, 0x4d8c
    4c78:	mov	x22, x0
    4c7c:	ldr	x8, [sp, #0x60]
    4c80:	ldr	x25, [x8]
    4c84:	adrp	x26, 12 ; 0x10000
    4c88:	mov	x27, #0x0
    4c8c:	ldr	x8, [sp, #0x60]
    4c90:	ldr	x8, [x8]
    4c94:	cmp	x8, x25
    4c98:	b.eq	0x4ca4
    4c9c:	ldr	x0, [sp, #0x8]
    4ca0:	bl	0x6a84 ; symbol stub for: _objc_enumerationMutation
    4ca4:	ldr	x8, [sp, #0x58]
    4ca8:	ldr	x23, [x8, x27, lsl #3]
    4cac:	ldr	x0, [x26, #0x708]
    4cb0:	bl	0x6ac0 ; symbol stub for: _objc_opt_class
    4cb4:	mov	x1, x0
    4cb8:	mov	x0, x23
    4cbc:	bl	0x6acc ; symbol stub for: _objc_opt_isKindOfClass
    4cc0:	tbz	w0, #0x0, 0x4d64
    4cc4:	movi.16b	v0, #0x0
    4cc8:	stp	q0, q0, [sp, #0x30]
    4ccc:	stp	q0, q0, [sp, #0x10]
    4cd0:	mov	x0, x23
    4cd4:	bl	0x7380
    4cd8:	mov	x29, x29
    4cdc:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4ce0:	mov	x23, x0
    4ce4:	add	x2, sp, #0x10
    4ce8:	add	x3, sp, #0x90
    4cec:	mov	w4, #0x10
    4cf0:	bl	0x6d00
    4cf4:	cbz	x0, 0x4d5c
    4cf8:	mov	x24, x0
    4cfc:	ldr	x8, [sp, #0x20]
    4d00:	ldr	x28, [x8]
    4d04:	mov	x21, #0x0
    4d08:	ldr	x8, [sp, #0x20]
    4d0c:	ldr	x8, [x8]
    4d10:	cmp	x8, x28
    4d14:	b.eq	0x4d20
    4d18:	mov	x0, x23
    4d1c:	bl	0x6a84 ; symbol stub for: _objc_enumerationMutation
    4d20:	ldr	x8, [sp, #0x18]
    4d24:	ldr	x2, [x8, x21, lsl #3]
    4d28:	mov	x0, x19
    4d2c:	mov	x3, x20
    4d30:	bl	0x7040
    4d34:	add	x21, x21, #0x1
    4d38:	cmp	x24, x21
    4d3c:	b.ne	0x4d08
    4d40:	add	x2, sp, #0x10
    4d44:	add	x3, sp, #0x90
    4d48:	mov	x0, x23
    4d4c:	mov	w4, #0x10
    4d50:	bl	0x6d00
    4d54:	mov	x24, x0
    4d58:	cbnz	x0, 0x4d04
    4d5c:	mov	x0, x23
    4d60:	bl	0x6af0 ; symbol stub for: _objc_release
    4d64:	add	x27, x27, #0x1
    4d68:	cmp	x27, x22
    4d6c:	b.ne	0x4c8c
    4d70:	add	x2, sp, #0x50
    4d74:	sub	x3, x29, #0xe0
    4d78:	ldr	x0, [sp, #0x8]
    4d7c:	mov	w4, #0x10
    4d80:	bl	0x6d00
    4d84:	mov	x22, x0
    4d88:	cbnz	x0, 0x4c88
    4d8c:	ldr	x0, [sp, #0x8]
    4d90:	bl	0x6af0 ; symbol stub for: _objc_release
    4d94:	ldur	x8, [x29, #-0x60]
    4d98:	adrp	x9, 8 ; 0xc000
    4d9c:	ldr	x9, [x9, #0x550] ; literal pool symbol address: ___stack_chk_guard
    4da0:	ldr	x9, [x9]
    4da4:	cmp	x9, x8
    4da8:	b.ne	0x4dcc
    4dac:	add	sp, sp, #0x1a0
    4db0:	ldp	x29, x30, [sp, #0x50]
    4db4:	ldp	x20, x19, [sp, #0x40]
    4db8:	ldp	x22, x21, [sp, #0x30]
    4dbc:	ldp	x24, x23, [sp, #0x20]
    4dc0:	ldp	x26, x25, [sp, #0x10]
    4dc4:	ldp	x28, x27, [sp], #0x60
    4dc8:	ret
    4dcc:	bl	0x69dc ; symbol stub for: ___stack_chk_fail

; ===== sub_4dd0 =====
    4dd0:	sub	sp, sp, #0x30
    4dd4:	stp	x20, x19, [sp, #0x10]
    4dd8:	stp	x29, x30, [sp, #0x20]
    4ddc:	add	x29, sp, #0x20
    4de0:	adrp	x19, 12 ; 0x10000
    4de4:	ldr	w0, [x19, #0x8c8]
    4de8:	cmn	w0, #0x1
    4dec:	b.eq	0x4e04
    4df0:	str	xzr, [sp, #0x8]
    4df4:	add	x1, sp, #0x8
    4df8:	bl	0x6a18 ; symbol stub for: _notify_get_state
    4dfc:	ldr	x0, [sp, #0x8]
    4e00:	b	0x4e28
    4e04:	adrp	x0, 4 ; 0x8000
    4e08:	add	x0, x0, #0x1a8 ; literal pool for: "com.johndie.triggr/relay-wanted"
    4e0c:	adrp	x1, 12 ; 0x10000
    4e10:	add	x1, x1, #0x8c8
    4e14:	bl	0x6a30 ; symbol stub for: _notify_register_check
    4e18:	cbz	w0, 0x4e38
    4e1c:	mov	x0, #0x0
    4e20:	mov	w8, #-0x1
    4e24:	str	w8, [x19, #0x8c8]

; ===== sub_4e28 =====
    4e28:	ldp	x29, x30, [sp, #0x20]
    4e2c:	ldp	x20, x19, [sp, #0x10]
    4e30:	add	sp, sp, #0x30
    4e34:	ret
    4e38:	ldr	w0, [x19, #0x8c8]
    4e3c:	str	xzr, [sp, #0x8]
    4e40:	cmn	w0, #0x1
    4e44:	b.ne	0x4df4
    4e48:	mov	x0, #0x0
    4e4c:	b	0x4e28
    4e50:	stp	d9, d8, [sp, #-0x40]!
    4e54:	stp	x22, x21, [sp, #0x10]
    4e58:	stp	x20, x19, [sp, #0x20]
    4e5c:	stp	x29, x30, [sp, #0x30]
    4e60:	add	x29, sp, #0x30
    4e64:	mov	x0, x2
    4e68:	bl	0x6afc ; symbol stub for: _objc_retain
    4e6c:	mov	x19, x0
    4e70:	bl	0x4b90
    4e74:	mov	x20, x0
    4e78:	mov	w22, #0x1
    4e7c:	cmp	w0, #0x13
    4e80:	b.hi	0x4eb4
    4e84:	lsl	w8, w22, w20
    4e88:	tst	w8, #0xc000
    4e8c:	b.ne	0x4ed4
    4e90:	mov	w8, #0x1
    4e94:	lsl	w8, w8, w20
    4e98:	tst	w8, #0x30000
    4e9c:	b.ne	0x4ec8
    4ea0:	tst	w8, #0xc0000
    4ea4:	b.eq	0x4eb4
    4ea8:	mov	w22, #0x0
    4eac:	mov	w20, #0x12
    4eb0:	b	0x4edc
    4eb4:	sub	w8, w20, #0xa
    4eb8:	cmp	w8, #0x2
    4ebc:	b.hs	0x4fcc
    4ec0:	mov	w20, #0xa
    4ec4:	b	0x4edc
    4ec8:	mov	w22, #0x0
    4ecc:	mov	w20, #0x10
    4ed0:	b	0x4edc
    4ed4:	mov	w22, #0x0
    4ed8:	mov	w20, #0xe

; ===== sub_4edc =====
    4edc:	adrp	x8, 12 ; 0x10000
    4ee0:	ldr	x0, [x8, #0x6e8] ; Objc class ref: bad class ref
    4ee4:	bl	0x6ac0 ; symbol stub for: _objc_opt_class
    4ee8:	mov	x1, x0
    4eec:	mov	x0, x19
    4ef0:	bl	0x6acc ; symbol stub for: _objc_opt_isKindOfClass
    4ef4:	tst	w0, #0x1
    4ef8:	csel	x0, x19, xzr, ne
    4efc:	bl	0x6afc ; symbol stub for: _objc_retain
    4f00:	mov	x21, x0
    4f04:	cbz	x0, 0x4fac
    4f08:	mov	x0, x19
    4f0c:	bl	0x6da0
    4f10:	tbnz	w0, #0x0, 0x4fac
    4f14:	mov	x0, x19
    4f18:	bl	0x72c0
    4f1c:	cmp	x0, #0x2
    4f20:	b.eq	0x4f34
    4f24:	mov	x0, x19
    4f28:	bl	0x72c0
    4f2c:	cmp	x0, #0x3
    4f30:	b.ne	0x4fac
    4f34:	cmp	w22, #0x0
    4f38:	adrp	x8, 3 ; 0x7000
    4f3c:	ldr	d0, [x8, #0x620]
    4f40:	adrp	x8, 3 ; 0x7000
    4f44:	ldr	d1, [x8, #0x628]
    4f48:	fcsel	d9, d1, d0, ne
    4f4c:	adrp	x8, 3 ; 0x7000
    4f50:	ldr	d0, [x8, #0x630]
    4f54:	fmov	d1, #1.50000000
    4f58:	fcsel	d8, d0, d1, ne
    4f5c:	bl	0x4dd0
    4f60:	mov	x22, x0
    4f64:	mov	x0, x19
    4f68:	bl	0x70e0
    4f6c:	fcmp	d0, d9
    4f70:	b.pl	0x4f7c
    4f74:	lsr	x8, x22, x20
    4f78:	tbnz	w8, #0x2, 0x4f98
    4f7c:	mov	x0, x19
    4f80:	bl	0x70e0
    4f84:	fcmp	d0, d8
    4f88:	b.le	0x4fac
    4f8c:	orr	w20, w20, #0x1
    4f90:	lsr	x8, x22, x20
    4f94:	tbz	w8, #0x2, 0x4fac
    4f98:	mov	x0, x19
    4f9c:	mov	w2, #0x1
    4fa0:	bl	0x7200
    4fa4:	mov	x0, x20
    4fa8:	bl	0x4fe8
    4fac:	mov	x0, x21
    4fb0:	bl	0x6af0 ; symbol stub for: _objc_release

; ===== sub_4fb4 =====
    4fb4:	mov	x0, x19
    4fb8:	ldp	x29, x30, [sp, #0x30]
    4fbc:	ldp	x20, x19, [sp, #0x20]
    4fc0:	ldp	x22, x21, [sp, #0x10]
    4fc4:	ldp	d9, d8, [sp], #0x40
    4fc8:	b	0x6af0 ; symbol stub for: _objc_release
    4fcc:	mov	x0, x19
    4fd0:	bl	0x72c0
    4fd4:	cmp	x0, #0x3
    4fd8:	b.ne	0x4fb4
    4fdc:	mov	x0, x20
    4fe0:	bl	0x4fe8
    4fe4:	b	0x4fb4

; ===== sub_4fe8 =====
    4fe8:	stp	x20, x19, [sp, #-0x20]!
    4fec:	stp	x29, x30, [sp, #0x10]
    4ff0:	add	x29, sp, #0x10
    4ff4:	mov	x19, x0
    4ff8:	adrp	x20, 12 ; 0x10000
    4ffc:	ldr	w8, [x20, #0x8cc]
    5000:	cmn	w8, #0x1
    5004:	b.eq	0x5034
    5008:	bl	0x4dd0
    500c:	lsr	x8, x0, x19
    5010:	tbz	w8, #0x2, 0x5054
    5014:	ldr	w0, [x20, #0x8cc]
    5018:	sxtw	x1, w19
    501c:	bl	0x6a48 ; symbol stub for: _notify_set_state
    5020:	adrp	x0, 3 ; 0x8000
    5024:	add	x0, x0, #0x203 ; literal pool for: "com.johndie.triggr/inapp"
    5028:	ldp	x29, x30, [sp, #0x10]
    502c:	ldp	x20, x19, [sp], #0x20
    5030:	b	0x6a24 ; symbol stub for: _notify_post
    5034:	adrp	x0, 3 ; 0x8000
    5038:	add	x0, x0, #0x203 ; literal pool for: "com.johndie.triggr/inapp"
    503c:	adrp	x1, 11 ; 0x10000
    5040:	add	x1, x1, #0x8cc
    5044:	bl	0x6a30 ; symbol stub for: _notify_register_check
    5048:	cbz	w0, 0x5060
    504c:	mov	w8, #-0x1
    5050:	str	w8, [x20, #0x8cc]

; ===== sub_5054 =====
    5054:	ldp	x29, x30, [sp, #0x10]
    5058:	ldp	x20, x19, [sp], #0x20
    505c:	ret
    5060:	ldr	w8, [x20, #0x8cc]
    5064:	cmn	w8, #0x1
    5068:	b.ne	0x5008
    506c:	b	0x5054
    5070:	mov	w0, #0x1
    5074:	ret
    5078:	stp	x24, x23, [sp, #-0x40]!
    507c:	stp	x22, x21, [sp, #0x10]
    5080:	stp	x20, x19, [sp, #0x20]
    5084:	stp	x29, x30, [sp, #0x30]
    5088:	add	x29, sp, #0x30
    508c:	mov	x0, x3
    5090:	bl	0x6afc ; symbol stub for: _objc_retain
    5094:	bl	0x6afc ; symbol stub for: _objc_retain
    5098:	mov	x19, x0
    509c:	bl	0x7360
    50a0:	mov	x29, x29
    50a4:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    50a8:	cbz	x0, 0x50e0
    50ac:	mov	x20, x0
    50b0:	mov	x0, x19
    50b4:	bl	0x7360
    50b8:	mov	x29, x29
    50bc:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    50c0:	mov	x21, x0
    50c4:	bl	0x4b2c
    50c8:	mov	x22, x0
    50cc:	mov	x0, x21
    50d0:	bl	0x6af0 ; symbol stub for: _objc_release
    50d4:	mov	x0, x20
    50d8:	bl	0x6af0 ; symbol stub for: _objc_release
    50dc:	tbnz	w22, #0x0, 0x5198
    50e0:	mov	x0, x19
    50e4:	bl	0x7320
    50e8:	mov	x29, x29
    50ec:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    50f0:	cbz	x0, 0x5180
    50f4:	mov	x20, x0
    50f8:	adrp	x21, 7 ; 0xc000
    50fc:	add	x21, x21, #0x200 ; "UIKB"
    5100:	adrp	x22, 7 ; 0xc000
    5104:	add	x22, x22, #0x1c0 ; "Keyboard"
    5108:	adrp	x23, 7 ; 0xc000
    510c:	add	x23, x23, #0x220 ; "UIInputSet"
    5110:	mov	x0, x20
    5114:	bl	0x6ac0 ; symbol stub for: _objc_opt_class
    5118:	bl	0x69c4 ; symbol stub for: _NSStringFromClass
    511c:	mov	x29, x29
    5120:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5124:	mov	x24, x0
    5128:	mov	x2, x21
    512c:	bl	0x6de0
    5130:	tbnz	w0, #0x0, 0x5188
    5134:	mov	x0, x24
    5138:	mov	x2, x22
    513c:	bl	0x6ca0
    5140:	tbnz	w0, #0x0, 0x5188
    5144:	mov	x0, x24
    5148:	mov	x2, x23
    514c:	bl	0x6de0
    5150:	tbnz	w0, #0x0, 0x5188
    5154:	mov	x0, x24
    5158:	bl	0x6af0 ; symbol stub for: _objc_release
    515c:	mov	x0, x20
    5160:	bl	0x7300
    5164:	mov	x29, x29
    5168:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    516c:	mov	x24, x0
    5170:	mov	x0, x20
    5174:	bl	0x6af0 ; symbol stub for: _objc_release
    5178:	mov	x20, x24
    517c:	cbnz	x24, 0x5110
    5180:	mov	w20, #0x1
    5184:	b	0x519c
    5188:	mov	x0, x24
    518c:	bl	0x6af0 ; symbol stub for: _objc_release
    5190:	mov	x0, x20
    5194:	bl	0x6af0 ; symbol stub for: _objc_release
    5198:	mov	w20, #0x0

; ===== sub_519c =====
    519c:	mov	x0, x19
    51a0:	bl	0x6af0 ; symbol stub for: _objc_release
    51a4:	mov	x0, x19
    51a8:	bl	0x6af0 ; symbol stub for: _objc_release
    51ac:	mov	x0, x20
    51b0:	ldp	x29, x30, [sp, #0x30]
    51b4:	ldp	x20, x19, [sp, #0x20]
    51b8:	ldp	x22, x21, [sp, #0x10]
    51bc:	ldp	x24, x23, [sp], #0x40
    51c0:	ret
    51c4:	stp	x20, x19, [sp, #-0x20]!
    51c8:	stp	x29, x30, [sp, #0x10]
    51cc:	add	x29, sp, #0x10
    51d0:	mov	x0, x2
    51d4:	bl	0x4b90
    51d8:	mov	x19, x0
    51dc:	sub	w8, w0, #0xa
    51e0:	cmp	w8, #0x9
    51e4:	b.hi	0x5214
    51e8:	mov	w9, #0x3f3
    51ec:	lsr	w9, w9, w8
    51f0:	tbz	w9, #0x0, 0x5214
    51f4:	adrp	x9, 2 ; 0x7000
    51f8:	add	x9, x9, #0x660
    51fc:	ldr	w19, [x9, w8, uxtw #2]
    5200:	bl	0x4dd0
    5204:	lsr	x8, x0, x19
    5208:	tbz	w8, #0x2, 0x5230
    520c:	mov	w0, #0x1
    5210:	b	0x5240
    5214:	tbnz	w19, #0x1f, 0x5228
    5218:	bl	0x4dd0
    521c:	lsr	x8, x0, x19
    5220:	ubfx	x0, x8, #2, #1
    5224:	b	0x5240
    5228:	mov	w0, #0x0
    522c:	b	0x5240
    5230:	bl	0x4dd0
    5234:	orr	x8, x19, #0x1
    5238:	lsr	x8, x0, x8
    523c:	ubfx	x0, x8, #2, #1

; ===== sub_5240 =====
    5240:	ldp	x29, x30, [sp, #0x10]
    5244:	ldp	x20, x19, [sp], #0x20
    5248:	ret
    524c:	sub	sp, sp, #0xa0
    5250:	stp	d9, d8, [sp, #0x60]
    5254:	stp	x22, x21, [sp, #0x70]
    5258:	stp	x20, x19, [sp, #0x80]
    525c:	stp	x29, x30, [sp, #0x90]
    5260:	add	x29, sp, #0x90
    5264:	adrp	x8, 11 ; 0x10000
    5268:	ldr	x0, [x8, #0x710] ; Objc class ref: bad class ref
    526c:	bl	0x6f20
    5270:	mov	x29, x29
    5274:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5278:	mov	x19, x0
    527c:	bl	0x6c40
    5280:	mov	x29, x29
    5284:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5288:	mov	x20, x0
    528c:	adrp	x2, 7 ; 0xc000
    5290:	add	x2, x2, #0x140 ; ".app"
    5294:	bl	0x6e00
    5298:	mov	x21, x0
    529c:	mov	x0, x20
    52a0:	bl	0x6af0 ; symbol stub for: _objc_release
    52a4:	cbz	w21, 0x5518
    52a8:	adrp	x0, 3 ; 0x8000
    52ac:	add	x0, x0, #0xfb ; literal pool for: "UIApplication"
    52b0:	bl	0x6a9c ; symbol stub for: _objc_getClass
    52b4:	adrp	x8, 11 ; 0x10000
    52b8:	ldr	x1, [x8, #0x3a8]
    52bc:	adrp	x2, 0 ; 0x5000
    52c0:	add	x2, x2, #0x538
    52c4:	adrp	x3, 11 ; 0x10000
    52c8:	add	x3, x3, #0x8e0
    52cc:	bl	0x69a0 ; symbol stub for: _MSHookMessageEx
    52d0:	mov	x0, x19
    52d4:	bl	0x6c20
    52d8:	mov	x29, x29
    52dc:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    52e0:	mov	x20, x0
    52e4:	adrp	x2, 7 ; 0xc000
    52e8:	add	x2, x2, #0x160 ; "com.apple.springboard"
    52ec:	bl	0x6e80
    52f0:	mov	x21, x0
    52f4:	mov	x0, x20
    52f8:	bl	0x6af0 ; symbol stub for: _objc_release
    52fc:	tbnz	w21, #0x0, 0x5518
    5300:	adrp	x0, 3 ; 0x8000
    5304:	add	x0, x0, #0x11f ; literal pool for: "UIStatusBarManager"
    5308:	bl	0x6a9c ; symbol stub for: _objc_getClass
    530c:	adrp	x8, 11 ; 0x10000
    5310:	ldr	x1, [x8, #0x3b0]
    5314:	adrp	x2, 0 ; 0x5000
    5318:	add	x2, x2, #0x584
    531c:	adrp	x3, 11 ; 0x10000
    5320:	add	x3, x3, #0x8e8
    5324:	bl	0x69a0 ; symbol stub for: _MSHookMessageEx
    5328:	adrp	x0, 3 ; 0x8000
    532c:	add	x0, x0, #0x132 ; literal pool for: "com.johndie.triggr/back"
    5330:	adrp	x2, 7 ; 0xc000
    5334:	ldr	x2, [x2, #0x558] ; literal pool symbol address: __dispatch_main_q
    5338:	adrp	x3, 7 ; 0xc000
    533c:	add	x3, x3, #0x20
    5340:	sub	x1, x29, #0x34
    5344:	bl	0x6a3c ; symbol stub for: _notify_register_dispatch
    5348:	mov	x0, x19
    534c:	bl	0x6c20
    5350:	mov	x29, x29
    5354:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5358:	mov	x20, x0
    535c:	adrp	x2, 7 ; 0xc000
    5360:	add	x2, x2, #0x180 ; "com.apple.camera"
    5364:	bl	0x6e80
    5368:	tbz	w0, #0x0, 0x5374
    536c:	mov	w21, #0x1
    5370:	b	0x53a8
    5374:	mov	x0, x19
    5378:	bl	0x6c20
    537c:	mov	x29, x29
    5380:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5384:	mov	x21, x0
    5388:	adrp	x2, 7 ; 0xc000
    538c:	add	x2, x2, #0x1a0 ; "com.apple.VoiceMemos"
    5390:	bl	0x6e80
    5394:	mov	x22, x0
    5398:	mov	x0, x21
    539c:	bl	0x6af0 ; symbol stub for: _objc_release
    53a0:	tbz	w22, #0x0, 0x5434
    53a4:	mov	w21, #0x2

; ===== sub_53a8 =====
    53a8:	mov	x0, x20
    53ac:	bl	0x6af0 ; symbol stub for: _objc_release
    53b0:	adrp	x22, 7 ; 0xc000
    53b4:	ldr	x22, [x22, #0x538] ; literal pool symbol address: __NSConcreteStackBlock
    53b8:	str	x22, [sp, #0x30]
    53bc:	adrp	x8, 2 ; 0x7000
    53c0:	ldr	d8, [x8, #0x638]
    53c4:	adrp	x8, 0 ; 0x5000
    53c8:	add	x8, x8, #0xa88
    53cc:	str	d8, [sp, #0x38]
    53d0:	adrp	x9, 7 ; 0xc000
    53d4:	add	x9, x9, #0x40
    53d8:	stp	x8, x9, [sp, #0x40]
    53dc:	str	x21, [sp, #0x50]
    53e0:	adrp	x0, 3 ; 0x8000
    53e4:	add	x0, x0, #0x179 ; literal pool for: "com.johndie.triggr/app-request"
    53e8:	adrp	x20, 7 ; 0xc000
    53ec:	ldr	x20, [x20, #0x558] ; literal pool symbol address: __dispatch_main_q
    53f0:	sub	x1, x29, #0x38
    53f4:	add	x3, sp, #0x30
    53f8:	mov	x2, x20
    53fc:	bl	0x6a3c ; symbol stub for: _notify_register_dispatch
    5400:	mov	x0, x20
    5404:	bl	0x6af0 ; symbol stub for: _objc_release
    5408:	str	x22, [sp, #0x8]
    540c:	adrp	x8, 0 ; 0x5000
    5410:	add	x8, x8, #0xb48
    5414:	str	d8, [sp, #0x10]
    5418:	adrp	x9, 7 ; 0xc000
    541c:	add	x9, x9, #0x60
    5420:	stp	x8, x9, [sp, #0x18]
    5424:	str	x21, [sp, #0x28]
    5428:	add	x1, sp, #0x8
    542c:	mov	x0, x20
    5430:	bl	0x69f4 ; symbol stub for: _dispatch_async
    5434:	mov	x0, x20
    5438:	bl	0x6af0 ; symbol stub for: _objc_release
    543c:	adrp	x0, 3 ; 0x8000
    5440:	add	x0, x0, #0x19f ; literal pool for: "UIWindow"
    5444:	bl	0x6a9c ; symbol stub for: _objc_getClass
    5448:	adrp	x8, 11 ; 0x10000
    544c:	ldr	x1, [x8, #0x3b8]
    5450:	adrp	x2, 0 ; 0x5000
    5454:	add	x2, x2, #0xb50
    5458:	adrp	x3, 11 ; 0x10000
    545c:	add	x3, x3, #0x8f0
    5460:	bl	0x69a0 ; symbol stub for: _MSHookMessageEx
    5464:	adrp	x0, 3 ; 0x8000
    5468:	add	x0, x0, #0x1a8 ; literal pool for: "com.johndie.triggr/relay-wanted"
    546c:	adrp	x20, 7 ; 0xc000
    5470:	ldr	x20, [x20, #0x558] ; literal pool symbol address: __dispatch_main_q
    5474:	adrp	x3, 7 ; 0xc000
    5478:	add	x3, x3, #0x80
    547c:	sub	x1, x29, #0x38
    5480:	mov	x2, x20
    5484:	bl	0x6a3c ; symbol stub for: _notify_register_dispatch
    5488:	mov	x0, x20
    548c:	bl	0x6af0 ; symbol stub for: _objc_release
    5490:	adrp	x1, 7 ; 0xc000
    5494:	add	x1, x1, #0xc0
    5498:	mov	x0, x20
    549c:	bl	0x69f4 ; symbol stub for: _dispatch_async
    54a0:	mov	x0, x20
    54a4:	bl	0x6af0 ; symbol stub for: _objc_release
    54a8:	adrp	x8, 11 ; 0x10000
    54ac:	ldr	x0, [x8, #0x718] ; Objc class ref: bad class ref
    54b0:	bl	0x6d20
    54b4:	mov	x29, x29
    54b8:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    54bc:	mov	x20, x0
    54c0:	adrp	x8, 7 ; 0xc000
    54c4:	ldr	x8, [x8, #0x530] ; literal pool symbol address: _UIApplicationWillEnterForegroundNotification
    54c8:	ldr	x21, [x8]
    54cc:	adrp	x8, 11 ; 0x10000
    54d0:	ldr	x0, [x8, #0x720] ; Objc class ref: bad class ref
    54d4:	bl	0x6f40
    54d8:	mov	x29, x29
    54dc:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    54e0:	mov	x22, x0
    54e4:	adrp	x5, 7 ; 0xc000
    54e8:	add	x5, x5, #0x100
    54ec:	mov	x0, x20
    54f0:	mov	x2, x21
    54f4:	mov	x3, #0x0
    54f8:	mov	x4, x22
    54fc:	bl	0x6bc0
    5500:	mov	x29, x29
    5504:	bl	0x6b2c ; symbol stub for: _objc_unsafeClaimAutoreleasedReturnValue
    5508:	mov	x0, x22
    550c:	bl	0x6af0 ; symbol stub for: _objc_release
    5510:	mov	x0, x20
    5514:	bl	0x6af0 ; symbol stub for: _objc_release
    5518:	mov	x0, x19
    551c:	bl	0x6af0 ; symbol stub for: _objc_release
    5520:	ldp	x29, x30, [sp, #0x90]
    5524:	ldp	x20, x19, [sp, #0x80]
    5528:	ldp	x22, x21, [sp, #0x70]
    552c:	ldp	d9, d8, [sp, #0x60]
    5530:	add	sp, sp, #0xa0
    5534:	ret
    5538:	stp	x20, x19, [sp, #-0x20]!
    553c:	stp	x29, x30, [sp, #0x10]
    5540:	add	x29, sp, #0x10
    5544:	mov	x19, x2
    5548:	adrp	x8, 11 ; 0x10000
    554c:	ldr	x8, [x8, #0x8e0]
    5550:	blr	x8
    5554:	cmp	x19, #0x1
    5558:	b.ne	0x5564
    555c:	bl	0x4dd0
    5560:	tbnz	w0, #0x1, 0x5570
    5564:	ldp	x29, x30, [sp, #0x10]
    5568:	ldp	x20, x19, [sp], #0x20
    556c:	ret
    5570:	adrp	x0, 3 ; 0x8000
    5574:	add	x0, x0, #0x22c ; literal pool for: "com.johndie.triggr/shake"
    5578:	ldp	x29, x30, [sp, #0x10]
    557c:	ldp	x20, x19, [sp], #0x20
    5580:	b	0x6a24 ; symbol stub for: _notify_post
    5584:	stp	d9, d8, [sp, #-0x40]!
    5588:	stp	x22, x21, [sp, #0x10]
    558c:	stp	x20, x19, [sp, #0x20]
    5590:	stp	x29, x30, [sp, #0x30]
    5594:	add	x29, sp, #0x30
    5598:	mov	x20, x1
    559c:	mov	x21, x0
    55a0:	mov	x0, x2
    55a4:	bl	0x6afc ; symbol stub for: _objc_retain
    55a8:	mov	x19, x0
    55ac:	adrp	x8, 11 ; 0x10000
    55b0:	ldr	x8, [x8, #0x8e8]
    55b4:	mov	x0, x21
    55b8:	mov	x1, x20
    55bc:	mov	x2, x19
    55c0:	blr	x8
    55c4:	mov	x0, x21
    55c8:	bl	0x72e0
    55cc:	mov.16b	v8, v2
    55d0:	adrp	x8, 11 ; 0x10000
    55d4:	ldr	x21, [x8, #0x3c0]
    55d8:	mov	x0, x19
    55dc:	mov	x1, x21
    55e0:	bl	0x6ae4 ; symbol stub for: _objc_opt_respondsToSelector
    55e4:	adrp	x20, 3 ; 0x8000
    55e8:	add	x20, x20, #0x245 ; literal pool for: "com.johndie.triggr/statusbar-tap"
    55ec:	tbz	w0, #0x0, 0x562c
    55f0:	fcmp	d8, #0.0
    55f4:	b.le	0x562c
    55f8:	mov	x0, x19
    55fc:	mov	x1, x21
    5600:	bl	0x6aa8 ; symbol stub for: _objc_msgSend
    5604:	fmov	d1, #0.50000000
    5608:	fmul	d1, d8, d1
    560c:	adrp	x8, 3 ; 0x8000
    5610:	add	x8, x8, #0x28c ; literal pool for: "com.johndie.triggr/statusbar-tap-right"
    5614:	adrp	x9, 3 ; 0x8000
    5618:	add	x9, x9, #0x266 ; literal pool for: "com.johndie.triggr/statusbar-tap-left"
    561c:	fcmp	d0, d1
    5620:	csel	x8, x9, x8, mi
    5624:	fcmp	d0, #0.0
    5628:	csel	x20, x20, x8, lt
    562c:	bl	0x4dd0
    5630:	tbz	w0, #0x0, 0x563c
    5634:	mov	x0, x20
    5638:	bl	0x6a24 ; symbol stub for: _notify_post
    563c:	mov	x0, x19
    5640:	ldp	x29, x30, [sp, #0x30]
    5644:	ldp	x20, x19, [sp, #0x20]
    5648:	ldp	x22, x21, [sp, #0x10]
    564c:	ldp	d9, d8, [sp], #0x40
    5650:	b	0x6af0 ; symbol stub for: _objc_release
    5654:	stp	x28, x27, [sp, #-0x60]!
    5658:	stp	x26, x25, [sp, #0x10]
    565c:	stp	x24, x23, [sp, #0x20]
    5660:	stp	x22, x21, [sp, #0x30]
    5664:	stp	x20, x19, [sp, #0x40]
    5668:	stp	x29, x30, [sp, #0x50]
    566c:	add	x29, sp, #0x50
    5670:	sub	sp, sp, #0x1a0
    5674:	adrp	x8, 7 ; 0xc000
    5678:	ldr	x8, [x8, #0x550] ; literal pool symbol address: ___stack_chk_guard
    567c:	ldr	x8, [x8]
    5680:	stur	x8, [x29, #-0x60]
    5684:	adrp	x8, 11 ; 0x10000
    5688:	ldr	x0, [x8, #0x700] ; Objc class ref: bad class ref
    568c:	bl	0x7280
    5690:	mov	x29, x29
    5694:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5698:	mov	x19, x0
    569c:	bl	0x6c00
    56a0:	cbnz	x0, 0x5a38
    56a4:	movi.16b	v0, #0x0
    56a8:	stp	q0, q0, [sp, #0x70]
    56ac:	stp	q0, q0, [sp, #0x50]
    56b0:	str	x19, [sp]
    56b4:	mov	x0, x19
    56b8:	bl	0x6c80
    56bc:	mov	x29, x29
    56c0:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    56c4:	mov	x19, x0
    56c8:	add	x2, sp, #0x50
    56cc:	sub	x3, x29, #0xe0
    56d0:	mov	w4, #0x10
    56d4:	bl	0x6d00
    56d8:	cbz	x0, 0x5824
    56dc:	mov	x22, x0
    56e0:	mov	x20, #0x0
    56e4:	ldr	x8, [sp, #0x60]
    56e8:	ldr	x26, [x8]
    56ec:	adrp	x21, 11 ; 0x10000
    56f0:	str	x19, [sp, #0x8]
    56f4:	mov	x28, #0x0
    56f8:	ldr	x8, [sp, #0x60]
    56fc:	ldr	x8, [x8]
    5700:	cmp	x8, x26
    5704:	b.eq	0x5710
    5708:	mov	x0, x19
    570c:	bl	0x6a84 ; symbol stub for: _objc_enumerationMutation
    5710:	ldr	x8, [sp, #0x58]
    5714:	ldr	x23, [x8, x28, lsl #3]
    5718:	mov	x0, x23
    571c:	bl	0x6b60
    5720:	cbnz	x0, 0x57f8
    5724:	ldr	x0, [x21, #0x708]
    5728:	bl	0x6ac0 ; symbol stub for: _objc_opt_class
    572c:	mov	x1, x0
    5730:	mov	x0, x23
    5734:	bl	0x6acc ; symbol stub for: _objc_opt_isKindOfClass
    5738:	tbz	w0, #0x0, 0x57f8
    573c:	movi.16b	v0, #0x0
    5740:	stp	q0, q0, [sp, #0x30]
    5744:	stp	q0, q0, [sp, #0x10]
    5748:	mov	x0, x23
    574c:	bl	0x7380
    5750:	mov	x29, x29
    5754:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5758:	mov	x23, x0
    575c:	add	x2, sp, #0x10
    5760:	add	x3, sp, #0x90
    5764:	mov	w4, #0x10
    5768:	bl	0x6d00
    576c:	cbz	x0, 0x57ec
    5770:	mov	x24, x0
    5774:	ldr	x8, [sp, #0x20]
    5778:	ldr	x19, [x8]
    577c:	mov	x27, #0x0
    5780:	ldr	x8, [sp, #0x20]
    5784:	ldr	x8, [x8]
    5788:	cmp	x8, x19
    578c:	b.eq	0x5798
    5790:	mov	x0, x23
    5794:	bl	0x6a84 ; symbol stub for: _objc_enumerationMutation
    5798:	ldr	x8, [sp, #0x18]
    579c:	ldr	x25, [x8, x27, lsl #3]
    57a0:	mov	x0, x25
    57a4:	bl	0x6ea0
    57a8:	cbz	w0, 0x57c4
    57ac:	mov	x0, x25
    57b0:	bl	0x6afc ; symbol stub for: _objc_retain
    57b4:	mov	x25, x0
    57b8:	mov	x0, x20
    57bc:	bl	0x6af0 ; symbol stub for: _objc_release
    57c0:	mov	x20, x25
    57c4:	add	x27, x27, #0x1
    57c8:	cmp	x24, x27
    57cc:	b.ne	0x5780
    57d0:	add	x2, sp, #0x10
    57d4:	add	x3, sp, #0x90
    57d8:	mov	x0, x23
    57dc:	mov	w4, #0x10
    57e0:	bl	0x6d00
    57e4:	mov	x24, x0
    57e8:	cbnz	x0, 0x577c
    57ec:	mov	x0, x23
    57f0:	bl	0x6af0 ; symbol stub for: _objc_release
    57f4:	ldr	x19, [sp, #0x8]
    57f8:	add	x28, x28, #0x1
    57fc:	cmp	x28, x22
    5800:	b.ne	0x56f8
    5804:	add	x2, sp, #0x50
    5808:	sub	x3, x29, #0xe0
    580c:	mov	x0, x19
    5810:	mov	w4, #0x10
    5814:	bl	0x6d00
    5818:	mov	x22, x0
    581c:	cbnz	x0, 0x56f4
    5820:	b	0x5828
    5824:	mov	x20, #0x0

; ===== sub_5828 =====
    5828:	mov	x0, x19
    582c:	bl	0x6af0 ; symbol stub for: _objc_release
    5830:	mov	x0, x20
    5834:	bl	0x70c0
    5838:	mov	x29, x29
    583c:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5840:	mov	x21, x0
    5844:	cbz	x0, 0x5a24
    5848:	mov	x0, x21
    584c:	bl	0x6afc ; symbol stub for: _objc_retain
    5850:	mov	x23, x0
    5854:	bl	0x6fe0
    5858:	mov	x29, x29
    585c:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5860:	cbz	x0, 0x58d8
    5864:	mov	x25, x0
    5868:	mov	x24, x23
    586c:	mov	x0, x24
    5870:	bl	0x6fe0
    5874:	mov	x29, x29
    5878:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    587c:	mov	x22, x0
    5880:	bl	0x6e60
    5884:	mov	x26, x0
    5888:	mov	x0, x22
    588c:	bl	0x6af0 ; symbol stub for: _objc_release
    5890:	mov	x0, x25
    5894:	bl	0x6af0 ; symbol stub for: _objc_release
    5898:	tbnz	w26, #0x0, 0x58e0
    589c:	mov	x0, x24
    58a0:	bl	0x6fe0
    58a4:	mov	x29, x29
    58a8:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    58ac:	mov	x22, x0
    58b0:	mov	x0, x24
    58b4:	bl	0x6af0 ; symbol stub for: _objc_release
    58b8:	mov	x0, x22
    58bc:	bl	0x6fe0
    58c0:	mov	x29, x29
    58c4:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    58c8:	mov	x25, x0
    58cc:	mov	x24, x22
    58d0:	cbnz	x0, 0x586c
    58d4:	b	0x58e4
    58d8:	mov	x22, x23
    58dc:	b	0x5908
    58e0:	mov	x22, x24

; ===== sub_58e4 =====
    58e4:	cmp	x22, x23
    58e8:	b.eq	0x5908
    58ec:	adrp	x8, 11 ; 0x10000
    58f0:	ldr	x0, [x8, #0x728] ; Objc class ref: bad class ref
    58f4:	bl	0x6ac0 ; symbol stub for: _objc_opt_class
    58f8:	mov	x1, x0
    58fc:	mov	x0, x22
    5900:	bl	0x6acc ; symbol stub for: _objc_opt_isKindOfClass
    5904:	tbz	w0, #0x0, 0x595c

; ===== sub_5908 =====
    5908:	mov	x0, x22
    590c:	bl	0x5cac
    5910:	mov	x29, x29
    5914:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5918:	mov	x23, x0
    591c:	bl	0x7340
    5920:	mov	x29, x29
    5924:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5928:	mov	x24, x0
    592c:	bl	0x6ce0
    5930:	mov	x25, x0
    5934:	mov	x0, x24
    5938:	bl	0x6af0 ; symbol stub for: _objc_release
    593c:	cmp	x25, #0x2
    5940:	b.lo	0x5a14

; ===== sub_5944 =====
    5944:	mov	x0, x23
    5948:	mov	w2, #0x1
    594c:	bl	0x6fc0
    5950:	mov	x29, x29
    5954:	bl	0x6b2c ; symbol stub for: _objc_unsafeClaimAutoreleasedReturnValue
    5958:	b	0x5a14
    595c:	mov	x0, x22
    5960:	bl	0x5cac
    5964:	mov	x29, x29
    5968:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    596c:	mov	x23, x0
    5970:	cbz	x0, 0x59ec
    5974:	mov	x0, x23
    5978:	bl	0x7340
    597c:	mov	x29, x29
    5980:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5984:	mov	x24, x0
    5988:	bl	0x6ce0
    598c:	cmp	x0, #0x2
    5990:	b.lo	0x59e4
    5994:	cmp	x23, x22
    5998:	b.eq	0x5a78
    599c:	mov	x0, x23
    59a0:	bl	0x7000
    59a4:	mov	x29, x29
    59a8:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    59ac:	mov	x25, x0
    59b0:	mov	x0, x22
    59b4:	bl	0x7000
    59b8:	mov	x29, x29
    59bc:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    59c0:	mov	x26, x0
    59c4:	bl	0x6af0 ; symbol stub for: _objc_release
    59c8:	mov	x0, x25
    59cc:	bl	0x6af0 ; symbol stub for: _objc_release
    59d0:	mov	x0, x24
    59d4:	bl	0x6af0 ; symbol stub for: _objc_release
    59d8:	cmp	x25, x26
    59dc:	b.eq	0x5944
    59e0:	b	0x59ec
    59e4:	mov	x0, x24
    59e8:	bl	0x6af0 ; symbol stub for: _objc_release

; ===== sub_59ec =====
    59ec:	mov	x0, x22
    59f0:	bl	0x7000
    59f4:	mov	x29, x29
    59f8:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    59fc:	mov	x24, x0
    5a00:	mov	w2, #0x1
    5a04:	mov	x3, #0x0
    5a08:	bl	0x6d60
    5a0c:	mov	x0, x24
    5a10:	bl	0x6af0 ; symbol stub for: _objc_release

; ===== sub_5a14 =====
    5a14:	mov	x0, x23
    5a18:	bl	0x6af0 ; symbol stub for: _objc_release
    5a1c:	mov	x0, x22
    5a20:	bl	0x6af0 ; symbol stub for: _objc_release
    5a24:	mov	x0, x21
    5a28:	bl	0x6af0 ; symbol stub for: _objc_release
    5a2c:	mov	x0, x20
    5a30:	bl	0x6af0 ; symbol stub for: _objc_release
    5a34:	ldr	x19, [sp]
    5a38:	mov	x0, x19
    5a3c:	bl	0x6af0 ; symbol stub for: _objc_release
    5a40:	ldur	x8, [x29, #-0x60]
    5a44:	adrp	x9, 7 ; 0xc000
    5a48:	ldr	x9, [x9, #0x550] ; literal pool symbol address: ___stack_chk_guard
    5a4c:	ldr	x9, [x9]
    5a50:	cmp	x9, x8
    5a54:	b.ne	0x5a84
    5a58:	add	sp, sp, #0x1a0
    5a5c:	ldp	x29, x30, [sp, #0x50]
    5a60:	ldp	x20, x19, [sp, #0x40]
    5a64:	ldp	x22, x21, [sp, #0x30]
    5a68:	ldp	x24, x23, [sp, #0x20]
    5a6c:	ldp	x26, x25, [sp, #0x10]
    5a70:	ldp	x28, x27, [sp], #0x60
    5a74:	ret
    5a78:	mov	x0, x24
    5a7c:	bl	0x6af0 ; symbol stub for: _objc_release
    5a80:	b	0x5944
    5a84:	bl	0x69dc ; symbol stub for: ___stack_chk_fail
    5a88:	ldr	x0, [x0, #0x20]
    5a8c:	b	0x5a90

; ===== sub_5a90 =====
    5a90:	sub	sp, sp, #0x30
    5a94:	stp	x20, x19, [sp, #0x10]
    5a98:	stp	x29, x30, [sp, #0x20]
    5a9c:	add	x29, sp, #0x20
    5aa0:	mov	x19, x0
    5aa4:	adrp	x20, 11 ; 0x10000
    5aa8:	ldr	w0, [x20, #0x8d0]
    5aac:	cmn	w0, #0x1
    5ab0:	b.eq	0x5b10

; ===== sub_5ab4 =====
    5ab4:	str	xzr, [sp, #0x8]
    5ab8:	add	x1, sp, #0x8
    5abc:	bl	0x6a18 ; symbol stub for: _notify_get_state
    5ac0:	ldr	x20, [sp, #0x8]
    5ac4:	mov	x0, #0x0
    5ac8:	bl	0x6b38 ; symbol stub for: _time
    5acc:	cmp	x19, x20, lsr #32
    5ad0:	b.ne	0x5b30
    5ad4:	mov	w10, w0
    5ad8:	mov	w11, w20
    5adc:	ldr	x8, [sp, #0x8]
    5ae0:	adrp	x9, 11 ; 0x10000
    5ae4:	ldr	x12, [x9, #0x900]
    5ae8:	sub	x13, x10, w20, uxtw
    5aec:	cmp	x8, x12
    5af0:	ccmp	x10, x11, #0x0, ne
    5af4:	ccmp	x13, #0x8, #0x2, hs
    5af8:	b.hi	0x5b30
    5afc:	str	x8, [x9, #0x900]
    5b00:	mov	x0, x19
    5b04:	mov	w1, #0x0
    5b08:	bl	0x5f2c
    5b0c:	b	0x5b30
    5b10:	adrp	x0, 3 ; 0x8000
    5b14:	add	x0, x0, #0x179 ; literal pool for: "com.johndie.triggr/app-request"
    5b18:	adrp	x1, 11 ; 0x10000
    5b1c:	add	x1, x1, #0x8d0
    5b20:	bl	0x6a30 ; symbol stub for: _notify_register_check
    5b24:	cbz	w0, 0x5b40
    5b28:	mov	w8, #-0x1
    5b2c:	str	w8, [x20, #0x8d0]

; ===== sub_5b30 =====
    5b30:	ldp	x29, x30, [sp, #0x20]
    5b34:	ldp	x20, x19, [sp, #0x10]
    5b38:	add	sp, sp, #0x30
    5b3c:	ret
    5b40:	ldr	w0, [x20, #0x8d0]
    5b44:	b	0x5ab4
    5b48:	ldr	x0, [x0, #0x20]
    5b4c:	b	0x5a90
    5b50:	stp	x22, x21, [sp, #-0x30]!
    5b54:	stp	x20, x19, [sp, #0x10]
    5b58:	stp	x29, x30, [sp, #0x20]
    5b5c:	add	x29, sp, #0x20
    5b60:	mov	x19, x0
    5b64:	adrp	x8, 11 ; 0x10000
    5b68:	ldr	x8, [x8, #0x8f0]
    5b6c:	blr	x8
    5b70:	adrp	x21, 11 ; 0x10000
    5b74:	ldr	w8, [x21, #0x8f8]
    5b78:	tst	w8, #0x3ffffc
    5b7c:	b.eq	0x5bb8
    5b80:	adrp	x8, 11 ; 0x10000
    5b84:	ldr	x0, [x8, #0x6d8] ; Objc class ref: bad class ref
    5b88:	bl	0x7260
    5b8c:	mov	x29, x29
    5b90:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5b94:	mov	x20, x0
    5b98:	ldr	x3, [x21, #0x8f8]
    5b9c:	mov	x2, x19
    5ba0:	bl	0x7040
    5ba4:	mov	x0, x20
    5ba8:	ldp	x29, x30, [sp, #0x20]
    5bac:	ldp	x20, x19, [sp, #0x10]
    5bb0:	ldp	x22, x21, [sp], #0x30
    5bb4:	b	0x6af0 ; symbol stub for: _objc_release
    5bb8:	ldp	x29, x30, [sp, #0x20]
    5bbc:	ldp	x20, x19, [sp, #0x10]
    5bc0:	ldp	x22, x21, [sp], #0x30
    5bc4:	ret
    5bc8:	stp	x20, x19, [sp, #-0x20]!
    5bcc:	stp	x29, x30, [sp, #0x10]
    5bd0:	add	x29, sp, #0x10
    5bd4:	bl	0x4dd0
    5bd8:	adrp	x8, 11 ; 0x10000
    5bdc:	str	x0, [x8, #0x8f8]
    5be0:	adrp	x8, 11 ; 0x10000
    5be4:	ldr	x0, [x8, #0x6d8] ; Objc class ref: bad class ref
    5be8:	bl	0x7260
    5bec:	mov	x29, x29
    5bf0:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5bf4:	mov	x19, x0
    5bf8:	bl	0x7060
    5bfc:	mov	x0, x19
    5c00:	ldp	x29, x30, [sp, #0x10]
    5c04:	ldp	x20, x19, [sp], #0x20
    5c08:	b	0x6af0 ; symbol stub for: _objc_release
    5c0c:	stp	x20, x19, [sp, #-0x20]!
    5c10:	stp	x29, x30, [sp, #0x10]
    5c14:	add	x29, sp, #0x10
    5c18:	bl	0x4dd0
    5c1c:	adrp	x8, 11 ; 0x10000
    5c20:	str	x0, [x8, #0x8f8]
    5c24:	adrp	x8, 11 ; 0x10000
    5c28:	ldr	x0, [x8, #0x6d8] ; Objc class ref: bad class ref
    5c2c:	bl	0x7260
    5c30:	mov	x29, x29
    5c34:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5c38:	mov	x19, x0
    5c3c:	bl	0x7060
    5c40:	mov	x0, x19
    5c44:	ldp	x29, x30, [sp, #0x10]
    5c48:	ldp	x20, x19, [sp], #0x20
    5c4c:	b	0x6af0 ; symbol stub for: _objc_release
    5c50:	stp	x20, x19, [sp, #-0x20]!
    5c54:	stp	x29, x30, [sp, #0x10]
    5c58:	add	x29, sp, #0x10
    5c5c:	bl	0x4dd0
    5c60:	adrp	x8, 11 ; 0x10000
    5c64:	ldr	x9, [x8, #0x8f8]
    5c68:	cmp	x0, x9
    5c6c:	b.ne	0x5c7c
    5c70:	ldp	x29, x30, [sp, #0x10]
    5c74:	ldp	x20, x19, [sp], #0x20
    5c78:	ret
    5c7c:	str	x0, [x8, #0x8f8]
    5c80:	adrp	x8, 11 ; 0x10000
    5c84:	ldr	x0, [x8, #0x6d8] ; Objc class ref: bad class ref
    5c88:	bl	0x7260
    5c8c:	mov	x29, x29
    5c90:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5c94:	mov	x19, x0
    5c98:	bl	0x7060
    5c9c:	mov	x0, x19
    5ca0:	ldp	x29, x30, [sp, #0x10]
    5ca4:	ldp	x20, x19, [sp], #0x20
    5ca8:	b	0x6af0 ; symbol stub for: _objc_release

; ===== sub_5cac =====
    5cac:	sub	sp, sp, #0x130
    5cb0:	stp	x28, x27, [sp, #0xd0]
    5cb4:	stp	x26, x25, [sp, #0xe0]
    5cb8:	stp	x24, x23, [sp, #0xf0]
    5cbc:	stp	x22, x21, [sp, #0x100]
    5cc0:	stp	x20, x19, [sp, #0x110]
    5cc4:	stp	x29, x30, [sp, #0x120]
    5cc8:	add	x29, sp, #0x120
    5ccc:	adrp	x8, 7 ; 0xc000
    5cd0:	ldr	x8, [x8, #0x550] ; literal pool symbol address: ___stack_chk_guard
    5cd4:	ldr	x8, [x8]
    5cd8:	stur	x8, [x29, #-0x58]
    5cdc:	bl	0x6afc ; symbol stub for: _objc_retain
    5ce0:	mov	x19, x0
    5ce4:	adrp	x8, 11 ; 0x10000
    5ce8:	ldr	x0, [x8, #0x730] ; Objc class ref: bad class ref
    5cec:	bl	0x6ac0 ; symbol stub for: _objc_opt_class
    5cf0:	mov	x1, x0
    5cf4:	mov	x0, x19
    5cf8:	bl	0x6acc ; symbol stub for: _objc_opt_isKindOfClass
    5cfc:	tbz	w0, #0x0, 0x5d10
    5d00:	mov	x0, x19
    5d04:	bl	0x6afc ; symbol stub for: _objc_retain

; ===== sub_5d08 =====
    5d08:	mov	x22, x0
    5d0c:	b	0x5db4
    5d10:	adrp	x8, 11 ; 0x10000
    5d14:	ldr	x0, [x8, #0x738] ; Objc class ref: bad class ref
    5d18:	bl	0x6ac0 ; symbol stub for: _objc_opt_class
    5d1c:	mov	x1, x0
    5d20:	mov	x0, x19
    5d24:	bl	0x6acc ; symbol stub for: _objc_opt_isKindOfClass
    5d28:	tbz	w0, #0x0, 0x5d54
    5d2c:	mov	x0, x19
    5d30:	bl	0x7100
    5d34:	mov	x29, x29
    5d38:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5d3c:	mov	x20, x0
    5d40:	bl	0x5cac
    5d44:	mov	x29, x29
    5d48:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5d4c:	mov	x22, x0
    5d50:	b	0x5dac
    5d54:	adrp	x8, 11 ; 0x10000
    5d58:	ldr	x0, [x8, #0x740] ; Objc class ref: bad class ref
    5d5c:	bl	0x6ac0 ; symbol stub for: _objc_opt_class
    5d60:	mov	x1, x0
    5d64:	mov	x0, x19
    5d68:	bl	0x6acc ; symbol stub for: _objc_opt_isKindOfClass
    5d6c:	tbz	w0, #0x0, 0x5df8
    5d70:	mov	x0, x19
    5d74:	bl	0x7340
    5d78:	mov	x29, x29
    5d7c:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5d80:	mov	x20, x0
    5d84:	bl	0x6ec0
    5d88:	mov	x29, x29
    5d8c:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5d90:	mov	x21, x0
    5d94:	bl	0x5cac
    5d98:	mov	x29, x29
    5d9c:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5da0:	mov	x22, x0
    5da4:	mov	x0, x21
    5da8:	bl	0x6af0 ; symbol stub for: _objc_release

; ===== sub_5dac =====
    5dac:	mov	x0, x20
    5db0:	bl	0x6af0 ; symbol stub for: _objc_release

; ===== sub_5db4 =====
    5db4:	mov	x0, x19
    5db8:	bl	0x6af0 ; symbol stub for: _objc_release
    5dbc:	ldur	x8, [x29, #-0x58]
    5dc0:	adrp	x9, 7 ; 0xc000
    5dc4:	ldr	x9, [x9, #0x550] ; literal pool symbol address: ___stack_chk_guard
    5dc8:	ldr	x9, [x9]
    5dcc:	cmp	x9, x8
    5dd0:	b.ne	0x5f28
    5dd4:	mov	x0, x22
    5dd8:	ldp	x29, x30, [sp, #0x120]
    5ddc:	ldp	x20, x19, [sp, #0x110]
    5de0:	ldp	x22, x21, [sp, #0x100]
    5de4:	ldp	x24, x23, [sp, #0xf0]
    5de8:	ldp	x26, x25, [sp, #0xe0]
    5dec:	ldp	x28, x27, [sp, #0xd0]
    5df0:	add	sp, sp, #0x130
    5df4:	b	0x6a60 ; symbol stub for: _objc_autoreleaseReturnValue
    5df8:	mov	x0, x19
    5dfc:	bl	0x6f60
    5e00:	mov	x29, x29
    5e04:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5e08:	mov	x20, x0
    5e0c:	bl	0x6af0 ; symbol stub for: _objc_release
    5e10:	cbz	x20, 0x5e28
    5e14:	mov	x0, x19
    5e18:	bl	0x6f60
    5e1c:	mov	x29, x29
    5e20:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5e24:	b	0x5d08
    5e28:	movi.16b	v0, #0x0
    5e2c:	stp	q0, q0, [sp, #0x20]
    5e30:	stp	q0, q0, [sp]
    5e34:	mov	x0, x19
    5e38:	bl	0x6c60
    5e3c:	mov	x29, x29
    5e40:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5e44:	mov	x21, x0
    5e48:	bl	0x70a0
    5e4c:	mov	x29, x29
    5e50:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5e54:	mov	x20, x0
    5e58:	mov	x0, x21
    5e5c:	bl	0x6af0 ; symbol stub for: _objc_release
    5e60:	mov	x2, sp
    5e64:	add	x3, sp, #0x48
    5e68:	mov	x0, x20
    5e6c:	mov	w4, #0x10
    5e70:	bl	0x6d00
    5e74:	cbz	x0, 0x5f18
    5e78:	mov	x21, x0
    5e7c:	ldr	x8, [sp, #0x10]
    5e80:	ldr	x25, [x8]
    5e84:	mov	x26, #0x0
    5e88:	ldr	x8, [sp, #0x10]
    5e8c:	ldr	x8, [x8]
    5e90:	cmp	x8, x25
    5e94:	b.eq	0x5ea0
    5e98:	mov	x0, x20
    5e9c:	bl	0x6a84 ; symbol stub for: _objc_enumerationMutation
    5ea0:	ldr	x8, [sp, #0x8]
    5ea4:	ldr	x0, [x8, x26, lsl #3]
    5ea8:	bl	0x5cac
    5eac:	mov	x29, x29
    5eb0:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5eb4:	mov	x22, x0
    5eb8:	cbz	x0, 0x5ee8
    5ebc:	mov	x0, x22
    5ec0:	bl	0x7340
    5ec4:	mov	x29, x29
    5ec8:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5ecc:	mov	x23, x0
    5ed0:	bl	0x6ce0
    5ed4:	mov	x24, x0
    5ed8:	mov	x0, x23
    5edc:	bl	0x6af0 ; symbol stub for: _objc_release
    5ee0:	cmp	x24, #0x1
    5ee4:	b.hi	0x5dac
    5ee8:	mov	x0, x22
    5eec:	bl	0x6af0 ; symbol stub for: _objc_release
    5ef0:	add	x26, x26, #0x1
    5ef4:	cmp	x21, x26
    5ef8:	b.ne	0x5e88
    5efc:	mov	x2, sp
    5f00:	add	x3, sp, #0x48
    5f04:	mov	x0, x20
    5f08:	mov	w4, #0x10
    5f0c:	bl	0x6d00
    5f10:	mov	x21, x0
    5f14:	cbnz	x0, 0x5e84
    5f18:	mov	x0, x20
    5f1c:	bl	0x6af0 ; symbol stub for: _objc_release
    5f20:	mov	x22, #0x0
    5f24:	b	0x5db4
    5f28:	bl	0x69dc ; symbol stub for: ___stack_chk_fail

; ===== sub_5f2c =====
    5f2c:	stp	x28, x27, [sp, #-0x60]!
    5f30:	stp	x26, x25, [sp, #0x10]
    5f34:	stp	x24, x23, [sp, #0x20]
    5f38:	stp	x22, x21, [sp, #0x30]
    5f3c:	stp	x20, x19, [sp, #0x40]
    5f40:	stp	x29, x30, [sp, #0x50]
    5f44:	add	x29, sp, #0x50
    5f48:	sub	sp, sp, #0x2b0
    5f4c:	str	w1, [sp, #0x2c]
    5f50:	adrp	x8, 7 ; 0xc000
    5f54:	ldr	x8, [x8, #0x550] ; literal pool symbol address: ___stack_chk_guard
    5f58:	ldr	x8, [x8]
    5f5c:	stur	x8, [x29, #-0x60]
    5f60:	adrp	x19, 11 ; 0x10000
    5f64:	str	x0, [sp, #0x10]
    5f68:	cmp	x0, #0x1
    5f6c:	b.ne	0x6120
    5f70:	adrp	x0, 7 ; 0xc000
    5f74:	add	x0, x0, #0x240 ; "CAMViewfinderViewController"
    5f78:	bl	0x69ac ; symbol stub for: _NSClassFromString
    5f7c:	mov	x22, x0
    5f80:	movi.16b	v0, #0x0
    5f84:	stp	q0, q0, [sp, #0x120]
    5f88:	stp	q0, q0, [sp, #0x140]
    5f8c:	ldr	x0, [x19, #0x700]
    5f90:	bl	0x7280
    5f94:	mov	x29, x29
    5f98:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5f9c:	mov	x19, x0
    5fa0:	bl	0x6c80
    5fa4:	mov	x29, x29
    5fa8:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5fac:	mov	x23, x0
    5fb0:	mov	x0, x19
    5fb4:	bl	0x6af0 ; symbol stub for: _objc_release
    5fb8:	add	x2, sp, #0x120
    5fbc:	sub	x3, x29, #0xe0
    5fc0:	mov	x0, x23
    5fc4:	mov	w4, #0x10
    5fc8:	bl	0x6d00
    5fcc:	mov	x24, x0
    5fd0:	cbz	x0, 0x6110
    5fd4:	ldr	x8, [sp, #0x130]
    5fd8:	ldr	x8, [x8]
    5fdc:	str	x8, [sp, #0x20]
    5fe0:	mov	x28, #0x0
    5fe4:	ldr	x8, [sp, #0x130]
    5fe8:	ldr	x8, [x8]
    5fec:	ldr	x9, [sp, #0x20]
    5ff0:	cmp	x8, x9
    5ff4:	b.eq	0x6000
    5ff8:	mov	x0, x23
    5ffc:	bl	0x6a84 ; symbol stub for: _objc_enumerationMutation
    6000:	ldr	x8, [sp, #0x128]
    6004:	ldr	x19, [x8, x28, lsl #3]
    6008:	adrp	x8, 10 ; 0x10000
    600c:	ldr	x0, [x8, #0x708] ; Objc class ref: bad class ref
    6010:	bl	0x6ac0 ; symbol stub for: _objc_opt_class
    6014:	mov	x1, x0
    6018:	mov	x0, x19
    601c:	bl	0x6acc ; symbol stub for: _objc_opt_isKindOfClass
    6020:	tbz	w0, #0x0, 0x60e8
    6024:	movi.16b	v0, #0x0
    6028:	stp	q0, q0, [sp, #0x100]
    602c:	stp	q0, q0, [sp, #0xe0]
    6030:	mov	x0, x19
    6034:	bl	0x7380
    6038:	mov	x29, x29
    603c:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    6040:	mov	x25, x0
    6044:	add	x2, sp, #0xe0
    6048:	add	x3, sp, #0x1a0
    604c:	mov	w4, #0x10
    6050:	bl	0x6d00
    6054:	mov	x19, x0
    6058:	cbz	x0, 0x60e0
    605c:	ldr	x8, [sp, #0xf0]
    6060:	ldr	x27, [x8]
    6064:	mov	x26, #0x0
    6068:	ldr	x8, [sp, #0xf0]
    606c:	ldr	x8, [x8]
    6070:	cmp	x8, x27
    6074:	b.eq	0x6080
    6078:	mov	x0, x25
    607c:	bl	0x6a84 ; symbol stub for: _objc_enumerationMutation
    6080:	ldr	x8, [sp, #0xe8]
    6084:	ldr	x0, [x8, x26, lsl #3]
    6088:	bl	0x70c0
    608c:	mov	x29, x29
    6090:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    6094:	mov	x20, x0
    6098:	mov	x1, x22
    609c:	bl	0x67b4
    60a0:	mov	x29, x29
    60a4:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    60a8:	mov	x21, x0
    60ac:	mov	x0, x20
    60b0:	bl	0x6af0 ; symbol stub for: _objc_release
    60b4:	cbnz	x21, 0x6150
    60b8:	add	x26, x26, #0x1
    60bc:	cmp	x19, x26
    60c0:	b.ne	0x6068
    60c4:	add	x2, sp, #0xe0
    60c8:	add	x3, sp, #0x1a0
    60cc:	mov	x0, x25
    60d0:	mov	w4, #0x10
    60d4:	bl	0x6d00
    60d8:	mov	x19, x0
    60dc:	cbnz	x0, 0x6064
    60e0:	mov	x0, x25
    60e4:	bl	0x6af0 ; symbol stub for: _objc_release
    60e8:	add	x28, x28, #0x1
    60ec:	cmp	x28, x24
    60f0:	b.ne	0x5fe4
    60f4:	add	x2, sp, #0x120
    60f8:	sub	x3, x29, #0xe0
    60fc:	mov	x0, x23
    6100:	mov	w4, #0x10
    6104:	bl	0x6d00
    6108:	mov	x24, x0
    610c:	cbnz	x0, 0x5fe0
    6110:	mov	x0, x23
    6114:	bl	0x6af0 ; symbol stub for: _objc_release
    6118:	mov	x21, #0x0
    611c:	b	0x6190
    6120:	ldr	x0, [x19, #0x700]
    6124:	bl	0x7280
    6128:	mov	x29, x29
    612c:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    6130:	mov	x19, x0
    6134:	bl	0x6c00
    6138:	mov	x20, x0
    613c:	mov	x0, x19
    6140:	bl	0x6af0 ; symbol stub for: _objc_release
    6144:	cbz	x20, 0x6198
    6148:	mov	w19, #0x0
    614c:	b	0x66d8
    6150:	mov	x0, x25
    6154:	bl	0x6af0 ; symbol stub for: _objc_release
    6158:	mov	x0, x23
    615c:	bl	0x6af0 ; symbol stub for: _objc_release
    6160:	adrp	x8, 10 ; 0x10000
    6164:	ldr	x0, [x8, #0x700] ; Objc class ref: bad class ref
    6168:	bl	0x7280
    616c:	mov	x29, x29
    6170:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    6174:	mov	x19, x0
    6178:	bl	0x6c00
    617c:	cmp	x0, #0x0
    6180:	cset	w20, eq
    6184:	mov	x0, x19
    6188:	bl	0x6af0 ; symbol stub for: _objc_release
    618c:	cbnz	w20, 0x64c4

; ===== sub_6190 =====
    6190:	mov	w19, #0x0
    6194:	b	0x66d0
    6198:	adrp	x0, 6 ; 0xc000
    619c:	add	x0, x0, #0x3a0 ; "RCMainViewController"
    61a0:	bl	0x69ac ; symbol stub for: _NSClassFromString
    61a4:	mov	x22, x0
    61a8:	adrp	x0, 6 ; 0xc000
    61ac:	add	x0, x0, #0x3c0 ; "isRecording"
    61b0:	bl	0x69b8 ; symbol stub for: _NSSelectorFromString
    61b4:	mov	x23, x0
    61b8:	movi.16b	v0, #0x0
    61bc:	stp	q0, q0, [sp, #0xe0]
    61c0:	stp	q0, q0, [sp, #0x100]
    61c4:	adrp	x8, 10 ; 0x10000
    61c8:	ldr	x0, [x8, #0x700] ; Objc class ref: bad class ref
    61cc:	bl	0x7280
    61d0:	mov	x29, x29
    61d4:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    61d8:	mov	x19, x0
    61dc:	bl	0x6c80
    61e0:	mov	x29, x29
    61e4:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    61e8:	str	x0, [sp, #0x20]
    61ec:	mov	x0, x19
    61f0:	bl	0x6af0 ; symbol stub for: _objc_release
    61f4:	add	x2, sp, #0xe0
    61f8:	sub	x3, x29, #0xe0
    61fc:	ldr	x0, [sp, #0x20]
    6200:	mov	w4, #0x10
    6204:	bl	0x6d00
    6208:	str	x0, [sp, #0x8]
    620c:	ldr	x8, [sp, #0x8]
    6210:	cbz	x8, 0x63d8
    6214:	ldr	x8, [sp, #0xf0]
    6218:	ldr	x8, [x8]
    621c:	str	x8, [sp]
    6220:	adrp	x25, 6 ; 0xc000
    6224:	add	x25, x25, #0x3e0 ; "toggleRecording"
    6228:	adrp	x26, 6 ; 0xc000
    622c:	add	x26, x26, #0x400 ; "_toggleRecording"
    6230:	str	xzr, [sp, #0x18]
    6234:	ldr	x8, [sp, #0xf0]
    6238:	ldr	x8, [x8]
    623c:	ldr	x9, [sp]
    6240:	cmp	x8, x9
    6244:	b.eq	0x6250
    6248:	ldr	x0, [sp, #0x20]
    624c:	bl	0x6a84 ; symbol stub for: _objc_enumerationMutation
    6250:	cbz	x22, 0x63a0
    6254:	ldr	x8, [sp, #0xe8]
    6258:	ldr	x9, [sp, #0x18]
    625c:	ldr	x19, [x8, x9, lsl #3]
    6260:	adrp	x8, 10 ; 0x10000
    6264:	ldr	x0, [x8, #0x708] ; Objc class ref: bad class ref
    6268:	bl	0x6ac0 ; symbol stub for: _objc_opt_class
    626c:	mov	x1, x0
    6270:	mov	x0, x19
    6274:	bl	0x6acc ; symbol stub for: _objc_opt_isKindOfClass
    6278:	tbz	w0, #0x0, 0x63a0
    627c:	movi.16b	v0, #0x0
    6280:	stp	q0, q0, [sp, #0xc0]
    6284:	stp	q0, q0, [sp, #0xa0]
    6288:	mov	x0, x19
    628c:	bl	0x7380
    6290:	mov	x29, x29
    6294:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    6298:	mov	x27, x0
    629c:	add	x2, sp, #0xa0
    62a0:	add	x3, sp, #0x1a0
    62a4:	mov	w4, #0x10
    62a8:	bl	0x6d00
    62ac:	mov	x28, x0
    62b0:	cbz	x0, 0x6398
    62b4:	ldr	x8, [sp, #0xb0]
    62b8:	ldr	x21, [x8]
    62bc:	mov	x24, #0x0
    62c0:	ldr	x8, [sp, #0xb0]
    62c4:	ldr	x8, [x8]
    62c8:	cmp	x8, x21
    62cc:	b.eq	0x62d8
    62d0:	mov	x0, x27
    62d4:	bl	0x6a84 ; symbol stub for: _objc_enumerationMutation
    62d8:	ldr	x8, [sp, #0xa8]
    62dc:	ldr	x0, [x8, x24, lsl #3]
    62e0:	bl	0x70c0
    62e4:	mov	x29, x29
    62e8:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    62ec:	mov	x20, x0
    62f0:	mov	x1, x22
    62f4:	bl	0x67b4
    62f8:	mov	x29, x29
    62fc:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    6300:	mov	x19, x0
    6304:	mov	x0, x20
    6308:	bl	0x6af0 ; symbol stub for: _objc_release
    630c:	mov	x0, x25
    6310:	bl	0x69b8 ; symbol stub for: _NSSelectorFromString
    6314:	mov	x20, x0
    6318:	mov	x0, x19
    631c:	mov	x1, x20
    6320:	bl	0x6ae4 ; symbol stub for: _objc_opt_respondsToSelector
    6324:	tbnz	w0, #0x0, 0x6334
    6328:	mov	x0, x26
    632c:	bl	0x69b8 ; symbol stub for: _NSSelectorFromString
    6330:	mov	x20, x0
    6334:	cbz	x19, 0x6368
    6338:	mov	x0, x19
    633c:	mov	x1, x23
    6340:	bl	0x6ae4 ; symbol stub for: _objc_opt_respondsToSelector
    6344:	tbz	w0, #0x0, 0x6368
    6348:	mov	x0, x19
    634c:	mov	x1, x20
    6350:	bl	0x6ae4 ; symbol stub for: _objc_opt_respondsToSelector
    6354:	tbz	w0, #0x0, 0x6368
    6358:	mov	x0, x19
    635c:	mov	x1, x23
    6360:	bl	0x6aa8 ; symbol stub for: _objc_msgSend
    6364:	cbnz	w0, 0x65c8
    6368:	mov	x0, x19
    636c:	bl	0x6af0 ; symbol stub for: _objc_release
    6370:	add	x24, x24, #0x1
    6374:	cmp	x28, x24
    6378:	b.ne	0x62c0
    637c:	add	x2, sp, #0xa0
    6380:	add	x3, sp, #0x1a0
    6384:	mov	x0, x27
    6388:	mov	w4, #0x10
    638c:	bl	0x6d00
    6390:	mov	x28, x0
    6394:	cbnz	x0, 0x62bc
    6398:	mov	x0, x27
    639c:	bl	0x6af0 ; symbol stub for: _objc_release
    63a0:	ldr	x9, [sp, #0x18]
    63a4:	add	x9, x9, #0x1
    63a8:	ldr	x8, [sp, #0x8]
    63ac:	str	x9, [sp, #0x18]
    63b0:	cmp	x9, x8
    63b4:	b.ne	0x6234
    63b8:	add	x2, sp, #0xe0
    63bc:	sub	x3, x29, #0xe0
    63c0:	ldr	x0, [sp, #0x20]
    63c4:	mov	w4, #0x10
    63c8:	bl	0x6d00
    63cc:	str	x0, [sp, #0x8]
    63d0:	ldr	x8, [sp, #0x8]
    63d4:	cbnz	x8, 0x6230
    63d8:	ldr	x0, [sp, #0x20]
    63dc:	bl	0x6af0 ; symbol stub for: _objc_release
    63e0:	adrp	x0, 6 ; 0xc000
    63e4:	add	x0, x0, #0x420 ; "_startNewRecordingQuickAction"
    63e8:	bl	0x69b8 ; symbol stub for: _NSSelectorFromString
    63ec:	mov	x22, x0
    63f0:	movi.16b	v0, #0x0
    63f4:	stp	q0, q0, [sp, #0x80]
    63f8:	stp	q0, q0, [sp, #0x60]
    63fc:	adrp	x8, 10 ; 0x10000
    6400:	ldr	x0, [x8, #0x700] ; Objc class ref: bad class ref
    6404:	bl	0x7280
    6408:	mov	x29, x29
    640c:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    6410:	mov	x19, x0
    6414:	bl	0x6c80
    6418:	mov	x29, x29
    641c:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    6420:	str	x0, [sp, #0x20]
    6424:	mov	x0, x19
    6428:	bl	0x6af0 ; symbol stub for: _objc_release
    642c:	add	x2, sp, #0x60
    6430:	add	x3, sp, #0x120
    6434:	ldr	x0, [sp, #0x20]
    6438:	mov	w4, #0x10
    643c:	bl	0x6d00
    6440:	mov	x19, x0
    6444:	cbz	x0, 0x65f8
    6448:	ldr	x8, [sp, #0x70]
    644c:	ldr	x20, [x8]
    6450:	mov	x21, #0x0
    6454:	ldr	x8, [sp, #0x70]
    6458:	ldr	x8, [x8]
    645c:	cmp	x8, x20
    6460:	b.eq	0x646c
    6464:	ldr	x0, [sp, #0x20]
    6468:	bl	0x6a84 ; symbol stub for: _objc_enumerationMutation
    646c:	ldr	x8, [sp, #0x68]
    6470:	ldr	x0, [x8, x21, lsl #3]
    6474:	bl	0x6d40
    6478:	mov	x29, x29
    647c:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    6480:	mov	x27, x0
    6484:	mov	x1, x22
    6488:	bl	0x6ae4 ; symbol stub for: _objc_opt_respondsToSelector
    648c:	tbnz	w0, #0x0, 0x65e0
    6490:	mov	x0, x27
    6494:	bl	0x6af0 ; symbol stub for: _objc_release
    6498:	add	x21, x21, #0x1
    649c:	cmp	x19, x21
    64a0:	b.ne	0x6454
    64a4:	add	x2, sp, #0x60
    64a8:	add	x3, sp, #0x120
    64ac:	ldr	x0, [sp, #0x20]
    64b0:	mov	w4, #0x10
    64b4:	bl	0x6d00
    64b8:	mov	x19, x0
    64bc:	cbnz	x0, 0x6450
    64c0:	b	0x65f8
    64c4:	adrp	x0, 6 ; 0xc000
    64c8:	add	x0, x0, #0x260 ; "_currentMode"
    64cc:	bl	0x69b8 ; symbol stub for: _NSSelectorFromString
    64d0:	mov	x24, x0
    64d4:	adrp	x0, 6 ; 0xc000
    64d8:	add	x0, x0, #0x280 ; "_handleUserChangedToMode:"
    64dc:	bl	0x69b8 ; symbol stub for: _NSSelectorFromString
    64e0:	mov	x25, x0
    64e4:	mov	x0, x21
    64e8:	mov	x1, x25
    64ec:	bl	0x6ae4 ; symbol stub for: _objc_opt_respondsToSelector
    64f0:	tbnz	w0, #0x0, 0x6504
    64f4:	adrp	x0, 6 ; 0xc000
    64f8:	add	x0, x0, #0x2a0 ; "handleUserChangedToMode:"
    64fc:	bl	0x69b8 ; symbol stub for: _NSSelectorFromString
    6500:	mov	x25, x0
    6504:	adrp	x0, 6 ; 0xc000
    6508:	add	x0, x0, #0x2c0 ; "_shouldEnableShutterButton"
    650c:	bl	0x69b8 ; symbol stub for: _NSSelectorFromString
    6510:	mov	x19, x0
    6514:	adrp	x0, 6 ; 0xc000
    6518:	add	x0, x0, #0x2e0 ; "_handleShutterButtonPressed:"
    651c:	bl	0x69b8 ; symbol stub for: _NSSelectorFromString
    6520:	mov	x23, x0
    6524:	adrp	x0, 6 ; 0xc000
    6528:	add	x0, x0, #0x300 ; "_handleShutterButtonReleased:"
    652c:	bl	0x69b8 ; symbol stub for: _NSSelectorFromString
    6530:	mov	x22, x0
    6534:	mov	x0, x21
    6538:	mov	x1, x24
    653c:	bl	0x6ae4 ; symbol stub for: _objc_opt_respondsToSelector
    6540:	tbz	w0, #0x0, 0x66cc
    6544:	mov	x0, x21
    6548:	mov	x1, x25
    654c:	bl	0x6ae4 ; symbol stub for: _objc_opt_respondsToSelector
    6550:	tbz	w0, #0x0, 0x66cc
    6554:	mov	x0, x21
    6558:	mov	x1, x22
    655c:	bl	0x6ae4 ; symbol stub for: _objc_opt_respondsToSelector
    6560:	tbz	w0, #0x0, 0x66cc
    6564:	mov	x0, x21
    6568:	mov	x1, x24
    656c:	bl	0x6aa8 ; symbol stub for: _objc_msgSend
    6570:	cmp	x0, #0x1
    6574:	b.ne	0x6604
    6578:	mov	x0, x21
    657c:	mov	x1, x19
    6580:	bl	0x6ae4 ; symbol stub for: _objc_opt_respondsToSelector
    6584:	tbz	w0, #0x0, 0x6598
    6588:	mov	x0, x21
    658c:	mov	x1, x19
    6590:	bl	0x6aa8 ; symbol stub for: _objc_msgSend
    6594:	cbz	w0, 0x6190
    6598:	adrp	x0, 6 ; 0xc000
    659c:	add	x0, x0, #0x320 ; "pressShutterForRemoteShutter"
    65a0:	bl	0x69b8 ; symbol stub for: _NSSelectorFromString
    65a4:	mov	x19, x0
    65a8:	mov	x0, x21
    65ac:	mov	x1, x19
    65b0:	bl	0x6ae4 ; symbol stub for: _objc_opt_respondsToSelector
    65b4:	tbz	w0, #0x0, 0x6618
    65b8:	mov	x0, x21
    65bc:	mov	x1, x19
    65c0:	bl	0x6aa8 ; symbol stub for: _objc_msgSend
    65c4:	b	0x66cc
    65c8:	mov	x0, x19
    65cc:	mov	x1, x20
    65d0:	bl	0x6aa8 ; symbol stub for: _objc_msgSend
    65d4:	mov	x0, x19
    65d8:	bl	0x6af0 ; symbol stub for: _objc_release
    65dc:	b	0x65ec
    65e0:	mov	x0, x27
    65e4:	mov	x1, x22
    65e8:	bl	0x6aa8 ; symbol stub for: _objc_msgSend

; ===== sub_65ec =====
    65ec:	mov	x0, x27
    65f0:	bl	0x6af0 ; symbol stub for: _objc_release
    65f4:	mov	w19, #0x1

; ===== sub_65f8 =====
    65f8:	ldr	x0, [sp, #0x20]
    65fc:	bl	0x6af0 ; symbol stub for: _objc_release
    6600:	b	0x66d8
    6604:	mov	x0, x21
    6608:	mov	x1, x25
    660c:	mov	w2, #0x1
    6610:	bl	0x6aa8 ; symbol stub for: _objc_msgSend
    6614:	b	0x6190
    6618:	adrp	x1, 6 ; 0xc000
    661c:	add	x1, x1, #0x340 ; "_dynamicShutterControl"
    6620:	mov	x0, x21
    6624:	bl	0x6934
    6628:	mov	x29, x29
    662c:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    6630:	mov	x19, x0
    6634:	adrp	x0, 6 ; 0xc000
    6638:	add	x0, x0, #0x360 ; "dynamicShutterControlDidShortPress:"
    663c:	bl	0x69b8 ; symbol stub for: _NSSelectorFromString
    6640:	cbz	x19, 0x666c
    6644:	mov	x20, x0
    6648:	mov	x0, x21
    664c:	mov	x1, x20
    6650:	bl	0x6ae4 ; symbol stub for: _objc_opt_respondsToSelector
    6654:	tbz	w0, #0x0, 0x666c
    6658:	mov	x0, x21
    665c:	mov	x1, x20
    6660:	mov	x2, x19
    6664:	bl	0x6aa8 ; symbol stub for: _objc_msgSend
    6668:	b	0x66c4
    666c:	adrp	x1, 6 ; 0xc000
    6670:	add	x1, x1, #0x380 ; "_shutterButton"
    6674:	mov	x0, x21
    6678:	bl	0x6934
    667c:	mov	x29, x29
    6680:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    6684:	mov	x20, x0
    6688:	cbz	x0, 0x66bc
    668c:	mov	x0, x21
    6690:	mov	x1, x23
    6694:	bl	0x6ae4 ; symbol stub for: _objc_opt_respondsToSelector
    6698:	tbz	w0, #0x0, 0x66ac
    669c:	mov	x0, x21
    66a0:	mov	x1, x23
    66a4:	mov	x2, x20
    66a8:	bl	0x6aa8 ; symbol stub for: _objc_msgSend
    66ac:	mov	x0, x21
    66b0:	mov	x1, x22
    66b4:	mov	x2, x20
    66b8:	bl	0x6aa8 ; symbol stub for: _objc_msgSend
    66bc:	mov	x0, x20
    66c0:	bl	0x6af0 ; symbol stub for: _objc_release

; ===== sub_66c4 =====
    66c4:	mov	x0, x19
    66c8:	bl	0x6af0 ; symbol stub for: _objc_release

; ===== sub_66cc =====
    66cc:	mov	w19, #0x1

; ===== sub_66d0 =====
    66d0:	mov	x0, x21
    66d4:	bl	0x6af0 ; symbol stub for: _objc_release

; ===== sub_66d8 =====
    66d8:	ldr	w20, [sp, #0x2c]
    66dc:	cmp	w20, #0x27
    66e0:	b.gt	0x6740
    66e4:	tbnz	w19, #0x0, 0x6740
    66e8:	mov	x0, #0x0
    66ec:	mov	w1, #0xb280
    66f0:	movk	w1, #0xee6, lsl #16
    66f4:	bl	0x6a00 ; symbol stub for: _dispatch_time
    66f8:	adrp	x8, 6 ; 0xc000
    66fc:	ldr	x8, [x8, #0x538] ; literal pool symbol address: __NSConcreteStackBlock
    6700:	str	x8, [sp, #0x30]
    6704:	adrp	x8, 1 ; 0x7000
    6708:	ldr	d0, [x8, #0x638]
    670c:	str	d0, [sp, #0x38]
    6710:	adrp	x8, 0 ; 0x6000
    6714:	add	x8, x8, #0x7a0
    6718:	adrp	x9, 6 ; 0xc000
    671c:	add	x9, x9, #0x120
    6720:	stp	x8, x9, [sp, #0x40]
    6724:	ldr	x8, [sp, #0x10]
    6728:	str	x8, [sp, #0x50]
    672c:	str	w20, [sp, #0x58]
    6730:	adrp	x1, 6 ; 0xc000
    6734:	ldr	x1, [x1, #0x558] ; literal pool symbol address: __dispatch_main_q
    6738:	add	x2, sp, #0x30
    673c:	bl	0x69e8 ; symbol stub for: _dispatch_after
    6740:	ldur	x8, [x29, #-0x60]
    6744:	adrp	x9, 6 ; 0xc000
    6748:	ldr	x9, [x9, #0x550] ; literal pool symbol address: ___stack_chk_guard
    674c:	ldr	x9, [x9]
    6750:	cmp	x9, x8
    6754:	b.ne	0x6778
    6758:	add	sp, sp, #0x2b0
    675c:	ldp	x29, x30, [sp, #0x50]
    6760:	ldp	x20, x19, [sp, #0x40]
    6764:	ldp	x22, x21, [sp, #0x30]
    6768:	ldp	x24, x23, [sp, #0x20]
    676c:	ldp	x26, x25, [sp, #0x10]
    6770:	ldp	x28, x27, [sp], #0x60
    6774:	ret
    6778:	bl	0x69dc ; symbol stub for: ___stack_chk_fail
    677c:	b	0x6788
    6780:	b	0x6788
    6784:	b	0x6788

; ===== sub_6788 =====
    6788:	cmp	w1, #0x1
    678c:	b.ne	0x679c
    6790:	bl	0x6a6c ; symbol stub for: _objc_begin_catch
    6794:	bl	0x6a78 ; symbol stub for: _objc_end_catch
    6798:	b	0x66cc
    679c:	bl	0x69d0 ; symbol stub for: __Unwind_Resume
    67a0:	ldr	x8, [x0, #0x20]
    67a4:	ldr	w9, [x0, #0x28]
    67a8:	add	w1, w9, #0x1
    67ac:	mov	x0, x8
    67b0:	b	0x5f2c

; ===== sub_67b4 =====
    67b4:	sub	sp, sp, #0x120
    67b8:	stp	x26, x25, [sp, #0xd0]
    67bc:	stp	x24, x23, [sp, #0xe0]
    67c0:	stp	x22, x21, [sp, #0xf0]
    67c4:	stp	x20, x19, [sp, #0x100]
    67c8:	stp	x29, x30, [sp, #0x110]
    67cc:	add	x29, sp, #0x110
    67d0:	mov	x20, x1
    67d4:	adrp	x8, 6 ; 0xc000
    67d8:	ldr	x8, [x8, #0x550] ; literal pool symbol address: ___stack_chk_guard
    67dc:	ldr	x8, [x8]
    67e0:	stur	x8, [x29, #-0x48]
    67e4:	bl	0x6afc ; symbol stub for: _objc_retain
    67e8:	mov	x19, x0
    67ec:	cbz	x0, 0x6810
    67f0:	mov	x0, x19
    67f4:	mov	x1, x20
    67f8:	bl	0x6acc ; symbol stub for: _objc_opt_isKindOfClass
    67fc:	tbz	w0, #0x0, 0x6818
    6800:	mov	x0, x19
    6804:	bl	0x6afc ; symbol stub for: _objc_retain
    6808:	mov	x23, x0
    680c:	b	0x68f0
    6810:	mov	x23, #0x0
    6814:	b	0x68f0
    6818:	movi.16b	v0, #0x0
    681c:	stp	q0, q0, [sp, #0x20]
    6820:	stp	q0, q0, [sp]
    6824:	mov	x0, x19
    6828:	bl	0x6c60
    682c:	mov	x29, x29
    6830:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    6834:	mov	x21, x0
    6838:	mov	x2, sp
    683c:	add	x3, sp, #0x48
    6840:	mov	w4, #0x10
    6844:	bl	0x6d00
    6848:	cbz	x0, 0x68b8
    684c:	mov	x22, x0
    6850:	ldr	x8, [sp, #0x10]
    6854:	ldr	x24, [x8]
    6858:	mov	x25, #0x0
    685c:	ldr	x8, [sp, #0x10]
    6860:	ldr	x8, [x8]
    6864:	cmp	x8, x24
    6868:	b.eq	0x6874
    686c:	mov	x0, x21
    6870:	bl	0x6a84 ; symbol stub for: _objc_enumerationMutation
    6874:	ldr	x8, [sp, #0x8]
    6878:	ldr	x0, [x8, x25, lsl #3]
    687c:	mov	x1, x20
    6880:	bl	0x67b4
    6884:	mov	x29, x29
    6888:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    688c:	cbnz	x0, 0x68e4
    6890:	add	x25, x25, #0x1
    6894:	cmp	x22, x25
    6898:	b.ne	0x685c
    689c:	mov	x2, sp
    68a0:	add	x3, sp, #0x48
    68a4:	mov	x0, x21
    68a8:	mov	w4, #0x10
    68ac:	bl	0x6d00
    68b0:	mov	x22, x0
    68b4:	cbnz	x0, 0x6858
    68b8:	mov	x0, x21
    68bc:	bl	0x6af0 ; symbol stub for: _objc_release
    68c0:	mov	x0, x19
    68c4:	bl	0x6fe0
    68c8:	mov	x29, x29
    68cc:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    68d0:	mov	x21, x0
    68d4:	mov	x1, x20
    68d8:	bl	0x67b4
    68dc:	mov	x29, x29
    68e0:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    68e4:	mov	x23, x0
    68e8:	mov	x0, x21
    68ec:	bl	0x6af0 ; symbol stub for: _objc_release

; ===== sub_68f0 =====
    68f0:	mov	x0, x19
    68f4:	bl	0x6af0 ; symbol stub for: _objc_release
    68f8:	ldur	x8, [x29, #-0x48]
    68fc:	adrp	x9, 6 ; 0xc000
    6900:	ldr	x9, [x9, #0x550] ; literal pool symbol address: ___stack_chk_guard
    6904:	ldr	x9, [x9]
    6908:	cmp	x9, x8
    690c:	b.ne	0x6930
    6910:	mov	x0, x23
    6914:	ldp	x29, x30, [sp, #0x110]
    6918:	ldp	x20, x19, [sp, #0x100]
    691c:	ldp	x22, x21, [sp, #0xf0]
    6920:	ldp	x24, x23, [sp, #0xe0]
    6924:	ldp	x26, x25, [sp, #0xd0]
    6928:	add	sp, sp, #0x120
    692c:	b	0x6a60 ; symbol stub for: _objc_autoreleaseReturnValue
    6930:	bl	0x69dc ; symbol stub for: ___stack_chk_fail

; ===== sub_6934 =====
    6934:	stp	x20, x19, [sp, #-0x20]!
    6938:	stp	x29, x30, [sp, #0x10]
    693c:	add	x29, sp, #0x10
    6940:	mov	x20, x1
    6944:	bl	0x6afc ; symbol stub for: _objc_retain
    6948:	mov	x19, x0
    694c:	mov	x0, x20
    6950:	bl	0x69b8 ; symbol stub for: _NSSelectorFromString
    6954:	mov	x20, x0
    6958:	mov	x0, x19
    695c:	mov	x1, x20
    6960:	bl	0x6ae4 ; symbol stub for: _objc_opt_respondsToSelector
    6964:	tbz	w0, #0x0, 0x6984
    6968:	mov	x0, x19
    696c:	mov	x1, x20
    6970:	bl	0x6aa8 ; symbol stub for: _objc_msgSend
    6974:	mov	x29, x29
    6978:	bl	0x6b14 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    697c:	mov	x20, x0
    6980:	b	0x6988
    6984:	mov	x20, #0x0

; ===== sub_6988 =====
    6988:	mov	x0, x19
    698c:	bl	0x6af0 ; symbol stub for: _objc_release
    6990:	mov	x0, x20
    6994:	ldp	x29, x30, [sp, #0x10]
    6998:	ldp	x20, x19, [sp], #0x20
    699c:	b	0x6a60 ; symbol stub for: _objc_autoreleaseReturnValue
