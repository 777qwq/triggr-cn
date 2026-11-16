/tmp/v21a/x/var/jb/Library/MobileSubstrate/DynamicLibraries/Triggr.dylib:
(__TEXT,__text) section

; ===== sub_4000 =====
    4000:	sub	sp, sp, #0x70
    4004:	stp	x22, x21, [sp, #0x40]
    4008:	stp	x20, x19, [sp, #0x50]
    400c:	stp	x29, x30, [sp, #0x60]
    4010:	add	x29, sp, #0x60
    4014:	mov	x21, x3
    4018:	mov	x22, x2
    401c:	mov	x19, x0
    4020:	bl	0x21360
    4024:	mov	x29, x29
    4028:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    402c:	mov	x20, x0
    4030:	mov	w8, #0x0
    4034:	cbz	x22, 0x4048
    4038:	tbnz	w21, #0x0, 0x4048
    403c:	mov	x0, x19
    4040:	bl	0x21fa0
    4044:	eor	w8, w0, #0x1
    4048:	adrp	x9, 46 ; 0x32000
    404c:	ldr	x9, [x9, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    4050:	str	x9, [sp, #0x8]
    4054:	adrp	x9, 30 ; 0x22000
    4058:	ldr	d0, [x9, #0x8f8]
    405c:	adrp	x9, 0 ; 0x4000
    4060:	add	x9, x9, #0xbc
    4064:	adrp	x10, 40 ; 0x2c000
    4068:	add	x10, x10, #0x0
    406c:	str	d0, [sp, #0x10]
    4070:	stp	x9, x10, [sp, #0x18]
    4074:	strb	w8, [sp, #0x38]
    4078:	stp	x19, x20, [sp, #0x28]
    407c:	mov	x0, x20
    4080:	bl	0x200f4 ; symbol stub for: _objc_retain
    4084:	mov	x19, x0
    4088:	adrp	x0, 46 ; 0x32000
    408c:	ldr	x0, [x0, #0xde8] ; literal pool symbol address: __dispatch_main_q
    4090:	add	x1, sp, #0x8
    4094:	bl	0x1ff08 ; symbol stub for: _dispatch_async
    4098:	ldr	x0, [sp, #0x30]
    409c:	bl	0x200e8 ; symbol stub for: _objc_release
    40a0:	mov	x0, x19
    40a4:	bl	0x200e8 ; symbol stub for: _objc_release
    40a8:	ldp	x29, x30, [sp, #0x60]
    40ac:	ldp	x20, x19, [sp, #0x50]
    40b0:	ldp	x22, x21, [sp, #0x40]
    40b4:	add	sp, sp, #0x70
    40b8:	ret
    40bc:	stp	x20, x19, [sp, #-0x20]!
    40c0:	stp	x29, x30, [sp, #0x10]
    40c4:	add	x29, sp, #0x10
    40c8:	mov	x19, x0
    40cc:	adrp	x8, 50 ; 0x36000
    40d0:	ldr	x0, [x8, #0xf0]
    40d4:	ldr	x2, [x19, #0x20]
    40d8:	bl	0x21760
    40dc:	ldrb	w8, [x19, #0x30]
    40e0:	cmp	w8, #0x1
    40e4:	b.ne	0x40f8
    40e8:	ldr	x0, [x19, #0x28]
    40ec:	ldp	x29, x30, [sp, #0x10]
    40f0:	ldp	x20, x19, [sp], #0x20
    40f4:	b	0x4104
    40f8:	ldp	x29, x30, [sp, #0x10]
    40fc:	ldp	x20, x19, [sp], #0x20
    4100:	ret

; ===== sub_4104 =====
    4104:	stp	x22, x21, [sp, #-0x30]!
    4108:	stp	x20, x19, [sp, #0x10]
    410c:	stp	x29, x30, [sp, #0x20]
    4110:	add	x29, sp, #0x20
    4114:	adrp	x8, 49 ; 0x35000
    4118:	ldr	x19, [x8, #0xa50] ; Objc class ref: bad class ref
    411c:	bl	0x200f4 ; symbol stub for: _objc_retain
    4120:	mov	x20, x0
    4124:	mov	x0, x19
    4128:	bl	0x20240
    412c:	mov	x29, x29
    4130:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4134:	mov	x19, x0
    4138:	mov	x0, x20
    413c:	mov	x2, x19
    4140:	bl	0x22040
    4144:	mov	x29, x29
    4148:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    414c:	mov	x21, x0
    4150:	mov	x0, x20
    4154:	bl	0x200e8 ; symbol stub for: _objc_release
    4158:	mov	x0, x19
    415c:	bl	0x200e8 ; symbol stub for: _objc_release
    4160:	adrp	x0, 42 ; 0x2e000
    4164:	add	x0, x0, #0xf68 ; "shortcuts://run-shortcut?name="
    4168:	mov	x2, x21
    416c:	bl	0x220a0
    4170:	mov	x29, x29
    4174:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4178:	mov	x19, x0
    417c:	mov	x1, #0x0
    4180:	bl	0xba78
    4184:	mov	x0, x19
    4188:	bl	0x200e8 ; symbol stub for: _objc_release
    418c:	mov	x0, x21
    4190:	ldp	x29, x30, [sp, #0x20]
    4194:	ldp	x20, x19, [sp, #0x10]
    4198:	ldp	x22, x21, [sp], #0x30
    419c:	b	0x200e8 ; symbol stub for: _objc_release
    41a0:	stp	x20, x19, [sp, #-0x20]!
    41a4:	stp	x29, x30, [sp, #0x10]
    41a8:	add	x29, sp, #0x10
    41ac:	mov	x19, x1
    41b0:	ldr	x0, [x1, #0x20]
    41b4:	bl	0x200f4 ; symbol stub for: _objc_retain
    41b8:	ldr	x0, [x19, #0x28]
    41bc:	ldp	x29, x30, [sp, #0x10]
    41c0:	ldp	x20, x19, [sp], #0x20
    41c4:	b	0x200f4 ; symbol stub for: _objc_retain
    41c8:	stp	x20, x19, [sp, #-0x20]!
    41cc:	stp	x29, x30, [sp, #0x10]
    41d0:	add	x29, sp, #0x10
    41d4:	mov	x19, x0
    41d8:	ldr	x0, [x0, #0x28]
    41dc:	bl	0x200e8 ; symbol stub for: _objc_release
    41e0:	ldr	x0, [x19, #0x20]
    41e4:	ldp	x29, x30, [sp, #0x10]
    41e8:	ldp	x20, x19, [sp], #0x20
    41ec:	b	0x200e8 ; symbol stub for: _objc_release
    41f0:	mov	w2, #0x1
    41f4:	b	0x21ce0
    41f8:	mov	x3, x5
    41fc:	mov	x2, x4
    4200:	b	0x20ca0
    4204:	mov	x3, x5
    4208:	mov	x2, x4
    420c:	b	0x20ca0
    4210:	mov	x2, x3
    4214:	mov	x3, x4
    4218:	b	0x20ca0
    421c:	ldr	x0, [x0, #0x10]
    4220:	ret
    4224:	mov	w3, #0x10
    4228:	b	0x2013c ; symbol stub for: _objc_setProperty_nonatomic_copy
    422c:	ldr	x0, [x0, #0x18]
    4230:	ret
    4234:	mov	x1, x2
    4238:	add	x0, x0, #0x18
    423c:	b	0x20148 ; symbol stub for: _objc_storeStrong
    4240:	ldrb	w0, [x0, #0x8]
    4244:	ret
    4248:	strb	w2, [x0, #0x8]
    424c:	ret
    4250:	stp	x20, x19, [sp, #-0x20]!
    4254:	stp	x29, x30, [sp, #0x10]
    4258:	add	x29, sp, #0x10
    425c:	mov	x19, x0
    4260:	add	x0, x0, #0x18
    4264:	mov	x1, #0x0
    4268:	bl	0x20148 ; symbol stub for: _objc_storeStrong
    426c:	add	x0, x19, #0x10
    4270:	mov	x1, #0x0
    4274:	ldp	x29, x30, [sp, #0x10]
    4278:	ldp	x20, x19, [sp], #0x20
    427c:	b	0x20148 ; symbol stub for: _objc_storeStrong
    4280:	stp	x20, x19, [sp, #-0x20]!
    4284:	stp	x29, x30, [sp, #0x10]
    4288:	add	x29, sp, #0x10
    428c:	mov	x0, x2
    4290:	bl	0x200f4 ; symbol stub for: _objc_retain
    4294:	mov	x19, x0
    4298:	bl	0x21fc0
    429c:	cmp	x0, #0x3
    42a0:	b.ne	0x4314
    42a4:	mov	x0, x19
    42a8:	bl	0x20bc0
    42ac:	adrp	x8, 42 ; 0x2e000
    42b0:	add	x8, x8, #0xc48 ; "statusbar.swiperight"
    42b4:	adrp	x9, 42 ; 0x2e000
    42b8:	add	x9, x9, #0xc28 ; "statusbar.swipeleft"
    42bc:	cmp	x0, #0x2
    42c0:	csel	x0, x9, x8, eq
    42c4:	bl	0x200f4 ; symbol stub for: _objc_retain
    42c8:	mov	x20, x0
    42cc:	adrp	x8, 50 ; 0x36000
    42d0:	ldr	x0, [x8, #0xf8]
    42d4:	mov	x2, x20
    42d8:	bl	0x208a0
    42dc:	cbz	w0, 0x430c
    42e0:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    42e4:	adrp	x8, 50 ; 0x36000
    42e8:	str	d0, [x8, #0x100]
    42ec:	adrp	x8, 50 ; 0x36000
    42f0:	ldr	x9, [x8, #0x108]
    42f4:	add	x9, x9, #0x1
    42f8:	str	x9, [x8, #0x108]
    42fc:	adrp	x8, 50 ; 0x36000
    4300:	strb	wzr, [x8, #0x110]
    4304:	mov	x0, x20
    4308:	bl	0x4324
    430c:	mov	x0, x20
    4310:	bl	0x200e8 ; symbol stub for: _objc_release
    4314:	mov	x0, x19
    4318:	ldp	x29, x30, [sp, #0x10]
    431c:	ldp	x20, x19, [sp], #0x20
    4320:	b	0x200e8 ; symbol stub for: _objc_release

; ===== sub_4324 =====
    4324:	stp	d9, d8, [sp, #-0x70]!
    4328:	stp	x28, x27, [sp, #0x10]
    432c:	stp	x26, x25, [sp, #0x20]
    4330:	stp	x24, x23, [sp, #0x30]
    4334:	stp	x22, x21, [sp, #0x40]
    4338:	stp	x20, x19, [sp, #0x50]
    433c:	stp	x29, x30, [sp, #0x60]
    4340:	add	x29, sp, #0x60
    4344:	sub	sp, sp, #0x280
    4348:	mov	x19, x0
    434c:	adrp	x8, 46 ; 0x32000
    4350:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    4354:	ldr	x8, [x8]
    4358:	stur	x8, [x29, #-0x70]
    435c:	bl	0x200f4 ; symbol stub for: _objc_retain
    4360:	mov	x20, x0
    4364:	adrp	x0, 50 ; 0x36000
    4368:	add	x0, x0, #0x300
    436c:	mov	x1, x19
    4370:	bl	0x20148 ; symbol stub for: _objc_storeStrong
    4374:	mov	x0, x20
    4378:	bl	0x200f4 ; symbol stub for: _objc_retain
    437c:	mov	x19, x0
    4380:	adrp	x26, 50 ; 0x36000
    4384:	ldr	x0, [x26, #0x460]
    4388:	cbnz	x0, 0x44dc
    438c:	adrp	x8, 49 ; 0x35000
    4390:	ldr	x0, [x8, #0xa68] ; Objc class ref: bad class ref
    4394:	bl	0x20b60
    4398:	mov	x29, x29
    439c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    43a0:	mov	x20, x0
    43a4:	movi.16b	v0, #0x0
    43a8:	stp	q0, q0, [sp, #0xb0]
    43ac:	stp	q0, q0, [sp, #0xd0]
    43b0:	adrp	x0, 46 ; 0x32000
    43b4:	add	x0, x0, #0x870
    43b8:	add	x2, sp, #0xb0
    43bc:	sub	x3, x29, #0xf0
    43c0:	mov	w4, #0x10
    43c4:	bl	0x20980
    43c8:	cbz	x0, 0x44cc
    43cc:	mov	x21, x0
    43d0:	ldr	x8, [sp, #0xc0]
    43d4:	ldr	x27, [x8]
    43d8:	adrp	x22, 46 ; 0x32000
    43dc:	add	x22, x22, #0x870
    43e0:	mov	x28, #0x0
    43e4:	ldr	x8, [sp, #0xc0]
    43e8:	ldr	x8, [x8]
    43ec:	cmp	x8, x27
    43f0:	b.eq	0x43fc
    43f4:	mov	x0, x22
    43f8:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    43fc:	ldr	x8, [sp, #0xb8]
    4400:	ldr	x23, [x8, x28, lsl #3]
    4404:	mov	x0, x23
    4408:	mov	w2, #0x1
    440c:	bl	0x214c0
    4410:	mov	x29, x29
    4414:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4418:	mov	x24, x0
    441c:	mov	x0, x23
    4420:	mov	x2, #0x0
    4424:	bl	0x214c0
    4428:	mov	x29, x29
    442c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4430:	mov	x25, x0
    4434:	mov	x0, x20
    4438:	mov	x2, x24
    443c:	mov	x3, x25
    4440:	bl	0x21c00
    4444:	mov	x0, x25
    4448:	bl	0x200e8 ; symbol stub for: _objc_release
    444c:	mov	x0, x24
    4450:	bl	0x200e8 ; symbol stub for: _objc_release
    4454:	mov	x0, x23
    4458:	mov	x2, #0x0
    445c:	bl	0x214c0
    4460:	mov	x29, x29
    4464:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4468:	mov	x24, x0
    446c:	mov	x0, x23
    4470:	mov	w2, #0x1
    4474:	bl	0x214c0
    4478:	mov	x29, x29
    447c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4480:	mov	x23, x0
    4484:	mov	x0, x20
    4488:	mov	x2, x24
    448c:	mov	x3, x23
    4490:	bl	0x21c00
    4494:	mov	x0, x23
    4498:	bl	0x200e8 ; symbol stub for: _objc_release
    449c:	mov	x0, x24
    44a0:	bl	0x200e8 ; symbol stub for: _objc_release
    44a4:	add	x28, x28, #0x1
    44a8:	cmp	x21, x28
    44ac:	b.ne	0x43e4
    44b0:	add	x2, sp, #0xb0
    44b4:	sub	x3, x29, #0xf0
    44b8:	mov	x0, x22
    44bc:	mov	w4, #0x10
    44c0:	bl	0x20980
    44c4:	mov	x21, x0
    44c8:	cbnz	x0, 0x43e0
    44cc:	ldr	x0, [x26, #0x460]
    44d0:	str	x20, [x26, #0x460]
    44d4:	bl	0x200e8 ; symbol stub for: _objc_release
    44d8:	ldr	x0, [x26, #0x460]
    44dc:	mov	x2, x19
    44e0:	bl	0x214e0
    44e4:	mov	x29, x29
    44e8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    44ec:	mov	x20, x0
    44f0:	bl	0x200e8 ; symbol stub for: _objc_release
    44f4:	cbz	x20, 0x4514
    44f8:	ldr	x0, [x26, #0x460]
    44fc:	mov	x2, x19
    4500:	bl	0x214e0
    4504:	mov	x29, x29
    4508:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    450c:	mov	x20, x0
    4510:	b	0x4698
    4514:	movi.16b	v0, #0x0
    4518:	stp	q0, q0, [sp, #0x90]
    451c:	stp	q0, q0, [sp, #0x70]
    4520:	adrp	x0, 46 ; 0x32000
    4524:	add	x0, x0, #0x8b8
    4528:	add	x2, sp, #0x70
    452c:	add	x3, sp, #0x170
    4530:	mov	w4, #0x10
    4534:	bl	0x20980
    4538:	cbz	x0, 0x4604
    453c:	mov	x21, x0
    4540:	ldr	x8, [sp, #0x80]
    4544:	ldr	x25, [x8]
    4548:	adrp	x20, 46 ; 0x32000
    454c:	add	x20, x20, #0x8b8
    4550:	mov	x26, #0x0
    4554:	ldr	x8, [sp, #0x80]
    4558:	ldr	x8, [x8]
    455c:	cmp	x8, x25
    4560:	b.eq	0x456c
    4564:	mov	x0, x20
    4568:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    456c:	ldr	x8, [sp, #0x78]
    4570:	ldr	x22, [x8, x26, lsl #3]
    4574:	mov	x0, x22
    4578:	mov	x2, #0x0
    457c:	bl	0x214c0
    4580:	mov	x29, x29
    4584:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4588:	mov	x23, x0
    458c:	mov	x0, x19
    4590:	mov	x2, x23
    4594:	bl	0x20d80
    4598:	mov	x24, x0
    459c:	mov	x0, x23
    45a0:	bl	0x200e8 ; symbol stub for: _objc_release
    45a4:	mov	x0, x22
    45a8:	mov	w2, #0x1
    45ac:	bl	0x214c0
    45b0:	mov	x29, x29
    45b4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    45b8:	mov	x23, x0
    45bc:	tbnz	w24, #0x0, 0x4614
    45c0:	mov	x0, x19
    45c4:	mov	x2, x23
    45c8:	bl	0x20d80
    45cc:	mov	x24, x0
    45d0:	mov	x0, x23
    45d4:	bl	0x200e8 ; symbol stub for: _objc_release
    45d8:	cbnz	w24, 0x461c
    45dc:	add	x26, x26, #0x1
    45e0:	cmp	x21, x26
    45e4:	b.ne	0x4554
    45e8:	add	x2, sp, #0x70
    45ec:	add	x3, sp, #0x170
    45f0:	mov	x0, x20
    45f4:	mov	w4, #0x10
    45f8:	bl	0x20980
    45fc:	mov	x21, x0
    4600:	cbnz	x0, 0x4550
    4604:	mov	x0, x19
    4608:	bl	0x200e8 ; symbol stub for: _objc_release
    460c:	mov	x20, #0x0
    4610:	b	0x46d4
    4614:	mov	x2, #0x0
    4618:	b	0x4638
    461c:	mov	x0, x22
    4620:	mov	x2, #0x0
    4624:	bl	0x214c0
    4628:	mov	x29, x29
    462c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4630:	mov	x23, x0
    4634:	mov	w2, #0x1

; ===== sub_4638 =====
    4638:	mov	x0, x22
    463c:	bl	0x214c0
    4640:	mov	x29, x29
    4644:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4648:	mov	x21, x0
    464c:	bl	0x21160
    4650:	mov	x2, x0
    4654:	mov	x0, x19
    4658:	bl	0x22140
    465c:	mov	x29, x29
    4660:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4664:	mov	x22, x0
    4668:	mov	x0, x23
    466c:	mov	x2, x22
    4670:	bl	0x220a0
    4674:	mov	x29, x29
    4678:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    467c:	mov	x20, x0
    4680:	mov	x0, x22
    4684:	bl	0x200e8 ; symbol stub for: _objc_release
    4688:	mov	x0, x21
    468c:	bl	0x200e8 ; symbol stub for: _objc_release
    4690:	mov	x0, x23
    4694:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_4698 =====
    4698:	mov	x0, x19
    469c:	bl	0x200e8 ; symbol stub for: _objc_release
    46a0:	cbz	x20, 0x46d4
    46a4:	adrp	x22, 50 ; 0x36000
    46a8:	ldr	x0, [x22, #0x358]
    46ac:	mov	x2, x20
    46b0:	bl	0x214e0
    46b4:	mov	x29, x29
    46b8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    46bc:	mov	x21, x0
    46c0:	bl	0x200e8 ; symbol stub for: _objc_release
    46c4:	cbz	x21, 0x46d4
    46c8:	ldr	x0, [x22, #0x358]
    46cc:	mov	x2, x20
    46d0:	bl	0x21780

; ===== sub_46d4 =====
    46d4:	mov	x0, x19
    46d8:	bl	0xbd74
    46dc:	mov	x29, x29
    46e0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    46e4:	mov	x21, x0
    46e8:	cbz	x0, 0x48e8
    46ec:	adrp	x8, 50 ; 0x36000
    46f0:	ldr	x0, [x8, #0x318]
    46f4:	bl	0x200f4 ; symbol stub for: _objc_retain
    46f8:	mov	x22, x0
    46fc:	movi.16b	v0, #0x0
    4700:	stp	q0, q0, [sp, #0x30]
    4704:	stp	q0, q0, [sp, #0x50]
    4708:	adrp	x8, 50 ; 0x36000
    470c:	ldr	x0, [x8, #0x310]
    4710:	mov	x2, x22
    4714:	bl	0x214e0
    4718:	mov	x29, x29
    471c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4720:	mov	x23, x0
    4724:	add	x2, sp, #0x30
    4728:	add	x3, sp, #0xf0
    472c:	mov	w4, #0x10
    4730:	bl	0x20980
    4734:	cbz	x0, 0x48cc
    4738:	mov	x25, x0
    473c:	ldr	x8, [sp, #0x40]
    4740:	ldr	x27, [x8]
    4744:	fmov	d8, xzr
    4748:	adrp	x24, 42 ; 0x2e000
    474c:	add	x24, x24, #0xf88 ; "after:"
    4750:	mov	x28, #0x0
    4754:	ldr	x8, [sp, #0x40]
    4758:	ldr	x8, [x8]
    475c:	cmp	x8, x27
    4760:	b.eq	0x476c
    4764:	mov	x0, x23
    4768:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    476c:	ldr	x8, [sp, #0x38]
    4770:	ldr	x26, [x8, x28, lsl #3]
    4774:	mov	x0, x26
    4778:	mov	x2, x24
    477c:	bl	0x20d80
    4780:	cbz	w0, 0x47ac
    4784:	mov	x0, x26
    4788:	mov	w2, #0x6
    478c:	bl	0x22140
    4790:	mov	x29, x29
    4794:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4798:	mov	x26, x0
    479c:	bl	0x20be0
    47a0:	mov.16b	v8, v0
    47a4:	mov	x0, x26
    47a8:	bl	0x200e8 ; symbol stub for: _objc_release
    47ac:	add	x28, x28, #0x1
    47b0:	cmp	x25, x28
    47b4:	b.ne	0x4754
    47b8:	add	x2, sp, #0x30
    47bc:	add	x3, sp, #0xf0
    47c0:	mov	x0, x23
    47c4:	mov	w4, #0x10
    47c8:	bl	0x20980
    47cc:	mov	x25, x0
    47d0:	cbnz	x0, 0x4750
    47d4:	mov	x0, x23
    47d8:	bl	0x200e8 ; symbol stub for: _objc_release
    47dc:	fcmp	d8, #0.0
    47e0:	b.le	0x48d4
    47e4:	adrp	x25, 50 ; 0x36000
    47e8:	ldr	x8, [x25, #0x358]
    47ec:	cbnz	x8, 0x4814
    47f0:	adrp	x8, 49 ; 0x35000
    47f4:	ldr	x0, [x8, #0xa68] ; Objc class ref: bad class ref
    47f8:	bl	0x20b60
    47fc:	mov	x29, x29
    4800:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4804:	ldr	x8, [x25, #0x358]
    4808:	str	x0, [x25, #0x358]
    480c:	mov	x0, x8
    4810:	bl	0x200e8 ; symbol stub for: _objc_release
    4814:	adrp	x8, 50 ; 0x36000
    4818:	ldr	x9, [x8, #0x458]
    481c:	add	x23, x9, #0x1
    4820:	str	x23, [x8, #0x458]
    4824:	adrp	x8, 49 ; 0x35000
    4828:	ldr	x0, [x8, #0xa70] ; Objc class ref: bad class ref
    482c:	mov	x2, x23
    4830:	bl	0x21460
    4834:	mov	x29, x29
    4838:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    483c:	mov	x24, x0
    4840:	ldr	x0, [x25, #0x358]
    4844:	mov	x2, x24
    4848:	mov	x3, x19
    484c:	bl	0x21c00
    4850:	mov	x0, x24
    4854:	bl	0x200e8 ; symbol stub for: _objc_release
    4858:	adrp	x8, 30 ; 0x22000
    485c:	ldr	d0, [x8, #0x900]
    4860:	fmul	d0, d8, d0
    4864:	fcvtzs	x1, d0
    4868:	mov	x0, #0x0
    486c:	bl	0x1ff38 ; symbol stub for: _dispatch_time
    4870:	mov	x24, x0
    4874:	adrp	x8, 46 ; 0x32000
    4878:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    487c:	str	x8, [sp]
    4880:	adrp	x8, 30 ; 0x22000
    4884:	ldr	d0, [x8, #0x8f8]
    4888:	str	d0, [sp, #0x8]
    488c:	adrp	x8, 8 ; 0xc000
    4890:	add	x8, x8, #0x5c
    4894:	adrp	x9, 40 ; 0x2c000
    4898:	add	x9, x9, #0x340
    489c:	stp	x8, x9, [sp, #0x10]
    48a0:	mov	x0, x19
    48a4:	bl	0x200f4 ; symbol stub for: _objc_retain
    48a8:	stp	x0, x23, [sp, #0x20]
    48ac:	adrp	x1, 46 ; 0x32000
    48b0:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
    48b4:	mov	x2, sp
    48b8:	mov	x0, x24
    48bc:	bl	0x1fefc ; symbol stub for: _dispatch_after
    48c0:	ldr	x0, [sp, #0x20]
    48c4:	bl	0x200e8 ; symbol stub for: _objc_release
    48c8:	b	0x48e0
    48cc:	mov	x0, x23
    48d0:	bl	0x200e8 ; symbol stub for: _objc_release
    48d4:	mov	x0, x19
    48d8:	mov	x1, x21
    48dc:	bl	0xc108

; ===== sub_48e0 =====
    48e0:	mov	x0, x22
    48e4:	bl	0x200e8 ; symbol stub for: _objc_release
    48e8:	cmp	x21, #0x0
    48ec:	cset	w22, ne
    48f0:	mov	x0, x21
    48f4:	bl	0x200e8 ; symbol stub for: _objc_release
    48f8:	mov	x0, x20
    48fc:	bl	0x200e8 ; symbol stub for: _objc_release
    4900:	mov	x0, x19
    4904:	bl	0x200e8 ; symbol stub for: _objc_release
    4908:	ldur	x8, [x29, #-0x70]
    490c:	adrp	x9, 46 ; 0x32000
    4910:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    4914:	ldr	x9, [x9]
    4918:	cmp	x9, x8
    491c:	b.ne	0x4948
    4920:	mov	x0, x22
    4924:	add	sp, sp, #0x280
    4928:	ldp	x29, x30, [sp, #0x60]
    492c:	ldp	x20, x19, [sp, #0x50]
    4930:	ldp	x22, x21, [sp, #0x40]
    4934:	ldp	x24, x23, [sp, #0x30]
    4938:	ldp	x26, x25, [sp, #0x20]
    493c:	ldp	x28, x27, [sp, #0x10]
    4940:	ldp	d9, d8, [sp], #0x70
    4944:	ret
    4948:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
    494c:	stp	d9, d8, [sp, #-0x40]!
    4950:	stp	x22, x21, [sp, #0x10]
    4954:	stp	x20, x19, [sp, #0x20]
    4958:	stp	x29, x30, [sp, #0x30]
    495c:	add	x29, sp, #0x30
    4960:	mov	x0, x2
    4964:	bl	0x200f4 ; symbol stub for: _objc_retain
    4968:	mov	x19, x0
    496c:	bl	0x21fc0
    4970:	cmp	x0, #0x1
    4974:	b.ne	0x4a34
    4978:	mov	x0, x19
    497c:	bl	0x22400
    4980:	mov	x29, x29
    4984:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4988:	mov	x20, x0
    498c:	mov	x0, x19
    4990:	mov	x2, x20
    4994:	bl	0x21200
    4998:	mov.16b	v8, v0
    499c:	mov	x0, x19
    49a0:	bl	0x22400
    49a4:	mov	x29, x29
    49a8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    49ac:	mov	x21, x0
    49b0:	bl	0x20620
    49b4:	fmov	d0, #0.50000000
    49b8:	fmul	d0, d2, d0
    49bc:	fcmp	d8, d0
    49c0:	mov	w8, #0x2
    49c4:	csinc	x8, x8, xzr, pl
    49c8:	fcmp	d2, #0.0
    49cc:	fmov	d0, xzr
    49d0:	fccmp	d8, d0, #0x8, hi
    49d4:	csel	x1, xzr, x8, mi
    49d8:	adrp	x0, 45 ; 0x31000
    49dc:	add	x0, x0, #0x128 ; "hold"
    49e0:	bl	0x1672c
    49e4:	mov	x29, x29
    49e8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    49ec:	mov	x22, x0
    49f0:	adrp	x8, 50 ; 0x36000
    49f4:	ldr	x0, [x8, #0xf8]
    49f8:	mov	x2, x22
    49fc:	bl	0x208a0
    4a00:	cbz	w0, 0x4a18
    4a04:	adrp	x8, 50 ; 0x36000
    4a08:	mov	w9, #0x1
    4a0c:	strb	w9, [x8, #0x518]
    4a10:	mov	x0, x22
    4a14:	bl	0x4324
    4a18:	mov	x0, x22
    4a1c:	bl	0x200e8 ; symbol stub for: _objc_release
    4a20:	mov	x0, x21
    4a24:	bl	0x200e8 ; symbol stub for: _objc_release
    4a28:	mov	x0, x20
    4a2c:	bl	0x200e8 ; symbol stub for: _objc_release
    4a30:	b	0x4a74
    4a34:	mov	x0, x19
    4a38:	bl	0x21fc0
    4a3c:	cmp	x0, #0x3
    4a40:	b.eq	0x4a54
    4a44:	mov	x0, x19
    4a48:	bl	0x21fc0
    4a4c:	cmp	x0, #0x4
    4a50:	b.ne	0x4a74
    4a54:	adrp	x8, 50 ; 0x36000
    4a58:	ldrb	w9, [x8, #0x518]
    4a5c:	cmp	w9, #0x1
    4a60:	b.ne	0x4a74
    4a64:	strb	wzr, [x8, #0x518]
    4a68:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    4a6c:	adrp	x8, 50 ; 0x36000
    4a70:	str	d0, [x8, #0x520]

; ===== sub_4a74 =====
    4a74:	mov	x0, x19
    4a78:	ldp	x29, x30, [sp, #0x30]
    4a7c:	ldp	x20, x19, [sp, #0x20]
    4a80:	ldp	x22, x21, [sp, #0x10]
    4a84:	ldp	d9, d8, [sp], #0x40
    4a88:	b	0x200e8 ; symbol stub for: _objc_release
    4a8c:	stp	x24, x23, [sp, #-0x40]!
    4a90:	stp	x22, x21, [sp, #0x10]
    4a94:	stp	x20, x19, [sp, #0x20]
    4a98:	stp	x29, x30, [sp, #0x30]
    4a9c:	add	x29, sp, #0x30
    4aa0:	mov	x21, x3
    4aa4:	mov	x20, x0
    4aa8:	mov	x0, x2
    4aac:	bl	0x200f4 ; symbol stub for: _objc_retain
    4ab0:	mov	x19, x0
    4ab4:	mov	x0, x21
    4ab8:	bl	0x200f4 ; symbol stub for: _objc_retain
    4abc:	mov	x21, x0
    4ac0:	adrp	x8, 50 ; 0x36000
    4ac4:	ldrb	w8, [x8, #0x111]
    4ac8:	cmp	w8, #0x1
    4acc:	b.ne	0x4b48
    4ad0:	mov	x0, x20
    4ad4:	bl	0x213c0
    4ad8:	cmp	x0, #0x1
    4adc:	b.ne	0x4b48
    4ae0:	adrp	x8, 49 ; 0x35000
    4ae4:	ldrsw	x8, [x8, #0xc14]
    4ae8:	add	x24, x20, x8
    4aec:	mov	x0, x19
    4af0:	bl	0x20540
    4af4:	mov	x29, x29
    4af8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4afc:	mov	x22, x0
    4b00:	mov	x0, x20
    4b04:	bl	0x22400
    4b08:	mov	x29, x29
    4b0c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4b10:	mov	x23, x0
    4b14:	mov	x0, x22
    4b18:	mov	x2, x23
    4b1c:	bl	0x21200
    4b20:	stp	d0, d1, [x24]
    4b24:	mov	x0, x23
    4b28:	bl	0x200e8 ; symbol stub for: _objc_release
    4b2c:	mov	x0, x22
    4b30:	bl	0x200e8 ; symbol stub for: _objc_release
    4b34:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    4b38:	adrp	x8, 49 ; 0x35000
    4b3c:	ldrsw	x8, [x8, #0xc18]
    4b40:	str	d0, [x20, x8]
    4b44:	b	0x4b54
    4b48:	mov	x0, x20
    4b4c:	mov	w2, #0x5
    4b50:	bl	0x21d00

; ===== sub_4b54 =====
    4b54:	mov	x0, x21
    4b58:	bl	0x200e8 ; symbol stub for: _objc_release
    4b5c:	mov	x0, x19
    4b60:	ldp	x29, x30, [sp, #0x30]
    4b64:	ldp	x20, x19, [sp, #0x20]
    4b68:	ldp	x22, x21, [sp, #0x10]
    4b6c:	ldp	x24, x23, [sp], #0x40
    4b70:	b	0x200e8 ; symbol stub for: _objc_release
    4b74:	sub	sp, sp, #0x150
    4b78:	stp	d9, d8, [sp, #0xe0]
    4b7c:	stp	x28, x27, [sp, #0xf0]
    4b80:	stp	x26, x25, [sp, #0x100]
    4b84:	stp	x24, x23, [sp, #0x110]
    4b88:	stp	x22, x21, [sp, #0x120]
    4b8c:	stp	x20, x19, [sp, #0x130]
    4b90:	stp	x29, x30, [sp, #0x140]
    4b94:	add	x29, sp, #0x140
    4b98:	mov	x19, x0
    4b9c:	adrp	x8, 46 ; 0x32000
    4ba0:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    4ba4:	ldr	x8, [x8]
    4ba8:	stur	x8, [x29, #-0x70]
    4bac:	mov	x0, x2
    4bb0:	bl	0x20540
    4bb4:	mov	x29, x29
    4bb8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4bbc:	mov	x20, x0
    4bc0:	mov	x0, x19
    4bc4:	bl	0x22400
    4bc8:	mov	x29, x29
    4bcc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4bd0:	mov	x21, x0
    4bd4:	mov	x0, x20
    4bd8:	mov	x2, x21
    4bdc:	bl	0x21200
    4be0:	mov.16b	v8, v0
    4be4:	mov.16b	v9, v1
    4be8:	mov	x0, x21
    4bec:	bl	0x200e8 ; symbol stub for: _objc_release
    4bf0:	mov	x0, x20
    4bf4:	bl	0x200e8 ; symbol stub for: _objc_release
    4bf8:	adrp	x8, 49 ; 0x35000
    4bfc:	ldrsw	x8, [x8, #0xc14]
    4c00:	add	x8, x19, x8
    4c04:	ldp	d0, d2, [x8]
    4c08:	fsub	d1, d8, d0
    4c0c:	fsub	d0, d9, d2
    4c10:	fmul	d2, d0, d0
    4c14:	fmadd	d2, d1, d1, d2
    4c18:	adrp	x8, 30 ; 0x22000
    4c1c:	ldr	d3, [x8, #0x908]
    4c20:	fcmp	d2, d3
    4c24:	b.mi	0x4e14
    4c28:	fabs	d2, d1
    4c2c:	fabs	d3, d0
    4c30:	adrp	x8, 42 ; 0x2e000
    4c34:	add	x8, x8, #0xc88 ; "icon.flickright"
    4c38:	adrp	x9, 42 ; 0x2e000
    4c3c:	add	x9, x9, #0xc68 ; "icon.flickleft"
    4c40:	fcmp	d1, #0.0
    4c44:	csel	x8, x9, x8, mi
    4c48:	adrp	x9, 42 ; 0x2e000
    4c4c:	add	x9, x9, #0xcc8 ; "icon.flickdown"
    4c50:	adrp	x10, 42 ; 0x2e000
    4c54:	add	x10, x10, #0xca8 ; "icon.flickup"
    4c58:	fcmp	d0, #0.0
    4c5c:	csel	x9, x10, x9, mi
    4c60:	fcmp	d2, d3
    4c64:	csel	x0, x8, x9, gt
    4c68:	bl	0x200f4 ; symbol stub for: _objc_retain
    4c6c:	mov	x20, x0
    4c70:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    4c74:	adrp	x8, 49 ; 0x35000
    4c78:	ldrsw	x8, [x8, #0xc18]
    4c7c:	ldr	d1, [x19, x8]
    4c80:	fsub	d0, d0, d1
    4c84:	adrp	x8, 30 ; 0x22000
    4c88:	ldr	d1, [x8, #0x910]
    4c8c:	fcmp	d0, d1
    4c90:	b.pl	0x4ce4
    4c94:	mov	x0, x19
    4c98:	bl	0x22400
    4c9c:	mov	x29, x29
    4ca0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4ca4:	bl	0x200f4 ; symbol stub for: _objc_retain
    4ca8:	mov	x21, x0
    4cac:	adrp	x8, 48 ; 0x34000
    4cb0:	ldr	x1, [x8, #0xf48]
    4cb4:	bl	0x5b7c
    4cb8:	tbnz	w0, #0x0, 0x4dec
    4cbc:	adrp	x8, 48 ; 0x34000
    4cc0:	ldr	x22, [x8, #0xf50]
    4cc4:	mov	x0, x21
    4cc8:	mov	x1, x22
    4ccc:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    4cd0:	tbz	w0, #0x0, 0x4cec
    4cd4:	mov	x0, x21
    4cd8:	mov	x2, x22
    4cdc:	bl	0x215e0
    4ce0:	b	0x4cf0
    4ce4:	mov	w22, #0x5
    4ce8:	b	0x4e00
    4cec:	mov	x0, #0x0

; ===== sub_4cf0 =====
    4cf0:	adrp	x8, 48 ; 0x34000
    4cf4:	ldr	x1, [x8, #0xf58]
    4cf8:	bl	0x5b7c
    4cfc:	tbnz	w0, #0x0, 0x4dec
    4d00:	adrp	x8, 49 ; 0x35000
    4d04:	ldr	x23, [x8, #0x438]
    4d08:	mov	x0, x21
    4d0c:	mov	x1, x23
    4d10:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    4d14:	tbz	w0, #0x0, 0x4d28
    4d18:	mov	x0, x21
    4d1c:	mov	x2, x23
    4d20:	bl	0x215e0
    4d24:	b	0x4d2c
    4d28:	mov	x0, #0x0

; ===== sub_4d2c =====
    4d2c:	bl	0x200f4 ; symbol stub for: _objc_retain
    4d30:	mov	x23, x0
    4d34:	adrp	x26, 49 ; 0x35000
    4d38:	ldr	x0, [x26, #0xa38] ; Objc class ref: bad class ref
    4d3c:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    4d40:	mov	x1, x0
    4d44:	mov	x0, x23
    4d48:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    4d4c:	tbz	w0, #0x0, 0x4de4
    4d50:	movi.16b	v0, #0x0
    4d54:	stp	q0, q0, [sp, #0x30]
    4d58:	stp	q0, q0, [sp, #0x10]
    4d5c:	adrp	x0, 46 ; 0x32000
    4d60:	add	x0, x0, #0x900
    4d64:	add	x2, sp, #0x10
    4d68:	add	x3, sp, #0x50
    4d6c:	mov	w4, #0x10
    4d70:	bl	0x20980
    4d74:	cbz	x0, 0x4de4
    4d78:	mov	x25, x0
    4d7c:	ldr	x8, [sp, #0x20]
    4d80:	ldr	x27, [x8]
    4d84:	adrp	x24, 46 ; 0x32000
    4d88:	add	x24, x24, #0x900
    4d8c:	mov	x28, #0x0
    4d90:	ldr	x8, [sp, #0x20]
    4d94:	ldr	x8, [x8]
    4d98:	cmp	x8, x27
    4d9c:	b.eq	0x4da8
    4da0:	mov	x0, x24
    4da4:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    4da8:	ldr	x8, [sp, #0x18]
    4dac:	ldr	x2, [x8, x28, lsl #3]
    4db0:	mov	x0, x23
    4db4:	bl	0x20d80
    4db8:	tbnz	w0, #0x0, 0x4e50
    4dbc:	add	x28, x28, #0x1
    4dc0:	cmp	x25, x28
    4dc4:	b.ne	0x4d90
    4dc8:	add	x2, sp, #0x10
    4dcc:	add	x3, sp, #0x50
    4dd0:	mov	x0, x24
    4dd4:	mov	w4, #0x10
    4dd8:	bl	0x20980
    4ddc:	mov	x25, x0
    4de0:	cbnz	x0, 0x4d8c
    4de4:	mov	x0, x23
    4de8:	bl	0x200e8 ; symbol stub for: _objc_release
    4dec:	mov	x0, x21
    4df0:	bl	0x200e8 ; symbol stub for: _objc_release
    4df4:	mov	w22, #0x5

; ===== sub_4df8 =====
    4df8:	mov	x0, x21
    4dfc:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_4e00 =====
    4e00:	mov	x0, x19
    4e04:	mov	x2, x22
    4e08:	bl	0x21d00
    4e0c:	mov	x0, x20
    4e10:	bl	0x200e8 ; symbol stub for: _objc_release
    4e14:	ldur	x8, [x29, #-0x70]
    4e18:	adrp	x9, 46 ; 0x32000
    4e1c:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    4e20:	ldr	x9, [x9]
    4e24:	cmp	x9, x8
    4e28:	b.ne	0x4f7c
    4e2c:	ldp	x29, x30, [sp, #0x140]
    4e30:	ldp	x20, x19, [sp, #0x130]
    4e34:	ldp	x22, x21, [sp, #0x120]
    4e38:	ldp	x24, x23, [sp, #0x110]
    4e3c:	ldp	x26, x25, [sp, #0x100]
    4e40:	ldp	x28, x27, [sp, #0xf0]
    4e44:	ldp	d9, d8, [sp, #0xe0]
    4e48:	add	sp, sp, #0x150
    4e4c:	ret
    4e50:	mov	x0, x23
    4e54:	bl	0x200e8 ; symbol stub for: _objc_release
    4e58:	mov	x0, x21
    4e5c:	bl	0x200e8 ; symbol stub for: _objc_release
    4e60:	mov	x0, x19
    4e64:	bl	0x22400
    4e68:	mov	x29, x29
    4e6c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4e70:	mov	x23, x0
    4e74:	mov	x0, x20
    4e78:	bl	0x200f4 ; symbol stub for: _objc_retain
    4e7c:	mov	x24, x0
    4e80:	mov	x0, x23
    4e84:	mov	x1, x22
    4e88:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    4e8c:	tbz	w0, #0x0, 0x4ea0
    4e90:	mov	x0, x23
    4e94:	mov	x2, x22
    4e98:	bl	0x215e0
    4e9c:	b	0x4ea4
    4ea0:	mov	x0, #0x0

; ===== sub_4ea4 =====
    4ea4:	bl	0x200f4 ; symbol stub for: _objc_retain
    4ea8:	mov	x22, x0
    4eac:	adrp	x8, 48 ; 0x34000
    4eb0:	ldr	x25, [x8, #0xf60]
    4eb4:	mov	x1, x25
    4eb8:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    4ebc:	tbz	w0, #0x0, 0x4ed0
    4ec0:	mov	x0, x22
    4ec4:	mov	x2, x25
    4ec8:	bl	0x215e0
    4ecc:	b	0x4ed4
    4ed0:	mov	x0, #0x0

; ===== sub_4ed4 =====
    4ed4:	bl	0x200f4 ; symbol stub for: _objc_retain
    4ed8:	mov	x25, x0
    4edc:	ldr	x0, [x26, #0xa38]
    4ee0:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    4ee4:	mov	x1, x0
    4ee8:	mov	x0, x25
    4eec:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    4ef0:	tbz	w0, #0x0, 0x4f24
    4ef4:	ldr	x0, [x26, #0xa38]
    4ef8:	stp	x24, x25, [sp]
    4efc:	adrp	x2, 45 ; 0x31000
    4f00:	add	x2, x2, #0x248 ; "%@:%@"
    4f04:	bl	0x22100
    4f08:	mov	x29, x29
    4f0c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4f10:	mov	x27, x0
    4f14:	bl	0x4324
    4f18:	tbz	w0, #0x0, 0x4f34
    4f1c:	mov	w26, #0x1
    4f20:	b	0x4f40
    4f24:	mov	x0, x24
    4f28:	bl	0x4324
    4f2c:	mov	x26, x0
    4f30:	b	0x4f48
    4f34:	mov	x0, x24
    4f38:	bl	0x4324
    4f3c:	mov	x26, x0

; ===== sub_4f40 =====
    4f40:	mov	x0, x27
    4f44:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_4f48 =====
    4f48:	mov	x0, x25
    4f4c:	bl	0x200e8 ; symbol stub for: _objc_release
    4f50:	mov	x0, x22
    4f54:	bl	0x200e8 ; symbol stub for: _objc_release
    4f58:	mov	x0, x24
    4f5c:	bl	0x200e8 ; symbol stub for: _objc_release
    4f60:	cmp	w26, #0x0
    4f64:	mov	w8, #0x5
    4f68:	mov	w9, #0x3
    4f6c:	csel	x22, x9, x8, ne
    4f70:	mov	x0, x23
    4f74:	bl	0x200e8 ; symbol stub for: _objc_release
    4f78:	b	0x4df8
    4f7c:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
    4f80:	mov	w2, #0x5
    4f84:	b	0x21d00
    4f88:	mov	w2, #0x5
    4f8c:	b	0x21d00
    4f90:	stp	x20, x19, [sp, #-0x20]!
    4f94:	stp	x29, x30, [sp, #0x10]
    4f98:	add	x29, sp, #0x10
    4f9c:	adrp	x19, 50 ; 0x36000
    4fa0:	ldr	x0, [x19, #0x118]
    4fa4:	cbnz	x0, 0x4fc8
    4fa8:	adrp	x8, 49 ; 0x35000
    4fac:	ldr	x0, [x8, #0xa00] ; Objc class ref: bad class ref
    4fb0:	bl	0x200d0 ; symbol stub for: _objc_opt_new
    4fb4:	ldr	x8, [x19, #0x118]
    4fb8:	str	x0, [x19, #0x118]
    4fbc:	mov	x0, x8
    4fc0:	bl	0x200e8 ; symbol stub for: _objc_release
    4fc4:	ldr	x0, [x19, #0x118]
    4fc8:	ldp	x29, x30, [sp, #0x10]
    4fcc:	ldp	x20, x19, [sp], #0x20
    4fd0:	b	0x2010c ; symbol stub for: _objc_retainAutoreleaseReturnValue
    4fd4:	stp	x20, x19, [sp, #-0x20]!
    4fd8:	stp	x29, x30, [sp, #0x10]
    4fdc:	add	x29, sp, #0x10
    4fe0:	mov	x0, x2
    4fe4:	bl	0x200f4 ; symbol stub for: _objc_retain
    4fe8:	mov	x19, x0
    4fec:	adrp	x8, 49 ; 0x35000
    4ff0:	ldr	x0, [x8, #0xa08] ; Objc class ref: bad class ref
    4ff4:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    4ff8:	mov	x1, x0
    4ffc:	mov	x0, x19
    5000:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    5004:	tbz	w0, #0x0, 0x5010
    5008:	mov	x20, #0x0
    500c:	b	0x5060
    5010:	adrp	x8, 48 ; 0x35000
    5014:	ldr	x0, [x8, #0xa10] ; Objc class ref: bad class ref
    5018:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    501c:	mov	x1, x0
    5020:	mov	x0, x19
    5024:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    5028:	tbz	w0, #0x0, 0x5038
    502c:	adrp	x20, 41 ; 0x2e000
    5030:	add	x20, x20, #0xce8 ; "homescreen.doubletap"
    5034:	b	0x5060
    5038:	mov	x0, x19
    503c:	bl	0x20bc0
    5040:	adrp	x8, 41 ; 0x2e000
    5044:	add	x8, x8, #0xd28 ; "homescreen.twodown"
    5048:	adrp	x9, 41 ; 0x2e000
    504c:	add	x9, x9, #0xd08 ; "homescreen.twoup"
    5050:	cmp	x0, #0x4
    5054:	csel	x0, x9, x8, eq
    5058:	bl	0x200f4 ; symbol stub for: _objc_retain
    505c:	mov	x20, x0

; ===== sub_5060 =====
    5060:	mov	x0, x19
    5064:	bl	0x200e8 ; symbol stub for: _objc_release
    5068:	mov	x0, x20
    506c:	ldp	x29, x30, [sp, #0x10]
    5070:	ldp	x20, x19, [sp], #0x20
    5074:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue
    5078:	stp	x24, x23, [sp, #-0x40]!
    507c:	stp	x22, x21, [sp, #0x10]
    5080:	stp	x20, x19, [sp, #0x20]
    5084:	stp	x29, x30, [sp, #0x30]
    5088:	add	x29, sp, #0x30
    508c:	mov	x20, x0
    5090:	mov	x0, x2
    5094:	bl	0x200f4 ; symbol stub for: _objc_retain
    5098:	mov	x19, x0
    509c:	adrp	x8, 49 ; 0x36000
    50a0:	ldrb	w8, [x8, #0x120]
    50a4:	cmp	w8, #0x1
    50a8:	b.ne	0x5140
    50ac:	adrp	x0, 30 ; 0x23000
    50b0:	add	x0, x0, #0xc51 ; literal pool for: "SBIconController"
    50b4:	bl	0x105fc
    50b8:	mov	x29, x29
    50bc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    50c0:	mov	x21, x0
    50c4:	adrp	x8, 47 ; 0x34000
    50c8:	ldr	x22, [x8, #0xce8]
    50cc:	mov	x1, x22
    50d0:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    50d4:	mov	x8, x0
    50d8:	mov	x0, x21
    50dc:	tbz	w8, #0x0, 0x50ec
    50e0:	mov	x0, x21
    50e4:	mov	x2, x22
    50e8:	bl	0x215e0
    50ec:	bl	0x200f4 ; symbol stub for: _objc_retain
    50f0:	mov	x22, x0
    50f4:	adrp	x8, 47 ; 0x34000
    50f8:	ldr	x1, [x8, #0xf48]
    50fc:	bl	0x5b7c
    5100:	cbz	w0, 0x5118
    5104:	mov	x0, x22
    5108:	bl	0x200e8 ; symbol stub for: _objc_release
    510c:	mov	x0, x21
    5110:	bl	0x200e8 ; symbol stub for: _objc_release
    5114:	b	0x5140
    5118:	adrp	x8, 47 ; 0x34000
    511c:	ldr	x1, [x8, #0xf68]
    5120:	mov	x0, x22
    5124:	bl	0x5b7c
    5128:	mov	x23, x0
    512c:	mov	x0, x22
    5130:	bl	0x200e8 ; symbol stub for: _objc_release
    5134:	mov	x0, x21
    5138:	bl	0x200e8 ; symbol stub for: _objc_release
    513c:	tbz	w23, #0x0, 0x5164

; ===== sub_5140 =====
    5140:	mov	w20, #0x0

; ===== sub_5144 =====
    5144:	mov	x0, x19
    5148:	bl	0x200e8 ; symbol stub for: _objc_release
    514c:	mov	x0, x20
    5150:	ldp	x29, x30, [sp, #0x30]
    5154:	ldp	x20, x19, [sp, #0x20]
    5158:	ldp	x22, x21, [sp, #0x10]
    515c:	ldp	x24, x23, [sp], #0x40
    5160:	ret
    5164:	adrp	x8, 48 ; 0x35000
    5168:	ldr	x0, [x8, #0xa08] ; Objc class ref: bad class ref
    516c:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    5170:	mov	x1, x0
    5174:	mov	x0, x19
    5178:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    517c:	adrp	x22, 49 ; 0x36000
    5180:	ldr	x21, [x22, #0xf8]
    5184:	tbz	w0, #0x0, 0x51a4
    5188:	adrp	x2, 41 ; 0x2e000
    518c:	add	x2, x2, #0xd48 ; "homescreen.pinchin"
    5190:	mov	x0, x21
    5194:	bl	0x208a0
    5198:	tbz	w0, #0x0, 0x51d8
    519c:	mov	w20, #0x1
    51a0:	b	0x5144
    51a4:	mov	x0, x20
    51a8:	mov	x2, x19
    51ac:	bl	0x22320
    51b0:	mov	x29, x29
    51b4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    51b8:	mov	x22, x0
    51bc:	mov	x0, x21
    51c0:	mov	x2, x22
    51c4:	bl	0x208a0
    51c8:	mov	x20, x0
    51cc:	mov	x0, x22
    51d0:	bl	0x200e8 ; symbol stub for: _objc_release
    51d4:	b	0x5144
    51d8:	ldr	x0, [x22, #0xf8]
    51dc:	adrp	x2, 41 ; 0x2e000
    51e0:	add	x2, x2, #0xd68 ; "homescreen.pinchout"
    51e4:	bl	0x208a0
    51e8:	mov	x20, x0
    51ec:	b	0x5144
    51f0:	stp	x26, x25, [sp, #-0x50]!
    51f4:	stp	x24, x23, [sp, #0x10]
    51f8:	stp	x22, x21, [sp, #0x20]
    51fc:	stp	x20, x19, [sp, #0x30]
    5200:	stp	x29, x30, [sp, #0x40]
    5204:	add	x29, sp, #0x40
    5208:	mov	x20, x3
    520c:	mov	x0, x2
    5210:	bl	0x200f4 ; symbol stub for: _objc_retain
    5214:	mov	x19, x0
    5218:	mov	x0, x20
    521c:	bl	0x200f4 ; symbol stub for: _objc_retain
    5220:	mov	x20, x0
    5224:	adrp	x8, 48 ; 0x35000
    5228:	ldr	x0, [x8, #0xa10] ; Objc class ref: bad class ref
    522c:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    5230:	mov	x1, x0
    5234:	mov	x0, x19
    5238:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    523c:	tbz	w0, #0x0, 0x5324
    5240:	mov	x0, x20
    5244:	bl	0x22400
    5248:	mov	x29, x29
    524c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5250:	cbz	x0, 0x5324
    5254:	mov	x21, x0
    5258:	adrp	x22, 41 ; 0x2e000
    525c:	add	x22, x22, #0xd88 ; "IconView"
    5260:	adrp	x23, 41 ; 0x2e000
    5264:	add	x23, x23, #0xda8 ; "Widget"
    5268:	adrp	x26, 48 ; 0x35000
    526c:	adrp	x24, 41 ; 0x2e000
    5270:	add	x24, x24, #0xdc8 ; "Dock"
    5274:	mov	x0, x19
    5278:	bl	0x22400
    527c:	mov	x29, x29
    5280:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5284:	mov	x25, x0
    5288:	bl	0x200e8 ; symbol stub for: _objc_release
    528c:	cmp	x21, x25
    5290:	b.eq	0x531c
    5294:	mov	x0, x21
    5298:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    529c:	bl	0x1fe30 ; symbol stub for: _NSStringFromClass
    52a0:	mov	x29, x29
    52a4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    52a8:	mov	x25, x0
    52ac:	mov	x2, x22
    52b0:	bl	0x208c0
    52b4:	tbnz	w0, #0x0, 0x532c
    52b8:	mov	x0, x25
    52bc:	mov	x2, x23
    52c0:	bl	0x208c0
    52c4:	tbnz	w0, #0x0, 0x532c
    52c8:	mov	x0, x25
    52cc:	mov	x2, x24
    52d0:	bl	0x208c0
    52d4:	tbnz	w0, #0x0, 0x532c
    52d8:	ldr	x0, [x26, #0xa18]
    52dc:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    52e0:	mov	x1, x0
    52e4:	mov	x0, x21
    52e8:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    52ec:	tbnz	w0, #0x0, 0x532c
    52f0:	mov	x0, x25
    52f4:	bl	0x200e8 ; symbol stub for: _objc_release
    52f8:	mov	x0, x21
    52fc:	bl	0x221a0
    5300:	mov	x29, x29
    5304:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5308:	mov	x25, x0
    530c:	mov	x0, x21
    5310:	bl	0x200e8 ; symbol stub for: _objc_release
    5314:	mov	x21, x25
    5318:	cbnz	x25, 0x5274
    531c:	mov	w22, #0x1
    5320:	b	0x5338
    5324:	mov	w22, #0x1
    5328:	b	0x5340
    532c:	mov	x0, x25
    5330:	bl	0x200e8 ; symbol stub for: _objc_release
    5334:	mov	w22, #0x0

; ===== sub_5338 =====
    5338:	mov	x0, x21
    533c:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_5340 =====
    5340:	mov	x0, x20
    5344:	bl	0x200e8 ; symbol stub for: _objc_release
    5348:	mov	x0, x19
    534c:	bl	0x200e8 ; symbol stub for: _objc_release
    5350:	mov	x0, x22
    5354:	ldp	x29, x30, [sp, #0x40]
    5358:	ldp	x20, x19, [sp, #0x30]
    535c:	ldp	x22, x21, [sp, #0x20]
    5360:	ldp	x24, x23, [sp, #0x10]
    5364:	ldp	x26, x25, [sp], #0x50
    5368:	ret
    536c:	mov	w0, #0x1
    5370:	ret
    5374:	stp	x22, x21, [sp, #-0x30]!
    5378:	stp	x20, x19, [sp, #0x10]
    537c:	stp	x29, x30, [sp, #0x20]
    5380:	add	x29, sp, #0x20
    5384:	mov	x20, x0
    5388:	mov	x0, x2
    538c:	bl	0x200f4 ; symbol stub for: _objc_retain
    5390:	mov	x19, x0
    5394:	adrp	x8, 48 ; 0x35000
    5398:	ldr	x0, [x8, #0xa08] ; Objc class ref: bad class ref
    539c:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    53a0:	mov	x1, x0
    53a4:	mov	x0, x19
    53a8:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    53ac:	mov	x21, x0
    53b0:	mov	x0, x19
    53b4:	bl	0x21fc0
    53b8:	tbz	w21, #0x0, 0x53d0
    53bc:	adrp	x8, 49 ; 0x36000
    53c0:	cmp	x0, #0x1
    53c4:	b.ne	0x53f4
    53c8:	strb	wzr, [x8, #0x121]
    53cc:	b	0x53fc
    53d0:	cmp	x0, #0x3
    53d4:	b.ne	0x5490
    53d8:	mov	x0, x20
    53dc:	mov	x2, x19
    53e0:	bl	0x22320
    53e4:	mov	x29, x29
    53e8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    53ec:	mov	x20, x0
    53f0:	b	0x5480
    53f4:	ldrb	w8, [x8, #0x121]
    53f8:	tbnz	w8, #0x0, 0x5490

; ===== sub_53fc =====
    53fc:	mov	x0, x19
    5400:	bl	0x21fc0
    5404:	cmp	x0, #0x2
    5408:	b.eq	0x541c
    540c:	mov	x0, x19
    5410:	bl	0x21fc0
    5414:	cmp	x0, #0x3
    5418:	b.ne	0x5490
    541c:	mov	x0, x19
    5420:	bl	0x21840
    5424:	adrp	x8, 41 ; 0x2e000
    5428:	add	x8, x8, #0xd68 ; "homescreen.pinchout"
    542c:	adrp	x9, 29 ; 0x22000
    5430:	ldr	d1, [x9, #0x918]
    5434:	fcmp	d0, d1
    5438:	csel	x8, x8, xzr, gt
    543c:	adrp	x9, 41 ; 0x2e000
    5440:	add	x9, x9, #0xd48 ; "homescreen.pinchin"
    5444:	adrp	x10, 29 ; 0x22000
    5448:	ldr	d1, [x10, #0x920]
    544c:	fcmp	d0, d1
    5450:	csel	x0, x9, x8, mi
    5454:	bl	0x200f4 ; symbol stub for: _objc_retain
    5458:	mov	x20, x0
    545c:	cbz	x0, 0x5488
    5460:	adrp	x8, 49 ; 0x36000
    5464:	ldr	x0, [x8, #0xf8]
    5468:	mov	x2, x20
    546c:	bl	0x208a0
    5470:	cbz	w0, 0x5488
    5474:	adrp	x8, 49 ; 0x36000
    5478:	mov	w9, #0x1
    547c:	strb	w9, [x8, #0x121]

; ===== sub_5480 =====
    5480:	mov	x0, x20
    5484:	bl	0x4324
    5488:	mov	x0, x20
    548c:	bl	0x200e8 ; symbol stub for: _objc_release
    5490:	mov	x0, x19
    5494:	ldp	x29, x30, [sp, #0x20]
    5498:	ldp	x20, x19, [sp, #0x10]
    549c:	ldp	x22, x21, [sp], #0x30
    54a0:	b	0x200e8 ; symbol stub for: _objc_release
    54a4:	sub	sp, sp, #0x60
    54a8:	stp	d9, d8, [sp, #0x10]
    54ac:	stp	x24, x23, [sp, #0x20]
    54b0:	stp	x22, x21, [sp, #0x30]
    54b4:	stp	x20, x19, [sp, #0x40]
    54b8:	stp	x29, x30, [sp, #0x50]
    54bc:	add	x29, sp, #0x50
    54c0:	mov	x21, x3
    54c4:	mov	x20, x0
    54c8:	mov	x0, x2
    54cc:	bl	0x200f4 ; symbol stub for: _objc_retain
    54d0:	mov	x19, x0
    54d4:	adrp	x8, 48 ; 0x35000
    54d8:	ldr	x8, [x8, #0xc00] ; Objc class ref: bad class ref
    54dc:	stp	x20, x8, [sp]
    54e0:	adrp	x8, 47 ; 0x34000
    54e4:	ldr	x22, [x8, #0xa38]
    54e8:	mov	x0, x21
    54ec:	bl	0x200f4 ; symbol stub for: _objc_retain
    54f0:	mov	x21, x0
    54f4:	mov	x0, sp
    54f8:	mov	x1, x22
    54fc:	mov	x2, x19
    5500:	mov	x3, x21
    5504:	bl	0x200ac ; symbol stub for: _objc_msgSendSuper2
    5508:	mov	x0, x21
    550c:	bl	0x204c0
    5510:	mov	x29, x29
    5514:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5518:	mov	x22, x0
    551c:	mov	x0, x21
    5520:	bl	0x200e8 ; symbol stub for: _objc_release
    5524:	mov	x0, x22
    5528:	bl	0x20960
    552c:	mov	x21, x0
    5530:	mov	x0, x20
    5534:	bl	0x20c80
    5538:	mov	x23, x0
    553c:	mov	x0, x22
    5540:	bl	0x200e8 ; symbol stub for: _objc_release
    5544:	cmp	x21, x23
    5548:	b.hi	0x5658
    554c:	mov	x0, x20
    5550:	mov	w2, #0x0
    5554:	bl	0x21a80
    5558:	adrp	x8, 49 ; 0x36000
    555c:	ldr	x21, [x8, #0xf8]
    5560:	mov	x0, x20
    5564:	bl	0x22300
    5568:	mov	x29, x29
    556c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5570:	mov	x22, x0
    5574:	mov	x0, x21
    5578:	mov	x2, x22
    557c:	bl	0x208a0
    5580:	mov	x21, x0
    5584:	mov	x0, x22
    5588:	bl	0x200e8 ; symbol stub for: _objc_release
    558c:	tbz	w21, #0x0, 0x5658
    5590:	mov	x0, x19
    5594:	bl	0x20540
    5598:	mov	x29, x29
    559c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    55a0:	mov	x21, x0
    55a4:	cbz	x0, 0x5640
    55a8:	mov	x0, x20
    55ac:	bl	0x22300
    55b0:	mov	x29, x29
    55b4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    55b8:	mov	x22, x0
    55bc:	mov	x0, x21
    55c0:	mov	x2, #0x0
    55c4:	bl	0x21200
    55c8:	mov.16b	v9, v0
    55cc:	mov.16b	v8, v1
    55d0:	mov	x0, x22
    55d4:	bl	0x200f4 ; symbol stub for: _objc_retain
    55d8:	mov	x22, x0
    55dc:	adrp	x2, 44 ; 0x31000
    55e0:	add	x2, x2, #0x268 ; "edge.bottomleft"
    55e4:	bl	0x21000
    55e8:	tbnz	w0, #0x0, 0x5600
    55ec:	adrp	x2, 44 ; 0x31000
    55f0:	add	x2, x2, #0x288 ; "edge.bottomright"
    55f4:	mov	x0, x22
    55f8:	bl	0x21000
    55fc:	cbz	w0, 0x5688
    5600:	mov.16b	v0, v9
    5604:	mov.16b	v1, v8
    5608:	bl	0x167dc
    560c:	mov	x29, x29
    5610:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue

; ===== sub_5614 =====
    5614:	mov	x23, x0
    5618:	mov	x2, x22
    561c:	bl	0x21000
    5620:	mov	x24, x0
    5624:	mov	x0, x23
    5628:	bl	0x200e8 ; symbol stub for: _objc_release
    562c:	mov	x0, x22
    5630:	bl	0x200e8 ; symbol stub for: _objc_release
    5634:	mov	x0, x22
    5638:	bl	0x200e8 ; symbol stub for: _objc_release
    563c:	tbnz	w24, #0x0, 0x564c
    5640:	mov	x0, x20
    5644:	mov	w2, #0x5
    5648:	bl	0x21d00

; ===== sub_564c =====
    564c:	mov	x0, x21
    5650:	bl	0x200e8 ; symbol stub for: _objc_release
    5654:	b	0x5664
    5658:	mov	x0, x20
    565c:	mov	w2, #0x5
    5660:	bl	0x21d00

; ===== sub_5664 =====
    5664:	mov	x0, x19
    5668:	bl	0x200e8 ; symbol stub for: _objc_release
    566c:	ldp	x29, x30, [sp, #0x50]
    5670:	ldp	x20, x19, [sp, #0x40]
    5674:	ldp	x22, x21, [sp, #0x30]
    5678:	ldp	x24, x23, [sp, #0x20]
    567c:	ldp	d9, d8, [sp, #0x10]
    5680:	add	sp, sp, #0x60
    5684:	ret
    5688:	adrp	x2, 44 ; 0x31000
    568c:	add	x2, x2, #0x2a8 ; "edge.topleft"
    5690:	mov	x0, x22
    5694:	bl	0x21000
    5698:	tbnz	w0, #0x0, 0x56b0
    569c:	adrp	x2, 44 ; 0x31000
    56a0:	add	x2, x2, #0x2c8 ; "edge.topright"
    56a4:	mov	x0, x22
    56a8:	bl	0x21000
    56ac:	tbz	w0, #0x0, 0x56c8
    56b0:	mov.16b	v0, v9
    56b4:	mov.16b	v1, v8
    56b8:	bl	0x168ac
    56bc:	mov	x29, x29
    56c0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    56c4:	b	0x5614
    56c8:	mov	x0, x22
    56cc:	bl	0x200e8 ; symbol stub for: _objc_release
    56d0:	mov	x0, x22
    56d4:	bl	0x200e8 ; symbol stub for: _objc_release
    56d8:	b	0x564c
    56dc:	adrp	x8, 48 ; 0x35000
    56e0:	ldrsw	x8, [x8, #0xc1c]
    56e4:	ldr	x0, [x0, x8]
    56e8:	ret
    56ec:	adrp	x8, 48 ; 0x35000
    56f0:	ldrsw	x3, [x8, #0xc1c]
    56f4:	b	0x2013c ; symbol stub for: _objc_setProperty_nonatomic_copy
    56f8:	adrp	x8, 48 ; 0x35000
    56fc:	ldrsw	x8, [x8, #0xc20]
    5700:	ldr	x0, [x0, x8]
    5704:	ret
    5708:	adrp	x8, 48 ; 0x35000
    570c:	ldrsw	x8, [x8, #0xc20]
    5710:	str	x2, [x0, x8]
    5714:	ret
    5718:	adrp	x8, 48 ; 0x35000
    571c:	ldrsw	x8, [x8, #0xc24]
    5720:	ldr	x0, [x0, x8]
    5724:	ret
    5728:	adrp	x8, 48 ; 0x35000
    572c:	ldrsw	x8, [x8, #0xc24]
    5730:	str	x2, [x0, x8]
    5734:	ret
    5738:	adrp	x8, 48 ; 0x35000
    573c:	ldrsw	x8, [x8, #0xc28]
    5740:	ldrb	w0, [x0, x8]
    5744:	ret
    5748:	adrp	x8, 48 ; 0x35000
    574c:	ldrsw	x8, [x8, #0xc28]
    5750:	strb	w2, [x0, x8]
    5754:	ret
    5758:	adrp	x8, 48 ; 0x35000
    575c:	ldrsw	x8, [x8, #0xc1c]
    5760:	add	x0, x0, x8
    5764:	mov	x1, #0x0
    5768:	b	0x20148 ; symbol stub for: _objc_storeStrong
    576c:	stp	d9, d8, [sp, #-0x30]!
    5770:	stp	x20, x19, [sp, #0x10]
    5774:	stp	x29, x30, [sp, #0x20]
    5778:	add	x29, sp, #0x20
    577c:	mov	x0, x2
    5780:	bl	0x200f4 ; symbol stub for: _objc_retain
    5784:	mov	x19, x0
    5788:	bl	0x20cc0
    578c:	tbnz	w0, #0x0, 0x58c8
    5790:	mov	x0, x19
    5794:	bl	0x21fc0
    5798:	cmp	x0, #0x2
    579c:	b.eq	0x57b0
    57a0:	mov	x0, x19
    57a4:	bl	0x21fc0
    57a8:	cmp	x0, #0x3
    57ac:	b.ne	0x58c8
    57b0:	mov	x0, x19
    57b4:	mov	x2, #0x0
    57b8:	bl	0x222e0
    57bc:	mov.16b	v9, v0
    57c0:	mov.16b	v8, v1
    57c4:	mov	x0, x19
    57c8:	bl	0x20c00
    57cc:	cmp	x0, #0x4
    57d0:	b.ne	0x57dc
    57d4:	mov	w20, #0x1
    57d8:	b	0x57ec
    57dc:	mov	x0, x19
    57e0:	bl	0x20c00
    57e4:	cmp	x0, #0x1
    57e8:	cset	w20, eq

; ===== sub_57ec =====
    57ec:	mov	x0, x19
    57f0:	bl	0x20c00
    57f4:	cmp	x0, #0x4
    57f8:	b.ne	0x5804
    57fc:	fneg	d0, d8
    5800:	b	0x582c
    5804:	mov	x0, x19
    5808:	bl	0x20c00
    580c:	mov.16b	v0, v8
    5810:	cmp	x0, #0x1
    5814:	b.eq	0x582c
    5818:	mov	x0, x19
    581c:	bl	0x20c00
    5820:	fneg	d0, d9
    5824:	cmp	x0, #0x2
    5828:	fcsel	d0, d9, d0, eq

; ===== sub_582c =====
    582c:	mov	x8, #0x404e000000000000
    5830:	fmov	d1, x8
    5834:	fcmp	d0, d1
    5838:	b.mi	0x58c8
    583c:	fabs	d1, d9
    5840:	fabs	d2, d8
    5844:	cmp	w20, #0x0
    5848:	fcsel	d1, d1, d2, ne
    584c:	fcmp	d1, d0
    5850:	b.gt	0x58c8
    5854:	mov	x0, x19
    5858:	mov	w2, #0x1
    585c:	bl	0x21a80
    5860:	mov	x0, x19
    5864:	bl	0x20c00
    5868:	cmp	x0, #0x4
    586c:	b.ne	0x58a8
    5870:	mov	x0, x19
    5874:	bl	0x20c80
    5878:	cmp	x0, #0x1
    587c:	b.ne	0x58a8
    5880:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    5884:	adrp	x20, 49 ; 0x36000
    5888:	ldr	d1, [x20, #0x128]
    588c:	fsub	d0, d0, d1
    5890:	adrp	x8, 29 ; 0x22000
    5894:	ldr	d1, [x8, #0x928]
    5898:	fcmp	d0, d1
    589c:	b.mi	0x58c8
    58a0:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    58a4:	str	d0, [x20, #0x128]
    58a8:	mov	x0, x19
    58ac:	bl	0x22300
    58b0:	mov	x29, x29
    58b4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    58b8:	mov	x20, x0
    58bc:	bl	0x4324
    58c0:	mov	x0, x20
    58c4:	bl	0x200e8 ; symbol stub for: _objc_release
    58c8:	mov	x0, x19
    58cc:	ldp	x29, x30, [sp, #0x20]
    58d0:	ldp	x20, x19, [sp, #0x10]
    58d4:	ldp	d9, d8, [sp], #0x30
    58d8:	b	0x200e8 ; symbol stub for: _objc_release
    58dc:	stp	x20, x19, [sp, #-0x20]!
    58e0:	stp	x29, x30, [sp, #0x10]
    58e4:	add	x29, sp, #0x10
    58e8:	mov	x0, x2
    58ec:	bl	0x200f4 ; symbol stub for: _objc_retain
    58f0:	mov	x19, x0
    58f4:	adrp	x8, 48 ; 0x35000
    58f8:	ldr	x0, [x8, #0xa20] ; Objc class ref: bad class ref
    58fc:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    5900:	mov	x1, x0
    5904:	mov	x0, x19
    5908:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    590c:	mov	x20, x0
    5910:	mov	x0, x19
    5914:	bl	0x21fc0
    5918:	tst	w20, #0x1
    591c:	mov	w8, #0x3
    5920:	csinc	x8, x8, xzr, eq
    5924:	cmp	x0, x8
    5928:	b.ne	0x5954
    592c:	adrp	x1, 31 ; 0x24000
    5930:	add	x1, x1, #0xff5 ; literal pool for: "TGClockTrigger"
    5934:	mov	x0, x19
    5938:	bl	0x2007c ; symbol stub for: _objc_getAssociatedObject
    593c:	mov	x29, x29
    5940:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5944:	mov	x20, x0
    5948:	bl	0x4324
    594c:	mov	x0, x20
    5950:	bl	0x200e8 ; symbol stub for: _objc_release
    5954:	mov	x0, x19
    5958:	ldp	x29, x30, [sp, #0x10]
    595c:	ldp	x20, x19, [sp], #0x20
    5960:	b	0x200e8 ; symbol stub for: _objc_release
    5964:	stp	d11, d10, [sp, #-0x70]!
    5968:	stp	d9, d8, [sp, #0x10]
    596c:	stp	x26, x25, [sp, #0x20]
    5970:	stp	x24, x23, [sp, #0x30]
    5974:	stp	x22, x21, [sp, #0x40]
    5978:	stp	x20, x19, [sp, #0x50]
    597c:	stp	x29, x30, [sp, #0x60]
    5980:	add	x29, sp, #0x60
    5984:	mov	x20, x3
    5988:	mov	x0, x2
    598c:	bl	0x200f4 ; symbol stub for: _objc_retain
    5990:	mov	x19, x0
    5994:	mov	x0, x20
    5998:	bl	0x200f4 ; symbol stub for: _objc_retain
    599c:	mov	x20, x0
    59a0:	adrp	x0, 49 ; 0x36000
    59a4:	add	x0, x0, #0x130
    59a8:	bl	0x20094 ; symbol stub for: _objc_loadWeakRetained
    59ac:	mov	x21, x0
    59b0:	adrp	x1, 31 ; 0x24000
    59b4:	add	x1, x1, #0xff5 ; literal pool for: "TGClockTrigger"
    59b8:	mov	x0, x19
    59bc:	bl	0x2007c ; symbol stub for: _objc_getAssociatedObject
    59c0:	mov	x29, x29
    59c4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    59c8:	mov	x22, x0
    59cc:	cbz	x21, 0x5a54
    59d0:	mov	x0, x21
    59d4:	bl	0x22440
    59d8:	mov	x29, x29
    59dc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    59e0:	mov	x23, x0
    59e4:	cbz	x0, 0x5a58
    59e8:	mov	x0, x21
    59ec:	bl	0x22440
    59f0:	mov	x29, x29
    59f4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    59f8:	mov	x24, x0
    59fc:	mov	x0, x19
    5a00:	bl	0x22400
    5a04:	mov	x29, x29
    5a08:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5a0c:	mov	x25, x0
    5a10:	cmp	x24, x0
    5a14:	b.ne	0x5a3c
    5a18:	mov	x0, x21
    5a1c:	bl	0x21020
    5a20:	tbnz	w0, #0x0, 0x5a3c
    5a24:	mov	x0, x21
    5a28:	bl	0x204e0
    5a2c:	adrp	x8, 29 ; 0x22000
    5a30:	ldr	d1, [x8, #0x930]
    5a34:	fcmp	d0, d1
    5a38:	b.pl	0x5a9c
    5a3c:	mov	x0, x25
    5a40:	bl	0x200e8 ; symbol stub for: _objc_release
    5a44:	mov	x0, x24
    5a48:	bl	0x200e8 ; symbol stub for: _objc_release
    5a4c:	mov	x0, x23
    5a50:	bl	0x200e8 ; symbol stub for: _objc_release
    5a54:	mov	w23, #0x0

; ===== sub_5a58 =====
    5a58:	mov	x0, x22
    5a5c:	bl	0x200e8 ; symbol stub for: _objc_release
    5a60:	mov	x0, x21
    5a64:	bl	0x200e8 ; symbol stub for: _objc_release
    5a68:	mov	x0, x20
    5a6c:	bl	0x200e8 ; symbol stub for: _objc_release
    5a70:	mov	x0, x19
    5a74:	bl	0x200e8 ; symbol stub for: _objc_release
    5a78:	mov	x0, x23
    5a7c:	ldp	x29, x30, [sp, #0x60]
    5a80:	ldp	x20, x19, [sp, #0x50]
    5a84:	ldp	x22, x21, [sp, #0x40]
    5a88:	ldp	x24, x23, [sp, #0x30]
    5a8c:	ldp	x26, x25, [sp, #0x20]
    5a90:	ldp	d9, d8, [sp, #0x10]
    5a94:	ldp	d11, d10, [sp], #0x70
    5a98:	ret
    5a9c:	adrp	x8, 49 ; 0x36000
    5aa0:	ldr	x0, [x8, #0xf8]
    5aa4:	mov	x2, x22
    5aa8:	bl	0x208a0
    5aac:	mov	x26, x0
    5ab0:	mov	x0, x25
    5ab4:	bl	0x200e8 ; symbol stub for: _objc_release
    5ab8:	mov	x0, x24
    5abc:	bl	0x200e8 ; symbol stub for: _objc_release
    5ac0:	mov	x0, x23
    5ac4:	bl	0x200e8 ; symbol stub for: _objc_release
    5ac8:	cbz	w26, 0x5a54
    5acc:	adrp	x0, 29 ; 0x22000
    5ad0:	add	x0, x0, #0xc65 ; literal pool for: "SBLockScreenManager"
    5ad4:	bl	0x20088 ; symbol stub for: _objc_getClass
    5ad8:	mov	x23, x0
    5adc:	adrp	x8, 48 ; 0x35000
    5ae0:	ldr	x1, [x8, #0x788]
    5ae4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    5ae8:	tbz	w0, #0x0, 0x5b1c
    5aec:	mov	x0, x23
    5af0:	bl	0x21f20
    5af4:	mov	x29, x29
    5af8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5afc:	mov	x23, x0
    5b00:	adrp	x8, 48 ; 0x35000
    5b04:	ldr	x1, [x8, #0x3f8]
    5b08:	bl	0x5b7c
    5b0c:	mov	x24, x0
    5b10:	mov	x0, x23
    5b14:	bl	0x200e8 ; symbol stub for: _objc_release
    5b18:	cbz	w24, 0x5a54
    5b1c:	mov	x0, x21
    5b20:	bl	0x20620
    5b24:	mov	x0, x21
    5b28:	mov	x2, #0x0
    5b2c:	bl	0x20900
    5b30:	fmov	d4, #-12.00000000
    5b34:	fmov	d5, #-12.00000000
    5b38:	bl	0x1fde8 ; symbol stub for: _CGRectInset
    5b3c:	mov.16b	v8, v0
    5b40:	mov.16b	v9, v1
    5b44:	mov.16b	v10, v2
    5b48:	mov.16b	v11, v3
    5b4c:	mov	x0, x20
    5b50:	mov	x2, #0x0
    5b54:	bl	0x21200
    5b58:	mov.16b	v4, v0
    5b5c:	mov.16b	v5, v1
    5b60:	mov.16b	v0, v8
    5b64:	mov.16b	v1, v9
    5b68:	mov.16b	v2, v10
    5b6c:	mov.16b	v3, v11
    5b70:	bl	0x1fdc4 ; symbol stub for: _CGRectContainsPoint
    5b74:	mov	x23, x0
    5b78:	b	0x5a58

; ===== sub_5b7c =====
    5b7c:	stp	x20, x19, [sp, #-0x20]!
    5b80:	stp	x29, x30, [sp, #0x10]
    5b84:	add	x29, sp, #0x10
    5b88:	mov	x20, x1
    5b8c:	bl	0x200f4 ; symbol stub for: _objc_retain
    5b90:	mov	x19, x0
    5b94:	mov	x1, x20
    5b98:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    5b9c:	tbz	w0, #0x0, 0x5bb4
    5ba0:	mov	x0, x19
    5ba4:	mov	x1, x20
    5ba8:	bl	0x200a0 ; symbol stub for: _objc_msgSend
    5bac:	mov	x20, x0
    5bb0:	b	0x5bb8
    5bb4:	mov	w20, #0x0

; ===== sub_5bb8 =====
    5bb8:	mov	x0, x19
    5bbc:	bl	0x200e8 ; symbol stub for: _objc_release
    5bc0:	mov	x0, x20
    5bc4:	ldp	x29, x30, [sp, #0x10]
    5bc8:	ldp	x20, x19, [sp], #0x20
    5bcc:	ret
    5bd0:	stp	x20, x19, [sp, #-0x20]!
    5bd4:	stp	x29, x30, [sp, #0x10]
    5bd8:	add	x29, sp, #0x10
    5bdc:	mov	x0, x3
    5be0:	adrp	x1, 31 ; 0x24000
    5be4:	add	x1, x1, #0xff5 ; literal pool for: "TGClockTrigger"
    5be8:	bl	0x2007c ; symbol stub for: _objc_getAssociatedObject
    5bec:	mov	x29, x29
    5bf0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5bf4:	cmp	x0, #0x0
    5bf8:	cset	w19, eq
    5bfc:	bl	0x200e8 ; symbol stub for: _objc_release
    5c00:	mov	x0, x19
    5c04:	ldp	x29, x30, [sp, #0x10]
    5c08:	ldp	x20, x19, [sp], #0x20
    5c0c:	ret
    5c10:	sub	sp, sp, #0x40
    5c14:	stp	x29, x30, [sp, #0x30]
    5c18:	add	x29, sp, #0x30
    5c1c:	adrp	x8, 45 ; 0x32000
    5c20:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    5c24:	str	x8, [sp, #0x8]
    5c28:	adrp	x8, 29 ; 0x22000
    5c2c:	ldr	d0, [x8, #0x938]
    5c30:	adrp	x8, 0 ; 0x5000
    5c34:	add	x8, x8, #0xc68
    5c38:	str	d0, [sp, #0x10]
    5c3c:	adrp	x9, 39 ; 0x2c000
    5c40:	add	x9, x9, #0x30
    5c44:	stp	x8, x9, [sp, #0x18]
    5c48:	strb	w2, [sp, #0x28]
    5c4c:	adrp	x0, 45 ; 0x32000
    5c50:	ldr	x0, [x0, #0xde8] ; literal pool symbol address: __dispatch_main_q
    5c54:	add	x1, sp, #0x8
    5c58:	bl	0x1ff08 ; symbol stub for: _dispatch_async
    5c5c:	ldp	x29, x30, [sp, #0x30]
    5c60:	add	sp, sp, #0x40
    5c64:	ret
    5c68:	ldrb	w8, [x0, #0x20]
    5c6c:	adrp	x9, 49 ; 0x36000
    5c70:	ldrb	w10, [x9, #0x138]
    5c74:	cmp	w8, w10
    5c78:	b.ne	0x5c80
    5c7c:	ret
    5c80:	adrp	x10, 41 ; 0x2e000
    5c84:	add	x10, x10, #0xe08 ; "carplay.disconnected"
    5c88:	strb	w8, [x9, #0x138]
    5c8c:	adrp	x9, 41 ; 0x2e000
    5c90:	add	x9, x9, #0xde8 ; "carplay.connected"
    5c94:	cmp	w8, #0x0
    5c98:	csel	x0, x9, x10, ne
    5c9c:	b	0x4324
    5ca0:	mov	w2, #0x1
    5ca4:	b	0x206a0
    5ca8:	mov	w2, #0x0
    5cac:	b	0x206a0
    5cb0:	stp	x24, x23, [sp, #-0x40]!
    5cb4:	stp	x22, x21, [sp, #0x10]
    5cb8:	stp	x20, x19, [sp, #0x20]
    5cbc:	stp	x29, x30, [sp, #0x30]
    5cc0:	add	x29, sp, #0x30
    5cc4:	mov	x21, x0
    5cc8:	mov	x0, x3
    5ccc:	bl	0x200f4 ; symbol stub for: _objc_retain
    5cd0:	mov	x19, x0
    5cd4:	mov	x0, x21
    5cd8:	bl	0x218c0
    5cdc:	mov	x29, x29
    5ce0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5ce4:	mov	x22, x0
    5ce8:	mov	x0, x19
    5cec:	bl	0x202a0
    5cf0:	mov	x29, x29
    5cf4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5cf8:	mov	x23, x0
    5cfc:	mov	x0, x22
    5d00:	mov	x2, x23
    5d04:	bl	0x214e0
    5d08:	mov	x29, x29
    5d0c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5d10:	mov	x20, x0
    5d14:	mov	x0, x23
    5d18:	bl	0x200e8 ; symbol stub for: _objc_release
    5d1c:	mov	x0, x22
    5d20:	bl	0x200e8 ; symbol stub for: _objc_release
    5d24:	cbnz	x20, 0x5d88
    5d28:	adrp	x8, 48 ; 0x35000
    5d2c:	ldr	x0, [x8, #0xa28] ; Objc class ref: bad class ref
    5d30:	bl	0x218e0
    5d34:	mov	x29, x29
    5d38:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5d3c:	mov	x20, x0
    5d40:	mov	x0, x21
    5d44:	bl	0x218c0
    5d48:	mov	x29, x29
    5d4c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5d50:	mov	x22, x0
    5d54:	mov	x0, x19
    5d58:	bl	0x202a0
    5d5c:	mov	x29, x29
    5d60:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5d64:	mov	x23, x0
    5d68:	mov	x0, x22
    5d6c:	mov	x2, x20
    5d70:	mov	x3, x23
    5d74:	bl	0x21c00
    5d78:	mov	x0, x23
    5d7c:	bl	0x200e8 ; symbol stub for: _objc_release
    5d80:	mov	x0, x22
    5d84:	bl	0x200e8 ; symbol stub for: _objc_release
    5d88:	mov	x0, x19
    5d8c:	bl	0x20d60
    5d90:	tbz	w0, #0x0, 0x5da0
    5d94:	adrp	x0, 41 ; 0x2e000
    5d98:	add	x0, x0, #0xe28 ; "call.ended"
    5d9c:	b	0x5dd8
    5da0:	mov	x0, x19
    5da4:	bl	0x20d40
    5da8:	tbz	w0, #0x0, 0x5db8
    5dac:	adrp	x0, 41 ; 0x2e000
    5db0:	add	x0, x0, #0xe48 ; "call.answered"
    5db4:	b	0x5dd8
    5db8:	mov	x0, x19
    5dbc:	bl	0x21060
    5dc0:	adrp	x8, 41 ; 0x2e000
    5dc4:	add	x8, x8, #0xe88 ; "call.incoming"
    5dc8:	adrp	x9, 41 ; 0x2e000
    5dcc:	add	x9, x9, #0xe68 ; "call.outgoing"
    5dd0:	cmp	w0, #0x0
    5dd4:	csel	x0, x9, x8, ne

; ===== sub_5dd8 =====
    5dd8:	bl	0x200f4 ; symbol stub for: _objc_retain
    5ddc:	mov	x22, x0
    5de0:	mov	x0, x20
    5de4:	mov	x2, x22
    5de8:	bl	0x208a0
    5dec:	tbnz	w0, #0x0, 0x5e58
    5df0:	mov	x0, x20
    5df4:	mov	x2, x22
    5df8:	bl	0x203c0
    5dfc:	mov	x0, x22
    5e00:	bl	0x4324
    5e04:	mov	x0, x19
    5e08:	bl	0x20d60
    5e0c:	cbz	w0, 0x5e58
    5e10:	mov	x0, x21
    5e14:	bl	0x218c0
    5e18:	mov	x29, x29
    5e1c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5e20:	mov	x21, x0
    5e24:	mov	x0, x19
    5e28:	bl	0x202a0
    5e2c:	mov	x29, x29
    5e30:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5e34:	mov	x23, x0
    5e38:	mov	x0, x21
    5e3c:	mov	x2, #0x0
    5e40:	mov	x3, x23
    5e44:	bl	0x21c00
    5e48:	mov	x0, x23
    5e4c:	bl	0x200e8 ; symbol stub for: _objc_release
    5e50:	mov	x0, x21
    5e54:	bl	0x200e8 ; symbol stub for: _objc_release
    5e58:	mov	x0, x22
    5e5c:	bl	0x200e8 ; symbol stub for: _objc_release
    5e60:	mov	x0, x20
    5e64:	bl	0x200e8 ; symbol stub for: _objc_release
    5e68:	mov	x0, x19
    5e6c:	ldp	x29, x30, [sp, #0x30]
    5e70:	ldp	x20, x19, [sp, #0x20]
    5e74:	ldp	x22, x21, [sp, #0x10]
    5e78:	ldp	x24, x23, [sp], #0x40
    5e7c:	b	0x200e8 ; symbol stub for: _objc_release
    5e80:	ldr	x0, [x0, #0x8]
    5e84:	ret
    5e88:	mov	x1, x2
    5e8c:	add	x0, x0, #0x8
    5e90:	b	0x20148 ; symbol stub for: _objc_storeStrong
    5e94:	ldr	x0, [x0, #0x10]
    5e98:	ret
    5e9c:	mov	x1, x2
    5ea0:	add	x0, x0, #0x10
    5ea4:	b	0x20148 ; symbol stub for: _objc_storeStrong
    5ea8:	stp	x20, x19, [sp, #-0x20]!
    5eac:	stp	x29, x30, [sp, #0x10]
    5eb0:	add	x29, sp, #0x10
    5eb4:	mov	x19, x0
    5eb8:	add	x0, x0, #0x10
    5ebc:	mov	x1, #0x0
    5ec0:	bl	0x20148 ; symbol stub for: _objc_storeStrong
    5ec4:	add	x0, x19, #0x8
    5ec8:	mov	x1, #0x0
    5ecc:	ldp	x29, x30, [sp, #0x10]
    5ed0:	ldp	x20, x19, [sp], #0x20
    5ed4:	b	0x20148 ; symbol stub for: _objc_storeStrong
    5ed8:	stp	x20, x19, [sp, #-0x20]!
    5edc:	stp	x29, x30, [sp, #0x10]
    5ee0:	add	x29, sp, #0x10
    5ee4:	mov	x0, x2
    5ee8:	bl	0x223a0
    5eec:	mov	x29, x29
    5ef0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5ef4:	mov	x19, x0
    5ef8:	bl	0x5f0c
    5efc:	mov	x0, x19
    5f00:	ldp	x29, x30, [sp, #0x10]
    5f04:	ldp	x20, x19, [sp], #0x20
    5f08:	b	0x200e8 ; symbol stub for: _objc_release

; ===== sub_5f0c =====
    5f0c:	sub	sp, sp, #0x140
    5f10:	stp	d9, d8, [sp, #0xd0]
    5f14:	stp	x28, x27, [sp, #0xe0]
    5f18:	stp	x26, x25, [sp, #0xf0]
    5f1c:	stp	x24, x23, [sp, #0x100]
    5f20:	stp	x22, x21, [sp, #0x110]
    5f24:	stp	x20, x19, [sp, #0x120]
    5f28:	stp	x29, x30, [sp, #0x130]
    5f2c:	add	x29, sp, #0x130
    5f30:	adrp	x8, 45 ; 0x32000
    5f34:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    5f38:	ldr	x8, [x8]
    5f3c:	stur	x8, [x29, #-0x68]
    5f40:	bl	0x200f4 ; symbol stub for: _objc_retain
    5f44:	mov	x19, x0
    5f48:	adrp	x8, 48 ; 0x35000
    5f4c:	ldr	x0, [x8, #0xae0] ; Objc class ref: bad class ref
    5f50:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    5f54:	mov	x1, x0
    5f58:	mov	x0, x19
    5f5c:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    5f60:	tbz	w0, #0x0, 0x6074
    5f64:	mov	x0, x19
    5f68:	bl	0x22220
    5f6c:	adrp	x8, 29 ; 0x22000
    5f70:	ldr	d1, [x8, #0x940]
    5f74:	fcmp	d0, d1
    5f78:	b.le	0x6074
    5f7c:	movi.16b	v0, #0x0
    5f80:	stp	q0, q0, [sp, #0x20]
    5f84:	stp	q0, q0, [sp]
    5f88:	adrp	x8, 49 ; 0x36000
    5f8c:	ldr	x0, [x8, #0xf8]
    5f90:	bl	0x20940
    5f94:	mov	x20, x0
    5f98:	mov	x2, sp
    5f9c:	add	x3, sp, #0x48
    5fa0:	mov	w4, #0x10
    5fa4:	bl	0x20980
    5fa8:	cbz	x0, 0x606c
    5fac:	mov	x21, x0
    5fb0:	ldr	x8, [sp, #0x10]
    5fb4:	ldr	x25, [x8]
    5fb8:	fmov	d8, #1.00000000
    5fbc:	mov	x26, #0x0
    5fc0:	ldr	x8, [sp, #0x10]
    5fc4:	ldr	x8, [x8]
    5fc8:	cmp	x8, x25
    5fcc:	b.eq	0x5fd8
    5fd0:	mov	x0, x20
    5fd4:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    5fd8:	ldr	x8, [sp, #0x8]
    5fdc:	ldr	x22, [x8, x26, lsl #3]
    5fe0:	fmov	d0, #-1.00000000
    5fe4:	mov	x0, x19
    5fe8:	bl	0x20a40
    5fec:	mov	x29, x29
    5ff0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5ff4:	mov	x24, x0
    5ff8:	mov	x0, x22
    5ffc:	mov	x1, x24
    6000:	bl	0x16d8c
    6004:	mov	x29, x29
    6008:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    600c:	mov	x23, x0
    6010:	mov	x0, x24
    6014:	bl	0x200e8 ; symbol stub for: _objc_release
    6018:	cbz	x23, 0x603c
    601c:	mov	x0, x23
    6020:	mov	x2, x19
    6024:	bl	0x22200
    6028:	fabs	d0, d0
    602c:	fcmp	d0, d8
    6030:	b.pl	0x603c
    6034:	mov	x0, x22
    6038:	bl	0x4324
    603c:	mov	x0, x23
    6040:	bl	0x200e8 ; symbol stub for: _objc_release
    6044:	add	x26, x26, #0x1
    6048:	cmp	x21, x26
    604c:	b.ne	0x5fc0
    6050:	mov	x2, sp
    6054:	add	x3, sp, #0x48
    6058:	mov	x0, x20
    605c:	mov	w4, #0x10
    6060:	bl	0x20980
    6064:	mov	x21, x0
    6068:	cbnz	x0, 0x5fbc
    606c:	mov	x0, x20
    6070:	bl	0x200e8 ; symbol stub for: _objc_release
    6074:	bl	0x16978
    6078:	mov	x0, x19
    607c:	bl	0x200e8 ; symbol stub for: _objc_release
    6080:	ldur	x8, [x29, #-0x68]
    6084:	adrp	x9, 44 ; 0x32000
    6088:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    608c:	ldr	x9, [x9]
    6090:	cmp	x9, x8
    6094:	b.ne	0x60bc
    6098:	ldp	x29, x30, [sp, #0x130]
    609c:	ldp	x20, x19, [sp, #0x120]
    60a0:	ldp	x22, x21, [sp, #0x110]
    60a4:	ldp	x24, x23, [sp, #0x100]
    60a8:	ldp	x26, x25, [sp, #0xf0]
    60ac:	ldp	x28, x27, [sp, #0xe0]
    60b0:	ldp	d9, d8, [sp, #0xd0]
    60b4:	add	sp, sp, #0x140
    60b8:	ret
    60bc:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
    60c0:	sub	sp, sp, #0x80
    60c4:	stp	x24, x23, [sp, #0x40]
    60c8:	stp	x22, x21, [sp, #0x50]
    60cc:	stp	x20, x19, [sp, #0x60]
    60d0:	stp	x29, x30, [sp, #0x70]
    60d4:	add	x29, sp, #0x70
    60d8:	adrp	x8, 47 ; 0x35000
    60dc:	ldr	x0, [x8, #0xa30] ; Objc class ref: bad class ref
    60e0:	bl	0x21280
    60e4:	mov	x29, x29
    60e8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    60ec:	mov	x19, x0
    60f0:	bl	0x20660
    60f4:	mov	x29, x29
    60f8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    60fc:	mov	x20, x0
    6100:	adrp	x2, 40 ; 0x2e000
    6104:	add	x2, x2, #0xea8 ; "com.apple.springboard"
    6108:	bl	0x21000
    610c:	mov	x21, x0
    6110:	mov	x0, x20
    6114:	bl	0x200e8 ; symbol stub for: _objc_release
    6118:	mov	x0, x19
    611c:	bl	0x200e8 ; symbol stub for: _objc_release
    6120:	cbz	w21, 0x6c20
    6124:	bl	0x6c38
    6128:	adrp	x0, 28 ; 0x22000
    612c:	add	x0, x0, #0xcee ; literal pool for: "com.johndie.triggr/prefs-changed"
    6130:	adrp	x19, 44 ; 0x32000
    6134:	ldr	x19, [x19, #0xde8] ; literal pool symbol address: __dispatch_main_q
    6138:	adrp	x3, 38 ; 0x2c000
    613c:	add	x3, x3, #0x70
    6140:	sub	x1, x29, #0x34
    6144:	mov	x2, x19
    6148:	bl	0x20010 ; symbol stub for: _notify_register_dispatch
    614c:	adrp	x0, 28 ; 0x22000
    6150:	add	x0, x0, #0xd18 ; literal pool for: "com.johndie.triggr/test"
    6154:	adrp	x3, 38 ; 0x2c000
    6158:	add	x3, x3, #0x90
    615c:	add	x1, sp, #0x38
    6160:	mov	x2, x19
    6164:	bl	0x20010 ; symbol stub for: _notify_register_dispatch
    6168:	mov	x0, x19
    616c:	bl	0x200e8 ; symbol stub for: _objc_release
    6170:	adrp	x0, 28 ; 0x22000
    6174:	add	x0, x0, #0xd54 ; literal pool for: "com.johndie.triggr/airplay-list"
    6178:	adrp	x3, 38 ; 0x2c000
    617c:	add	x3, x3, #0xe0
    6180:	add	x1, sp, #0x30
    6184:	mov	x2, x19
    6188:	bl	0x20010 ; symbol stub for: _notify_register_dispatch
    618c:	mov	x0, x19
    6190:	bl	0x200e8 ; symbol stub for: _objc_release
    6194:	adrp	x0, 28 ; 0x22000
    6198:	add	x0, x0, #0xd74 ; literal pool for: "com.johndie.triggr/statusbar-tap"
    619c:	adrp	x3, 38 ; 0x2c000
    61a0:	add	x3, x3, #0x100
    61a4:	add	x1, sp, #0x34
    61a8:	mov	x2, x19
    61ac:	bl	0x20010 ; symbol stub for: _notify_register_dispatch
    61b0:	mov	x0, x19
    61b4:	bl	0x200e8 ; symbol stub for: _objc_release
    61b8:	adrp	x0, 28 ; 0x22000
    61bc:	add	x0, x0, #0xd95 ; literal pool for: "com.johndie.triggr/statusbar-tap-left"
    61c0:	adrp	x3, 38 ; 0x2c000
    61c4:	add	x3, x3, #0x120
    61c8:	add	x1, sp, #0x2c
    61cc:	mov	x2, x19
    61d0:	bl	0x20010 ; symbol stub for: _notify_register_dispatch
    61d4:	mov	x0, x19
    61d8:	bl	0x200e8 ; symbol stub for: _objc_release
    61dc:	adrp	x0, 28 ; 0x22000
    61e0:	add	x0, x0, #0xdbb ; literal pool for: "com.johndie.triggr/statusbar-tap-right"
    61e4:	adrp	x3, 38 ; 0x2c000
    61e8:	add	x3, x3, #0x140
    61ec:	add	x1, sp, #0x28
    61f0:	mov	x2, x19
    61f4:	bl	0x20010 ; symbol stub for: _notify_register_dispatch
    61f8:	mov	x0, x19
    61fc:	bl	0x200e8 ; symbol stub for: _objc_release
    6200:	adrp	x0, 28 ; 0x22000
    6204:	add	x0, x0, #0xde2 ; literal pool for: "com.johndie.triggr/shake"
    6208:	adrp	x3, 38 ; 0x2c000
    620c:	add	x3, x3, #0x160
    6210:	add	x1, sp, #0x24
    6214:	mov	x2, x19
    6218:	bl	0x20010 ; symbol stub for: _notify_register_dispatch
    621c:	mov	x0, x19
    6220:	bl	0x200e8 ; symbol stub for: _objc_release
    6224:	adrp	x0, 43 ; 0x31000
    6228:	add	x0, x0, #0xe08 ; "/var/jb"
    622c:	adrp	x2, 40 ; 0x2e000
    6230:	add	x2, x2, #0xf28 ; "/usr/lib/libtriggr.dylib"
    6234:	bl	0x220a0
    6238:	mov	x29, x29
    623c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    6240:	mov	x19, x0
    6244:	bl	0x20100 ; symbol stub for: _objc_retainAutorelease
    6248:	bl	0x20c60
    624c:	mov	w1, #0x2
    6250:	bl	0x1ff44 ; symbol stub for: _dlopen
    6254:	mov	x20, x0
    6258:	mov	x0, x19
    625c:	bl	0x200e8 ; symbol stub for: _objc_release
    6260:	cbz	x20, 0x62d4
    6264:	adrp	x1, 28 ; 0x22000
    6268:	add	x1, x1, #0xe14 ; literal pool for: "TGLibSetHost"
    626c:	mov	x0, x20
    6270:	bl	0x1ff50 ; symbol stub for: _dlsym
    6274:	mov	x19, x0
    6278:	adrp	x1, 28 ; 0x22000
    627c:	add	x1, x1, #0xe21 ; literal pool for: "TGLibCanRun"
    6280:	mov	x0, x20
    6284:	bl	0x1ff50 ; symbol stub for: _dlsym
    6288:	adrp	x8, 48 ; 0x36000
    628c:	str	x0, [x8, #0x140]
    6290:	adrp	x1, 28 ; 0x22000
    6294:	add	x1, x1, #0xe2d ; literal pool for: "TGLibRun"
    6298:	mov	x0, x20
    629c:	bl	0x1ff50 ; symbol stub for: _dlsym
    62a0:	adrp	x8, 48 ; 0x36000
    62a4:	str	x0, [x8, #0x148]
    62a8:	cbz	x19, 0x62d4
    62ac:	adrp	x8, 2 ; 0x8000
    62b0:	add	x8, x8, #0x588
    62b4:	adrp	x9, 2 ; 0x8000
    62b8:	add	x9, x9, #0x58c
    62bc:	stp	x8, x9, [sp, #0x8]
    62c0:	adrp	x8, 2 ; 0x8000
    62c4:	add	x8, x8, #0x59c
    62c8:	str	x8, [sp, #0x18]
    62cc:	add	x0, sp, #0x8
    62d0:	blr	x19
    62d4:	adrp	x0, 28 ; 0x22000
    62d8:	add	x0, x0, #0xe36 ; literal pool for: "com.johndie.triggr/inapp"
    62dc:	adrp	x1, 48 ; 0x36000
    62e0:	add	x1, x1, #0x78
    62e4:	adrp	x19, 44 ; 0x32000
    62e8:	ldr	x19, [x19, #0xde8] ; literal pool symbol address: __dispatch_main_q
    62ec:	adrp	x3, 38 ; 0x2c000
    62f0:	add	x3, x3, #0x180
    62f4:	mov	x2, x19
    62f8:	bl	0x20010 ; symbol stub for: _notify_register_dispatch
    62fc:	mov	x0, x19
    6300:	bl	0x200e8 ; symbol stub for: _objc_release
    6304:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    6308:	adrp	x8, 48 ; 0x36000
    630c:	str	d0, [x8, #0x150]
    6310:	adrp	x0, 28 ; 0x22000
    6314:	add	x0, x0, #0xe4f ; literal pool for: "SBHomeHardwareButton"
    6318:	bl	0x20088 ; symbol stub for: _objc_getClass
    631c:	mov	x19, x0
    6320:	adrp	x8, 46 ; 0x34000
    6324:	ldr	x1, [x8, #0xa40]
    6328:	adrp	x2, 2 ; 0x8000
    632c:	add	x2, x2, #0x620
    6330:	adrp	x3, 48 ; 0x36000
    6334:	add	x3, x3, #0x158
    6338:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    633c:	adrp	x8, 46 ; 0x34000
    6340:	ldr	x1, [x8, #0xa48]
    6344:	adrp	x2, 2 ; 0x8000
    6348:	add	x2, x2, #0x6c4
    634c:	adrp	x3, 48 ; 0x36000
    6350:	add	x3, x3, #0x160
    6354:	mov	x0, x19
    6358:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    635c:	adrp	x0, 28 ; 0x22000
    6360:	add	x0, x0, #0xe64 ; literal pool for: "SBHomeHardwareButtonActions"
    6364:	bl	0x20088 ; symbol stub for: _objc_getClass
    6368:	mov	x19, x0
    636c:	adrp	x8, 46 ; 0x34000
    6370:	ldr	x1, [x8, #0xa50]
    6374:	adrp	x2, 2 ; 0x8000
    6378:	add	x2, x2, #0x760
    637c:	adrp	x3, 48 ; 0x36000
    6380:	add	x3, x3, #0x168
    6384:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6388:	adrp	x8, 46 ; 0x34000
    638c:	ldr	x1, [x8, #0xa58]
    6390:	adrp	x2, 2 ; 0x8000
    6394:	add	x2, x2, #0x7f4
    6398:	adrp	x3, 48 ; 0x36000
    639c:	add	x3, x3, #0x170
    63a0:	mov	x0, x19
    63a4:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    63a8:	adrp	x8, 46 ; 0x34000
    63ac:	ldr	x1, [x8, #0xa60]
    63b0:	adrp	x2, 2 ; 0x8000
    63b4:	add	x2, x2, #0xa0c
    63b8:	adrp	x3, 48 ; 0x36000
    63bc:	add	x3, x3, #0x178
    63c0:	mov	x0, x19
    63c4:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    63c8:	adrp	x8, 46 ; 0x34000
    63cc:	ldr	x1, [x8, #0xa68]
    63d0:	adrp	x2, 2 ; 0x8000
    63d4:	add	x2, x2, #0xa98
    63d8:	adrp	x3, 48 ; 0x36000
    63dc:	add	x3, x3, #0x180
    63e0:	mov	x0, x19
    63e4:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    63e8:	adrp	x0, 28 ; 0x22000
    63ec:	add	x0, x0, #0xe80 ; literal pool for: "SBVolumeHardwareButton"
    63f0:	bl	0x20088 ; symbol stub for: _objc_getClass
    63f4:	mov	x19, x0
    63f8:	adrp	x8, 46 ; 0x34000
    63fc:	ldr	x1, [x8, #0xa70]
    6400:	adrp	x2, 2 ; 0x8000
    6404:	add	x2, x2, #0xb18
    6408:	adrp	x3, 48 ; 0x36000
    640c:	add	x3, x3, #0x188
    6410:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6414:	adrp	x8, 46 ; 0x34000
    6418:	ldr	x1, [x8, #0xa78]
    641c:	adrp	x2, 2 ; 0x8000
    6420:	add	x2, x2, #0xbb0
    6424:	adrp	x3, 48 ; 0x36000
    6428:	add	x3, x3, #0x190
    642c:	mov	x0, x19
    6430:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6434:	adrp	x0, 28 ; 0x22000
    6438:	add	x0, x0, #0xe97 ; literal pool for: "SBLockHardwareButtonActions"
    643c:	bl	0x20088 ; symbol stub for: _objc_getClass
    6440:	adrp	x8, 46 ; 0x34000
    6444:	ldr	x1, [x8, #0xa80]
    6448:	adrp	x2, 2 ; 0x8000
    644c:	add	x2, x2, #0xc44
    6450:	adrp	x3, 48 ; 0x36000
    6454:	add	x3, x3, #0x198
    6458:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    645c:	adrp	x0, 28 ; 0x22000
    6460:	add	x0, x0, #0xeb3 ; literal pool for: "SBLockHardwareButton"
    6464:	bl	0x20088 ; symbol stub for: _objc_getClass
    6468:	mov	x19, x0
    646c:	adrp	x8, 46 ; 0x34000
    6470:	ldr	x1, [x8, #0xa88]
    6474:	adrp	x2, 2 ; 0x8000
    6478:	add	x2, x2, #0xcbc
    647c:	adrp	x3, 48 ; 0x36000
    6480:	add	x3, x3, #0x1a0
    6484:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6488:	adrp	x8, 46 ; 0x34000
    648c:	ldr	x1, [x8, #0xa90]
    6490:	adrp	x2, 2 ; 0x8000
    6494:	add	x2, x2, #0xd8c
    6498:	adrp	x3, 48 ; 0x36000
    649c:	add	x3, x3, #0x1a8
    64a0:	mov	x0, x19
    64a4:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    64a8:	adrp	x8, 46 ; 0x34000
    64ac:	ldr	x1, [x8, #0xa98]
    64b0:	adrp	x2, 3 ; 0x9000
    64b4:	add	x2, x2, #0x1a0
    64b8:	adrp	x3, 48 ; 0x36000
    64bc:	add	x3, x3, #0x1b0
    64c0:	mov	x0, x19
    64c4:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    64c8:	adrp	x8, 46 ; 0x34000
    64cc:	ldr	x1, [x8, #0xaa0]
    64d0:	adrp	x2, 3 ; 0x9000
    64d4:	add	x2, x2, #0x270
    64d8:	adrp	x3, 48 ; 0x36000
    64dc:	add	x3, x3, #0x1b8
    64e0:	mov	x0, x19
    64e4:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    64e8:	adrp	x8, 46 ; 0x34000
    64ec:	ldr	x1, [x8, #0xaa8]
    64f0:	adrp	x2, 3 ; 0x9000
    64f4:	add	x2, x2, #0x340
    64f8:	adrp	x3, 48 ; 0x36000
    64fc:	add	x3, x3, #0x1c0
    6500:	mov	x0, x19
    6504:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6508:	adrp	x0, 28 ; 0x22000
    650c:	add	x0, x0, #0xec8 ; literal pool for: "SBCombinationHardwareButtonActions"
    6510:	bl	0x20088 ; symbol stub for: _objc_getClass
    6514:	adrp	x8, 46 ; 0x34000
    6518:	ldr	x1, [x8, #0xab0]
    651c:	adrp	x2, 3 ; 0x9000
    6520:	add	x2, x2, #0x434
    6524:	adrp	x3, 48 ; 0x36000
    6528:	add	x3, x3, #0x1c8
    652c:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6530:	adrp	x0, 28 ; 0x22000
    6534:	add	x0, x0, #0xeeb ; literal pool for: "SpringBoard"
    6538:	bl	0x20088 ; symbol stub for: _objc_getClass
    653c:	mov	x20, x0
    6540:	adrp	x8, 46 ; 0x34000
    6544:	ldr	x1, [x8, #0xab8]
    6548:	adrp	x2, 3 ; 0x9000
    654c:	add	x2, x2, #0x4a8
    6550:	adrp	x3, 48 ; 0x36000
    6554:	add	x3, x3, #0x1d0
    6558:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    655c:	adrp	x8, 46 ; 0x34000
    6560:	ldr	x1, [x8, #0xac0]
    6564:	adrp	x2, 3 ; 0x9000
    6568:	add	x2, x2, #0x4e4
    656c:	adrp	x3, 48 ; 0x36000
    6570:	add	x3, x3, #0x1d8
    6574:	mov	x0, x20
    6578:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    657c:	adrp	x8, 46 ; 0x34000
    6580:	ldr	x1, [x8, #0xac8]
    6584:	adrp	x2, 3 ; 0x9000
    6588:	add	x2, x2, #0x584
    658c:	adrp	x3, 48 ; 0x36000
    6590:	add	x3, x3, #0x1e0
    6594:	mov	x0, x20
    6598:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    659c:	adrp	x8, 46 ; 0x34000
    65a0:	ldr	x19, [x8, #0xad0]
    65a4:	adrp	x2, 3 ; 0x9000
    65a8:	add	x2, x2, #0x650
    65ac:	adrp	x3, 48 ; 0x36000
    65b0:	add	x3, x3, #0x1e8
    65b4:	mov	x0, x20
    65b8:	mov	x1, x19
    65bc:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    65c0:	adrp	x8, 46 ; 0x34000
    65c4:	ldr	x1, [x8, #0xad8]
    65c8:	adrp	x2, 3 ; 0x9000
    65cc:	add	x2, x2, #0xc84
    65d0:	adrp	x3, 48 ; 0x36000
    65d4:	add	x3, x3, #0x1f0
    65d8:	mov	x0, x20
    65dc:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    65e0:	adrp	x8, 46 ; 0x34000
    65e4:	ldr	x1, [x8, #0xae0]
    65e8:	adrp	x2, 3 ; 0x9000
    65ec:	add	x2, x2, #0xdf4
    65f0:	adrp	x3, 48 ; 0x36000
    65f4:	add	x3, x3, #0x1f8
    65f8:	mov	x0, x20
    65fc:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6600:	adrp	x0, 28 ; 0x22000
    6604:	add	x0, x0, #0xef7 ; literal pool for: "SBRingerControl"
    6608:	bl	0x20088 ; symbol stub for: _objc_getClass
    660c:	adrp	x8, 46 ; 0x34000
    6610:	ldr	x1, [x8, #0xae8]
    6614:	adrp	x2, 4 ; 0xa000
    6618:	add	x2, x2, #0x540
    661c:	adrp	x3, 48 ; 0x36000
    6620:	add	x3, x3, #0x200
    6624:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6628:	adrp	x0, 28 ; 0x22000
    662c:	add	x0, x0, #0xf07 ; literal pool for: "SBUIBiometricResource"
    6630:	bl	0x20088 ; symbol stub for: _objc_getClass
    6634:	adrp	x8, 46 ; 0x34000
    6638:	ldr	x1, [x8, #0xaf0]
    663c:	adrp	x2, 4 ; 0xa000
    6640:	add	x2, x2, #0x584
    6644:	adrp	x3, 48 ; 0x36000
    6648:	add	x3, x3, #0x208
    664c:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6650:	adrp	x0, 28 ; 0x22000
    6654:	add	x0, x0, #0xf1d ; literal pool for: "UIStatusBar_Base"
    6658:	bl	0x20088 ; symbol stub for: _objc_getClass
    665c:	adrp	x8, 46 ; 0x34000
    6660:	ldr	x20, [x8, #0xaf8]
    6664:	adrp	x2, 4 ; 0xa000
    6668:	add	x2, x2, #0x5e0
    666c:	adrp	x3, 48 ; 0x36000
    6670:	add	x3, x3, #0x210
    6674:	mov	x1, x20
    6678:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    667c:	adrp	x0, 28 ; 0x22000
    6680:	add	x0, x0, #0xf2e ; literal pool for: "UIStatusBarWindow"
    6684:	bl	0x20088 ; symbol stub for: _objc_getClass
    6688:	adrp	x2, 4 ; 0xa000
    668c:	add	x2, x2, #0x828
    6690:	adrp	x3, 48 ; 0x36000
    6694:	add	x3, x3, #0x218
    6698:	mov	x1, x19
    669c:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    66a0:	adrp	x0, 28 ; 0x22000
    66a4:	add	x0, x0, #0xf40 ; literal pool for: "SBIconView"
    66a8:	bl	0x20088 ; symbol stub for: _objc_getClass
    66ac:	adrp	x8, 46 ; 0x34000
    66b0:	ldr	x1, [x8, #0xb00]
    66b4:	adrp	x2, 4 ; 0xa000
    66b8:	add	x2, x2, #0x87c
    66bc:	adrp	x3, 48 ; 0x36000
    66c0:	add	x3, x3, #0x220
    66c4:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    66c8:	adrp	x0, 28 ; 0x22000
    66cc:	add	x0, x0, #0xf4b ; literal pool for: "SBRootFolderView"
    66d0:	bl	0x20088 ; symbol stub for: _objc_getClass
    66d4:	adrp	x2, 4 ; 0xa000
    66d8:	add	x2, x2, #0x8c4
    66dc:	adrp	x3, 48 ; 0x36000
    66e0:	add	x3, x3, #0x228
    66e4:	mov	x1, x20
    66e8:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    66ec:	adrp	x0, 28 ; 0x22000
    66f0:	add	x0, x0, #0xf5c ; literal pool for: "UIScreenEdgePanGestureRecognizer"
    66f4:	bl	0x20088 ; symbol stub for: _objc_getClass
    66f8:	adrp	x8, 46 ; 0x34000
    66fc:	ldr	x1, [x8, #0xb08]
    6700:	adrp	x2, 4 ; 0xa000
    6704:	add	x2, x2, #0x928
    6708:	adrp	x3, 48 ; 0x36000
    670c:	add	x3, x3, #0x230
    6710:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6714:	adrp	x0, 28 ; 0x22000
    6718:	add	x0, x0, #0xf7d ; literal pool for: "SBMainDisplaySystemGestureManager"
    671c:	bl	0x20088 ; symbol stub for: _objc_getClass
    6720:	mov	x21, x0
    6724:	adrp	x8, 46 ; 0x34000
    6728:	ldr	x1, [x8, #0xb10]
    672c:	adrp	x2, 4 ; 0xa000
    6730:	add	x2, x2, #0xa58
    6734:	adrp	x3, 48 ; 0x36000
    6738:	add	x3, x3, #0x238
    673c:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6740:	adrp	x8, 46 ; 0x34000
    6744:	ldr	x1, [x8, #0xb18]
    6748:	adrp	x2, 4 ; 0xa000
    674c:	add	x2, x2, #0xaac
    6750:	adrp	x3, 48 ; 0x36000
    6754:	add	x3, x3, #0x240
    6758:	mov	x0, x21
    675c:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6760:	adrp	x0, 28 ; 0x22000
    6764:	add	x0, x0, #0xf9f ; literal pool for: "SBSystemGestureManager"
    6768:	bl	0x20088 ; symbol stub for: _objc_getClass
    676c:	mov	x21, x0
    6770:	adrp	x8, 46 ; 0x34000
    6774:	ldr	x1, [x8, #0xb20]
    6778:	adrp	x2, 4 ; 0xa000
    677c:	add	x2, x2, #0xb10
    6780:	adrp	x3, 48 ; 0x36000
    6784:	add	x3, x3, #0x248
    6788:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    678c:	adrp	x8, 46 ; 0x34000
    6790:	ldr	x1, [x8, #0xb28]
    6794:	adrp	x2, 4 ; 0xa000
    6798:	add	x2, x2, #0xb38
    679c:	adrp	x3, 48 ; 0x36000
    67a0:	add	x3, x3, #0x250
    67a4:	mov	x0, x21
    67a8:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    67ac:	adrp	x0, 28 ; 0x22000
    67b0:	add	x0, x0, #0xfb6 ; literal pool for: "SBVoiceControlController"
    67b4:	bl	0x20088 ; symbol stub for: _objc_getClass
    67b8:	mov	x21, x0
    67bc:	adrp	x8, 46 ; 0x34000
    67c0:	ldr	x1, [x8, #0xb30]
    67c4:	adrp	x2, 4 ; 0xa000
    67c8:	add	x2, x2, #0xb60
    67cc:	adrp	x3, 48 ; 0x36000
    67d0:	add	x3, x3, #0x258
    67d4:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    67d8:	adrp	x8, 46 ; 0x34000
    67dc:	ldr	x1, [x8, #0xb38]
    67e0:	adrp	x2, 4 ; 0xa000
    67e4:	add	x2, x2, #0xb94
    67e8:	adrp	x3, 48 ; 0x36000
    67ec:	add	x3, x3, #0x260
    67f0:	mov	x0, x21
    67f4:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    67f8:	adrp	x8, 46 ; 0x34000
    67fc:	ldr	x1, [x8, #0xb40]
    6800:	adrp	x2, 4 ; 0xa000
    6804:	add	x2, x2, #0xc04
    6808:	adrp	x3, 48 ; 0x36000
    680c:	add	x3, x3, #0x268
    6810:	mov	x0, x21
    6814:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6818:	adrp	x8, 46 ; 0x34000
    681c:	ldr	x1, [x8, #0xb48]
    6820:	adrp	x2, 4 ; 0xa000
    6824:	add	x2, x2, #0xc74
    6828:	adrp	x3, 48 ; 0x36000
    682c:	add	x3, x3, #0x270
    6830:	mov	x0, x21
    6834:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6838:	adrp	x0, 28 ; 0x22000
    683c:	add	x0, x0, #0xfcf ; literal pool for: "NCNotificationDispatcher"
    6840:	bl	0x20088 ; symbol stub for: _objc_getClass
    6844:	adrp	x8, 46 ; 0x34000
    6848:	ldr	x1, [x8, #0xb50]
    684c:	adrp	x2, 4 ; 0xa000
    6850:	add	x2, x2, #0xd34
    6854:	adrp	x3, 48 ; 0x36000
    6858:	add	x3, x3, #0x278
    685c:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6860:	adrp	x0, 28 ; 0x22000
    6864:	add	x0, x0, #0xfe8 ; literal pool for: "SBMediaController"
    6868:	bl	0x20088 ; symbol stub for: _objc_getClass
    686c:	mov	x21, x0
    6870:	adrp	x8, 46 ; 0x34000
    6874:	ldr	x1, [x8, #0xb58]
    6878:	adrp	x2, 4 ; 0xa000
    687c:	add	x2, x2, #0xe3c
    6880:	adrp	x3, 48 ; 0x36000
    6884:	add	x3, x3, #0x280
    6888:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    688c:	adrp	x8, 46 ; 0x34000
    6890:	ldr	x1, [x8, #0xb60]
    6894:	adrp	x2, 4 ; 0xa000
    6898:	add	x2, x2, #0xe70
    689c:	adrp	x3, 48 ; 0x36000
    68a0:	add	x3, x3, #0x288
    68a4:	mov	x0, x21
    68a8:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    68ac:	adrp	x0, 28 ; 0x22000
    68b0:	add	x0, x0, #0xffa ; literal pool for: "SBProximitySensorManager"
    68b4:	bl	0x20088 ; symbol stub for: _objc_getClass
    68b8:	mov	x21, x0
    68bc:	adrp	x8, 46 ; 0x34000
    68c0:	ldr	x1, [x8, #0xb68]
    68c4:	adrp	x2, 4 ; 0xa000
    68c8:	add	x2, x2, #0xee4
    68cc:	adrp	x3, 48 ; 0x36000
    68d0:	add	x3, x3, #0x290
    68d4:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    68d8:	adrp	x8, 46 ; 0x34000
    68dc:	ldr	x1, [x8, #0xb70]
    68e0:	adrp	x2, 4 ; 0xa000
    68e4:	add	x2, x2, #0xf10
    68e8:	adrp	x3, 48 ; 0x36000
    68ec:	add	x3, x3, #0x298
    68f0:	mov	x0, x21
    68f4:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    68f8:	adrp	x8, 46 ; 0x34000
    68fc:	ldr	x1, [x8, #0xb78]
    6900:	adrp	x2, 4 ; 0xa000
    6904:	add	x2, x2, #0xf3c
    6908:	adrp	x3, 48 ; 0x36000
    690c:	add	x3, x3, #0x2a0
    6910:	mov	x0, x21
    6914:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6918:	adrp	x0, 29 ; 0x23000
    691c:	add	x0, x0, #0x13 ; literal pool for: "SBActionHardwareButton"
    6920:	bl	0x20088 ; symbol stub for: _objc_getClass
    6924:	cbnz	x0, 0x6938
    6928:	adrp	x0, 29 ; 0x23000
    692c:	add	x0, x0, #0x2a ; literal pool for: "SBRingerHardwareButton"
    6930:	bl	0x20088 ; symbol stub for: _objc_getClass
    6934:	cbz	x0, 0x6a50
    6938:	mov	x21, x0
    693c:	adrp	x0, 32 ; 0x26000
    6940:	add	x0, x0, #0xd39 ; literal pool for: "/var/tmp/com.johndie.triggr.actionbutton"
    6944:	mov	w1, #0x0
    6948:	bl	0x1fe9c ; symbol stub for: _access
    694c:	cbz	w0, 0x698c
    6950:	adrp	x0, 40 ; 0x2e000
    6954:	add	x0, x0, #0xc08 ; "ActionButtonGuard"
    6958:	adrp	x1, 40 ; 0x2e000
    695c:	add	x1, x1, #0xec8 ; "com.johndie.triggr"
    6960:	bl	0x1fd58 ; symbol stub for: _CFPreferencesCopyAppValue
    6964:	mov	x22, x0
    6968:	cbz	x0, 0x69e8
    696c:	adrp	x2, 44 ; 0x32000
    6970:	add	x2, x2, #0x328 ; "Nov 10 2026 13:52:07"
    6974:	mov	x0, x22
    6978:	bl	0x20fe0
    697c:	tbz	w0, #0x0, 0x69c4
    6980:	mov	x0, x22
    6984:	bl	0x200e8 ; symbol stub for: _objc_release
    6988:	b	0x6a50
    698c:	adrp	x0, 32 ; 0x26000
    6990:	add	x0, x0, #0xd39 ; literal pool for: "/var/tmp/com.johndie.triggr.actionbutton"
    6994:	bl	0x20220 ; symbol stub for: _unlink
    6998:	adrp	x0, 40 ; 0x2e000
    699c:	add	x0, x0, #0xc08 ; "ActionButtonGuard"
    69a0:	adrp	x1, 44 ; 0x32000
    69a4:	add	x1, x1, #0x328 ; "Nov 10 2026 13:52:07"
    69a8:	adrp	x21, 40 ; 0x2e000
    69ac:	add	x21, x21, #0xec8 ; "com.johndie.triggr"
    69b0:	mov	x2, x21
    69b4:	bl	0x1fd94 ; symbol stub for: _CFPreferencesSetAppValue
    69b8:	mov	x0, x21
    69bc:	bl	0x1fd4c ; symbol stub for: _CFPreferencesAppSynchronize
    69c0:	b	0x6a50
    69c4:	adrp	x0, 40 ; 0x2e000
    69c8:	add	x0, x0, #0xc08 ; "ActionButtonGuard"
    69cc:	adrp	x23, 40 ; 0x2e000
    69d0:	add	x23, x23, #0xec8 ; "com.johndie.triggr"
    69d4:	mov	x1, #0x0
    69d8:	mov	x2, x23
    69dc:	bl	0x1fd94 ; symbol stub for: _CFPreferencesSetAppValue
    69e0:	mov	x0, x23
    69e4:	bl	0x1fd4c ; symbol stub for: _CFPreferencesAppSynchronize
    69e8:	mov	x0, x22
    69ec:	bl	0x200e8 ; symbol stub for: _objc_release
    69f0:	adrp	x8, 46 ; 0x34000
    69f4:	ldr	x1, [x8, #0xb80]
    69f8:	adrp	x2, 4 ; 0xa000
    69fc:	add	x2, x2, #0xf68
    6a00:	adrp	x3, 48 ; 0x36000
    6a04:	add	x3, x3, #0x2a8
    6a08:	mov	x0, x21
    6a0c:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6a10:	adrp	x8, 46 ; 0x34000
    6a14:	ldr	x1, [x8, #0xb88]
    6a18:	adrp	x2, 5 ; 0xb000
    6a1c:	add	x2, x2, #0xc0
    6a20:	adrp	x3, 48 ; 0x36000
    6a24:	add	x3, x3, #0x2b0
    6a28:	mov	x0, x21
    6a2c:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6a30:	adrp	x8, 46 ; 0x34000
    6a34:	ldr	x1, [x8, #0xb90]
    6a38:	adrp	x2, 5 ; 0xb000
    6a3c:	add	x2, x2, #0x144
    6a40:	adrp	x3, 48 ; 0x36000
    6a44:	add	x3, x3, #0x2b8
    6a48:	mov	x0, x21
    6a4c:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx

; ===== sub_6a50 =====
    6a50:	adrp	x0, 29 ; 0x23000
    6a54:	add	x0, x0, #0x41 ; literal pool for: "SBHomeAffordanceInteractionManager"
    6a58:	bl	0x20088 ; symbol stub for: _objc_getClass
    6a5c:	cbz	x0, 0x6acc
    6a60:	adrp	x0, 29 ; 0x23000
    6a64:	add	x0, x0, #0x41 ; literal pool for: "SBHomeAffordanceInteractionManager"
    6a68:	bl	0x20088 ; symbol stub for: _objc_getClass
    6a6c:	mov	x21, x0
    6a70:	adrp	x8, 46 ; 0x34000
    6a74:	ldr	x1, [x8, #0xb98]
    6a78:	adrp	x2, 5 ; 0xb000
    6a7c:	add	x2, x2, #0x36c
    6a80:	adrp	x3, 48 ; 0x36000
    6a84:	add	x3, x3, #0x2c0
    6a88:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6a8c:	adrp	x8, 46 ; 0x34000
    6a90:	ldr	x1, [x8, #0xba0]
    6a94:	adrp	x2, 5 ; 0xb000
    6a98:	add	x2, x2, #0x3dc
    6a9c:	adrp	x3, 48 ; 0x36000
    6aa0:	add	x3, x3, #0x2c8
    6aa4:	mov	x0, x21
    6aa8:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6aac:	adrp	x8, 46 ; 0x34000
    6ab0:	ldr	x1, [x8, #0xba8]
    6ab4:	adrp	x2, 5 ; 0xb000
    6ab8:	add	x2, x2, #0x434
    6abc:	adrp	x3, 48 ; 0x36000
    6ac0:	add	x3, x3, #0x2d0
    6ac4:	mov	x0, x21
    6ac8:	b	0x6b00
    6acc:	adrp	x0, 29 ; 0x23000
    6ad0:	add	x0, x0, #0x64 ; literal pool for: "SBHomeGrabberRevealGesturesManager"
    6ad4:	bl	0x20088 ; symbol stub for: _objc_getClass
    6ad8:	cbz	x0, 0x6b04
    6adc:	adrp	x0, 29 ; 0x23000
    6ae0:	add	x0, x0, #0x64 ; literal pool for: "SBHomeGrabberRevealGesturesManager"
    6ae4:	bl	0x20088 ; symbol stub for: _objc_getClass
    6ae8:	adrp	x8, 46 ; 0x34000
    6aec:	ldr	x1, [x8, #0xbb0]
    6af0:	adrp	x2, 5 ; 0xb000
    6af4:	add	x2, x2, #0x48c
    6af8:	adrp	x3, 48 ; 0x36000
    6afc:	add	x3, x3, #0x2d8

; ===== sub_6b00 =====
    6b00:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6b04:	adrp	x0, 29 ; 0x23000
    6b08:	add	x0, x0, #0x87 ; literal pool for: "SBMainSwitcherWindow"
    6b0c:	bl	0x20088 ; symbol stub for: _objc_getClass
    6b10:	cbz	x0, 0x6b64
    6b14:	adrp	x0, 29 ; 0x23000
    6b18:	add	x0, x0, #0x9c ; literal pool for: "SBDeviceApplicationSceneViewController"
    6b1c:	bl	0x20088 ; symbol stub for: _objc_getClass
    6b20:	mov	x21, x0
    6b24:	adrp	x0, 40 ; 0x2e000
    6b28:	add	x0, x0, #0xf48 ; "_statusBarDoubleTapTop:"
    6b2c:	bl	0x1fe24 ; symbol stub for: _NSSelectorFromString
    6b30:	mov	x2, x0
    6b34:	mov	x0, x21
    6b38:	bl	0x20f40
    6b3c:	cbz	w0, 0x6b64
    6b40:	adrp	x0, 29 ; 0x23000
    6b44:	add	x0, x0, #0x87 ; literal pool for: "SBMainSwitcherWindow"
    6b48:	bl	0x20088 ; symbol stub for: _objc_getClass
    6b4c:	adrp	x2, 5 ; 0xb000
    6b50:	add	x2, x2, #0x820
    6b54:	adrp	x3, 48 ; 0x36000
    6b58:	add	x3, x3, #0x2e0
    6b5c:	mov	x1, x19
    6b60:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6b64:	adrp	x0, 29 ; 0x23000
    6b68:	add	x0, x0, #0xdb ; literal pool for: "CSProminentTimeView"
    6b6c:	bl	0x20088 ; symbol stub for: _objc_getClass
    6b70:	cbz	x0, 0x6b94
    6b74:	adrp	x0, 29 ; 0x23000
    6b78:	add	x0, x0, #0xdb ; literal pool for: "CSProminentTimeView"
    6b7c:	bl	0x20088 ; symbol stub for: _objc_getClass
    6b80:	adrp	x2, 5 ; 0xb000
    6b84:	add	x2, x2, #0x9cc
    6b88:	adrp	x3, 48 ; 0x36000
    6b8c:	add	x3, x3, #0x2e8
    6b90:	b	0x6bc0
    6b94:	adrp	x0, 29 ; 0x23000
    6b98:	add	x0, x0, #0xef ; literal pool for: "SBFLockScreenDateView"
    6b9c:	bl	0x20088 ; symbol stub for: _objc_getClass
    6ba0:	cbz	x0, 0x6bc8
    6ba4:	adrp	x0, 29 ; 0x23000
    6ba8:	add	x0, x0, #0xef ; literal pool for: "SBFLockScreenDateView"
    6bac:	bl	0x20088 ; symbol stub for: _objc_getClass
    6bb0:	adrp	x2, 5 ; 0xb000
    6bb4:	add	x2, x2, #0x9f8
    6bb8:	adrp	x3, 48 ; 0x36000
    6bbc:	add	x3, x3, #0x2f0

; ===== sub_6bc0 =====
    6bc0:	mov	x1, x20
    6bc4:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6bc8:	adrp	x0, 29 ; 0x23000
    6bcc:	add	x0, x0, #0x105 ; literal pool for: "SBStatusBarWindow"
    6bd0:	bl	0x20088 ; symbol stub for: _objc_getClass
    6bd4:	mov	x20, x0
    6bd8:	adrp	x0, 28 ; 0x22000
    6bdc:	add	x0, x0, #0xf2e ; literal pool for: "UIStatusBarWindow"
    6be0:	bl	0x20088 ; symbol stub for: _objc_getClass
    6be4:	cbz	x20, 0x6c20
    6be8:	mov	x2, x0
    6bec:	cbz	x0, 0x6bfc
    6bf0:	mov	x0, x20
    6bf4:	bl	0x210c0
    6bf8:	tbnz	w0, #0x0, 0x6c20
    6bfc:	adrp	x0, 29 ; 0x23000
    6c00:	add	x0, x0, #0x105 ; literal pool for: "SBStatusBarWindow"
    6c04:	bl	0x20088 ; symbol stub for: _objc_getClass
    6c08:	adrp	x2, 5 ; 0xb000
    6c0c:	add	x2, x2, #0xa24
    6c10:	adrp	x3, 48 ; 0x36000
    6c14:	add	x3, x3, #0x2f8
    6c18:	mov	x1, x19
    6c1c:	bl	0x1fe18 ; symbol stub for: _MSHookMessageEx
    6c20:	ldp	x29, x30, [sp, #0x70]
    6c24:	ldp	x20, x19, [sp, #0x60]
    6c28:	ldp	x22, x21, [sp, #0x50]
    6c2c:	ldp	x24, x23, [sp, #0x40]
    6c30:	add	sp, sp, #0x80
    6c34:	ret

; ===== sub_6c38 =====
    6c38:	stp	x28, x27, [sp, #-0x60]!
    6c3c:	stp	x26, x25, [sp, #0x10]
    6c40:	stp	x24, x23, [sp, #0x20]
    6c44:	stp	x22, x21, [sp, #0x30]
    6c48:	stp	x20, x19, [sp, #0x40]
    6c4c:	stp	x29, x30, [sp, #0x50]
    6c50:	add	x29, sp, #0x50
    6c54:	sub	sp, sp, #0x3d0
    6c58:	adrp	x8, 44 ; 0x32000
    6c5c:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    6c60:	ldr	x8, [x8]
    6c64:	stur	x8, [x29, #-0x60]
    6c68:	adrp	x19, 40 ; 0x2e000
    6c6c:	add	x19, x19, #0xec8 ; "com.johndie.triggr"
    6c70:	mov	x0, x19
    6c74:	bl	0x1fd4c ; symbol stub for: _CFPreferencesAppSynchronize
    6c78:	adrp	x0, 43 ; 0x31000
    6c7c:	add	x0, x0, #0x368 ; "RequireUnlock"
    6c80:	mov	x1, x19
    6c84:	bl	0x1fd58 ; symbol stub for: _CFPreferencesCopyAppValue
    6c88:	mov	x19, x0
    6c8c:	adrp	x8, 47 ; 0x35000
    6c90:	ldr	x24, [x8, #0x140]
    6c94:	mov	x1, x24
    6c98:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    6c9c:	tbz	w0, #0x0, 0x6cac
    6ca0:	mov	x0, x19
    6ca4:	bl	0x20600
    6ca8:	b	0x6cb0
    6cac:	mov	w0, #0x1

; ===== sub_6cb0 =====
    6cb0:	adrp	x8, 48 ; 0x36000
    6cb4:	strb	w0, [x8, #0x80]
    6cb8:	adrp	x0, 43 ; 0x31000
    6cbc:	add	x0, x0, #0x388 ; "BlockedApps"
    6cc0:	adrp	x1, 40 ; 0x2e000
    6cc4:	add	x1, x1, #0xec8 ; "com.johndie.triggr"
    6cc8:	bl	0x1fd58 ; symbol stub for: _CFPreferencesCopyAppValue
    6ccc:	mov	x21, x0
    6cd0:	adrp	x22, 47 ; 0x35000
    6cd4:	ldr	x0, [x22, #0xa48] ; Objc class ref: bad class ref
    6cd8:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    6cdc:	mov	x1, x0
    6ce0:	mov	x0, x21
    6ce4:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    6ce8:	tbz	w0, #0x0, 0x6d14
    6cec:	mov	x0, x21
    6cf0:	bl	0x20960
    6cf4:	cbz	x0, 0x6d18
    6cf8:	adrp	x8, 47 ; 0x35000
    6cfc:	ldr	x0, [x8, #0xb68] ; Objc class ref: bad class ref
    6d00:	mov	x2, x21
    6d04:	bl	0x21ec0
    6d08:	mov	x29, x29
    6d0c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    6d10:	b	0x6d18
    6d14:	mov	x0, #0x0

; ===== sub_6d18 =====
    6d18:	adrp	x9, 48 ; 0x36000
    6d1c:	ldr	x8, [x9, #0x320]
    6d20:	str	x0, [x9, #0x320]
    6d24:	mov	x0, x8
    6d28:	bl	0x200e8 ; symbol stub for: _objc_release
    6d2c:	adrp	x0, 43 ; 0x31000
    6d30:	add	x0, x0, #0x3a8 ; "AllowAPI"
    6d34:	adrp	x1, 40 ; 0x2e000
    6d38:	add	x1, x1, #0xec8 ; "com.johndie.triggr"
    6d3c:	bl	0x1fd58 ; symbol stub for: _CFPreferencesCopyAppValue
    6d40:	mov	x23, x0
    6d44:	mov	x1, x24
    6d48:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    6d4c:	tbz	w0, #0x0, 0x6d5c
    6d50:	mov	x0, x23
    6d54:	bl	0x20600
    6d58:	b	0x6d60
    6d5c:	mov	w0, #0x0

; ===== sub_6d60 =====
    6d60:	adrp	x8, 48 ; 0x36000
    6d64:	strb	w0, [x8, #0x530]
    6d68:	adrp	x0, 43 ; 0x31000
    6d6c:	add	x0, x0, #0x3c8 ; "LockReplaces"
    6d70:	adrp	x1, 40 ; 0x2e000
    6d74:	add	x1, x1, #0xec8 ; "com.johndie.triggr"
    6d78:	bl	0x1fd58 ; symbol stub for: _CFPreferencesCopyAppValue
    6d7c:	mov	x20, x0
    6d80:	mov	x1, x24
    6d84:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    6d88:	str	x19, [sp, #0x68]
    6d8c:	str	x20, [sp, #0x50]
    6d90:	tbz	w0, #0x0, 0x6da0
    6d94:	mov	x0, x20
    6d98:	bl	0x20600
    6d9c:	b	0x6da4
    6da0:	mov	w0, #0x1

; ===== sub_6da4 =====
    6da4:	adrp	x8, 48 ; 0x36000
    6da8:	strb	w0, [x8, #0x81]
    6dac:	adrp	x0, 43 ; 0x31000
    6db0:	add	x0, x0, #0x3e8 ; "StatusBarSingleTap"
    6db4:	adrp	x1, 40 ; 0x2e000
    6db8:	add	x1, x1, #0xec8 ; "com.johndie.triggr"
    6dbc:	bl	0x1fd58 ; symbol stub for: _CFPreferencesCopyAppValue
    6dc0:	mov	x29, x29
    6dc4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    6dc8:	mov	x19, x0
    6dcc:	mov	x1, x24
    6dd0:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    6dd4:	tbz	w0, #0x0, 0x6de8
    6dd8:	mov	x0, x19
    6ddc:	bl	0x20600
    6de0:	mov	x20, x0
    6de4:	b	0x6e00
    6de8:	adrp	x8, 48 ; 0x36000
    6dec:	ldr	x8, [x8, #0x5d8]
    6df0:	cmn	x8, #0x1
    6df4:	b.ne	0x7724

; ===== sub_6df8 =====
    6df8:	adrp	x8, 48 ; 0x36000
    6dfc:	ldrb	w20, [x8, #0x5d0]

; ===== sub_6e00 =====
    6e00:	mov	x0, x19
    6e04:	bl	0x200e8 ; symbol stub for: _objc_release
    6e08:	and	w8, w20, #0x1
    6e0c:	adrp	x9, 48 ; 0x36000
    6e10:	strb	w8, [x9, #0x82]
    6e14:	mov	x0, x19
    6e18:	bl	0x200e8 ; symbol stub for: _objc_release
    6e1c:	adrp	x0, 43 ; 0x31000
    6e20:	add	x0, x0, #0x408 ; "ShowBanners"
    6e24:	adrp	x1, 40 ; 0x2e000
    6e28:	add	x1, x1, #0xec8 ; "com.johndie.triggr"
    6e2c:	bl	0x1fd58 ; symbol stub for: _CFPreferencesCopyAppValue
    6e30:	mov	x19, x0
    6e34:	mov	x1, x24
    6e38:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    6e3c:	tbz	w0, #0x0, 0x6e4c
    6e40:	mov	x0, x19
    6e44:	bl	0x20600
    6e48:	b	0x6e50
    6e4c:	mov	w0, #0x0

; ===== sub_6e50 =====
    6e50:	adrp	x8, 48 ; 0x36000
    6e54:	strb	w0, [x8, #0x508]
    6e58:	adrp	x0, 43 ; 0x31000
    6e5c:	add	x0, x0, #0x428 ; "ShortcutsInBackground"
    6e60:	adrp	x1, 40 ; 0x2e000
    6e64:	add	x1, x1, #0xec8 ; "com.johndie.triggr"
    6e68:	bl	0x1fd58 ; symbol stub for: _CFPreferencesCopyAppValue
    6e6c:	mov	x20, x0
    6e70:	mov	x1, x24
    6e74:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    6e78:	str	x20, [sp, #0x40]
    6e7c:	tbz	w0, #0x0, 0x6e8c
    6e80:	mov	x0, x20
    6e84:	bl	0x20600
    6e88:	b	0x6e90
    6e8c:	mov	w0, #0x1

; ===== sub_6e90 =====
    6e90:	adrp	x8, 48 ; 0x36000
    6e94:	strb	w0, [x8, #0x83]
    6e98:	adrp	x0, 43 ; 0x31000
    6e9c:	add	x0, x0, #0x448 ; "AskBeforeRestart"
    6ea0:	adrp	x1, 40 ; 0x2e000
    6ea4:	add	x1, x1, #0xec8 ; "com.johndie.triggr"
    6ea8:	bl	0x1fd58 ; symbol stub for: _CFPreferencesCopyAppValue
    6eac:	mov	x20, x0
    6eb0:	mov	x1, x24
    6eb4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    6eb8:	str	x24, [sp, #0x88]
    6ebc:	tbz	w0, #0x0, 0x6ecc
    6ec0:	mov	x0, x20
    6ec4:	bl	0x20600
    6ec8:	b	0x6ed0
    6ecc:	mov	w0, #0x1

; ===== sub_6ed0 =====
    6ed0:	adrp	x8, 48 ; 0x36000
    6ed4:	strb	w0, [x8, #0x84]
    6ed8:	adrp	x0, 43 ; 0x31000
    6edc:	add	x0, x0, #0x468 ; "Haptics"
    6ee0:	adrp	x1, 40 ; 0x2e000
    6ee4:	add	x1, x1, #0xec8 ; "com.johndie.triggr"
    6ee8:	bl	0x1fd58 ; symbol stub for: _CFPreferencesCopyAppValue
    6eec:	mov	x24, x0
    6ef0:	adrp	x8, 47 ; 0x35000
    6ef4:	ldr	x1, [x8, #0x3a0]
    6ef8:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    6efc:	stp	x23, x21, [sp, #0x58]
    6f00:	str	x19, [sp, #0x48]
    6f04:	stp	x24, x20, [sp, #0x30]
    6f08:	tbz	w0, #0x0, 0x6f28
    6f0c:	mov	x0, x24
    6f10:	bl	0x20f80
    6f14:	bic	x8, x0, x0, asr #63
    6f18:	cmp	x8, #0x4
    6f1c:	mov	w9, #0x4
    6f20:	csel	x8, x8, x9, lt
    6f24:	b	0x6f2c
    6f28:	mov	x8, #0x0

; ===== sub_6f2c =====
    6f2c:	adrp	x9, 48 ; 0x36000
    6f30:	str	x8, [x9, #0x510]
    6f34:	adrp	x0, 43 ; 0x31000
    6f38:	add	x0, x0, #0x488 ; "Menus"
    6f3c:	adrp	x1, 40 ; 0x2e000
    6f40:	add	x1, x1, #0xec8 ; "com.johndie.triggr"
    6f44:	bl	0x1fd58 ; symbol stub for: _CFPreferencesCopyAppValue
    6f48:	mov	x19, x0
    6f4c:	adrp	x8, 47 ; 0x35000
    6f50:	ldr	x0, [x8, #0xa68] ; Objc class ref: bad class ref
    6f54:	bl	0x20b60
    6f58:	mov	x29, x29
    6f5c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    6f60:	str	x0, [sp, #0x70]
    6f64:	movi.16b	v0, #0x0
    6f68:	stp	q0, q0, [sp, #0x140]
    6f6c:	stp	q0, q0, [sp, #0x160]
    6f70:	ldr	x0, [x22, #0xa48]
    6f74:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    6f78:	mov	x1, x0
    6f7c:	mov	x0, x19
    6f80:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    6f84:	adrp	x8, 44 ; 0x32000
    6f88:	ldr	x8, [x8, #0xd28] ; literal pool symbol address: ___NSArray0__struct
    6f8c:	tst	w0, #0x1
    6f90:	str	x19, [sp, #0x28]
    6f94:	csel	x0, x19, x8, ne
    6f98:	bl	0x200f4 ; symbol stub for: _objc_retain
    6f9c:	mov	x19, x0
    6fa0:	add	x2, sp, #0x140
    6fa4:	add	x3, sp, #0x2c0
    6fa8:	mov	w4, #0x10
    6fac:	bl	0x20980
    6fb0:	adrp	x23, 47 ; 0x35000
    6fb4:	cbz	x0, 0x70ec
    6fb8:	mov	x22, x0
    6fbc:	ldr	x8, [sp, #0x150]
    6fc0:	ldr	x21, [x8]
    6fc4:	adrp	x28, 47 ; 0x35000
    6fc8:	mov	x20, #0x0
    6fcc:	ldr	x8, [sp, #0x150]
    6fd0:	ldr	x8, [x8]
    6fd4:	cmp	x8, x21
    6fd8:	b.eq	0x6fe4
    6fdc:	mov	x0, x19
    6fe0:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    6fe4:	ldr	x8, [sp, #0x148]
    6fe8:	ldr	x24, [x8, x20, lsl #3]
    6fec:	ldr	x0, [x28, #0xaf8]
    6ff0:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    6ff4:	mov	x1, x0
    6ff8:	mov	x0, x24
    6ffc:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    7000:	tbz	w0, #0x0, 0x70c4
    7004:	mov	x0, x24
    7008:	adrp	x2, 42 ; 0x31000
    700c:	add	x2, x2, #0x4a8 ; "id"
    7010:	bl	0x214e0
    7014:	mov	x29, x29
    7018:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    701c:	mov	x25, x0
    7020:	ldr	x0, [x23, #0xa38]
    7024:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    7028:	mov	x1, x0
    702c:	mov	x0, x25
    7030:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    7034:	mov	x26, x0
    7038:	mov	x0, x25
    703c:	bl	0x200e8 ; symbol stub for: _objc_release
    7040:	tbz	w26, #0x0, 0x70c4
    7044:	mov	x0, x24
    7048:	adrp	x2, 42 ; 0x31000
    704c:	add	x2, x2, #0x4c8 ; "name"
    7050:	bl	0x214e0
    7054:	mov	x29, x29
    7058:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    705c:	mov	x25, x0
    7060:	bl	0x20b40
    7064:	mov	x29, x29
    7068:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    706c:	mov	x26, x0
    7070:	cmp	x0, #0x0
    7074:	adrp	x8, 41 ; 0x30000
    7078:	add	x8, x8, #0xb28 ; "Menu"
    707c:	csel	x27, x8, x0, eq
    7080:	mov	x0, x24
    7084:	adrp	x2, 42 ; 0x31000
    7088:	add	x2, x2, #0x4a8 ; "id"
    708c:	bl	0x214e0
    7090:	mov	x29, x29
    7094:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    7098:	mov	x24, x0
    709c:	ldr	x0, [sp, #0x70]
    70a0:	mov	x2, x27
    70a4:	mov	x3, x24
    70a8:	bl	0x21c00
    70ac:	mov	x0, x24
    70b0:	bl	0x200e8 ; symbol stub for: _objc_release
    70b4:	mov	x0, x26
    70b8:	bl	0x200e8 ; symbol stub for: _objc_release
    70bc:	mov	x0, x25
    70c0:	bl	0x200e8 ; symbol stub for: _objc_release
    70c4:	add	x20, x20, #0x1
    70c8:	cmp	x22, x20
    70cc:	b.ne	0x6fcc
    70d0:	add	x2, sp, #0x140
    70d4:	add	x3, sp, #0x2c0
    70d8:	mov	x0, x19
    70dc:	mov	w4, #0x10
    70e0:	bl	0x20980
    70e4:	mov	x22, x0
    70e8:	cbnz	x0, 0x6fc8
    70ec:	mov	x0, x19
    70f0:	bl	0x200e8 ; symbol stub for: _objc_release
    70f4:	adrp	x0, 47 ; 0x36000
    70f8:	add	x0, x0, #0x328
    70fc:	ldr	x1, [sp, #0x70]
    7100:	bl	0x20148 ; symbol stub for: _objc_storeStrong
    7104:	adrp	x0, 42 ; 0x31000
    7108:	add	x0, x0, #0x4e8 ; "Enabled"
    710c:	adrp	x1, 39 ; 0x2e000
    7110:	add	x1, x1, #0xec8 ; "com.johndie.triggr"
    7114:	bl	0x1fd58 ; symbol stub for: _CFPreferencesCopyAppValue
    7118:	mov	x22, x0
    711c:	ldr	x1, [sp, #0x88]
    7120:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    7124:	tbz	w0, #0x0, 0x7134
    7128:	mov	x0, x22
    712c:	bl	0x20600
    7130:	tbz	w0, #0x0, 0x7640
    7134:	adrp	x8, 43 ; 0x32000
    7138:	ldr	x8, [x8, #0xd48] ; literal pool symbol address: _kCFPreferencesCurrentUser
    713c:	ldr	x19, [x8]
    7140:	adrp	x8, 43 ; 0x32000
    7144:	ldr	x8, [x8, #0xd40] ; literal pool symbol address: _kCFPreferencesAnyHost
    7148:	ldr	x20, [x8]
    714c:	adrp	x0, 39 ; 0x2e000
    7150:	add	x0, x0, #0xec8 ; "com.johndie.triggr"
    7154:	mov	x1, x19
    7158:	mov	x2, x20
    715c:	bl	0x1fd64 ; symbol stub for: _CFPreferencesCopyKeyList
    7160:	mov	x21, x0
    7164:	bl	0x20960
    7168:	str	x22, [sp, #0x20]
    716c:	cbz	x0, 0x7190
    7170:	adrp	x1, 39 ; 0x2e000
    7174:	add	x1, x1, #0xec8 ; "com.johndie.triggr"
    7178:	mov	x0, x21
    717c:	mov	x2, x19
    7180:	mov	x3, x20
    7184:	bl	0x1fd70 ; symbol stub for: _CFPreferencesCopyMultiple
    7188:	mov	x22, x0
    718c:	b	0x7198
    7190:	adrp	x22, 43 ; 0x32000
    7194:	ldr	x22, [x22, #0xd30] ; literal pool symbol address: ___NSDictionary0__struct

; ===== sub_7198 =====
    7198:	str	x21, [sp, #0x18]
    719c:	adrp	x20, 46 ; 0x35000
    71a0:	ldr	x0, [x20, #0xa68] ; Objc class ref: bad class ref
    71a4:	bl	0x20b60
    71a8:	mov	x29, x29
    71ac:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    71b0:	mov	x19, x0
    71b4:	ldr	x0, [x20, #0xa68]
    71b8:	bl	0x20b60
    71bc:	mov	x29, x29
    71c0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    71c4:	mov	x20, x0
    71c8:	adrp	x8, 43 ; 0x32000
    71cc:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    71d0:	str	x8, [sp, #0x110]
    71d4:	adrp	x8, 27 ; 0x22000
    71d8:	ldr	d0, [x8, #0x8f8]
    71dc:	str	d0, [sp, #0x118]
    71e0:	adrp	x8, 17 ; 0x18000
    71e4:	add	x8, x8, #0x8f4
    71e8:	adrp	x9, 38 ; 0x2d000
    71ec:	add	x9, x9, #0x9c0
    71f0:	stp	x8, x9, [sp, #0x120]
    71f4:	bl	0x200f4 ; symbol stub for: _objc_retain
    71f8:	str	x0, [sp, #0x8]
    71fc:	str	x0, [sp, #0x130]
    7200:	mov	x0, x19
    7204:	bl	0x200f4 ; symbol stub for: _objc_retain
    7208:	mov	x21, x0
    720c:	str	x0, [sp, #0x138]
    7210:	add	x2, sp, #0x110
    7214:	str	x22, [sp, #0x10]
    7218:	mov	x0, x22
    721c:	bl	0x20c20
    7220:	adrp	x0, 47 ; 0x36000
    7224:	add	x0, x0, #0x308
    7228:	mov	x1, x19
    722c:	bl	0x20148 ; symbol stub for: _objc_storeStrong
    7230:	adrp	x0, 47 ; 0x36000
    7234:	add	x0, x0, #0x310
    7238:	mov	x1, x20
    723c:	bl	0x20148 ; symbol stub for: _objc_storeStrong
    7240:	adrp	x22, 47 ; 0x36000
    7244:	strb	wzr, [x22, #0x468]
    7248:	movi.16b	v0, #0x0
    724c:	stp	q0, q0, [sp, #0xd0]
    7250:	stp	q0, q0, [sp, #0xf0]
    7254:	mov	x0, x21
    7258:	bl	0x200f4 ; symbol stub for: _objc_retain
    725c:	mov	x19, x0
    7260:	add	x2, sp, #0xd0
    7264:	add	x3, sp, #0x240
    7268:	mov	w4, #0x10
    726c:	bl	0x20980
    7270:	cbz	x0, 0x72e8
    7274:	mov	x21, x0
    7278:	ldr	x8, [sp, #0xe0]
    727c:	ldr	x24, [x8]
    7280:	adrp	x20, 40 ; 0x2f000
    7284:	add	x20, x20, #0x2c8 ; "app:"
    7288:	mov	w25, #0x1
    728c:	mov	x26, #0x0
    7290:	ldr	x8, [sp, #0xe0]
    7294:	ldr	x8, [x8]
    7298:	cmp	x8, x24
    729c:	b.eq	0x72a8
    72a0:	mov	x0, x19
    72a4:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    72a8:	ldr	x8, [sp, #0xd8]
    72ac:	ldr	x0, [x8, x26, lsl #3]
    72b0:	mov	x2, x20
    72b4:	bl	0x20d80
    72b8:	cbz	w0, 0x72c0
    72bc:	strb	w25, [x22, #0x468]
    72c0:	add	x26, x26, #0x1
    72c4:	cmp	x21, x26
    72c8:	b.ne	0x7290
    72cc:	add	x2, sp, #0xd0
    72d0:	add	x3, sp, #0x240
    72d4:	mov	x0, x19
    72d8:	mov	w4, #0x10
    72dc:	bl	0x20980
    72e0:	mov	x21, x0
    72e4:	cbnz	x0, 0x728c
    72e8:	mov	x0, x19
    72ec:	bl	0x200e8 ; symbol stub for: _objc_release
    72f0:	adrp	x8, 46 ; 0x35000
    72f4:	ldr	x0, [x8, #0xa28] ; Objc class ref: bad class ref
    72f8:	bl	0x218e0
    72fc:	mov	x29, x29
    7300:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    7304:	str	x0, [sp, #0x78]
    7308:	movi.16b	v0, #0x0
    730c:	stp	q0, q0, [sp, #0x90]
    7310:	stp	q0, q0, [sp, #0xb0]
    7314:	mov	x0, x19
    7318:	bl	0x200f4 ; symbol stub for: _objc_retain
    731c:	add	x2, sp, #0x90
    7320:	add	x3, sp, #0x1c0
    7324:	str	x0, [sp, #0x80]
    7328:	mov	w4, #0x10
    732c:	bl	0x20980
    7330:	cbz	x0, 0x75d4
    7334:	mov	x26, x0
    7338:	ldr	x8, [sp, #0xa0]
    733c:	ldr	x8, [x8]
    7340:	str	x8, [sp, #0x88]
    7344:	adrp	x22, 43 ; 0x32000
    7348:	add	x22, x22, #0x9a8
    734c:	mov	x25, #0x0
    7350:	ldr	x8, [sp, #0xa0]
    7354:	ldr	x8, [x8]
    7358:	ldr	x9, [sp, #0x88]
    735c:	cmp	x8, x9
    7360:	b.eq	0x736c
    7364:	ldr	x0, [sp, #0x80]
    7368:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    736c:	ldr	x8, [sp, #0x98]
    7370:	ldr	x19, [x8, x25, lsl #3]
    7374:	mov	x0, x19
    7378:	adrp	x2, 39 ; 0x2e000
    737c:	add	x2, x2, #0xf08
    7380:	bl	0x21700
    7384:	mov	x8, #0x7fffffffffffffff
    7388:	cmp	x0, x8
    738c:	b.ne	0x7398
    7390:	mov	x0, #0x0
    7394:	b	0x73ac
    7398:	add	x2, x0, #0x1
    739c:	mov	x0, x19
    73a0:	bl	0x22140
    73a4:	mov	x29, x29
    73a8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue

; ===== sub_73ac =====
    73ac:	bl	0x200f4 ; symbol stub for: _objc_retain
    73b0:	bl	0x200f4 ; symbol stub for: _objc_retain
    73b4:	mov	x19, x0
    73b8:	movi.16b	v0, #0x0
    73bc:	stp	q0, q0, [sp, #0x180]
    73c0:	stp	q0, q0, [sp, #0x1a0]
    73c4:	add	x2, sp, #0x180
    73c8:	sub	x3, x29, #0xe0
    73cc:	mov	x0, x22
    73d0:	mov	w4, #0x10
    73d4:	bl	0x20980
    73d8:	cbz	x0, 0x7460
    73dc:	mov	x28, x0
    73e0:	ldr	x8, [sp, #0x190]
    73e4:	ldr	x21, [x8]
    73e8:	mov	x24, #0x0
    73ec:	ldr	x8, [sp, #0x190]
    73f0:	ldr	x8, [x8]
    73f4:	cmp	x8, x21
    73f8:	b.eq	0x7404
    73fc:	mov	x0, x22
    7400:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    7404:	ldr	x8, [sp, #0x188]
    7408:	ldr	x20, [x8, x24, lsl #3]
    740c:	mov	x0, x19
    7410:	mov	x2, x20
    7414:	bl	0x20d80
    7418:	cbz	w0, 0x7438
    741c:	mov	x0, x19
    7420:	bl	0x21160
    7424:	mov	x27, x0
    7428:	mov	x0, x20
    742c:	bl	0x21160
    7430:	cmp	x27, x0
    7434:	b.hi	0x7500
    7438:	add	x24, x24, #0x1
    743c:	cmp	x28, x24
    7440:	b.ne	0x73ec
    7444:	add	x2, sp, #0x180
    7448:	sub	x3, x29, #0xe0
    744c:	mov	x0, x22
    7450:	mov	w4, #0x10
    7454:	bl	0x20980
    7458:	mov	x28, x0
    745c:	cbnz	x0, 0x73e8
    7460:	mov	x0, x19
    7464:	bl	0x200e8 ; symbol stub for: _objc_release
    7468:	mov	x0, x19
    746c:	adrp	x2, 42 ; 0x31000
    7470:	add	x2, x2, #0xa08 ; "lib."
    7474:	bl	0x20d80
    7478:	cbz	w0, 0x748c
    747c:	mov	x0, x19
    7480:	bl	0x21160
    7484:	cmp	x0, #0x4
    7488:	b.hi	0x7508
    748c:	mov	x21, #0x0
    7490:	adrp	x8, 39 ; 0x2e000
    7494:	add	x8, x8, #0x520
    7498:	add	x8, x8, x21, lsl #5
    749c:	ldr	w24, [x8, #0x10]
    74a0:	cmp	w24, #0x1
    74a4:	b.lt	0x74e8
    74a8:	ldr	x28, [x8, #0x8]
    74ac:	ldr	x0, [x23, #0xa38]
    74b0:	ldr	x2, [x28], #0x10
    74b4:	bl	0x22120
    74b8:	mov	x29, x29
    74bc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    74c0:	mov	x20, x0
    74c4:	mov	x0, x19
    74c8:	mov	x2, x20
    74cc:	bl	0x21000
    74d0:	mov	x27, x0
    74d4:	mov	x0, x20
    74d8:	bl	0x200e8 ; symbol stub for: _objc_release
    74dc:	tbnz	w27, #0x0, 0x7508
    74e0:	subs	x24, x24, #0x1
    74e4:	b.ne	0x74ac
    74e8:	add	x21, x21, #0x1
    74ec:	cmp	x21, #0x18
    74f0:	b.ne	0x7490
    74f4:	mov	x0, x19
    74f8:	bl	0x200e8 ; symbol stub for: _objc_release
    74fc:	b	0x7570
    7500:	mov	x0, x19
    7504:	bl	0x200e8 ; symbol stub for: _objc_release
    7508:	mov	x0, x19
    750c:	bl	0x200e8 ; symbol stub for: _objc_release
    7510:	adrp	x8, 47 ; 0x36000
    7514:	ldr	x8, [x8, #0x5d8]
    7518:	cmn	x8, #0x1
    751c:	b.ne	0x75b0

; ===== sub_7520 =====
    7520:	adrp	x8, 47 ; 0x36000
    7524:	ldrb	w21, [x8, #0x5d0]
    7528:	mov	x0, x19
    752c:	bl	0x200f4 ; symbol stub for: _objc_retain
    7530:	mov	x28, x0
    7534:	adrp	x2, 42 ; 0x31000
    7538:	add	x2, x2, #0xc08 ; "home."
    753c:	bl	0x20d80
    7540:	tbnz	w0, #0x0, 0x7558
    7544:	mov	x0, x28
    7548:	adrp	x2, 42 ; 0x31000
    754c:	add	x2, x2, #0xc28 ; "touchid."
    7550:	bl	0x20d80
    7554:	tbz	w0, #0x0, 0x7588
    7558:	mov	x0, x28
    755c:	bl	0x200e8 ; symbol stub for: _objc_release
    7560:	cbz	w21, 0x7570
    7564:	ldr	x0, [sp, #0x78]
    7568:	mov	x2, x28
    756c:	bl	0x203c0

; ===== sub_7570 =====
    7570:	mov	x0, x19
    7574:	bl	0x200e8 ; symbol stub for: _objc_release
    7578:	add	x25, x25, #0x1
    757c:	cmp	x25, x26
    7580:	b.ne	0x7350
    7584:	b	0x75b8
    7588:	mov	x0, x28
    758c:	adrp	x2, 42 ; 0x31000
    7590:	add	x2, x2, #0xc48 ; "homebar."
    7594:	bl	0x20d80
    7598:	mov	x20, x0
    759c:	mov	x0, x28
    75a0:	bl	0x200e8 ; symbol stub for: _objc_release
    75a4:	cbz	w20, 0x7564
    75a8:	tbz	w21, #0x0, 0x7564
    75ac:	b	0x7570
    75b0:	bl	0x1fc78
    75b4:	b	0x7520

; ===== sub_75b8 =====
    75b8:	add	x2, sp, #0x90
    75bc:	add	x3, sp, #0x1c0
    75c0:	ldr	x0, [sp, #0x80]
    75c4:	mov	w4, #0x10
    75c8:	bl	0x20980
    75cc:	mov	x26, x0
    75d0:	cbnz	x0, 0x734c
    75d4:	ldr	x19, [sp, #0x80]
    75d8:	mov	x0, x19
    75dc:	bl	0x200e8 ; symbol stub for: _objc_release
    75e0:	adrp	x8, 47 ; 0x36000
    75e4:	ldr	x0, [x8, #0xf8]
    75e8:	ldr	x9, [sp, #0x78]
    75ec:	str	x9, [x8, #0xf8]
    75f0:	bl	0x200e8 ; symbol stub for: _objc_release
    75f4:	bl	0x171b4
    75f8:	bl	0x1852c
    75fc:	ldr	x0, [sp, #0x138]
    7600:	bl	0x200e8 ; symbol stub for: _objc_release
    7604:	ldr	x0, [sp, #0x130]
    7608:	bl	0x200e8 ; symbol stub for: _objc_release
    760c:	ldr	x0, [sp, #0x8]
    7610:	bl	0x200e8 ; symbol stub for: _objc_release
    7614:	mov	x0, x19
    7618:	bl	0x200e8 ; symbol stub for: _objc_release
    761c:	ldr	x0, [sp, #0x10]
    7620:	bl	0x200e8 ; symbol stub for: _objc_release
    7624:	ldr	x0, [sp, #0x18]
    7628:	bl	0x200e8 ; symbol stub for: _objc_release
    762c:	ldr	x19, [sp, #0x50]
    7630:	ldr	x20, [sp, #0x40]
    7634:	ldr	x21, [sp, #0x30]
    7638:	ldr	x22, [sp, #0x20]
    763c:	b	0x7694
    7640:	adrp	x8, 43 ; 0x32000
    7644:	ldr	x8, [x8, #0xd30] ; literal pool symbol address: ___NSDictionary0__struct
    7648:	adrp	x9, 47 ; 0x36000
    764c:	ldr	x0, [x9, #0x308]
    7650:	str	x8, [x9, #0x308]
    7654:	bl	0x200e8 ; symbol stub for: _objc_release
    7658:	adrp	x8, 46 ; 0x35000
    765c:	ldr	x0, [x8, #0xb68] ; Objc class ref: bad class ref
    7660:	bl	0x218e0
    7664:	mov	x29, x29
    7668:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    766c:	adrp	x9, 47 ; 0x36000
    7670:	ldr	x8, [x9, #0xf8]
    7674:	str	x0, [x9, #0xf8]
    7678:	mov	x0, x8
    767c:	bl	0x200e8 ; symbol stub for: _objc_release
    7680:	bl	0x171b4
    7684:	bl	0x1852c
    7688:	ldr	x19, [sp, #0x50]
    768c:	ldr	x20, [sp, #0x40]
    7690:	ldr	x21, [sp, #0x30]

; ===== sub_7694 =====
    7694:	mov	x0, x22
    7698:	bl	0x200e8 ; symbol stub for: _objc_release
    769c:	ldr	x0, [sp, #0x70]
    76a0:	bl	0x200e8 ; symbol stub for: _objc_release
    76a4:	ldr	x0, [sp, #0x28]
    76a8:	bl	0x200e8 ; symbol stub for: _objc_release
    76ac:	mov	x0, x21
    76b0:	bl	0x200e8 ; symbol stub for: _objc_release
    76b4:	ldr	x0, [sp, #0x38]
    76b8:	bl	0x200e8 ; symbol stub for: _objc_release
    76bc:	mov	x0, x20
    76c0:	bl	0x200e8 ; symbol stub for: _objc_release
    76c4:	ldr	x0, [sp, #0x48]
    76c8:	bl	0x200e8 ; symbol stub for: _objc_release
    76cc:	mov	x0, x19
    76d0:	bl	0x200e8 ; symbol stub for: _objc_release
    76d4:	ldr	x0, [sp, #0x58]
    76d8:	bl	0x200e8 ; symbol stub for: _objc_release
    76dc:	ldr	x0, [sp, #0x60]
    76e0:	bl	0x200e8 ; symbol stub for: _objc_release
    76e4:	ldr	x0, [sp, #0x68]
    76e8:	bl	0x200e8 ; symbol stub for: _objc_release
    76ec:	ldur	x8, [x29, #-0x60]
    76f0:	adrp	x9, 43 ; 0x32000
    76f4:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    76f8:	ldr	x9, [x9]
    76fc:	cmp	x9, x8
    7700:	b.ne	0x772c
    7704:	add	sp, sp, #0x3d0
    7708:	ldp	x29, x30, [sp, #0x50]
    770c:	ldp	x20, x19, [sp, #0x40]
    7710:	ldp	x22, x21, [sp, #0x30]
    7714:	ldp	x24, x23, [sp, #0x20]
    7718:	ldp	x26, x25, [sp, #0x10]
    771c:	ldp	x28, x27, [sp], #0x60
    7720:	ret
    7724:	bl	0x1fc74
    7728:	b	0x6df8
    772c:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
    7730:	b	0x6c38
    7734:	sub	sp, sp, #0x160
    7738:	stp	x28, x27, [sp, #0x100]
    773c:	stp	x26, x25, [sp, #0x110]
    7740:	stp	x24, x23, [sp, #0x120]
    7744:	stp	x22, x21, [sp, #0x130]
    7748:	stp	x20, x19, [sp, #0x140]
    774c:	stp	x29, x30, [sp, #0x150]
    7750:	add	x29, sp, #0x150
    7754:	adrp	x8, 43 ; 0x32000
    7758:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    775c:	ldr	x8, [x8]
    7760:	stur	x8, [x29, #-0x58]
    7764:	adrp	x19, 39 ; 0x2e000
    7768:	add	x19, x19, #0xec8 ; "com.johndie.triggr"
    776c:	mov	x0, x19
    7770:	bl	0x1fd4c ; symbol stub for: _CFPreferencesAppSynchronize
    7774:	adrp	x0, 39 ; 0x2e000
    7778:	add	x0, x0, #0xee8 ; "TestAssignment"
    777c:	mov	x1, x19
    7780:	bl	0x1fd58 ; symbol stub for: _CFPreferencesCopyAppValue
    7784:	mov	x19, x0
    7788:	adrp	x25, 46 ; 0x35000
    778c:	ldr	x0, [x25, #0xa38] ; Objc class ref: bad class ref
    7790:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    7794:	mov	x1, x0
    7798:	mov	x0, x19
    779c:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    77a0:	tbz	w0, #0x0, 0x7950
    77a4:	adrp	x2, 39 ; 0x2e000
    77a8:	add	x2, x2, #0xf08
    77ac:	mov	x0, x19
    77b0:	bl	0x208c0
    77b4:	cbz	w0, 0x7950
    77b8:	adrp	x1, 39 ; 0x2e000
    77bc:	add	x1, x1, #0xec8 ; "com.johndie.triggr"
    77c0:	mov	x0, x19
    77c4:	bl	0x1fd58 ; symbol stub for: _CFPreferencesCopyAppValue
    77c8:	mov	x20, x0
    77cc:	adrp	x8, 46 ; 0x35000
    77d0:	ldr	x0, [x8, #0xa40] ; Objc class ref: bad class ref
    77d4:	bl	0x20560
    77d8:	mov	x29, x29
    77dc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    77e0:	mov	x21, x0
    77e4:	movi.16b	v0, #0x0
    77e8:	stp	q0, q0, [sp, #0x30]
    77ec:	stp	q0, q0, [sp, #0x50]
    77f0:	adrp	x22, 46 ; 0x35000
    77f4:	ldr	x0, [x22, #0xa48] ; Objc class ref: bad class ref
    77f8:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    77fc:	mov	x1, x0
    7800:	mov	x0, x20
    7804:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    7808:	mov	x8, x0
    780c:	mov	x0, x20
    7810:	tbnz	w8, #0x0, 0x7840
    7814:	cbz	x20, 0x7838
    7818:	str	x20, [sp, #0x70]
    781c:	ldr	x0, [x22, #0xa48]
    7820:	add	x2, sp, #0x70
    7824:	mov	w3, #0x1
    7828:	bl	0x20580
    782c:	mov	x29, x29
    7830:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    7834:	b	0x7844
    7838:	adrp	x0, 43 ; 0x32000
    783c:	ldr	x0, [x0, #0xd28] ; literal pool symbol address: ___NSArray0__struct
    7840:	bl	0x200f4 ; symbol stub for: _objc_retain

; ===== sub_7844 =====
    7844:	mov	x22, x0
    7848:	add	x2, sp, #0x30
    784c:	add	x3, sp, #0x78
    7850:	mov	w4, #0x10
    7854:	bl	0x20980
    7858:	cbz	x0, 0x78e4
    785c:	mov	x23, x0
    7860:	ldr	x8, [sp, #0x40]
    7864:	ldr	x26, [x8]
    7868:	mov	x27, #0x0
    786c:	ldr	x8, [sp, #0x40]
    7870:	ldr	x8, [x8]
    7874:	cmp	x8, x26
    7878:	b.eq	0x7884
    787c:	mov	x0, x22
    7880:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    7884:	ldr	x8, [sp, #0x38]
    7888:	ldr	x24, [x8, x27, lsl #3]
    788c:	ldr	x0, [x25, #0xa38]
    7890:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    7894:	mov	x1, x0
    7898:	mov	x0, x24
    789c:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    78a0:	tbz	w0, #0x0, 0x78bc
    78a4:	mov	x0, x24
    78a8:	bl	0x21160
    78ac:	cbz	x0, 0x78bc
    78b0:	mov	x0, x21
    78b4:	mov	x2, x24
    78b8:	bl	0x203c0
    78bc:	add	x27, x27, #0x1
    78c0:	cmp	x23, x27
    78c4:	b.ne	0x786c
    78c8:	add	x2, sp, #0x30
    78cc:	add	x3, sp, #0x78
    78d0:	mov	x0, x22
    78d4:	mov	w4, #0x10
    78d8:	bl	0x20980
    78dc:	mov	x23, x0
    78e0:	cbnz	x0, 0x7868
    78e4:	mov	x0, x22
    78e8:	bl	0x200e8 ; symbol stub for: _objc_release
    78ec:	mov	x0, x21
    78f0:	bl	0x20960
    78f4:	cbz	x0, 0x7940
    78f8:	adrp	x8, 43 ; 0x32000
    78fc:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    7900:	str	x8, [sp, #0x8]
    7904:	adrp	x8, 27 ; 0x22000
    7908:	ldr	d0, [x8, #0x8f8]
    790c:	str	d0, [sp, #0x10]
    7910:	adrp	x8, 0 ; 0x7000
    7914:	add	x8, x8, #0xebc
    7918:	adrp	x9, 37 ; 0x2c000
    791c:	add	x9, x9, #0xb0
    7920:	stp	x8, x9, [sp, #0x18]
    7924:	mov	x0, x21
    7928:	bl	0x200f4 ; symbol stub for: _objc_retain
    792c:	str	x0, [sp, #0x28]
    7930:	add	x1, sp, #0x8
    7934:	bl	0x7994
    7938:	ldr	x0, [sp, #0x28]
    793c:	bl	0x200e8 ; symbol stub for: _objc_release
    7940:	mov	x0, x21
    7944:	bl	0x200e8 ; symbol stub for: _objc_release
    7948:	mov	x0, x20
    794c:	bl	0x200e8 ; symbol stub for: _objc_release
    7950:	mov	x0, x19
    7954:	bl	0x200e8 ; symbol stub for: _objc_release
    7958:	ldur	x8, [x29, #-0x58]
    795c:	adrp	x9, 43 ; 0x32000
    7960:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    7964:	ldr	x9, [x9]
    7968:	cmp	x9, x8
    796c:	b.ne	0x7990
    7970:	ldp	x29, x30, [sp, #0x150]
    7974:	ldp	x20, x19, [sp, #0x140]
    7978:	ldp	x22, x21, [sp, #0x130]
    797c:	ldp	x24, x23, [sp, #0x120]
    7980:	ldp	x26, x25, [sp, #0x110]
    7984:	ldp	x28, x27, [sp, #0x100]
    7988:	add	sp, sp, #0x160
    798c:	ret
    7990:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_7994 =====
    7994:	stp	x28, x27, [sp, #-0x60]!
    7998:	stp	x26, x25, [sp, #0x10]
    799c:	stp	x24, x23, [sp, #0x20]
    79a0:	stp	x22, x21, [sp, #0x30]
    79a4:	stp	x20, x19, [sp, #0x40]
    79a8:	stp	x29, x30, [sp, #0x50]
    79ac:	add	x29, sp, #0x50
    79b0:	sub	sp, sp, #0x1f0
    79b4:	mov	x20, x1
    79b8:	adrp	x8, 43 ; 0x32000
    79bc:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    79c0:	ldr	x8, [x8]
    79c4:	stur	x8, [x29, #-0x68]
    79c8:	bl	0x200f4 ; symbol stub for: _objc_retain
    79cc:	mov	x27, x0
    79d0:	mov	x0, x20
    79d4:	bl	0x200f4 ; symbol stub for: _objc_retain
    79d8:	mov	x20, x0
    79dc:	adrp	x8, 47 ; 0x36000
    79e0:	ldrb	w8, [x8, #0x84]
    79e4:	cmp	w8, #0x1
    79e8:	b.ne	0x7e64
    79ec:	add	x19, sp, #0x90
    79f0:	mov	x0, x27
    79f4:	bl	0x200f4 ; symbol stub for: _objc_retain
    79f8:	mov	x23, x0
    79fc:	movi.16b	v0, #0x0
    7a00:	stp	q0, q0, [sp, #0x90]
    7a04:	stp	q0, q0, [x19, #0x20]
    7a08:	add	x2, sp, #0x90
    7a0c:	sub	x3, x29, #0xe8
    7a10:	mov	w4, #0x10
    7a14:	bl	0x20980
    7a18:	str	x20, [sp, #0x18]
    7a1c:	cbz	x0, 0x7ae8
    7a20:	mov	x24, x0
    7a24:	ldr	x8, [sp, #0xa0]
    7a28:	adrp	x22, 40 ; 0x2f000
    7a2c:	add	x22, x22, #0xda8 ; "system.poweroff"
    7a30:	adrp	x20, 46 ; 0x35000
    7a34:	ldr	x28, [x8]
    7a38:	adrp	x25, 40 ; 0x2f000
    7a3c:	add	x25, x25, #0xd28 ; "system.restart"
    7a40:	adrp	x26, 40 ; 0x2f000
    7a44:	add	x26, x26, #0xa08 ; "system.respring"
    7a48:	mov	x19, #0x0
    7a4c:	ldr	x8, [sp, #0xa0]
    7a50:	ldr	x8, [x8]
    7a54:	cmp	x8, x28
    7a58:	b.eq	0x7a64
    7a5c:	mov	x0, x23
    7a60:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    7a64:	ldr	x8, [sp, #0x98]
    7a68:	ldr	x21, [x8, x19, lsl #3]
    7a6c:	ldr	x0, [x20, #0xa38]
    7a70:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    7a74:	mov	x1, x0
    7a78:	mov	x0, x21
    7a7c:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    7a80:	tbz	w0, #0x0, 0x7ab4
    7a84:	mov	x0, x21
    7a88:	mov	x2, x22
    7a8c:	bl	0x21000
    7a90:	tbnz	w0, #0x0, 0x7af4
    7a94:	mov	x0, x21
    7a98:	mov	x2, x25
    7a9c:	bl	0x21000
    7aa0:	tbnz	w0, #0x0, 0x7b08
    7aa4:	mov	x0, x21
    7aa8:	mov	x2, x26
    7aac:	bl	0x21000
    7ab0:	tbnz	w0, #0x0, 0x7b18
    7ab4:	add	x19, x19, #0x1
    7ab8:	cmp	x24, x19
    7abc:	b.ne	0x7a4c
    7ac0:	add	x2, sp, #0x90
    7ac4:	sub	x3, x29, #0xe8
    7ac8:	mov	x0, x23
    7acc:	mov	w4, #0x10
    7ad0:	bl	0x20980
    7ad4:	mov	x24, x0
    7ad8:	cbnz	x0, 0x7a48
    7adc:	mov	x22, #0x0
    7ae0:	mov	w19, #0x1
    7ae4:	b	0x7b24
    7ae8:	mov	x22, #0x0
    7aec:	mov	w19, #0x1
    7af0:	b	0x7b28
    7af4:	mov	w19, #0x0
    7af8:	ldr	x20, [sp, #0x18]
    7afc:	adrp	x22, 42 ; 0x31000
    7b00:	add	x22, x22, #0xce8 ; "Your iPhone will turn off."
    7b04:	b	0x7b28
    7b08:	mov	w19, #0x0
    7b0c:	adrp	x22, 42 ; 0x31000
    7b10:	add	x22, x22, #0xd08 ; "Your iPhone will restart."
    7b14:	b	0x7b24
    7b18:	mov	w19, #0x0
    7b1c:	adrp	x22, 42 ; 0x31000
    7b20:	add	x22, x22, #0xd28 ; "The Home Screen will restart. Open apps close."

; ===== sub_7b24 =====
    7b24:	ldr	x20, [sp, #0x18]

; ===== sub_7b28 =====
    7b28:	mov	x0, x23
    7b2c:	bl	0x200e8 ; symbol stub for: _objc_release
    7b30:	cbnz	w19, 0x7e64
    7b34:	adrp	x19, 47 ; 0x36000
    7b38:	ldr	x0, [x19, #0x350]
    7b3c:	mov	w2, #0x1
    7b40:	bl	0x21ac0
    7b44:	ldr	x0, [x19, #0x350]
    7b48:	str	xzr, [x19, #0x350]
    7b4c:	bl	0x200e8 ; symbol stub for: _objc_release
    7b50:	mov	w0, #0x1
    7b54:	bl	0xf0c8
    7b58:	mov	x29, x29
    7b5c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    7b60:	ldr	x8, [x19, #0x350]
    7b64:	str	x0, [x19, #0x350]
    7b68:	mov	x0, x8
    7b6c:	bl	0x200e8 ; symbol stub for: _objc_release
    7b70:	ldr	x0, [x19, #0x350]
    7b74:	cbz	x0, 0x7e64
    7b78:	stp	x22, x27, [sp, #0x8]
    7b7c:	mov	w2, #0x0
    7b80:	bl	0x21ac0
    7b84:	adrp	x8, 46 ; 0x35000
    7b88:	ldr	x0, [x8, #0xa40] ; Objc class ref: bad class ref
    7b8c:	bl	0x20560
    7b90:	mov	x29, x29
    7b94:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    7b98:	str	x0, [sp, #0x20]
    7b9c:	movi.16b	v0, #0x0
    7ba0:	stp	q0, q0, [sp, #0x50]
    7ba4:	stp	q0, q0, [sp, #0x70]
    7ba8:	mov	x0, x23
    7bac:	bl	0x200f4 ; symbol stub for: _objc_retain
    7bb0:	mov	x23, x0
    7bb4:	add	x2, sp, #0x50
    7bb8:	add	x3, sp, #0xd8
    7bbc:	mov	w4, #0x10
    7bc0:	bl	0x20980
    7bc4:	cbz	x0, 0x7cd4
    7bc8:	mov	x25, x0
    7bcc:	ldr	x8, [sp, #0x60]
    7bd0:	adrp	x20, 46 ; 0x35000
    7bd4:	ldr	x22, [x8]
    7bd8:	adrp	x24, 40 ; 0x2f000
    7bdc:	add	x24, x24, #0x5c8 ; "pause:"
    7be0:	adrp	x26, 40 ; 0x2f000
    7be4:	add	x26, x26, #0x5e8 ; "if:"
    7be8:	adrp	x27, 40 ; 0x2f000
    7bec:	add	x27, x27, #0x608 ; "else"
    7bf0:	mov	x28, #0x0
    7bf4:	ldr	x8, [sp, #0x60]
    7bf8:	ldr	x8, [x8]
    7bfc:	cmp	x8, x22
    7c00:	b.eq	0x7c0c
    7c04:	mov	x0, x23
    7c08:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    7c0c:	ldr	x8, [sp, #0x58]
    7c10:	ldr	x21, [x8, x28, lsl #3]
    7c14:	ldr	x0, [x20, #0xa38]
    7c18:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    7c1c:	mov	x1, x0
    7c20:	mov	x0, x21
    7c24:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    7c28:	tbz	w0, #0x0, 0x7cac
    7c2c:	mov	x0, x21
    7c30:	bl	0x200f4 ; symbol stub for: _objc_retain
    7c34:	mov	x21, x0
    7c38:	mov	x2, x24
    7c3c:	bl	0x20d80
    7c40:	tbnz	w0, #0x0, 0x7ca4
    7c44:	mov	x0, x21
    7c48:	mov	x2, x26
    7c4c:	bl	0x20d80
    7c50:	tbnz	w0, #0x0, 0x7ca4
    7c54:	mov	x0, x21
    7c58:	mov	x2, x27
    7c5c:	bl	0x21000
    7c60:	tbnz	w0, #0x0, 0x7ca4
    7c64:	mov	x0, x21
    7c68:	adrp	x2, 40 ; 0x2f000
    7c6c:	add	x2, x2, #0x628 ; "endif"
    7c70:	bl	0x21000
    7c74:	mov	x19, x0
    7c78:	mov	x0, x21
    7c7c:	bl	0x200e8 ; symbol stub for: _objc_release
    7c80:	tbnz	w19, #0x0, 0x7cac
    7c84:	mov	x0, x21
    7c88:	bl	0x1515c
    7c8c:	mov	x29, x29
    7c90:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    7c94:	mov	x21, x0
    7c98:	ldr	x0, [sp, #0x20]
    7c9c:	mov	x2, x21
    7ca0:	bl	0x203c0
    7ca4:	mov	x0, x21
    7ca8:	bl	0x200e8 ; symbol stub for: _objc_release
    7cac:	add	x28, x28, #0x1
    7cb0:	cmp	x25, x28
    7cb4:	b.ne	0x7bf4
    7cb8:	add	x2, sp, #0x50
    7cbc:	add	x3, sp, #0xd8
    7cc0:	mov	x0, x23
    7cc4:	mov	w4, #0x10
    7cc8:	bl	0x20980
    7ccc:	mov	x25, x0
    7cd0:	cbnz	x0, 0x7bf0
    7cd4:	mov	x0, x23
    7cd8:	bl	0x200e8 ; symbol stub for: _objc_release
    7cdc:	adrp	x8, 46 ; 0x35000
    7ce0:	ldr	x19, [x8, #0xbd0] ; Objc class ref: bad class ref
    7ce4:	adrp	x8, 46 ; 0x35000
    7ce8:	ldr	x21, [x8, #0xa38] ; Objc class ref: bad class ref
    7cec:	adrp	x2, 41 ; 0x30000
    7cf0:	add	x2, x2, #0xb08
    7cf4:	ldr	x22, [sp, #0x20]
    7cf8:	mov	x0, x22
    7cfc:	bl	0x207c0
    7d00:	mov	x29, x29
    7d04:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    7d08:	mov	x23, x0
    7d0c:	str	x0, [sp]
    7d10:	adrp	x2, 42 ; 0x31000
    7d14:	add	x2, x2, #0xc88 ; "Run %@?"
    7d18:	mov	x0, x21
    7d1c:	bl	0x22100
    7d20:	mov	x29, x29
    7d24:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    7d28:	mov	x24, x0
    7d2c:	mov	x0, x19
    7d30:	mov	x2, x24
    7d34:	ldr	x3, [sp, #0x8]
    7d38:	mov	w4, #0x1
    7d3c:	bl	0x20440
    7d40:	mov	x29, x29
    7d44:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    7d48:	mov	x21, x0
    7d4c:	mov	x0, x24
    7d50:	bl	0x200e8 ; symbol stub for: _objc_release
    7d54:	mov	x0, x23
    7d58:	bl	0x200e8 ; symbol stub for: _objc_release
    7d5c:	adrp	x20, 46 ; 0x35000
    7d60:	ldr	x0, [x20, #0xbd8] ; Objc class ref: bad class ref
    7d64:	adrp	x2, 42 ; 0x31000
    7d68:	add	x2, x2, #0xca8 ; "Cancel"
    7d6c:	adrp	x4, 39 ; 0x2e000
    7d70:	add	x4, x4, #0x860
    7d74:	mov	w3, #0x1
    7d78:	bl	0x20300
    7d7c:	mov	x29, x29
    7d80:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    7d84:	mov	x19, x0
    7d88:	mov	x0, x21
    7d8c:	mov	x2, x19
    7d90:	bl	0x20360
    7d94:	mov	x0, x19
    7d98:	bl	0x200e8 ; symbol stub for: _objc_release
    7d9c:	ldr	x19, [x20, #0xbd8]
    7da0:	adrp	x8, 43 ; 0x32000
    7da4:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    7da8:	str	x8, [sp, #0x28]
    7dac:	adrp	x8, 27 ; 0x22000
    7db0:	ldr	d0, [x8, #0x8f8]
    7db4:	str	d0, [sp, #0x30]
    7db8:	adrp	x8, 20 ; 0x1b000
    7dbc:	add	x8, x8, #0x9d4
    7dc0:	adrp	x9, 39 ; 0x2e000
    7dc4:	add	x9, x9, #0x880
    7dc8:	stp	x8, x9, [sp, #0x38]
    7dcc:	ldr	x20, [sp, #0x18]
    7dd0:	mov	x0, x20
    7dd4:	bl	0x200f4 ; symbol stub for: _objc_retain
    7dd8:	str	x0, [sp, #0x48]
    7ddc:	adrp	x2, 42 ; 0x31000
    7de0:	add	x2, x2, #0xcc8 ; "Run"
    7de4:	add	x4, sp, #0x28
    7de8:	mov	x0, x19
    7dec:	mov	w3, #0x2
    7df0:	bl	0x20300
    7df4:	mov	x29, x29
    7df8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    7dfc:	mov	x19, x0
    7e00:	mov	x0, x21
    7e04:	mov	x2, x19
    7e08:	bl	0x20360
    7e0c:	mov	x0, x19
    7e10:	bl	0x200e8 ; symbol stub for: _objc_release
    7e14:	adrp	x8, 47 ; 0x36000
    7e18:	ldr	x0, [x8, #0x350]
    7e1c:	bl	0x217e0
    7e20:	mov	x29, x29
    7e24:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    7e28:	mov	x19, x0
    7e2c:	mov	x2, x21
    7e30:	mov	w3, #0x1
    7e34:	mov	x4, #0x0
    7e38:	bl	0x216a0
    7e3c:	mov	x0, x19
    7e40:	bl	0x200e8 ; symbol stub for: _objc_release
    7e44:	ldr	x0, [sp, #0x48]
    7e48:	bl	0x200e8 ; symbol stub for: _objc_release
    7e4c:	mov	x0, x21
    7e50:	bl	0x200e8 ; symbol stub for: _objc_release
    7e54:	mov	x0, x22
    7e58:	bl	0x200e8 ; symbol stub for: _objc_release
    7e5c:	ldr	x27, [sp, #0x10]
    7e60:	b	0x7e70
    7e64:	ldr	x8, [x20, #0x10]
    7e68:	mov	x0, x20
    7e6c:	blr	x8

; ===== sub_7e70 =====
    7e70:	mov	x0, x20
    7e74:	bl	0x200e8 ; symbol stub for: _objc_release
    7e78:	mov	x0, x27
    7e7c:	bl	0x200e8 ; symbol stub for: _objc_release
    7e80:	ldur	x8, [x29, #-0x68]
    7e84:	adrp	x9, 43 ; 0x32000
    7e88:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    7e8c:	ldr	x9, [x9]
    7e90:	cmp	x9, x8
    7e94:	b.ne	0x7eb8
    7e98:	add	sp, sp, #0x1f0
    7e9c:	ldp	x29, x30, [sp, #0x50]
    7ea0:	ldp	x20, x19, [sp, #0x40]
    7ea4:	ldp	x22, x21, [sp, #0x30]
    7ea8:	ldp	x24, x23, [sp, #0x20]
    7eac:	ldp	x26, x25, [sp, #0x10]
    7eb0:	ldp	x28, x27, [sp], #0x60
    7eb4:	ret
    7eb8:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
    7ebc:	ldr	x0, [x0, #0x20]
    7ec0:	b	0x7ec4

; ===== sub_7ec4 =====
    7ec4:	sub	sp, sp, #0x130
    7ec8:	stp	x28, x27, [sp, #0xd0]
    7ecc:	stp	x26, x25, [sp, #0xe0]
    7ed0:	stp	x24, x23, [sp, #0xf0]
    7ed4:	stp	x22, x21, [sp, #0x100]
    7ed8:	stp	x20, x19, [sp, #0x110]
    7edc:	stp	x29, x30, [sp, #0x120]
    7ee0:	add	x29, sp, #0x120
    7ee4:	adrp	x8, 43 ; 0x32000
    7ee8:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    7eec:	ldr	x8, [x8]
    7ef0:	stur	x8, [x29, #-0x60]
    7ef4:	bl	0x200f4 ; symbol stub for: _objc_retain
    7ef8:	bl	0x200f4 ; symbol stub for: _objc_retain
    7efc:	mov	x19, x0
    7f00:	bl	0xc1ac
    7f04:	mov	x29, x29
    7f08:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    7f0c:	mov	x20, x0
    7f10:	adrp	x2, 40 ; 0x2f000
    7f14:	add	x2, x2, #0x308 ; "lock"
    7f18:	bl	0x21000
    7f1c:	mov	x21, x0
    7f20:	mov	x0, x20
    7f24:	bl	0x200e8 ; symbol stub for: _objc_release
    7f28:	cbz	w21, 0x818c
    7f2c:	movi.16b	v0, #0x0
    7f30:	stp	q0, q0, [sp, #0x20]
    7f34:	stp	q0, q0, [sp]
    7f38:	mov	x0, x19
    7f3c:	bl	0x200f4 ; symbol stub for: _objc_retain
    7f40:	mov	x20, x0
    7f44:	mov	x2, sp
    7f48:	add	x3, sp, #0x40
    7f4c:	mov	w4, #0x10
    7f50:	bl	0x20980
    7f54:	cbz	x0, 0x8184
    7f58:	mov	x21, x0
    7f5c:	mov	w26, #0x0
    7f60:	ldr	x8, [sp, #0x10]
    7f64:	adrp	x22, 40 ; 0x2f000
    7f68:	add	x22, x22, #0x2c8 ; "app:"
    7f6c:	ldr	x25, [x8]
    7f70:	adrp	x23, 40 ; 0x2f000
    7f74:	add	x23, x23, #0x408 ; "url:"
    7f78:	mov	x24, #0x0
    7f7c:	ldr	x8, [sp, #0x10]
    7f80:	ldr	x8, [x8]
    7f84:	cmp	x8, x25
    7f88:	b.eq	0x7f94
    7f8c:	mov	x0, x20
    7f90:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    7f94:	ldr	x8, [sp, #0x8]
    7f98:	ldr	x0, [x8, x24, lsl #3]
    7f9c:	bl	0x200f4 ; symbol stub for: _objc_retain
    7fa0:	mov	x27, x0
    7fa4:	mov	x2, x22
    7fa8:	bl	0x20d80
    7fac:	tbnz	w0, #0x0, 0x8080
    7fb0:	mov	x0, x27
    7fb4:	mov	x2, x23
    7fb8:	bl	0x20d80
    7fbc:	tbnz	w0, #0x0, 0x8080
    7fc0:	mov	x0, x27
    7fc4:	adrp	x2, 40 ; 0x2f000
    7fc8:	add	x2, x2, #0x3e8 ; "shortcut:"
    7fcc:	bl	0x20d80
    7fd0:	cbnz	w0, 0x8080
    7fd4:	mov	x0, x27
    7fd8:	adrp	x2, 40 ; 0x2f000
    7fdc:	add	x2, x2, #0x7e8 ; "settings:"
    7fe0:	bl	0x20d80
    7fe4:	mov	x28, x0
    7fe8:	mov	x0, x27
    7fec:	bl	0x200e8 ; symbol stub for: _objc_release
    7ff0:	tbnz	w28, #0x0, 0x8088
    7ff4:	mov	x0, x27
    7ff8:	adrp	x2, 40 ; 0x2f000
    7ffc:	add	x2, x2, #0x428 ; "shell:"
    8000:	bl	0x20d80
    8004:	orr	w26, w0, w26
    8008:	add	x24, x24, #0x1
    800c:	cmp	x21, x24
    8010:	b.ne	0x7f7c
    8014:	mov	x2, sp
    8018:	add	x3, sp, #0x40
    801c:	mov	x0, x20
    8020:	mov	w4, #0x10
    8024:	bl	0x20980
    8028:	mov	x21, x0
    802c:	cbnz	x0, 0x7f78
    8030:	mov	x0, x20
    8034:	bl	0x200e8 ; symbol stub for: _objc_release
    8038:	adrp	x8, 46 ; 0x36000
    803c:	ldrb	w8, [x8, #0x80]
    8040:	and	w8, w26, w8
    8044:	tbz	w8, #0x0, 0x818c
    8048:	adrp	x8, 45 ; 0x35000
    804c:	ldr	x0, [x8, #0xbc8] ; Objc class ref: bad class ref
    8050:	bl	0x200d0 ; symbol stub for: _objc_opt_new
    8054:	mov	x21, x0
    8058:	mov	w2, #0x2
    805c:	mov	x3, #0x0
    8060:	bl	0x20680
    8064:	mov	x22, x0
    8068:	mov	x0, x21
    806c:	bl	0x200e8 ; symbol stub for: _objc_release
    8070:	mov	x0, x20
    8074:	bl	0x200e8 ; symbol stub for: _objc_release
    8078:	cbnz	w22, 0x8098
    807c:	b	0x8194
    8080:	mov	x0, x27
    8084:	bl	0x200e8 ; symbol stub for: _objc_release
    8088:	mov	x0, x20
    808c:	bl	0x200e8 ; symbol stub for: _objc_release
    8090:	mov	x0, x20
    8094:	bl	0x200e8 ; symbol stub for: _objc_release
    8098:	mov	x0, x20
    809c:	bl	0x200f4 ; symbol stub for: _objc_retain
    80a0:	mov	x20, x0
    80a4:	adrp	x0, 26 ; 0x22000
    80a8:	add	x0, x0, #0xc65 ; literal pool for: "SBLockScreenManager"
    80ac:	bl	0x105fc
    80b0:	mov	x29, x29
    80b4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    80b8:	mov	x21, x0
    80bc:	adrp	x8, 44 ; 0x34000
    80c0:	ldr	x22, [x8, #0xfd0]
    80c4:	mov	x1, x22
    80c8:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    80cc:	tbz	w0, #0x0, 0x8170
    80d0:	adrp	x8, 44 ; 0x34000
    80d4:	ldr	x23, [x8, #0xfd8]
    80d8:	mov	x0, x21
    80dc:	mov	x1, x23
    80e0:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    80e4:	tbz	w0, #0x0, 0x8170
    80e8:	adrp	x8, 42 ; 0x32000
    80ec:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    80f0:	str	x8, [sp, #0x40]
    80f4:	adrp	x8, 26 ; 0x22000
    80f8:	ldr	d0, [x8, #0x8f8]
    80fc:	str	d0, [sp, #0x48]
    8100:	adrp	x8, 19 ; 0x1b000
    8104:	add	x8, x8, #0xfa8
    8108:	adrp	x9, 36 ; 0x2c000
    810c:	add	x9, x9, #0xb0
    8110:	stp	x8, x9, [sp, #0x50]
    8114:	mov	x0, x20
    8118:	bl	0x200f4 ; symbol stub for: _objc_retain
    811c:	str	x0, [sp, #0x60]
    8120:	add	x0, sp, #0x40
    8124:	bl	0x20124 ; symbol stub for: _objc_retainBlock
    8128:	mov	x24, x0
    812c:	bl	0x20124 ; symbol stub for: _objc_retainBlock
    8130:	mov	x25, x0
    8134:	mov	x0, x21
    8138:	mov	x1, x22
    813c:	mov	x2, x25
    8140:	bl	0x200a0 ; symbol stub for: _objc_msgSend
    8144:	mov	x0, x25
    8148:	bl	0x200e8 ; symbol stub for: _objc_release
    814c:	mov	x0, x21
    8150:	mov	x1, x23
    8154:	mov	w2, #0x1
    8158:	mov	w3, #0x1
    815c:	bl	0x200a0 ; symbol stub for: _objc_msgSend
    8160:	mov	x0, x24
    8164:	bl	0x200e8 ; symbol stub for: _objc_release
    8168:	ldr	x0, [sp, #0x60]
    816c:	bl	0x200e8 ; symbol stub for: _objc_release
    8170:	mov	x0, x21
    8174:	bl	0x200e8 ; symbol stub for: _objc_release
    8178:	mov	x0, x20
    817c:	bl	0x200e8 ; symbol stub for: _objc_release
    8180:	b	0x81a0
    8184:	mov	x0, x20
    8188:	bl	0x200e8 ; symbol stub for: _objc_release
    818c:	mov	x0, x19
    8190:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_8194 =====
    8194:	mov	x0, x19
    8198:	mov	x1, #0x0
    819c:	bl	0x1ba14

; ===== sub_81a0 =====
    81a0:	mov	x0, x19
    81a4:	bl	0x200e8 ; symbol stub for: _objc_release
    81a8:	ldur	x8, [x29, #-0x60]
    81ac:	adrp	x9, 42 ; 0x32000
    81b0:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    81b4:	ldr	x9, [x9]
    81b8:	cmp	x9, x8
    81bc:	b.ne	0x81e0
    81c0:	ldp	x29, x30, [sp, #0x120]
    81c4:	ldp	x20, x19, [sp, #0x110]
    81c8:	ldp	x22, x21, [sp, #0x100]
    81cc:	ldp	x24, x23, [sp, #0xf0]
    81d0:	ldp	x26, x25, [sp, #0xe0]
    81d4:	ldp	x28, x27, [sp, #0xd0]
    81d8:	add	sp, sp, #0x130
    81dc:	ret
    81e0:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
    81e4:	ldr	x0, [x1, #0x20]
    81e8:	b	0x200f4 ; symbol stub for: _objc_retain
    81ec:	ldr	x0, [x0, #0x20]
    81f0:	b	0x200e8 ; symbol stub for: _objc_release
    81f4:	sub	sp, sp, #0xc0
    81f8:	stp	x22, x21, [sp, #0x90]
    81fc:	stp	x20, x19, [sp, #0xa0]
    8200:	stp	x29, x30, [sp, #0xb0]
    8204:	add	x29, sp, #0xb0
    8208:	bl	0xf728
    820c:	mov	x29, x29
    8210:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    8214:	mov	x19, x0
    8218:	cbz	x0, 0x82f4
    821c:	sub	x20, x29, #0x40
    8220:	stp	xzr, x20, [x29, #-0x40]
    8224:	adrp	x8, 26 ; 0x22000
    8228:	ldr	d0, [x8, #0x948]
    822c:	stur	d0, [x29, #-0x30]
    8230:	stur	wzr, [x29, #-0x28]
    8234:	add	x21, sp, #0x40
    8238:	stp	xzr, x21, [sp, #0x40]
    823c:	adrp	x8, 26 ; 0x22000
    8240:	ldr	d0, [x8, #0x950]
    8244:	adrp	x8, 7 ; 0xf000
    8248:	add	x8, x8, #0x7b0
    824c:	str	d0, [sp, #0x50]
    8250:	adrp	x9, 7 ; 0xf000
    8254:	add	x9, x9, #0x7d8
    8258:	stp	x8, x9, [sp, #0x58]
    825c:	str	xzr, [sp, #0x68]
    8260:	adrp	x8, 42 ; 0x32000
    8264:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    8268:	str	x8, [sp, #0x8]
    826c:	adrp	x8, 26 ; 0x22000
    8270:	ldr	d0, [x8, #0x8f8]
    8274:	str	d0, [sp, #0x10]
    8278:	adrp	x8, 21 ; 0x1d000
    827c:	add	x8, x8, #0x69c
    8280:	adrp	x9, 38 ; 0x2e000
    8284:	add	x9, x9, #0x9b8
    8288:	stp	x8, x9, [sp, #0x18]
    828c:	mov	x0, x19
    8290:	bl	0x200f4 ; symbol stub for: _objc_retain
    8294:	stp	x0, x20, [sp, #0x28]
    8298:	str	x21, [sp, #0x38]
    829c:	add	x0, sp, #0x8
    82a0:	bl	0x20124 ; symbol stub for: _objc_retainBlock
    82a4:	ldr	x9, [sp, #0x48]
    82a8:	ldr	x8, [x9, #0x28]
    82ac:	str	x0, [x9, #0x28]
    82b0:	mov	x0, x8
    82b4:	bl	0x200e8 ; symbol stub for: _objc_release
    82b8:	ldr	x8, [sp, #0x48]
    82bc:	ldr	x0, [x8, #0x28]
    82c0:	ldr	x8, [x0, #0x10]
    82c4:	blr	x8
    82c8:	ldr	x0, [sp, #0x28]
    82cc:	bl	0x200e8 ; symbol stub for: _objc_release
    82d0:	add	x0, sp, #0x40
    82d4:	mov	w1, #0x8
    82d8:	bl	0x1fe48 ; symbol stub for: __Block_object_dispose
    82dc:	ldr	x0, [sp, #0x68]
    82e0:	bl	0x200e8 ; symbol stub for: _objc_release
    82e4:	sub	x0, x29, #0x40
    82e8:	mov	w1, #0x8
    82ec:	bl	0x1fe48 ; symbol stub for: __Block_object_dispose
    82f0:	b	0x8300
    82f4:	adrp	x0, 30 ; 0x26000
    82f8:	add	x0, x0, #0x956 ; literal pool for: "com.johndie.triggr/airplay-list-ready"
    82fc:	bl	0x1fff8 ; symbol stub for: _notify_post

; ===== sub_8300 =====
    8300:	mov	x0, x19
    8304:	bl	0x200e8 ; symbol stub for: _objc_release
    8308:	ldp	x29, x30, [sp, #0xb0]
    830c:	ldp	x20, x19, [sp, #0xa0]
    8310:	ldp	x22, x21, [sp, #0x90]
    8314:	add	sp, sp, #0xc0
    8318:	ret
    831c:	mov	x19, x0
    8320:	add	x0, sp, #0x40
    8324:	mov	w1, #0x8
    8328:	bl	0x1fe48 ; symbol stub for: __Block_object_dispose
    832c:	sub	x0, x29, #0x40
    8330:	mov	w1, #0x8
    8334:	bl	0x1fe48 ; symbol stub for: __Block_object_dispose
    8338:	mov	x0, x19
    833c:	bl	0x1fe54 ; symbol stub for: __Unwind_Resume
    8340:	mov	x0, #0x0
    8344:	b	0x8348

; ===== sub_8348 =====
    8348:	sub	sp, sp, #0x70
    834c:	stp	d9, d8, [sp, #0x30]
    8350:	stp	x22, x21, [sp, #0x40]
    8354:	stp	x20, x19, [sp, #0x50]
    8358:	stp	x29, x30, [sp, #0x60]
    835c:	add	x29, sp, #0x60
    8360:	mov	x20, x0
    8364:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    8368:	adrp	x8, 46 ; 0x36000
    836c:	ldrb	w10, [x8, #0x518]
    8370:	adrp	x9, 46 ; 0x36000
    8374:	tbnz	w10, #0x0, 0x8394
    8378:	mov.16b	v8, v0
    837c:	ldr	d0, [x9, #0x520]
    8380:	fsub	d1, d8, d0
    8384:	adrp	x10, 26 ; 0x22000
    8388:	ldr	d0, [x10, #0x958]
    838c:	fcmp	d1, d0
    8390:	b.pl	0x83b4
    8394:	str	xzr, [x9, #0x520]
    8398:	strb	wzr, [x8, #0x518]

; ===== sub_839c =====
    839c:	ldp	x29, x30, [sp, #0x60]
    83a0:	ldp	x20, x19, [sp, #0x50]
    83a4:	ldp	x22, x21, [sp, #0x40]
    83a8:	ldp	d9, d8, [sp, #0x30]
    83ac:	add	sp, sp, #0x70
    83b0:	ret
    83b4:	adrp	x8, 46 ; 0x36000
    83b8:	ldr	d1, [x8, #0x100]
    83bc:	fsub	d1, d8, d1
    83c0:	fcmp	d1, d0
    83c4:	b.mi	0x839c
    83c8:	adrp	x8, 46 ; 0x36000
    83cc:	ldr	d1, [x8, #0x5e8]
    83d0:	fsub	d1, d8, d1
    83d4:	fcmp	d1, d0
    83d8:	b.mi	0x839c
    83dc:	bl	0x19150
    83e0:	cbz	w0, 0x839c
    83e4:	adrp	x0, 41 ; 0x31000
    83e8:	add	x0, x0, #0xaa8 ; "tap"
    83ec:	mov	x1, x20
    83f0:	bl	0x1672c
    83f4:	mov	x29, x29
    83f8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    83fc:	mov	x19, x0
    8400:	adrp	x0, 41 ; 0x31000
    8404:	add	x0, x0, #0xac8 ; "doubletap"
    8408:	mov	x1, x20
    840c:	bl	0x1672c
    8410:	mov	x29, x29
    8414:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    8418:	mov	x20, x0
    841c:	adrp	x22, 46 ; 0x36000
    8420:	ldrb	w9, [x22, #0x110]
    8424:	adrp	x8, 46 ; 0x36000
    8428:	cmp	w9, #0x1
    842c:	b.ne	0x8464
    8430:	ldr	d0, [x8, #0x5f0]
    8434:	fsub	d0, d8, d0
    8438:	adrp	x9, 26 ; 0x22000
    843c:	ldr	d1, [x9, #0x960]
    8440:	fcmp	d0, d1
    8444:	b.pl	0x8464
    8448:	strb	wzr, [x22, #0x110]
    844c:	adrp	x8, 46 ; 0x36000
    8450:	ldr	x9, [x8, #0x108]
    8454:	add	x9, x9, #0x1
    8458:	str	x9, [x8, #0x108]
    845c:	mov	x0, x20
    8460:	b	0x8520
    8464:	str	d8, [x8, #0x5f0]
    8468:	mov	x0, x20
    846c:	bl	0xbd74
    8470:	mov	x29, x29
    8474:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    8478:	mov	x21, x0
    847c:	bl	0x200e8 ; symbol stub for: _objc_release
    8480:	cbz	x21, 0x850c
    8484:	mov	w8, #0x1
    8488:	strb	w8, [x22, #0x110]
    848c:	adrp	x8, 46 ; 0x36000
    8490:	ldr	x9, [x8, #0x108]
    8494:	add	x22, x9, #0x1
    8498:	str	x22, [x8, #0x108]
    849c:	mov	x0, #0x0
    84a0:	mov	w1, #0x9380
    84a4:	movk	w1, #0x14dc, lsl #16
    84a8:	bl	0x1ff38 ; symbol stub for: _dispatch_time
    84ac:	mov	x21, x0
    84b0:	adrp	x8, 42 ; 0x32000
    84b4:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    84b8:	str	x8, [sp]
    84bc:	adrp	x8, 26 ; 0x22000
    84c0:	ldr	d0, [x8, #0x8f8]
    84c4:	adrp	x8, 21 ; 0x1d000
    84c8:	add	x8, x8, #0xb34
    84cc:	str	d0, [sp, #0x8]
    84d0:	adrp	x9, 36 ; 0x2c000
    84d4:	add	x9, x9, #0x340
    84d8:	stp	x8, x9, [sp, #0x10]
    84dc:	str	x22, [sp, #0x28]
    84e0:	mov	x0, x19
    84e4:	bl	0x200f4 ; symbol stub for: _objc_retain
    84e8:	str	x0, [sp, #0x20]
    84ec:	adrp	x1, 42 ; 0x32000
    84f0:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
    84f4:	mov	x2, sp
    84f8:	mov	x0, x21
    84fc:	bl	0x1fefc ; symbol stub for: _dispatch_after
    8500:	ldr	x0, [sp, #0x20]
    8504:	bl	0x200e8 ; symbol stub for: _objc_release
    8508:	b	0x8524
    850c:	adrp	x8, 46 ; 0x36000
    8510:	ldrb	w8, [x8, #0x82]
    8514:	cmp	w8, #0x1
    8518:	b.ne	0x8524
    851c:	mov	x0, x19

; ===== sub_8520 =====
    8520:	bl	0x4324

; ===== sub_8524 =====
    8524:	mov	x0, x20
    8528:	bl	0x200e8 ; symbol stub for: _objc_release
    852c:	mov	x0, x19
    8530:	bl	0x200e8 ; symbol stub for: _objc_release
    8534:	b	0x839c
    8538:	mov	w0, #0x1
    853c:	b	0x8348
    8540:	mov	w0, #0x2
    8544:	b	0x8348
    8548:	stp	x29, x30, [sp, #-0x10]!
    854c:	mov	x29, sp
    8550:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    8554:	adrp	x8, 46 ; 0x36000
    8558:	ldr	d1, [x8, #0x5f8]
    855c:	fsub	d1, d0, d1
    8560:	fmov	d2, #1.00000000
    8564:	fcmp	d1, d2
    8568:	b.pl	0x8574
    856c:	ldp	x29, x30, [sp], #0x10
    8570:	ret
    8574:	str	d0, [x8, #0x5f8]
    8578:	adrp	x0, 41 ; 0x31000
    857c:	add	x0, x0, #0x5c8 ; "motion.shake"
    8580:	ldp	x29, x30, [sp], #0x10
    8584:	b	0x4324
    8588:	b	0x4324
    858c:	mov	x2, x0
    8590:	adrp	x8, 46 ; 0x36000
    8594:	ldr	x0, [x8, #0xf8]
    8598:	b	0x208a0
    859c:	b	0x171b4
    85a0:	sub	sp, sp, #0x30
    85a4:	stp	x20, x19, [sp, #0x10]
    85a8:	stp	x29, x30, [sp, #0x20]
    85ac:	add	x29, sp, #0x20
    85b0:	str	xzr, [sp, #0x8]
    85b4:	adrp	x8, 46 ; 0x36000
    85b8:	ldr	w0, [x8, #0x78]
    85bc:	cmn	w0, #0x1
    85c0:	b.eq	0x8610
    85c4:	add	x1, sp, #0x8
    85c8:	bl	0x1ffec ; symbol stub for: _notify_get_state
    85cc:	ldr	x8, [sp, #0x8]
    85d0:	cmp	w0, #0x0
    85d4:	ccmp	x8, #0x13, #0x2, eq
    85d8:	b.hi	0x8610
    85dc:	adrp	x9, 45 ; 0x35000
    85e0:	ldr	x0, [x9, #0xa38] ; Objc class ref: bad class ref
    85e4:	lsl	x8, x8, #4
    85e8:	adrp	x9, 36 ; 0x2c000
    85ec:	add	x9, x9, #0x1a0
    85f0:	ldr	x2, [x9, x8]
    85f4:	bl	0x22120
    85f8:	mov	x29, x29
    85fc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    8600:	mov	x19, x0
    8604:	bl	0x4324
    8608:	mov	x0, x19
    860c:	bl	0x200e8 ; symbol stub for: _objc_release
    8610:	ldp	x29, x30, [sp, #0x20]
    8614:	ldp	x20, x19, [sp, #0x10]
    8618:	add	sp, sp, #0x30
    861c:	ret
    8620:	stp	x22, x21, [sp, #-0x30]!
    8624:	stp	x20, x19, [sp, #0x10]
    8628:	stp	x29, x30, [sp, #0x20]
    862c:	add	x29, sp, #0x20
    8630:	mov	x19, x1
    8634:	mov	x21, x0
    8638:	mov	x0, x2
    863c:	bl	0x200f4 ; symbol stub for: _objc_retain
    8640:	mov	x20, x0
    8644:	adrp	x8, 46 ; 0x36000
    8648:	ldrb	w9, [x8, #0x600]
    864c:	cmp	w9, #0x1
    8650:	b.ne	0x8684
    8654:	strb	wzr, [x8, #0x600]
    8658:	adrp	x8, 46 ; 0x36000
    865c:	ldr	x9, [x8, #0x608]
    8660:	add	x9, x9, #0x1
    8664:	str	x9, [x8, #0x608]
    8668:	adrp	x8, 46 ; 0x36000
    866c:	ldrb	w8, [x8, #0x81]
    8670:	adrp	x9, 46 ; 0x36000
    8674:	strb	w8, [x9, #0x610]
    8678:	adrp	x0, 41 ; 0x31000
    867c:	add	x0, x0, #0xe28 ; "home.triple"
    8680:	bl	0x4324
    8684:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    8688:	adrp	x8, 46 ; 0x36000
    868c:	str	d0, [x8, #0x618]
    8690:	adrp	x8, 46 ; 0x36000
    8694:	strb	wzr, [x8, #0x620]
    8698:	adrp	x8, 46 ; 0x36000
    869c:	ldr	x8, [x8, #0x158]
    86a0:	mov	x0, x21
    86a4:	mov	x1, x19
    86a8:	mov	x2, x20
    86ac:	blr	x8
    86b0:	mov	x0, x20
    86b4:	ldp	x29, x30, [sp, #0x20]
    86b8:	ldp	x20, x19, [sp, #0x10]
    86bc:	ldp	x22, x21, [sp], #0x30
    86c0:	b	0x200e8 ; symbol stub for: _objc_release
    86c4:	stp	x22, x21, [sp, #-0x30]!
    86c8:	stp	x20, x19, [sp, #0x10]
    86cc:	stp	x29, x30, [sp, #0x20]
    86d0:	add	x29, sp, #0x20
    86d4:	mov	x19, x1
    86d8:	mov	x21, x0
    86dc:	mov	x0, x2
    86e0:	bl	0x200f4 ; symbol stub for: _objc_retain
    86e4:	mov	x20, x0
    86e8:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    86ec:	adrp	x8, 46 ; 0x36000
    86f0:	ldrb	w8, [x8, #0x620]
    86f4:	tbnz	w8, #0x0, 0x8734
    86f8:	adrp	x8, 46 ; 0x36000
    86fc:	ldr	d1, [x8, #0x618]
    8700:	fsub	d0, d0, d1
    8704:	adrp	x8, 26 ; 0x22000
    8708:	ldr	d1, [x8, #0x960]
    870c:	fcmp	d0, d1
    8710:	b.lt	0x8734
    8714:	adrp	x0, 41 ; 0x31000
    8718:	add	x0, x0, #0xe48 ; "home.shorthold"
    871c:	bl	0x4324
    8720:	cbz	w0, 0x8734
    8724:	adrp	x8, 46 ; 0x36000
    8728:	ldrb	w8, [x8, #0x81]
    872c:	adrp	x9, 46 ; 0x36000
    8730:	strb	w8, [x9, #0x610]
    8734:	adrp	x8, 46 ; 0x36000
    8738:	ldr	x8, [x8, #0x160]
    873c:	mov	x0, x21
    8740:	mov	x1, x19
    8744:	mov	x2, x20
    8748:	blr	x8
    874c:	mov	x0, x20
    8750:	ldp	x29, x30, [sp, #0x20]
    8754:	ldp	x20, x19, [sp, #0x10]
    8758:	ldp	x22, x21, [sp], #0x30
    875c:	b	0x200e8 ; symbol stub for: _objc_release
    8760:	stp	x20, x19, [sp, #-0x20]!
    8764:	stp	x29, x30, [sp, #0x10]
    8768:	add	x29, sp, #0x10
    876c:	adrp	x8, 46 ; 0x36000
    8770:	ldrb	w9, [x8, #0x610]
    8774:	cmp	w9, #0x1
    8778:	b.ne	0x878c
    877c:	strb	wzr, [x8, #0x610]
    8780:	ldp	x29, x30, [sp, #0x10]
    8784:	ldp	x20, x19, [sp], #0x20
    8788:	ret
    878c:	mov	x19, x1
    8790:	mov	x20, x0
    8794:	adrp	x8, 46 ; 0x36000
    8798:	ldrb	w8, [x8, #0x81]
    879c:	tbz	w8, #0x0, 0x87cc
    87a0:	adrp	x0, 41 ; 0x31000
    87a4:	add	x0, x0, #0xe68 ; "home.single"
    87a8:	bl	0x4324
    87ac:	tbnz	w0, #0x0, 0x8780
    87b0:	adrp	x8, 46 ; 0x36000
    87b4:	ldr	x2, [x8, #0x168]
    87b8:	mov	x0, x20
    87bc:	mov	x1, x19
    87c0:	ldp	x29, x30, [sp, #0x10]
    87c4:	ldp	x20, x19, [sp], #0x20
    87c8:	br	x2
    87cc:	adrp	x8, 46 ; 0x36000
    87d0:	ldr	x8, [x8, #0x168]
    87d4:	mov	x0, x20
    87d8:	mov	x1, x19
    87dc:	blr	x8
    87e0:	adrp	x0, 41 ; 0x31000
    87e4:	add	x0, x0, #0xe68 ; "home.single"
    87e8:	ldp	x29, x30, [sp, #0x10]
    87ec:	ldp	x20, x19, [sp], #0x20
    87f0:	b	0x4324
    87f4:	sub	sp, sp, #0xc0
    87f8:	stp	x22, x21, [sp, #0x90]
    87fc:	stp	x20, x19, [sp, #0xa0]
    8800:	stp	x29, x30, [sp, #0xb0]
    8804:	add	x29, sp, #0xb0
    8808:	mov	x19, x1
    880c:	mov	x20, x0
    8810:	adrp	x8, 46 ; 0x36000
    8814:	ldrb	w8, [x8, #0x81]
    8818:	tbz	w8, #0x0, 0x8904
    881c:	adrp	x0, 41 ; 0x31000
    8820:	add	x0, x0, #0xe28 ; "home.triple"
    8824:	bl	0xbd74
    8828:	mov	x29, x29
    882c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    8830:	mov	x21, x0
    8834:	bl	0x200e8 ; symbol stub for: _objc_release
    8838:	cbz	x21, 0x89a8
    883c:	adrp	x8, 46 ; 0x36000
    8840:	mov	w9, #0x1
    8844:	strb	w9, [x8, #0x600]
    8848:	adrp	x8, 46 ; 0x36000
    884c:	ldr	x9, [x8, #0x608]
    8850:	add	x21, x9, #0x1
    8854:	str	x21, [x8, #0x608]
    8858:	adrp	x22, 42 ; 0x32000
    885c:	ldr	x22, [x22, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    8860:	str	x22, [sp, #0x38]
    8864:	adrp	x8, 26 ; 0x22000
    8868:	ldr	d0, [x8, #0x938]
    886c:	str	d0, [sp, #0x40]
    8870:	adrp	x8, 21 ; 0x1d000
    8874:	add	x8, x8, #0xbac
    8878:	adrp	x9, 38 ; 0x2e000
    887c:	add	x9, x9, #0x9e8
    8880:	stp	x8, x9, [sp, #0x48]
    8884:	stp	x20, x19, [sp, #0x58]
    8888:	add	x0, sp, #0x38
    888c:	bl	0x20124 ; symbol stub for: _objc_retainBlock
    8890:	mov	x19, x0
    8894:	mov	x0, #0x0
    8898:	mov	w1, #0x9380
    889c:	movk	w1, #0x14dc, lsl #16
    88a0:	bl	0x1ff38 ; symbol stub for: _dispatch_time
    88a4:	mov	x20, x0
    88a8:	str	x22, [sp, #0x8]
    88ac:	adrp	x8, 26 ; 0x22000
    88b0:	ldr	d0, [x8, #0x8f8]
    88b4:	str	d0, [sp, #0x10]
    88b8:	adrp	x8, 21 ; 0x1d000
    88bc:	add	x8, x8, #0xbc0
    88c0:	adrp	x9, 38 ; 0x2e000
    88c4:	add	x9, x9, #0xa08
    88c8:	stp	x8, x9, [sp, #0x18]
    88cc:	stp	x19, x21, [sp, #0x28]
    88d0:	mov	x0, x19
    88d4:	bl	0x200f4 ; symbol stub for: _objc_retain
    88d8:	mov	x19, x0
    88dc:	adrp	x1, 42 ; 0x32000
    88e0:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
    88e4:	add	x2, sp, #0x8
    88e8:	mov	x0, x20
    88ec:	bl	0x1fefc ; symbol stub for: _dispatch_after
    88f0:	ldr	x0, [sp, #0x28]
    88f4:	bl	0x200e8 ; symbol stub for: _objc_release
    88f8:	mov	x0, x19
    88fc:	bl	0x200e8 ; symbol stub for: _objc_release
    8900:	b	0x89b8
    8904:	adrp	x8, 46 ; 0x36000
    8908:	ldr	x8, [x8, #0x170]
    890c:	mov	x0, x20
    8910:	mov	x1, x19
    8914:	blr	x8
    8918:	adrp	x0, 41 ; 0x31000
    891c:	add	x0, x0, #0xe28 ; "home.triple"
    8920:	bl	0xbd74
    8924:	mov	x29, x29
    8928:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    892c:	mov	x19, x0
    8930:	bl	0x200e8 ; symbol stub for: _objc_release
    8934:	cbz	x19, 0x89cc
    8938:	adrp	x8, 46 ; 0x36000
    893c:	mov	w9, #0x1
    8940:	strb	w9, [x8, #0x600]
    8944:	adrp	x8, 46 ; 0x36000
    8948:	ldr	x9, [x8, #0x608]
    894c:	add	x19, x9, #0x1
    8950:	str	x19, [x8, #0x608]
    8954:	mov	x0, #0x0
    8958:	mov	w1, #0x9380
    895c:	movk	w1, #0x14dc, lsl #16
    8960:	bl	0x1ff38 ; symbol stub for: _dispatch_time
    8964:	adrp	x8, 42 ; 0x32000
    8968:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    896c:	stur	x8, [x29, #-0x48]
    8970:	adrp	x8, 26 ; 0x22000
    8974:	ldr	d0, [x8, #0x938]
    8978:	adrp	x8, 21 ; 0x1d000
    897c:	add	x8, x8, #0xb74
    8980:	stur	d0, [x29, #-0x40]
    8984:	adrp	x9, 36 ; 0x2c000
    8988:	add	x9, x9, #0x4c0
    898c:	stp	x8, x9, [x29, #-0x38]
    8990:	stur	x19, [x29, #-0x28]
    8994:	adrp	x1, 42 ; 0x32000
    8998:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
    899c:	sub	x2, x29, #0x48
    89a0:	bl	0x1fefc ; symbol stub for: _dispatch_after
    89a4:	b	0x89b8
    89a8:	adrp	x0, 41 ; 0x31000
    89ac:	add	x0, x0, #0xe88 ; "home.double"
    89b0:	bl	0x4324
    89b4:	tbz	w0, #0x0, 0x89e8

; ===== sub_89b8 =====
    89b8:	ldp	x29, x30, [sp, #0xb0]
    89bc:	ldp	x20, x19, [sp, #0xa0]
    89c0:	ldp	x22, x21, [sp, #0x90]
    89c4:	add	sp, sp, #0xc0
    89c8:	ret
    89cc:	adrp	x0, 41 ; 0x31000
    89d0:	add	x0, x0, #0xe88 ; "home.double"
    89d4:	ldp	x29, x30, [sp, #0xb0]
    89d8:	ldp	x20, x19, [sp, #0xa0]
    89dc:	ldp	x22, x21, [sp, #0x90]
    89e0:	add	sp, sp, #0xc0
    89e4:	b	0x4324
    89e8:	adrp	x8, 46 ; 0x36000
    89ec:	ldr	x2, [x8, #0x170]
    89f0:	mov	x0, x20
    89f4:	mov	x1, x19
    89f8:	ldp	x29, x30, [sp, #0xb0]
    89fc:	ldp	x20, x19, [sp, #0xa0]
    8a00:	ldp	x22, x21, [sp, #0x90]
    8a04:	add	sp, sp, #0xc0
    8a08:	br	x2
    8a0c:	stp	x20, x19, [sp, #-0x20]!
    8a10:	stp	x29, x30, [sp, #0x10]
    8a14:	add	x29, sp, #0x10
    8a18:	mov	x19, x1
    8a1c:	mov	x20, x0
    8a20:	adrp	x8, 46 ; 0x36000
    8a24:	mov	w9, #0x1
    8a28:	strb	w9, [x8, #0x620]
    8a2c:	adrp	x8, 46 ; 0x36000
    8a30:	ldrb	w8, [x8, #0x81]
    8a34:	tbz	w8, #0x0, 0x8a54
    8a38:	adrp	x0, 41 ; 0x31000
    8a3c:	add	x0, x0, #0xea8 ; "home.longhold"
    8a40:	bl	0x4324
    8a44:	tbz	w0, #0x0, 0x8a7c
    8a48:	ldp	x29, x30, [sp, #0x10]
    8a4c:	ldp	x20, x19, [sp], #0x20
    8a50:	ret
    8a54:	adrp	x8, 46 ; 0x36000
    8a58:	ldr	x8, [x8, #0x178]
    8a5c:	mov	x0, x20
    8a60:	mov	x1, x19
    8a64:	blr	x8
    8a68:	adrp	x0, 41 ; 0x31000
    8a6c:	add	x0, x0, #0xea8 ; "home.longhold"
    8a70:	ldp	x29, x30, [sp, #0x10]
    8a74:	ldp	x20, x19, [sp], #0x20
    8a78:	b	0x4324
    8a7c:	adrp	x8, 46 ; 0x36000
    8a80:	ldr	x2, [x8, #0x178]
    8a84:	mov	x0, x20
    8a88:	mov	x1, x19
    8a8c:	ldp	x29, x30, [sp, #0x10]
    8a90:	ldp	x20, x19, [sp], #0x20
    8a94:	br	x2
    8a98:	stp	x20, x19, [sp, #-0x20]!
    8a9c:	stp	x29, x30, [sp, #0x10]
    8aa0:	add	x29, sp, #0x10
    8aa4:	mov	x19, x1
    8aa8:	mov	x20, x0
    8aac:	adrp	x8, 46 ; 0x36000
    8ab0:	ldrb	w8, [x8, #0x81]
    8ab4:	tbz	w8, #0x0, 0x8ad4
    8ab8:	adrp	x0, 41 ; 0x31000
    8abc:	add	x0, x0, #0xec8 ; "touchid.doubletap"
    8ac0:	bl	0x4324
    8ac4:	tbz	w0, #0x0, 0x8afc
    8ac8:	ldp	x29, x30, [sp, #0x10]
    8acc:	ldp	x20, x19, [sp], #0x20
    8ad0:	ret
    8ad4:	adrp	x8, 46 ; 0x36000
    8ad8:	ldr	x8, [x8, #0x180]
    8adc:	mov	x0, x20
    8ae0:	mov	x1, x19
    8ae4:	blr	x8
    8ae8:	adrp	x0, 41 ; 0x31000
    8aec:	add	x0, x0, #0xec8 ; "touchid.doubletap"
    8af0:	ldp	x29, x30, [sp, #0x10]
    8af4:	ldp	x20, x19, [sp], #0x20
    8af8:	b	0x4324
    8afc:	adrp	x8, 46 ; 0x36000
    8b00:	ldr	x2, [x8, #0x180]
    8b04:	mov	x0, x20
    8b08:	mov	x1, x19
    8b0c:	ldp	x29, x30, [sp, #0x10]
    8b10:	ldp	x20, x19, [sp], #0x20
    8b14:	br	x2
    8b18:	stp	x22, x21, [sp, #-0x30]!
    8b1c:	stp	x20, x19, [sp, #0x10]
    8b20:	stp	x29, x30, [sp, #0x20]
    8b24:	add	x29, sp, #0x20
    8b28:	mov	x19, x1
    8b2c:	mov	x21, x0
    8b30:	mov	x0, x2
    8b34:	bl	0x200f4 ; symbol stub for: _objc_retain
    8b38:	mov	x20, x0
    8b3c:	bl	0x21fc0
    8b40:	cmp	x0, #0x1
    8b44:	b.ne	0x8b58
    8b48:	mov	w0, #0x0
    8b4c:	bl	0x1dc28
    8b50:	tbnz	w0, #0x0, 0x8b84
    8b54:	b	0x8b9c
    8b58:	mov	x0, x20
    8b5c:	bl	0x21fc0
    8b60:	cmp	x0, #0x3
    8b64:	b.eq	0x8b78
    8b68:	mov	x0, x20
    8b6c:	bl	0x21fc0
    8b70:	cmp	x0, #0x4
    8b74:	b.ne	0x8b84
    8b78:	mov	w0, #0x0
    8b7c:	bl	0x1dfac
    8b80:	cbz	w0, 0x8b9c
    8b84:	adrp	x8, 46 ; 0x36000
    8b88:	ldr	x8, [x8, #0x188]
    8b8c:	mov	x0, x21
    8b90:	mov	x1, x19
    8b94:	mov	x2, x20
    8b98:	blr	x8

; ===== sub_8b9c =====
    8b9c:	mov	x0, x20
    8ba0:	ldp	x29, x30, [sp, #0x20]
    8ba4:	ldp	x20, x19, [sp, #0x10]
    8ba8:	ldp	x22, x21, [sp], #0x30
    8bac:	b	0x200e8 ; symbol stub for: _objc_release
    8bb0:	stp	x22, x21, [sp, #-0x30]!
    8bb4:	stp	x20, x19, [sp, #0x10]
    8bb8:	stp	x29, x30, [sp, #0x20]
    8bbc:	add	x29, sp, #0x20
    8bc0:	mov	x19, x1
    8bc4:	mov	x21, x0
    8bc8:	mov	x0, x2
    8bcc:	bl	0x200f4 ; symbol stub for: _objc_retain
    8bd0:	mov	x20, x0
    8bd4:	bl	0x21fc0
    8bd8:	cmp	x0, #0x1
    8bdc:	b.ne	0x8bec
    8be0:	bl	0x1dc28
    8be4:	tbnz	w0, #0x0, 0x8c18
    8be8:	b	0x8c30
    8bec:	mov	x0, x20
    8bf0:	bl	0x21fc0
    8bf4:	cmp	x0, #0x3
    8bf8:	b.eq	0x8c0c
    8bfc:	mov	x0, x20
    8c00:	bl	0x21fc0
    8c04:	cmp	x0, #0x4
    8c08:	b.ne	0x8c18
    8c0c:	mov	w0, #0x1
    8c10:	bl	0x1dfac
    8c14:	cbz	w0, 0x8c30
    8c18:	adrp	x8, 46 ; 0x36000
    8c1c:	ldr	x8, [x8, #0x190]
    8c20:	mov	x0, x21
    8c24:	mov	x1, x19
    8c28:	mov	x2, x20
    8c2c:	blr	x8

; ===== sub_8c30 =====
    8c30:	mov	x0, x20
    8c34:	ldp	x29, x30, [sp, #0x20]
    8c38:	ldp	x20, x19, [sp, #0x10]
    8c3c:	ldp	x22, x21, [sp], #0x30
    8c40:	b	0x200e8 ; symbol stub for: _objc_release
    8c44:	stp	x20, x19, [sp, #-0x20]!
    8c48:	stp	x29, x30, [sp, #0x10]
    8c4c:	add	x29, sp, #0x10
    8c50:	mov	x19, x1
    8c54:	mov	x20, x0
    8c58:	adrp	x0, 46 ; 0x36000
    8c5c:	add	x0, x0, #0x388
    8c60:	mov	x1, x20
    8c64:	bl	0x20154 ; symbol stub for: _objc_storeWeak
    8c68:	adrp	x8, 46 ; 0x36000
    8c6c:	ldrb	w9, [x8, #0x691]
    8c70:	cmp	w9, #0x1
    8c74:	b.ne	0x8c94
    8c78:	strb	wzr, [x8, #0x691]
    8c7c:	adrp	x8, 46 ; 0x36000
    8c80:	ldr	x9, [x8, #0x698]
    8c84:	add	x9, x9, #0x1
    8c88:	str	x9, [x8, #0x698]
    8c8c:	fmov	s0, #1.00000000
    8c90:	bl	0x13178
    8c94:	bl	0x12de0
    8c98:	adrp	x8, 46 ; 0x36000
    8c9c:	strb	w0, [x8, #0xb8]
    8ca0:	adrp	x8, 46 ; 0x36000
    8ca4:	ldr	x2, [x8, #0x198]
    8ca8:	mov	x0, x20
    8cac:	mov	x1, x19
    8cb0:	ldp	x29, x30, [sp, #0x10]
    8cb4:	ldp	x20, x19, [sp], #0x20
    8cb8:	br	x2
    8cbc:	stp	d9, d8, [sp, #-0x40]!
    8cc0:	stp	x22, x21, [sp, #0x10]
    8cc4:	stp	x20, x19, [sp, #0x20]
    8cc8:	stp	x29, x30, [sp, #0x30]
    8ccc:	add	x29, sp, #0x30
    8cd0:	mov	x19, x1
    8cd4:	mov	x21, x0
    8cd8:	mov	x0, x2
    8cdc:	bl	0x200f4 ; symbol stub for: _objc_retain
    8ce0:	mov	x20, x0
    8ce4:	adrp	x8, 45 ; 0x35000
    8ce8:	ldr	x1, [x8, #0x7b0]
    8cec:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    8cf0:	tbz	w0, #0x0, 0x8d5c
    8cf4:	mov	x0, x20
    8cf8:	bl	0x21fc0
    8cfc:	cmp	x0, #0x1
    8d00:	b.ne	0x8d5c
    8d04:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    8d08:	mov.16b	v8, v0
    8d0c:	adrp	x22, 46 ; 0x36000
    8d10:	ldr	d0, [x22, #0xc0]
    8d14:	fsub	d0, d8, d0
    8d18:	adrp	x8, 26 ; 0x22000
    8d1c:	ldr	d1, [x8, #0x968]
    8d20:	adrp	x8, 46 ; 0x36000
    8d24:	fcmp	d0, d1
    8d28:	b.pl	0x8d3c
    8d2c:	ldr	x9, [x8, #0x6a0]
    8d30:	add	x9, x9, #0x1
    8d34:	str	x9, [x8, #0x6a0]
    8d38:	b	0x8d58
    8d3c:	mov	w9, #0x1
    8d40:	str	x9, [x8, #0x6a0]
    8d44:	bl	0x12de0
    8d48:	adrp	x8, 46 ; 0x36000
    8d4c:	strb	w0, [x8, #0xc8]
    8d50:	adrp	x8, 46 ; 0x36000
    8d54:	strb	wzr, [x8, #0x6a8]

; ===== sub_8d58 =====
    8d58:	str	d8, [x22, #0xc0]
    8d5c:	adrp	x8, 46 ; 0x36000
    8d60:	ldr	x8, [x8, #0x1a0]
    8d64:	mov	x0, x21
    8d68:	mov	x1, x19
    8d6c:	mov	x2, x20
    8d70:	blr	x8
    8d74:	mov	x0, x20
    8d78:	ldp	x29, x30, [sp, #0x30]
    8d7c:	ldp	x20, x19, [sp, #0x20]
    8d80:	ldp	x22, x21, [sp, #0x10]
    8d84:	ldp	d9, d8, [sp], #0x40
    8d88:	b	0x200e8 ; symbol stub for: _objc_release
    8d8c:	sub	sp, sp, #0x120
    8d90:	stp	d9, d8, [sp, #0xb0]
    8d94:	stp	x28, x27, [sp, #0xc0]
    8d98:	stp	x26, x25, [sp, #0xd0]
    8d9c:	stp	x24, x23, [sp, #0xe0]
    8da0:	stp	x22, x21, [sp, #0xf0]
    8da4:	stp	x20, x19, [sp, #0x100]
    8da8:	stp	x29, x30, [sp, #0x110]
    8dac:	add	x29, sp, #0x110
    8db0:	mov	x20, x1
    8db4:	mov	x21, x0
    8db8:	mov	x0, x2
    8dbc:	bl	0x200f4 ; symbol stub for: _objc_retain
    8dc0:	mov	x19, x0
    8dc4:	adrp	x8, 46 ; 0x36000
    8dc8:	ldrb	w9, [x8, #0x6a9]
    8dcc:	cmp	w9, #0x1
    8dd0:	b.ne	0x8df4
    8dd4:	strb	wzr, [x8, #0x6a9]
    8dd8:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    8ddc:	adrp	x8, 46 ; 0x36000
    8de0:	ldr	d1, [x8, #0x688]
    8de4:	fsub	d0, d0, d1
    8de8:	fmov	d1, #5.00000000
    8dec:	fcmp	d0, d1
    8df0:	b.mi	0x8ec8
    8df4:	adrp	x8, 46 ; 0x36000
    8df8:	ldr	x8, [x8, #0x5d8]
    8dfc:	cmn	x8, #0x1
    8e00:	b.ne	0x9198

; ===== sub_8e04 =====
    8e04:	adrp	x8, 46 ; 0x36000
    8e08:	ldrb	w8, [x8, #0x5d0]
    8e0c:	tbz	w8, #0x0, 0x8e54
    8e10:	adrp	x8, 46 ; 0x36000
    8e14:	ldrb	w22, [x8, #0xb8]
    8e18:	bl	0x1e514
    8e1c:	cbz	w0, 0x8e38
    8e20:	mov	w8, #0x1
    8e24:	bic	w25, w8, w22
    8e28:	adrp	x8, 46 ; 0x36000
    8e2c:	ldrb	w8, [x8, #0x81]
    8e30:	cbz	w25, 0x8ef4
    8e34:	cbz	w8, 0x8ef4
    8e38:	adrp	x8, 46 ; 0x36000
    8e3c:	ldr	x8, [x8, #0x1a8]
    8e40:	mov	x0, x21
    8e44:	mov	x1, x20
    8e48:	mov	x2, x19
    8e4c:	blr	x8
    8e50:	b	0x8ec8
    8e54:	adrp	x8, 42 ; 0x32000
    8e58:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    8e5c:	str	x8, [sp, #0x70]
    8e60:	adrp	x8, 26 ; 0x22000
    8e64:	ldr	d0, [x8, #0x8f8]
    8e68:	str	d0, [sp, #0x78]
    8e6c:	adrp	x8, 22 ; 0x1e000
    8e70:	add	x8, x8, #0x2ec
    8e74:	adrp	x9, 38 ; 0x2e000
    8e78:	add	x9, x9, #0xa88
    8e7c:	stp	x8, x9, [sp, #0x80]
    8e80:	stp	x21, x20, [sp, #0x98]
    8e84:	mov	x0, x19
    8e88:	bl	0x200f4 ; symbol stub for: _objc_retain
    8e8c:	str	x0, [sp, #0x90]
    8e90:	add	x0, sp, #0x70
    8e94:	bl	0x20124 ; symbol stub for: _objc_retainBlock
    8e98:	mov	x20, x0
    8e9c:	mov	w0, #0x1
    8ea0:	mov	x1, x20
    8ea4:	bl	0x1e304
    8ea8:	tbnz	w0, #0x0, 0x8eb8
    8eac:	ldr	x8, [x20, #0x10]
    8eb0:	mov	x0, x20
    8eb4:	blr	x8
    8eb8:	mov	x0, x20
    8ebc:	bl	0x200e8 ; symbol stub for: _objc_release
    8ec0:	ldr	x0, [sp, #0x90]

; ===== sub_8ec4 =====
    8ec4:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_8ec8 =====
    8ec8:	mov	x0, x19
    8ecc:	bl	0x200e8 ; symbol stub for: _objc_release
    8ed0:	ldp	x29, x30, [sp, #0x110]
    8ed4:	ldp	x20, x19, [sp, #0x100]
    8ed8:	ldp	x22, x21, [sp, #0xf0]
    8edc:	ldp	x24, x23, [sp, #0xe0]
    8ee0:	ldp	x26, x25, [sp, #0xd0]
    8ee4:	ldp	x28, x27, [sp, #0xc0]
    8ee8:	ldp	d9, d8, [sp, #0xb0]
    8eec:	add	sp, sp, #0x120
    8ef0:	ret
    8ef4:	cbz	w8, 0x8f1c
    8ef8:	adrp	x0, 41 ; 0x31000
    8efc:	add	x0, x0, #0xfe8 ; "lock.single"
    8f00:	bl	0xbd74
    8f04:	mov	x29, x29
    8f08:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    8f0c:	mov	x22, x0
    8f10:	cbz	x0, 0x8f24
    8f14:	mov	w26, #0x1
    8f18:	b	0x8f70
    8f1c:	mov	w26, #0x0
    8f20:	b	0x8f78
    8f24:	adrp	x0, 42 ; 0x32000
    8f28:	add	x0, x0, #0x8 ; "lock.double"
    8f2c:	bl	0xbd74
    8f30:	mov	x29, x29
    8f34:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    8f38:	mov	x23, x0
    8f3c:	cbz	x0, 0x8f48
    8f40:	mov	w26, #0x1
    8f44:	b	0x8f68
    8f48:	adrp	x0, 42 ; 0x32000
    8f4c:	add	x0, x0, #0x28 ; "lock.triple"
    8f50:	bl	0xbd74
    8f54:	mov	x29, x29
    8f58:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    8f5c:	cmp	x0, #0x0
    8f60:	cset	w26, ne
    8f64:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_8f68 =====
    8f68:	mov	x0, x23
    8f6c:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_8f70 =====
    8f70:	mov	x0, x22
    8f74:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_8f78 =====
    8f78:	adrp	x0, 42 ; 0x32000
    8f7c:	add	x0, x0, #0x8 ; "lock.double"
    8f80:	bl	0xbd74
    8f84:	mov	x29, x29
    8f88:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    8f8c:	cbz	x0, 0x90d8
    8f90:	bl	0x200e8 ; symbol stub for: _objc_release
    8f94:	tbnz	w26, #0x0, 0x8fb0
    8f98:	adrp	x8, 46 ; 0x36000
    8f9c:	ldr	x8, [x8, #0x1a8]
    8fa0:	mov	x0, x21
    8fa4:	mov	x1, x20
    8fa8:	mov	x2, x19
    8fac:	blr	x8
    8fb0:	adrp	x27, 42 ; 0x32000
    8fb4:	ldr	x27, [x27, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    8fb8:	str	x27, [sp, #0x38]
    8fbc:	adrp	x8, 26 ; 0x22000
    8fc0:	ldr	d8, [x8, #0x8f8]
    8fc4:	str	d8, [sp, #0x40]
    8fc8:	adrp	x8, 22 ; 0x1e000
    8fcc:	add	x8, x8, #0x574
    8fd0:	adrp	x9, 38 ; 0x2e000
    8fd4:	add	x9, x9, #0xa88
    8fd8:	stp	x8, x9, [sp, #0x48]
    8fdc:	stp	x21, x20, [sp, #0x60]
    8fe0:	mov	x0, x19
    8fe4:	bl	0x200f4 ; symbol stub for: _objc_retain
    8fe8:	str	x0, [sp, #0x58]
    8fec:	add	x0, sp, #0x38
    8ff0:	bl	0x20124 ; symbol stub for: _objc_retainBlock
    8ff4:	mov	x20, x0
    8ff8:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    8ffc:	adrp	x9, 46 ; 0x36000
    9000:	ldr	d1, [x9, #0x6b0]
    9004:	fsub	d1, d0, d1
    9008:	adrp	x10, 45 ; 0x36000
    900c:	ldr	x8, [x10, #0x6b8]
    9010:	adrp	x11, 25 ; 0x22000
    9014:	ldr	d2, [x11, #0x968]
    9018:	fcmp	d1, d2
    901c:	mov	w11, #0x1
    9020:	csinc	x8, x11, x8, pl
    9024:	str	x8, [x10, #0x6b8]
    9028:	str	d0, [x9, #0x6b0]
    902c:	adrp	x9, 45 ; 0x36000
    9030:	ldr	x10, [x9, #0x698]
    9034:	add	x28, x10, #0x1
    9038:	str	x28, [x9, #0x698]
    903c:	cbz	w26, 0x9124
    9040:	cmp	x8, #0x3
    9044:	b.ne	0x9124
    9048:	adrp	x0, 41 ; 0x32000
    904c:	add	x0, x0, #0x28 ; "lock.triple"
    9050:	bl	0xbd74
    9054:	mov	x29, x29
    9058:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    905c:	mov	x21, x0
    9060:	bl	0x20ce0
    9064:	mov	x29, x29
    9068:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    906c:	mov	x22, x0
    9070:	adrp	x2, 38 ; 0x2f000
    9074:	add	x2, x2, #0xce8 ; "system.sleep"
    9078:	bl	0x21000
    907c:	tbz	w0, #0x0, 0x9114
    9080:	bl	0x12e5c
    9084:	mov	x29, x29
    9088:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    908c:	mov	x23, x0
    9090:	adrp	x8, 43 ; 0x34000
    9094:	ldr	x1, [x8, #0xd60]
    9098:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    909c:	tbz	w0, #0x0, 0x910c
    90a0:	fmov	s0, wzr
    90a4:	bl	0x13178
    90a8:	mov	x24, x0
    90ac:	mov	x0, x23
    90b0:	bl	0x200e8 ; symbol stub for: _objc_release
    90b4:	mov	x0, x22
    90b8:	bl	0x200e8 ; symbol stub for: _objc_release
    90bc:	mov	x0, x21
    90c0:	bl	0x200e8 ; symbol stub for: _objc_release
    90c4:	cbz	w24, 0x9124
    90c8:	adrp	x8, 45 ; 0x36000
    90cc:	mov	w9, #0x1
    90d0:	strb	w9, [x8, #0x691]
    90d4:	b	0x9124
    90d8:	adrp	x0, 41 ; 0x32000
    90dc:	add	x0, x0, #0x28 ; "lock.triple"
    90e0:	bl	0xbd74
    90e4:	mov	x29, x29
    90e8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    90ec:	mov	x22, x0
    90f0:	bl	0x200e8 ; symbol stub for: _objc_release
    90f4:	cbz	w26, 0x8f94
    90f8:	cbnz	x22, 0x8f94
    90fc:	adrp	x0, 40 ; 0x31000
    9100:	add	x0, x0, #0xfe8 ; "lock.single"
    9104:	bl	0x4324
    9108:	b	0x8ec8
    910c:	mov	x0, x23
    9110:	bl	0x200e8 ; symbol stub for: _objc_release
    9114:	mov	x0, x22
    9118:	bl	0x200e8 ; symbol stub for: _objc_release
    911c:	mov	x0, x21
    9120:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_9124 =====
    9124:	mov	x0, #0x0
    9128:	mov	w1, #0x8400
    912c:	movk	w1, #0x17d7, lsl #16
    9130:	bl	0x1ff38 ; symbol stub for: _dispatch_time
    9134:	mov	x21, x0
    9138:	str	x27, [sp]
    913c:	str	d8, [sp, #0x8]
    9140:	adrp	x8, 21 ; 0x1e000
    9144:	add	x8, x8, #0x58c
    9148:	adrp	x9, 37 ; 0x2e000
    914c:	add	x9, x9, #0xab8
    9150:	stp	x8, x9, [sp, #0x10]
    9154:	strb	w25, [sp, #0x30]
    9158:	strb	w26, [sp, #0x31]
    915c:	stp	x20, x28, [sp, #0x20]
    9160:	mov	x0, x20
    9164:	bl	0x200f4 ; symbol stub for: _objc_retain
    9168:	mov	x20, x0
    916c:	adrp	x1, 41 ; 0x32000
    9170:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
    9174:	mov	x2, sp
    9178:	mov	x0, x21
    917c:	bl	0x1fefc ; symbol stub for: _dispatch_after
    9180:	ldr	x0, [sp, #0x20]
    9184:	bl	0x200e8 ; symbol stub for: _objc_release
    9188:	mov	x0, x20
    918c:	bl	0x200e8 ; symbol stub for: _objc_release
    9190:	ldr	x0, [sp, #0x58]
    9194:	b	0x8ec4
    9198:	bl	0x1fc8c
    919c:	b	0x8e04
    91a0:	sub	sp, sp, #0x60
    91a4:	stp	x20, x19, [sp, #0x40]
    91a8:	stp	x29, x30, [sp, #0x50]
    91ac:	add	x29, sp, #0x50
    91b0:	mov	x19, x1
    91b4:	mov	x20, x0
    91b8:	mov	x0, x2
    91bc:	bl	0x200f4 ; symbol stub for: _objc_retain
    91c0:	adrp	x8, 41 ; 0x32000
    91c4:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    91c8:	str	x8, [sp, #0x8]
    91cc:	adrp	x8, 25 ; 0x22000
    91d0:	ldr	d0, [x8, #0x8f8]
    91d4:	adrp	x8, 21 ; 0x1e000
    91d8:	add	x8, x8, #0x9f4
    91dc:	adrp	x9, 37 ; 0x2e000
    91e0:	add	x9, x9, #0xa88
    91e4:	str	d0, [sp, #0x10]
    91e8:	stp	x8, x9, [sp, #0x18]
    91ec:	stp	x20, x19, [sp, #0x30]
    91f0:	str	x0, [sp, #0x28]
    91f4:	bl	0x200f4 ; symbol stub for: _objc_retain
    91f8:	mov	x19, x0
    91fc:	add	x0, sp, #0x8
    9200:	bl	0x20124 ; symbol stub for: _objc_retainBlock
    9204:	mov	x20, x0
    9208:	adrp	x8, 45 ; 0x36000
    920c:	ldr	x8, [x8, #0x5d8]
    9210:	cmn	x8, #0x1
    9214:	b.ne	0x9268

; ===== sub_9218 =====
    9218:	adrp	x8, 45 ; 0x36000
    921c:	ldrb	w8, [x8, #0x5d0]
    9220:	tbnz	w8, #0x0, 0x9234
    9224:	mov	w0, #0x2
    9228:	mov	x1, x20
    922c:	bl	0x1e304
    9230:	tbnz	w0, #0x0, 0x9240
    9234:	ldr	x8, [x20, #0x10]
    9238:	mov	x0, x20
    923c:	blr	x8
    9240:	mov	x0, x20
    9244:	bl	0x200e8 ; symbol stub for: _objc_release
    9248:	ldr	x0, [sp, #0x28]
    924c:	bl	0x200e8 ; symbol stub for: _objc_release
    9250:	mov	x0, x19
    9254:	bl	0x200e8 ; symbol stub for: _objc_release
    9258:	ldp	x29, x30, [sp, #0x50]
    925c:	ldp	x20, x19, [sp, #0x40]
    9260:	add	sp, sp, #0x60
    9264:	ret
    9268:	bl	0x1fc90
    926c:	b	0x9218
    9270:	sub	sp, sp, #0x60
    9274:	stp	x20, x19, [sp, #0x40]
    9278:	stp	x29, x30, [sp, #0x50]
    927c:	add	x29, sp, #0x50
    9280:	mov	x19, x1
    9284:	mov	x20, x0
    9288:	mov	x0, x2
    928c:	bl	0x200f4 ; symbol stub for: _objc_retain
    9290:	adrp	x8, 41 ; 0x32000
    9294:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    9298:	str	x8, [sp, #0x8]
    929c:	adrp	x8, 25 ; 0x22000
    92a0:	ldr	d0, [x8, #0x8f8]
    92a4:	adrp	x8, 21 ; 0x1e000
    92a8:	add	x8, x8, #0xa0c
    92ac:	adrp	x9, 37 ; 0x2e000
    92b0:	add	x9, x9, #0xa88
    92b4:	str	d0, [sp, #0x10]
    92b8:	stp	x8, x9, [sp, #0x18]
    92bc:	stp	x20, x19, [sp, #0x30]
    92c0:	str	x0, [sp, #0x28]
    92c4:	bl	0x200f4 ; symbol stub for: _objc_retain
    92c8:	mov	x19, x0
    92cc:	add	x0, sp, #0x8
    92d0:	bl	0x20124 ; symbol stub for: _objc_retainBlock
    92d4:	mov	x20, x0
    92d8:	adrp	x8, 45 ; 0x36000
    92dc:	ldr	x8, [x8, #0x5d8]
    92e0:	cmn	x8, #0x1
    92e4:	b.ne	0x9338

; ===== sub_92e8 =====
    92e8:	adrp	x8, 45 ; 0x36000
    92ec:	ldrb	w8, [x8, #0x5d0]
    92f0:	tbnz	w8, #0x0, 0x9304
    92f4:	mov	w0, #0x3
    92f8:	mov	x1, x20
    92fc:	bl	0x1e304
    9300:	tbnz	w0, #0x0, 0x9310
    9304:	ldr	x8, [x20, #0x10]
    9308:	mov	x0, x20
    930c:	blr	x8
    9310:	mov	x0, x20
    9314:	bl	0x200e8 ; symbol stub for: _objc_release
    9318:	ldr	x0, [sp, #0x28]
    931c:	bl	0x200e8 ; symbol stub for: _objc_release
    9320:	mov	x0, x19
    9324:	bl	0x200e8 ; symbol stub for: _objc_release
    9328:	ldp	x29, x30, [sp, #0x50]
    932c:	ldp	x20, x19, [sp, #0x40]
    9330:	add	sp, sp, #0x60
    9334:	ret
    9338:	bl	0x1fca4
    933c:	b	0x92e8
    9340:	stp	x22, x21, [sp, #-0x30]!
    9344:	stp	x20, x19, [sp, #0x10]
    9348:	stp	x29, x30, [sp, #0x20]
    934c:	add	x29, sp, #0x20
    9350:	mov	x20, x1
    9354:	mov	x21, x0
    9358:	mov	x0, x2
    935c:	bl	0x200f4 ; symbol stub for: _objc_retain
    9360:	mov	x19, x0
    9364:	bl	0x21fc0
    9368:	cmp	x0, #0x1
    936c:	b.ne	0x93a8
    9370:	adrp	x22, 45 ; 0x36000
    9374:	ldrb	w8, [x22, #0x81]
    9378:	cmp	w8, #0x1
    937c:	b.ne	0x93d0
    9380:	adrp	x8, 45 ; 0x36000
    9384:	ldrb	w8, [x8, #0xb8]
    9388:	tbz	w8, #0x0, 0x93d0
    938c:	adrp	x0, 41 ; 0x32000
    9390:	add	x0, x0, #0x48 ; "lock.longhold"
    9394:	bl	0x4324
    9398:	adrp	x8, 45 ; 0x36000
    939c:	strb	w0, [x8, #0x6c8]
    93a0:	tbz	w0, #0x0, 0x93d8
    93a4:	b	0x9420
    93a8:	adrp	x22, 45 ; 0x36000
    93ac:	ldrb	w8, [x22, #0x6c8]
    93b0:	cmp	w8, #0x1
    93b4:	b.ne	0x9408
    93b8:	mov	x0, x19
    93bc:	bl	0x21fc0
    93c0:	cmp	x0, #0x2
    93c4:	b.eq	0x9420
    93c8:	strb	wzr, [x22, #0x6c8]
    93cc:	b	0x9420
    93d0:	adrp	x8, 45 ; 0x36000
    93d4:	strb	wzr, [x8, #0x6c8]
    93d8:	adrp	x8, 45 ; 0x36000
    93dc:	ldr	x8, [x8, #0x1c0]
    93e0:	mov	x0, x21
    93e4:	mov	x1, x20
    93e8:	mov	x2, x19
    93ec:	blr	x8
    93f0:	ldrb	w8, [x22, #0x81]
    93f4:	tbnz	w8, #0x0, 0x9420
    93f8:	adrp	x0, 41 ; 0x32000
    93fc:	add	x0, x0, #0x48 ; "lock.longhold"
    9400:	bl	0x4324
    9404:	b	0x9420
    9408:	adrp	x8, 45 ; 0x36000
    940c:	ldr	x8, [x8, #0x1c0]
    9410:	mov	x0, x21
    9414:	mov	x1, x20
    9418:	mov	x2, x19
    941c:	blr	x8

; ===== sub_9420 =====
    9420:	mov	x0, x19
    9424:	ldp	x29, x30, [sp, #0x20]
    9428:	ldp	x20, x19, [sp, #0x10]
    942c:	ldp	x22, x21, [sp], #0x30
    9430:	b	0x200e8 ; symbol stub for: _objc_release
    9434:	stp	x20, x19, [sp, #-0x20]!
    9438:	stp	x29, x30, [sp, #0x10]
    943c:	add	x29, sp, #0x10
    9440:	mov	x19, x1
    9444:	mov	x20, x0
    9448:	adrp	x8, 45 ; 0x36000
    944c:	ldr	w8, [x8, #0x6cc]
    9450:	cmp	w8, #0x1
    9454:	b.ne	0x948c
    9458:	adrp	x8, 45 ; 0x36000
    945c:	ldrb	w8, [x8, #0x680]
    9460:	tbz	w8, #0x0, 0x948c
    9464:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    9468:	adrp	x8, 45 ; 0x36000
    946c:	ldr	d1, [x8, #0x688]
    9470:	fsub	d0, d0, d1
    9474:	fmov	d1, #2.00000000
    9478:	fcmp	d0, d1
    947c:	b.pl	0x948c
    9480:	ldp	x29, x30, [sp, #0x10]
    9484:	ldp	x20, x19, [sp], #0x20
    9488:	ret
    948c:	adrp	x8, 45 ; 0x36000
    9490:	ldr	x2, [x8, #0x1c8]
    9494:	mov	x0, x20
    9498:	mov	x1, x19
    949c:	ldp	x29, x30, [sp, #0x10]
    94a0:	ldp	x20, x19, [sp], #0x20
    94a4:	br	x2
    94a8:	stp	x20, x19, [sp, #-0x20]!
    94ac:	stp	x29, x30, [sp, #0x10]
    94b0:	add	x29, sp, #0x10
    94b4:	adrp	x19, 45 ; 0x36000
    94b8:	mov	w8, #0x1
    94bc:	strb	w8, [x19, #0x6d0]
    94c0:	adrp	x8, 45 ; 0x36000
    94c4:	strb	wzr, [x8, #0x6d1]
    94c8:	adrp	x8, 45 ; 0x36000
    94cc:	ldr	x8, [x8, #0x1d0]
    94d0:	blr	x8
    94d4:	strb	wzr, [x19, #0x6d0]
    94d8:	ldp	x29, x30, [sp, #0x10]
    94dc:	ldp	x20, x19, [sp], #0x20
    94e0:	ret
    94e4:	stp	x24, x23, [sp, #-0x40]!
    94e8:	stp	x22, x21, [sp, #0x10]
    94ec:	stp	x20, x19, [sp, #0x20]
    94f0:	stp	x29, x30, [sp, #0x30]
    94f4:	add	x29, sp, #0x30
    94f8:	mov	x19, x4
    94fc:	mov	x20, x3
    9500:	mov	x21, x2
    9504:	mov	x22, x1
    9508:	mov	x23, x0
    950c:	adrp	x8, 45 ; 0x36000
    9510:	ldrb	w8, [x8, #0x6d0]
    9514:	cmp	w8, #0x1
    9518:	b.ne	0x9554
    951c:	adrp	x8, 45 ; 0x36000
    9520:	ldrb	w8, [x8, #0x81]
    9524:	tbz	w8, #0x0, 0x9554
    9528:	sxtw	x0, w21
    952c:	bl	0x1ea24
    9530:	cbz	w0, 0x9554
    9534:	adrp	x8, 45 ; 0x36000
    9538:	mov	w9, #0x1
    953c:	strb	w9, [x8, #0x6d1]
    9540:	ldp	x29, x30, [sp, #0x30]
    9544:	ldp	x20, x19, [sp, #0x20]
    9548:	ldp	x22, x21, [sp, #0x10]
    954c:	ldp	x24, x23, [sp], #0x40
    9550:	ret
    9554:	adrp	x8, 45 ; 0x36000
    9558:	ldr	x5, [x8, #0x1d8]
    955c:	mov	x0, x23
    9560:	mov	x1, x22
    9564:	mov	x2, x21
    9568:	mov	x3, x20
    956c:	mov	x4, x19
    9570:	ldp	x29, x30, [sp, #0x30]
    9574:	ldp	x20, x19, [sp, #0x20]
    9578:	ldp	x22, x21, [sp, #0x10]
    957c:	ldp	x24, x23, [sp], #0x40
    9580:	br	x5
    9584:	stp	x24, x23, [sp, #-0x40]!
    9588:	stp	x22, x21, [sp, #0x10]
    958c:	stp	x20, x19, [sp, #0x20]
    9590:	stp	x29, x30, [sp, #0x30]
    9594:	add	x29, sp, #0x30
    9598:	mov	x20, x2
    959c:	mov	x21, x1
    95a0:	mov	x22, x0
    95a4:	mov	x0, x3
    95a8:	bl	0x200f4 ; symbol stub for: _objc_retain
    95ac:	mov	x19, x0
    95b0:	adrp	x8, 44 ; 0x35000
    95b4:	ldr	x0, [x8, #0xa38] ; Objc class ref: bad class ref
    95b8:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    95bc:	mov	x1, x0
    95c0:	mov	x0, x19
    95c4:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    95c8:	adrp	x24, 45 ; 0x36000
    95cc:	tbz	w0, #0x0, 0x9604
    95d0:	adrp	x2, 41 ; 0x32000
    95d4:	add	x2, x2, #0xa8 ; "RingerSwitchEvent"
    95d8:	mov	x0, x19
    95dc:	bl	0x21000
    95e0:	mov	x23, x0
    95e4:	cbz	w0, 0x9608
    95e8:	ldrb	w8, [x24, #0x81]
    95ec:	tbz	w8, #0x0, 0x9608
    95f0:	sxtw	x0, w20
    95f4:	bl	0x1ea24
    95f8:	tbnz	w0, #0x0, 0x9638
    95fc:	mov	w23, #0x1
    9600:	b	0x9608
    9604:	mov	w23, #0x0

; ===== sub_9608 =====
    9608:	adrp	x8, 45 ; 0x36000
    960c:	ldr	x8, [x8, #0x1e0]
    9610:	mov	x0, x22
    9614:	mov	x1, x21
    9618:	mov	x2, x20
    961c:	mov	x3, x19
    9620:	blr	x8
    9624:	cbz	w23, 0x9638
    9628:	ldrb	w8, [x24, #0x81]
    962c:	tbnz	w8, #0x0, 0x9638
    9630:	sxtw	x0, w20
    9634:	bl	0x1ea24
    9638:	mov	x0, x19
    963c:	ldp	x29, x30, [sp, #0x30]
    9640:	ldp	x20, x19, [sp, #0x20]
    9644:	ldp	x22, x21, [sp, #0x10]
    9648:	ldp	x24, x23, [sp], #0x40
    964c:	b	0x200e8 ; symbol stub for: _objc_release
    9650:	sub	sp, sp, #0x1e0
    9654:	stp	d13, d12, [sp, #0x150]
    9658:	stp	d11, d10, [sp, #0x160]
    965c:	stp	d9, d8, [sp, #0x170]
    9660:	stp	x28, x27, [sp, #0x180]
    9664:	stp	x26, x25, [sp, #0x190]
    9668:	stp	x24, x23, [sp, #0x1a0]
    966c:	stp	x22, x21, [sp, #0x1b0]
    9670:	stp	x20, x19, [sp, #0x1c0]
    9674:	stp	x29, x30, [sp, #0x1d0]
    9678:	add	x29, sp, #0x1d0
    967c:	mov	x20, x1
    9680:	mov	x21, x0
    9684:	adrp	x8, 41 ; 0x32000
    9688:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    968c:	ldr	x8, [x8]
    9690:	stur	x8, [x29, #-0x90]
    9694:	mov	x0, x2
    9698:	bl	0x200f4 ; symbol stub for: _objc_retain
    969c:	mov	x24, x0
    96a0:	adrp	x8, 45 ; 0x36000
    96a4:	ldrb	w8, [x8, #0x578]
    96a8:	cmp	w8, #0x1
    96ac:	b.ne	0x999c
    96b0:	mov	x0, x24
    96b4:	bl	0x22340
    96b8:	cbnz	x0, 0x999c
    96bc:	mov	x0, x24
    96c0:	bl	0x204c0
    96c4:	mov	x29, x29
    96c8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    96cc:	mov	x22, x0
    96d0:	bl	0x20960
    96d4:	mov	x23, x0
    96d8:	mov	x0, x22
    96dc:	bl	0x200e8 ; symbol stub for: _objc_release
    96e0:	cmp	x23, #0x2
    96e4:	b.lo	0x96f8
    96e8:	adrp	x8, 45 ; 0x36000
    96ec:	ldr	x0, [x8, #0x3a0]
    96f0:	str	xzr, [x8, #0x3a0]
    96f4:	b	0x9998
    96f8:	mov	x0, x24
    96fc:	bl	0x204c0
    9700:	mov	x29, x29
    9704:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    9708:	mov	x22, x0
    970c:	bl	0x20960
    9710:	mov	x23, x0
    9714:	mov	x0, x22
    9718:	bl	0x200e8 ; symbol stub for: _objc_release
    971c:	cmp	x23, #0x1
    9720:	b.ne	0x999c
    9724:	mov	x0, x24
    9728:	bl	0x204c0
    972c:	mov	x29, x29
    9730:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    9734:	mov	x23, x0
    9738:	bl	0x20540
    973c:	mov	x29, x29
    9740:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    9744:	mov	x22, x0
    9748:	mov	x0, x23
    974c:	bl	0x200e8 ; symbol stub for: _objc_release
    9750:	mov	x0, x22
    9754:	mov	x2, #0x0
    9758:	bl	0x21200
    975c:	mov.16b	v9, v0
    9760:	mov.16b	v8, v1
    9764:	mov	x0, x22
    9768:	bl	0x21620
    976c:	adrp	x19, 45 ; 0x36000
    9770:	cbz	x0, 0x97b4
    9774:	ldr	x8, [x19, #0x3a0]
    9778:	cbz	x8, 0x9994
    977c:	adrp	x8, 45 ; 0x36000
    9780:	ldr	d10, [x8, #0x708]
    9784:	adrp	x8, 45 ; 0x36000
    9788:	ldr	d12, [x8, #0x700]
    978c:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    9790:	adrp	x8, 45 ; 0x36000
    9794:	ldr	d1, [x8, #0x710]
    9798:	fsub	d11, d0, d1
    979c:	mov	x0, x22
    97a0:	bl	0x21620
    97a4:	cmp	x0, #0x3
    97a8:	b.ne	0x9824
    97ac:	mov	w8, #0x1
    97b0:	b	0x9834
    97b4:	adrp	x8, 44 ; 0x35000
    97b8:	ldr	x0, [x8, #0xa88] ; Objc class ref: bad class ref
    97bc:	bl	0x21300
    97c0:	mov	x29, x29
    97c4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    97c8:	mov	x23, x0
    97cc:	bl	0x20620
    97d0:	mov	x0, x23
    97d4:	bl	0x200e8 ; symbol stub for: _objc_release
    97d8:	mov.16b	v0, v9
    97dc:	mov.16b	v1, v8
    97e0:	bl	0x1ecdc
    97e4:	mov	x29, x29
    97e8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    97ec:	ldr	x8, [x19, #0x3a0]
    97f0:	str	x0, [x19, #0x3a0]
    97f4:	mov	x0, x8
    97f8:	bl	0x200e8 ; symbol stub for: _objc_release
    97fc:	ldr	x8, [x19, #0x3a0]
    9800:	cbz	x8, 0x9994
    9804:	adrp	x8, 45 ; 0x36000
    9808:	str	d9, [x8, #0x700]
    980c:	adrp	x8, 45 ; 0x36000
    9810:	str	d8, [x8, #0x708]
    9814:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    9818:	adrp	x8, 45 ; 0x36000
    981c:	str	d0, [x8, #0x710]
    9820:	b	0x9994
    9824:	mov	x0, x22
    9828:	bl	0x21620
    982c:	cmp	x0, #0x4
    9830:	cset	w8, eq

; ===== sub_9834 =====
    9834:	adrp	x9, 25 ; 0x22000
    9838:	ldr	d0, [x9, #0x970]
    983c:	fcmp	d11, d0
    9840:	b.hi	0x9894
    9844:	fabd	d1, d8, d10
    9848:	mov	x9, #0x405e000000000000
    984c:	fmov	d2, x9
    9850:	fcmp	d1, d2
    9854:	b.lt	0x9894
    9858:	fabd	d2, d9, d12
    985c:	adrp	x9, 25 ; 0x22000
    9860:	ldr	d3, [x9, #0x968]
    9864:	fmul	d3, d1, d3
    9868:	fcmp	d2, d3
    986c:	b.hi	0x9894
    9870:	adrp	x9, 25 ; 0x22000
    9874:	ldr	d2, [x9, #0x978]
    9878:	fcmp	d11, d2
    987c:	fcsel	d2, d2, d11, mi
    9880:	fdiv	d1, d1, d2
    9884:	adrp	x9, 25 ; 0x22000
    9888:	ldr	d2, [x9, #0x980]
    988c:	fcmp	d1, d2
    9890:	b.ge	0x98b0
    9894:	fcmp	d11, d0
    9898:	csinc	w8, w8, wzr, le
    989c:	cmp	w8, #0x1
    98a0:	b.ne	0x9994
    98a4:	ldr	x0, [x19, #0x3a0]
    98a8:	str	xzr, [x19, #0x3a0]
    98ac:	b	0x9990
    98b0:	fsub	d0, d8, d10
    98b4:	adrp	x8, 44 ; 0x35000
    98b8:	ldr	x0, [x8, #0xa38] ; Objc class ref: bad class ref
    98bc:	ldr	x8, [x19, #0x3a0]
    98c0:	adrp	x9, 41 ; 0x32000
    98c4:	add	x9, x9, #0x108 ; "down"
    98c8:	adrp	x10, 41 ; 0x32000
    98cc:	add	x10, x10, #0xe8 ; "up"
    98d0:	fcmp	d0, #0.0
    98d4:	csel	x9, x10, x9, mi
    98d8:	stp	x8, x9, [sp]
    98dc:	adrp	x2, 41 ; 0x32000
    98e0:	add	x2, x2, #0xc8 ; "edge.%@%@"
    98e4:	bl	0x22100
    98e8:	mov	x29, x29
    98ec:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    98f0:	mov	x23, x0
    98f4:	ldr	x0, [x19, #0x3a0]
    98f8:	str	xzr, [x19, #0x3a0]
    98fc:	bl	0x200e8 ; symbol stub for: _objc_release
    9900:	adrp	x8, 45 ; 0x36000
    9904:	ldr	x0, [x8, #0xf8]
    9908:	mov	x2, x23
    990c:	bl	0x208a0
    9910:	cbz	w0, 0x998c
    9914:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    9918:	adrp	x19, 45 ; 0x36000
    991c:	ldr	d1, [x19, #0x718]
    9920:	fsub	d0, d0, d1
    9924:	adrp	x8, 25 ; 0x22000
    9928:	ldr	d1, [x8, #0x958]
    992c:	fcmp	d0, d1
    9930:	b.le	0x998c
    9934:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    9938:	str	d0, [x19, #0x718]
    993c:	adrp	x8, 41 ; 0x32000
    9940:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    9944:	str	x8, [sp, #0x98]
    9948:	adrp	x8, 25 ; 0x22000
    994c:	ldr	d0, [x8, #0x8f8]
    9950:	str	d0, [sp, #0xa0]
    9954:	adrp	x8, 21 ; 0x1e000
    9958:	add	x8, x8, #0xea0
    995c:	adrp	x9, 35 ; 0x2c000
    9960:	add	x9, x9, #0xb0
    9964:	stp	x8, x9, [sp, #0xa8]
    9968:	mov	x0, x23
    996c:	bl	0x200f4 ; symbol stub for: _objc_retain
    9970:	str	x0, [sp, #0xb8]
    9974:	adrp	x0, 41 ; 0x32000
    9978:	ldr	x0, [x0, #0xde8] ; literal pool symbol address: __dispatch_main_q
    997c:	add	x1, sp, #0x98
    9980:	bl	0x1ff08 ; symbol stub for: _dispatch_async
    9984:	ldr	x0, [sp, #0xb8]
    9988:	bl	0x200e8 ; symbol stub for: _objc_release
    998c:	mov	x0, x23

; ===== sub_9990 =====
    9990:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_9994 =====
    9994:	mov	x0, x22

; ===== sub_9998 =====
    9998:	bl	0x200e8 ; symbol stub for: _objc_release
    999c:	adrp	x8, 45 ; 0x36000
    99a0:	ldrb	w8, [x8, #0x579]
    99a4:	cmp	w8, #0x1
    99a8:	b.ne	0x9c1c
    99ac:	mov	x0, x24
    99b0:	bl	0x22340
    99b4:	cbnz	x0, 0x9c1c
    99b8:	stp	x21, x20, [sp, #0x18]
    99bc:	movi.16b	v0, #0x0
    99c0:	stp	q0, q0, [sp, #0x70]
    99c4:	stp	q0, q0, [sp, #0x50]
    99c8:	mov	x25, x24
    99cc:	mov	x0, x24
    99d0:	bl	0x204c0
    99d4:	mov	x29, x29
    99d8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    99dc:	mov	x22, x0
    99e0:	add	x2, sp, #0x50
    99e4:	add	x3, sp, #0xc0
    99e8:	mov	w4, #0x10
    99ec:	bl	0x20980
    99f0:	cbz	x0, 0x9c0c
    99f4:	mov	x24, x0
    99f8:	ldr	x8, [sp, #0x60]
    99fc:	ldr	x19, [x8]
    9a00:	adrp	x23, 45 ; 0x36000
    9a04:	add	x23, x23, #0x3a8
    9a08:	adrp	x20, 45 ; 0x36000
    9a0c:	mov	x8, #0x404e000000000000
    9a10:	fmov	d10, x8
    9a14:	adrp	x8, 25 ; 0x22000
    9a18:	ldr	d11, [x8, #0x928]
    9a1c:	adrp	x8, 25 ; 0x22000
    9a20:	ldr	d12, [x8, #0x8f8]
    9a24:	mov	x21, #0x0
    9a28:	ldr	x8, [sp, #0x60]
    9a2c:	ldr	x8, [x8]
    9a30:	cmp	x8, x19
    9a34:	b.eq	0x9a40
    9a38:	mov	x0, x22
    9a3c:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    9a40:	ldr	x8, [sp, #0x58]
    9a44:	ldr	x26, [x8, x21, lsl #3]
    9a48:	mov	x0, x26
    9a4c:	mov	x2, #0x0
    9a50:	bl	0x21200
    9a54:	mov.16b	v8, v0
    9a58:	mov.16b	v9, v1
    9a5c:	mov	x0, x26
    9a60:	bl	0x21620
    9a64:	cbz	x0, 0x9b34
    9a68:	mov	x0, x23
    9a6c:	bl	0x20094 ; symbol stub for: _objc_loadWeakRetained
    9a70:	mov	x27, x0
    9a74:	ldr	x28, [x20, #0x3b0]
    9a78:	bl	0x200e8 ; symbol stub for: _objc_release
    9a7c:	cmp	x26, x27
    9a80:	ccmp	x28, #0x0, #0x4, eq
    9a84:	b.eq	0x9be4
    9a88:	adrp	x8, 45 ; 0x36000
    9a8c:	ldr	d0, [x8, #0x728]
    9a90:	fsub	d0, d0, d9
    9a94:	fcmp	d0, d10
    9a98:	b.lt	0x9bb4
    9a9c:	adrp	x8, 45 ; 0x36000
    9aa0:	ldr	d1, [x8, #0x720]
    9aa4:	fabd	d1, d8, d1
    9aa8:	fcmp	d1, d0
    9aac:	b.pl	0x9bb4
    9ab0:	ldr	x0, [x20, #0x3b0]
    9ab4:	bl	0x200f4 ; symbol stub for: _objc_retain
    9ab8:	mov	x27, x0
    9abc:	ldr	x0, [x20, #0x3b0]
    9ac0:	str	xzr, [x20, #0x3b0]
    9ac4:	bl	0x200e8 ; symbol stub for: _objc_release
    9ac8:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    9acc:	adrp	x26, 45 ; 0x36000
    9ad0:	ldr	d1, [x26, #0x128]
    9ad4:	fsub	d0, d0, d1
    9ad8:	fcmp	d0, d11
    9adc:	b.mi	0x9bdc
    9ae0:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    9ae4:	str	d0, [x26, #0x128]
    9ae8:	adrp	x8, 41 ; 0x32000
    9aec:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    9af0:	str	x8, [sp, #0x28]
    9af4:	str	d12, [sp, #0x30]
    9af8:	adrp	x8, 21 ; 0x1e000
    9afc:	add	x9, x8, #0xea8
    9b00:	adrp	x8, 35 ; 0x2c000
    9b04:	add	x8, x8, #0xb0
    9b08:	stp	x9, x8, [sp, #0x38]
    9b0c:	str	x27, [sp, #0x48]
    9b10:	mov	x0, x27
    9b14:	bl	0x200f4 ; symbol stub for: _objc_retain
    9b18:	mov	x27, x0
    9b1c:	add	x1, sp, #0x28
    9b20:	adrp	x0, 41 ; 0x32000
    9b24:	ldr	x0, [x0, #0xde8] ; literal pool symbol address: __dispatch_main_q
    9b28:	bl	0x1ff08 ; symbol stub for: _dispatch_async
    9b2c:	ldr	x0, [sp, #0x48]
    9b30:	b	0x9bac
    9b34:	mov	x0, x25
    9b38:	bl	0x204c0
    9b3c:	mov	x29, x29
    9b40:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    9b44:	mov	x27, x0
    9b48:	bl	0x20960
    9b4c:	cmp	x0, #0x1
    9b50:	b.ne	0x9bdc
    9b54:	mov.16b	v0, v8
    9b58:	mov.16b	v1, v9
    9b5c:	bl	0x167dc
    9b60:	mov	x29, x29
    9b64:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    9b68:	mov	x28, x0
    9b6c:	mov	x0, x27
    9b70:	bl	0x200e8 ; symbol stub for: _objc_release
    9b74:	cbz	x28, 0x9be4
    9b78:	mov	x0, x23
    9b7c:	mov	x1, x26
    9b80:	bl	0x20154 ; symbol stub for: _objc_storeWeak
    9b84:	adrp	x8, 45 ; 0x36000
    9b88:	str	d8, [x8, #0x720]
    9b8c:	adrp	x8, 45 ; 0x36000
    9b90:	str	d9, [x8, #0x728]
    9b94:	ldr	x26, [x20, #0x3b0]
    9b98:	str	x28, [x20, #0x3b0]
    9b9c:	mov	x0, x28
    9ba0:	bl	0x200f4 ; symbol stub for: _objc_retain
    9ba4:	mov	x27, x0
    9ba8:	mov	x0, x26

; ===== sub_9bac =====
    9bac:	bl	0x200e8 ; symbol stub for: _objc_release
    9bb0:	b	0x9bdc
    9bb4:	mov	x0, x26
    9bb8:	bl	0x21620
    9bbc:	cmp	x0, #0x3
    9bc0:	b.eq	0x9bd4
    9bc4:	mov	x0, x26
    9bc8:	bl	0x21620
    9bcc:	cmp	x0, #0x4
    9bd0:	b.ne	0x9be4
    9bd4:	ldr	x27, [x20, #0x3b0]
    9bd8:	str	xzr, [x20, #0x3b0]

; ===== sub_9bdc =====
    9bdc:	mov	x0, x27
    9be0:	bl	0x200e8 ; symbol stub for: _objc_release
    9be4:	add	x21, x21, #0x1
    9be8:	cmp	x24, x21
    9bec:	b.ne	0x9a28
    9bf0:	add	x2, sp, #0x50
    9bf4:	add	x3, sp, #0xc0
    9bf8:	mov	x0, x22
    9bfc:	mov	w4, #0x10
    9c00:	bl	0x20980
    9c04:	mov	x24, x0
    9c08:	cbnz	x0, 0x9a24
    9c0c:	mov	x0, x22
    9c10:	bl	0x200e8 ; symbol stub for: _objc_release
    9c14:	ldp	x21, x20, [sp, #0x18]
    9c18:	mov	x24, x25
    9c1c:	adrp	x8, 45 ; 0x36000
    9c20:	ldr	x8, [x8, #0x1e8]
    9c24:	mov	x0, x21
    9c28:	mov	x1, x20
    9c2c:	mov	x2, x24
    9c30:	blr	x8
    9c34:	mov	x0, x24
    9c38:	bl	0x200e8 ; symbol stub for: _objc_release
    9c3c:	ldur	x8, [x29, #-0x90]
    9c40:	adrp	x9, 41 ; 0x32000
    9c44:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    9c48:	ldr	x9, [x9]
    9c4c:	cmp	x9, x8
    9c50:	b.ne	0x9c80
    9c54:	ldp	x29, x30, [sp, #0x1d0]
    9c58:	ldp	x20, x19, [sp, #0x1c0]
    9c5c:	ldp	x22, x21, [sp, #0x1b0]
    9c60:	ldp	x24, x23, [sp, #0x1a0]
    9c64:	ldp	x26, x25, [sp, #0x190]
    9c68:	ldp	x28, x27, [sp, #0x180]
    9c6c:	ldp	d9, d8, [sp, #0x170]
    9c70:	ldp	d11, d10, [sp, #0x160]
    9c74:	ldp	d13, d12, [sp, #0x150]
    9c78:	add	sp, sp, #0x1e0
    9c7c:	ret
    9c80:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
    9c84:	stp	x24, x23, [sp, #-0x40]!
    9c88:	stp	x22, x21, [sp, #0x10]
    9c8c:	stp	x20, x19, [sp, #0x20]
    9c90:	stp	x29, x30, [sp, #0x30]
    9c94:	add	x29, sp, #0x30
    9c98:	mov	x20, x1
    9c9c:	mov	x21, x0
    9ca0:	mov	x0, x2
    9ca4:	bl	0x200f4 ; symbol stub for: _objc_retain
    9ca8:	mov	x19, x0
    9cac:	adrp	x8, 45 ; 0x36000
    9cb0:	ldr	x8, [x8, #0x1f0]
    9cb4:	mov	x0, x21
    9cb8:	mov	x1, x20
    9cbc:	mov	x2, x19
    9cc0:	blr	x8
    9cc4:	adrp	x8, 44 ; 0x35000
    9cc8:	ldr	x20, [x8, #0x158]
    9ccc:	mov	x0, x19
    9cd0:	mov	x1, x20
    9cd4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    9cd8:	tbz	w0, #0x0, 0x9cec
    9cdc:	mov	x0, x19
    9ce0:	mov	x2, x20
    9ce4:	bl	0x215e0
    9ce8:	b	0x9cf0
    9cec:	mov	x0, #0x0

; ===== sub_9cf0 =====
    9cf0:	bl	0x200f4 ; symbol stub for: _objc_retain
    9cf4:	mov	x20, x0
    9cf8:	adrp	x8, 44 ; 0x35000
    9cfc:	ldr	x0, [x8, #0xa38] ; Objc class ref: bad class ref
    9d00:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    9d04:	mov	x1, x0
    9d08:	mov	x0, x20
    9d0c:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    9d10:	tst	w0, #0x1
    9d14:	csel	x21, x20, xzr, ne
    9d18:	mov	x0, x21
    9d1c:	bl	0x200f4 ; symbol stub for: _objc_retain
    9d20:	mov	x22, x0
    9d24:	adrp	x0, 45 ; 0x36000
    9d28:	add	x0, x0, #0x340
    9d2c:	mov	x1, x21
    9d30:	bl	0x20148 ; symbol stub for: _objc_storeStrong
    9d34:	adrp	x8, 45 ; 0x36000
    9d38:	mov	w9, #0x1
    9d3c:	strb	w9, [x8, #0x469]
    9d40:	cbz	x22, 0x9db0
    9d44:	adrp	x23, 45 ; 0x36000
    9d48:	ldr	x2, [x23, #0x330]
    9d4c:	mov	x0, x20
    9d50:	bl	0x21000
    9d54:	tbnz	w0, #0x0, 0x9d7c
    9d58:	ldr	x1, [x23, #0x330]
    9d5c:	adrp	x0, 45 ; 0x36000
    9d60:	add	x0, x0, #0x338
    9d64:	bl	0x20148 ; symbol stub for: _objc_storeStrong
    9d68:	mov	x0, x20
    9d6c:	bl	0x200f4 ; symbol stub for: _objc_retain
    9d70:	ldr	x0, [x23, #0x330]
    9d74:	str	x22, [x23, #0x330]
    9d78:	bl	0x200e8 ; symbol stub for: _objc_release
    9d7c:	adrp	x8, 45 ; 0x36000
    9d80:	ldrb	w8, [x8, #0x568]
    9d84:	tbz	w8, #0x0, 0x9dcc
    9d88:	adrp	x8, 45 ; 0x36000
    9d8c:	ldr	x2, [x8, #0x3f8]
    9d90:	mov	x0, x20
    9d94:	bl	0x21000
    9d98:	tbnz	w0, #0x0, 0x9dbc
    9d9c:	adrp	x0, 40 ; 0x31000
    9da0:	add	x0, x0, #0x6a8 ; "app.launched:"
    9da4:	mov	x1, x20
    9da8:	bl	0x197b0
    9dac:	b	0x9dbc
    9db0:	adrp	x8, 45 ; 0x36000
    9db4:	ldrb	w8, [x8, #0x568]
    9db8:	tbz	w8, #0x0, 0x9dcc

; ===== sub_9dbc =====
    9dbc:	adrp	x0, 45 ; 0x36000
    9dc0:	add	x0, x0, #0x3f8
    9dc4:	mov	x1, x21
    9dc8:	bl	0x20148 ; symbol stub for: _objc_storeStrong
    9dcc:	mov	x0, x22
    9dd0:	bl	0x200e8 ; symbol stub for: _objc_release
    9dd4:	mov	x0, x20
    9dd8:	bl	0x200e8 ; symbol stub for: _objc_release
    9ddc:	mov	x0, x19
    9de0:	ldp	x29, x30, [sp, #0x30]
    9de4:	ldp	x20, x19, [sp, #0x20]
    9de8:	ldp	x22, x21, [sp, #0x10]
    9dec:	ldp	x24, x23, [sp], #0x40
    9df0:	b	0x200e8 ; symbol stub for: _objc_release
    9df4:	stp	x28, x27, [sp, #-0x60]!
    9df8:	stp	x26, x25, [sp, #0x10]
    9dfc:	stp	x24, x23, [sp, #0x20]
    9e00:	stp	x22, x21, [sp, #0x30]
    9e04:	stp	x20, x19, [sp, #0x40]
    9e08:	stp	x29, x30, [sp, #0x50]
    9e0c:	add	x29, sp, #0x50
    9e10:	sub	sp, sp, #0x1f0
    9e14:	mov	x27, x1
    9e18:	mov	x26, x0
    9e1c:	adrp	x8, 41 ; 0x32000
    9e20:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    9e24:	ldr	x8, [x8]
    9e28:	stur	x8, [x29, #-0x60]
    9e2c:	mov	x0, x2
    9e30:	bl	0x200f4 ; symbol stub for: _objc_retain
    9e34:	mov	x28, x0
    9e38:	adrp	x20, 44 ; 0x35000
    9e3c:	ldr	x0, [x20, #0xbe8] ; Objc class ref: bad class ref
    9e40:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    9e44:	mov	x1, x0
    9e48:	mov	x0, x28
    9e4c:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    9e50:	tbz	w0, #0x0, 0x9f2c
    9e54:	mov	x25, x20
    9e58:	movi.16b	v0, #0x0
    9e5c:	stp	q0, q0, [sp, #0x40]
    9e60:	stp	q0, q0, [sp, #0x20]
    9e64:	mov	x0, x28
    9e68:	bl	0x204a0
    9e6c:	mov	x29, x29
    9e70:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    9e74:	mov	x22, x0
    9e78:	add	x2, sp, #0x20
    9e7c:	add	x3, sp, #0xe0
    9e80:	mov	w4, #0x10
    9e84:	bl	0x20980
    9e88:	cbz	x0, 0x9f10
    9e8c:	mov	x23, x0
    9e90:	mov	w19, #0x0
    9e94:	ldr	x8, [sp, #0x30]
    9e98:	ldr	x20, [x8]
    9e9c:	mov	x21, #0x0
    9ea0:	ldr	x8, [sp, #0x30]
    9ea4:	ldr	x8, [x8]
    9ea8:	cmp	x8, x20
    9eac:	b.eq	0x9eb8
    9eb0:	mov	x0, x22
    9eb4:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    9eb8:	ldr	x8, [sp, #0x28]
    9ebc:	ldr	x24, [x8, x21, lsl #3]
    9ec0:	mov	x0, x24
    9ec4:	bl	0x22340
    9ec8:	cmp	x0, #0x66
    9ecc:	b.ne	0x9ee4
    9ed0:	mov	x0, x24
    9ed4:	bl	0x21620
    9ed8:	cmp	x0, #0x3
    9edc:	cset	w8, lt
    9ee0:	orr	w19, w8, w19
    9ee4:	add	x21, x21, #0x1
    9ee8:	cmp	x23, x21
    9eec:	b.ne	0x9ea0
    9ef0:	add	x2, sp, #0x20
    9ef4:	add	x3, sp, #0xe0
    9ef8:	mov	x0, x22
    9efc:	mov	w4, #0x10
    9f00:	bl	0x20980
    9f04:	mov	x23, x0
    9f08:	cbnz	x0, 0x9e9c
    9f0c:	b	0x9f14
    9f10:	mov	w19, #0x0

; ===== sub_9f14 =====
    9f14:	mov	x0, x22
    9f18:	bl	0x200e8 ; symbol stub for: _objc_release
    9f1c:	and	w8, w19, #0x1
    9f20:	adrp	x9, 45 ; 0x36000
    9f24:	strb	w8, [x9, #0x4c8]
    9f28:	mov	x20, x25
    9f2c:	adrp	x8, 45 ; 0x36000
    9f30:	ldr	w8, [x8, #0x668]
    9f34:	cbnz	w8, 0x9f48
    9f38:	adrp	x0, 41 ; 0x32000
    9f3c:	add	x0, x0, #0x148 ; "combo."
    9f40:	bl	0x18b50
    9f44:	cbz	w0, 0xa290
    9f48:	ldr	x0, [x20, #0xbe8]
    9f4c:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    9f50:	mov	x1, x0
    9f54:	mov	x0, x28
    9f58:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    9f5c:	tbz	w0, #0x0, 0xa290
    9f60:	movi.16b	v0, #0x0
    9f64:	stp	q0, q0, [sp, #0xa0]
    9f68:	stp	q0, q0, [sp, #0xc0]
    9f6c:	str	x28, [sp, #0x10]
    9f70:	mov	x0, x28
    9f74:	bl	0x204a0
    9f78:	mov	x29, x29
    9f7c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    9f80:	mov	x22, x0
    9f84:	add	x2, sp, #0xa0
    9f88:	sub	x3, x29, #0xe0
    9f8c:	mov	w4, #0x10
    9f90:	bl	0x20980
    9f94:	str	x27, [sp, #0x18]
    9f98:	str	x26, [sp, #0x8]
    9f9c:	cbz	x0, 0xa098
    9fa0:	mov	x23, x0
    9fa4:	mov	w28, #0x0
    9fa8:	mov	w19, #0x0
    9fac:	mov	w21, #0x0
    9fb0:	ldr	x8, [sp, #0xb0]
    9fb4:	ldr	x26, [x8]
    9fb8:	adrp	x27, 44 ; 0x35000
    9fbc:	mov	x20, #0x0
    9fc0:	ldr	x8, [sp, #0xb0]
    9fc4:	ldr	x8, [x8]
    9fc8:	cmp	x8, x26
    9fcc:	b.eq	0x9fd8
    9fd0:	mov	x0, x22
    9fd4:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    9fd8:	ldr	x8, [sp, #0xa8]
    9fdc:	ldr	x24, [x8, x20, lsl #3]
    9fe0:	mov	x0, x24
    9fe4:	bl	0x21620
    9fe8:	cmp	x0, #0x2
    9fec:	b.gt	0xa06c
    9ff0:	ldr	x25, [x27, #0xa70]
    9ff4:	mov	x0, x24
    9ff8:	bl	0x22340
    9ffc:	mov	x2, x0
    a000:	mov	x0, x25
    a004:	bl	0x21420
    a008:	mov	x29, x29
    a00c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    a010:	mov	x25, x0
    a014:	mov	x0, #0x0
    a018:	mov	x2, x25
    a01c:	bl	0x203c0
    a020:	mov	x0, x25
    a024:	bl	0x200e8 ; symbol stub for: _objc_release
    a028:	mov	x0, x24
    a02c:	bl	0x22340
    a030:	cmp	x0, #0x66
    a034:	b.ne	0xa040
    a038:	mov	w21, #0x1
    a03c:	b	0xa06c
    a040:	mov	x0, x24
    a044:	bl	0x22340
    a048:	cmp	x0, #0x67
    a04c:	b.ne	0xa058
    a050:	mov	w19, #0x1
    a054:	b	0xa06c
    a058:	mov	x0, x24
    a05c:	bl	0x22340
    a060:	cmp	x0, #0x68
    a064:	cset	w8, eq
    a068:	orr	w28, w8, w28

; ===== sub_a06c =====
    a06c:	add	x20, x20, #0x1
    a070:	cmp	x23, x20
    a074:	b.ne	0x9fc0
    a078:	add	x2, sp, #0xa0
    a07c:	sub	x3, x29, #0xe0
    a080:	mov	x0, x22
    a084:	mov	w4, #0x10
    a088:	bl	0x20980
    a08c:	mov	x23, x0
    a090:	cbnz	x0, 0x9fbc
    a094:	b	0xa0a4
    a098:	mov	w28, #0x0
    a09c:	mov	w19, #0x0
    a0a0:	mov	w21, #0x0

; ===== sub_a0a4 =====
    a0a4:	mov	x0, x22
    a0a8:	bl	0x200e8 ; symbol stub for: _objc_release
    a0ac:	and	w8, w28, w21
    a0b0:	eor	w8, w8, #0x1
    a0b4:	orr	w22, w8, w19
    a0b8:	and	w8, w28, w19
    a0bc:	bic	w8, w8, w21
    a0c0:	tst	w8, #0x1
    a0c4:	mov	w8, #0x2
    a0c8:	csel	w8, w8, wzr, ne
    a0cc:	tst	w22, #0x1
    a0d0:	csinc	w19, w8, wzr, ne
    a0d4:	adrp	x9, 44 ; 0x36000
    a0d8:	ldr	w8, [x9, #0x668]
    a0dc:	cmp	w19, w8
    a0e0:	ldp	x28, x27, [sp, #0x10]
    a0e4:	ldr	x26, [sp, #0x8]
    a0e8:	b.eq	0xa28c
    a0ec:	str	w19, [x9, #0x668]
    a0f0:	adrp	x20, 44 ; 0x36000
    a0f4:	adrp	x21, 44 ; 0x36000
    a0f8:	cbz	w8, 0xa12c
    a0fc:	ldrb	w9, [x20, #0x730]
    a100:	tbz	w9, #0x0, 0xa12c
    a104:	strb	wzr, [x20, #0x730]
    a108:	ldrb	w9, [x21, #0x731]
    a10c:	tbnz	w9, #0x0, 0xa12c
    a110:	adrp	x9, 40 ; 0x32000
    a114:	add	x9, x9, #0x188 ; "combo.sidedown"
    a118:	adrp	x10, 40 ; 0x32000
    a11c:	add	x10, x10, #0x168 ; "combo.sideup"
    a120:	cmp	w8, #0x1
    a124:	csel	x0, x10, x9, eq
    a128:	bl	0x4324
    a12c:	cbz	w19, 0xa28c
    a130:	adrp	x8, 40 ; 0x32000
    a134:	add	x8, x8, #0x168 ; "combo.sideup"
    a138:	adrp	x9, 40 ; 0x32000
    a13c:	add	x9, x9, #0x188 ; "combo.sidedown"
    a140:	tst	w22, #0x1
    a144:	csel	x23, x9, x8, ne
    a148:	adrp	x8, 40 ; 0x32000
    a14c:	add	x8, x8, #0x1a8 ; "combo.sideuphold"
    a150:	adrp	x9, 40 ; 0x32000
    a154:	add	x9, x9, #0x1c8 ; "combo.sidedownhold"
    a158:	csel	x0, x9, x8, ne
    a15c:	bl	0x200f4 ; symbol stub for: _objc_retain
    a160:	mov	x22, x0
    a164:	mov	x0, x23
    a168:	bl	0x200f4 ; symbol stub for: _objc_retain
    a16c:	mov	x23, x0
    a170:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    a174:	adrp	x8, 44 ; 0x36000
    a178:	str	d0, [x8, #0x688]
    a17c:	adrp	x8, 44 ; 0x36000
    a180:	str	w19, [x8, #0x6cc]
    a184:	strb	wzr, [x21, #0x731]
    a188:	adrp	x8, 44 ; 0x36000
    a18c:	ldr	x9, [x8, #0x738]
    a190:	add	x21, x9, #0x1
    a194:	str	x21, [x8, #0x738]
    a198:	mov	x0, x22
    a19c:	bl	0xbd74
    a1a0:	mov	x29, x29
    a1a4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    a1a8:	mov	x24, x0
    a1ac:	bl	0x200e8 ; symbol stub for: _objc_release
    a1b0:	cbz	x24, 0xa508
    a1b4:	mov	x0, x23
    a1b8:	bl	0xbd74
    a1bc:	mov	x29, x29
    a1c0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    a1c4:	mov	x24, x0
    a1c8:	mov	x0, x23
    a1cc:	bl	0x200e8 ; symbol stub for: _objc_release
    a1d0:	cmp	x24, #0x0
    a1d4:	cset	w8, ne
    a1d8:	strb	w8, [x20, #0x730]
    a1dc:	mov	x0, x24
    a1e0:	bl	0x200e8 ; symbol stub for: _objc_release
    a1e4:	ldrb	w8, [x20, #0x730]
    a1e8:	adrp	x9, 44 ; 0x36000
    a1ec:	ldrb	w9, [x9, #0x81]
    a1f0:	and	w8, w8, w9
    a1f4:	adrp	x20, 44 ; 0x36000
    a1f8:	strb	w8, [x20, #0x680]
    a1fc:	mov	x0, #0x0
    a200:	mov	w1, #0x6500
    a204:	movk	w1, #0x1dcd, lsl #16
    a208:	bl	0x1ff38 ; symbol stub for: _dispatch_time
    a20c:	mov	x23, x0
    a210:	adrp	x8, 40 ; 0x32000
    a214:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    a218:	str	x8, [sp, #0x68]
    a21c:	adrp	x8, 24 ; 0x22000
    a220:	ldr	d0, [x8, #0x8f8]
    a224:	str	d0, [sp, #0x70]
    a228:	adrp	x8, 20 ; 0x1e000
    a22c:	add	x8, x8, #0xeb0
    a230:	adrp	x9, 36 ; 0x2e000
    a234:	add	x9, x9, #0xa38
    a238:	stp	x8, x9, [sp, #0x78]
    a23c:	str	w19, [sp, #0x98]
    a240:	str	x21, [sp, #0x90]
    a244:	mov	x0, x22
    a248:	bl	0x200f4 ; symbol stub for: _objc_retain
    a24c:	str	x0, [sp, #0x88]
    a250:	adrp	x1, 40 ; 0x32000
    a254:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
    a258:	add	x2, sp, #0x68
    a25c:	mov	x0, x23
    a260:	bl	0x1fefc ; symbol stub for: _dispatch_after
    a264:	ldr	x0, [sp, #0x88]
    a268:	bl	0x200e8 ; symbol stub for: _objc_release
    a26c:	ldrb	w8, [x20, #0x680]
    a270:	cmp	w8, #0x1
    a274:	b.ne	0xa284
    a278:	adrp	x8, 44 ; 0x36000
    a27c:	mov	w9, #0x1
    a280:	strb	w9, [x8, #0x6a9]

; ===== sub_a284 =====
    a284:	mov	x0, x22
    a288:	bl	0x200e8 ; symbol stub for: _objc_release
    a28c:	adrp	x20, 43 ; 0x35000
    a290:	adrp	x25, 44 ; 0x36000
    a294:	ldrb	w8, [x25, #0x66c]
    a298:	tbnz	w8, #0x0, 0xa2c8
    a29c:	adrp	x19, 44 ; 0x36000
    a2a0:	ldr	x0, [x19, #0xf8]
    a2a4:	adrp	x2, 39 ; 0x31000
    a2a8:	add	x2, x2, #0xfa8 ; "volume.both"
    a2ac:	bl	0x208a0
    a2b0:	tbnz	w0, #0x0, 0xa2c8
    a2b4:	ldr	x0, [x19, #0xf8]
    a2b8:	adrp	x2, 39 ; 0x31000
    a2bc:	add	x2, x2, #0xfc8 ; "volume.bothhold"
    a2c0:	bl	0x208a0
    a2c4:	cbz	w0, 0xa4a8
    a2c8:	ldr	x0, [x20, #0xbe8]
    a2cc:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    a2d0:	mov	x1, x0
    a2d4:	mov	x0, x28
    a2d8:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    a2dc:	tbz	w0, #0x0, 0xa4a8
    a2e0:	movi.16b	v0, #0x0
    a2e4:	stp	q0, q0, [sp, #0xa0]
    a2e8:	stp	q0, q0, [sp, #0xc0]
    a2ec:	mov	x0, x28
    a2f0:	bl	0x204a0
    a2f4:	mov	x29, x29
    a2f8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    a2fc:	mov	x22, x0
    a300:	add	x2, sp, #0xa0
    a304:	sub	x3, x29, #0xe0
    a308:	mov	w4, #0x10
    a30c:	bl	0x20980
    a310:	cbz	x0, 0xa3c8
    a314:	mov	x23, x0
    a318:	str	x27, [sp, #0x18]
    a31c:	mov	x27, x26
    a320:	mov	w19, #0x0
    a324:	mov	w20, #0x0
    a328:	ldr	x8, [sp, #0xb0]
    a32c:	ldr	x21, [x8]
    a330:	mov	x26, #0x0
    a334:	ldr	x8, [sp, #0xb0]
    a338:	ldr	x8, [x8]
    a33c:	cmp	x8, x21
    a340:	b.eq	0xa34c
    a344:	mov	x0, x22
    a348:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    a34c:	ldr	x8, [sp, #0xa8]
    a350:	ldr	x24, [x8, x26, lsl #3]
    a354:	mov	x0, x24
    a358:	bl	0x21620
    a35c:	cmp	x0, #0x2
    a360:	b.gt	0xa390
    a364:	mov	x0, x24
    a368:	bl	0x22340
    a36c:	cmp	x0, #0x66
    a370:	b.ne	0xa37c
    a374:	mov	w20, #0x1
    a378:	b	0xa390
    a37c:	mov	x0, x24
    a380:	bl	0x22340
    a384:	cmp	x0, #0x67
    a388:	cset	w8, eq
    a38c:	orr	w19, w8, w19

; ===== sub_a390 =====
    a390:	add	x26, x26, #0x1
    a394:	cmp	x23, x26
    a398:	b.ne	0xa334
    a39c:	add	x2, sp, #0xa0
    a3a0:	sub	x3, x29, #0xe0
    a3a4:	mov	x0, x22
    a3a8:	mov	w4, #0x10
    a3ac:	bl	0x20980
    a3b0:	mov	x23, x0
    a3b4:	cbnz	x0, 0xa330
    a3b8:	and	w19, w20, w19
    a3bc:	mov	x26, x27
    a3c0:	ldr	x27, [sp, #0x18]
    a3c4:	b	0xa3cc
    a3c8:	mov	w19, #0x0

; ===== sub_a3cc =====
    a3cc:	mov	x0, x22
    a3d0:	bl	0x200e8 ; symbol stub for: _objc_release
    a3d4:	ldrb	w8, [x25, #0x66c]
    a3d8:	and	w19, w19, #0x1
    a3dc:	cmp	w8, w19
    a3e0:	b.eq	0xa4a8
    a3e4:	strb	w19, [x25, #0x66c]
    a3e8:	adrp	x0, 39 ; 0x31000
    a3ec:	add	x0, x0, #0xfc8 ; "volume.bothhold"
    a3f0:	bl	0xbd74
    a3f4:	mov	x29, x29
    a3f8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    a3fc:	mov	x22, x0
    a400:	bl	0x200e8 ; symbol stub for: _objc_release
    a404:	cbz	w19, 0xa48c
    a408:	adrp	x8, 44 ; 0x36000
    a40c:	add	x8, x8, #0x63a
    a410:	mov	w9, #0x1
    a414:	strb	w9, [x8, #0x20]
    a418:	strb	w9, [x8]
    a41c:	adrp	x8, 44 ; 0x36000
    a420:	strb	wzr, [x8, #0x740]
    a424:	adrp	x8, 44 ; 0x36000
    a428:	ldr	x9, [x8, #0x748]
    a42c:	add	x19, x9, #0x1
    a430:	str	x19, [x8, #0x748]
    a434:	cbz	x22, 0xa49c
    a438:	mov	x0, #0x0
    a43c:	mov	w1, #0x6500
    a440:	movk	w1, #0x1dcd, lsl #16
    a444:	bl	0x1ff38 ; symbol stub for: _dispatch_time
    a448:	adrp	x8, 40 ; 0x32000
    a44c:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    a450:	str	x8, [sp, #0x68]
    a454:	adrp	x8, 24 ; 0x22000
    a458:	ldr	d0, [x8, #0x938]
    a45c:	adrp	x8, 20 ; 0x1e000
    a460:	add	x8, x8, #0xef8
    a464:	str	d0, [sp, #0x70]
    a468:	adrp	x9, 34 ; 0x2c000
    a46c:	add	x9, x9, #0x4c0
    a470:	stp	x8, x9, [sp, #0x78]
    a474:	str	x19, [sp, #0x88]
    a478:	adrp	x1, 40 ; 0x32000
    a47c:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
    a480:	add	x2, sp, #0x68
    a484:	bl	0x1fefc ; symbol stub for: _dispatch_after
    a488:	b	0xa4a8
    a48c:	cbz	x22, 0xa4a8
    a490:	adrp	x8, 44 ; 0x36000
    a494:	ldrb	w8, [x8, #0x740]
    a498:	tbnz	w8, #0x0, 0xa4a8
    a49c:	adrp	x0, 39 ; 0x31000
    a4a0:	add	x0, x0, #0xfa8 ; "volume.both"
    a4a4:	bl	0x4324

; ===== sub_a4a8 =====
    a4a8:	adrp	x8, 44 ; 0x36000
    a4ac:	ldr	x8, [x8, #0x1f8]
    a4b0:	mov	x0, x26
    a4b4:	mov	x1, x27
    a4b8:	mov	x2, x28
    a4bc:	blr	x8
    a4c0:	mov	x19, x0
    a4c4:	mov	x0, x28
    a4c8:	bl	0x200e8 ; symbol stub for: _objc_release
    a4cc:	ldur	x8, [x29, #-0x60]
    a4d0:	adrp	x9, 40 ; 0x32000
    a4d4:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    a4d8:	ldr	x9, [x9]
    a4dc:	cmp	x9, x8
    a4e0:	b.ne	0xa53c
    a4e4:	mov	x0, x19
    a4e8:	add	sp, sp, #0x1f0
    a4ec:	ldp	x29, x30, [sp, #0x50]
    a4f0:	ldp	x20, x19, [sp, #0x40]
    a4f4:	ldp	x22, x21, [sp, #0x30]
    a4f8:	ldp	x24, x23, [sp, #0x20]
    a4fc:	ldp	x26, x25, [sp, #0x10]
    a500:	ldp	x28, x27, [sp], #0x60
    a504:	ret
    a508:	strb	wzr, [x20, #0x730]
    a50c:	mov	x0, x23
    a510:	bl	0x4324
    a514:	mov	x24, x0
    a518:	mov	x0, x23
    a51c:	bl	0x200e8 ; symbol stub for: _objc_release
    a520:	adrp	x8, 44 ; 0x36000
    a524:	ldrb	w8, [x8, #0x81]
    a528:	and	w8, w24, w8
    a52c:	adrp	x9, 44 ; 0x36000
    a530:	strb	w8, [x9, #0x680]
    a534:	tbnz	w8, #0x0, 0xa278
    a538:	b	0xa284
    a53c:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
    a540:	stp	x20, x19, [sp, #-0x20]!
    a544:	stp	x29, x30, [sp, #0x10]
    a548:	add	x29, sp, #0x10
    a54c:	mov	x19, x2
    a550:	adrp	x8, 44 ; 0x36000
    a554:	ldr	x8, [x8, #0x200]
    a558:	blr	x8
    a55c:	adrp	x8, 44 ; 0x36000
    a560:	ldrb	w8, [x8, #0x6d1]
    a564:	tbz	w8, #0x0, 0xa574
    a568:	ldp	x29, x30, [sp, #0x10]
    a56c:	ldp	x20, x19, [sp], #0x20
    a570:	ret
    a574:	mov	x0, x19
    a578:	ldp	x29, x30, [sp, #0x10]
    a57c:	ldp	x20, x19, [sp], #0x20
    a580:	b	0x1ea24
    a584:	stp	x20, x19, [sp, #-0x20]!
    a588:	stp	x29, x30, [sp, #0x10]
    a58c:	add	x29, sp, #0x10
    a590:	mov	x19, x2
    a594:	adrp	x8, 44 ; 0x36000
    a598:	ldr	x8, [x8, #0x208]
    a59c:	blr	x8
    a5a0:	cmp	x19, #0x4
    a5a4:	b.ne	0xa5d4
    a5a8:	adrp	x8, 44 ; 0x36000
    a5ac:	ldr	x0, [x8, #0xf8]
    a5b0:	adrp	x2, 40 ; 0x32000
    a5b4:	add	x2, x2, #0x1e8 ; "touchid.match"
    a5b8:	bl	0x208a0
    a5bc:	cbz	w0, 0xa5d4
    a5c0:	adrp	x0, 40 ; 0x32000
    a5c4:	add	x0, x0, #0x1e8 ; "touchid.match"
    a5c8:	ldp	x29, x30, [sp, #0x10]
    a5cc:	ldp	x20, x19, [sp], #0x20
    a5d0:	b	0x4324
    a5d4:	ldp	x29, x30, [sp, #0x10]
    a5d8:	ldp	x20, x19, [sp], #0x20
    a5dc:	ret
    a5e0:	sub	sp, sp, #0x140
    a5e4:	stp	x28, x27, [sp, #0xe0]
    a5e8:	stp	x26, x25, [sp, #0xf0]
    a5ec:	stp	x24, x23, [sp, #0x100]
    a5f0:	stp	x22, x21, [sp, #0x110]
    a5f4:	stp	x20, x19, [sp, #0x120]
    a5f8:	stp	x29, x30, [sp, #0x130]
    a5fc:	add	x29, sp, #0x130
    a600:	mov	x19, x0
    a604:	adrp	x8, 40 ; 0x32000
    a608:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    a60c:	ldr	x8, [x8]
    a610:	stur	x8, [x29, #-0x60]
    a614:	adrp	x8, 44 ; 0x36000
    a618:	ldr	x8, [x8, #0x210]
    a61c:	blr	x8
    a620:	mov	x0, x19
    a624:	bl	0x200f4 ; symbol stub for: _objc_retain
    a628:	mov	x19, x0
    a62c:	bl	0x22440
    a630:	mov	x29, x29
    a634:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    a638:	cbz	x0, 0xa7e4
    a63c:	mov	x20, x0
    a640:	adrp	x8, 44 ; 0x36000
    a644:	ldr	x1, [x8, #0xe0]
    a648:	mov	x0, x19
    a64c:	bl	0x2007c ; symbol stub for: _objc_getAssociatedObject
    a650:	mov	x29, x29
    a654:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    a658:	mov	x21, x0
    a65c:	bl	0x200e8 ; symbol stub for: _objc_release
    a660:	mov	x0, x20
    a664:	bl	0x200e8 ; symbol stub for: _objc_release
    a668:	cbnz	x21, 0xa7e4
    a66c:	adrp	x8, 43 ; 0x35000
    a670:	ldr	x0, [x8, #0xa20] ; Objc class ref: bad class ref
    a674:	bl	0x20028 ; symbol stub for: _objc_alloc
    a678:	mov	x20, x0
    a67c:	adrp	x27, 43 ; 0x35000
    a680:	ldr	x0, [x27, #0xbf0] ; Objc class ref: bad class ref
    a684:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    a688:	mov	x2, x0
    a68c:	adrp	x8, 43 ; 0x35000
    a690:	ldr	x3, [x8, #0x20]
    a694:	mov	x0, x20
    a698:	bl	0x20ee0
    a69c:	mov	x20, x0
    a6a0:	fmov	d0, #0.50000000
    a6a4:	bl	0x21b80
    a6a8:	mov	x0, x20
    a6ac:	mov	w2, #0x0
    a6b0:	bl	0x21960
    a6b4:	mov	x0, x19
    a6b8:	str	x20, [sp, #0x8]
    a6bc:	mov	x2, x20
    a6c0:	bl	0x20380
    a6c4:	movi.16b	v0, #0x0
    a6c8:	stp	q0, q0, [sp, #0x30]
    a6cc:	stp	q0, q0, [sp, #0x10]
    a6d0:	adrp	x0, 40 ; 0x32000
    a6d4:	add	x0, x0, #0xa80
    a6d8:	add	x2, sp, #0x10
    a6dc:	add	x3, sp, #0x50
    a6e0:	mov	w4, #0x10
    a6e4:	bl	0x20980
    a6e8:	cbz	x0, 0xa7c0
    a6ec:	mov	x21, x0
    a6f0:	ldr	x8, [sp, #0x20]
    a6f4:	ldr	x28, [x8]
    a6f8:	adrp	x20, 43 ; 0x35000
    a6fc:	adrp	x22, 40 ; 0x32000
    a700:	add	x22, x22, #0xa80
    a704:	mov	x26, #0x0
    a708:	adrp	x8, 43 ; 0x35000
    a70c:	ldr	x23, [x8, #0x28]
    a710:	ldr	x8, [sp, #0x20]
    a714:	ldr	x8, [x8]
    a718:	cmp	x8, x28
    a71c:	b.eq	0xa728
    a720:	mov	x0, x22
    a724:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    a728:	ldr	x8, [sp, #0x18]
    a72c:	ldr	x24, [x8, x26, lsl #3]
    a730:	ldr	x0, [x20, #0xb78]
    a734:	bl	0x20028 ; symbol stub for: _objc_alloc
    a738:	mov	x25, x0
    a73c:	ldr	x0, [x27, #0xbf0]
    a740:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    a744:	mov	x2, x0
    a748:	mov	x0, x25
    a74c:	mov	x3, x23
    a750:	bl	0x20ee0
    a754:	mov	x25, x0
    a758:	mov	x0, x24
    a75c:	bl	0x22380
    a760:	mov	x2, x0
    a764:	mov	x0, x25
    a768:	bl	0x21a00
    a76c:	mov	x0, x25
    a770:	mov	w2, #0x0
    a774:	bl	0x21960
    a778:	mov	x0, x25
    a77c:	mov	w2, #0x0
    a780:	bl	0x219a0
    a784:	mov	x0, x19
    a788:	mov	x2, x25
    a78c:	bl	0x20380
    a790:	mov	x0, x25
    a794:	bl	0x200e8 ; symbol stub for: _objc_release
    a798:	add	x26, x26, #0x1
    a79c:	cmp	x21, x26
    a7a0:	b.ne	0xa710
    a7a4:	add	x2, sp, #0x10
    a7a8:	add	x3, sp, #0x50
    a7ac:	mov	x0, x22
    a7b0:	mov	w4, #0x10
    a7b4:	bl	0x20980
    a7b8:	mov	x21, x0
    a7bc:	cbnz	x0, 0xa704
    a7c0:	adrp	x8, 44 ; 0x36000
    a7c4:	ldr	x1, [x8, #0xe0]
    a7c8:	mov	x0, x19
    a7cc:	ldr	x20, [sp, #0x8]
    a7d0:	mov	x2, x20
    a7d4:	mov	w3, #0x1
    a7d8:	bl	0x20130 ; symbol stub for: _objc_setAssociatedObject
    a7dc:	mov	x0, x20
    a7e0:	bl	0x200e8 ; symbol stub for: _objc_release
    a7e4:	mov	x0, x19
    a7e8:	bl	0x200e8 ; symbol stub for: _objc_release
    a7ec:	ldur	x8, [x29, #-0x60]
    a7f0:	adrp	x9, 40 ; 0x32000
    a7f4:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    a7f8:	ldr	x9, [x9]
    a7fc:	cmp	x9, x8
    a800:	b.ne	0xa824
    a804:	ldp	x29, x30, [sp, #0x130]
    a808:	ldp	x20, x19, [sp, #0x120]
    a80c:	ldp	x22, x21, [sp, #0x110]
    a810:	ldp	x24, x23, [sp, #0x100]
    a814:	ldp	x26, x25, [sp, #0xf0]
    a818:	ldp	x28, x27, [sp, #0xe0]
    a81c:	add	sp, sp, #0x140
    a820:	ret
    a824:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
    a828:	stp	x22, x21, [sp, #-0x30]!
    a82c:	stp	x20, x19, [sp, #0x10]
    a830:	stp	x29, x30, [sp, #0x20]
    a834:	add	x29, sp, #0x20
    a838:	mov	x19, x1
    a83c:	mov	x20, x0
    a840:	mov	x0, x2
    a844:	bl	0x200f4 ; symbol stub for: _objc_retain
    a848:	mov	x21, x0
    a84c:	bl	0x1ef38
    a850:	adrp	x8, 44 ; 0x36000
    a854:	ldr	x8, [x8, #0x218]
    a858:	mov	x0, x20
    a85c:	mov	x1, x19
    a860:	mov	x2, x21
    a864:	blr	x8
    a868:	mov	x0, x21
    a86c:	ldp	x29, x30, [sp, #0x20]
    a870:	ldp	x20, x19, [sp, #0x10]
    a874:	ldp	x22, x21, [sp], #0x30
    a878:	b	0x200e8 ; symbol stub for: _objc_release
    a87c:	stp	x20, x19, [sp, #-0x20]!
    a880:	stp	x29, x30, [sp, #0x10]
    a884:	add	x29, sp, #0x10
    a888:	mov	x19, x0
    a88c:	adrp	x8, 44 ; 0x36000
    a890:	ldr	x8, [x8, #0x220]
    a894:	blr	x8
    a898:	adrp	x8, 44 ; 0x36000
    a89c:	ldrb	w8, [x8, #0x111]
    a8a0:	cmp	w8, #0x1
    a8a4:	b.ne	0xa8b8
    a8a8:	mov	x0, x19
    a8ac:	ldp	x29, x30, [sp, #0x10]
    a8b0:	ldp	x20, x19, [sp], #0x20
    a8b4:	b	0x1a1d4
    a8b8:	ldp	x29, x30, [sp, #0x10]
    a8bc:	ldp	x20, x19, [sp], #0x20
    a8c0:	ret
    a8c4:	stp	x20, x19, [sp, #-0x20]!
    a8c8:	stp	x29, x30, [sp, #0x10]
    a8cc:	add	x29, sp, #0x10
    a8d0:	mov	x19, x0
    a8d4:	adrp	x8, 44 ; 0x36000
    a8d8:	ldr	x8, [x8, #0x228]
    a8dc:	blr	x8
    a8e0:	adrp	x8, 44 ; 0x36000
    a8e4:	ldrb	w8, [x8, #0x120]
    a8e8:	cmp	w8, #0x1
    a8ec:	b.ne	0xa91c
    a8f0:	mov	x0, x19
    a8f4:	bl	0x22440
    a8f8:	mov	x29, x29
    a8fc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    a900:	mov	x20, x0
    a904:	bl	0x200e8 ; symbol stub for: _objc_release
    a908:	cbz	x20, 0xa91c
    a90c:	mov	x0, x19
    a910:	ldp	x29, x30, [sp, #0x10]
    a914:	ldp	x20, x19, [sp], #0x20
    a918:	b	0x1a440
    a91c:	ldp	x29, x30, [sp, #0x10]
    a920:	ldp	x20, x19, [sp], #0x20
    a924:	ret
    a928:	stp	d9, d8, [sp, #-0x50]!
    a92c:	stp	x24, x23, [sp, #0x10]
    a930:	stp	x22, x21, [sp, #0x20]
    a934:	stp	x20, x19, [sp, #0x30]
    a938:	stp	x29, x30, [sp, #0x40]
    a93c:	add	x29, sp, #0x40
    a940:	mov	x20, x3
    a944:	mov	x21, x1
    a948:	mov	x22, x0
    a94c:	mov	x0, x2
    a950:	bl	0x200f4 ; symbol stub for: _objc_retain
    a954:	mov	x19, x0
    a958:	mov	x0, x20
    a95c:	bl	0x200f4 ; symbol stub for: _objc_retain
    a960:	mov	x20, x0
    a964:	adrp	x23, 44 ; 0x36000
    a968:	ldrb	w8, [x23, #0x579]
    a96c:	adrp	x24, 44 ; 0x36000
    a970:	tbnz	w8, #0x0, 0xa97c
    a974:	ldrb	w8, [x24, #0x588]
    a978:	tbz	w8, #0x0, 0xaa0c
    a97c:	adrp	x8, 43 ; 0x35000
    a980:	ldr	x0, [x8, #0xb88] ; Objc class ref: bad class ref
    a984:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    a988:	mov	x1, x0
    a98c:	mov	x0, x22
    a990:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    a994:	tbnz	w0, #0x0, 0xaa0c
    a998:	mov	x0, x19
    a99c:	mov	x2, #0x0
    a9a0:	bl	0x21200
    a9a4:	mov.16b	v8, v0
    a9a8:	mov.16b	v9, v1
    a9ac:	ldrb	w8, [x23, #0x579]
    a9b0:	cmp	w8, #0x1
    a9b4:	b.ne	0xa9d8
    a9b8:	mov.16b	v0, v8
    a9bc:	mov.16b	v1, v9
    a9c0:	bl	0x167dc
    a9c4:	mov	x29, x29
    a9c8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    a9cc:	mov	x23, x0
    a9d0:	bl	0x200e8 ; symbol stub for: _objc_release
    a9d4:	cbnz	x23, 0xaa04
    a9d8:	ldrb	w8, [x24, #0x588]
    a9dc:	cmp	w8, #0x1
    a9e0:	b.ne	0xaa0c
    a9e4:	mov.16b	v0, v8
    a9e8:	mov.16b	v1, v9
    a9ec:	bl	0x168ac
    a9f0:	mov	x29, x29
    a9f4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    a9f8:	mov	x23, x0
    a9fc:	bl	0x200e8 ; symbol stub for: _objc_release
    aa00:	cbz	x23, 0xaa0c
    aa04:	mov	w21, #0x0
    aa08:	b	0xaa2c
    aa0c:	adrp	x8, 44 ; 0x36000
    aa10:	ldr	x8, [x8, #0x230]
    aa14:	mov	x0, x22
    aa18:	mov	x1, x21
    aa1c:	mov	x2, x19
    aa20:	mov	x3, x20
    aa24:	blr	x8
    aa28:	mov	x21, x0

; ===== sub_aa2c =====
    aa2c:	mov	x0, x20
    aa30:	bl	0x200e8 ; symbol stub for: _objc_release
    aa34:	mov	x0, x19
    aa38:	bl	0x200e8 ; symbol stub for: _objc_release
    aa3c:	mov	x0, x21
    aa40:	ldp	x29, x30, [sp, #0x40]
    aa44:	ldp	x20, x19, [sp, #0x30]
    aa48:	ldp	x22, x21, [sp, #0x20]
    aa4c:	ldp	x24, x23, [sp, #0x10]
    aa50:	ldp	d9, d8, [sp], #0x50
    aa54:	ret
    aa58:	stp	x20, x19, [sp, #-0x20]!
    aa5c:	stp	x29, x30, [sp, #0x10]
    aa60:	add	x29, sp, #0x10
    aa64:	adrp	x8, 44 ; 0x36000
    aa68:	ldr	x8, [x8, #0x238]
    aa6c:	blr	x8
    aa70:	mov	x29, x29
    aa74:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    aa78:	mov	x19, x0
    aa7c:	adrp	x8, 44 ; 0x36000
    aa80:	mov	w9, #0x1
    aa84:	strb	w9, [x8, #0x57a]
    aa88:	adrp	x0, 40 ; 0x32000
    aa8c:	ldr	x0, [x0, #0xde8] ; literal pool symbol address: __dispatch_main_q
    aa90:	adrp	x1, 36 ; 0x2e000
    aa94:	add	x1, x1, #0xb58
    aa98:	bl	0x1ff08 ; symbol stub for: _dispatch_async
    aa9c:	mov	x0, x19
    aaa0:	ldp	x29, x30, [sp, #0x10]
    aaa4:	ldp	x20, x19, [sp], #0x20
    aaa8:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue
    aaac:	stp	x20, x19, [sp, #-0x20]!
    aab0:	stp	x29, x30, [sp, #0x10]
    aab4:	add	x29, sp, #0x10
    aab8:	adrp	x8, 44 ; 0x36000
    aabc:	ldr	x8, [x8, #0x240]
    aac0:	blr	x8
    aac4:	mov	x29, x29
    aac8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    aacc:	mov	x19, x0
    aad0:	adrp	x0, 44 ; 0x36000
    aad4:	add	x0, x0, #0x398
    aad8:	mov	x1, x19
    aadc:	bl	0x20154 ; symbol stub for: _objc_storeWeak
    aae0:	adrp	x8, 44 ; 0x36000
    aae4:	mov	w9, #0x1
    aae8:	strb	w9, [x8, #0x57a]
    aaec:	adrp	x0, 40 ; 0x32000
    aaf0:	ldr	x0, [x0, #0xde8] ; literal pool symbol address: __dispatch_main_q
    aaf4:	adrp	x1, 36 ; 0x2e000
    aaf8:	add	x1, x1, #0xb78
    aafc:	bl	0x1ff08 ; symbol stub for: _dispatch_async
    ab00:	mov	x0, x19
    ab04:	ldp	x29, x30, [sp, #0x10]
    ab08:	ldp	x20, x19, [sp], #0x20
    ab0c:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue
    ab10:	mov	x8, #-0x7000
    ab14:	movk	x8, #0xf8b9, lsl #16
    ab18:	add	x8, x2, x8
    ab1c:	cmp	x8, #0xf
    ab20:	b.hs	0xab2c
    ab24:	mov	w0, #0x1
    ab28:	ret
    ab2c:	adrp	x8, 44 ; 0x36000
    ab30:	ldr	x3, [x8, #0x248]
    ab34:	br	x3
    ab38:	mov	x8, #-0x7000
    ab3c:	movk	x8, #0xf8b9, lsl #16
    ab40:	add	x8, x2, x8
    ab44:	cmp	x8, #0xf
    ab48:	b.hs	0xab54
    ab4c:	mov	w0, #0x1
    ab50:	ret
    ab54:	adrp	x8, 44 ; 0x36000
    ab58:	ldr	x3, [x8, #0x250]
    ab5c:	br	x3
    ab60:	adrp	x8, 44 ; 0x36000
    ab64:	str	x2, [x8, #0x750]
    ab68:	cmp	x2, #0x1
    ab6c:	b.hi	0xab78
    ab70:	adrp	x8, 44 ; 0x36000
    ab74:	strb	wzr, [x8, #0x758]
    ab78:	adrp	x8, 44 ; 0x36000
    ab7c:	ldr	x9, [x8, #0x760]
    ab80:	add	x9, x9, #0x1
    ab84:	str	x9, [x8, #0x760]
    ab88:	adrp	x8, 44 ; 0x36000
    ab8c:	ldr	x3, [x8, #0x258]
    ab90:	br	x3
    ab94:	stp	x20, x19, [sp, #-0x20]!
    ab98:	stp	x29, x30, [sp, #0x10]
    ab9c:	add	x29, sp, #0x10
    aba0:	mov	x19, x1
    aba4:	mov	x20, x0
    aba8:	adrp	x8, 44 ; 0x36000
    abac:	mov	w9, #0x1
    abb0:	strb	w9, [x8, #0x758]
    abb4:	adrp	x8, 44 ; 0x36000
    abb8:	ldr	x0, [x8, #0xf8]
    abbc:	adrp	x2, 40 ; 0x32000
    abc0:	add	x2, x2, #0x208 ; "headset.hold"
    abc4:	bl	0x208a0
    abc8:	cbz	w0, 0xabe8
    abcc:	adrp	x0, 40 ; 0x32000
    abd0:	add	x0, x0, #0x208 ; "headset.hold"
    abd4:	bl	0x4324
    abd8:	tbz	w0, #0x0, 0xabe8
    abdc:	ldp	x29, x30, [sp, #0x10]
    abe0:	ldp	x20, x19, [sp], #0x20
    abe4:	ret
    abe8:	adrp	x8, 44 ; 0x36000
    abec:	ldr	x2, [x8, #0x260]
    abf0:	mov	x0, x20
    abf4:	mov	x1, x19
    abf8:	ldp	x29, x30, [sp, #0x10]
    abfc:	ldp	x20, x19, [sp], #0x20
    ac00:	br	x2
    ac04:	stp	x20, x19, [sp, #-0x20]!
    ac08:	stp	x29, x30, [sp, #0x10]
    ac0c:	add	x29, sp, #0x10
    ac10:	mov	x19, x1
    ac14:	mov	x20, x0
    ac18:	adrp	x8, 44 ; 0x36000
    ac1c:	mov	w9, #0x1
    ac20:	strb	w9, [x8, #0x758]
    ac24:	adrp	x8, 44 ; 0x36000
    ac28:	ldr	x0, [x8, #0xf8]
    ac2c:	adrp	x2, 40 ; 0x32000
    ac30:	add	x2, x2, #0x208 ; "headset.hold"
    ac34:	bl	0x208a0
    ac38:	cbz	w0, 0xac58
    ac3c:	adrp	x0, 40 ; 0x32000
    ac40:	add	x0, x0, #0x208 ; "headset.hold"
    ac44:	bl	0x4324
    ac48:	tbz	w0, #0x0, 0xac58
    ac4c:	ldp	x29, x30, [sp, #0x10]
    ac50:	ldp	x20, x19, [sp], #0x20
    ac54:	ret
    ac58:	adrp	x8, 44 ; 0x36000
    ac5c:	ldr	x2, [x8, #0x268]
    ac60:	mov	x0, x20
    ac64:	mov	x1, x19
    ac68:	ldp	x29, x30, [sp, #0x10]
    ac6c:	ldp	x20, x19, [sp], #0x20
    ac70:	br	x2
    ac74:	sub	sp, sp, #0x50
    ac78:	stp	x20, x19, [sp, #0x30]
    ac7c:	stp	x29, x30, [sp, #0x40]
    ac80:	add	x29, sp, #0x40
    ac84:	adrp	x8, 44 ; 0x36000
    ac88:	ldr	x8, [x8, #0x270]
    ac8c:	blr	x8
    ac90:	mov	x19, x0
    ac94:	adrp	x8, 44 ; 0x36000
    ac98:	ldrb	w8, [x8, #0x758]
    ac9c:	tbnz	w8, #0x0, 0xad20
    aca0:	adrp	x8, 44 ; 0x36000
    aca4:	ldr	x8, [x8, #0x750]
    aca8:	cmp	x8, #0x1
    acac:	b.ne	0xad20
    acb0:	adrp	x8, 44 ; 0x36000
    acb4:	ldr	x0, [x8, #0xf8]
    acb8:	adrp	x2, 40 ; 0x32000
    acbc:	add	x2, x2, #0x228 ; "headset.single"
    acc0:	bl	0x208a0
    acc4:	cbz	w0, 0xad20
    acc8:	adrp	x8, 44 ; 0x36000
    accc:	ldr	x20, [x8, #0x760]
    acd0:	mov	x0, #0x0
    acd4:	mov	w1, #0x7480
    acd8:	movk	w1, #0x1ad2, lsl #16
    acdc:	bl	0x1ff38 ; symbol stub for: _dispatch_time
    ace0:	adrp	x8, 40 ; 0x32000
    ace4:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    ace8:	str	x8, [sp, #0x8]
    acec:	adrp	x8, 24 ; 0x22000
    acf0:	ldr	d0, [x8, #0x938]
    acf4:	adrp	x8, 21 ; 0x1f000
    acf8:	add	x8, x8, #0x40
    acfc:	str	d0, [sp, #0x10]
    ad00:	adrp	x9, 34 ; 0x2c000
    ad04:	add	x9, x9, #0x4c0
    ad08:	stp	x8, x9, [sp, #0x18]
    ad0c:	str	x20, [sp, #0x28]
    ad10:	adrp	x1, 40 ; 0x32000
    ad14:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
    ad18:	add	x2, sp, #0x8
    ad1c:	bl	0x1fefc ; symbol stub for: _dispatch_after
    ad20:	mov	x0, x19
    ad24:	ldp	x29, x30, [sp, #0x40]
    ad28:	ldp	x20, x19, [sp, #0x30]
    ad2c:	add	sp, sp, #0x50
    ad30:	ret
    ad34:	stp	x22, x21, [sp, #-0x30]!
    ad38:	stp	x20, x19, [sp, #0x10]
    ad3c:	stp	x29, x30, [sp, #0x20]
    ad40:	add	x29, sp, #0x20
    ad44:	mov	x20, x1
    ad48:	mov	x21, x0
    ad4c:	mov	x0, x2
    ad50:	bl	0x200f4 ; symbol stub for: _objc_retain
    ad54:	mov	x19, x0
    ad58:	adrp	x8, 44 ; 0x36000
    ad5c:	ldr	x8, [x8, #0x278]
    ad60:	mov	x0, x21
    ad64:	mov	x1, x20
    ad68:	mov	x2, x19
    ad6c:	blr	x8
    ad70:	adrp	x8, 44 ; 0x36000
    ad74:	ldrb	w8, [x8, #0x531]
    ad78:	cmp	w8, #0x1
    ad7c:	b.ne	0xae28
    ad80:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    ad84:	adrp	x8, 44 ; 0x36000
    ad88:	ldr	d1, [x8, #0x150]
    ad8c:	fsub	d0, d0, d1
    ad90:	fmov	d1, #15.00000000
    ad94:	fcmp	d0, d1
    ad98:	b.mi	0xae28
    ad9c:	adrp	x8, 43 ; 0x35000
    ada0:	ldr	x20, [x8, #0x30]
    ada4:	mov	x0, x19
    ada8:	mov	x1, x20
    adac:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    adb0:	tbz	w0, #0x0, 0xadc4
    adb4:	mov	x0, x19
    adb8:	mov	x2, x20
    adbc:	bl	0x215e0
    adc0:	b	0xadc8
    adc4:	mov	x0, #0x0

; ===== sub_adc8 =====
    adc8:	bl	0x200f4 ; symbol stub for: _objc_retain
    adcc:	mov	x20, x0
    add0:	adrp	x8, 43 ; 0x35000
    add4:	ldr	x0, [x8, #0xa38] ; Objc class ref: bad class ref
    add8:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    addc:	mov	x1, x0
    ade0:	mov	x0, x20
    ade4:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    ade8:	tbz	w0, #0x0, 0xadfc
    adec:	adrp	x0, 39 ; 0x31000
    adf0:	add	x0, x0, #0x788 ; "notification.app:"
    adf4:	mov	x1, x20
    adf8:	bl	0x197b0
    adfc:	adrp	x8, 44 ; 0x36000
    ae00:	ldr	x0, [x8, #0xf8]
    ae04:	adrp	x2, 40 ; 0x32000
    ae08:	add	x2, x2, #0x248 ; "notification.any"
    ae0c:	bl	0x208a0
    ae10:	cbz	w0, 0xae20
    ae14:	adrp	x0, 40 ; 0x32000
    ae18:	add	x0, x0, #0x248 ; "notification.any"
    ae1c:	bl	0x4324
    ae20:	mov	x0, x20
    ae24:	bl	0x200e8 ; symbol stub for: _objc_release
    ae28:	mov	x0, x19
    ae2c:	ldp	x29, x30, [sp, #0x20]
    ae30:	ldp	x20, x19, [sp, #0x10]
    ae34:	ldp	x22, x21, [sp], #0x30
    ae38:	b	0x200e8 ; symbol stub for: _objc_release
    ae3c:	stp	x29, x30, [sp, #-0x10]!
    ae40:	mov	x29, sp
    ae44:	adrp	x8, 44 ; 0x36000
    ae48:	ldr	x8, [x8, #0x280]
    ae4c:	blr	x8
    ae50:	adrp	x8, 44 ; 0x36000
    ae54:	ldrb	w8, [x8, #0x5b8]
    ae58:	cmp	w8, #0x1
    ae5c:	b.ne	0xae68
    ae60:	ldp	x29, x30, [sp], #0x10
    ae64:	b	0x1f064
    ae68:	ldp	x29, x30, [sp], #0x10
    ae6c:	ret
    ae70:	stp	x20, x19, [sp, #-0x20]!
    ae74:	stp	x29, x30, [sp, #0x10]
    ae78:	add	x29, sp, #0x10
    ae7c:	mov	x19, x0
    ae80:	adrp	x8, 44 ; 0x36000
    ae84:	ldr	x8, [x8, #0x288]
    ae88:	blr	x8
    ae8c:	adrp	x8, 44 ; 0x36000
    ae90:	ldrb	w8, [x8, #0x5b8]
    ae94:	cmp	w8, #0x1
    ae98:	b.ne	0xaed8
    ae9c:	mov	x0, x19
    aea0:	bl	0x21080
    aea4:	mov	x19, x0
    aea8:	adrp	x0, 44 ; 0x36000
    aeac:	add	x0, x0, #0x5b9
    aeb0:	adrp	x2, 37 ; 0x2f000
    aeb4:	add	x2, x2, #0x1a8 ; "music.started"
    aeb8:	adrp	x3, 37 ; 0x2f000
    aebc:	add	x3, x3, #0x1c8 ; "music.stopped"
    aec0:	mov	x1, x19
    aec4:	bl	0x19714
    aec8:	cbz	w19, 0xaed8
    aecc:	ldp	x29, x30, [sp, #0x10]
    aed0:	ldp	x20, x19, [sp], #0x20
    aed4:	b	0x1f064
    aed8:	ldp	x29, x30, [sp, #0x10]
    aedc:	ldp	x20, x19, [sp], #0x20
    aee0:	ret
    aee4:	stp	x20, x19, [sp, #-0x20]!
    aee8:	stp	x29, x30, [sp, #0x10]
    aeec:	add	x29, sp, #0x10
    aef0:	mov	x19, x2
    aef4:	adrp	x8, 44 ; 0x36000
    aef8:	ldr	x8, [x8, #0x290]
    aefc:	blr	x8
    af00:	mov	x0, x19
    af04:	ldp	x29, x30, [sp, #0x10]
    af08:	ldp	x20, x19, [sp], #0x20
    af0c:	b	0x1f254
    af10:	stp	x20, x19, [sp, #-0x20]!
    af14:	stp	x29, x30, [sp, #0x10]
    af18:	add	x29, sp, #0x10
    af1c:	mov	x19, x2
    af20:	adrp	x8, 44 ; 0x36000
    af24:	ldr	x8, [x8, #0x298]
    af28:	blr	x8
    af2c:	mov	x0, x19
    af30:	ldp	x29, x30, [sp, #0x10]
    af34:	ldp	x20, x19, [sp], #0x20
    af38:	b	0x1f254
    af3c:	stp	x20, x19, [sp, #-0x20]!
    af40:	stp	x29, x30, [sp, #0x10]
    af44:	add	x29, sp, #0x10
    af48:	mov	x19, x2
    af4c:	adrp	x8, 44 ; 0x36000
    af50:	ldr	x8, [x8, #0x2a0]
    af54:	blr	x8
    af58:	mov	x0, x19
    af5c:	ldp	x29, x30, [sp, #0x10]
    af60:	ldp	x20, x19, [sp], #0x20
    af64:	b	0x1f254
    af68:	stp	x24, x23, [sp, #-0x40]!
    af6c:	stp	x22, x21, [sp, #0x10]
    af70:	stp	x20, x19, [sp, #0x20]
    af74:	stp	x29, x30, [sp, #0x30]
    af78:	add	x29, sp, #0x30
    af7c:	mov	x20, x1
    af80:	mov	x21, x0
    af84:	mov	x0, x2
    af88:	bl	0x200f4 ; symbol stub for: _objc_retain
    af8c:	mov	x19, x0
    af90:	adrp	x8, 44 ; 0x36000
    af94:	strb	wzr, [x8, #0x780]
    af98:	adrp	x22, 44 ; 0x36000
    af9c:	ldr	x0, [x22, #0xf8]
    afa0:	adrp	x2, 40 ; 0x32000
    afa4:	add	x2, x2, #0x348 ; "action.hold"
    afa8:	bl	0x208a0
    afac:	tbnz	w0, #0x0, 0xafd8
    afb0:	ldr	x0, [x22, #0xf8]
    afb4:	adrp	x2, 40 ; 0x32000
    afb8:	add	x2, x2, #0x368 ; "action.press"
    afbc:	bl	0x208a0
    afc0:	tbnz	w0, #0x0, 0xafd8
    afc4:	ldr	x0, [x22, #0xf8]
    afc8:	adrp	x2, 40 ; 0x32000
    afcc:	add	x2, x2, #0x388 ; "action.double"
    afd0:	bl	0x208a0
    afd4:	tbz	w0, #0x0, 0xb0a4
    afd8:	bl	0x1f3b4
    afdc:	mov	x0, x21
    afe0:	bl	0x200f4 ; symbol stub for: _objc_retain
    afe4:	mov	x21, x0
    afe8:	adrp	x1, 28 ; 0x26000
    afec:	add	x1, x1, #0xd77 ; literal pool for: "_buttonActiveAssertion"
    aff0:	bl	0x1f3f4
    aff4:	mov	x29, x29
    aff8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    affc:	mov	x22, x0
    b000:	bl	0x200e8 ; symbol stub for: _objc_release
    b004:	cbnz	x22, 0xb060
    b008:	adrp	x1, 27 ; 0x26000
    b00c:	add	x1, x1, #0xd8e ; literal pool for: "_systemActionPreviewingAssertion"
    b010:	mov	x0, x21
    b014:	bl	0x1f3f4
    b018:	mov	x29, x29
    b01c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    b020:	mov	x22, x0
    b024:	adrp	x1, 27 ; 0x26000
    b028:	add	x1, x1, #0xdaf ; literal pool for: "_systemActionPerformedInteractionAssertion"
    b02c:	mov	x0, x21
    b030:	bl	0x1f3f4
    b034:	mov	x29, x29
    b038:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    b03c:	mov	x23, x0
    b040:	orr	x8, x22, x0
    b044:	cbz	x8, 0xb050
    b048:	mov	x0, x21
    b04c:	bl	0x1f454
    b050:	mov	x0, x23
    b054:	bl	0x200e8 ; symbol stub for: _objc_release
    b058:	mov	x0, x22
    b05c:	bl	0x200e8 ; symbol stub for: _objc_release
    b060:	mov	x0, x21
    b064:	bl	0x200e8 ; symbol stub for: _objc_release
    b068:	adrp	x8, 43 ; 0x36000
    b06c:	ldr	x8, [x8, #0x2a8]
    b070:	mov	x0, x21
    b074:	mov	x1, x20
    b078:	mov	x2, x19
    b07c:	blr	x8
    b080:	adrp	x0, 27 ; 0x26000
    b084:	add	x0, x0, #0xd39 ; literal pool for: "/var/tmp/com.johndie.triggr.actionbutton"
    b088:	bl	0x20220 ; symbol stub for: _unlink

; ===== sub_b08c =====
    b08c:	mov	x0, x19
    b090:	ldp	x29, x30, [sp, #0x30]
    b094:	ldp	x20, x19, [sp, #0x20]
    b098:	ldp	x22, x21, [sp, #0x10]
    b09c:	ldp	x24, x23, [sp], #0x40
    b0a0:	b	0x200e8 ; symbol stub for: _objc_release
    b0a4:	adrp	x8, 43 ; 0x36000
    b0a8:	ldr	x8, [x8, #0x2a8]
    b0ac:	mov	x0, x21
    b0b0:	mov	x1, x20
    b0b4:	mov	x2, x19
    b0b8:	blr	x8
    b0bc:	b	0xb08c
    b0c0:	stp	x22, x21, [sp, #-0x30]!
    b0c4:	stp	x20, x19, [sp, #0x10]
    b0c8:	stp	x29, x30, [sp, #0x20]
    b0cc:	add	x29, sp, #0x20
    b0d0:	mov	x20, x1
    b0d4:	mov	x21, x0
    b0d8:	mov	x0, x2
    b0dc:	bl	0x200f4 ; symbol stub for: _objc_retain
    b0e0:	mov	x19, x0
    b0e4:	adrp	x8, 43 ; 0x36000
    b0e8:	ldr	x0, [x8, #0xf8]
    b0ec:	adrp	x2, 39 ; 0x32000
    b0f0:	add	x2, x2, #0x348 ; "action.hold"
    b0f4:	bl	0x208a0
    b0f8:	cbz	w0, 0xb118
    b0fc:	adrp	x8, 43 ; 0x36000
    b100:	mov	w9, #0x1
    b104:	strb	w9, [x8, #0x780]
    b108:	adrp	x0, 39 ; 0x32000
    b10c:	add	x0, x0, #0x348 ; "action.hold"
    b110:	bl	0x4324
    b114:	b	0xb130
    b118:	adrp	x8, 43 ; 0x36000
    b11c:	ldr	x8, [x8, #0x2b0]
    b120:	mov	x0, x21
    b124:	mov	x1, x20
    b128:	mov	x2, x19
    b12c:	blr	x8

; ===== sub_b130 =====
    b130:	mov	x0, x19
    b134:	ldp	x29, x30, [sp, #0x20]
    b138:	ldp	x20, x19, [sp, #0x10]
    b13c:	ldp	x22, x21, [sp], #0x30
    b140:	b	0x200e8 ; symbol stub for: _objc_release
    b144:	sub	sp, sp, #0xb0
    b148:	stp	x28, x27, [sp, #0x50]
    b14c:	stp	x26, x25, [sp, #0x60]
    b150:	stp	x24, x23, [sp, #0x70]
    b154:	stp	x22, x21, [sp, #0x80]
    b158:	stp	x20, x19, [sp, #0x90]
    b15c:	stp	x29, x30, [sp, #0xa0]
    b160:	add	x29, sp, #0xa0
    b164:	mov	x21, x1
    b168:	mov	x23, x0
    b16c:	mov	x0, x2
    b170:	bl	0x200f4 ; symbol stub for: _objc_retain
    b174:	mov	x19, x0
    b178:	adrp	x8, 43 ; 0x36000
    b17c:	ldrb	w24, [x8, #0x780]
    b180:	strb	wzr, [x8, #0x780]
    b184:	adrp	x22, 43 ; 0x36000
    b188:	ldr	x0, [x22, #0xf8]
    b18c:	adrp	x2, 39 ; 0x32000
    b190:	add	x2, x2, #0x368 ; "action.press"
    b194:	bl	0x208a0
    b198:	mov	x20, x0
    b19c:	ldr	x0, [x22, #0xf8]
    b1a0:	adrp	x2, 39 ; 0x32000
    b1a4:	add	x2, x2, #0x388 ; "action.double"
    b1a8:	bl	0x208a0
    b1ac:	mov	x22, x0
    b1b0:	tbnz	w24, #0x0, 0xb1d8
    b1b4:	tbnz	w20, #0x0, 0xb1d8
    b1b8:	tbnz	w22, #0x0, 0xb1d8
    b1bc:	adrp	x8, 43 ; 0x36000
    b1c0:	ldr	x8, [x8, #0x2b8]
    b1c4:	mov	x0, x23
    b1c8:	mov	x1, x21
    b1cc:	mov	x2, x19
    b1d0:	blr	x8
    b1d4:	b	0xb32c
    b1d8:	bl	0x1f3b4
    b1dc:	mov	x0, x23
    b1e0:	bl	0x200f4 ; symbol stub for: _objc_retain
    b1e4:	adrp	x25, 39 ; 0x32000
    b1e8:	ldr	x25, [x25, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    b1ec:	str	x25, [sp, #0x28]
    b1f0:	adrp	x8, 23 ; 0x22000
    b1f4:	ldr	d0, [x8, #0x8f8]
    b1f8:	adrp	x8, 20 ; 0x1f000
    b1fc:	add	x8, x8, #0x584
    b200:	adrp	x9, 33 ; 0x2c000
    b204:	add	x9, x9, #0xb0
    b208:	str	d0, [sp, #0x30]
    b20c:	stp	x8, x9, [sp, #0x38]
    b210:	str	x0, [sp, #0x48]
    b214:	adrp	x8, 43 ; 0x36000
    b218:	ldr	x26, [x8, #0x790]
    b21c:	bl	0x200f4 ; symbol stub for: _objc_retain
    b220:	mov	x23, x0
    b224:	cmn	x26, #0x1
    b228:	b.ne	0xb354
    b22c:	mov	x0, x23

; ===== sub_b230 =====
    b230:	adrp	x8, 43 ; 0x36000
    b234:	ldr	x26, [x8, #0xe8]
    b238:	bl	0x200e8 ; symbol stub for: _objc_release
    b23c:	mov	x0, x23
    b240:	bl	0x200e8 ; symbol stub for: _objc_release
    b244:	cbz	x23, 0xb280
    b248:	tbnz	x26, #0x3f, 0xb280
    b24c:	ldrb	w27, [x23, x26]
    b250:	mov	w8, #0x1
    b254:	strb	w8, [x23, x26]
    b258:	adrp	x8, 43 ; 0x36000
    b25c:	ldr	x8, [x8, #0x2b8]
    b260:	mov	x0, x23
    b264:	mov	x1, x21
    b268:	mov	x2, x19
    b26c:	blr	x8
    b270:	strb	w27, [x23, x26]
    b274:	mov	x0, x23
    b278:	bl	0x1f454
    b27c:	b	0xb298
    b280:	adrp	x8, 43 ; 0x36000
    b284:	ldr	x8, [x8, #0x2b8]
    b288:	mov	x0, x23
    b28c:	mov	x1, x21
    b290:	mov	x2, x19
    b294:	blr	x8

; ===== sub_b298 =====
    b298:	adrp	x0, 27 ; 0x26000
    b29c:	add	x0, x0, #0xd39 ; literal pool for: "/var/tmp/com.johndie.triggr.actionbutton"
    b2a0:	bl	0x20220 ; symbol stub for: _unlink
    b2a4:	tbnz	w24, #0x0, 0xb32c
    b2a8:	tbz	w22, #0x0, 0xb2d4
    b2ac:	adrp	x8, 43 ; 0x36000
    b2b0:	ldr	x9, [x8, #0x788]
    b2b4:	add	x9, x9, #0x1
    b2b8:	str	x9, [x8, #0x788]
    b2bc:	cmp	x9, #0x2
    b2c0:	b.lo	0xb2e4
    b2c4:	str	xzr, [x8, #0x788]
    b2c8:	adrp	x0, 39 ; 0x32000
    b2cc:	add	x0, x0, #0x388 ; "action.double"
    b2d0:	b	0xb2dc
    b2d4:	adrp	x0, 39 ; 0x32000
    b2d8:	add	x0, x0, #0x368 ; "action.press"

; ===== sub_b2dc =====
    b2dc:	bl	0x4324
    b2e0:	b	0xb32c
    b2e4:	mov	x0, #0x0
    b2e8:	mov	w1, #0x9380
    b2ec:	movk	w1, #0x14dc, lsl #16
    b2f0:	bl	0x1ff38 ; symbol stub for: _dispatch_time
    b2f4:	str	x25, [sp]
    b2f8:	adrp	x8, 23 ; 0x22000
    b2fc:	ldr	d0, [x8, #0x938]
    b300:	adrp	x8, 20 ; 0x1f000
    b304:	add	x8, x8, #0x554
    b308:	str	d0, [sp, #0x8]
    b30c:	adrp	x9, 33 ; 0x2c000
    b310:	add	x9, x9, #0x30
    b314:	stp	x8, x9, [sp, #0x10]
    b318:	strb	w20, [sp, #0x20]
    b31c:	adrp	x1, 39 ; 0x32000
    b320:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
    b324:	mov	x2, sp
    b328:	bl	0x1fefc ; symbol stub for: _dispatch_after

; ===== sub_b32c =====
    b32c:	mov	x0, x19
    b330:	bl	0x200e8 ; symbol stub for: _objc_release
    b334:	ldp	x29, x30, [sp, #0xa0]
    b338:	ldp	x20, x19, [sp, #0x90]
    b33c:	ldp	x22, x21, [sp, #0x80]
    b340:	ldp	x24, x23, [sp, #0x70]
    b344:	ldp	x26, x25, [sp, #0x60]
    b348:	ldp	x28, x27, [sp, #0x50]
    b34c:	add	sp, sp, #0xb0
    b350:	ret
    b354:	adrp	x0, 43 ; 0x36000
    b358:	add	x0, x0, #0x790
    b35c:	add	x1, sp, #0x28
    b360:	bl	0x1ff20 ; symbol stub for: _dispatch_once
    b364:	ldr	x0, [sp, #0x48]
    b368:	b	0xb230
    b36c:	stp	x22, x21, [sp, #-0x30]!
    b370:	stp	x20, x19, [sp, #0x10]
    b374:	stp	x29, x30, [sp, #0x20]
    b378:	add	x29, sp, #0x20
    b37c:	mov	x19, x1
    b380:	mov	x21, x0
    b384:	mov	x0, x2
    b388:	bl	0x200f4 ; symbol stub for: _objc_retain
    b38c:	mov	x20, x0
    b390:	adrp	x8, 43 ; 0x36000
    b394:	ldr	x0, [x8, #0xf8]
    b398:	adrp	x2, 39 ; 0x32000
    b39c:	add	x2, x2, #0x3c8 ; "homebar.doubletap"
    b3a0:	bl	0x208a0
    b3a4:	cbz	w0, 0xb3b0
    b3a8:	bl	0x1f5ec
    b3ac:	tbnz	w0, #0x0, 0xb3c8
    b3b0:	adrp	x8, 43 ; 0x36000
    b3b4:	ldr	x8, [x8, #0x2c0]
    b3b8:	mov	x0, x21
    b3bc:	mov	x1, x19
    b3c0:	mov	x2, x20
    b3c4:	blr	x8
    b3c8:	mov	x0, x20
    b3cc:	ldp	x29, x30, [sp, #0x20]
    b3d0:	ldp	x20, x19, [sp, #0x10]
    b3d4:	ldp	x22, x21, [sp], #0x30
    b3d8:	b	0x200e8 ; symbol stub for: _objc_release
    b3dc:	stp	x22, x21, [sp, #-0x30]!
    b3e0:	stp	x20, x19, [sp, #0x10]
    b3e4:	stp	x29, x30, [sp, #0x20]
    b3e8:	add	x29, sp, #0x20
    b3ec:	mov	x19, x1
    b3f0:	mov	x21, x0
    b3f4:	mov	x0, x2
    b3f8:	bl	0x200f4 ; symbol stub for: _objc_retain
    b3fc:	mov	x20, x0
    b400:	bl	0x1f650
    b404:	tbnz	w0, #0x0, 0xb420
    b408:	adrp	x8, 43 ; 0x36000
    b40c:	ldr	x8, [x8, #0x2c8]
    b410:	mov	x0, x21
    b414:	mov	x1, x19
    b418:	mov	x2, x20
    b41c:	blr	x8
    b420:	mov	x0, x20
    b424:	ldp	x29, x30, [sp, #0x20]
    b428:	ldp	x20, x19, [sp, #0x10]
    b42c:	ldp	x22, x21, [sp], #0x30
    b430:	b	0x200e8 ; symbol stub for: _objc_release
    b434:	stp	x22, x21, [sp, #-0x30]!
    b438:	stp	x20, x19, [sp, #0x10]
    b43c:	stp	x29, x30, [sp, #0x20]
    b440:	add	x29, sp, #0x20
    b444:	mov	x19, x1
    b448:	mov	x21, x0
    b44c:	mov	x0, x2
    b450:	bl	0x200f4 ; symbol stub for: _objc_retain
    b454:	mov	x20, x0
    b458:	bl	0x1f650
    b45c:	tbnz	w0, #0x0, 0xb478
    b460:	adrp	x8, 43 ; 0x36000
    b464:	ldr	x8, [x8, #0x2d0]
    b468:	mov	x0, x21
    b46c:	mov	x1, x19
    b470:	mov	x2, x20
    b474:	blr	x8
    b478:	mov	x0, x20
    b47c:	ldp	x29, x30, [sp, #0x20]
    b480:	ldp	x20, x19, [sp, #0x10]
    b484:	ldp	x22, x21, [sp], #0x30
    b488:	b	0x200e8 ; symbol stub for: _objc_release
    b48c:	sub	sp, sp, #0x180
    b490:	stp	d9, d8, [sp, #0x110]
    b494:	stp	x28, x27, [sp, #0x120]
    b498:	stp	x26, x25, [sp, #0x130]
    b49c:	stp	x24, x23, [sp, #0x140]
    b4a0:	stp	x22, x21, [sp, #0x150]
    b4a4:	stp	x20, x19, [sp, #0x160]
    b4a8:	stp	x29, x30, [sp, #0x170]
    b4ac:	add	x29, sp, #0x170
    b4b0:	mov	x19, x1
    b4b4:	mov	x21, x0
    b4b8:	adrp	x8, 39 ; 0x32000
    b4bc:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    b4c0:	ldr	x8, [x8]
    b4c4:	stur	x8, [x29, #-0x70]
    b4c8:	mov	x0, x2
    b4cc:	bl	0x200f4 ; symbol stub for: _objc_retain
    b4d0:	mov	x20, x0
    b4d4:	adrp	x22, 43 ; 0x36000
    b4d8:	ldr	x0, [x22, #0xf8]
    b4dc:	adrp	x2, 39 ; 0x32000
    b4e0:	add	x2, x2, #0x3c8 ; "homebar.doubletap"
    b4e4:	bl	0x208a0
    b4e8:	cbz	w0, 0xb76c
    b4ec:	mov	x0, x21
    b4f0:	bl	0x200f4 ; symbol stub for: _objc_retain
    b4f4:	mov	x23, x0
    b4f8:	mov	x0, x20
    b4fc:	bl	0x200f4 ; symbol stub for: _objc_retain
    b500:	str	x0, [sp, #0x38]
    b504:	mov	x0, x23
    b508:	bl	0x2016c ; symbol stub for: _object_getClass
    b50c:	adrp	x1, 27 ; 0x26000
    b510:	add	x1, x1, #0xe12 ; literal pool for: "_registeredGrabbers"
    b514:	bl	0x1fed8 ; symbol stub for: _class_getInstanceVariable
    b518:	cbz	x0, 0xb538
    b51c:	mov	x1, x0
    b520:	mov	x0, x23
    b524:	bl	0x20178 ; symbol stub for: _object_getIvar
    b528:	mov	x29, x29
    b52c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    b530:	mov	x24, x0
    b534:	b	0xb53c
    b538:	mov	x24, #0x0

; ===== sub_b53c =====
    b53c:	adrp	x8, 42 ; 0x35000
    b540:	ldr	x0, [x8, #0xbf8] ; Objc class ref: bad class ref
    b544:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    b548:	mov	x1, x0
    b54c:	mov	x0, x24
    b550:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    b554:	tbz	w0, #0x0, 0xb724
    b558:	mov	x0, x24
    b55c:	bl	0x20960
    b560:	cbz	x0, 0xb724
    b564:	stp	x23, x21, [sp, #0x10]
    b568:	stp	x20, x19, [sp, #0x20]
    b56c:	movi.16b	v0, #0x0
    b570:	stp	q0, q0, [sp, #0x40]
    b574:	stp	q0, q0, [sp, #0x60]
    b578:	str	x24, [sp, #0x8]
    b57c:	mov	x0, x24
    b580:	bl	0x20480
    b584:	mov	x29, x29
    b588:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    b58c:	mov	x25, x0
    b590:	add	x2, sp, #0x40
    b594:	add	x3, sp, #0x80
    b598:	mov	w4, #0x10
    b59c:	bl	0x20980
    b5a0:	cbz	x0, 0xb740
    b5a4:	mov	x28, x0
    b5a8:	mov	w23, #0x0
    b5ac:	adrp	x8, 42 ; 0x35000
    b5b0:	ldr	x26, [x8, #0x38]
    b5b4:	adrp	x8, 42 ; 0x35000
    b5b8:	ldr	x27, [x8, #0x40]
    b5bc:	adrp	x8, 42 ; 0x35000
    b5c0:	ldr	x8, [x8, #0x48]
    b5c4:	str	x8, [sp, #0x30]
    b5c8:	ldr	x8, [sp, #0x50]
    b5cc:	ldr	x24, [x8]
    b5d0:	adrp	x20, 42 ; 0x35000
    b5d4:	mov	x19, #0x0
    b5d8:	ldr	x8, [sp, #0x50]
    b5dc:	ldr	x8, [x8]
    b5e0:	cmp	x8, x24
    b5e4:	b.eq	0xb5f0
    b5e8:	mov	x0, x25
    b5ec:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    b5f0:	ldr	x8, [sp, #0x48]
    b5f4:	ldr	x21, [x8, x19, lsl #3]
    b5f8:	ldr	x0, [x20, #0xac0]
    b5fc:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    b600:	mov	x1, x0
    b604:	mov	x0, x21
    b608:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    b60c:	tbz	w0, #0x0, 0xb6c0
    b610:	mov	x0, x21
    b614:	bl	0x22440
    b618:	mov	x29, x29
    b61c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    b620:	mov	x22, x0
    b624:	bl	0x200e8 ; symbol stub for: _objc_release
    b628:	cbz	x22, 0xb6c0
    b62c:	ldr	x0, [sp, #0x38]
    b630:	mov	x2, x21
    b634:	bl	0x21200
    b638:	mov.16b	v9, v0
    b63c:	mov.16b	v8, v1
    b640:	mov	x0, x21
    b644:	mov	x1, x26
    b648:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    b64c:	mov	x1, x26
    b650:	tbnz	w0, #0x0, 0xb668
    b654:	mov	x0, x21
    b658:	mov	x1, x27
    b65c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    b660:	mov	x1, x27
    b664:	tbz	w0, #0x0, 0xb684
    b668:	cbz	x1, 0xb684
    b66c:	mov	x0, x21
    b670:	mov.16b	v0, v9
    b674:	mov.16b	v1, v8
    b678:	bl	0x200a0 ; symbol stub for: _objc_msgSend
    b67c:	tbnz	w0, #0x0, 0xb740
    b680:	b	0xb6bc
    b684:	mov	x0, x21
    b688:	ldr	x1, [sp, #0x30]
    b68c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    b690:	tbz	w0, #0x0, 0xb6c0
    b694:	mov	x0, x21
    b698:	ldr	x1, [sp, #0x30]
    b69c:	bl	0x200a0 ; symbol stub for: _objc_msgSend
    b6a0:	fmov	d4, #-24.00000000
    b6a4:	fmov	d5, #-14.00000000
    b6a8:	bl	0x1fde8 ; symbol stub for: _CGRectInset
    b6ac:	mov.16b	v4, v9
    b6b0:	mov.16b	v5, v8
    b6b4:	bl	0x1fdc4 ; symbol stub for: _CGRectContainsPoint
    b6b8:	tbnz	w0, #0x0, 0xb740

; ===== sub_b6bc =====
    b6bc:	mov	w23, #0x1
    b6c0:	add	x19, x19, #0x1
    b6c4:	cmp	x28, x19
    b6c8:	b.ne	0xb5d8
    b6cc:	add	x2, sp, #0x40
    b6d0:	add	x3, sp, #0x80
    b6d4:	mov	x0, x25
    b6d8:	mov	w4, #0x10
    b6dc:	bl	0x20980
    b6e0:	mov	x28, x0
    b6e4:	cbnz	x0, 0xb5d4
    b6e8:	mov	x0, x25
    b6ec:	bl	0x200e8 ; symbol stub for: _objc_release
    b6f0:	ldr	x0, [sp, #0x8]
    b6f4:	bl	0x200e8 ; symbol stub for: _objc_release
    b6f8:	ldr	x0, [sp, #0x38]
    b6fc:	bl	0x200e8 ; symbol stub for: _objc_release
    b700:	ldr	x0, [sp, #0x10]
    b704:	bl	0x200e8 ; symbol stub for: _objc_release
    b708:	ldp	x20, x19, [sp, #0x20]
    b70c:	ldr	x21, [sp, #0x18]
    b710:	adrp	x22, 43 ; 0x36000
    b714:	tbz	w23, #0x0, 0xb76c
    b718:	adrp	x8, 43 ; 0x36000
    b71c:	str	xzr, [x8, #0x7a0]
    b720:	b	0xb7c0
    b724:	mov	x0, x24
    b728:	bl	0x200e8 ; symbol stub for: _objc_release
    b72c:	ldr	x0, [sp, #0x38]
    b730:	bl	0x200e8 ; symbol stub for: _objc_release
    b734:	mov	x0, x23
    b738:	bl	0x200e8 ; symbol stub for: _objc_release
    b73c:	b	0xb76c
    b740:	mov	x0, x25
    b744:	bl	0x200e8 ; symbol stub for: _objc_release
    b748:	ldr	x0, [sp, #0x8]
    b74c:	bl	0x200e8 ; symbol stub for: _objc_release
    b750:	ldr	x0, [sp, #0x38]
    b754:	bl	0x200e8 ; symbol stub for: _objc_release
    b758:	ldr	x0, [sp, #0x10]
    b75c:	bl	0x200e8 ; symbol stub for: _objc_release
    b760:	ldp	x20, x19, [sp, #0x20]
    b764:	ldr	x21, [sp, #0x18]
    b768:	adrp	x22, 43 ; 0x36000

; ===== sub_b76c =====
    b76c:	adrp	x8, 42 ; 0x35000
    b770:	ldr	x0, [x8, #0xa10] ; Objc class ref: bad class ref
    b774:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    b778:	mov	x1, x0
    b77c:	mov	x0, x20
    b780:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    b784:	tbz	w0, #0x0, 0xb7b8
    b788:	mov	x0, x20
    b78c:	bl	0x213a0
    b790:	cmp	x0, #0x2
    b794:	b.ne	0xb7b8
    b798:	ldr	x0, [x22, #0xf8]
    b79c:	adrp	x2, 39 ; 0x32000
    b7a0:	add	x2, x2, #0x3c8 ; "homebar.doubletap"
    b7a4:	bl	0x208a0
    b7a8:	cbz	w0, 0xb7c0
    b7ac:	bl	0x1f5ec
    b7b0:	tbz	w0, #0x0, 0xb7c0
    b7b4:	b	0xb7d8
    b7b8:	bl	0x1f650
    b7bc:	tbnz	w0, #0x0, 0xb7d8

; ===== sub_b7c0 =====
    b7c0:	adrp	x8, 43 ; 0x36000
    b7c4:	ldr	x8, [x8, #0x2d8]
    b7c8:	mov	x0, x21
    b7cc:	mov	x1, x19
    b7d0:	mov	x2, x20
    b7d4:	blr	x8

; ===== sub_b7d8 =====
    b7d8:	mov	x0, x20
    b7dc:	bl	0x200e8 ; symbol stub for: _objc_release
    b7e0:	ldur	x8, [x29, #-0x70]
    b7e4:	adrp	x9, 39 ; 0x32000
    b7e8:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    b7ec:	ldr	x9, [x9]
    b7f0:	cmp	x9, x8
    b7f4:	b.ne	0xb81c
    b7f8:	ldp	x29, x30, [sp, #0x170]
    b7fc:	ldp	x20, x19, [sp, #0x160]
    b800:	ldp	x22, x21, [sp, #0x150]
    b804:	ldp	x24, x23, [sp, #0x140]
    b808:	ldp	x26, x25, [sp, #0x130]
    b80c:	ldp	x28, x27, [sp, #0x120]
    b810:	ldp	d9, d8, [sp, #0x110]
    b814:	add	sp, sp, #0x180
    b818:	ret
    b81c:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
    b820:	stp	d9, d8, [sp, #-0x50]!
    b824:	stp	x24, x23, [sp, #0x10]
    b828:	stp	x22, x21, [sp, #0x20]
    b82c:	stp	x20, x19, [sp, #0x30]
    b830:	stp	x29, x30, [sp, #0x40]
    b834:	add	x29, sp, #0x40
    b838:	mov	x20, x1
    b83c:	mov	x22, x0
    b840:	mov	x0, x2
    b844:	bl	0x200f4 ; symbol stub for: _objc_retain
    b848:	mov	x19, x0
    b84c:	adrp	x8, 43 ; 0x36000
    b850:	ldr	x8, [x8, #0x2e0]
    b854:	mov	x0, x22
    b858:	mov	x1, x20
    b85c:	mov	x2, x19
    b860:	blr	x8
    b864:	mov	x0, x19
    b868:	bl	0x22340
    b86c:	cbnz	x0, 0xb9b0
    b870:	adrp	x8, 43 ; 0x36000
    b874:	ldr	x8, [x8, #0x340]
    b878:	cbz	x8, 0xb9b0
    b87c:	bl	0x19150
    b880:	cbz	w0, 0xb9b0
    b884:	mov	x0, x19
    b888:	bl	0x204c0
    b88c:	mov	x29, x29
    b890:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    b894:	mov	x21, x0
    b898:	bl	0x20540
    b89c:	mov	x29, x29
    b8a0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    b8a4:	mov	x20, x0
    b8a8:	mov	x0, x21
    b8ac:	bl	0x200e8 ; symbol stub for: _objc_release
    b8b0:	mov	x0, x19
    b8b4:	bl	0x204c0
    b8b8:	mov	x29, x29
    b8bc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    b8c0:	mov	x21, x0
    b8c4:	bl	0x20960
    b8c8:	cmp	x0, #0x1
    b8cc:	b.ne	0xb9a0
    b8d0:	mov	x0, x20
    b8d4:	bl	0x21620
    b8d8:	cmp	x0, #0x3
    b8dc:	b.ne	0xb9a0
    b8e0:	mov	x0, x20
    b8e4:	bl	0x221e0
    b8e8:	mov	x23, x0
    b8ec:	mov	x0, x21
    b8f0:	bl	0x200e8 ; symbol stub for: _objc_release
    b8f4:	cmp	x23, #0x2
    b8f8:	b.lo	0xb9a8
    b8fc:	mov	x0, x22
    b900:	bl	0x200f4 ; symbol stub for: _objc_retain
    b904:	mov	x21, x0
    b908:	bl	0x22460
    b90c:	mov	x29, x29
    b910:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    b914:	mov	x22, x0
    b918:	bl	0x22000
    b91c:	mov	x29, x29
    b920:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    b924:	mov	x23, x0
    b928:	bl	0x21fe0
    b92c:	fcmp	d3, #0.0
    b930:	mov	x8, #0x404b000000000000
    b934:	fmov	d0, x8
    b938:	fcsel	d9, d3, d0, ne
    b93c:	mov	x0, x23
    b940:	bl	0x200e8 ; symbol stub for: _objc_release
    b944:	mov	x0, x22
    b948:	bl	0x200e8 ; symbol stub for: _objc_release
    b94c:	mov	x0, x20
    b950:	mov	x2, x21
    b954:	bl	0x21200
    b958:	fcmp	d1, d9
    b95c:	b.gt	0xb9a0
    b960:	mov.16b	v8, v0
    b964:	mov	x0, x21
    b968:	bl	0x20620
    b96c:	fmov	d0, #0.50000000
    b970:	fmul	d0, d2, d0
    b974:	fcmp	d8, d0
    b978:	mov	w8, #0x2
    b97c:	csinc	x8, x8, xzr, pl
    b980:	fcmp	d2, #0.0
    b984:	fmov	d0, xzr
    b988:	fccmp	d8, d0, #0x8, hi
    b98c:	csel	x0, xzr, x8, mi
    b990:	bl	0x8348
    b994:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
    b998:	adrp	x8, 43 ; 0x36000
    b99c:	str	d0, [x8, #0x5e8]
    b9a0:	mov	x0, x21
    b9a4:	bl	0x200e8 ; symbol stub for: _objc_release
    b9a8:	mov	x0, x20
    b9ac:	bl	0x200e8 ; symbol stub for: _objc_release
    b9b0:	mov	x0, x19
    b9b4:	ldp	x29, x30, [sp, #0x40]
    b9b8:	ldp	x20, x19, [sp, #0x30]
    b9bc:	ldp	x22, x21, [sp, #0x20]
    b9c0:	ldp	x24, x23, [sp, #0x10]
    b9c4:	ldp	d9, d8, [sp], #0x50
    b9c8:	b	0x200e8 ; symbol stub for: _objc_release
    b9cc:	stp	x20, x19, [sp, #-0x20]!
    b9d0:	stp	x29, x30, [sp, #0x10]
    b9d4:	add	x29, sp, #0x10
    b9d8:	mov	x19, x0
    b9dc:	adrp	x8, 43 ; 0x36000
    b9e0:	ldr	x8, [x8, #0x2e8]
    b9e4:	blr	x8
    b9e8:	mov	x0, x19
    b9ec:	ldp	x29, x30, [sp, #0x10]
    b9f0:	ldp	x20, x19, [sp], #0x20
    b9f4:	b	0x1f6ac
    b9f8:	stp	x20, x19, [sp, #-0x20]!
    b9fc:	stp	x29, x30, [sp, #0x10]
    ba00:	add	x29, sp, #0x10
    ba04:	mov	x19, x0
    ba08:	adrp	x8, 43 ; 0x36000
    ba0c:	ldr	x8, [x8, #0x2f0]
    ba10:	blr	x8
    ba14:	mov	x0, x19
    ba18:	ldp	x29, x30, [sp, #0x10]
    ba1c:	ldp	x20, x19, [sp], #0x20
    ba20:	b	0x1f6ac
    ba24:	stp	x22, x21, [sp, #-0x30]!
    ba28:	stp	x20, x19, [sp, #0x10]
    ba2c:	stp	x29, x30, [sp, #0x20]
    ba30:	add	x29, sp, #0x20
    ba34:	mov	x19, x1
    ba38:	mov	x20, x0
    ba3c:	mov	x0, x2
    ba40:	bl	0x200f4 ; symbol stub for: _objc_retain
    ba44:	mov	x21, x0
    ba48:	bl	0x1ef38
    ba4c:	adrp	x8, 43 ; 0x36000
    ba50:	ldr	x8, [x8, #0x2f8]
    ba54:	mov	x0, x20
    ba58:	mov	x1, x19
    ba5c:	mov	x2, x21
    ba60:	blr	x8
    ba64:	mov	x0, x21
    ba68:	ldp	x29, x30, [sp, #0x20]
    ba6c:	ldp	x20, x19, [sp, #0x10]
    ba70:	ldp	x22, x21, [sp], #0x30
    ba74:	b	0x200e8 ; symbol stub for: _objc_release

; ===== sub_ba78 =====
    ba78:	sub	sp, sp, #0x60
    ba7c:	stp	x22, x21, [sp, #0x30]
    ba80:	stp	x20, x19, [sp, #0x40]
    ba84:	stp	x29, x30, [sp, #0x50]
    ba88:	add	x29, sp, #0x50
    ba8c:	mov	x20, x0
    ba90:	mov	x0, x1
    ba94:	bl	0x200f4 ; symbol stub for: _objc_retain
    ba98:	mov	x19, x0
    ba9c:	adrp	x8, 42 ; 0x35000
    baa0:	ldr	x0, [x8, #0xa58] ; Objc class ref: bad class ref
    baa4:	mov	x2, x20
    baa8:	bl	0x20260
    baac:	mov	x29, x29
    bab0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    bab4:	mov	x20, x0
    bab8:	cbz	x0, 0xbb38
    babc:	adrp	x8, 42 ; 0x35000
    bac0:	ldr	x0, [x8, #0xa60] ; Objc class ref: bad class ref
    bac4:	bl	0x21f00
    bac8:	mov	x29, x29
    bacc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    bad0:	mov	x21, x0
    bad4:	adrp	x8, 39 ; 0x32000
    bad8:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    badc:	str	x8, [sp, #0x8]
    bae0:	adrp	x8, 23 ; 0x22000
    bae4:	ldr	d0, [x8, #0x8f8]
    bae8:	str	d0, [sp, #0x10]
    baec:	adrp	x8, 0 ; 0xb000
    baf0:	add	x8, x8, #0xce8
    baf4:	adrp	x9, 33 ; 0x2c000
    baf8:	add	x9, x9, #0x2e0
    bafc:	stp	x8, x9, [sp, #0x18]
    bb00:	mov	x0, x19
    bb04:	bl	0x200f4 ; symbol stub for: _objc_retain
    bb08:	str	x0, [sp, #0x28]
    bb0c:	adrp	x3, 39 ; 0x32000
    bb10:	ldr	x3, [x3, #0xd30] ; literal pool symbol address: ___NSDictionary0__struct
    bb14:	add	x4, sp, #0x8
    bb18:	mov	x0, x21
    bb1c:	mov	x2, x20
    bb20:	bl	0x21540
    bb24:	mov	x0, x21
    bb28:	bl	0x200e8 ; symbol stub for: _objc_release
    bb2c:	ldr	x0, [sp, #0x28]
    bb30:	bl	0x200e8 ; symbol stub for: _objc_release
    bb34:	b	0xbb48
    bb38:	cbz	x19, 0xbb48
    bb3c:	mov	x0, x19
    bb40:	mov	w1, #0x0
    bb44:	bl	0xbb6c

; ===== sub_bb48 =====
    bb48:	mov	x0, x20
    bb4c:	bl	0x200e8 ; symbol stub for: _objc_release
    bb50:	mov	x0, x19
    bb54:	bl	0x200e8 ; symbol stub for: _objc_release
    bb58:	ldp	x29, x30, [sp, #0x50]
    bb5c:	ldp	x20, x19, [sp, #0x40]
    bb60:	ldp	x22, x21, [sp, #0x30]
    bb64:	add	sp, sp, #0x60
    bb68:	ret

; ===== sub_bb6c =====
    bb6c:	sub	sp, sp, #0x70
    bb70:	stp	x24, x23, [sp, #0x30]
    bb74:	stp	x22, x21, [sp, #0x40]
    bb78:	stp	x20, x19, [sp, #0x50]
    bb7c:	stp	x29, x30, [sp, #0x60]
    bb80:	add	x29, sp, #0x60
    bb84:	mov	x23, x1
    bb88:	bl	0x200f4 ; symbol stub for: _objc_retain
    bb8c:	mov	x19, x0
    bb90:	adrp	x8, 42 ; 0x35000
    bb94:	ldr	x0, [x8, #0xa60] ; Objc class ref: bad class ref
    bb98:	bl	0x21f00
    bb9c:	mov	x29, x29
    bba0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    bba4:	mov	x20, x0
    bba8:	adrp	x8, 41 ; 0x34000
    bbac:	ldr	x21, [x8, #0xbc8]
    bbb0:	mov	x1, x21
    bbb4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    bbb8:	tbz	w0, #0x0, 0xbbdc
    bbbc:	tbnz	w23, #0x0, 0xbbd4
    bbc0:	mov	x0, x20
    bbc4:	mov	x1, x21
    bbc8:	mov	x2, x19
    bbcc:	mov	w3, #0x0
    bbd0:	bl	0x200a0 ; symbol stub for: _objc_msgSend
    bbd4:	mov	w21, #0x1
    bbd8:	b	0xbcbc
    bbdc:	adrp	x0, 24 ; 0x23000
    bbe0:	add	x0, x0, #0x13f ; literal pool for: "LSApplicationWorkspace"
    bbe4:	bl	0x20088 ; symbol stub for: _objc_getClass
    bbe8:	mov	x21, x0
    bbec:	adrp	x8, 42 ; 0x35000
    bbf0:	ldr	x1, [x8, #0x288]
    bbf4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    bbf8:	tbz	w0, #0x0, 0xbc14
    bbfc:	mov	x0, x21
    bc00:	bl	0x20b20
    bc04:	mov	x29, x29
    bc08:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    bc0c:	mov	x22, x0
    bc10:	b	0xbc18
    bc14:	mov	x22, #0x0

; ===== sub_bc18 =====
    bc18:	adrp	x8, 42 ; 0x35000
    bc1c:	ldr	x1, [x8, #0x508]
    bc20:	mov	x0, x22
    bc24:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    bc28:	mov	x21, x0
    bc2c:	tbnz	w23, #0x0, 0xbcb4
    bc30:	tbz	w21, #0x0, 0xbcb4
    bc34:	mov	w0, #0x19
    bc38:	mov	x1, #0x0
    bc3c:	bl	0x1ff14 ; symbol stub for: _dispatch_get_global_queue
    bc40:	mov	x29, x29
    bc44:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    bc48:	mov	x23, x0
    bc4c:	adrp	x8, 39 ; 0x32000
    bc50:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    bc54:	str	x8, [sp]
    bc58:	adrp	x8, 23 ; 0x22000
    bc5c:	ldr	d0, [x8, #0x8f8]
    bc60:	str	d0, [sp, #0x8]
    bc64:	adrp	x8, 0 ; 0xb000
    bc68:	add	x8, x8, #0xd68
    bc6c:	adrp	x9, 33 ; 0x2c000
    bc70:	add	x9, x9, #0x310
    bc74:	stp	x8, x9, [sp, #0x10]
    bc78:	mov	x0, x22
    bc7c:	bl	0x200f4 ; symbol stub for: _objc_retain
    bc80:	str	x0, [sp, #0x20]
    bc84:	mov	x0, x19
    bc88:	bl	0x200f4 ; symbol stub for: _objc_retain
    bc8c:	str	x0, [sp, #0x28]
    bc90:	mov	x1, sp
    bc94:	mov	x0, x23
    bc98:	bl	0x1ff08 ; symbol stub for: _dispatch_async
    bc9c:	mov	x0, x23
    bca0:	bl	0x200e8 ; symbol stub for: _objc_release
    bca4:	ldr	x0, [sp, #0x28]
    bca8:	bl	0x200e8 ; symbol stub for: _objc_release
    bcac:	ldr	x0, [sp, #0x20]
    bcb0:	bl	0x200e8 ; symbol stub for: _objc_release
    bcb4:	mov	x0, x22
    bcb8:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_bcbc =====
    bcbc:	mov	x0, x20
    bcc0:	bl	0x200e8 ; symbol stub for: _objc_release
    bcc4:	mov	x0, x19
    bcc8:	bl	0x200e8 ; symbol stub for: _objc_release
    bccc:	and	w0, w21, #0x1
    bcd0:	ldp	x29, x30, [sp, #0x60]
    bcd4:	ldp	x20, x19, [sp, #0x50]
    bcd8:	ldp	x22, x21, [sp, #0x40]
    bcdc:	ldp	x24, x23, [sp, #0x30]
    bce0:	add	sp, sp, #0x70
    bce4:	ret
    bce8:	tbnz	w1, #0x0, 0xbd58
    bcec:	ldr	x8, [x0, #0x20]
    bcf0:	cbz	x8, 0xbd58
    bcf4:	sub	sp, sp, #0x40
    bcf8:	stp	x29, x30, [sp, #0x30]
    bcfc:	add	x29, sp, #0x30
    bd00:	adrp	x8, 39 ; 0x32000
    bd04:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    bd08:	str	x8, [sp, #0x8]
    bd0c:	adrp	x8, 23 ; 0x22000
    bd10:	ldr	d0, [x8, #0x8f8]
    bd14:	adrp	x8, 0 ; 0xb000
    bd18:	add	x8, x8, #0xd5c
    bd1c:	str	d0, [sp, #0x10]
    bd20:	adrp	x9, 33 ; 0x2c000
    bd24:	add	x9, x9, #0xb0
    bd28:	stp	x8, x9, [sp, #0x18]
    bd2c:	ldr	x0, [x0, #0x20]
    bd30:	bl	0x200f4 ; symbol stub for: _objc_retain
    bd34:	str	x0, [sp, #0x28]
    bd38:	adrp	x0, 39 ; 0x32000
    bd3c:	ldr	x0, [x0, #0xde8] ; literal pool symbol address: __dispatch_main_q
    bd40:	add	x1, sp, #0x8
    bd44:	bl	0x1ff08 ; symbol stub for: _dispatch_async
    bd48:	ldr	x0, [sp, #0x28]
    bd4c:	bl	0x200e8 ; symbol stub for: _objc_release
    bd50:	ldp	x29, x30, [sp, #0x30]
    bd54:	add	sp, sp, #0x40
    bd58:	ret
    bd5c:	ldr	x0, [x0, #0x20]
    bd60:	mov	w1, #0x0
    bd64:	b	0xbb6c
    bd68:	ldp	x8, x2, [x0, #0x20]
    bd6c:	mov	x0, x8
    bd70:	b	0x21520

; ===== sub_bd74 =====
    bd74:	sub	sp, sp, #0x60
    bd78:	stp	x26, x25, [sp, #0x10]
    bd7c:	stp	x24, x23, [sp, #0x20]
    bd80:	stp	x22, x21, [sp, #0x30]
    bd84:	stp	x20, x19, [sp, #0x40]
    bd88:	stp	x29, x30, [sp, #0x50]
    bd8c:	add	x29, sp, #0x50
    bd90:	bl	0x200f4 ; symbol stub for: _objc_retain
    bd94:	mov	x19, x0
    bd98:	adrp	x8, 43 ; 0x36000
    bd9c:	ldr	x0, [x8, #0xf8]
    bda0:	mov	x2, x19
    bda4:	bl	0x208a0
    bda8:	cbz	w0, 0xbe08
    bdac:	bl	0xc1ac
    bdb0:	mov	x29, x29
    bdb4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    bdb8:	mov	x20, x0
    bdbc:	adrp	x21, 43 ; 0x36000
    bdc0:	ldr	x8, [x21, #0x320]
    bdc4:	cbz	x8, 0xbe18
    bdc8:	adrp	x2, 36 ; 0x2f000
    bdcc:	add	x2, x2, #0x2a8 ; "app"
    bdd0:	mov	x0, x20
    bdd4:	bl	0x21000
    bdd8:	cbz	w0, 0xbe18
    bddc:	bl	0xc264
    bde0:	mov	x29, x29
    bde4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    bde8:	mov	x22, x0
    bdec:	cbz	x0, 0xbe10
    bdf0:	ldr	x0, [x21, #0x320]
    bdf4:	mov	x2, x22
    bdf8:	bl	0x208a0
    bdfc:	tbz	w0, #0x0, 0xbe10
    be00:	mov	x24, #0x0
    be04:	b	0xc024
    be08:	mov	x24, #0x0
    be0c:	b	0xc034
    be10:	mov	x0, x22
    be14:	bl	0x200e8 ; symbol stub for: _objc_release
    be18:	adrp	x8, 43 ; 0x36000
    be1c:	ldrb	w8, [x8, #0x468]
    be20:	adrp	x26, 42 ; 0x35000
    be24:	adrp	x25, 43 ; 0x36000
    be28:	cmp	w8, #0x1
    be2c:	b.ne	0xbedc
    be30:	adrp	x2, 36 ; 0x2f000
    be34:	add	x2, x2, #0x2a8 ; "app"
    be38:	mov	x0, x20
    be3c:	bl	0x21000
    be40:	cbz	w0, 0xbedc
    be44:	bl	0xc264
    be48:	mov	x29, x29
    be4c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    be50:	cbz	x0, 0xbedc
    be54:	mov	x23, x0
    be58:	adrp	x0, 36 ; 0x2f000
    be5c:	add	x0, x0, #0x2c8 ; "app:"
    be60:	mov	x2, x23
    be64:	bl	0x220a0
    be68:	mov	x29, x29
    be6c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    be70:	mov	x22, x0
    be74:	ldr	x0, [x26, #0xa38]
    be78:	stp	x22, x19, [sp]
    be7c:	adrp	x2, 36 ; 0x2f000
    be80:	add	x2, x2, #0x348 ; "%@/%@"
    be84:	bl	0x22100
    be88:	mov	x29, x29
    be8c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    be90:	mov	x21, x0
    be94:	mov	x0, x22
    be98:	bl	0x200e8 ; symbol stub for: _objc_release
    be9c:	ldr	x0, [x25, #0x308]
    bea0:	mov	x2, x21
    bea4:	bl	0x214e0
    bea8:	mov	x29, x29
    beac:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    beb0:	mov	x24, x0
    beb4:	bl	0xc35c
    beb8:	mov	x29, x29
    bebc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    bec0:	mov	x22, x0
    bec4:	mov	x0, x24
    bec8:	bl	0x200e8 ; symbol stub for: _objc_release
    becc:	mov	x0, x23
    bed0:	bl	0x200e8 ; symbol stub for: _objc_release
    bed4:	cbz	x22, 0xbee0
    bed8:	b	0xbfa4
    bedc:	mov	x21, #0x0
    bee0:	mov	x22, x21
    bee4:	ldr	x0, [x26, #0xa38]
    bee8:	stp	x20, x19, [sp]
    beec:	adrp	x2, 36 ; 0x2f000
    bef0:	add	x2, x2, #0x348 ; "%@/%@"
    bef4:	bl	0x22100
    bef8:	mov	x29, x29
    befc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    bf00:	mov	x21, x0
    bf04:	mov	x0, x22
    bf08:	bl	0x200e8 ; symbol stub for: _objc_release
    bf0c:	ldr	x0, [x25, #0x308]
    bf10:	mov	x2, x21
    bf14:	bl	0x214e0
    bf18:	mov	x29, x29
    bf1c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    bf20:	mov	x23, x0
    bf24:	bl	0xc35c
    bf28:	mov	x29, x29
    bf2c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    bf30:	mov	x22, x0
    bf34:	mov	x0, x23
    bf38:	bl	0x200e8 ; symbol stub for: _objc_release
    bf3c:	cbnz	x22, 0xbfa4
    bf40:	ldr	x0, [x26, #0xa38]
    bf44:	adrp	x8, 36 ; 0x2f000
    bf48:	add	x8, x8, #0x2e8 ; "anywhere"
    bf4c:	stp	x8, x19, [sp]
    bf50:	adrp	x2, 36 ; 0x2f000
    bf54:	add	x2, x2, #0x348 ; "%@/%@"
    bf58:	bl	0x22100
    bf5c:	mov	x29, x29
    bf60:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    bf64:	mov	x23, x0
    bf68:	mov	x0, x21
    bf6c:	bl	0x200e8 ; symbol stub for: _objc_release
    bf70:	ldr	x0, [x25, #0x308]
    bf74:	mov	x2, x23
    bf78:	bl	0x214e0
    bf7c:	mov	x29, x29
    bf80:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    bf84:	mov	x21, x0
    bf88:	bl	0xc35c
    bf8c:	mov	x29, x29
    bf90:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    bf94:	mov	x22, x0
    bf98:	mov	x0, x21
    bf9c:	bl	0x200e8 ; symbol stub for: _objc_release
    bfa0:	mov	x21, x23

; ===== sub_bfa4 =====
    bfa4:	cmp	x22, #0x0
    bfa8:	csel	x1, xzr, x21, eq
    bfac:	adrp	x0, 43 ; 0x36000
    bfb0:	add	x0, x0, #0x318
    bfb4:	bl	0x20148 ; symbol stub for: _objc_storeStrong
    bfb8:	cbz	x22, 0xc004
    bfbc:	adrp	x8, 43 ; 0x36000
    bfc0:	ldr	x0, [x8, #0x310]
    bfc4:	mov	x2, x21
    bfc8:	bl	0x214e0
    bfcc:	mov	x29, x29
    bfd0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    bfd4:	mov	x23, x0
    bfd8:	cbz	x0, 0xc008
    bfdc:	mov	x0, x23
    bfe0:	mov	x1, x19
    bfe4:	bl	0xc4b0
    bfe8:	tbnz	w0, #0x0, 0xc008
    bfec:	adrp	x8, 43 ; 0x36000
    bff0:	ldr	x0, [x8, #0x318]
    bff4:	str	xzr, [x8, #0x318]
    bff8:	bl	0x200e8 ; symbol stub for: _objc_release
    bffc:	mov	x24, #0x0
    c000:	b	0xc014
    c004:	mov	x23, #0x0
    c008:	mov	x0, x22
    c00c:	bl	0x200f4 ; symbol stub for: _objc_retain
    c010:	mov	x24, x0

; ===== sub_c014 =====
    c014:	mov	x0, x23
    c018:	bl	0x200e8 ; symbol stub for: _objc_release
    c01c:	mov	x0, x21
    c020:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_c024 =====
    c024:	mov	x0, x22
    c028:	bl	0x200e8 ; symbol stub for: _objc_release
    c02c:	mov	x0, x20
    c030:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_c034 =====
    c034:	mov	x0, x19
    c038:	bl	0x200e8 ; symbol stub for: _objc_release
    c03c:	mov	x0, x24
    c040:	ldp	x29, x30, [sp, #0x50]
    c044:	ldp	x20, x19, [sp, #0x40]
    c048:	ldp	x22, x21, [sp, #0x30]
    c04c:	ldp	x24, x23, [sp, #0x20]
    c050:	ldp	x26, x25, [sp, #0x10]
    c054:	add	sp, sp, #0x60
    c058:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue
    c05c:	stp	x24, x23, [sp, #-0x40]!
    c060:	stp	x22, x21, [sp, #0x10]
    c064:	stp	x20, x19, [sp, #0x20]
    c068:	stp	x29, x30, [sp, #0x30]
    c06c:	add	x29, sp, #0x30
    c070:	mov	x19, x0
    c074:	adrp	x22, 42 ; 0x36000
    c078:	ldr	x0, [x22, #0x358]
    c07c:	ldr	x2, [x19, #0x20]
    c080:	bl	0x214e0
    c084:	mov	x29, x29
    c088:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    c08c:	mov	x20, x0
    c090:	bl	0x22380
    c094:	mov	x21, x0
    c098:	ldr	x23, [x19, #0x28]
    c09c:	mov	x0, x20
    c0a0:	bl	0x200e8 ; symbol stub for: _objc_release
    c0a4:	cmp	x21, x23
    c0a8:	b.ne	0xc0f4
    c0ac:	ldr	x0, [x22, #0x358]
    c0b0:	ldr	x2, [x19, #0x20]
    c0b4:	bl	0x21780
    c0b8:	ldr	x0, [x19, #0x20]
    c0bc:	bl	0xbd74
    c0c0:	mov	x29, x29
    c0c4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    c0c8:	mov	x20, x0
    c0cc:	cbz	x0, 0xc0dc
    c0d0:	ldr	x0, [x19, #0x20]
    c0d4:	mov	x1, x20
    c0d8:	bl	0xc108
    c0dc:	mov	x0, x20
    c0e0:	ldp	x29, x30, [sp, #0x30]
    c0e4:	ldp	x20, x19, [sp, #0x20]
    c0e8:	ldp	x22, x21, [sp, #0x10]
    c0ec:	ldp	x24, x23, [sp], #0x40
    c0f0:	b	0x200e8 ; symbol stub for: _objc_release
    c0f4:	ldp	x29, x30, [sp, #0x30]
    c0f8:	ldp	x20, x19, [sp, #0x20]
    c0fc:	ldp	x22, x21, [sp, #0x10]
    c100:	ldp	x24, x23, [sp], #0x40
    c104:	ret

; ===== sub_c108 =====
    c108:	sub	sp, sp, #0x50
    c10c:	stp	x20, x19, [sp, #0x30]
    c110:	stp	x29, x30, [sp, #0x40]
    c114:	add	x29, sp, #0x40
    c118:	mov	x19, x1
    c11c:	bl	0x200f4 ; symbol stub for: _objc_retain
    c120:	mov	x20, x0
    c124:	mov	x0, x19
    c128:	bl	0x200f4 ; symbol stub for: _objc_retain
    c12c:	adrp	x8, 38 ; 0x32000
    c130:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    c134:	str	x8, [sp]
    c138:	adrp	x8, 22 ; 0x22000
    c13c:	ldr	d0, [x8, #0x8f8]
    c140:	str	d0, [sp, #0x8]
    c144:	adrp	x8, 8 ; 0x14000
    c148:	add	x8, x8, #0xe80
    c14c:	adrp	x9, 32 ; 0x2c000
    c150:	add	x9, x9, #0x310
    c154:	stp	x8, x9, [sp, #0x10]
    c158:	stp	x20, x0, [sp, #0x20]
    c15c:	bl	0x200f4 ; symbol stub for: _objc_retain
    c160:	mov	x19, x0
    c164:	mov	x0, x20
    c168:	bl	0x200f4 ; symbol stub for: _objc_retain
    c16c:	mov	x20, x0
    c170:	mov	x1, sp
    c174:	mov	x0, x19
    c178:	bl	0x7994
    c17c:	ldr	x0, [sp, #0x28]
    c180:	bl	0x200e8 ; symbol stub for: _objc_release
    c184:	ldr	x0, [sp, #0x20]
    c188:	bl	0x200e8 ; symbol stub for: _objc_release
    c18c:	mov	x0, x19
    c190:	bl	0x200e8 ; symbol stub for: _objc_release
    c194:	mov	x0, x20
    c198:	bl	0x200e8 ; symbol stub for: _objc_release
    c19c:	ldp	x29, x30, [sp, #0x40]
    c1a0:	ldp	x20, x19, [sp, #0x30]
    c1a4:	add	sp, sp, #0x50
    c1a8:	ret

; ===== sub_c1ac =====
    c1ac:	stp	x20, x19, [sp, #-0x20]!
    c1b0:	stp	x29, x30, [sp, #0x10]
    c1b4:	add	x29, sp, #0x10
    c1b8:	adrp	x0, 22 ; 0x22000
    c1bc:	add	x0, x0, #0xc65 ; literal pool for: "SBLockScreenManager"
    c1c0:	bl	0x20088 ; symbol stub for: _objc_getClass
    c1c4:	mov	x19, x0
    c1c8:	adrp	x8, 41 ; 0x35000
    c1cc:	ldr	x1, [x8, #0x788]
    c1d0:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    c1d4:	tbz	w0, #0x0, 0xc21c
    c1d8:	mov	x0, x19
    c1dc:	bl	0x21f20
    c1e0:	mov	x29, x29
    c1e4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    c1e8:	mov	x19, x0
    c1ec:	adrp	x8, 41 ; 0x35000
    c1f0:	ldr	x1, [x8, #0x3f8]
    c1f4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    c1f8:	tbz	w0, #0x0, 0xc214
    c1fc:	mov	x0, x19
    c200:	bl	0x210e0
    c204:	tbz	w0, #0x0, 0xc214
    c208:	adrp	x20, 35 ; 0x2f000
    c20c:	add	x20, x20, #0x308 ; "lock"
    c210:	b	0xc24c
    c214:	mov	x0, x19
    c218:	bl	0x200e8 ; symbol stub for: _objc_release
    c21c:	bl	0xc264
    c220:	mov	x29, x29
    c224:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    c228:	mov	x19, x0
    c22c:	adrp	x8, 35 ; 0x2f000
    c230:	add	x8, x8, #0x2a8 ; "app"
    c234:	adrp	x9, 35 ; 0x2f000
    c238:	add	x9, x9, #0x328 ; "home"
    c23c:	cmp	x0, #0x0
    c240:	csel	x0, x9, x8, eq
    c244:	bl	0x200f4 ; symbol stub for: _objc_retain
    c248:	mov	x20, x0

; ===== sub_c24c =====
    c24c:	mov	x0, x19
    c250:	bl	0x200e8 ; symbol stub for: _objc_release
    c254:	mov	x0, x20
    c258:	ldp	x29, x30, [sp, #0x10]
    c25c:	ldp	x20, x19, [sp], #0x20
    c260:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue

; ===== sub_c264 =====
    c264:	stp	x22, x21, [sp, #-0x30]!
    c268:	stp	x20, x19, [sp, #0x10]
    c26c:	stp	x29, x30, [sp, #0x20]
    c270:	add	x29, sp, #0x20
    c274:	adrp	x8, 41 ; 0x35000
    c278:	ldr	x0, [x8, #0xa60] ; Objc class ref: bad class ref
    c27c:	bl	0x21f00
    c280:	mov	x29, x29
    c284:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    c288:	mov	x19, x0
    c28c:	adrp	x8, 41 ; 0x35000
    c290:	ldr	x1, [x8, #0x70]
    c294:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    c298:	tbz	w0, #0x0, 0xc2d4
    c29c:	mov	x0, x19
    c2a0:	bl	0x202c0
    c2a4:	mov	x29, x29
    c2a8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    c2ac:	mov	x20, x0
    c2b0:	adrp	x8, 41 ; 0x35000
    c2b4:	ldr	x21, [x8, #0x158]
    c2b8:	mov	x1, x21
    c2bc:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    c2c0:	tbz	w0, #0x0, 0xc2f8
    c2c4:	mov	x0, x20
    c2c8:	mov	x2, x21
    c2cc:	bl	0x215e0
    c2d0:	b	0xc2fc
    c2d4:	adrp	x8, 42 ; 0x36000
    c2d8:	ldrb	w8, [x8, #0x469]
    c2dc:	adrp	x9, 42 ; 0x36000
    c2e0:	ldr	x9, [x9, #0x340]
    c2e4:	cmp	w8, #0x0
    c2e8:	csel	x0, x9, xzr, ne
    c2ec:	bl	0x200f4 ; symbol stub for: _objc_retain
    c2f0:	mov	x21, x0
    c2f4:	b	0xc340
    c2f8:	mov	x0, #0x0

; ===== sub_c2fc =====
    c2fc:	adrp	x8, 41 ; 0x35000
    c300:	ldr	x21, [x8, #0xa38] ; Objc class ref: bad class ref
    c304:	bl	0x200f4 ; symbol stub for: _objc_retain
    c308:	mov	x22, x0
    c30c:	mov	x0, x21
    c310:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    c314:	mov	x1, x0
    c318:	mov	x0, x22
    c31c:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    c320:	tst	w0, #0x1
    c324:	csel	x0, x22, xzr, ne
    c328:	bl	0x200f4 ; symbol stub for: _objc_retain
    c32c:	mov	x21, x0
    c330:	mov	x0, x22
    c334:	bl	0x200e8 ; symbol stub for: _objc_release
    c338:	mov	x0, x20
    c33c:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_c340 =====
    c340:	mov	x0, x19
    c344:	bl	0x200e8 ; symbol stub for: _objc_release
    c348:	mov	x0, x21
    c34c:	ldp	x29, x30, [sp, #0x20]
    c350:	ldp	x20, x19, [sp, #0x10]
    c354:	ldp	x22, x21, [sp], #0x30
    c358:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue

; ===== sub_c35c =====
    c35c:	sub	sp, sp, #0x120
    c360:	stp	x28, x27, [sp, #0xd0]
    c364:	stp	x24, x23, [sp, #0xe0]
    c368:	stp	x22, x21, [sp, #0xf0]
    c36c:	stp	x20, x19, [sp, #0x100]
    c370:	stp	x29, x30, [sp, #0x110]
    c374:	add	x29, sp, #0x110
    c378:	adrp	x8, 38 ; 0x32000
    c37c:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    c380:	ldr	x8, [x8]
    c384:	stur	x8, [x29, #-0x48]
    c388:	bl	0x200f4 ; symbol stub for: _objc_retain
    c38c:	mov	x20, x0
    c390:	adrp	x8, 41 ; 0x35000
    c394:	ldr	x0, [x8, #0xa40] ; Objc class ref: bad class ref
    c398:	bl	0x20560
    c39c:	mov	x29, x29
    c3a0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    c3a4:	mov	x19, x0
    c3a8:	movi.16b	v0, #0x0
    c3ac:	stp	q0, q0, [sp]
    c3b0:	stp	q0, q0, [sp, #0x20]
    c3b4:	mov	x0, x20
    c3b8:	bl	0x200f4 ; symbol stub for: _objc_retain
    c3bc:	mov	x20, x0
    c3c0:	mov	x2, sp
    c3c4:	add	x3, sp, #0x48
    c3c8:	mov	w4, #0x10
    c3cc:	bl	0x20980
    c3d0:	cbz	x0, 0xc444
    c3d4:	mov	x21, x0
    c3d8:	ldr	x8, [sp, #0x10]
    c3dc:	ldr	x23, [x8]
    c3e0:	mov	x24, #0x0
    c3e4:	ldr	x8, [sp, #0x10]
    c3e8:	ldr	x8, [x8]
    c3ec:	cmp	x8, x23
    c3f0:	b.eq	0xc3fc
    c3f4:	mov	x0, x20
    c3f8:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    c3fc:	ldr	x8, [sp, #0x8]
    c400:	ldr	x22, [x8, x24, lsl #3]
    c404:	mov	x0, x22
    c408:	bl	0xcd54
    c40c:	cbz	w0, 0xc41c
    c410:	mov	x0, x19
    c414:	mov	x2, x22
    c418:	bl	0x203c0
    c41c:	add	x24, x24, #0x1
    c420:	cmp	x21, x24
    c424:	b.ne	0xc3e4
    c428:	mov	x2, sp
    c42c:	add	x3, sp, #0x48
    c430:	mov	x0, x20
    c434:	mov	w4, #0x10
    c438:	bl	0x20980
    c43c:	mov	x21, x0
    c440:	cbnz	x0, 0xc3e0
    c444:	mov	x0, x20
    c448:	bl	0x200e8 ; symbol stub for: _objc_release
    c44c:	mov	x0, x19
    c450:	bl	0x20960
    c454:	cmp	x0, #0x0
    c458:	csel	x21, xzr, x19, eq
    c45c:	mov	x0, x21
    c460:	bl	0x2010c ; symbol stub for: _objc_retainAutoreleaseReturnValue
    c464:	mov	x0, x19
    c468:	bl	0x200e8 ; symbol stub for: _objc_release
    c46c:	mov	x0, x20
    c470:	bl	0x200e8 ; symbol stub for: _objc_release
    c474:	ldur	x8, [x29, #-0x48]
    c478:	adrp	x9, 38 ; 0x32000
    c47c:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    c480:	ldr	x9, [x9]
    c484:	cmp	x9, x8
    c488:	b.ne	0xc4ac
    c48c:	mov	x0, x21
    c490:	ldp	x29, x30, [sp, #0x110]
    c494:	ldp	x20, x19, [sp, #0x100]
    c498:	ldp	x22, x21, [sp, #0xf0]
    c49c:	ldp	x24, x23, [sp, #0xe0]
    c4a0:	ldp	x28, x27, [sp, #0xd0]
    c4a4:	add	sp, sp, #0x120
    c4a8:	ret
    c4ac:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_c4b0 =====
    c4b0:	stp	x28, x27, [sp, #-0x60]!
    c4b4:	stp	x26, x25, [sp, #0x10]
    c4b8:	stp	x24, x23, [sp, #0x20]
    c4bc:	stp	x22, x21, [sp, #0x30]
    c4c0:	stp	x20, x19, [sp, #0x40]
    c4c4:	stp	x29, x30, [sp, #0x50]
    c4c8:	add	x29, sp, #0x50
    c4cc:	sub	sp, sp, #0x200
    c4d0:	mov	x19, x1
    c4d4:	adrp	x8, 38 ; 0x32000
    c4d8:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    c4dc:	ldr	x8, [x8]
    c4e0:	stur	x8, [x29, #-0x60]
    c4e4:	bl	0x200f4 ; symbol stub for: _objc_retain
    c4e8:	mov	x20, x0
    c4ec:	mov	x0, x19
    c4f0:	bl	0x200f4 ; symbol stub for: _objc_retain
    c4f4:	str	x0, [sp]
    c4f8:	movi.16b	v0, #0x0
    c4fc:	stp	q0, q0, [sp, #0x50]
    c500:	stp	q0, q0, [sp, #0x70]
    c504:	mov	x0, x20
    c508:	bl	0x200f4 ; symbol stub for: _objc_retain
    c50c:	add	x2, sp, #0x50
    c510:	add	x3, sp, #0xf0
    c514:	str	x0, [sp, #0x38]
    c518:	mov	w4, #0x10
    c51c:	bl	0x20980
    c520:	str	x0, [sp, #0x48]
    c524:	ldr	x8, [sp, #0x48]
    c528:	cbz	x8, 0xcccc
    c52c:	ldr	x8, [sp, #0x60]
    c530:	ldr	x8, [x8]
    c534:	str	x8, [sp, #0x40]
    c538:	mov	x24, #0x0
    c53c:	adrp	x8, 41 ; 0x35000
    c540:	ldr	x9, [x8, #0x3e0]
    c544:	adrp	x8, 41 ; 0x35000
    c548:	ldr	x8, [x8, #0x788]
    c54c:	stp	x9, x8, [sp, #0x10]
    c550:	adrp	x8, 41 ; 0x35000
    c554:	ldr	x8, [x8, #0x3f8]
    c558:	str	x8, [sp, #0x8]
    c55c:	adrp	x8, 40 ; 0x34000
    c560:	ldr	x8, [x8, #0xf28]
    c564:	str	x8, [sp, #0x28]
    c568:	ldr	x8, [sp, #0x60]
    c56c:	ldr	x8, [x8]
    c570:	ldr	x9, [sp, #0x40]
    c574:	cmp	x8, x9
    c578:	b.eq	0xc584
    c57c:	ldr	x0, [sp, #0x38]
    c580:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    c584:	ldr	x8, [sp, #0x58]
    c588:	ldr	x19, [x8, x24, lsl #3]
    c58c:	adrp	x8, 41 ; 0x35000
    c590:	ldr	x0, [x8, #0xa38] ; Objc class ref: bad class ref
    c594:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    c598:	mov	x1, x0
    c59c:	mov	x0, x19
    c5a0:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    c5a4:	tbz	w0, #0x0, 0xc6d4
    c5a8:	mov	x0, x19
    c5ac:	bl	0x21160
    c5b0:	cbz	x0, 0xc6d4
    c5b4:	mov	x0, x19
    c5b8:	bl	0x200f4 ; symbol stub for: _objc_retain
    c5bc:	mov	x19, x0
    c5c0:	adrp	x2, 36 ; 0x30000
    c5c4:	add	x2, x2, #0x9a8
    c5c8:	bl	0x20d80
    c5cc:	mov	x25, x0
    c5d0:	cbz	w0, 0xc5f8
    c5d4:	mov	x0, x19
    c5d8:	mov	w2, #0x1
    c5dc:	bl	0x22140
    c5e0:	mov	x29, x29
    c5e4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    c5e8:	mov	x22, x0
    c5ec:	mov	x0, x19
    c5f0:	bl	0x200e8 ; symbol stub for: _objc_release
    c5f4:	mov	x19, x22
    c5f8:	mov	x0, x19
    c5fc:	bl	0x200f4 ; symbol stub for: _objc_retain
    c600:	mov	x27, x0
    c604:	adrp	x2, 34 ; 0x2e000
    c608:	add	x2, x2, #0xf88 ; "after:"
    c60c:	bl	0x20d80
    c610:	tbz	w0, #0x0, 0xc62c
    c614:	mov	x0, x27
    c618:	bl	0x200e8 ; symbol stub for: _objc_release
    c61c:	mov	x0, x27
    c620:	bl	0x200e8 ; symbol stub for: _objc_release
    c624:	tbnz	w25, #0x0, 0xccd4
    c628:	b	0xc6d4
    c62c:	mov	x0, x27
    c630:	adrp	x2, 36 ; 0x30000
    c634:	add	x2, x2, #0x588 ; "wifi"
    c638:	bl	0x21000
    c63c:	tbnz	w0, #0x0, 0xc654
    c640:	mov	x0, x27
    c644:	adrp	x2, 36 ; 0x30000
    c648:	add	x2, x2, #0x9c8 ; "wifi:"
    c64c:	bl	0x20d80
    c650:	cbz	w0, 0xc6e8
    c654:	add	x0, sp, #0x90
    c658:	add	x1, sp, #0xef
    c65c:	bl	0x14bc4
    c660:	mov	x29, x29
    c664:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    c668:	mov	x22, x0
    c66c:	mov	x0, x27
    c670:	bl	0x21160
    c674:	cmp	x0, #0x4
    c678:	b.ne	0xc684
    c67c:	ldrb	w19, [sp, #0xef]
    c680:	b	0xc6b4
    c684:	mov	x0, x27
    c688:	mov	w2, #0x5
    c68c:	bl	0x22140
    c690:	mov	x29, x29
    c694:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    c698:	mov	x23, x0
    c69c:	mov	x0, x22
    c6a0:	mov	x2, x23
    c6a4:	bl	0x21000
    c6a8:	mov	x19, x0
    c6ac:	mov	x0, x23
    c6b0:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_c6b4 =====
    c6b4:	mov	x0, x22
    c6b8:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_c6bc =====
    c6bc:	mov	x0, x27
    c6c0:	bl	0x200e8 ; symbol stub for: _objc_release
    c6c4:	mov	x0, x27
    c6c8:	bl	0x200e8 ; symbol stub for: _objc_release
    c6cc:	eor	w8, w25, w19
    c6d0:	cbz	w8, 0xccd4

; ===== sub_c6d4 =====
    c6d4:	add	x24, x24, #0x1
    c6d8:	ldr	x8, [sp, #0x48]
    c6dc:	cmp	x24, x8
    c6e0:	b.ne	0xc568
    c6e4:	b	0xccac
    c6e8:	mov	x0, x27
    c6ec:	adrp	x2, 36 ; 0x30000
    c6f0:	add	x2, x2, #0x9e8 ; "bt:"
    c6f4:	bl	0x20d80
    c6f8:	cbz	w0, 0xc744
    c6fc:	mov	x0, x27
    c700:	mov	w2, #0x3
    c704:	bl	0x22140
    c708:	mov	x29, x29
    c70c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    c710:	mov	x26, x0
    c714:	adrp	x0, 23 ; 0x23000
    c718:	add	x0, x0, #0xdfd ; literal pool for: "BluetoothManager"
    c71c:	bl	0x105fc
    c720:	mov	x29, x29
    c724:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    c728:	str	x0, [sp, #0x20]
    c72c:	ldp	x0, x1, [sp, #0x20]
    c730:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    c734:	tbz	w0, #0x0, 0xc7e8
    c738:	ldp	x0, x2, [sp, #0x20]
    c73c:	bl	0x215e0
    c740:	b	0xc7ec
    c744:	mov	x0, x27
    c748:	adrp	x2, 36 ; 0x30000
    c74c:	add	x2, x2, #0xa08 ; "charging"
    c750:	bl	0x21000
    c754:	cbz	w0, 0xc78c
    c758:	adrp	x8, 41 ; 0x35000
    c75c:	ldr	x0, [x8, #0xaf0] ; Objc class ref: bad class ref
    c760:	bl	0x209c0
    c764:	mov	x29, x29
    c768:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    c76c:	mov	x19, x0
    c770:	mov	w2, #0x1
    c774:	bl	0x21940
    c778:	mov	x0, x19
    c77c:	bl	0x200e8 ; symbol stub for: _objc_release
    c780:	bl	0x14c98
    c784:	mov	x19, x0
    c788:	b	0xc6bc
    c78c:	mov	x0, x27
    c790:	adrp	x2, 36 ; 0x30000
    c794:	add	x2, x2, #0xa28 ; "locked"
    c798:	bl	0x21000
    c79c:	cbz	w0, 0xc93c
    c7a0:	adrp	x0, 22 ; 0x22000
    c7a4:	add	x0, x0, #0xc65 ; literal pool for: "SBLockScreenManager"
    c7a8:	bl	0x20088 ; symbol stub for: _objc_getClass
    c7ac:	mov	x19, x0
    c7b0:	ldr	x1, [sp, #0x18]
    c7b4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    c7b8:	tbz	w0, #0x0, 0xc9dc
    c7bc:	mov	x0, x19
    c7c0:	bl	0x21f20
    c7c4:	mov	x29, x29
    c7c8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    c7cc:	mov	x22, x0
    c7d0:	ldr	x1, [sp, #0x8]
    c7d4:	bl	0x5b7c
    c7d8:	mov	x19, x0
    c7dc:	mov	x0, x22
    c7e0:	bl	0x200e8 ; symbol stub for: _objc_release
    c7e4:	b	0xc6bc
    c7e8:	mov	x0, #0x0

; ===== sub_c7ec =====
    c7ec:	bl	0x200f4 ; symbol stub for: _objc_retain
    c7f0:	str	x0, [sp, #0x30]
    c7f4:	movi.16b	v0, #0x0
    c7f8:	stp	q0, q0, [sp, #0xa0]
    c7fc:	stp	q0, q0, [sp, #0xc0]
    c800:	adrp	x8, 41 ; 0x35000
    c804:	ldr	x0, [x8, #0xa48] ; Objc class ref: bad class ref
    c808:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    c80c:	mov	x1, x0
    c810:	ldr	x0, [sp, #0x30]
    c814:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    c818:	tst	w0, #0x1
    c81c:	adrp	x8, 38 ; 0x32000
    c820:	ldr	x8, [x8, #0xd28] ; literal pool symbol address: ___NSArray0__struct
    c824:	ldr	x9, [sp, #0x30]
    c828:	csel	x0, x9, x8, ne
    c82c:	bl	0x200f4 ; symbol stub for: _objc_retain
    c830:	mov	x22, x0
    c834:	add	x2, sp, #0xa0
    c838:	sub	x3, x29, #0xe0
    c83c:	mov	w4, #0x10
    c840:	bl	0x20980
    c844:	mov	x19, x0
    c848:	cbz	x0, 0xc918
    c84c:	ldr	x8, [sp, #0xb0]
    c850:	ldr	x20, [x8]
    c854:	mov	x21, #0x0
    c858:	adrp	x8, 41 ; 0x35000
    c85c:	ldr	x23, [x8, #0x498]
    c860:	ldr	x8, [sp, #0xb0]
    c864:	ldr	x8, [x8]
    c868:	cmp	x8, x20
    c86c:	b.eq	0xc878
    c870:	mov	x0, x22
    c874:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    c878:	ldr	x8, [sp, #0xa8]
    c87c:	ldr	x28, [x8, x21, lsl #3]
    c880:	mov	x0, x28
    c884:	mov	x1, x23
    c888:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    c88c:	tbz	w0, #0x0, 0xc8a0
    c890:	mov	x0, x28
    c894:	mov	x2, x23
    c898:	bl	0x215e0
    c89c:	b	0xc8a4
    c8a0:	mov	x0, #0x0

; ===== sub_c8a4 =====
    c8a4:	bl	0x200f4 ; symbol stub for: _objc_retain
    c8a8:	mov	x28, x0
    c8ac:	adrp	x8, 41 ; 0x35000
    c8b0:	ldr	x0, [x8, #0xa38] ; Objc class ref: bad class ref
    c8b4:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    c8b8:	mov	x1, x0
    c8bc:	mov	x0, x28
    c8c0:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    c8c4:	tbz	w0, #0x0, 0xc8d8
    c8c8:	mov	x0, x28
    c8cc:	mov	x2, x26
    c8d0:	bl	0x21000
    c8d4:	tbnz	w0, #0x0, 0xc90c
    c8d8:	mov	x0, x28
    c8dc:	bl	0x200e8 ; symbol stub for: _objc_release
    c8e0:	add	x21, x21, #0x1
    c8e4:	cmp	x19, x21
    c8e8:	b.ne	0xc860
    c8ec:	add	x2, sp, #0xa0
    c8f0:	sub	x3, x29, #0xe0
    c8f4:	mov	x0, x22
    c8f8:	mov	w4, #0x10
    c8fc:	bl	0x20980
    c900:	mov	x19, x0
    c904:	cbnz	x0, 0xc854
    c908:	b	0xc918
    c90c:	mov	x0, x28
    c910:	bl	0x200e8 ; symbol stub for: _objc_release
    c914:	mov	w19, #0x1

; ===== sub_c918 =====
    c918:	mov	x0, x22
    c91c:	bl	0x200e8 ; symbol stub for: _objc_release
    c920:	ldr	x0, [sp, #0x30]
    c924:	bl	0x200e8 ; symbol stub for: _objc_release
    c928:	ldr	x0, [sp, #0x20]
    c92c:	bl	0x200e8 ; symbol stub for: _objc_release
    c930:	mov	x0, x26
    c934:	bl	0x200e8 ; symbol stub for: _objc_release
    c938:	b	0xc6bc
    c93c:	mov	x0, x27
    c940:	adrp	x2, 36 ; 0x30000
    c944:	add	x2, x2, #0xa48 ; "music"
    c948:	bl	0x21000
    c94c:	cbz	w0, 0xc984
    c950:	adrp	x0, 22 ; 0x22000
    c954:	add	x0, x0, #0xfe8 ; literal pool for: "SBMediaController"
    c958:	bl	0x20088 ; symbol stub for: _objc_getClass
    c95c:	bl	0x21f20
    c960:	mov	x29, x29
    c964:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    c968:	mov	x22, x0
    c96c:	ldr	x1, [sp, #0x10]
    c970:	bl	0x5b7c
    c974:	mov	x19, x0
    c978:	mov	x0, x22
    c97c:	bl	0x200e8 ; symbol stub for: _objc_release
    c980:	b	0xc6bc
    c984:	mov	x0, x27
    c988:	adrp	x2, 36 ; 0x30000
    c98c:	add	x2, x2, #0xa68 ; "headphones"
    c990:	bl	0x21000
    c994:	cbz	w0, 0xc9f4
    c998:	adrp	x8, 41 ; 0x35000
    c99c:	ldr	x0, [x8, #0xb28] ; Objc class ref: bad class ref
    c9a0:	bl	0x21f20
    c9a4:	mov	x29, x29
    c9a8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    c9ac:	mov	x22, x0
    c9b0:	bl	0x209e0
    c9b4:	mov	x29, x29
    c9b8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    c9bc:	mov	x23, x0
    c9c0:	bl	0x14ce4
    c9c4:	mov	x19, x0
    c9c8:	mov	x0, x23
    c9cc:	bl	0x200e8 ; symbol stub for: _objc_release
    c9d0:	mov	x0, x22
    c9d4:	bl	0x200e8 ; symbol stub for: _objc_release
    c9d8:	b	0xc6bc
    c9dc:	mov	x0, x27
    c9e0:	bl	0x200e8 ; symbol stub for: _objc_release
    c9e4:	mov	x0, x27
    c9e8:	bl	0x200e8 ; symbol stub for: _objc_release
    c9ec:	tbz	w25, #0x0, 0xccd4
    c9f0:	b	0xc6d4
    c9f4:	mov	x0, x27
    c9f8:	adrp	x2, 36 ; 0x30000
    c9fc:	add	x2, x2, #0x5e8 ; "lowpower"
    ca00:	bl	0x21000
    ca04:	cbz	w0, 0xca34
    ca08:	adrp	x8, 41 ; 0x35000
    ca0c:	ldr	x0, [x8, #0xb20] ; Objc class ref: bad class ref
    ca10:	bl	0x216c0
    ca14:	mov	x29, x29
    ca18:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    ca1c:	mov	x22, x0
    ca20:	bl	0x21040
    ca24:	mov	x19, x0
    ca28:	mov	x0, x22
    ca2c:	bl	0x200e8 ; symbol stub for: _objc_release
    ca30:	b	0xc6bc
    ca34:	mov	x0, x27
    ca38:	adrp	x2, 36 ; 0x30000
    ca3c:	add	x2, x2, #0x568 ; "flashlight"
    ca40:	bl	0x21000
    ca44:	cbz	w0, 0xca78
    ca48:	stp	xzr, xzr, [sp, #0x90]
    ca4c:	add	x1, sp, #0x90
    ca50:	adrp	x0, 36 ; 0x30000
    ca54:	add	x0, x0, #0x568 ; "flashlight"
    ca58:	bl	0x132c8
    ca5c:	ldr	x22, [sp, #0x90]
    ca60:	cbz	w0, 0xcaf4
    ca64:	ldr	x8, [x22, #0x10]
    ca68:	mov	x0, x22
    ca6c:	blr	x8
    ca70:	mov	x19, x0
    ca74:	b	0xcaf8
    ca78:	mov	x0, x27
    ca7c:	adrp	x2, 36 ; 0x30000
    ca80:	add	x2, x2, #0xa88 ; "battery<"
    ca84:	bl	0x20d80
    ca88:	tbnz	w0, #0x0, 0xcaa0
    ca8c:	mov	x0, x27
    ca90:	adrp	x2, 36 ; 0x30000
    ca94:	add	x2, x2, #0xaa8 ; "battery>"
    ca98:	bl	0x20d80
    ca9c:	cbz	w0, 0xcb0c
    caa0:	bl	0xf4d8
    caa4:	mov	x19, x0
    caa8:	mov	x0, x27
    caac:	mov	w2, #0x8
    cab0:	bl	0x22140
    cab4:	mov	x29, x29
    cab8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    cabc:	mov	x23, x0
    cac0:	bl	0x20f60
    cac4:	mov	x22, x0
    cac8:	mov	x0, x23
    cacc:	bl	0x200e8 ; symbol stub for: _objc_release
    cad0:	mov	x0, x27
    cad4:	mov	w2, #0x7
    cad8:	bl	0x20700
    cadc:	cmp	w19, w22
    cae0:	cset	w8, lt
    cae4:	cset	w9, gt
    cae8:	cmp	w0, #0x3c
    caec:	csel	w19, w8, w9, eq
    caf0:	b	0xc6bc
    caf4:	mov	w19, #0x0

; ===== sub_caf8 =====
    caf8:	mov	x0, x22
    cafc:	bl	0x200e8 ; symbol stub for: _objc_release
    cb00:	ldr	x0, [sp, #0x98]
    cb04:	bl	0x200e8 ; symbol stub for: _objc_release
    cb08:	b	0xc6bc
    cb0c:	mov	x0, x27
    cb10:	adrp	x2, 36 ; 0x30000
    cb14:	add	x2, x2, #0xac8 ; "time:"
    cb18:	bl	0x20d80
    cb1c:	cbz	w0, 0xc614
    cb20:	mov	x0, x27
    cb24:	mov	w2, #0x5
    cb28:	bl	0x22140
    cb2c:	mov	x29, x29
    cb30:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    cb34:	mov	x19, x0
    cb38:	adrp	x2, 36 ; 0x30000
    cb3c:	add	x2, x2, #0xae8
    cb40:	bl	0x207e0
    cb44:	mov	x29, x29
    cb48:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    cb4c:	mov	x20, x0
    cb50:	mov	x0, x19
    cb54:	bl	0x200e8 ; symbol stub for: _objc_release
    cb58:	mov	x0, x20
    cb5c:	bl	0x20960
    cb60:	cmp	x0, #0x2
    cb64:	b.ne	0xcc84
    cb68:	adrp	x8, 41 ; 0x35000
    cb6c:	ldr	x0, [x8, #0xb30] ; Objc class ref: bad class ref
    cb70:	bl	0x209a0
    cb74:	mov	x29, x29
    cb78:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    cb7c:	mov	x19, x0
    cb80:	adrp	x8, 41 ; 0x35000
    cb84:	ldr	x0, [x8, #0xae0] ; Objc class ref: bad class ref
    cb88:	bl	0x20a20
    cb8c:	mov	x29, x29
    cb90:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    cb94:	mov	x23, x0
    cb98:	mov	x0, x19
    cb9c:	mov	w2, #0x60
    cba0:	mov	x3, x23
    cba4:	bl	0x207a0
    cba8:	mov	x29, x29
    cbac:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    cbb0:	mov	x21, x0
    cbb4:	mov	x0, x23
    cbb8:	bl	0x200e8 ; symbol stub for: _objc_release
    cbbc:	mov	x0, x19
    cbc0:	bl	0x200e8 ; symbol stub for: _objc_release
    cbc4:	mov	x0, x21
    cbc8:	bl	0x20e00
    cbcc:	mov	x19, x0
    cbd0:	mov	x0, x21
    cbd4:	bl	0x21320
    cbd8:	mov	x23, x0
    cbdc:	mov	x0, x20
    cbe0:	mov	x2, #0x0
    cbe4:	bl	0x214c0
    cbe8:	mov	x29, x29
    cbec:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    cbf0:	mov	x28, x0
    cbf4:	bl	0x20f60
    cbf8:	mov	x26, x0
    cbfc:	mov	x0, x28
    cc00:	bl	0x200e8 ; symbol stub for: _objc_release
    cc04:	mov	x0, x20
    cc08:	mov	w2, #0x1
    cc0c:	bl	0x214c0
    cc10:	mov	x29, x29
    cc14:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    cc18:	mov	x22, x0
    cc1c:	bl	0x20f60
    cc20:	mov	x28, x0
    cc24:	mov	x0, x22
    cc28:	bl	0x200e8 ; symbol stub for: _objc_release
    cc2c:	lsl	x8, x19, #6
    cc30:	sub	x8, x8, x19, lsl #2
    cc34:	add	w8, w8, w23
    cc38:	mov	w11, #0x851f
    cc3c:	movk	w11, #0x51eb, lsl #16
    cc40:	smull	x9, w26, w11
    cc44:	asr	x9, x9, #37
    cc48:	add	w9, w9, w9, lsr #31
    cc4c:	mov	w13, #0x64
    cc50:	msub	w10, w9, w13, w26
    cc54:	mov	w12, #0x3c
    cc58:	madd	w9, w9, w12, w10
    cc5c:	smull	x10, w28, w11
    cc60:	asr	x10, x10, #37
    cc64:	add	w10, w10, w10, lsr #31
    cc68:	msub	w11, w10, w13, w28
    cc6c:	madd	w10, w10, w12, w11
    cc70:	cmp	w9, w10
    cc74:	b.le	0xcc8c
    cc78:	cmp	w9, w8
    cc7c:	ccmp	w10, w8, #0x0, gt
    cc80:	b	0xcc94
    cc84:	mov	w19, #0x1
    cc88:	b	0xcca0
    cc8c:	cmp	w9, w8
    cc90:	ccmp	w10, w8, #0x4, le

; ===== sub_cc94 =====
    cc94:	cset	w19, gt
    cc98:	mov	x0, x21
    cc9c:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_cca0 =====
    cca0:	mov	x0, x20
    cca4:	bl	0x200e8 ; symbol stub for: _objc_release
    cca8:	b	0xc6bc

; ===== sub_ccac =====
    ccac:	add	x2, sp, #0x50
    ccb0:	add	x3, sp, #0xf0
    ccb4:	ldr	x0, [sp, #0x38]
    ccb8:	mov	w4, #0x10
    ccbc:	bl	0x20980
    ccc0:	str	x0, [sp, #0x48]
    ccc4:	ldr	x8, [sp, #0x48]
    ccc8:	cbnz	x8, 0xc538
    cccc:	mov	w19, #0x1
    ccd0:	b	0xccd8
    ccd4:	mov	w19, #0x0

; ===== sub_ccd8 =====
    ccd8:	ldr	x0, [sp, #0x38]
    ccdc:	bl	0x200e8 ; symbol stub for: _objc_release
    cce0:	ldr	x0, [sp]
    cce4:	bl	0x200e8 ; symbol stub for: _objc_release
    cce8:	ldr	x0, [sp, #0x38]
    ccec:	bl	0x200e8 ; symbol stub for: _objc_release
    ccf0:	ldur	x8, [x29, #-0x60]
    ccf4:	adrp	x9, 38 ; 0x32000
    ccf8:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    ccfc:	ldr	x9, [x9]
    cd00:	cmp	x9, x8
    cd04:	b.ne	0xcd2c
    cd08:	mov	x0, x19
    cd0c:	add	sp, sp, #0x200
    cd10:	ldp	x29, x30, [sp, #0x50]
    cd14:	ldp	x20, x19, [sp, #0x40]
    cd18:	ldp	x22, x21, [sp, #0x30]
    cd1c:	ldp	x24, x23, [sp, #0x20]
    cd20:	ldp	x26, x25, [sp, #0x10]
    cd24:	ldp	x28, x27, [sp], #0x60
    cd28:	ret
    cd2c:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
    cd30:	mov	x19, x0
    cd34:	ldr	x0, [sp, #0x90]
    cd38:	bl	0x200e8 ; symbol stub for: _objc_release
    cd3c:	ldr	x0, [sp, #0x98]
    cd40:	bl	0x200e8 ; symbol stub for: _objc_release
    cd44:	b	0xcd4c
    cd48:	mov	x19, x0

; ===== sub_cd4c =====
    cd4c:	mov	x0, x19
    cd50:	bl	0x1fe54 ; symbol stub for: __Unwind_Resume

; ===== sub_cd54 =====
    cd54:	stp	x24, x23, [sp, #-0x40]!
    cd58:	stp	x22, x21, [sp, #0x10]
    cd5c:	stp	x20, x19, [sp, #0x20]
    cd60:	stp	x29, x30, [sp, #0x30]
    cd64:	add	x29, sp, #0x30
    cd68:	bl	0x200f4 ; symbol stub for: _objc_retain
    cd6c:	mov	x19, x0
    cd70:	bl	0x21160
    cd74:	cbz	x0, 0xcf5c
    cd78:	adrp	x2, 35 ; 0x2f000
    cd7c:	add	x2, x2, #0x368 ; "snapper3."
    cd80:	mov	x0, x19
    cd84:	bl	0x20d80
    cd88:	cbz	w0, 0xcd9c
    cd8c:	mov	x0, x19
    cd90:	mov	w1, #0x1
    cd94:	bl	0xd108
    cd98:	b	0xcde0
    cd9c:	adrp	x2, 35 ; 0x2f000
    cda0:	add	x2, x2, #0x388 ; "copylog."
    cda4:	mov	x0, x19
    cda8:	bl	0x20d80
    cdac:	cbz	w0, 0xcdc0
    cdb0:	mov	x0, x19
    cdb4:	mov	w1, #0x1
    cdb8:	bl	0xd27c
    cdbc:	b	0xcde0
    cdc0:	adrp	x2, 35 ; 0x2f000
    cdc4:	add	x2, x2, #0x3a8 ; "activator:"
    cdc8:	mov	x0, x19
    cdcc:	bl	0x20d80
    cdd0:	cbz	w0, 0xcde8
    cdd4:	mov	x0, x19
    cdd8:	mov	w1, #0x1
    cddc:	bl	0xd3b8

; ===== sub_cde0 =====
    cde0:	mov	x21, x0
    cde4:	b	0xcf60
    cde8:	mov	x0, x19
    cdec:	bl	0x200f4 ; symbol stub for: _objc_retain
    cdf0:	mov	x20, x0
    cdf4:	adrp	x2, 35 ; 0x2f000
    cdf8:	add	x2, x2, #0x5c8 ; "pause:"
    cdfc:	bl	0x20d80
    ce00:	tbnz	w0, #0x0, 0xce2c
    ce04:	adrp	x2, 35 ; 0x2f000
    ce08:	add	x2, x2, #0x5e8 ; "if:"
    ce0c:	mov	x0, x20
    ce10:	bl	0x20d80
    ce14:	tbnz	w0, #0x0, 0xce2c
    ce18:	adrp	x2, 35 ; 0x2f000
    ce1c:	add	x2, x2, #0x608 ; "else"
    ce20:	mov	x0, x20
    ce24:	bl	0x21000
    ce28:	cbz	w0, 0xce3c
    ce2c:	mov	x0, x20
    ce30:	bl	0x200e8 ; symbol stub for: _objc_release
    ce34:	mov	w21, #0x1
    ce38:	b	0xcf60
    ce3c:	adrp	x2, 35 ; 0x2f000
    ce40:	add	x2, x2, #0x628 ; "endif"
    ce44:	mov	x0, x20
    ce48:	bl	0x21000
    ce4c:	mov	x21, x0
    ce50:	mov	x0, x20
    ce54:	bl	0x200e8 ; symbol stub for: _objc_release
    ce58:	tbnz	w21, #0x0, 0xce34
    ce5c:	adrp	x2, 35 ; 0x2f000
    ce60:	add	x2, x2, #0x3c8 ; "menu:"
    ce64:	mov	x0, x20
    ce68:	bl	0x20d80
    ce6c:	cbz	w0, 0xcec8
    ce70:	adrp	x8, 42 ; 0x36000
    ce74:	ldr	x21, [x8, #0x328]
    ce78:	adrp	x0, 35 ; 0x2f000
    ce7c:	add	x0, x0, #0x3c8 ; "menu:"
    ce80:	bl	0x21160
    ce84:	mov	x2, x0
    ce88:	mov	x0, x20
    ce8c:	bl	0x22140
    ce90:	mov	x29, x29
    ce94:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    ce98:	mov	x20, x0
    ce9c:	mov	x0, x21
    cea0:	mov	x2, x20
    cea4:	bl	0x214e0
    cea8:	mov	x29, x29
    ceac:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    ceb0:	cmp	x0, #0x0
    ceb4:	cset	w21, ne

; ===== sub_ceb8 =====
    ceb8:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_cebc =====
    cebc:	mov	x0, x20
    cec0:	bl	0x200e8 ; symbol stub for: _objc_release
    cec4:	b	0xcf60
    cec8:	mov	w21, #0x1
    cecc:	mov	x0, x20
    ced0:	mov	w1, #0x1
    ced4:	bl	0xd7b0
    ced8:	tbnz	w0, #0x0, 0xcf60
    cedc:	adrp	x2, 35 ; 0x2f000
    cee0:	add	x2, x2, #0x3e8 ; "shortcut:"
    cee4:	mov	x0, x20
    cee8:	bl	0x20d80
    ceec:	tbnz	w0, #0x0, 0xcf60
    cef0:	adrp	x2, 35 ; 0x2f000
    cef4:	add	x2, x2, #0x408 ; "url:"
    cef8:	mov	x0, x20
    cefc:	bl	0x20d80
    cf00:	tbnz	w0, #0x0, 0xcf60
    cf04:	adrp	x2, 35 ; 0x2f000
    cf08:	add	x2, x2, #0x428 ; "shell:"
    cf0c:	mov	x0, x20
    cf10:	bl	0x20d80
    cf14:	tbnz	w0, #0x0, 0xcf60
    cf18:	adrp	x2, 35 ; 0x2f000
    cf1c:	add	x2, x2, #0x2c8 ; "app:"
    cf20:	mov	x0, x20
    cf24:	bl	0x20d80
    cf28:	cbz	w0, 0xcf80
    cf2c:	mov	x0, x20
    cf30:	bl	0x21160
    cf34:	mov	x20, x0
    cf38:	adrp	x0, 35 ; 0x2f000
    cf3c:	add	x0, x0, #0x2c8 ; "app:"
    cf40:	bl	0x21160
    cf44:	cmp	x20, x0
    cf48:	b.ls	0xcf5c
    cf4c:	mov	x0, #0x0
    cf50:	mov	w1, #0x1
    cf54:	bl	0xbb6c
    cf58:	b	0xcde0
    cf5c:	mov	w21, #0x0

; ===== sub_cf60 =====
    cf60:	mov	x0, x19
    cf64:	bl	0x200e8 ; symbol stub for: _objc_release
    cf68:	mov	x0, x21
    cf6c:	ldp	x29, x30, [sp, #0x30]
    cf70:	ldp	x20, x19, [sp, #0x20]
    cf74:	ldp	x22, x21, [sp, #0x10]
    cf78:	ldp	x24, x23, [sp], #0x40
    cf7c:	ret
    cf80:	adrp	x2, 35 ; 0x2f000
    cf84:	add	x2, x2, #0x448 ; "lib:"
    cf88:	mov	x0, x20
    cf8c:	bl	0x20d80
    cf90:	cbz	w0, 0xcfcc
    cf94:	adrp	x8, 42 ; 0x36000
    cf98:	ldr	x21, [x8, #0x140]
    cf9c:	cbz	x21, 0xcf60
    cfa0:	adrp	x0, 35 ; 0x2f000
    cfa4:	add	x0, x0, #0x448 ; "lib:"
    cfa8:	bl	0x21160
    cfac:	mov	x2, x0
    cfb0:	mov	x0, x20
    cfb4:	bl	0x22140
    cfb8:	mov	x29, x29
    cfbc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    cfc0:	mov	x20, x0
    cfc4:	blr	x21
    cfc8:	b	0xd0f8
    cfcc:	adrp	x2, 35 ; 0x2f000
    cfd0:	add	x2, x2, #0x468 ; "ext:"
    cfd4:	mov	x0, x20
    cfd8:	bl	0x20d80
    cfdc:	cbz	w0, 0xd078
    cfe0:	mov	x0, x20
    cfe4:	bl	0xde6c
    cfe8:	mov	x29, x29
    cfec:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    cff0:	mov	x21, x0
    cff4:	mov	x2, #0x0
    cff8:	bl	0x214c0
    cffc:	mov	x29, x29
    d000:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d004:	mov	x22, x0
    d008:	bl	0xdab0
    d00c:	mov	x29, x29
    d010:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d014:	mov	x23, x0
    d018:	adrp	x2, 34 ; 0x2f000
    d01c:	add	x2, x2, #0x488 ; "Program"
    d020:	bl	0x214e0
    d024:	mov	x29, x29
    d028:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d02c:	mov	x20, x0
    d030:	mov	x0, x23
    d034:	bl	0x200e8 ; symbol stub for: _objc_release
    d038:	mov	x0, x22
    d03c:	bl	0x200e8 ; symbol stub for: _objc_release
    d040:	mov	x0, x21
    d044:	bl	0x200e8 ; symbol stub for: _objc_release
    d048:	cbz	x20, 0xd100
    d04c:	adrp	x8, 40 ; 0x35000
    d050:	ldr	x0, [x8, #0xa78] ; Objc class ref: bad class ref
    d054:	bl	0x20b00
    d058:	mov	x29, x29
    d05c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d060:	mov	x22, x0
    d064:	mov	x2, x20
    d068:	bl	0x210a0
    d06c:	mov	x21, x0
    d070:	mov	x0, x22
    d074:	b	0xceb8
    d078:	bl	0xdfc8
    d07c:	mov	x29, x29
    d080:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d084:	mov	x21, x0
    d088:	mov	x2, x20
    d08c:	bl	0x214e0
    d090:	mov	x29, x29
    d094:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d098:	mov	x22, x0
    d09c:	cbz	x0, 0xd0b0
    d0a0:	mov	x0, x22
    d0a4:	bl	0x20124 ; symbol stub for: _objc_retainBlock
    d0a8:	mov	x20, x0
    d0ac:	b	0xd0d4
    d0b0:	mov	x0, x20
    d0b4:	bl	0xdff8
    d0b8:	mov	x29, x29
    d0bc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d0c0:	mov	x23, x0
    d0c4:	bl	0x20124 ; symbol stub for: _objc_retainBlock
    d0c8:	mov	x20, x0
    d0cc:	mov	x0, x23
    d0d0:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_d0d4 =====
    d0d4:	mov	x0, x22
    d0d8:	bl	0x200e8 ; symbol stub for: _objc_release
    d0dc:	mov	x0, x21
    d0e0:	bl	0x200e8 ; symbol stub for: _objc_release
    d0e4:	cbz	x20, 0xd100
    d0e8:	ldr	x8, [x20, #0x10]
    d0ec:	mov	x0, x20
    d0f0:	mov	w1, #0x1
    d0f4:	blr	x8

; ===== sub_d0f8 =====
    d0f8:	mov	x21, x0
    d0fc:	b	0xcebc
    d100:	mov	w21, #0x0
    d104:	b	0xcebc

; ===== sub_d108 =====
    d108:	stp	x26, x25, [sp, #-0x50]!
    d10c:	stp	x24, x23, [sp, #0x10]
    d110:	stp	x22, x21, [sp, #0x20]
    d114:	stp	x20, x19, [sp, #0x30]
    d118:	stp	x29, x30, [sp, #0x40]
    d11c:	add	x29, sp, #0x40
    d120:	mov	x20, x1
    d124:	bl	0x200f4 ; symbol stub for: _objc_retain
    d128:	mov	x19, x0
    d12c:	mov	x24, #0x0
    d130:	mov	w23, #0x0
    d134:	adrp	x25, 40 ; 0x35000
    d138:	adrp	x26, 31 ; 0x2c000
    d13c:	add	x26, x26, #0x370
    d140:	ldr	x0, [x25, #0xa38]
    d144:	ldr	x2, [x26, x24]
    d148:	bl	0x22120
    d14c:	mov	x29, x29
    d150:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d154:	mov	x21, x0
    d158:	mov	x0, x19
    d15c:	mov	x2, x21
    d160:	bl	0x21000
    d164:	mov	x22, x0
    d168:	mov	x0, x21
    d16c:	bl	0x200e8 ; symbol stub for: _objc_release
    d170:	orr	w23, w22, w23
    d174:	add	x24, x24, #0x10
    d178:	cmp	x24, #0x70
    d17c:	b.ne	0xd140
    d180:	adrp	x22, 41 ; 0x36000
    d184:	ldr	x8, [x22, #0x470]
    d188:	cbz	x8, 0xd194
    d18c:	mov	w8, #0x1
    d190:	b	0xd1b0
    d194:	adrp	x1, 22 ; 0x23000
    d198:	add	x1, x1, #0x304 ; literal pool for: "CFNotificationCenterGetDistributedCenter"
    d19c:	mov	x0, #-0x2
    d1a0:	bl	0x1ff50 ; symbol stub for: _dlsym
    d1a4:	str	x0, [x22, #0x470]
    d1a8:	cmp	x0, #0x0
    d1ac:	cset	w8, ne

; ===== sub_d1b0 =====
    d1b0:	and	w8, w23, w8
    d1b4:	tbz	w8, #0x0, 0xd24c
    d1b8:	adrp	x8, 41 ; 0x36000
    d1bc:	ldr	x8, [x8, #0x480]
    d1c0:	cmn	x8, #0x1
    d1c4:	b.ne	0xd274

; ===== sub_d1c8 =====
    d1c8:	adrp	x8, 41 ; 0x36000
    d1cc:	ldrb	w23, [x8, #0x478]
    d1d0:	tbnz	w20, #0x0, 0xd250
    d1d4:	tbz	w23, #0x0, 0xd250
    d1d8:	adrp	x0, 34 ; 0x2f000
    d1dc:	add	x0, x0, #0x368 ; "snapper3."
    d1e0:	bl	0x21160
    d1e4:	mov	x2, x0
    d1e8:	mov	x0, x19
    d1ec:	bl	0x22140
    d1f0:	mov	x29, x29
    d1f4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d1f8:	mov	x20, x0
    d1fc:	adrp	x0, 34 ; 0x2f000
    d200:	add	x0, x0, #0x4a8 ; "com.jontelang.snapper3."
    d204:	mov	x2, x20
    d208:	bl	0x220a0
    d20c:	mov	x29, x29
    d210:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d214:	mov	x21, x0
    d218:	mov	x0, x20
    d21c:	bl	0x200e8 ; symbol stub for: _objc_release
    d220:	ldr	x8, [x22, #0x470]
    d224:	blr	x8
    d228:	mov	w23, #0x1
    d22c:	mov	x1, x21
    d230:	mov	x2, #0x0
    d234:	mov	x3, #0x0
    d238:	mov	w4, #0x1
    d23c:	bl	0x1fd40 ; symbol stub for: _CFNotificationCenterPostNotification
    d240:	mov	x0, x21
    d244:	bl	0x200e8 ; symbol stub for: _objc_release
    d248:	b	0xd250
    d24c:	mov	w23, #0x0

; ===== sub_d250 =====
    d250:	mov	x0, x19
    d254:	bl	0x200e8 ; symbol stub for: _objc_release
    d258:	and	w0, w23, #0x1
    d25c:	ldp	x29, x30, [sp, #0x40]
    d260:	ldp	x20, x19, [sp, #0x30]
    d264:	ldp	x22, x21, [sp, #0x20]
    d268:	ldp	x24, x23, [sp, #0x10]
    d26c:	ldp	x26, x25, [sp], #0x50
    d270:	ret
    d274:	bl	0x1fcb8
    d278:	b	0xd1c8

; ===== sub_d27c =====
    d27c:	stp	x26, x25, [sp, #-0x50]!
    d280:	stp	x24, x23, [sp, #0x10]
    d284:	stp	x22, x21, [sp, #0x20]
    d288:	stp	x20, x19, [sp, #0x30]
    d28c:	stp	x29, x30, [sp, #0x40]
    d290:	add	x29, sp, #0x40
    d294:	mov	x20, x1
    d298:	bl	0x200f4 ; symbol stub for: _objc_retain
    d29c:	mov	x19, x0
    d2a0:	mov	x8, #0x0
    d2a4:	mov	w23, #0x0
    d2a8:	mov	w9, #0x1
    d2ac:	adrp	x24, 40 ; 0x35000
    d2b0:	adrp	x25, 31 ; 0x2c000
    d2b4:	add	x25, x25, #0x420
    d2b8:	mov	x26, x9
    d2bc:	ldr	x0, [x24, #0xa38]
    d2c0:	lsl	x8, x8, #4
    d2c4:	ldr	x2, [x25, x8]
    d2c8:	bl	0x22120
    d2cc:	mov	x29, x29
    d2d0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d2d4:	mov	x21, x0
    d2d8:	mov	x0, x19
    d2dc:	mov	x2, x21
    d2e0:	bl	0x21000
    d2e4:	mov	x22, x0
    d2e8:	mov	x0, x21
    d2ec:	bl	0x200e8 ; symbol stub for: _objc_release
    d2f0:	mov	w9, #0x0
    d2f4:	orr	w23, w22, w23
    d2f8:	mov	w8, #0x1
    d2fc:	tbnz	w26, #0x0, 0xd2b8
    d300:	tbz	w23, #0x0, 0xd388
    d304:	adrp	x8, 41 ; 0x36000
    d308:	ldr	x8, [x8, #0x490]
    d30c:	cmn	x8, #0x1
    d310:	b.ne	0xd3b0

; ===== sub_d314 =====
    d314:	adrp	x8, 41 ; 0x36000
    d318:	ldrb	w21, [x8, #0x488]
    d31c:	tbnz	w20, #0x0, 0xd38c
    d320:	tbz	w21, #0x0, 0xd38c
    d324:	adrp	x0, 34 ; 0x2f000
    d328:	add	x0, x0, #0x388 ; "copylog."
    d32c:	bl	0x21160
    d330:	mov	x2, x0
    d334:	mov	x0, x19
    d338:	bl	0x22140
    d33c:	mov	x29, x29
    d340:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d344:	mov	x20, x0
    d348:	adrp	x0, 34 ; 0x2f000
    d34c:	add	x0, x0, #0x568 ; "me.tomt000.copylog."
    d350:	mov	x2, x20
    d354:	bl	0x220a0
    d358:	mov	x29, x29
    d35c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d360:	mov	x21, x0
    d364:	bl	0x20100 ; symbol stub for: _objc_retainAutorelease
    d368:	bl	0x20280
    d36c:	bl	0x1fff8 ; symbol stub for: _notify_post
    d370:	mov	x0, x21
    d374:	bl	0x200e8 ; symbol stub for: _objc_release
    d378:	mov	x0, x20
    d37c:	bl	0x200e8 ; symbol stub for: _objc_release
    d380:	mov	w21, #0x1
    d384:	b	0xd38c
    d388:	mov	w21, #0x0

; ===== sub_d38c =====
    d38c:	mov	x0, x19
    d390:	bl	0x200e8 ; symbol stub for: _objc_release
    d394:	and	w0, w21, #0x1
    d398:	ldp	x29, x30, [sp, #0x40]
    d39c:	ldp	x20, x19, [sp, #0x30]
    d3a0:	ldp	x22, x21, [sp, #0x20]
    d3a4:	ldp	x24, x23, [sp, #0x10]
    d3a8:	ldp	x26, x25, [sp], #0x50
    d3ac:	ret
    d3b0:	bl	0x1fccc
    d3b4:	b	0xd314

; ===== sub_d3b8 =====
    d3b8:	sub	sp, sp, #0x90
    d3bc:	stp	x28, x27, [sp, #0x30]
    d3c0:	stp	x26, x25, [sp, #0x40]
    d3c4:	stp	x24, x23, [sp, #0x50]
    d3c8:	stp	x22, x21, [sp, #0x60]
    d3cc:	stp	x20, x19, [sp, #0x70]
    d3d0:	stp	x29, x30, [sp, #0x80]
    d3d4:	add	x29, sp, #0x80
    d3d8:	mov	x24, x1
    d3dc:	bl	0x200f4 ; symbol stub for: _objc_retain
    d3e0:	mov	x26, x0
    d3e4:	adrp	x0, 34 ; 0x2f000
    d3e8:	add	x0, x0, #0x3a8 ; "activator:"
    d3ec:	bl	0x21160
    d3f0:	mov	x2, x0
    d3f4:	mov	x0, x26
    d3f8:	bl	0x22140
    d3fc:	mov	x29, x29
    d400:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d404:	mov	x25, x0
    d408:	bl	0x21160
    d40c:	cbz	x0, 0xd4cc
    d410:	mov	x0, x25
    d414:	bl	0x200f4 ; symbol stub for: _objc_retain
    d418:	mov	x22, x0
    d41c:	adrp	x27, 41 ; 0x36000
    d420:	ldr	x0, [x27, #0x498]
    d424:	cbnz	x0, 0xd450
    d428:	adrp	x8, 40 ; 0x35000
    d42c:	ldr	x0, [x8, #0xa68] ; Objc class ref: bad class ref
    d430:	bl	0x20b60
    d434:	mov	x29, x29
    d438:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d43c:	ldr	x8, [x27, #0x498]
    d440:	str	x0, [x27, #0x498]
    d444:	mov	x0, x8
    d448:	bl	0x200e8 ; symbol stub for: _objc_release
    d44c:	ldr	x0, [x27, #0x498]
    d450:	mov	x2, x22
    d454:	bl	0x214e0
    d458:	mov	x29, x29
    d45c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d460:	mov	x19, x0
    d464:	bl	0x200e8 ; symbol stub for: _objc_release
    d468:	adrp	x23, 39 ; 0x34000
    d46c:	adrp	x20, 39 ; 0x34000
    d470:	str	w24, [sp, #0x1c]
    d474:	cbz	x19, 0xd4d4
    d478:	ldr	x0, [x27, #0x498]
    d47c:	mov	x2, x22
    d480:	bl	0x214e0
    d484:	mov	x29, x29
    d488:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d48c:	mov	x19, x0
    d490:	adrp	x8, 40 ; 0x35000
    d494:	ldr	x0, [x8, #0xa80] ; Objc class ref: bad class ref
    d498:	bl	0x21380
    d49c:	mov	x29, x29
    d4a0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d4a4:	mov	x21, x0
    d4a8:	cmp	x19, x0
    d4ac:	b.eq	0xd67c
    d4b0:	ldr	x0, [x27, #0x498]
    d4b4:	mov	x2, x22
    d4b8:	bl	0x214e0
    d4bc:	mov	x29, x29
    d4c0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d4c4:	mov	x28, x0
    d4c8:	b	0xd680
    d4cc:	mov	w19, #0x0
    d4d0:	b	0xd764
    d4d4:	str	x25, [sp, #0x10]
    d4d8:	ldr	x23, [x23, #0xbd0]
    d4dc:	ldr	x24, [x20, #0xbd8]
    d4e0:	bl	0x1fe90 ; symbol stub for: __dyld_image_count
    d4e4:	cbz	w0, 0xd69c
    d4e8:	mov	x25, x0
    d4ec:	str	x26, [sp, #0x8]
    d4f0:	mov	w26, #0x0
    d4f4:	adrp	x20, 22 ; 0x23000
    d4f8:	add	x20, x20, #0x4f5 ; literal pool for: "DynamicLibraries/"
    d4fc:	str	x22, [sp, #0x20]
    d500:	mov	x0, x26
    d504:	bl	0x1fe84 ; symbol stub for: __dyld_get_image_name
    d508:	cbz	x0, 0xd630
    d50c:	mov	x19, x0
    d510:	mov	x1, x20
    d514:	bl	0x201fc ; symbol stub for: _strstr
    d518:	cbnz	x0, 0xd530
    d51c:	mov	x0, x19
    d520:	adrp	x1, 22 ; 0x23000
    d524:	add	x1, x1, #0x507 ; literal pool for: "TweakInject/"
    d528:	bl	0x201fc ; symbol stub for: _strstr
    d52c:	cbz	x0, 0xd630
    d530:	adrp	x8, 40 ; 0x35000
    d534:	ldr	x0, [x8, #0xa38] ; Objc class ref: bad class ref
    d538:	mov	x2, x19
    d53c:	bl	0x22120
    d540:	mov	x29, x29
    d544:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d548:	mov	x21, x0
    d54c:	bl	0x21120
    d550:	mov	x29, x29
    d554:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d558:	mov	x28, x0
    d55c:	mov	x1, x22
    d560:	bl	0xe38c
    d564:	mov	x27, x0
    d568:	mov	x0, x28
    d56c:	bl	0x200e8 ; symbol stub for: _objc_release
    d570:	mov	x0, x21
    d574:	bl	0x200e8 ; symbol stub for: _objc_release
    d578:	cbz	w27, 0xd630
    d57c:	mov	x22, x20
    d580:	str	wzr, [sp, #0x2c]
    d584:	add	x1, sp, #0x2c
    d588:	mov	x0, x19
    d58c:	bl	0x20058 ; symbol stub for: _objc_copyClassNamesForImage
    d590:	mov	x21, x0
    d594:	ldr	w8, [sp, #0x2c]
    d598:	cbz	w8, 0xd638
    d59c:	adrp	x8, 40 ; 0x35000
    d5a0:	ldr	x19, [x8, #0x788]
    d5a4:	mov	x27, x21
    d5a8:	mov	w20, #0x1

; ===== sub_d5ac =====
    d5ac:	ldr	x0, [x27], #0x8
    d5b0:	bl	0x20088 ; symbol stub for: _objc_getClass
    d5b4:	mov	x28, x0
    d5b8:	cbz	x0, 0xd618
    d5bc:	mov	x0, x28
    d5c0:	mov	x2, x23
    d5c4:	bl	0x20f40
    d5c8:	tbnz	w0, #0x0, 0xd5dc
    d5cc:	mov	x0, x28
    d5d0:	mov	x2, x24
    d5d4:	bl	0x20f40
    d5d8:	cbz	w0, 0xd614
    d5dc:	mov	x0, x28
    d5e0:	mov	x1, x19
    d5e4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    d5e8:	tbz	w0, #0x0, 0xd604
    d5ec:	mov	x0, x28
    d5f0:	mov	x2, x19
    d5f4:	bl	0x215e0
    d5f8:	mov	x29, x29
    d5fc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d600:	b	0xd60c
    d604:	mov	x0, x28
    d608:	bl	0x200d0 ; symbol stub for: _objc_opt_new

; ===== sub_d60c =====
    d60c:	mov	x28, x0
    d610:	b	0xd618
    d614:	mov	x28, #0x0

; ===== sub_d618 =====
    d618:	ldr	w8, [sp, #0x2c]
    d61c:	cmp	x20, x8
    d620:	add	x20, x20, #0x1
    d624:	ccmp	x28, #0x0, #0x0, lo
    d628:	b.ne	0xd63c
    d62c:	b	0xd5ac
    d630:	mov	x28, #0x0
    d634:	b	0xd64c
    d638:	mov	x28, #0x0
    d63c:	mov	x0, x21
    d640:	bl	0x1ff8c ; symbol stub for: _free
    d644:	mov	x20, x22
    d648:	ldr	x22, [sp, #0x20]

; ===== sub_d64c =====
    d64c:	add	w26, w26, #0x1
    d650:	cmp	w26, w25
    d654:	b.hs	0xd65c
    d658:	cbz	x28, 0xd500
    d65c:	ldr	x26, [sp, #0x8]
    d660:	cbz	x28, 0xd69c
    d664:	adrp	x8, 41 ; 0x36000
    d668:	ldr	x0, [x8, #0x498]
    d66c:	mov	x2, x28
    d670:	mov	x3, x22
    d674:	bl	0x21c00
    d678:	b	0xd6d4
    d67c:	mov	x28, #0x0

; ===== sub_d680 =====
    d680:	mov	x0, x21
    d684:	bl	0x200e8 ; symbol stub for: _objc_release
    d688:	mov	x0, x19
    d68c:	bl	0x200e8 ; symbol stub for: _objc_release
    d690:	ldr	x23, [x23, #0xbd0]
    d694:	ldr	x24, [x20, #0xbd8]
    d698:	b	0xd6d8
    d69c:	adrp	x8, 40 ; 0x35000
    d6a0:	ldr	x0, [x8, #0xa80] ; Objc class ref: bad class ref
    d6a4:	bl	0x21380
    d6a8:	mov	x29, x29
    d6ac:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d6b0:	mov	x19, x0
    d6b4:	adrp	x8, 41 ; 0x36000
    d6b8:	ldr	x0, [x8, #0x498]
    d6bc:	mov	x2, x19
    d6c0:	mov	x3, x22
    d6c4:	bl	0x21c00
    d6c8:	mov	x0, x19
    d6cc:	bl	0x200e8 ; symbol stub for: _objc_release
    d6d0:	mov	x28, #0x0

; ===== sub_d6d4 =====
    d6d4:	ldr	x25, [sp, #0x10]

; ===== sub_d6d8 =====
    d6d8:	mov	x0, x22
    d6dc:	bl	0x200e8 ; symbol stub for: _objc_release
    d6e0:	mov	x0, x28
    d6e4:	mov	x1, x23
    d6e8:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    d6ec:	tbz	w0, #0x0, 0xd6fc
    d6f0:	ldr	w8, [sp, #0x1c]
    d6f4:	tbz	w8, #0x0, 0xd718
    d6f8:	b	0xd758
    d6fc:	mov	x0, x28
    d700:	mov	x1, x24
    d704:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    d708:	mov	x19, x0
    d70c:	ldr	w8, [sp, #0x1c]
    d710:	tbnz	w8, #0x0, 0xd75c
    d714:	tbz	w19, #0x0, 0xd75c
    d718:	mov	x0, x28
    d71c:	mov	x1, x23
    d720:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    d724:	tbz	w0, #0x0, 0xd744
    d728:	mov	x0, x28
    d72c:	mov	x1, x23
    d730:	mov	x2, #0x0
    d734:	mov	x3, #0x0
    d738:	mov	x4, x22
    d73c:	bl	0x200a0 ; symbol stub for: _objc_msgSend
    d740:	b	0xd758
    d744:	mov	x0, x28
    d748:	mov	x1, x24
    d74c:	mov	x2, #0x0
    d750:	mov	x3, #0x0
    d754:	bl	0x200a0 ; symbol stub for: _objc_msgSend

; ===== sub_d758 =====
    d758:	mov	w19, #0x1
    d75c:	mov	x0, x28
    d760:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_d764 =====
    d764:	mov	x0, x25
    d768:	bl	0x200e8 ; symbol stub for: _objc_release
    d76c:	mov	x0, x26
    d770:	bl	0x200e8 ; symbol stub for: _objc_release
    d774:	and	w0, w19, #0x1
    d778:	ldp	x29, x30, [sp, #0x80]
    d77c:	ldp	x20, x19, [sp, #0x70]
    d780:	ldp	x22, x21, [sp, #0x60]
    d784:	ldp	x24, x23, [sp, #0x50]
    d788:	ldp	x26, x25, [sp, #0x40]
    d78c:	ldp	x28, x27, [sp, #0x30]
    d790:	add	sp, sp, #0x90
    d794:	ret
    d798:	cmp	w1, #0x1
    d79c:	b.ne	0xd7ac
    d7a0:	bl	0x2004c ; symbol stub for: _objc_begin_catch
    d7a4:	bl	0x20064 ; symbol stub for: _objc_end_catch
    d7a8:	b	0xd758
    d7ac:	bl	0x1fe54 ; symbol stub for: __Unwind_Resume

; ===== sub_d7b0 =====
    d7b0:	stp	x22, x21, [sp, #-0x30]!
    d7b4:	stp	x20, x19, [sp, #0x10]
    d7b8:	stp	x29, x30, [sp, #0x20]
    d7bc:	add	x29, sp, #0x20
    d7c0:	mov	x20, x1
    d7c4:	bl	0x200f4 ; symbol stub for: _objc_retain
    d7c8:	mov	x19, x0
    d7cc:	adrp	x2, 34 ; 0x2f000
    d7d0:	add	x2, x2, #0x648 ; "brightness:"
    d7d4:	bl	0x20d80
    d7d8:	cbz	w0, 0xd7f8
    d7dc:	adrp	x1, 34 ; 0x2f000
    d7e0:	add	x1, x1, #0x648 ; "brightness:"
    d7e4:	mov	x0, x19
    d7e8:	bl	0xe670
    d7ec:	mov	x0, x20
    d7f0:	bl	0xe59c
    d7f4:	b	0xd850
    d7f8:	adrp	x2, 34 ; 0x2f000
    d7fc:	add	x2, x2, #0x668 ; "brightness.up:"
    d800:	mov	x0, x19
    d804:	bl	0x20d80
    d808:	cbz	w0, 0xd820
    d80c:	adrp	x1, 34 ; 0x2f000
    d810:	add	x1, x1, #0x668 ; "brightness.up:"
    d814:	mov	x0, x19
    d818:	bl	0xe670
    d81c:	b	0xd848
    d820:	adrp	x2, 34 ; 0x2f000
    d824:	add	x2, x2, #0x688 ; "brightness.down:"
    d828:	mov	x0, x19
    d82c:	bl	0x20d80
    d830:	cbz	w0, 0xd870
    d834:	adrp	x1, 34 ; 0x2f000
    d838:	add	x1, x1, #0x688 ; "brightness.down:"
    d83c:	mov	x0, x19
    d840:	bl	0xe670
    d844:	fneg	d0, d0

; ===== sub_d848 =====
    d848:	mov	x0, x20
    d84c:	bl	0xe6f4

; ===== sub_d850 =====
    d850:	mov	x21, x0

; ===== sub_d854 =====
    d854:	mov	x0, x19
    d858:	bl	0x200e8 ; symbol stub for: _objc_release
    d85c:	mov	x0, x21
    d860:	ldp	x29, x30, [sp, #0x20]
    d864:	ldp	x20, x19, [sp, #0x10]
    d868:	ldp	x22, x21, [sp], #0x30
    d86c:	ret
    d870:	adrp	x2, 34 ; 0x2f000
    d874:	add	x2, x2, #0x6a8 ; "volume.media:"
    d878:	mov	x0, x19
    d87c:	bl	0x20d80
    d880:	cbz	w0, 0xd8a0
    d884:	adrp	x1, 34 ; 0x2f000
    d888:	add	x1, x1, #0x6a8 ; "volume.media:"
    d88c:	mov	x0, x19
    d890:	bl	0xe670
    d894:	adrp	x0, 34 ; 0x2f000
    d898:	add	x0, x0, #0x6c8 ; "Audio/Video"
    d89c:	b	0xd8cc
    d8a0:	adrp	x2, 34 ; 0x2f000
    d8a4:	add	x2, x2, #0x6e8 ; "volume.ringer:"
    d8a8:	mov	x0, x19
    d8ac:	bl	0x20d80
    d8b0:	cbz	w0, 0xd8d8
    d8b4:	adrp	x1, 34 ; 0x2f000
    d8b8:	add	x1, x1, #0x6e8 ; "volume.ringer:"
    d8bc:	mov	x0, x19
    d8c0:	bl	0xe670
    d8c4:	adrp	x0, 34 ; 0x2f000
    d8c8:	add	x0, x0, #0x708 ; "Ringtone"

; ===== sub_d8cc =====
    d8cc:	mov	x1, x20
    d8d0:	bl	0xe760
    d8d4:	b	0xd850
    d8d8:	adrp	x2, 34 ; 0x2f000
    d8dc:	add	x2, x2, #0x728 ; "message:"
    d8e0:	mov	x0, x19
    d8e4:	bl	0x20d80
    d8e8:	cbz	w0, 0xd938
    d8ec:	tbnz	w20, #0x0, 0xda98
    d8f0:	adrp	x0, 34 ; 0x2f000
    d8f4:	add	x0, x0, #0x728 ; "message:"
    d8f8:	bl	0x21160
    d8fc:	mov	x2, x0
    d900:	mov	x0, x19
    d904:	bl	0x22140
    d908:	mov	x5, x0
    d90c:	adrp	x4, 34 ; 0x2f000
    d910:	add	x4, x4, #0x748 ; "Triggr"
    d914:	adrp	x6, 34 ; 0x2f000
    d918:	add	x6, x6, #0x768 ; "OK"
    d91c:	fmov	d0, xzr
    d920:	mov	x0, #0x0
    d924:	mov	x1, #0x0
    d928:	mov	x2, #0x0
    d92c:	mov	x3, #0x0
    d930:	bl	0x1fdb8 ; symbol stub for: _CFUserNotificationDisplayNotice
    d934:	b	0xda98
    d938:	adrp	x2, 34 ; 0x2f000
    d93c:	add	x2, x2, #0x788 ; "speak:"
    d940:	mov	x0, x19
    d944:	bl	0x20d80
    d948:	cbz	w0, 0xd97c
    d94c:	tbnz	w20, #0x0, 0xda98
    d950:	adrp	x0, 34 ; 0x2f000
    d954:	add	x0, x0, #0x788 ; "speak:"
    d958:	bl	0x21160
    d95c:	mov	x2, x0
    d960:	mov	x0, x19
    d964:	bl	0x22140
    d968:	mov	x29, x29
    d96c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d970:	mov	x20, x0
    d974:	bl	0xe824
    d978:	b	0xda90
    d97c:	adrp	x2, 34 ; 0x2f000
    d980:	add	x2, x2, #0x7a8 ; "toast:"
    d984:	mov	x0, x19
    d988:	bl	0x20d80
    d98c:	cbz	w0, 0xd9d0
    d990:	tbnz	w20, #0x0, 0xda98
    d994:	adrp	x0, 34 ; 0x2f000
    d998:	add	x0, x0, #0x7a8 ; "toast:"
    d99c:	bl	0x21160
    d9a0:	mov	x2, x0
    d9a4:	mov	x0, x19
    d9a8:	bl	0x22140
    d9ac:	mov	x29, x29
    d9b0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d9b4:	mov	x20, x0
    d9b8:	bl	0xed54
    d9bc:	mov	x29, x29
    d9c0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    d9c4:	mov	x21, x0
    d9c8:	bl	0xe8ac
    d9cc:	b	0xda88
    d9d0:	adrp	x2, 34 ; 0x2f000
    d9d4:	add	x2, x2, #0x7c8 ; "airplay:"
    d9d8:	mov	x0, x19
    d9dc:	bl	0x20d80
    d9e0:	cbz	w0, 0xda24
    d9e4:	adrp	x0, 34 ; 0x2f000
    d9e8:	add	x0, x0, #0x7c8 ; "airplay:"
    d9ec:	bl	0x21160
    d9f0:	mov	x2, x0
    d9f4:	mov	x0, x19
    d9f8:	bl	0x22140
    d9fc:	mov	x29, x29
    da00:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    da04:	mov	x22, x0
    da08:	bl	0x21160
    da0c:	cbz	x0, 0xdaa0
    da10:	mov	x0, x22
    da14:	mov	x1, x20
    da18:	bl	0xef24
    da1c:	mov	x21, x0
    da20:	b	0xdaa4
    da24:	adrp	x2, 34 ; 0x2f000
    da28:	add	x2, x2, #0x7e8 ; "settings:"
    da2c:	mov	x0, x19
    da30:	bl	0x20d80
    da34:	mov	x21, x0
    da38:	tbnz	w20, #0x0, 0xd854
    da3c:	cbz	w21, 0xd854
    da40:	adrp	x0, 34 ; 0x2f000
    da44:	add	x0, x0, #0x7e8 ; "settings:"
    da48:	bl	0x21160
    da4c:	mov	x2, x0
    da50:	mov	x0, x19
    da54:	bl	0x22140
    da58:	mov	x29, x29
    da5c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    da60:	mov	x20, x0
    da64:	adrp	x0, 34 ; 0x2f000
    da68:	add	x0, x0, #0x808 ; "App-prefs:"
    da6c:	mov	x2, x20
    da70:	bl	0x220a0
    da74:	mov	x29, x29
    da78:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    da7c:	mov	x21, x0
    da80:	mov	x1, #0x0
    da84:	bl	0xba78

; ===== sub_da88 =====
    da88:	mov	x0, x21
    da8c:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_da90 =====
    da90:	mov	x0, x20
    da94:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_da98 =====
    da98:	mov	w21, #0x1
    da9c:	b	0xd854
    daa0:	mov	w21, #0x0

; ===== sub_daa4 =====
    daa4:	mov	x0, x22
    daa8:	bl	0x200e8 ; symbol stub for: _objc_release
    daac:	b	0xd854

; ===== sub_dab0 =====
    dab0:	stp	x28, x27, [sp, #-0x60]!
    dab4:	stp	x26, x25, [sp, #0x10]
    dab8:	stp	x24, x23, [sp, #0x20]
    dabc:	stp	x22, x21, [sp, #0x30]
    dac0:	stp	x20, x19, [sp, #0x40]
    dac4:	stp	x29, x30, [sp, #0x50]
    dac8:	add	x29, sp, #0x50
    dacc:	sub	sp, sp, #0x1a0
    dad0:	adrp	x8, 37 ; 0x32000
    dad4:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    dad8:	ldr	x8, [x8]
    dadc:	stur	x8, [x29, #-0x58]
    dae0:	bl	0x200f4 ; symbol stub for: _objc_retain
    dae4:	mov	x19, x0
    dae8:	movi.16b	v0, #0x0
    daec:	stp	q0, q0, [sp, #0x40]
    daf0:	stp	q0, q0, [sp, #0x60]
    daf4:	adrp	x0, 36 ; 0x31000
    daf8:	add	x0, x0, #0xe08 ; "/var/jb"
    dafc:	adrp	x20, 34 ; 0x2f000
    db00:	add	x20, x20, #0x9a8 ; "/Library/Triggr/Extensions"
    db04:	mov	x2, x20
    db08:	bl	0x220a0
    db0c:	mov	x29, x29
    db10:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    db14:	mov	x22, x0
    db18:	stp	x0, x20, [x29, #-0xe8]
    db1c:	adrp	x8, 40 ; 0x35000
    db20:	ldr	x0, [x8, #0xa48] ; Objc class ref: bad class ref
    db24:	sub	x2, x29, #0xe8
    db28:	mov	w3, #0x2
    db2c:	bl	0x20580
    db30:	mov	x29, x29
    db34:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    db38:	mov	x21, x0
    db3c:	mov	x0, x22
    db40:	bl	0x200e8 ; symbol stub for: _objc_release
    db44:	add	x2, sp, #0x40
    db48:	sub	x3, x29, #0xd8
    db4c:	mov	x0, x21
    db50:	mov	w4, #0x10
    db54:	bl	0x20980
    db58:	mov	x20, x0
    db5c:	cbz	x0, 0xdbf4
    db60:	ldr	x8, [sp, #0x50]
    db64:	ldr	x25, [x8]
    db68:	adrp	x26, 40 ; 0x35000
    db6c:	mov	x27, #0x0
    db70:	ldr	x8, [sp, #0x50]
    db74:	ldr	x8, [x8]
    db78:	cmp	x8, x25
    db7c:	b.eq	0xdb88
    db80:	mov	x0, x21
    db84:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    db88:	ldr	x8, [sp, #0x48]
    db8c:	ldr	x22, [x8, x27, lsl #3]
    db90:	ldr	x0, [x26, #0xa78]
    db94:	bl	0x20b00
    db98:	mov	x29, x29
    db9c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    dba0:	mov	x23, x0
    dba4:	mov	x2, x22
    dba8:	bl	0x20c40
    dbac:	mov	x24, x0
    dbb0:	mov	x0, x23
    dbb4:	bl	0x200e8 ; symbol stub for: _objc_release
    dbb8:	tbnz	w24, #0x0, 0xdbe8
    dbbc:	add	x27, x27, #0x1
    dbc0:	cmp	x20, x27
    dbc4:	b.ne	0xdb70
    dbc8:	add	x2, sp, #0x40
    dbcc:	sub	x3, x29, #0xd8
    dbd0:	mov	x0, x21
    dbd4:	mov	w4, #0x10
    dbd8:	bl	0x20980
    dbdc:	mov	x20, x0
    dbe0:	cbnz	x0, 0xdb6c
    dbe4:	b	0xdbf4
    dbe8:	mov	x0, x22
    dbec:	bl	0x200f4 ; symbol stub for: _objc_retain
    dbf0:	mov	x20, x0

; ===== sub_dbf4 =====
    dbf4:	mov	x0, x21
    dbf8:	bl	0x200e8 ; symbol stub for: _objc_release
    dbfc:	mov	x0, x19
    dc00:	bl	0x21160
    dc04:	cbz	x0, 0xde00
    dc08:	adrp	x2, 33 ; 0x2e000
    dc0c:	add	x2, x2, #0xf08
    dc10:	mov	x0, x19
    dc14:	bl	0x208c0
    dc18:	tbnz	w0, #0x0, 0xde00
    dc1c:	mov	x0, x20
    dc20:	bl	0x21160
    dc24:	cbz	x0, 0xde00
    dc28:	adrp	x8, 40 ; 0x35000
    dc2c:	ldr	x21, [x8, #0xaf8] ; Objc class ref: bad class ref
    dc30:	mov	x0, x20
    dc34:	mov	x2, x19
    dc38:	bl	0x22060
    dc3c:	mov	x29, x29
    dc40:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    dc44:	mov	x22, x0
    dc48:	adrp	x2, 34 ; 0x2f000
    dc4c:	add	x2, x2, #0x948 ; "plist"
    dc50:	bl	0x22080
    dc54:	mov	x29, x29
    dc58:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    dc5c:	mov	x23, x0
    dc60:	mov	x0, x21
    dc64:	mov	x2, x23
    dc68:	bl	0x20b80
    dc6c:	mov	x29, x29
    dc70:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    dc74:	mov	x24, x0
    dc78:	bl	0x21340
    dc7c:	mov	x21, x0
    dc80:	mov	x0, x24
    dc84:	bl	0x200e8 ; symbol stub for: _objc_release
    dc88:	mov	x0, x23
    dc8c:	bl	0x200e8 ; symbol stub for: _objc_release
    dc90:	mov	x0, x22
    dc94:	bl	0x200e8 ; symbol stub for: _objc_release
    dc98:	adrp	x2, 34 ; 0x2f000
    dc9c:	add	x2, x2, #0x968 ; "Title"
    dca0:	mov	x0, x21
    dca4:	bl	0x214e0
    dca8:	mov	x29, x29
    dcac:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    dcb0:	mov	x22, x0
    dcb4:	adrp	x24, 40 ; 0x35000
    dcb8:	ldr	x0, [x24, #0xa38] ; Objc class ref: bad class ref
    dcbc:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    dcc0:	mov	x1, x0
    dcc4:	mov	x0, x22
    dcc8:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    dccc:	tbz	w0, #0x0, 0xde50
    dcd0:	adrp	x2, 34 ; 0x2f000
    dcd4:	add	x2, x2, #0x488 ; "Program"
    dcd8:	mov	x0, x21
    dcdc:	bl	0x214e0
    dce0:	mov	x29, x29
    dce4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    dce8:	mov	x23, x0
    dcec:	ldr	x0, [x24, #0xa38]
    dcf0:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    dcf4:	mov	x1, x0
    dcf8:	mov	x0, x23
    dcfc:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    dd00:	mov	x24, x0
    dd04:	mov	x0, x23
    dd08:	bl	0x200e8 ; symbol stub for: _objc_release
    dd0c:	mov	x0, x22
    dd10:	bl	0x200e8 ; symbol stub for: _objc_release
    dd14:	tbz	w24, #0x0, 0xde58
    dd18:	movi.16b	v0, #0x0
    dd1c:	stp	q0, q0, [sp, #0x20]
    dd20:	stp	q0, q0, [sp]
    dd24:	adrp	x0, 37 ; 0x32000
    dd28:	add	x0, x0, #0x8d0
    dd2c:	mov	x2, sp
    dd30:	add	x3, sp, #0x88
    dd34:	mov	w4, #0x10
    dd38:	bl	0x20980
    dd3c:	cbz	x0, 0xddf0
    dd40:	mov	x23, x0
    dd44:	ldr	x8, [sp, #0x10]
    dd48:	ldr	x26, [x8]
    dd4c:	adrp	x22, 37 ; 0x32000
    dd50:	add	x22, x22, #0x8d0
    dd54:	mov	x27, #0x0
    dd58:	ldr	x8, [sp, #0x10]
    dd5c:	ldr	x8, [x8]
    dd60:	cmp	x8, x26
    dd64:	b.eq	0xdd70
    dd68:	mov	x0, x22
    dd6c:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    dd70:	ldr	x8, [sp, #0x8]
    dd74:	ldr	x24, [x8, x27, lsl #3]
    dd78:	mov	x0, x21
    dd7c:	mov	x2, x24
    dd80:	bl	0x214e0
    dd84:	mov	x29, x29
    dd88:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    dd8c:	mov	x25, x0
    dd90:	bl	0x200e8 ; symbol stub for: _objc_release
    dd94:	cbz	x25, 0xddc8
    dd98:	mov	x0, x21
    dd9c:	mov	x2, x24
    dda0:	bl	0x214e0
    dda4:	mov	x29, x29
    dda8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    ddac:	mov	x25, x0
    ddb0:	mov	x0, x21
    ddb4:	mov	x2, x25
    ddb8:	mov	x3, x24
    ddbc:	bl	0x21c00
    ddc0:	mov	x0, x25
    ddc4:	bl	0x200e8 ; symbol stub for: _objc_release
    ddc8:	add	x27, x27, #0x1
    ddcc:	cmp	x23, x27
    ddd0:	b.ne	0xdd58
    ddd4:	mov	x2, sp
    ddd8:	add	x3, sp, #0x88
    dddc:	mov	x0, x22
    dde0:	mov	w4, #0x10
    dde4:	bl	0x20980
    dde8:	mov	x23, x0
    ddec:	cbnz	x0, 0xdd54
    ddf0:	mov	x0, x21
    ddf4:	bl	0x200f4 ; symbol stub for: _objc_retain
    ddf8:	mov	x22, x0
    ddfc:	b	0xde5c
    de00:	mov	x22, #0x0

; ===== sub_de04 =====
    de04:	mov	x0, x20
    de08:	bl	0x200e8 ; symbol stub for: _objc_release
    de0c:	mov	x0, x19
    de10:	bl	0x200e8 ; symbol stub for: _objc_release
    de14:	ldur	x8, [x29, #-0x58]
    de18:	adrp	x9, 37 ; 0x32000
    de1c:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    de20:	ldr	x9, [x9]
    de24:	cmp	x9, x8
    de28:	b.ne	0xde68
    de2c:	mov	x0, x22
    de30:	add	sp, sp, #0x1a0
    de34:	ldp	x29, x30, [sp, #0x50]
    de38:	ldp	x20, x19, [sp, #0x40]
    de3c:	ldp	x22, x21, [sp, #0x30]
    de40:	ldp	x24, x23, [sp, #0x20]
    de44:	ldp	x26, x25, [sp, #0x10]
    de48:	ldp	x28, x27, [sp], #0x60
    de4c:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue
    de50:	mov	x0, x22
    de54:	bl	0x200e8 ; symbol stub for: _objc_release
    de58:	mov	x22, #0x0

; ===== sub_de5c =====
    de5c:	mov	x0, x21
    de60:	bl	0x200e8 ; symbol stub for: _objc_release
    de64:	b	0xde04
    de68:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_de6c =====
    de6c:	sub	sp, sp, #0x60
    de70:	stp	x24, x23, [sp, #0x20]
    de74:	stp	x22, x21, [sp, #0x30]
    de78:	stp	x20, x19, [sp, #0x40]
    de7c:	stp	x29, x30, [sp, #0x50]
    de80:	add	x29, sp, #0x50
    de84:	adrp	x8, 37 ; 0x32000
    de88:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    de8c:	ldr	x8, [x8]
    de90:	str	x8, [sp, #0x18]
    de94:	bl	0x200f4 ; symbol stub for: _objc_retain
    de98:	mov	x19, x0
    de9c:	adrp	x2, 34 ; 0x2f000
    dea0:	add	x2, x2, #0x468 ; "ext:"
    dea4:	bl	0x20d80
    dea8:	cbz	w0, 0xdf74
    deac:	adrp	x0, 34 ; 0x2f000
    deb0:	add	x0, x0, #0x468 ; "ext:"
    deb4:	bl	0x21160
    deb8:	mov	x2, x0
    debc:	mov	x0, x19
    dec0:	bl	0x22140
    dec4:	mov	x29, x29
    dec8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    decc:	mov	x20, x0
    ded0:	adrp	x2, 34 ; 0x2f000
    ded4:	add	x2, x2, #0x9c8
    ded8:	bl	0x21700
    dedc:	mov	x21, #0x0
    dee0:	cbz	x0, 0xdf80
    dee4:	mov	x22, x0
    dee8:	mov	x8, #0x7fffffffffffffff
    deec:	cmp	x0, x8
    def0:	b.eq	0xdf80
    def4:	add	x21, x22, #0x1
    def8:	mov	x0, x20
    defc:	bl	0x21160
    df00:	cmp	x21, x0
    df04:	b.hs	0xdf7c
    df08:	mov	x0, x20
    df0c:	mov	x2, x22
    df10:	bl	0x22160
    df14:	mov	x29, x29
    df18:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    df1c:	mov	x22, x0
    df20:	str	x0, [sp, #0x8]
    df24:	mov	x0, x20
    df28:	mov	x2, x21
    df2c:	bl	0x22140
    df30:	mov	x29, x29
    df34:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    df38:	mov	x23, x0
    df3c:	str	x0, [sp, #0x10]
    df40:	adrp	x8, 40 ; 0x35000
    df44:	ldr	x0, [x8, #0xa48] ; Objc class ref: bad class ref
    df48:	add	x2, sp, #0x8
    df4c:	mov	w3, #0x2
    df50:	bl	0x20580
    df54:	mov	x29, x29
    df58:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    df5c:	mov	x21, x0
    df60:	mov	x0, x23
    df64:	bl	0x200e8 ; symbol stub for: _objc_release
    df68:	mov	x0, x22
    df6c:	bl	0x200e8 ; symbol stub for: _objc_release
    df70:	b	0xdf80
    df74:	mov	x21, #0x0
    df78:	b	0xdf88
    df7c:	mov	x21, #0x0

; ===== sub_df80 =====
    df80:	mov	x0, x20
    df84:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_df88 =====
    df88:	mov	x0, x19
    df8c:	bl	0x200e8 ; symbol stub for: _objc_release
    df90:	ldr	x8, [sp, #0x18]
    df94:	adrp	x9, 37 ; 0x32000
    df98:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    df9c:	ldr	x9, [x9]
    dfa0:	cmp	x9, x8
    dfa4:	b.ne	0xdfc4
    dfa8:	mov	x0, x21
    dfac:	ldp	x29, x30, [sp, #0x50]
    dfb0:	ldp	x20, x19, [sp, #0x40]
    dfb4:	ldp	x22, x21, [sp, #0x30]
    dfb8:	ldp	x24, x23, [sp, #0x20]
    dfbc:	add	sp, sp, #0x60
    dfc0:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue
    dfc4:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_dfc8 =====
    dfc8:	adrp	x8, 41 ; 0x36000
    dfcc:	ldr	x8, [x8, #0x4c0]
    dfd0:	cmn	x8, #0x1
    dfd4:	b.ne	0xdfe4

; ===== sub_dfd8 =====
    dfd8:	adrp	x8, 41 ; 0x36000
    dfdc:	ldr	x0, [x8, #0x4b8]
    dfe0:	b	0x2010c ; symbol stub for: _objc_retainAutoreleaseReturnValue
    dfe4:	stp	x29, x30, [sp, #-0x10]!
    dfe8:	mov	x29, sp
    dfec:	bl	0x1fce0
    dff0:	ldp	x29, x30, [sp], #0x10
    dff4:	b	0xdfd8

; ===== sub_dff8 =====
    dff8:	sub	sp, sp, #0x60
    dffc:	stp	x22, x21, [sp, #0x30]
    e000:	stp	x20, x19, [sp, #0x40]
    e004:	stp	x29, x30, [sp, #0x50]
    e008:	add	x29, sp, #0x50
    e00c:	bl	0x200f4 ; symbol stub for: _objc_retain
    e010:	mov	x19, x0
    e014:	adrp	x2, 33 ; 0x2f000
    e018:	add	x2, x2, #0x5a8
    e01c:	bl	0x21700
    e020:	mov	x8, #0x7fffffffffffffff
    e024:	cmp	x0, x8
    e028:	b.ne	0xe034
    e02c:	mov	x22, #0x0
    e030:	b	0xe118
    e034:	mov	x21, x0
    e038:	mov	x0, x19
    e03c:	mov	x2, x21
    e040:	bl	0x22160
    e044:	mov	x29, x29
    e048:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e04c:	mov	x20, x0
    e050:	add	x2, x21, #0x1
    e054:	mov	x0, x19
    e058:	bl	0x22140
    e05c:	mov	x29, x29
    e060:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e064:	mov	x21, x0
    e068:	adrp	x2, 34 ; 0x30000
    e06c:	add	x2, x2, #0x508 ; "toggle"
    e070:	mov	x0, x20
    e074:	bl	0x21000
    e078:	tbz	w0, #0x0, 0xe084
    e07c:	mov	w22, #-0x1
    e080:	b	0xe0b8
    e084:	adrp	x2, 34 ; 0x30000
    e088:	add	x2, x2, #0x528 ; "on"
    e08c:	mov	x0, x20
    e090:	bl	0x21000
    e094:	tbz	w0, #0x0, 0xe0a0
    e098:	mov	w22, #0x1
    e09c:	b	0xe0b8
    e0a0:	adrp	x2, 34 ; 0x30000
    e0a4:	add	x2, x2, #0x548 ; "off"
    e0a8:	mov	x0, x20
    e0ac:	bl	0x21000
    e0b0:	cbz	w0, 0xe138
    e0b4:	mov	w22, #0x0

; ===== sub_e0b8 =====
    e0b8:	adrp	x8, 36 ; 0x32000
    e0bc:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    e0c0:	str	x8, [sp]
    e0c4:	adrp	x8, 20 ; 0x22000
    e0c8:	ldr	d0, [x8, #0x8f8]
    e0cc:	str	d0, [sp, #0x8]
    e0d0:	adrp	x8, 5 ; 0x13000
    e0d4:	add	x8, x8, #0x204
    e0d8:	adrp	x9, 30 ; 0x2c000
    e0dc:	add	x9, x9, #0xd40
    e0e0:	stp	x8, x9, [sp, #0x10]
    e0e4:	mov	x0, x21
    e0e8:	bl	0x200f4 ; symbol stub for: _objc_retain
    e0ec:	str	x0, [sp, #0x20]
    e0f0:	str	w22, [sp, #0x28]
    e0f4:	mov	x0, sp
    e0f8:	bl	0x20124 ; symbol stub for: _objc_retainBlock
    e0fc:	mov	x22, x0
    e100:	ldr	x0, [sp, #0x20]
    e104:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_e108 =====
    e108:	mov	x0, x21
    e10c:	bl	0x200e8 ; symbol stub for: _objc_release
    e110:	mov	x0, x20
    e114:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_e118 =====
    e118:	mov	x0, x19
    e11c:	bl	0x200e8 ; symbol stub for: _objc_release
    e120:	mov	x0, x22
    e124:	ldp	x29, x30, [sp, #0x50]
    e128:	ldp	x20, x19, [sp, #0x40]
    e12c:	ldp	x22, x21, [sp, #0x30]
    e130:	add	sp, sp, #0x60
    e134:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue
    e138:	mov	x22, #0x0
    e13c:	b	0xe108
    e140:	stp	x29, x30, [sp, #-0x10]!
    e144:	mov	x29, sp
    e148:	adrp	x0, 33 ; 0x2f000
    e14c:	add	x0, x0, #0x4c8 ; "snapper"
    e150:	bl	0xe18c
    e154:	cbz	w0, 0xe17c
    e158:	adrp	x0, 33 ; 0x2f000
    e15c:	add	x0, x0, #0x4e8 ; "snapper2"
    e160:	bl	0xe18c
    e164:	cbz	w0, 0xe178
    e168:	adrp	x0, 33 ; 0x2f000
    e16c:	add	x0, x0, #0x508 ; "snapper3"
    e170:	bl	0xe18c
    e174:	b	0xe17c
    e178:	mov	w0, #0x1

; ===== sub_e17c =====
    e17c:	adrp	x8, 40 ; 0x36000
    e180:	strb	w0, [x8, #0x478]
    e184:	ldp	x29, x30, [sp], #0x10
    e188:	ret

; ===== sub_e18c =====
    e18c:	sub	sp, sp, #0x130
    e190:	stp	x28, x27, [sp, #0xd0]
    e194:	stp	x26, x25, [sp, #0xe0]
    e198:	stp	x24, x23, [sp, #0xf0]
    e19c:	stp	x22, x21, [sp, #0x100]
    e1a0:	stp	x20, x19, [sp, #0x110]
    e1a4:	stp	x29, x30, [sp, #0x120]
    e1a8:	add	x29, sp, #0x120
    e1ac:	adrp	x8, 36 ; 0x32000
    e1b0:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    e1b4:	ldr	x8, [x8]
    e1b8:	stur	x8, [x29, #-0x58]
    e1bc:	bl	0x200f4 ; symbol stub for: _objc_retain
    e1c0:	mov	x19, x0
    e1c4:	movi.16b	v0, #0x0
    e1c8:	stp	q0, q0, [sp]
    e1cc:	stp	q0, q0, [sp, #0x20]
    e1d0:	adrp	x8, 39 ; 0x35000
    e1d4:	ldr	x0, [x8, #0xa78] ; Objc class ref: bad class ref
    e1d8:	bl	0x20b00
    e1dc:	mov	x29, x29
    e1e0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e1e4:	mov	x21, x0
    e1e8:	adrp	x0, 35 ; 0x31000
    e1ec:	add	x0, x0, #0xe08 ; "/var/jb"
    e1f0:	adrp	x2, 33 ; 0x2f000
    e1f4:	add	x2, x2, #0x528 ; "/Library/MobileSubstrate/DynamicLibraries"
    e1f8:	bl	0x220a0
    e1fc:	mov	x29, x29
    e200:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e204:	mov	x22, x0
    e208:	mov	x0, x21
    e20c:	mov	x2, x22
    e210:	mov	x3, #0x0
    e214:	bl	0x208e0
    e218:	mov	x29, x29
    e21c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e220:	mov	x20, x0
    e224:	mov	x0, x22
    e228:	bl	0x200e8 ; symbol stub for: _objc_release
    e22c:	mov	x0, x21
    e230:	bl	0x200e8 ; symbol stub for: _objc_release
    e234:	mov	x2, sp
    e238:	add	x3, sp, #0x48
    e23c:	mov	x0, x20
    e240:	mov	w4, #0x10
    e244:	bl	0x20980
    e248:	cbz	x0, 0xe30c
    e24c:	mov	x22, x0
    e250:	ldr	x8, [sp, #0x10]
    e254:	ldr	x26, [x8]
    e258:	adrp	x21, 33 ; 0x2f000
    e25c:	add	x21, x21, #0x548 ; "dylib"
    e260:	mov	x27, #0x0
    e264:	ldr	x8, [sp, #0x10]
    e268:	ldr	x8, [x8]
    e26c:	cmp	x8, x26
    e270:	b.eq	0xe27c
    e274:	mov	x0, x20
    e278:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    e27c:	ldr	x8, [sp, #0x8]
    e280:	ldr	x24, [x8, x27, lsl #3]
    e284:	mov	x0, x24
    e288:	bl	0x21260
    e28c:	mov	x29, x29
    e290:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e294:	mov	x23, x0
    e298:	mov	x2, x19
    e29c:	bl	0x20d80
    e2a0:	tbz	w0, #0x0, 0xe2dc
    e2a4:	mov	x0, x24
    e2a8:	bl	0x215c0
    e2ac:	mov	x29, x29
    e2b0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e2b4:	mov	x24, x0
    e2b8:	mov	x2, x21
    e2bc:	bl	0x21000
    e2c0:	mov	x25, x0
    e2c4:	mov	x0, x24
    e2c8:	bl	0x200e8 ; symbol stub for: _objc_release
    e2cc:	mov	x0, x23
    e2d0:	bl	0x200e8 ; symbol stub for: _objc_release
    e2d4:	tbnz	w25, #0x0, 0xe314
    e2d8:	b	0xe2e4
    e2dc:	mov	x0, x23
    e2e0:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_e2e4 =====
    e2e4:	add	x27, x27, #0x1
    e2e8:	cmp	x22, x27
    e2ec:	b.ne	0xe264
    e2f0:	mov	x2, sp
    e2f4:	add	x3, sp, #0x48
    e2f8:	mov	x0, x20
    e2fc:	mov	w4, #0x10
    e300:	bl	0x20980
    e304:	mov	x22, x0
    e308:	cbnz	x0, 0xe260
    e30c:	mov	w21, #0x0
    e310:	b	0xe318
    e314:	mov	w21, #0x1

; ===== sub_e318 =====
    e318:	mov	x0, x20
    e31c:	bl	0x200e8 ; symbol stub for: _objc_release
    e320:	mov	x0, x19
    e324:	bl	0x200e8 ; symbol stub for: _objc_release
    e328:	ldur	x8, [x29, #-0x58]
    e32c:	adrp	x9, 36 ; 0x32000
    e330:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    e334:	ldr	x9, [x9]
    e338:	cmp	x9, x8
    e33c:	b.ne	0xe364
    e340:	mov	x0, x21
    e344:	ldp	x29, x30, [sp, #0x120]
    e348:	ldp	x20, x19, [sp, #0x110]
    e34c:	ldp	x22, x21, [sp, #0x100]
    e350:	ldp	x24, x23, [sp, #0xf0]
    e354:	ldp	x26, x25, [sp, #0xe0]
    e358:	ldp	x28, x27, [sp, #0xd0]
    e35c:	add	sp, sp, #0x130
    e360:	ret
    e364:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
    e368:	stp	x29, x30, [sp, #-0x10]!
    e36c:	mov	x29, sp
    e370:	adrp	x0, 33 ; 0x2f000
    e374:	add	x0, x0, #0x588 ; "copylog"
    e378:	bl	0xe18c
    e37c:	adrp	x8, 40 ; 0x36000
    e380:	strb	w0, [x8, #0x488]
    e384:	ldp	x29, x30, [sp], #0x10
    e388:	ret

; ===== sub_e38c =====
    e38c:	sub	sp, sp, #0x120
    e390:	stp	x26, x25, [sp, #0xd0]
    e394:	stp	x24, x23, [sp, #0xe0]
    e398:	stp	x22, x21, [sp, #0xf0]
    e39c:	stp	x20, x19, [sp, #0x100]
    e3a0:	stp	x29, x30, [sp, #0x110]
    e3a4:	add	x29, sp, #0x110
    e3a8:	mov	x20, x0
    e3ac:	adrp	x8, 36 ; 0x32000
    e3b0:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    e3b4:	ldr	x8, [x8]
    e3b8:	stur	x8, [x29, #-0x48]
    e3bc:	mov	x0, x1
    e3c0:	bl	0x200f4 ; symbol stub for: _objc_retain
    e3c4:	mov	x19, x0
    e3c8:	mov	x0, x20
    e3cc:	bl	0x21260
    e3d0:	mov	x29, x29
    e3d4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e3d8:	mov	x20, x0
    e3dc:	movi.16b	v0, #0x0
    e3e0:	stp	q0, q0, [sp]
    e3e4:	stp	q0, q0, [sp, #0x20]
    e3e8:	mov	x0, x19
    e3ec:	bl	0x21260
    e3f0:	mov	x29, x29
    e3f4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e3f8:	mov	x21, x0
    e3fc:	adrp	x2, 33 ; 0x2f000
    e400:	add	x2, x2, #0x5a8
    e404:	bl	0x207e0
    e408:	mov	x29, x29
    e40c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e410:	mov	x22, x0
    e414:	mov	x0, x21
    e418:	bl	0x200e8 ; symbol stub for: _objc_release
    e41c:	adrp	x8, 39 ; 0x35000
    e420:	ldr	x0, [x8, #0xa40] ; Objc class ref: bad class ref
    e424:	bl	0x20560
    e428:	mov	x29, x29
    e42c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e430:	mov	x21, x0
    e434:	mov	x0, x22
    e438:	bl	0x20960
    e43c:	cmp	x0, #0x2
    e440:	mov	w8, #0x2
    e444:	csel	x23, x8, xzr, hi

; ===== sub_e448 =====
    e448:	mov	x0, x22
    e44c:	bl	0x20960
    e450:	cmp	x23, x0
    e454:	b.hs	0xe4bc
    e458:	mov	x0, x22
    e45c:	mov	x2, x23
    e460:	bl	0x214c0
    e464:	mov	x29, x29
    e468:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e46c:	mov	x24, x0
    e470:	bl	0x21160
    e474:	mov	x25, x0
    e478:	mov	x0, x24
    e47c:	bl	0x200e8 ; symbol stub for: _objc_release
    e480:	cmp	x25, #0x4
    e484:	b.lo	0xe4b4
    e488:	mov	x0, x22
    e48c:	mov	x2, x23
    e490:	bl	0x214c0
    e494:	mov	x29, x29
    e498:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e49c:	mov	x24, x0
    e4a0:	mov	x0, x21
    e4a4:	mov	x2, x24
    e4a8:	bl	0x203c0
    e4ac:	mov	x0, x24
    e4b0:	bl	0x200e8 ; symbol stub for: _objc_release
    e4b4:	add	x23, x23, #0x1
    e4b8:	b	0xe448
    e4bc:	mov	x0, x22
    e4c0:	bl	0x200e8 ; symbol stub for: _objc_release
    e4c4:	mov	x2, sp
    e4c8:	add	x3, sp, #0x48
    e4cc:	mov	x0, x21
    e4d0:	mov	w4, #0x10
    e4d4:	bl	0x20980
    e4d8:	mov	x22, x0
    e4dc:	cbz	x0, 0xe548
    e4e0:	ldr	x8, [sp, #0x10]
    e4e4:	ldr	x23, [x8]
    e4e8:	mov	x24, #0x0
    e4ec:	ldr	x8, [sp, #0x10]
    e4f0:	ldr	x8, [x8]
    e4f4:	cmp	x8, x23
    e4f8:	b.eq	0xe504
    e4fc:	mov	x0, x21
    e500:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    e504:	ldr	x8, [sp, #0x8]
    e508:	ldr	x2, [x8, x24, lsl #3]
    e50c:	mov	x0, x20
    e510:	bl	0x208c0
    e514:	tbnz	w0, #0x0, 0xe544
    e518:	add	x24, x24, #0x1
    e51c:	cmp	x22, x24
    e520:	b.ne	0xe4ec
    e524:	mov	x2, sp
    e528:	add	x3, sp, #0x48
    e52c:	mov	x0, x21
    e530:	mov	w4, #0x10
    e534:	bl	0x20980
    e538:	mov	x22, x0
    e53c:	cbnz	x0, 0xe4e8
    e540:	b	0xe548
    e544:	mov	w22, #0x1

; ===== sub_e548 =====
    e548:	mov	x0, x21
    e54c:	bl	0x200e8 ; symbol stub for: _objc_release
    e550:	mov	x0, x19
    e554:	bl	0x200e8 ; symbol stub for: _objc_release
    e558:	mov	x0, x20
    e55c:	bl	0x200e8 ; symbol stub for: _objc_release
    e560:	ldur	x8, [x29, #-0x48]
    e564:	adrp	x9, 36 ; 0x32000
    e568:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    e56c:	ldr	x9, [x9]
    e570:	cmp	x9, x8
    e574:	b.ne	0xe598
    e578:	mov	x0, x22
    e57c:	ldp	x29, x30, [sp, #0x110]
    e580:	ldp	x20, x19, [sp, #0x100]
    e584:	ldp	x22, x21, [sp, #0xf0]
    e588:	ldp	x24, x23, [sp, #0xe0]
    e58c:	ldp	x26, x25, [sp, #0xd0]
    e590:	add	sp, sp, #0x120
    e594:	ret
    e598:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_e59c =====
    e59c:	stp	d9, d8, [sp, #-0x40]!
    e5a0:	stp	x22, x21, [sp, #0x10]
    e5a4:	stp	x20, x19, [sp, #0x20]
    e5a8:	stp	x29, x30, [sp, #0x30]
    e5ac:	add	x29, sp, #0x30
    e5b0:	mov	x19, x0
    e5b4:	mov.16b	v8, v0
    e5b8:	adrp	x21, 40 ; 0x36000
    e5bc:	ldr	x8, [x21, #0x4a0]
    e5c0:	cbnz	x8, 0xe604
    e5c4:	adrp	x0, 21 ; 0x23000
    e5c8:	add	x0, x0, #0x5c9 ; literal pool for: "BrightnessSystemClient"
    e5cc:	bl	0x20088 ; symbol stub for: _objc_getClass
    e5d0:	mov	x20, x0
    e5d4:	adrp	x8, 38 ; 0x34000
    e5d8:	ldr	x2, [x8, #0xbe0]
    e5dc:	bl	0x20f40
    e5e0:	cbz	w0, 0xe5f0
    e5e4:	mov	x0, x20
    e5e8:	bl	0x200d0 ; symbol stub for: _objc_opt_new
    e5ec:	b	0xe5f4
    e5f0:	mov	x0, #0x0

; ===== sub_e5f4 =====
    e5f4:	ldr	x8, [x21, #0x4a0]
    e5f8:	str	x0, [x21, #0x4a0]
    e5fc:	mov	x0, x8
    e600:	bl	0x200e8 ; symbol stub for: _objc_release
    e604:	ldr	x20, [x21, #0x4a0]
    e608:	tbnz	w19, #0x0, 0xe654
    e60c:	cbz	x20, 0xe654
    e610:	adrp	x8, 38 ; 0x34000
    e614:	ldr	x19, [x8, #0xbe0]
    e618:	adrp	x8, 39 ; 0x35000
    e61c:	ldr	x0, [x8, #0xa70] ; Objc class ref: bad class ref
    e620:	mov.16b	v0, v8
    e624:	bl	0x213e0
    e628:	mov	x29, x29
    e62c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e630:	mov	x21, x0
    e634:	adrp	x3, 33 ; 0x2f000
    e638:	add	x3, x3, #0x828 ; "DisplayBrightness"
    e63c:	mov	x0, x20
    e640:	mov	x1, x19
    e644:	mov	x2, x21
    e648:	bl	0x200a0 ; symbol stub for: _objc_msgSend
    e64c:	mov	x0, x21
    e650:	bl	0x200e8 ; symbol stub for: _objc_release
    e654:	cmp	x20, #0x0
    e658:	cset	w0, ne
    e65c:	ldp	x29, x30, [sp, #0x30]
    e660:	ldp	x20, x19, [sp, #0x20]
    e664:	ldp	x22, x21, [sp, #0x10]
    e668:	ldp	d9, d8, [sp], #0x40
    e66c:	ret

; ===== sub_e670 =====
    e670:	stp	d9, d8, [sp, #-0x30]!
    e674:	stp	x20, x19, [sp, #0x10]
    e678:	stp	x29, x30, [sp, #0x20]
    e67c:	add	x29, sp, #0x20
    e680:	mov	x19, x1
    e684:	bl	0x200f4 ; symbol stub for: _objc_retain
    e688:	mov	x20, x0
    e68c:	mov	x0, x19
    e690:	bl	0x21160
    e694:	mov	x2, x0
    e698:	mov	x0, x20
    e69c:	bl	0x22140
    e6a0:	mov	x29, x29
    e6a4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e6a8:	mov	x19, x0
    e6ac:	mov	x0, x20
    e6b0:	bl	0x200e8 ; symbol stub for: _objc_release
    e6b4:	mov	x0, x19
    e6b8:	bl	0x20be0
    e6bc:	mov.16b	v8, v0
    e6c0:	mov	x0, x19
    e6c4:	bl	0x200e8 ; symbol stub for: _objc_release
    e6c8:	fcmp	d8, #0.0
    e6cc:	fmov	d0, xzr
    e6d0:	fcsel	d0, d0, d8, mi
    e6d4:	mov	x8, #0x4059000000000000
    e6d8:	fmov	d1, x8
    e6dc:	fminnm	d0, d0, d1
    e6e0:	fdiv	d0, d0, d1
    e6e4:	ldp	x29, x30, [sp, #0x20]
    e6e8:	ldp	x20, x19, [sp, #0x10]
    e6ec:	ldp	d9, d8, [sp], #0x30
    e6f0:	ret

; ===== sub_e6f4 =====
    e6f4:	stp	d9, d8, [sp, #-0x30]!
    e6f8:	stp	x20, x19, [sp, #0x10]
    e6fc:	stp	x29, x30, [sp, #0x20]
    e700:	add	x29, sp, #0x20
    e704:	mov	x19, x0
    e708:	mov.16b	v8, v0
    e70c:	adrp	x8, 39 ; 0x35000
    e710:	ldr	x0, [x8, #0xa88] ; Objc class ref: bad class ref
    e714:	bl	0x21300
    e718:	mov	x29, x29
    e71c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e720:	mov	x20, x0
    e724:	bl	0x20640
    e728:	mov.16b	v9, v0
    e72c:	mov	x0, x20
    e730:	bl	0x200e8 ; symbol stub for: _objc_release
    e734:	fadd	d0, d8, d9
    e738:	fcmp	d0, #0.0
    e73c:	fmov	d1, xzr
    e740:	fcsel	d0, d1, d0, mi
    e744:	fmov	d1, #1.00000000
    e748:	fminnm	d0, d0, d1
    e74c:	mov	x0, x19
    e750:	ldp	x29, x30, [sp, #0x20]
    e754:	ldp	x20, x19, [sp, #0x10]
    e758:	ldp	d9, d8, [sp], #0x30
    e75c:	b	0xe59c

; ===== sub_e760 =====
    e760:	stp	d9, d8, [sp, #-0x50]!
    e764:	stp	x24, x23, [sp, #0x10]
    e768:	stp	x22, x21, [sp, #0x20]
    e76c:	stp	x20, x19, [sp, #0x30]
    e770:	stp	x29, x30, [sp, #0x40]
    e774:	add	x29, sp, #0x40
    e778:	mov	x20, x1
    e77c:	mov.16b	v8, v0
    e780:	bl	0x200f4 ; symbol stub for: _objc_retain
    e784:	mov	x19, x0
    e788:	adrp	x0, 21 ; 0x23000
    e78c:	add	x0, x0, #0x5f2 ; literal pool for: "AVSystemController"
    e790:	bl	0x20088 ; symbol stub for: _objc_getClass
    e794:	mov	x21, x0
    e798:	adrp	x8, 38 ; 0x34000
    e79c:	ldr	x22, [x8, #0xbe8]
    e7a0:	mov	x1, x22
    e7a4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    e7a8:	tbz	w0, #0x0, 0xe7bc
    e7ac:	mov	x0, x21
    e7b0:	mov	x2, x22
    e7b4:	bl	0x215e0
    e7b8:	b	0xe7c0
    e7bc:	mov	x0, #0x0

; ===== sub_e7c0 =====
    e7c0:	bl	0x200f4 ; symbol stub for: _objc_retain
    e7c4:	mov	x21, x0
    e7c8:	adrp	x8, 38 ; 0x34000
    e7cc:	ldr	x23, [x8, #0xbf0]
    e7d0:	mov	x1, x23
    e7d4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    e7d8:	mov	x22, x0
    e7dc:	tbnz	w20, #0x0, 0xe7f8
    e7e0:	tbz	w22, #0x0, 0xe7f8
    e7e4:	fcvt	s0, d8
    e7e8:	mov	x0, x21
    e7ec:	mov	x1, x23
    e7f0:	mov	x2, x19
    e7f4:	bl	0x200a0 ; symbol stub for: _objc_msgSend
    e7f8:	mov	x0, x21
    e7fc:	bl	0x200e8 ; symbol stub for: _objc_release
    e800:	mov	x0, x19
    e804:	bl	0x200e8 ; symbol stub for: _objc_release
    e808:	and	w0, w22, #0x1
    e80c:	ldp	x29, x30, [sp, #0x40]
    e810:	ldp	x20, x19, [sp, #0x30]
    e814:	ldp	x22, x21, [sp, #0x20]
    e818:	ldp	x24, x23, [sp, #0x10]
    e81c:	ldp	d9, d8, [sp], #0x50
    e820:	ret

; ===== sub_e824 =====
    e824:	stp	x22, x21, [sp, #-0x30]!
    e828:	stp	x20, x19, [sp, #0x10]
    e82c:	stp	x29, x30, [sp, #0x20]
    e830:	add	x29, sp, #0x20
    e834:	bl	0x200f4 ; symbol stub for: _objc_retain
    e838:	mov	x19, x0
    e83c:	adrp	x21, 40 ; 0x36000
    e840:	ldr	x20, [x21, #0x4a8]
    e844:	cbnz	x20, 0xe868
    e848:	adrp	x8, 39 ; 0x35000
    e84c:	ldr	x0, [x8, #0xa90] ; Objc class ref: bad class ref
    e850:	bl	0x200d0 ; symbol stub for: _objc_opt_new
    e854:	ldr	x8, [x21, #0x4a8]
    e858:	str	x0, [x21, #0x4a8]
    e85c:	mov	x0, x8
    e860:	bl	0x200e8 ; symbol stub for: _objc_release
    e864:	ldr	x20, [x21, #0x4a8]
    e868:	adrp	x8, 39 ; 0x35000
    e86c:	ldr	x0, [x8, #0xa98] ; Objc class ref: bad class ref
    e870:	mov	x2, x19
    e874:	bl	0x21f80
    e878:	mov	x29, x29
    e87c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e880:	mov	x21, x0
    e884:	mov	x0, x20
    e888:	mov	x2, x21
    e88c:	bl	0x21f60
    e890:	mov	x0, x21
    e894:	bl	0x200e8 ; symbol stub for: _objc_release
    e898:	mov	x0, x19
    e89c:	ldp	x29, x30, [sp, #0x20]
    e8a0:	ldp	x20, x19, [sp, #0x10]
    e8a4:	ldp	x22, x21, [sp], #0x30
    e8a8:	b	0x200e8 ; symbol stub for: _objc_release

; ===== sub_e8ac =====
    e8ac:	sub	sp, sp, #0xf0
    e8b0:	stp	x28, x27, [sp, #0x90]
    e8b4:	stp	x26, x25, [sp, #0xa0]
    e8b8:	stp	x24, x23, [sp, #0xb0]
    e8bc:	stp	x22, x21, [sp, #0xc0]
    e8c0:	stp	x20, x19, [sp, #0xd0]
    e8c4:	stp	x29, x30, [sp, #0xe0]
    e8c8:	add	x29, sp, #0xe0
    e8cc:	adrp	x8, 36 ; 0x32000
    e8d0:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    e8d4:	ldr	x8, [x8]
    e8d8:	stur	x8, [x29, #-0x58]
    e8dc:	bl	0x200f4 ; symbol stub for: _objc_retain
    e8e0:	mov	x20, x0
    e8e4:	adrp	x19, 40 ; 0x36000
    e8e8:	ldr	x0, [x19, #0x348]
    e8ec:	mov	w2, #0x1
    e8f0:	bl	0x21ac0
    e8f4:	mov	w0, #0x0
    e8f8:	bl	0xf0c8
    e8fc:	mov	x29, x29
    e900:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e904:	ldr	x8, [x19, #0x348]
    e908:	str	x0, [x19, #0x348]
    e90c:	mov	x0, x8
    e910:	bl	0x200e8 ; symbol stub for: _objc_release
    e914:	ldr	x0, [x19, #0x348]
    e918:	cbz	x0, 0xed10
    e91c:	bl	0x217e0
    e920:	mov	x29, x29
    e924:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e928:	mov	x19, x0
    e92c:	bl	0x22400
    e930:	mov	x29, x29
    e934:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e938:	mov	x23, x0
    e93c:	mov	x0, x19
    e940:	bl	0x200e8 ; symbol stub for: _objc_release
    e944:	adrp	x8, 39 ; 0x35000
    e948:	ldr	x0, [x8, #0xaa0] ; Objc class ref: bad class ref
    e94c:	bl	0x200d0 ; symbol stub for: _objc_opt_new
    e950:	mov	x21, x0
    e954:	adrp	x19, 33 ; 0x2f000
    e958:	add	x19, x19, #0x848
    e95c:	mov	x0, x20
    e960:	mov	x2, x19
    e964:	bl	0x220a0
    e968:	mov	x29, x29
    e96c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e970:	str	x20, [sp, #0x38]
    e974:	mov	x20, x0
    e978:	mov	x0, x19
    e97c:	mov	x2, x20
    e980:	bl	0x220a0
    e984:	mov	x29, x29
    e988:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e98c:	mov	x19, x0
    e990:	mov	x0, x21
    e994:	mov	x2, x19
    e998:	bl	0x21d20
    e99c:	mov	x0, x19
    e9a0:	bl	0x200e8 ; symbol stub for: _objc_release
    e9a4:	mov	x0, x20
    e9a8:	bl	0x200e8 ; symbol stub for: _objc_release
    e9ac:	adrp	x8, 39 ; 0x35000
    e9b0:	ldr	x0, [x8, #0xaa8] ; Objc class ref: bad class ref
    e9b4:	adrp	x8, 36 ; 0x32000
    e9b8:	ldr	x8, [x8, #0xd68] ; literal pool symbol address: _UIFontWeightSemibold
    e9bc:	ldr	d1, [x8]
    e9c0:	fmov	d0, #14.00000000
    e9c4:	bl	0x221c0
    e9c8:	mov	x29, x29
    e9cc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e9d0:	mov	x19, x0
    e9d4:	mov	x0, x21
    e9d8:	mov	x2, x19
    e9dc:	bl	0x21aa0
    e9e0:	mov	x0, x19
    e9e4:	bl	0x200e8 ; symbol stub for: _objc_release
    e9e8:	adrp	x20, 39 ; 0x35000
    e9ec:	ldr	x0, [x20, #0xab0] ; Objc class ref: bad class ref
    e9f0:	bl	0x21100
    e9f4:	mov	x29, x29
    e9f8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    e9fc:	mov	x19, x0
    ea00:	mov	x0, x21
    ea04:	mov	x2, x19
    ea08:	bl	0x21d60
    ea0c:	mov	x0, x19
    ea10:	bl	0x200e8 ; symbol stub for: _objc_release
    ea14:	ldr	x0, [x20, #0xab0]
    ea18:	bl	0x218a0
    ea1c:	mov	x29, x29
    ea20:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    ea24:	mov	x19, x0
    ea28:	mov	x0, x21
    ea2c:	mov	x2, x19
    ea30:	bl	0x21920
    ea34:	mov	x0, x19
    ea38:	bl	0x200e8 ; symbol stub for: _objc_release
    ea3c:	mov	x0, x21
    ea40:	bl	0x21140
    ea44:	mov	x29, x29
    ea48:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    ea4c:	mov	x19, x0
    ea50:	fmov	d0, #15.00000000
    ea54:	bl	0x21980
    ea58:	mov	x0, x19
    ea5c:	bl	0x200e8 ; symbol stub for: _objc_release
    ea60:	mov	x0, x21
    ea64:	bl	0x21140
    ea68:	mov	x29, x29
    ea6c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    ea70:	mov	x19, x0
    ea74:	mov	w2, #0x1
    ea78:	bl	0x21b00
    ea7c:	mov	x0, x19
    ea80:	bl	0x200e8 ; symbol stub for: _objc_release
    ea84:	mov	x0, x21
    ea88:	mov	w2, #0x1
    ea8c:	bl	0x21d40
    ea90:	mov	x0, x21
    ea94:	mov	w2, #0x0
    ea98:	bl	0x21e20
    ea9c:	mov	x0, x23
    eaa0:	mov	x2, x21
    eaa4:	bl	0x20400
    eaa8:	adrp	x8, 39 ; 0x35000
    eaac:	ldr	x8, [x8, #0xab8] ; Objc class ref: bad class ref
    eab0:	str	x8, [sp, #0x8]
    eab4:	mov	x0, x21
    eab8:	bl	0x22260
    eabc:	mov	x29, x29
    eac0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    eac4:	mov	x19, x0
    eac8:	str	x0, [sp, #0x20]
    eacc:	mov	x0, x23
    ead0:	bl	0x21820
    ead4:	mov	x29, x29
    ead8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    eadc:	str	x0, [sp, #0x28]
    eae0:	bl	0x22260
    eae4:	mov	x29, x29
    eae8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    eaec:	mov	x2, x0
    eaf0:	str	x0, [sp, #0x18]
    eaf4:	fmov	d0, #6.00000000
    eaf8:	mov	x0, x19
    eafc:	bl	0x20840
    eb00:	mov	x29, x29
    eb04:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    eb08:	str	x0, [sp, #0x10]
    eb0c:	str	x0, [sp, #0x68]
    eb10:	mov	x0, x21
    eb14:	bl	0x206e0
    eb18:	mov	x29, x29
    eb1c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    eb20:	mov	x26, x0
    eb24:	mov	x0, x23
    eb28:	str	x23, [sp, #0x30]
    eb2c:	bl	0x206e0
    eb30:	mov	x29, x29
    eb34:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    eb38:	mov	x28, x0
    eb3c:	mov	x0, x26
    eb40:	mov	x2, x28
    eb44:	bl	0x20820
    eb48:	mov	x29, x29
    eb4c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    eb50:	mov	x19, x0
    eb54:	str	x0, [sp, #0x70]
    eb58:	mov	x0, x21
    eb5c:	bl	0x20de0
    eb60:	mov	x29, x29
    eb64:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    eb68:	mov	x20, x0
    eb6c:	fmov	d0, #30.00000000
    eb70:	bl	0x20860
    eb74:	mov	x29, x29
    eb78:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    eb7c:	mov	x27, x0
    eb80:	str	x0, [sp, #0x78]
    eb84:	mov	x0, x21
    eb88:	bl	0x22420
    eb8c:	mov	x29, x29
    eb90:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    eb94:	mov	x22, x0
    eb98:	mov	x0, x23
    eb9c:	bl	0x22420
    eba0:	mov	x29, x29
    eba4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    eba8:	mov	x23, x0
    ebac:	mov	x8, #-0x3fc0000000000000
    ebb0:	fmov	d0, x8
    ebb4:	mov	x0, x22
    ebb8:	mov	x2, x23
    ebbc:	bl	0x20880
    ebc0:	mov	x29, x29
    ebc4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    ebc8:	mov	x24, x0
    ebcc:	str	x0, [sp, #0x80]
    ebd0:	adrp	x8, 39 ; 0x35000
    ebd4:	ldr	x0, [x8, #0xa48] ; Objc class ref: bad class ref
    ebd8:	add	x2, sp, #0x68
    ebdc:	mov	w3, #0x4
    ebe0:	bl	0x20580
    ebe4:	mov	x29, x29
    ebe8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    ebec:	mov	x25, x0
    ebf0:	ldr	x0, [sp, #0x8]
    ebf4:	mov	x2, x25
    ebf8:	bl	0x20320
    ebfc:	mov	x0, x25
    ec00:	bl	0x200e8 ; symbol stub for: _objc_release
    ec04:	mov	x0, x24
    ec08:	bl	0x200e8 ; symbol stub for: _objc_release
    ec0c:	mov	x0, x23
    ec10:	bl	0x200e8 ; symbol stub for: _objc_release
    ec14:	mov	x0, x22
    ec18:	bl	0x200e8 ; symbol stub for: _objc_release
    ec1c:	mov	x0, x27
    ec20:	bl	0x200e8 ; symbol stub for: _objc_release
    ec24:	mov	x0, x20
    ec28:	ldr	x20, [sp, #0x38]
    ec2c:	bl	0x200e8 ; symbol stub for: _objc_release
    ec30:	mov	x0, x19
    ec34:	bl	0x200e8 ; symbol stub for: _objc_release
    ec38:	mov	x0, x28
    ec3c:	bl	0x200e8 ; symbol stub for: _objc_release
    ec40:	mov	x0, x26
    ec44:	bl	0x200e8 ; symbol stub for: _objc_release
    ec48:	ldr	x0, [sp, #0x10]
    ec4c:	bl	0x200e8 ; symbol stub for: _objc_release
    ec50:	ldr	x0, [sp, #0x18]
    ec54:	bl	0x200e8 ; symbol stub for: _objc_release
    ec58:	ldr	x0, [sp, #0x28]
    ec5c:	bl	0x200e8 ; symbol stub for: _objc_release
    ec60:	ldr	x0, [sp, #0x20]
    ec64:	bl	0x200e8 ; symbol stub for: _objc_release
    ec68:	adrp	x19, 40 ; 0x36000
    ec6c:	ldr	x0, [x19, #0x348]
    ec70:	fmov	d0, xzr
    ec74:	bl	0x21900
    ec78:	ldr	x0, [x19, #0x348]
    ec7c:	mov	w2, #0x0
    ec80:	bl	0x21ac0
    ec84:	adrp	x8, 39 ; 0x35000
    ec88:	ldr	x0, [x8, #0xac0] ; Objc class ref: bad class ref
    ec8c:	adrp	x2, 30 ; 0x2c000
    ec90:	add	x2, x2, #0x460
    ec94:	adrp	x8, 20 ; 0x22000
    ec98:	ldr	d0, [x8, #0x988]
    ec9c:	bl	0x20500
    eca0:	adrp	x8, 40 ; 0x36000
    eca4:	ldr	x9, [x8, #0x4b0]
    eca8:	add	x19, x9, #0x1
    ecac:	str	x19, [x8, #0x4b0]
    ecb0:	mov	x0, #0x0
    ecb4:	mov	w1, #0x6d00
    ecb8:	movk	w1, #0x4d7c, lsl #16
    ecbc:	bl	0x1ff38 ; symbol stub for: _dispatch_time
    ecc0:	adrp	x8, 36 ; 0x32000
    ecc4:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    ecc8:	str	x8, [sp, #0x40]
    eccc:	adrp	x8, 20 ; 0x22000
    ecd0:	ldr	d0, [x8, #0x938]
    ecd4:	adrp	x8, 1 ; 0xf000
    ecd8:	add	x8, x8, #0x404
    ecdc:	str	d0, [sp, #0x48]
    ece0:	adrp	x9, 30 ; 0x2c000
    ece4:	add	x9, x9, #0x4c0
    ece8:	stp	x8, x9, [sp, #0x50]
    ecec:	str	x19, [sp, #0x60]
    ecf0:	adrp	x1, 36 ; 0x32000
    ecf4:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
    ecf8:	add	x2, sp, #0x40
    ecfc:	bl	0x1fefc ; symbol stub for: _dispatch_after
    ed00:	mov	x0, x21
    ed04:	bl	0x200e8 ; symbol stub for: _objc_release
    ed08:	ldr	x0, [sp, #0x30]
    ed0c:	bl	0x200e8 ; symbol stub for: _objc_release
    ed10:	mov	x0, x20
    ed14:	bl	0x200e8 ; symbol stub for: _objc_release
    ed18:	ldur	x8, [x29, #-0x58]
    ed1c:	adrp	x9, 36 ; 0x32000
    ed20:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    ed24:	ldr	x9, [x9]
    ed28:	cmp	x9, x8
    ed2c:	b.ne	0xed50
    ed30:	ldp	x29, x30, [sp, #0xe0]
    ed34:	ldp	x20, x19, [sp, #0xd0]
    ed38:	ldp	x22, x21, [sp, #0xc0]
    ed3c:	ldp	x24, x23, [sp, #0xb0]
    ed40:	ldp	x26, x25, [sp, #0xa0]
    ed44:	ldp	x28, x27, [sp, #0x90]
    ed48:	add	sp, sp, #0xf0
    ed4c:	ret
    ed50:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_ed54 =====
    ed54:	sub	sp, sp, #0x50
    ed58:	stp	x24, x23, [sp, #0x10]
    ed5c:	stp	x22, x21, [sp, #0x20]
    ed60:	stp	x20, x19, [sp, #0x30]
    ed64:	stp	x29, x30, [sp, #0x40]
    ed68:	add	x29, sp, #0x40
    ed6c:	bl	0x200f4 ; symbol stub for: _objc_retain
    ed70:	mov	x19, x0
    ed74:	adrp	x2, 33 ; 0x2f000
    ed78:	add	x2, x2, #0x868
    ed7c:	bl	0x21700
    ed80:	mov	x8, #0x7fffffffffffffff
    ed84:	cmp	x0, x8
    ed88:	b.ne	0xed9c
    ed8c:	mov	x0, x19
    ed90:	bl	0x200f4 ; symbol stub for: _objc_retain
    ed94:	mov	x20, x0
    ed98:	b	0xef00
    ed9c:	mov	x0, x19
    eda0:	bl	0x21340
    eda4:	mov	x20, x0
    eda8:	adrp	x2, 33 ; 0x2f000
    edac:	add	x2, x2, #0x888 ; "{battery}"
    edb0:	bl	0x208c0
    edb4:	cbz	w0, 0xee14
    edb8:	adrp	x8, 39 ; 0x35000
    edbc:	ldr	x21, [x8, #0xa38] ; Objc class ref: bad class ref
    edc0:	bl	0xf4d8
    edc4:	str	x0, [sp]
    edc8:	adrp	x2, 33 ; 0x2f000
    edcc:	add	x2, x2, #0x8a8 ; "%d"
    edd0:	mov	x0, x21
    edd4:	bl	0x22100
    edd8:	mov	x29, x29
    eddc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    ede0:	mov	x21, x0
    ede4:	mov	x0, x20
    ede8:	bl	0x21160
    edec:	mov	x6, x0
    edf0:	adrp	x2, 33 ; 0x2f000
    edf4:	add	x2, x2, #0x888 ; "{battery}"
    edf8:	mov	x0, x20
    edfc:	mov	x3, x21
    ee00:	mov	x4, #0x0
    ee04:	mov	x5, #0x0
    ee08:	bl	0x217c0
    ee0c:	mov	x0, x21
    ee10:	bl	0x200e8 ; symbol stub for: _objc_release
    ee14:	adrp	x8, 39 ; 0x35000
    ee18:	ldr	x0, [x8, #0xae0] ; Objc class ref: bad class ref
    ee1c:	bl	0x20a20
    ee20:	mov	x29, x29
    ee24:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    ee28:	mov	x21, x0
    ee2c:	adrp	x2, 33 ; 0x2f000
    ee30:	add	x2, x2, #0x8c8 ; "{time}"
    ee34:	mov	x0, x20
    ee38:	bl	0x208c0
    ee3c:	adrp	x23, 39 ; 0x35000
    ee40:	cbz	w0, 0xee94
    ee44:	ldr	x0, [x23, #0xae8]
    ee48:	mov	x2, x21
    ee4c:	mov	x3, #0x0
    ee50:	mov	w4, #0x1
    ee54:	bl	0x211c0
    ee58:	mov	x29, x29
    ee5c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    ee60:	mov	x22, x0
    ee64:	mov	x0, x20
    ee68:	bl	0x21160
    ee6c:	mov	x6, x0
    ee70:	adrp	x2, 33 ; 0x2f000
    ee74:	add	x2, x2, #0x8c8 ; "{time}"
    ee78:	mov	x0, x20
    ee7c:	mov	x3, x22
    ee80:	mov	x4, #0x0
    ee84:	mov	x5, #0x0
    ee88:	bl	0x217c0
    ee8c:	mov	x0, x22
    ee90:	bl	0x200e8 ; symbol stub for: _objc_release
    ee94:	adrp	x2, 33 ; 0x2f000
    ee98:	add	x2, x2, #0x8e8 ; "{date}"
    ee9c:	mov	x0, x20
    eea0:	bl	0x208c0
    eea4:	cbz	w0, 0xeef8
    eea8:	ldr	x0, [x23, #0xae8]
    eeac:	mov	x2, x21
    eeb0:	mov	w3, #0x2
    eeb4:	mov	x4, #0x0
    eeb8:	bl	0x211c0
    eebc:	mov	x29, x29
    eec0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    eec4:	mov	x22, x0
    eec8:	mov	x0, x20
    eecc:	bl	0x21160
    eed0:	mov	x6, x0
    eed4:	adrp	x2, 33 ; 0x2f000
    eed8:	add	x2, x2, #0x8e8 ; "{date}"
    eedc:	mov	x0, x20
    eee0:	mov	x3, x22
    eee4:	mov	x4, #0x0
    eee8:	mov	x5, #0x0
    eeec:	bl	0x217c0
    eef0:	mov	x0, x22
    eef4:	bl	0x200e8 ; symbol stub for: _objc_release
    eef8:	mov	x0, x21
    eefc:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_ef00 =====
    ef00:	mov	x0, x19
    ef04:	bl	0x200e8 ; symbol stub for: _objc_release
    ef08:	mov	x0, x20
    ef0c:	ldp	x29, x30, [sp, #0x40]
    ef10:	ldp	x20, x19, [sp, #0x30]
    ef14:	ldp	x22, x21, [sp, #0x20]
    ef18:	ldp	x24, x23, [sp, #0x10]
    ef1c:	add	sp, sp, #0x50
    ef20:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue

; ===== sub_ef24 =====
    ef24:	sub	sp, sp, #0xd0
    ef28:	stp	x24, x23, [sp, #0x90]
    ef2c:	stp	x22, x21, [sp, #0xa0]
    ef30:	stp	x20, x19, [sp, #0xb0]
    ef34:	stp	x29, x30, [sp, #0xc0]
    ef38:	add	x29, sp, #0xc0
    ef3c:	mov	x21, x1
    ef40:	bl	0x200f4 ; symbol stub for: _objc_retain
    ef44:	mov	x19, x0
    ef48:	adrp	x0, 21 ; 0x23000
    ef4c:	add	x0, x0, #0x643 ; literal pool for: "MPAVRoutingController"
    ef50:	bl	0x20088 ; symbol stub for: _objc_getClass
    ef54:	cmp	x0, #0x0
    ef58:	cset	w20, ne
    ef5c:	tbnz	w21, #0x0, 0xf080
    ef60:	cbz	x0, 0xf080
    ef64:	bl	0xf728
    ef68:	mov	x29, x29
    ef6c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    ef70:	mov	x21, x0
    ef74:	cmp	x0, #0x0
    ef78:	cset	w20, ne
    ef7c:	cbz	x0, 0xf078
    ef80:	sub	x22, x29, #0x50
    ef84:	stp	xzr, x22, [x29, #-0x50]
    ef88:	adrp	x8, 20 ; 0x22000
    ef8c:	ldr	d0, [x8, #0x948]
    ef90:	stur	d0, [x29, #-0x40]
    ef94:	stur	wzr, [x29, #-0x38]
    ef98:	add	x23, sp, #0x40
    ef9c:	stp	xzr, x23, [sp, #0x40]
    efa0:	adrp	x8, 20 ; 0x22000
    efa4:	ldr	d0, [x8, #0x950]
    efa8:	adrp	x8, 1 ; 0xf000
    efac:	add	x8, x8, #0x7b0
    efb0:	str	d0, [sp, #0x50]
    efb4:	adrp	x9, 1 ; 0xf000
    efb8:	add	x9, x9, #0x7d8
    efbc:	stp	x8, x9, [sp, #0x58]
    efc0:	str	xzr, [sp, #0x68]
    efc4:	adrp	x8, 36 ; 0x32000
    efc8:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    efcc:	str	x8, [sp]
    efd0:	adrp	x8, 20 ; 0x22000
    efd4:	ldr	d0, [x8, #0x8f8]
    efd8:	str	d0, [sp, #0x8]
    efdc:	adrp	x8, 1 ; 0xf000
    efe0:	add	x8, x8, #0x7e0
    efe4:	adrp	x9, 30 ; 0x2c000
    efe8:	add	x9, x9, #0x570
    efec:	stp	x8, x9, [sp, #0x10]
    eff0:	mov	x0, x21
    eff4:	bl	0x200f4 ; symbol stub for: _objc_retain
    eff8:	str	x0, [sp, #0x20]
    effc:	mov	x0, x19
    f000:	bl	0x200f4 ; symbol stub for: _objc_retain
    f004:	stp	x0, x23, [sp, #0x28]
    f008:	str	x22, [sp, #0x38]
    f00c:	mov	x0, sp
    f010:	bl	0x20124 ; symbol stub for: _objc_retainBlock
    f014:	mov	x22, x0
    f018:	bl	0x20124 ; symbol stub for: _objc_retainBlock
    f01c:	ldr	x9, [sp, #0x48]
    f020:	ldr	x8, [x9, #0x28]
    f024:	str	x0, [x9, #0x28]
    f028:	mov	x0, x8
    f02c:	bl	0x200e8 ; symbol stub for: _objc_release
    f030:	ldr	x8, [sp, #0x48]
    f034:	ldr	x0, [x8, #0x28]
    f038:	ldr	x8, [x0, #0x10]
    f03c:	blr	x8
    f040:	mov	x0, x22
    f044:	bl	0x200e8 ; symbol stub for: _objc_release
    f048:	ldr	x0, [sp, #0x28]
    f04c:	bl	0x200e8 ; symbol stub for: _objc_release
    f050:	ldr	x0, [sp, #0x20]
    f054:	bl	0x200e8 ; symbol stub for: _objc_release
    f058:	add	x0, sp, #0x40
    f05c:	mov	w1, #0x8
    f060:	bl	0x1fe48 ; symbol stub for: __Block_object_dispose
    f064:	ldr	x0, [sp, #0x68]
    f068:	bl	0x200e8 ; symbol stub for: _objc_release
    f06c:	sub	x0, x29, #0x50
    f070:	mov	w1, #0x8
    f074:	bl	0x1fe48 ; symbol stub for: __Block_object_dispose
    f078:	mov	x0, x21
    f07c:	bl	0x200e8 ; symbol stub for: _objc_release
    f080:	mov	x0, x19
    f084:	bl	0x200e8 ; symbol stub for: _objc_release
    f088:	mov	x0, x20
    f08c:	ldp	x29, x30, [sp, #0xc0]
    f090:	ldp	x20, x19, [sp, #0xb0]
    f094:	ldp	x22, x21, [sp, #0xa0]
    f098:	ldp	x24, x23, [sp, #0x90]
    f09c:	add	sp, sp, #0xd0
    f0a0:	ret
    f0a4:	mov	x19, x0
    f0a8:	add	x0, sp, #0x40
    f0ac:	mov	w1, #0x8
    f0b0:	bl	0x1fe48 ; symbol stub for: __Block_object_dispose
    f0b4:	sub	x0, x29, #0x50
    f0b8:	mov	w1, #0x8
    f0bc:	bl	0x1fe48 ; symbol stub for: __Block_object_dispose
    f0c0:	mov	x0, x19
    f0c4:	bl	0x1fe54 ; symbol stub for: __Unwind_Resume

; ===== sub_f0c8 =====
    f0c8:	sub	sp, sp, #0x1f0
    f0cc:	stp	x28, x27, [sp, #0x190]
    f0d0:	stp	x26, x25, [sp, #0x1a0]
    f0d4:	stp	x24, x23, [sp, #0x1b0]
    f0d8:	stp	x22, x21, [sp, #0x1c0]
    f0dc:	stp	x20, x19, [sp, #0x1d0]
    f0e0:	stp	x29, x30, [sp, #0x1e0]
    f0e4:	add	x29, sp, #0x1e0
    f0e8:	mov	x19, x0
    f0ec:	adrp	x8, 35 ; 0x32000
    f0f0:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    f0f4:	ldr	x8, [x8]
    f0f8:	stur	x8, [x29, #-0x58]
    f0fc:	movi.16b	v0, #0x0
    f100:	stp	q0, q0, [sp, #0x40]
    f104:	stp	q0, q0, [sp, #0x60]
    f108:	adrp	x23, 38 ; 0x35000
    f10c:	ldr	x0, [x23, #0xa60] ; Objc class ref: bad class ref
    f110:	bl	0x21f00
    f114:	mov	x29, x29
    f118:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    f11c:	mov	x21, x0
    f120:	bl	0x20800
    f124:	mov	x29, x29
    f128:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    f12c:	mov	x20, x0
    f130:	mov	x0, x21
    f134:	bl	0x200e8 ; symbol stub for: _objc_release
    f138:	add	x2, sp, #0x40
    f13c:	sub	x3, x29, #0xd8
    f140:	mov	x0, x20
    f144:	mov	w4, #0x10
    f148:	bl	0x20980
    f14c:	cbz	x0, 0xf1d0
    f150:	mov	x21, x0
    f154:	ldr	x8, [sp, #0x50]
    f158:	ldr	x24, [x8]
    f15c:	adrp	x25, 38 ; 0x35000
    f160:	mov	x26, #0x0
    f164:	ldr	x8, [sp, #0x50]
    f168:	ldr	x8, [x8]
    f16c:	cmp	x8, x24
    f170:	b.eq	0xf17c
    f174:	mov	x0, x20
    f178:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    f17c:	ldr	x8, [sp, #0x48]
    f180:	ldr	x22, [x8, x26, lsl #3]
    f184:	ldr	x0, [x25, #0xad8]
    f188:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    f18c:	mov	x1, x0
    f190:	mov	x0, x22
    f194:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    f198:	tbz	w0, #0x0, 0xf1a8
    f19c:	mov	x0, x22
    f1a0:	bl	0x20340
    f1a4:	cbz	x0, 0xf2a8
    f1a8:	add	x26, x26, #0x1
    f1ac:	cmp	x21, x26
    f1b0:	b.ne	0xf164
    f1b4:	add	x2, sp, #0x40
    f1b8:	sub	x3, x29, #0xd8
    f1bc:	mov	x0, x20
    f1c0:	mov	w4, #0x10
    f1c4:	bl	0x20980
    f1c8:	mov	x21, x0
    f1cc:	cbnz	x0, 0xf160
    f1d0:	mov	x0, x20
    f1d4:	bl	0x200e8 ; symbol stub for: _objc_release
    f1d8:	movi.16b	v0, #0x0
    f1dc:	stp	q0, q0, [sp, #0x20]
    f1e0:	stp	q0, q0, [sp]
    f1e4:	ldr	x0, [x23, #0xa60]
    f1e8:	bl	0x21f00
    f1ec:	mov	x29, x29
    f1f0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    f1f4:	mov	x21, x0
    f1f8:	bl	0x20800
    f1fc:	mov	x29, x29
    f200:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    f204:	mov	x20, x0
    f208:	mov	x0, x21
    f20c:	bl	0x200e8 ; symbol stub for: _objc_release
    f210:	mov	x2, sp
    f214:	add	x3, sp, #0x88
    f218:	mov	x0, x20
    f21c:	mov	w4, #0x10
    f220:	bl	0x20980
    f224:	cbz	x0, 0xf29c
    f228:	mov	x21, x0
    f22c:	ldr	x8, [sp, #0x10]
    f230:	ldr	x23, [x8]
    f234:	adrp	x24, 38 ; 0x35000
    f238:	mov	x25, #0x0
    f23c:	ldr	x8, [sp, #0x10]
    f240:	ldr	x8, [x8]
    f244:	cmp	x8, x23
    f248:	b.eq	0xf254
    f24c:	mov	x0, x20
    f250:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    f254:	ldr	x8, [sp, #0x8]
    f258:	ldr	x22, [x8, x25, lsl #3]
    f25c:	ldr	x0, [x24, #0xad8]
    f260:	bl	0x200b8 ; symbol stub for: _objc_opt_class
    f264:	mov	x1, x0
    f268:	mov	x0, x22
    f26c:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
    f270:	tbnz	w0, #0x0, 0xf2a8
    f274:	add	x25, x25, #0x1
    f278:	cmp	x21, x25
    f27c:	b.ne	0xf23c
    f280:	mov	x2, sp
    f284:	add	x3, sp, #0x88
    f288:	mov	x0, x20
    f28c:	mov	w4, #0x10
    f290:	bl	0x20980
    f294:	mov	x21, x0
    f298:	cbnz	x0, 0xf238
    f29c:	mov	x0, x20
    f2a0:	bl	0x200e8 ; symbol stub for: _objc_release
    f2a4:	b	0xf3b0
    f2a8:	mov	x0, x22
    f2ac:	bl	0x200f4 ; symbol stub for: _objc_retain
    f2b0:	mov	x21, x0
    f2b4:	mov	x0, x20
    f2b8:	bl	0x200e8 ; symbol stub for: _objc_release
    f2bc:	cbz	x21, 0xf3b0
    f2c0:	adrp	x8, 38 ; 0x35000
    f2c4:	ldr	x0, [x8, #0xac8] ; Objc class ref: bad class ref
    f2c8:	bl	0x20028 ; symbol stub for: _objc_alloc
    f2cc:	mov	x2, x21
    f2d0:	bl	0x20f20
    f2d4:	mov	x20, x0
    f2d8:	adrp	x8, 35 ; 0x32000
    f2dc:	ldr	x8, [x8, #0xd70] ; literal pool symbol address: _UIWindowLevelAlert
    f2e0:	ldr	d0, [x8]
    f2e4:	fmov	d1, #1.00000000
    f2e8:	fadd	d0, d0, d1
    f2ec:	bl	0x21ea0
    f2f0:	adrp	x23, 38 ; 0x35000
    f2f4:	ldr	x0, [x23, #0xab0] ; Objc class ref: bad class ref
    f2f8:	bl	0x20740
    f2fc:	mov	x29, x29
    f300:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    f304:	mov	x22, x0
    f308:	mov	x0, x20
    f30c:	mov	x2, x22
    f310:	bl	0x21920
    f314:	mov	x0, x22
    f318:	bl	0x200e8 ; symbol stub for: _objc_release
    f31c:	mov	x0, x20
    f320:	mov	x2, x19
    f324:	bl	0x21e60
    f328:	adrp	x8, 38 ; 0x35000
    f32c:	ldr	x0, [x8, #0xad0] ; Objc class ref: bad class ref
    f330:	bl	0x200d0 ; symbol stub for: _objc_opt_new
    f334:	mov	x19, x0
    f338:	mov	x0, x20
    f33c:	mov	x2, x19
    f340:	bl	0x21c40
    f344:	mov	x0, x19
    f348:	bl	0x200e8 ; symbol stub for: _objc_release
    f34c:	ldr	x0, [x23, #0xab0]
    f350:	bl	0x20740
    f354:	mov	x29, x29
    f358:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    f35c:	mov	x19, x0
    f360:	mov	x0, x20
    f364:	bl	0x217e0
    f368:	mov	x29, x29
    f36c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    f370:	mov	x22, x0
    f374:	bl	0x22400
    f378:	mov	x29, x29
    f37c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    f380:	mov	x23, x0
    f384:	mov	x2, x19
    f388:	bl	0x21920
    f38c:	mov	x0, x23
    f390:	bl	0x200e8 ; symbol stub for: _objc_release
    f394:	mov	x0, x22
    f398:	bl	0x200e8 ; symbol stub for: _objc_release
    f39c:	mov	x0, x19
    f3a0:	bl	0x200e8 ; symbol stub for: _objc_release
    f3a4:	mov	x0, x21
    f3a8:	bl	0x200e8 ; symbol stub for: _objc_release
    f3ac:	b	0xf3b4

; ===== sub_f3b0 =====
    f3b0:	mov	x20, #0x0

; ===== sub_f3b4 =====
    f3b4:	ldur	x8, [x29, #-0x58]
    f3b8:	adrp	x9, 35 ; 0x32000
    f3bc:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    f3c0:	ldr	x9, [x9]
    f3c4:	cmp	x9, x8
    f3c8:	b.ne	0xf3f0
    f3cc:	mov	x0, x20
    f3d0:	ldp	x29, x30, [sp, #0x1e0]
    f3d4:	ldp	x20, x19, [sp, #0x1d0]
    f3d8:	ldp	x22, x21, [sp, #0x1c0]
    f3dc:	ldp	x24, x23, [sp, #0x1b0]
    f3e0:	ldp	x26, x25, [sp, #0x1a0]
    f3e4:	ldp	x28, x27, [sp, #0x190]
    f3e8:	add	sp, sp, #0x1f0
    f3ec:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue
    f3f0:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
    f3f4:	adrp	x8, 39 ; 0x36000
    f3f8:	ldr	x0, [x8, #0x348]
    f3fc:	fmov	d0, #1.00000000
    f400:	b	0x21900
    f404:	ldr	x8, [x0, #0x20]
    f408:	adrp	x9, 39 ; 0x36000
    f40c:	ldr	x9, [x9, #0x4b0]
    f410:	cmp	x8, x9
    f414:	b.ne	0xf47c
    f418:	sub	sp, sp, #0x40
    f41c:	stp	x29, x30, [sp, #0x30]
    f420:	add	x29, sp, #0x30
    f424:	adrp	x9, 38 ; 0x35000
    f428:	adrp	x10, 35 ; 0x32000
    f42c:	ldr	x10, [x10, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    f430:	ldr	x0, [x9, #0xac0]
    f434:	str	x10, [sp, #0x8]
    f438:	adrp	x9, 19 ; 0x22000
    f43c:	ldr	d0, [x9, #0x938]
    f440:	adrp	x9, 0 ; 0xf000
    f444:	add	x9, x9, #0x490
    f448:	str	d0, [sp, #0x10]
    f44c:	adrp	x10, 29 ; 0x2c000
    f450:	add	x10, x10, #0x4a0
    f454:	stp	x9, x10, [sp, #0x18]
    f458:	str	x8, [sp, #0x28]
    f45c:	adrp	x2, 29 ; 0x2c000
    f460:	add	x2, x2, #0x480
    f464:	adrp	x8, 19 ; 0x22000
    f468:	ldr	d0, [x8, #0x910]
    f46c:	add	x3, sp, #0x8
    f470:	bl	0x20520
    f474:	ldp	x29, x30, [sp, #0x30]
    f478:	add	sp, sp, #0x40
    f47c:	ret
    f480:	adrp	x8, 39 ; 0x36000
    f484:	ldr	x0, [x8, #0x348]
    f488:	fmov	d0, xzr
    f48c:	b	0x21900
    f490:	ldr	x8, [x0, #0x20]
    f494:	adrp	x9, 39 ; 0x36000
    f498:	ldr	x9, [x9, #0x4b0]
    f49c:	cmp	x8, x9
    f4a0:	b.ne	0xf4d4
    f4a4:	stp	x20, x19, [sp, #-0x20]!
    f4a8:	stp	x29, x30, [sp, #0x10]
    f4ac:	add	x29, sp, #0x10
    f4b0:	adrp	x19, 39 ; 0x36000
    f4b4:	ldr	x0, [x19, #0x348]
    f4b8:	mov	w2, #0x1
    f4bc:	bl	0x21ac0
    f4c0:	ldr	x0, [x19, #0x348]
    f4c4:	str	xzr, [x19, #0x348]
    f4c8:	ldp	x29, x30, [sp, #0x10]
    f4cc:	ldp	x20, x19, [sp], #0x20
    f4d0:	b	0x200e8 ; symbol stub for: _objc_release
    f4d4:	ret

; ===== sub_f4d8 =====
    f4d8:	sub	sp, sp, #0x150
    f4dc:	stp	d9, d8, [sp, #0xe0]
    f4e0:	stp	x28, x27, [sp, #0xf0]
    f4e4:	stp	x26, x25, [sp, #0x100]
    f4e8:	stp	x24, x23, [sp, #0x110]
    f4ec:	stp	x22, x21, [sp, #0x120]
    f4f0:	stp	x20, x19, [sp, #0x130]
    f4f4:	stp	x29, x30, [sp, #0x140]
    f4f8:	add	x29, sp, #0x140
    f4fc:	adrp	x8, 35 ; 0x32000
    f500:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    f504:	ldr	x8, [x8]
    f508:	stur	x8, [x29, #-0x70]
    f50c:	bl	0x1fdf4 ; symbol stub for: _IOPSCopyPowerSourcesInfo
    f510:	mov	x20, x0
    f514:	cbz	x0, 0xf520
    f518:	mov	x0, x20
    f51c:	bl	0x1fe00 ; symbol stub for: _IOPSCopyPowerSourcesList
    f520:	movi.16b	v0, #0x0
    f524:	stp	q0, q0, [sp, #0x30]
    f528:	stp	q0, q0, [sp, #0x10]
    f52c:	bl	0x200f4 ; symbol stub for: _objc_retain
    f530:	add	x2, sp, #0x10
    f534:	add	x3, sp, #0x50
    f538:	str	x0, [sp, #0x8]
    f53c:	mov	w4, #0x10
    f540:	bl	0x20980
    f544:	cbz	x0, 0xf640
    f548:	mov	x23, x0
    f54c:	ldr	x8, [sp, #0x20]
    f550:	ldr	x28, [x8]
    f554:	adrp	x21, 32 ; 0x2f000
    f558:	add	x21, x21, #0x908 ; "Current Capacity"
    f55c:	adrp	x22, 32 ; 0x2f000
    f560:	add	x22, x22, #0x928 ; "Max Capacity"
    f564:	mov	x19, #0x0
    f568:	adrp	x8, 38 ; 0x35000
    f56c:	ldr	x24, [x8, #0x2b8]
    f570:	ldr	x8, [sp, #0x20]
    f574:	ldr	x8, [x8]
    f578:	cmp	x8, x28
    f57c:	b.eq	0xf588
    f580:	ldr	x0, [sp, #0x8]
    f584:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    f588:	ldr	x8, [sp, #0x18]
    f58c:	ldr	x1, [x8, x19, lsl #3]
    f590:	mov	x0, x20
    f594:	bl	0x1fe0c ; symbol stub for: _IOPSGetPowerSourceDescription
    f598:	mov	x29, x29
    f59c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    f5a0:	mov	x25, x0
    f5a4:	mov	x2, x21
    f5a8:	bl	0x214e0
    f5ac:	mov	x29, x29
    f5b0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    f5b4:	mov	x26, x0
    f5b8:	mov	x0, x25
    f5bc:	mov	x2, x22
    f5c0:	bl	0x214e0
    f5c4:	mov	x29, x29
    f5c8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    f5cc:	mov	x27, x0
    f5d0:	mov	x0, x26
    f5d4:	mov	x1, x24
    f5d8:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    f5dc:	tbz	w0, #0x0, 0xf600
    f5e0:	mov	x0, x27
    f5e4:	mov	x1, x24
    f5e8:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    f5ec:	tbz	w0, #0x0, 0xf600
    f5f0:	mov	x0, x27
    f5f4:	bl	0x20be0
    f5f8:	fcmp	d0, #0.0
    f5fc:	b.hi	0xf648
    f600:	mov	x0, x27
    f604:	bl	0x200e8 ; symbol stub for: _objc_release
    f608:	mov	x0, x26
    f60c:	bl	0x200e8 ; symbol stub for: _objc_release
    f610:	mov	x0, x25
    f614:	bl	0x200e8 ; symbol stub for: _objc_release
    f618:	add	x19, x19, #0x1
    f61c:	cmp	x23, x19
    f620:	b.ne	0xf570
    f624:	add	x2, sp, #0x10
    f628:	add	x3, sp, #0x50
    f62c:	ldr	x0, [sp, #0x8]
    f630:	mov	w4, #0x10
    f634:	bl	0x20980
    f638:	mov	x23, x0
    f63c:	cbnz	x0, 0xf564
    f640:	mov	w21, #-0x1
    f644:	b	0xf684
    f648:	mov	x0, x26
    f64c:	bl	0x20be0
    f650:	mov	x8, #0x4059000000000000
    f654:	fmov	d1, x8
    f658:	fmul	d8, d0, d1
    f65c:	mov	x0, x27
    f660:	bl	0x20be0
    f664:	fdiv	d0, d8, d0
    f668:	fcvtas	x21, d0
    f66c:	mov	x0, x27
    f670:	bl	0x200e8 ; symbol stub for: _objc_release
    f674:	mov	x0, x26
    f678:	bl	0x200e8 ; symbol stub for: _objc_release
    f67c:	mov	x0, x25
    f680:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_f684 =====
    f684:	ldr	x0, [sp, #0x8]
    f688:	bl	0x200e8 ; symbol stub for: _objc_release
    f68c:	cbz	x20, 0xf698
    f690:	mov	x0, x20
    f694:	bl	0x1fdac ; symbol stub for: _CFRelease
    f698:	tbz	w21, #0x1f, 0xf6dc
    f69c:	adrp	x8, 38 ; 0x35000
    f6a0:	ldr	x0, [x8, #0xaf0] ; Objc class ref: bad class ref
    f6a4:	bl	0x209c0
    f6a8:	mov	x29, x29
    f6ac:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    f6b0:	mov	x20, x0
    f6b4:	bl	0x205a0
    f6b8:	mov.16b	v8, v0
    f6bc:	mov	x0, x20
    f6c0:	bl	0x200e8 ; symbol stub for: _objc_release
    f6c4:	mov	w8, #0x42c80000
    f6c8:	fmov	s0, w8
    f6cc:	fmul	s0, s8, s0
    f6d0:	fcvtas	x8, s0
    f6d4:	fcmp	s8, #0.0
    f6d8:	csel	w21, w21, w8, lt
    f6dc:	ldr	x0, [sp, #0x8]
    f6e0:	bl	0x200e8 ; symbol stub for: _objc_release
    f6e4:	ldur	x8, [x29, #-0x70]
    f6e8:	adrp	x9, 35 ; 0x32000
    f6ec:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    f6f0:	ldr	x9, [x9]
    f6f4:	cmp	x9, x8
    f6f8:	b.ne	0xf724
    f6fc:	mov	x0, x21
    f700:	ldp	x29, x30, [sp, #0x140]
    f704:	ldp	x20, x19, [sp, #0x130]
    f708:	ldp	x22, x21, [sp, #0x120]
    f70c:	ldp	x24, x23, [sp, #0x110]
    f710:	ldp	x26, x25, [sp, #0x100]
    f714:	ldp	x28, x27, [sp, #0xf0]
    f718:	ldp	d9, d8, [sp, #0xe0]
    f71c:	add	sp, sp, #0x150
    f720:	ret
    f724:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_f728 =====
    f728:	stp	x20, x19, [sp, #-0x20]!
    f72c:	stp	x29, x30, [sp, #0x10]
    f730:	add	x29, sp, #0x10
    f734:	adrp	x0, 20 ; 0x23000
    f738:	add	x0, x0, #0x643 ; literal pool for: "MPAVRoutingController"
    f73c:	bl	0x20088 ; symbol stub for: _objc_getClass
    f740:	mov	x19, x0
    f744:	adrp	x8, 37 ; 0x34000
    f748:	ldr	x2, [x8, #0xbf8]
    f74c:	bl	0x20f40
    f750:	cbz	w0, 0xf79c
    f754:	adrp	x8, 37 ; 0x34000
    f758:	ldr	x2, [x8, #0xc10]
    f75c:	mov	x0, x19
    f760:	bl	0x20f40
    f764:	cbz	w0, 0xf79c
    f768:	mov	x0, x19
    f76c:	bl	0x200d0 ; symbol stub for: _objc_opt_new
    f770:	mov	x19, x0
    f774:	adrp	x8, 37 ; 0x34000
    f778:	ldr	x20, [x8, #0xc18]
    f77c:	mov	x1, x20
    f780:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    f784:	tbz	w0, #0x0, 0xf7a0
    f788:	mov	x0, x19
    f78c:	mov	x1, x20
    f790:	mov	w2, #0x3
    f794:	bl	0x200a0 ; symbol stub for: _objc_msgSend
    f798:	b	0xf7a0
    f79c:	mov	x19, #0x0

; ===== sub_f7a0 =====
    f7a0:	mov	x0, x19
    f7a4:	ldp	x29, x30, [sp, #0x10]
    f7a8:	ldp	x20, x19, [sp], #0x20
    f7ac:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue
    f7b0:	stp	x20, x19, [sp, #-0x20]!
    f7b4:	stp	x29, x30, [sp, #0x10]
    f7b8:	add	x29, sp, #0x10
    f7bc:	mov	x19, x0
    f7c0:	ldr	x0, [x1, #0x28]
    f7c4:	bl	0x20124 ; symbol stub for: _objc_retainBlock
    f7c8:	str	x0, [x19, #0x28]
    f7cc:	ldp	x29, x30, [sp, #0x10]
    f7d0:	ldp	x20, x19, [sp], #0x20
    f7d4:	ret
    f7d8:	ldr	x0, [x0, #0x28]
    f7dc:	b	0x200e8 ; symbol stub for: _objc_release
    f7e0:	sub	sp, sp, #0x70
    f7e4:	stp	x22, x21, [sp, #0x40]
    f7e8:	stp	x20, x19, [sp, #0x50]
    f7ec:	stp	x29, x30, [sp, #0x60]
    f7f0:	add	x29, sp, #0x60
    f7f4:	mov	x19, x0
    f7f8:	adrp	x8, 37 ; 0x34000
    f7fc:	ldr	x20, [x8, #0xbf8]
    f800:	adrp	x8, 35 ; 0x32000
    f804:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    f808:	str	x8, [sp]
    f80c:	adrp	x8, 19 ; 0x22000
    f810:	ldr	d0, [x8, #0x8f8]
    f814:	str	d0, [sp, #0x8]
    f818:	adrp	x8, 0 ; 0xf000
    f81c:	add	x8, x8, #0x894
    f820:	adrp	x9, 29 ; 0x2c000
    f824:	add	x9, x9, #0x540
    f828:	stp	x8, x9, [sp, #0x10]
    f82c:	ldp	x21, x0, [x0, #0x20]
    f830:	bl	0x200f4 ; symbol stub for: _objc_retain
    f834:	str	x0, [sp, #0x20]
    f838:	ldr	x0, [x19, #0x20]
    f83c:	bl	0x200f4 ; symbol stub for: _objc_retain
    f840:	str	x0, [sp, #0x28]
    f844:	ldr	q0, [x19, #0x30]
    f848:	str	q0, [sp, #0x30]
    f84c:	mov	x0, sp
    f850:	bl	0x20124 ; symbol stub for: _objc_retainBlock
    f854:	mov	x19, x0
    f858:	mov	x0, x21
    f85c:	mov	x1, x20
    f860:	mov	x2, x19
    f864:	bl	0x200a0 ; symbol stub for: _objc_msgSend
    f868:	mov	x0, x19
    f86c:	bl	0x200e8 ; symbol stub for: _objc_release
    f870:	ldr	x0, [sp, #0x28]
    f874:	bl	0x200e8 ; symbol stub for: _objc_release
    f878:	ldr	x0, [sp, #0x20]
    f87c:	bl	0x200e8 ; symbol stub for: _objc_release
    f880:	ldp	x29, x30, [sp, #0x60]
    f884:	ldp	x20, x19, [sp, #0x50]
    f888:	ldp	x22, x21, [sp, #0x40]
    f88c:	add	sp, sp, #0x70
    f890:	ret
    f894:	sub	sp, sp, #0x70
    f898:	stp	x20, x19, [sp, #0x50]
    f89c:	stp	x29, x30, [sp, #0x60]
    f8a0:	add	x29, sp, #0x60
    f8a4:	mov	x19, x0
    f8a8:	mov	x0, x1
    f8ac:	bl	0x200f4 ; symbol stub for: _objc_retain
    f8b0:	mov	x20, x0
    f8b4:	adrp	x8, 35 ; 0x32000
    f8b8:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    f8bc:	str	x8, [sp, #0x8]
    f8c0:	adrp	x8, 19 ; 0x22000
    f8c4:	ldr	d0, [x8, #0x8f8]
    f8c8:	str	d0, [sp, #0x10]
    f8cc:	adrp	x8, 0 ; 0xf000
    f8d0:	add	x8, x8, #0x950
    f8d4:	adrp	x9, 29 ; 0x2c000
    f8d8:	add	x9, x9, #0x510
    f8dc:	stp	x8, x9, [sp, #0x18]
    f8e0:	str	x0, [sp, #0x28]
    f8e4:	ldr	x0, [x19, #0x20]
    f8e8:	bl	0x200f4 ; symbol stub for: _objc_retain
    f8ec:	str	x0, [sp, #0x30]
    f8f0:	ldr	x0, [x19, #0x28]
    f8f4:	bl	0x200f4 ; symbol stub for: _objc_retain
    f8f8:	str	x0, [sp, #0x38]
    f8fc:	ldr	q0, [x19, #0x30]
    f900:	stur	q0, [sp, #0x40]
    f904:	mov	x0, x20
    f908:	bl	0x200f4 ; symbol stub for: _objc_retain
    f90c:	mov	x19, x0
    f910:	adrp	x0, 35 ; 0x32000
    f914:	ldr	x0, [x0, #0xde8] ; literal pool symbol address: __dispatch_main_q
    f918:	add	x1, sp, #0x8
    f91c:	bl	0x1ff08 ; symbol stub for: _dispatch_async
    f920:	ldr	x0, [sp, #0x38]
    f924:	bl	0x200e8 ; symbol stub for: _objc_release
    f928:	ldr	x0, [sp, #0x30]
    f92c:	bl	0x200e8 ; symbol stub for: _objc_release
    f930:	ldr	x0, [sp, #0x28]
    f934:	bl	0x200e8 ; symbol stub for: _objc_release
    f938:	mov	x0, x19
    f93c:	bl	0x200e8 ; symbol stub for: _objc_release
    f940:	ldp	x29, x30, [sp, #0x60]
    f944:	ldp	x20, x19, [sp, #0x50]
    f948:	add	sp, sp, #0x70
    f94c:	ret
    f950:	sub	sp, sp, #0x160
    f954:	stp	x28, x27, [sp, #0x100]
    f958:	stp	x26, x25, [sp, #0x110]
    f95c:	stp	x24, x23, [sp, #0x120]
    f960:	stp	x22, x21, [sp, #0x130]
    f964:	stp	x20, x19, [sp, #0x140]
    f968:	stp	x29, x30, [sp, #0x150]
    f96c:	add	x29, sp, #0x150
    f970:	mov	x19, x0
    f974:	adrp	x8, 35 ; 0x32000
    f978:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    f97c:	ldr	x8, [x8]
    f980:	stur	x8, [x29, #-0x60]
    f984:	movi.16b	v0, #0x0
    f988:	stp	q0, q0, [sp, #0x30]
    f98c:	stp	q0, q0, [sp, #0x50]
    f990:	ldr	x0, [x0, #0x20]
    f994:	bl	0x200f4 ; symbol stub for: _objc_retain
    f998:	mov	x20, x0
    f99c:	add	x2, sp, #0x30
    f9a0:	add	x3, sp, #0x70
    f9a4:	mov	w4, #0x10
    f9a8:	bl	0x20980
    f9ac:	cbz	x0, 0xfa98
    f9b0:	mov	x21, x0
    f9b4:	ldr	x8, [sp, #0x40]
    f9b8:	ldr	x26, [x8]
    f9bc:	adrp	x9, 37 ; 0x34000
    f9c0:	adrp	x8, 37 ; 0x34000
    f9c4:	mov	x27, #0x0
    f9c8:	ldr	x22, [x9, #0xc00]
    f9cc:	mov	x28, x8
    f9d0:	ldr	x23, [x8, #0xc08]
    f9d4:	ldr	x8, [sp, #0x40]
    f9d8:	ldr	x8, [x8]
    f9dc:	cmp	x8, x26
    f9e0:	b.eq	0xf9ec
    f9e4:	mov	x0, x20
    f9e8:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
    f9ec:	ldr	x8, [sp, #0x38]
    f9f0:	ldr	x24, [x8, x27, lsl #3]
    f9f4:	mov	x0, x24
    f9f8:	mov	x1, x22
    f9fc:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    fa00:	tbz	w0, #0x0, 0xfa14
    fa04:	mov	x0, x24
    fa08:	mov	x2, x22
    fa0c:	bl	0x215e0
    fa10:	b	0xfa18
    fa14:	mov	x0, #0x0

; ===== sub_fa18 =====
    fa18:	bl	0x200f4 ; symbol stub for: _objc_retain
    fa1c:	mov	x25, x0
    fa20:	mov	x0, x24
    fa24:	mov	x1, x23
    fa28:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
    fa2c:	tbz	w0, #0x0, 0xfa4c
    fa30:	mov	x0, x24
    fa34:	mov	x1, x23
    fa38:	bl	0x200a0 ; symbol stub for: _objc_msgSend
    fa3c:	ldr	x2, [x19, #0x28]
    fa40:	cbnz	x2, 0xfa54
    fa44:	tbnz	w0, #0x0, 0xfaa4
    fa48:	b	0xfa60
    fa4c:	ldr	x2, [x19, #0x28]
    fa50:	cbz	x2, 0xfa60
    fa54:	mov	x0, x25
    fa58:	bl	0x211a0
    fa5c:	tbnz	w0, #0x0, 0xfaa4

; ===== sub_fa60 =====
    fa60:	mov	x0, x25
    fa64:	bl	0x200e8 ; symbol stub for: _objc_release
    fa68:	add	x27, x27, #0x1
    fa6c:	cmp	x21, x27
    fa70:	b.ne	0xf9d4
    fa74:	add	x2, sp, #0x30
    fa78:	add	x3, sp, #0x70
    fa7c:	mov	x0, x20
    fa80:	mov	w4, #0x10
    fa84:	bl	0x20980
    fa88:	mov	x21, x0
    fa8c:	adrp	x9, 37 ; 0x34000
    fa90:	mov	x8, x28
    fa94:	cbnz	x0, 0xf9c4
    fa98:	mov	x0, x20
    fa9c:	bl	0x200e8 ; symbol stub for: _objc_release
    faa0:	b	0xfaf4
    faa4:	mov	x0, x24
    faa8:	bl	0x200f4 ; symbol stub for: _objc_retain
    faac:	mov	x21, x0
    fab0:	mov	x0, x25
    fab4:	bl	0x200e8 ; symbol stub for: _objc_release
    fab8:	mov	x0, x20
    fabc:	bl	0x200e8 ; symbol stub for: _objc_release
    fac0:	cbz	x21, 0xfaf4
    fac4:	ldr	x0, [x19, #0x30]
    fac8:	adrp	x8, 37 ; 0x34000
    facc:	ldr	x1, [x8, #0xc10]
    fad0:	mov	x2, x21
    fad4:	bl	0x200a0 ; symbol stub for: _objc_msgSend
    fad8:	ldr	x8, [x19, #0x38]
    fadc:	ldr	x8, [x8, #0x8]
    fae0:	ldr	x0, [x8, #0x28]
    fae4:	str	xzr, [x8, #0x28]
    fae8:	bl	0x200e8 ; symbol stub for: _objc_release
    faec:	mov	x0, x21
    faf0:	b	0xfb78

; ===== sub_faf4 =====
    faf4:	ldr	x8, [x19, #0x40]
    faf8:	ldr	x8, [x8, #0x8]
    fafc:	ldr	w9, [x8, #0x18]
    fb00:	add	w10, w9, #0x1
    fb04:	str	w10, [x8, #0x18]
    fb08:	cmp	w9, #0x8
    fb0c:	b.gt	0xfb68
    fb10:	mov	x0, #0x0
    fb14:	mov	w1, #0x6500
    fb18:	movk	w1, #0x1dcd, lsl #16
    fb1c:	bl	0x1ff38 ; symbol stub for: _dispatch_time
    fb20:	adrp	x8, 35 ; 0x32000
    fb24:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    fb28:	str	x8, [sp, #0x8]
    fb2c:	adrp	x8, 19 ; 0x22000
    fb30:	ldr	d0, [x8, #0x8f8]
    fb34:	str	d0, [sp, #0x10]
    fb38:	adrp	x8, 0 ; 0xf000
    fb3c:	add	x8, x8, #0xbb8
    fb40:	adrp	x9, 29 ; 0x2c000
    fb44:	add	x9, x9, #0x4e0
    fb48:	stp	x8, x9, [sp, #0x18]
    fb4c:	ldr	x8, [x19, #0x38]
    fb50:	str	x8, [sp, #0x28]
    fb54:	adrp	x1, 35 ; 0x32000
    fb58:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
    fb5c:	add	x2, sp, #0x8
    fb60:	bl	0x1fefc ; symbol stub for: _dispatch_after
    fb64:	b	0xfb7c
    fb68:	ldr	x8, [x19, #0x38]
    fb6c:	ldr	x8, [x8, #0x8]
    fb70:	ldr	x0, [x8, #0x28]
    fb74:	str	xzr, [x8, #0x28]

; ===== sub_fb78 =====
    fb78:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_fb7c =====
    fb7c:	ldur	x8, [x29, #-0x60]
    fb80:	adrp	x9, 35 ; 0x32000
    fb84:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    fb88:	ldr	x9, [x9]
    fb8c:	cmp	x9, x8
    fb90:	b.ne	0xfbb4
    fb94:	ldp	x29, x30, [sp, #0x150]
    fb98:	ldp	x20, x19, [sp, #0x140]
    fb9c:	ldp	x22, x21, [sp, #0x130]
    fba0:	ldp	x24, x23, [sp, #0x120]
    fba4:	ldp	x26, x25, [sp, #0x110]
    fba8:	ldp	x28, x27, [sp, #0x100]
    fbac:	add	sp, sp, #0x160
    fbb0:	ret
    fbb4:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
    fbb8:	ldr	x8, [x0, #0x20]
    fbbc:	ldr	x8, [x8, #0x8]
    fbc0:	ldr	x0, [x8, #0x28]
    fbc4:	cbz	x0, 0xfbd0
    fbc8:	ldr	x1, [x0, #0x10]
    fbcc:	br	x1
    fbd0:	ret
    fbd4:	ldr	x1, [x1, #0x20]
    fbd8:	add	x0, x0, #0x20
    fbdc:	mov	w2, #0x8
    fbe0:	b	0x1fe3c ; symbol stub for: __Block_object_assign
    fbe4:	ldr	x0, [x0, #0x20]
    fbe8:	mov	w1, #0x8
    fbec:	b	0x1fe48 ; symbol stub for: __Block_object_dispose
    fbf0:	stp	x20, x19, [sp, #-0x20]!
    fbf4:	stp	x29, x30, [sp, #0x10]
    fbf8:	add	x29, sp, #0x10
    fbfc:	mov	x19, x1
    fc00:	mov	x20, x0
    fc04:	ldr	x0, [x1, #0x20]
    fc08:	bl	0x200f4 ; symbol stub for: _objc_retain
    fc0c:	ldr	x0, [x19, #0x28]
    fc10:	bl	0x200f4 ; symbol stub for: _objc_retain
    fc14:	ldr	x0, [x19, #0x30]
    fc18:	bl	0x200f4 ; symbol stub for: _objc_retain
    fc1c:	ldr	x1, [x19, #0x38]
    fc20:	add	x0, x20, #0x38
    fc24:	mov	w2, #0x8
    fc28:	bl	0x1fe3c ; symbol stub for: __Block_object_assign
    fc2c:	ldr	x1, [x19, #0x40]
    fc30:	add	x0, x20, #0x40
    fc34:	mov	w2, #0x8
    fc38:	ldp	x29, x30, [sp, #0x10]
    fc3c:	ldp	x20, x19, [sp], #0x20
    fc40:	b	0x1fe3c ; symbol stub for: __Block_object_assign
    fc44:	stp	x20, x19, [sp, #-0x20]!
    fc48:	stp	x29, x30, [sp, #0x10]
    fc4c:	add	x29, sp, #0x10
    fc50:	mov	x19, x0
    fc54:	ldr	x0, [x0, #0x40]
    fc58:	mov	w1, #0x8
    fc5c:	bl	0x1fe48 ; symbol stub for: __Block_object_dispose
    fc60:	ldr	x0, [x19, #0x38]
    fc64:	mov	w1, #0x8
    fc68:	bl	0x1fe48 ; symbol stub for: __Block_object_dispose
    fc6c:	ldr	x0, [x19, #0x30]
    fc70:	bl	0x200e8 ; symbol stub for: _objc_release
    fc74:	ldr	x0, [x19, #0x28]
    fc78:	bl	0x200e8 ; symbol stub for: _objc_release
    fc7c:	ldr	x0, [x19, #0x20]
    fc80:	ldp	x29, x30, [sp, #0x10]
    fc84:	ldp	x20, x19, [sp], #0x20
    fc88:	b	0x200e8 ; symbol stub for: _objc_release
    fc8c:	stp	x20, x19, [sp, #-0x20]!
    fc90:	stp	x29, x30, [sp, #0x10]
    fc94:	add	x29, sp, #0x10
    fc98:	mov	x19, x1
    fc9c:	mov	x20, x0
    fca0:	ldr	x0, [x1, #0x20]
    fca4:	bl	0x200f4 ; symbol stub for: _objc_retain
    fca8:	ldr	x0, [x19, #0x28]
    fcac:	bl	0x200f4 ; symbol stub for: _objc_retain
    fcb0:	ldr	x1, [x19, #0x30]
    fcb4:	add	x0, x20, #0x30
    fcb8:	mov	w2, #0x8
    fcbc:	bl	0x1fe3c ; symbol stub for: __Block_object_assign
    fcc0:	ldr	x1, [x19, #0x38]
    fcc4:	add	x0, x20, #0x38
    fcc8:	mov	w2, #0x8
    fccc:	ldp	x29, x30, [sp, #0x10]
    fcd0:	ldp	x20, x19, [sp], #0x20
    fcd4:	b	0x1fe3c ; symbol stub for: __Block_object_assign
    fcd8:	stp	x20, x19, [sp, #-0x20]!
    fcdc:	stp	x29, x30, [sp, #0x10]
    fce0:	add	x29, sp, #0x10
    fce4:	mov	x19, x0
    fce8:	ldr	x0, [x0, #0x38]
    fcec:	mov	w1, #0x8
    fcf0:	bl	0x1fe48 ; symbol stub for: __Block_object_dispose
    fcf4:	ldr	x0, [x19, #0x30]
    fcf8:	mov	w1, #0x8
    fcfc:	bl	0x1fe48 ; symbol stub for: __Block_object_dispose
    fd00:	ldr	x0, [x19, #0x28]
    fd04:	bl	0x200e8 ; symbol stub for: _objc_release
    fd08:	ldr	x0, [x19, #0x20]
    fd0c:	ldp	x29, x30, [sp, #0x10]
    fd10:	ldp	x20, x19, [sp], #0x20
    fd14:	b	0x200e8 ; symbol stub for: _objc_release
    fd18:	stp	d9, d8, [sp, #-0x70]!
    fd1c:	stp	x28, x27, [sp, #0x10]
    fd20:	stp	x26, x25, [sp, #0x20]
    fd24:	stp	x24, x23, [sp, #0x30]
    fd28:	stp	x22, x21, [sp, #0x40]
    fd2c:	stp	x20, x19, [sp, #0x50]
    fd30:	stp	x29, x30, [sp, #0x60]
    fd34:	add	x29, sp, #0x60
    fd38:	sub	sp, sp, #0x510
    fd3c:	adrp	x8, 35 ; 0x32000
    fd40:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
    fd44:	ldr	x8, [x8]
    fd48:	stur	x8, [x29, #-0x70]
    fd4c:	adrp	x8, 38 ; 0x35000
    fd50:	ldr	x0, [x8, #0xa60] ; Objc class ref: bad class ref
    fd54:	bl	0x21f00
    fd58:	mov	x29, x29
    fd5c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
    fd60:	adrp	x8, 32 ; 0x2f000
    fd64:	add	x8, x8, #0x9e8 ; "system.screenshot"
    fd68:	str	x8, [sp, #0x140]
    fd6c:	adrp	x27, 35 ; 0x32000
    fd70:	ldr	x27, [x27, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
    fd74:	str	x27, [sp, #0x118]
    fd78:	adrp	x8, 19 ; 0x22000
    fd7c:	ldr	d8, [x8, #0x8f8]
    fd80:	str	d8, [sp, #0x120]
    fd84:	adrp	x8, 1 ; 0x10000
    fd88:	add	x8, x8, #0x520
    fd8c:	adrp	x28, 29 ; 0x2c000
    fd90:	add	x28, x28, #0x5c0
    fd94:	stp	x8, x28, [sp, #0x128]
    fd98:	bl	0x200f4 ; symbol stub for: _objc_retain
    fd9c:	mov	x20, x0
    fda0:	str	x0, [sp, #0x138]
    fda4:	add	x0, sp, #0x118
    fda8:	bl	0x20124 ; symbol stub for: _objc_retainBlock
    fdac:	mov	x19, x0
    fdb0:	adrp	x8, 29 ; 0x2c000
    fdb4:	add	x8, x8, #0x610
    fdb8:	str	x0, [sp, #0x320]
    fdbc:	str	x8, [sp, #0x328]
    fdc0:	adrp	x8, 32 ; 0x2f000
    fdc4:	add	x8, x8, #0xa08 ; "system.respring"
    fdc8:	adrp	x9, 32 ; 0x2f000
    fdcc:	add	x9, x9, #0xa28 ; "system.nothing"
    fdd0:	stp	x8, x9, [sp, #0x148]
    fdd4:	adrp	x8, 29 ; 0x2c000
    fdd8:	add	x8, x8, #0x630
    fddc:	adrp	x9, 29 ; 0x2c000
    fde0:	add	x9, x9, #0x650
    fde4:	str	x8, [sp, #0x330]
    fde8:	str	x9, [sp, #0x338]
    fdec:	adrp	x8, 32 ; 0x2f000
    fdf0:	add	x8, x8, #0xa48 ; "speak.time"
    fdf4:	adrp	x9, 32 ; 0x2f000
    fdf8:	add	x9, x9, #0xa88 ; "speak.battery"
    fdfc:	stp	x8, x9, [sp, #0x158]
    fe00:	adrp	x8, 29 ; 0x2c000
    fe04:	add	x8, x8, #0x670
    fe08:	adrp	x9, 29 ; 0x2c000
    fe0c:	add	x9, x9, #0x690
    fe10:	str	x8, [sp, #0x340]
    fe14:	str	x9, [sp, #0x348]
    fe18:	adrp	x8, 32 ; 0x2f000
    fe1c:	add	x8, x8, #0xb08 ; "speak.clipboard"
    fe20:	adrp	x9, 32 ; 0x2f000
    fe24:	add	x9, x9, #0xb48 ; "clipboard.clear"
    fe28:	stp	x8, x9, [sp, #0x168]
    fe2c:	adrp	x8, 29 ; 0x2c000
    fe30:	add	x8, x8, #0x6d0
    fe34:	adrp	x9, 29 ; 0x2c000
    fe38:	add	x9, x9, #0x6f0
    fe3c:	str	x8, [sp, #0x350]
    fe40:	str	x9, [sp, #0x358]
    fe44:	adrp	x8, 32 ; 0x2f000
    fe48:	add	x8, x8, #0xb68 ; "flashlight.brighter"
    fe4c:	adrp	x9, 32 ; 0x2f000
    fe50:	add	x9, x9, #0xb88 ; "flashlight.dimmer"
    fe54:	stp	x8, x9, [sp, #0x178]
    fe58:	adrp	x8, 29 ; 0x2c000
    fe5c:	add	x8, x8, #0x710
    fe60:	adrp	x9, 29 ; 0x2c000
    fe64:	add	x9, x9, #0x730
    fe68:	str	x8, [sp, #0x360]
    fe6c:	str	x9, [sp, #0x368]
    fe70:	adrp	x8, 32 ; 0x2f000
    fe74:	add	x8, x8, #0xba8 ; "record.video"
    fe78:	adrp	x9, 32 ; 0x2f000
    fe7c:	add	x9, x9, #0xbe8 ; "record.memo"
    fe80:	stp	x8, x9, [sp, #0x188]
    fe84:	adrp	x8, 29 ; 0x2c000
    fe88:	add	x8, x8, #0x750
    fe8c:	adrp	x9, 29 ; 0x2c000
    fe90:	add	x9, x9, #0x770
    fe94:	str	x8, [sp, #0x370]
    fe98:	str	x9, [sp, #0x378]
    fe9c:	adrp	x8, 32 ; 0x2f000
    fea0:	add	x8, x8, #0xc28 ; "system.vibrate"
    fea4:	adrp	x9, 32 ; 0x2f000
    fea8:	add	x9, x9, #0xc48 ; "system.home"
    feac:	stp	x8, x9, [sp, #0x198]
    feb0:	str	x27, [sp, #0xf0]
    feb4:	str	d8, [sp, #0xf8]
    feb8:	adrp	x8, 1 ; 0x10000
    febc:	add	x8, x8, #0xe2c
    fec0:	stp	x8, x28, [sp, #0x100]
    fec4:	mov	x0, x20
    fec8:	bl	0x200f4 ; symbol stub for: _objc_retain
    fecc:	mov	x21, x0
    fed0:	str	x0, [sp, #0x110]
    fed4:	add	x0, sp, #0xf0
    fed8:	bl	0x20124 ; symbol stub for: _objc_retainBlock
    fedc:	mov	x20, x0
    fee0:	adrp	x8, 29 ; 0x2c000
    fee4:	add	x8, x8, #0x790
    fee8:	str	x0, [sp, #0x380]
    feec:	str	x8, [sp, #0x388]
    fef0:	adrp	x8, 32 ; 0x2f000
    fef4:	add	x8, x8, #0xc68 ; "system.lastapp"
    fef8:	adrp	x9, 32 ; 0x2f000
    fefc:	add	x9, x9, #0xc88 ; "system.quitapp"
    ff00:	stp	x8, x9, [sp, #0x1a8]
    ff04:	adrp	x8, 29 ; 0x2c000
    ff08:	add	x8, x8, #0x7b0
    ff0c:	adrp	x9, 29 ; 0x2c000
    ff10:	add	x9, x9, #0x7d0
    ff14:	str	x8, [sp, #0x390]
    ff18:	str	x9, [sp, #0x398]
    ff1c:	adrp	x8, 32 ; 0x2f000
    ff20:	add	x8, x8, #0xcc8 ; "system.siri"
    ff24:	adrp	x9, 32 ; 0x2f000
    ff28:	add	x9, x9, #0xce8 ; "system.sleep"
    ff2c:	stp	x8, x9, [sp, #0x1b8]
    ff30:	adrp	x8, 29 ; 0x2c000
    ff34:	add	x8, x8, #0x7f0
    ff38:	adrp	x9, 29 ; 0x2c000
    ff3c:	add	x9, x9, #0x810
    ff40:	str	x8, [sp, #0x3a0]
    ff44:	str	x9, [sp, #0x3a8]
    ff48:	adrp	x8, 32 ; 0x2f000
    ff4c:	add	x8, x8, #0xd08 ; "system.powerdown"
    ff50:	adrp	x9, 32 ; 0x2f000
    ff54:	add	x9, x9, #0xd28 ; "system.restart"
    ff58:	stp	x8, x9, [sp, #0x1c8]
    ff5c:	adrp	x8, 29 ; 0x2c000
    ff60:	add	x8, x8, #0x830
    ff64:	adrp	x9, 29 ; 0x2c000
    ff68:	add	x9, x9, #0x850
    ff6c:	str	x8, [sp, #0x3b0]
    ff70:	str	x9, [sp, #0x3b8]
    ff74:	adrp	x8, 32 ; 0x2f000
    ff78:	add	x8, x8, #0xd48 ; "system.safemode"
    ff7c:	adrp	x9, 32 ; 0x2f000
    ff80:	add	x9, x9, #0xda8 ; "system.poweroff"
    ff84:	stp	x8, x9, [sp, #0x1d8]
    ff88:	adrp	x8, 29 ; 0x2c000
    ff8c:	add	x8, x8, #0x870
    ff90:	adrp	x9, 29 ; 0x2c000
    ff94:	add	x9, x9, #0x890
    ff98:	str	x8, [sp, #0x3c0]
    ff9c:	str	x9, [sp, #0x3c8]
    ffa0:	adrp	x8, 32 ; 0x2f000
    ffa4:	add	x8, x8, #0xdc8 ; "system.switcher"
    ffa8:	adrp	x9, 32 ; 0x2f000
    ffac:	add	x9, x9, #0xde8 ; "system.reachability"
    ffb0:	stp	x8, x9, [sp, #0x1e8]
    ffb4:	adrp	x8, 29 ; 0x2c000
    ffb8:	add	x8, x8, #0x8b0
    ffbc:	adrp	x9, 29 ; 0x2c000
    ffc0:	add	x9, x9, #0x8d0
    ffc4:	str	x8, [sp, #0x3d0]
    ffc8:	str	x9, [sp, #0x3d8]
    ffcc:	adrp	x8, 32 ; 0x2f000
    ffd0:	add	x8, x8, #0xe08 ; "system.lock"
    ffd4:	adrp	x9, 32 ; 0x2f000
    ffd8:	add	x9, x9, #0xe28 ; "system.cc"
    ffdc:	stp	x8, x9, [sp, #0x1f8]
    ffe0:	adrp	x8, 29 ; 0x2c000
    ffe4:	add	x8, x8, #0x8f0
    ffe8:	adrp	x9, 29 ; 0x2c000
    ffec:	add	x9, x9, #0x910
    fff0:	str	x8, [sp, #0x3e0]
    fff4:	str	x9, [sp, #0x3e8]
    fff8:	adrp	x8, 32 ; 0x2f000
    fffc:	add	x8, x8, #0xe48 ; "system.nc"
   10000:	adrp	x9, 31 ; 0x2f000
   10004:	add	x9, x9, #0xe68 ; "system.spotlight"
   10008:	str	x8, [sp, #0x208]
   1000c:	str	x9, [sp, #0x210]
   10010:	str	x27, [sp, #0xc8]
   10014:	str	d8, [sp, #0xd0]
   10018:	adrp	x8, 1 ; 0x11000
   1001c:	add	x8, x8, #0x92c
   10020:	stp	x8, x28, [sp, #0xd8]
   10024:	mov	x0, x21
   10028:	bl	0x200f4 ; symbol stub for: _objc_retain
   1002c:	mov	x22, x0
   10030:	str	x0, [sp, #0xe8]
   10034:	add	x0, sp, #0xc8
   10038:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   1003c:	mov	x21, x0
   10040:	adrp	x8, 28 ; 0x2c000
   10044:	add	x8, x8, #0x930
   10048:	str	x0, [sp, #0x3f0]
   1004c:	str	x8, [sp, #0x3f8]
   10050:	adrp	x8, 31 ; 0x2f000
   10054:	add	x8, x8, #0xe88 ; "media.playpause"
   10058:	adrp	x9, 31 ; 0x2f000
   1005c:	add	x9, x9, #0xea8 ; "media.next"
   10060:	str	x8, [sp, #0x218]
   10064:	str	x9, [sp, #0x220]
   10068:	adrp	x8, 28 ; 0x2c000
   1006c:	add	x8, x8, #0x950
   10070:	adrp	x9, 28 ; 0x2c000
   10074:	add	x9, x9, #0x970
   10078:	str	x8, [sp, #0x400]
   1007c:	str	x9, [sp, #0x408]
   10080:	adrp	x8, 31 ; 0x2f000
   10084:	add	x8, x8, #0xec8 ; "media.previous"
   10088:	adrp	x9, 31 ; 0x2f000
   1008c:	add	x9, x9, #0xee8 ; "media.airplay"
   10090:	str	x8, [sp, #0x228]
   10094:	str	x9, [sp, #0x230]
   10098:	adrp	x8, 28 ; 0x2c000
   1009c:	add	x8, x8, #0x990
   100a0:	adrp	x9, 28 ; 0x2c000
   100a4:	add	x9, x9, #0x9b0
   100a8:	str	x8, [sp, #0x410]
   100ac:	str	x9, [sp, #0x418]
   100b0:	adrp	x8, 31 ; 0x2f000
   100b4:	add	x8, x8, #0xf08 ; "media.airplayiphone"
   100b8:	adrp	x9, 31 ; 0x2f000
   100bc:	add	x9, x9, #0xf28 ; "system.screenrecord"
   100c0:	str	x8, [sp, #0x238]
   100c4:	str	x9, [sp, #0x240]
   100c8:	adrp	x8, 28 ; 0x2c000
   100cc:	add	x8, x8, #0x9d0
   100d0:	adrp	x9, 28 ; 0x2c000
   100d4:	add	x9, x9, #0x9f0
   100d8:	str	x8, [sp, #0x420]
   100dc:	str	x9, [sp, #0x428]
   100e0:	adrp	x8, 31 ; 0x2f000
   100e4:	add	x8, x8, #0xf48 ; "system.closeapps"
   100e8:	adrp	x9, 31 ; 0x2f000
   100ec:	add	x9, x9, #0xf68 ; "media.volup"
   100f0:	str	x8, [sp, #0x248]
   100f4:	str	x9, [sp, #0x250]
   100f8:	str	x27, [sp, #0xa0]
   100fc:	str	d8, [sp, #0xa8]
   10100:	adrp	x8, 2 ; 0x12000
   10104:	add	x8, x8, #0x148
   10108:	stp	x8, x28, [sp, #0xb0]
   1010c:	mov	x0, x22
   10110:	bl	0x200f4 ; symbol stub for: _objc_retain
   10114:	mov	x23, x0
   10118:	str	x0, [sp, #0xc0]
   1011c:	add	x0, sp, #0xa0
   10120:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   10124:	mov	x22, x0
   10128:	str	x0, [sp, #0x430]
   1012c:	adrp	x8, 31 ; 0x2f000
   10130:	add	x8, x8, #0xf88 ; "media.voldown"
   10134:	str	x8, [sp, #0x258]
   10138:	str	x27, [sp, #0x78]
   1013c:	str	d8, [sp, #0x80]
   10140:	adrp	x8, 2 ; 0x12000
   10144:	add	x8, x8, #0x2f0
   10148:	stp	x8, x28, [sp, #0x88]
   1014c:	mov	x0, x23
   10150:	bl	0x200f4 ; symbol stub for: _objc_retain
   10154:	mov	x24, x0
   10158:	str	x0, [sp, #0x98]
   1015c:	add	x0, sp, #0x78
   10160:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   10164:	mov	x23, x0
   10168:	str	x0, [sp, #0x438]
   1016c:	adrp	x8, 31 ; 0x2f000
   10170:	add	x8, x8, #0xfa8 ; "media.pressvolup"
   10174:	str	x8, [sp, #0x260]
   10178:	str	x27, [sp, #0x50]
   1017c:	str	d8, [sp, #0x58]
   10180:	adrp	x8, 2 ; 0x12000
   10184:	add	x8, x8, #0x2f8
   10188:	stp	x8, x28, [sp, #0x60]
   1018c:	mov	x0, x24
   10190:	bl	0x200f4 ; symbol stub for: _objc_retain
   10194:	mov	x25, x0
   10198:	str	x0, [sp, #0x70]
   1019c:	add	x0, sp, #0x50
   101a0:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   101a4:	mov	x24, x0
   101a8:	str	x0, [sp, #0x440]
   101ac:	adrp	x8, 31 ; 0x2f000
   101b0:	add	x8, x8, #0xfc8 ; "media.pressvoldown"
   101b4:	str	x8, [sp, #0x268]
   101b8:	str	x27, [sp, #0x28]
   101bc:	str	d8, [sp, #0x30]
   101c0:	adrp	x8, 2 ; 0x12000
   101c4:	add	x8, x8, #0x44c
   101c8:	stp	x8, x28, [sp, #0x38]
   101cc:	mov	x0, x25
   101d0:	bl	0x200f4 ; symbol stub for: _objc_retain
   101d4:	mov	x26, x0
   101d8:	str	x0, [sp, #0x48]
   101dc:	add	x0, sp, #0x28
   101e0:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   101e4:	mov	x25, x0
   101e8:	adrp	x8, 31 ; 0x2f000
   101ec:	add	x8, x8, #0xfe8 ; Objc cfstring ref: @"media.nowplayingapp" ; "media.nowplayingapp"
   101f0:	adrp	x9, 28 ; 0x2c000
   101f4:	add	x9, x9, #0xa10
   101f8:	str	x0, [sp, #0x448]
   101fc:	str	x9, [sp, #0x450]
   10200:	adrp	x9, 32 ; 0x30000
   10204:	add	x9, x9, #0x8 ; "phone.answer"
   10208:	adrp	x10, 28 ; 0x2c000
   1020c:	add	x10, x10, #0xa30
   10210:	str	x8, [sp, #0x270]
   10214:	str	x9, [sp, #0x278]
   10218:	adrp	x8, 32 ; 0x30000
   1021c:	add	x8, x8, #0x28 ; "phone.end"
   10220:	adrp	x9, 28 ; 0x2c000
   10224:	add	x9, x9, #0xa50
   10228:	str	x10, [sp, #0x458]
   1022c:	str	x9, [sp, #0x460]
   10230:	adrp	x9, 32 ; 0x30000
   10234:	add	x9, x9, #0x48 ; "phone.favorites"
   10238:	adrp	x10, 28 ; 0x2c000
   1023c:	add	x10, x10, #0xa70
   10240:	str	x8, [sp, #0x280]
   10244:	str	x9, [sp, #0x288]
   10248:	adrp	x8, 32 ; 0x30000
   1024c:	add	x8, x8, #0xa8 ; "phone.recents"
   10250:	adrp	x9, 28 ; 0x2c000
   10254:	add	x9, x9, #0xa90
   10258:	str	x10, [sp, #0x468]
   1025c:	str	x9, [sp, #0x470]
   10260:	adrp	x9, 32 ; 0x30000
   10264:	add	x9, x9, #0xe8 ; "phone.contacts"
   10268:	adrp	x10, 28 ; 0x2c000
   1026c:	add	x10, x10, #0xab0
   10270:	str	x8, [sp, #0x290]
   10274:	str	x9, [sp, #0x298]
   10278:	adrp	x8, 32 ; 0x30000
   1027c:	add	x8, x8, #0x128 ; "phone.keypad"
   10280:	adrp	x9, 28 ; 0x2c000
   10284:	add	x9, x9, #0xad0
   10288:	str	x10, [sp, #0x478]
   1028c:	str	x9, [sp, #0x480]
   10290:	adrp	x9, 32 ; 0x30000
   10294:	add	x9, x9, #0x168 ; "phone.voicemail"
   10298:	adrp	x10, 28 ; 0x2c000
   1029c:	add	x10, x10, #0xaf0
   102a0:	str	x8, [sp, #0x2a0]
   102a4:	str	x9, [sp, #0x2a8]
   102a8:	adrp	x8, 32 ; 0x30000
   102ac:	add	x8, x8, #0x1a8 ; "compose.message"
   102b0:	adrp	x9, 28 ; 0x2c000
   102b4:	add	x9, x9, #0xb10
   102b8:	str	x10, [sp, #0x488]
   102bc:	str	x9, [sp, #0x490]
   102c0:	adrp	x9, 32 ; 0x30000
   102c4:	add	x9, x9, #0x1e8 ; "compose.mail"
   102c8:	adrp	x10, 28 ; 0x2c000
   102cc:	add	x10, x10, #0xb30
   102d0:	str	x8, [sp, #0x2b0]
   102d4:	str	x9, [sp, #0x2b8]
   102d8:	adrp	x8, 32 ; 0x30000
   102dc:	add	x8, x8, #0x228 ; "clock.alarm"
   102e0:	adrp	x9, 28 ; 0x2c000
   102e4:	add	x9, x9, #0xb50
   102e8:	str	x10, [sp, #0x498]
   102ec:	str	x9, [sp, #0x4a0]
   102f0:	adrp	x9, 32 ; 0x30000
   102f4:	add	x9, x9, #0x288 ; "clock.worldclock"
   102f8:	adrp	x10, 28 ; 0x2c000
   102fc:	add	x10, x10, #0xb70
   10300:	str	x8, [sp, #0x2c0]
   10304:	str	x9, [sp, #0x2c8]
   10308:	adrp	x8, 32 ; 0x30000
   1030c:	add	x8, x8, #0x2c8 ; "clock.stopwatch"
   10310:	adrp	x9, 28 ; 0x2c000
   10314:	add	x9, x9, #0xb90
   10318:	str	x10, [sp, #0x4a8]
   1031c:	str	x9, [sp, #0x4b0]
   10320:	adrp	x9, 32 ; 0x30000
   10324:	add	x9, x9, #0x308 ; "clock.timer"
   10328:	adrp	x10, 28 ; 0x2c000
   1032c:	add	x10, x10, #0xbb0
   10330:	str	x8, [sp, #0x2d0]
   10334:	str	x9, [sp, #0x2d8]
   10338:	adrp	x8, 32 ; 0x30000
   1033c:	add	x8, x8, #0x348 ; "clock.bedtime"
   10340:	adrp	x9, 28 ; 0x2c000
   10344:	add	x9, x9, #0xbd0
   10348:	str	x10, [sp, #0x4b8]
   1034c:	str	x9, [sp, #0x4c0]
   10350:	adrp	x9, 32 ; 0x30000
   10354:	add	x9, x9, #0x388 ; "haptic.peek"
   10358:	adrp	x10, 28 ; 0x2c000
   1035c:	add	x10, x10, #0xbf0
   10360:	str	x8, [sp, #0x2e0]
   10364:	str	x9, [sp, #0x2e8]
   10368:	adrp	x8, 32 ; 0x30000
   1036c:	add	x8, x8, #0x3a8 ; "haptic.pop"
   10370:	adrp	x9, 28 ; 0x2c000
   10374:	add	x9, x9, #0xc10
   10378:	str	x10, [sp, #0x4c8]
   1037c:	str	x9, [sp, #0x4d0]
   10380:	adrp	x9, 32 ; 0x30000
   10384:	add	x9, x9, #0x3c8 ; "haptic.nope"
   10388:	adrp	x10, 28 ; 0x2c000
   1038c:	add	x10, x10, #0xc30
   10390:	str	x8, [sp, #0x2f0]
   10394:	str	x9, [sp, #0x2f8]
   10398:	str	x10, [sp, #0x4d8]
   1039c:	adrp	x8, 32 ; 0x30000
   103a0:	add	x8, x8, #0x3e8 ; "system.firstpage"
   103a4:	str	x8, [sp, #0x300]
   103a8:	str	x27, [sp]
   103ac:	str	d8, [sp, #0x8]
   103b0:	adrp	x8, 2 ; 0x12000
   103b4:	add	x8, x8, #0x954
   103b8:	stp	x8, x28, [sp, #0x10]
   103bc:	str	x26, [sp, #0x20]
   103c0:	mov	x0, x26
   103c4:	bl	0x200f4 ; symbol stub for: _objc_retain
   103c8:	mov	x26, x0
   103cc:	mov	x0, sp
   103d0:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   103d4:	mov	x27, x0
   103d8:	adrp	x8, 32 ; 0x30000
   103dc:	add	x8, x8, #0x408 ; "system.back"
   103e0:	adrp	x9, 28 ; 0x2c000
   103e4:	add	x9, x9, #0xc50
   103e8:	str	x0, [sp, #0x4e0]
   103ec:	str	x9, [sp, #0x4e8]
   103f0:	adrp	x9, 32 ; 0x30000
   103f4:	add	x9, x9, #0x428 ; "system.unlock"
   103f8:	str	x8, [sp, #0x308]
   103fc:	str	x9, [sp, #0x310]
   10400:	adrp	x8, 28 ; 0x2c000
   10404:	add	x8, x8, #0xc70
   10408:	adrp	x9, 32 ; 0x30000
   1040c:	add	x9, x9, #0x448 ; "system.locktoggle"
   10410:	str	x9, [sp, #0x318]
   10414:	adrp	x9, 28 ; 0x2c000
   10418:	add	x9, x9, #0xc90
   1041c:	str	x8, [sp, #0x4f0]
   10420:	str	x9, [sp, #0x4f8]
   10424:	adrp	x8, 37 ; 0x35000
   10428:	ldr	x0, [x8, #0xaf8] ; Objc class ref: bad class ref
   1042c:	add	x2, sp, #0x320
   10430:	add	x3, sp, #0x140
   10434:	mov	w4, #0x3c
   10438:	bl	0x20ba0
   1043c:	mov	x29, x29
   10440:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   10444:	adrp	x9, 38 ; 0x36000
   10448:	ldr	x8, [x9, #0x4b8]
   1044c:	str	x0, [x9, #0x4b8]
   10450:	mov	x0, x8
   10454:	bl	0x200e8 ; symbol stub for: _objc_release
   10458:	mov	x0, x27
   1045c:	bl	0x200e8 ; symbol stub for: _objc_release
   10460:	mov	x0, x25
   10464:	bl	0x200e8 ; symbol stub for: _objc_release
   10468:	mov	x0, x24
   1046c:	bl	0x200e8 ; symbol stub for: _objc_release
   10470:	mov	x0, x23
   10474:	bl	0x200e8 ; symbol stub for: _objc_release
   10478:	mov	x0, x22
   1047c:	bl	0x200e8 ; symbol stub for: _objc_release
   10480:	mov	x0, x21
   10484:	bl	0x200e8 ; symbol stub for: _objc_release
   10488:	mov	x0, x20
   1048c:	bl	0x200e8 ; symbol stub for: _objc_release
   10490:	mov	x0, x19
   10494:	bl	0x200e8 ; symbol stub for: _objc_release
   10498:	ldr	x0, [sp, #0x20]
   1049c:	bl	0x200e8 ; symbol stub for: _objc_release
   104a0:	ldr	x0, [sp, #0x48]
   104a4:	bl	0x200e8 ; symbol stub for: _objc_release
   104a8:	ldr	x0, [sp, #0x70]
   104ac:	bl	0x200e8 ; symbol stub for: _objc_release
   104b0:	ldr	x0, [sp, #0x98]
   104b4:	bl	0x200e8 ; symbol stub for: _objc_release
   104b8:	ldr	x0, [sp, #0xc0]
   104bc:	bl	0x200e8 ; symbol stub for: _objc_release
   104c0:	ldr	x0, [sp, #0xe8]
   104c4:	bl	0x200e8 ; symbol stub for: _objc_release
   104c8:	ldr	x0, [sp, #0x110]
   104cc:	bl	0x200e8 ; symbol stub for: _objc_release
   104d0:	ldr	x0, [sp, #0x138]
   104d4:	bl	0x200e8 ; symbol stub for: _objc_release
   104d8:	mov	x0, x26
   104dc:	bl	0x200e8 ; symbol stub for: _objc_release
   104e0:	ldur	x8, [x29, #-0x70]
   104e4:	adrp	x9, 34 ; 0x32000
   104e8:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   104ec:	ldr	x9, [x9]
   104f0:	cmp	x9, x8
   104f4:	b.ne	0x1051c
   104f8:	add	sp, sp, #0x510
   104fc:	ldp	x29, x30, [sp, #0x60]
   10500:	ldp	x20, x19, [sp, #0x50]
   10504:	ldp	x22, x21, [sp, #0x40]
   10508:	ldp	x24, x23, [sp, #0x30]
   1050c:	ldp	x26, x25, [sp, #0x20]
   10510:	ldp	x28, x27, [sp, #0x10]
   10514:	ldp	d9, d8, [sp], #0x70
   10518:	ret
   1051c:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
   10520:	mov	x2, x1
   10524:	ldr	x0, [x0, #0x20]
   10528:	adrp	x8, 36 ; 0x34000
   1052c:	ldr	x1, [x8, #0xc20]
   10530:	b	0x10534

; ===== sub_10534 =====
   10534:	stp	x22, x21, [sp, #-0x30]!
   10538:	stp	x20, x19, [sp, #0x10]
   1053c:	stp	x29, x30, [sp, #0x20]
   10540:	add	x29, sp, #0x20
   10544:	mov	x22, x2
   10548:	mov	x19, x1
   1054c:	bl	0x200f4 ; symbol stub for: _objc_retain
   10550:	mov	x20, x0
   10554:	mov	x1, x19
   10558:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1055c:	mov	x21, x0
   10560:	tbnz	w22, #0x0, 0x10574
   10564:	tbz	w21, #0x0, 0x10574
   10568:	mov	x0, x20
   1056c:	mov	x1, x19
   10570:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   10574:	mov	x0, x20
   10578:	bl	0x200e8 ; symbol stub for: _objc_release
   1057c:	and	w0, w21, #0x1
   10580:	ldp	x29, x30, [sp, #0x20]
   10584:	ldp	x20, x19, [sp, #0x10]
   10588:	ldp	x22, x21, [sp], #0x30
   1058c:	ret
   10590:	stp	x22, x21, [sp, #-0x30]!
   10594:	stp	x20, x19, [sp, #0x10]
   10598:	stp	x29, x30, [sp, #0x20]
   1059c:	add	x29, sp, #0x20
   105a0:	mov	x21, x1
   105a4:	adrp	x0, 19 ; 0x23000
   105a8:	add	x0, x0, #0x6ce ; literal pool for: "FBSystemService"
   105ac:	bl	0x105fc
   105b0:	mov	x29, x29
   105b4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   105b8:	mov	x19, x0
   105bc:	adrp	x8, 36 ; 0x34000
   105c0:	ldr	x1, [x8, #0xc28]
   105c4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   105c8:	mov	x20, x0
   105cc:	tbnz	w21, #0x0, 0x105e0
   105d0:	tbz	w20, #0x0, 0x105e0
   105d4:	mov	x0, x19
   105d8:	mov	w1, #0x0
   105dc:	bl	0x10678
   105e0:	mov	x0, x19
   105e4:	bl	0x200e8 ; symbol stub for: _objc_release
   105e8:	and	w0, w20, #0x1
   105ec:	ldp	x29, x30, [sp, #0x20]
   105f0:	ldp	x20, x19, [sp, #0x10]
   105f4:	ldp	x22, x21, [sp], #0x30
   105f8:	ret

; ===== sub_105fc =====
   105fc:	stp	x20, x19, [sp, #-0x20]!
   10600:	stp	x29, x30, [sp, #0x10]
   10604:	add	x29, sp, #0x10
   10608:	bl	0x20088 ; symbol stub for: _objc_getClass
   1060c:	mov	x19, x0
   10610:	adrp	x8, 37 ; 0x35000
   10614:	ldr	x20, [x8, #0x788]
   10618:	mov	x1, x20
   1061c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   10620:	tbz	w0, #0x0, 0x1063c
   10624:	mov	x0, x19
   10628:	mov	x2, x20
   1062c:	bl	0x215e0
   10630:	mov	x29, x29
   10634:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   10638:	b	0x1066c
   1063c:	adrp	x8, 36 ; 0x34000
   10640:	ldr	x20, [x8, #0xd10]
   10644:	mov	x0, x19
   10648:	mov	x1, x20
   1064c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   10650:	tbz	w0, #0x0, 0x10664
   10654:	mov	x0, x19
   10658:	mov	x2, x20
   1065c:	bl	0x215e0
   10660:	b	0x10668
   10664:	mov	x0, #0x0

; ===== sub_10668 =====
   10668:	bl	0x200f4 ; symbol stub for: _objc_retain

; ===== sub_1066c =====
   1066c:	ldp	x29, x30, [sp, #0x10]
   10670:	ldp	x20, x19, [sp], #0x20
   10674:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue

; ===== sub_10678 =====
   10678:	sub	sp, sp, #0x60
   1067c:	stp	x22, x21, [sp, #0x30]
   10680:	stp	x20, x19, [sp, #0x40]
   10684:	stp	x29, x30, [sp, #0x50]
   10688:	add	x29, sp, #0x50
   1068c:	mov	x20, x1
   10690:	bl	0x200f4 ; symbol stub for: _objc_retain
   10694:	mov	x19, x0
   10698:	cmp	w20, #0x63
   1069c:	b.gt	0x1071c
   106a0:	adrp	x8, 38 ; 0x36000
   106a4:	ldrb	w8, [x8, #0x4c8]
   106a8:	tbz	w8, #0x0, 0x1071c
   106ac:	mov	x0, #0x0
   106b0:	mov	w1, #0xe100
   106b4:	movk	w1, #0x5f5, lsl #16
   106b8:	bl	0x1ff38 ; symbol stub for: _dispatch_time
   106bc:	mov	x21, x0
   106c0:	adrp	x8, 34 ; 0x32000
   106c4:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   106c8:	str	x8, [sp]
   106cc:	adrp	x8, 18 ; 0x22000
   106d0:	ldr	d0, [x8, #0x8f8]
   106d4:	str	d0, [sp, #0x8]
   106d8:	adrp	x8, 2 ; 0x12000
   106dc:	add	x8, x8, #0xdcc
   106e0:	adrp	x9, 28 ; 0x2c000
   106e4:	add	x9, x9, #0xcb0
   106e8:	stp	x8, x9, [sp, #0x10]
   106ec:	mov	x0, x19
   106f0:	bl	0x200f4 ; symbol stub for: _objc_retain
   106f4:	str	x0, [sp, #0x20]
   106f8:	str	w20, [sp, #0x28]
   106fc:	adrp	x1, 34 ; 0x32000
   10700:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
   10704:	mov	x2, sp
   10708:	mov	x0, x21
   1070c:	bl	0x1fefc ; symbol stub for: _dispatch_after
   10710:	ldr	x0, [sp, #0x20]
   10714:	bl	0x200e8 ; symbol stub for: _objc_release
   10718:	b	0x10730
   1071c:	adrp	x8, 36 ; 0x34000
   10720:	ldr	x1, [x8, #0xc28]
   10724:	mov	x0, x19
   10728:	mov	w2, #0x1
   1072c:	bl	0x200a0 ; symbol stub for: _objc_msgSend

; ===== sub_10730 =====
   10730:	mov	x0, x19
   10734:	bl	0x200e8 ; symbol stub for: _objc_release
   10738:	ldp	x29, x30, [sp, #0x50]
   1073c:	ldp	x20, x19, [sp, #0x40]
   10740:	ldp	x22, x21, [sp, #0x30]
   10744:	add	sp, sp, #0x60
   10748:	ret
   1074c:	mov	w0, #0x1
   10750:	ret
   10754:	tbnz	w1, #0x0, 0x107fc
   10758:	stp	x22, x21, [sp, #-0x30]!
   1075c:	stp	x20, x19, [sp, #0x10]
   10760:	stp	x29, x30, [sp, #0x20]
   10764:	add	x29, sp, #0x20
   10768:	adrp	x8, 37 ; 0x35000
   1076c:	ldr	x0, [x8, #0xae8] ; Objc class ref: bad class ref
   10770:	bl	0x200d0 ; symbol stub for: _objc_opt_new
   10774:	mov	x19, x0
   10778:	mov	w2, #0x1
   1077c:	bl	0x21d80
   10780:	adrp	x8, 37 ; 0x35000
   10784:	ldr	x0, [x8, #0xae0] ; Objc class ref: bad class ref
   10788:	bl	0x20a20
   1078c:	mov	x29, x29
   10790:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   10794:	mov	x20, x0
   10798:	mov	x0, x19
   1079c:	mov	x2, x20
   107a0:	bl	0x220c0
   107a4:	mov	x29, x29
   107a8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   107ac:	mov	x21, x0
   107b0:	adrp	x0, 31 ; 0x2f000
   107b4:	add	x0, x0, #0xa68 ; "It's"
   107b8:	mov	x2, x21
   107bc:	bl	0x220a0
   107c0:	mov	x29, x29
   107c4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   107c8:	mov	x22, x0
   107cc:	bl	0xe824
   107d0:	mov	x0, x22
   107d4:	bl	0x200e8 ; symbol stub for: _objc_release
   107d8:	mov	x0, x21
   107dc:	bl	0x200e8 ; symbol stub for: _objc_release
   107e0:	mov	x0, x20
   107e4:	bl	0x200e8 ; symbol stub for: _objc_release
   107e8:	mov	x0, x19
   107ec:	bl	0x200e8 ; symbol stub for: _objc_release
   107f0:	ldp	x29, x30, [sp, #0x20]
   107f4:	ldp	x20, x19, [sp, #0x10]
   107f8:	ldp	x22, x21, [sp], #0x30
   107fc:	mov	w0, #0x1
   10800:	ret
   10804:	tbnz	w1, #0x0, 0x108f0
   10808:	sub	sp, sp, #0x40
   1080c:	stp	x22, x21, [sp, #0x10]
   10810:	stp	x20, x19, [sp, #0x20]
   10814:	stp	x29, x30, [sp, #0x30]
   10818:	add	x29, sp, #0x30
   1081c:	adrp	x20, 37 ; 0x35000
   10820:	ldr	x0, [x20, #0xaf0] ; Objc class ref: bad class ref
   10824:	bl	0x209c0
   10828:	mov	x29, x29
   1082c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   10830:	mov	x19, x0
   10834:	mov	w2, #0x1
   10838:	bl	0x21940
   1083c:	mov	x0, x19
   10840:	bl	0x200e8 ; symbol stub for: _objc_release
   10844:	ldr	x0, [x20, #0xaf0]
   10848:	bl	0x209c0
   1084c:	mov	x29, x29
   10850:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   10854:	mov	x19, x0
   10858:	bl	0x205a0
   1085c:	mov	w8, #0x42c80000
   10860:	fmov	s1, w8
   10864:	fmul	s0, s0, s1
   10868:	fcvtas	x21, s0
   1086c:	mov	x0, x19
   10870:	bl	0x200e8 ; symbol stub for: _objc_release
   10874:	ldr	x0, [x20, #0xaf0]
   10878:	bl	0x209c0
   1087c:	mov	x29, x29
   10880:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   10884:	mov	x19, x0
   10888:	bl	0x205c0
   1088c:	mov	x20, x0
   10890:	mov	x0, x19
   10894:	bl	0x200e8 ; symbol stub for: _objc_release
   10898:	adrp	x8, 37 ; 0x35000
   1089c:	ldr	x0, [x8, #0xa38] ; Objc class ref: bad class ref
   108a0:	adrp	x8, 31 ; 0x2f000
   108a4:	add	x8, x8, #0xae8
   108a8:	adrp	x9, 31 ; 0x2f000
   108ac:	add	x9, x9, #0xac8 ; ", charging"
   108b0:	cmp	x20, #0x2
   108b4:	csel	x8, x9, x8, eq
   108b8:	stp	x21, x8, [sp]
   108bc:	adrp	x2, 31 ; 0x2f000
   108c0:	add	x2, x2, #0xaa8 ; "Battery %d percent%@"
   108c4:	bl	0x22100
   108c8:	mov	x29, x29
   108cc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   108d0:	mov	x19, x0
   108d4:	bl	0xe824
   108d8:	mov	x0, x19
   108dc:	bl	0x200e8 ; symbol stub for: _objc_release
   108e0:	ldp	x29, x30, [sp, #0x30]
   108e4:	ldp	x20, x19, [sp, #0x20]
   108e8:	ldp	x22, x21, [sp, #0x10]
   108ec:	add	sp, sp, #0x40
   108f0:	mov	w0, #0x1
   108f4:	ret
   108f8:	tbnz	w1, #0x0, 0x1093c
   108fc:	stp	x20, x19, [sp, #-0x20]!
   10900:	stp	x29, x30, [sp, #0x10]
   10904:	add	x29, sp, #0x10
   10908:	mov	w0, #0x19
   1090c:	mov	x1, #0x0
   10910:	bl	0x1ff14 ; symbol stub for: _dispatch_get_global_queue
   10914:	mov	x29, x29
   10918:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1091c:	mov	x19, x0
   10920:	adrp	x1, 28 ; 0x2c000
   10924:	add	x1, x1, #0x6b0
   10928:	bl	0x1ff08 ; symbol stub for: _dispatch_async
   1092c:	mov	x0, x19
   10930:	bl	0x200e8 ; symbol stub for: _objc_release
   10934:	ldp	x29, x30, [sp, #0x10]
   10938:	ldp	x20, x19, [sp], #0x20
   1093c:	mov	w0, #0x1
   10940:	ret
   10944:	sub	sp, sp, #0x50
   10948:	stp	x20, x19, [sp, #0x30]
   1094c:	stp	x29, x30, [sp, #0x40]
   10950:	add	x29, sp, #0x40
   10954:	adrp	x8, 37 ; 0x35000
   10958:	ldr	x0, [x8, #0xb00] ; Objc class ref: bad class ref
   1095c:	bl	0x20d00
   10960:	mov	x29, x29
   10964:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   10968:	mov	x19, x0
   1096c:	bl	0x22020
   10970:	mov	x29, x29
   10974:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   10978:	mov	x20, x0
   1097c:	mov	x0, x19
   10980:	bl	0x200e8 ; symbol stub for: _objc_release
   10984:	adrp	x8, 34 ; 0x32000
   10988:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1098c:	str	x8, [sp, #0x8]
   10990:	adrp	x8, 18 ; 0x22000
   10994:	ldr	d0, [x8, #0x8f8]
   10998:	adrp	x8, 0 ; 0x10000
   1099c:	add	x8, x8, #0x9f0
   109a0:	str	d0, [sp, #0x10]
   109a4:	adrp	x9, 28 ; 0x2c000
   109a8:	add	x9, x9, #0xb0
   109ac:	stp	x8, x9, [sp, #0x18]
   109b0:	str	x20, [sp, #0x28]
   109b4:	mov	x0, x20
   109b8:	bl	0x200f4 ; symbol stub for: _objc_retain
   109bc:	mov	x19, x0
   109c0:	adrp	x0, 34 ; 0x32000
   109c4:	ldr	x0, [x0, #0xde8] ; literal pool symbol address: __dispatch_main_q
   109c8:	add	x1, sp, #0x8
   109cc:	bl	0x1ff08 ; symbol stub for: _dispatch_async
   109d0:	ldr	x0, [sp, #0x28]
   109d4:	bl	0x200e8 ; symbol stub for: _objc_release
   109d8:	mov	x0, x19
   109dc:	bl	0x200e8 ; symbol stub for: _objc_release
   109e0:	ldp	x29, x30, [sp, #0x40]
   109e4:	ldp	x20, x19, [sp, #0x30]
   109e8:	add	sp, sp, #0x50
   109ec:	ret
   109f0:	stp	x20, x19, [sp, #-0x20]!
   109f4:	stp	x29, x30, [sp, #0x10]
   109f8:	add	x29, sp, #0x10
   109fc:	mov	x19, x0
   10a00:	ldr	x0, [x0, #0x20]
   10a04:	bl	0x21160
   10a08:	cbz	x0, 0x10a14
   10a0c:	ldr	x0, [x19, #0x20]
   10a10:	b	0x10a1c
   10a14:	adrp	x0, 31 ; 0x2f000
   10a18:	add	x0, x0, #0xb28 ; "The clipboard is empty"

; ===== sub_10a1c =====
   10a1c:	ldp	x29, x30, [sp, #0x10]
   10a20:	ldp	x20, x19, [sp], #0x20
   10a24:	b	0xe824
   10a28:	tbnz	w1, #0x0, 0x10a6c
   10a2c:	stp	x20, x19, [sp, #-0x20]!
   10a30:	stp	x29, x30, [sp, #0x10]
   10a34:	add	x29, sp, #0x10
   10a38:	adrp	x8, 37 ; 0x35000
   10a3c:	ldr	x0, [x8, #0xb00] ; Objc class ref: bad class ref
   10a40:	bl	0x20d00
   10a44:	mov	x29, x29
   10a48:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   10a4c:	mov	x19, x0
   10a50:	adrp	x2, 34 ; 0x32000
   10a54:	ldr	x2, [x2, #0xd28] ; literal pool symbol address: ___NSArray0__struct
   10a58:	bl	0x21ae0
   10a5c:	mov	x0, x19
   10a60:	bl	0x200e8 ; symbol stub for: _objc_release
   10a64:	ldp	x29, x30, [sp, #0x10]
   10a68:	ldp	x20, x19, [sp], #0x20
   10a6c:	mov	w0, #0x1
   10a70:	ret
   10a74:	mov	w0, #0x1
   10a78:	b	0x10a7c

; ===== sub_10a7c =====
   10a7c:	sub	sp, sp, #0x60
   10a80:	stp	d9, d8, [sp, #0x10]
   10a84:	stp	x24, x23, [sp, #0x20]
   10a88:	stp	x22, x21, [sp, #0x30]
   10a8c:	stp	x20, x19, [sp, #0x40]
   10a90:	stp	x29, x30, [sp, #0x50]
   10a94:	add	x29, sp, #0x50
   10a98:	mov	x23, x1
   10a9c:	mov	x22, x0
   10aa0:	adrp	x0, 19 ; 0x23000
   10aa4:	add	x0, x0, #0xca6 ; literal pool for: "SBUIFlashlightController"
   10aa8:	bl	0x105fc
   10aac:	mov	x29, x29
   10ab0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   10ab4:	mov	x19, x0
   10ab8:	adrp	x8, 36 ; 0x34000
   10abc:	ldr	x1, [x8, #0xd18]
   10ac0:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   10ac4:	tbz	w0, #0x0, 0x10bbc
   10ac8:	adrp	x8, 36 ; 0x34000
   10acc:	ldr	x1, [x8, #0xd20]
   10ad0:	mov	x0, x19
   10ad4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   10ad8:	tbz	w0, #0x0, 0x10bbc
   10adc:	tbnz	w23, #0x0, 0x10ce0
   10ae0:	adrp	x2, 32 ; 0x30000
   10ae4:	add	x2, x2, #0x468 ; "level"
   10ae8:	mov	x0, x19
   10aec:	bl	0x223e0
   10af0:	mov	x29, x29
   10af4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   10af8:	mov	x20, x0
   10afc:	bl	0x21240
   10b00:	mov	x21, x0
   10b04:	mov	x0, x20
   10b08:	bl	0x200e8 ; symbol stub for: _objc_release
   10b0c:	add	x22, x21, w22, sxtw
   10b10:	bic	x8, x22, x22, asr #63
   10b14:	cmp	x8, #0x4
   10b18:	mov	w9, #0x4
   10b1c:	csel	x20, x8, x9, lt
   10b20:	cmp	x20, x21
   10b24:	b.eq	0x10ce0
   10b28:	cbnz	x21, 0x10b50
   10b2c:	adrp	x8, 36 ; 0x34000
   10b30:	ldr	x21, [x8, #0xd28]
   10b34:	mov	x0, x19
   10b38:	mov	x1, x21
   10b3c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   10b40:	tbz	w0, #0x0, 0x10b50
   10b44:	mov	x0, x19
   10b48:	mov	x1, x21
   10b4c:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   10b50:	adrp	x8, 37 ; 0x35000
   10b54:	ldr	x0, [x8, #0xa70] ; Objc class ref: bad class ref
   10b58:	mov	x2, x20
   10b5c:	bl	0x21440
   10b60:	mov	x29, x29
   10b64:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   10b68:	mov	x21, x0
   10b6c:	adrp	x3, 32 ; 0x30000
   10b70:	add	x3, x3, #0x468 ; "level"
   10b74:	mov	x0, x19
   10b78:	mov	x2, x21
   10b7c:	bl	0x21e80
   10b80:	mov	x0, x21
   10b84:	bl	0x200e8 ; symbol stub for: _objc_release
   10b88:	cmp	x22, #0x0
   10b8c:	b.le	0x10cbc
   10b90:	adrp	x8, 36 ; 0x34000
   10b94:	ldr	x21, [x8, #0xd38]
   10b98:	mov	x0, x19
   10b9c:	mov	x1, x21
   10ba0:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   10ba4:	tbz	w0, #0x0, 0x10ce0
   10ba8:	mov	x0, x19
   10bac:	mov	x1, x21
   10bb0:	mov	x2, x20
   10bb4:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   10bb8:	b	0x10ce0
   10bbc:	adrp	x8, 37 ; 0x35000
   10bc0:	ldr	x0, [x8, #0xb10] ; Objc class ref: bad class ref
   10bc4:	adrp	x8, 34 ; 0x32000
   10bc8:	ldr	x8, [x8, #0xd78] ; literal pool symbol address: _AVMediaTypeVideo
   10bcc:	ldr	x2, [x8]
   10bd0:	bl	0x20ae0
   10bd4:	mov	x29, x29
   10bd8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   10bdc:	mov	x21, x0
   10be0:	bl	0x20dc0
   10be4:	mov	x20, x0
   10be8:	tbnz	w23, #0x0, 0x10cb0
   10bec:	cbz	w20, 0x10cb0
   10bf0:	mov	x0, x21
   10bf4:	bl	0x222a0
   10bf8:	fmov	s8, wzr
   10bfc:	fmov	s0, wzr
   10c00:	cmp	x0, #0x1
   10c04:	b.ne	0x10c10
   10c08:	mov	x0, x21
   10c0c:	bl	0x22280
   10c10:	scvtf	s1, w22
   10c14:	fmov	s2, #4.00000000
   10c18:	fmadd	s0, s0, s2, s1
   10c1c:	frinta	s0, s0
   10c20:	fmov	s1, #0.25000000
   10c24:	fmul	s0, s0, s1
   10c28:	fmaxnm	s0, s0, s8
   10c2c:	fmov	s1, #1.00000000
   10c30:	fcmp	s0, s1
   10c34:	fcsel	s8, s1, s0, gt
   10c38:	str	xzr, [sp, #0x8]
   10c3c:	add	x2, sp, #0x8
   10c40:	mov	x0, x21
   10c44:	bl	0x21220
   10c48:	mov	x23, x0
   10c4c:	ldr	x0, [sp, #0x8]
   10c50:	bl	0x200f4 ; symbol stub for: _objc_retain
   10c54:	mov	x22, x0
   10c58:	cbz	w23, 0x10ca8
   10c5c:	fcmp	s8, #0.0
   10c60:	b.ls	0x10c94
   10c64:	str	x22, [sp]
   10c68:	mov	x2, sp
   10c6c:	mov	x0, x21
   10c70:	mov.16b	v0, v8
   10c74:	bl	0x21e00
   10c78:	ldr	x0, [sp]
   10c7c:	bl	0x200f4 ; symbol stub for: _objc_retain
   10c80:	mov	x23, x0
   10c84:	mov	x0, x22
   10c88:	bl	0x200e8 ; symbol stub for: _objc_release
   10c8c:	mov	x22, x23
   10c90:	b	0x10ca0
   10c94:	mov	x0, x21
   10c98:	mov	x2, #0x0
   10c9c:	bl	0x21de0

; ===== sub_10ca0 =====
   10ca0:	mov	x0, x21
   10ca4:	bl	0x22360
   10ca8:	mov	x0, x22
   10cac:	bl	0x200e8 ; symbol stub for: _objc_release
   10cb0:	mov	x0, x21
   10cb4:	bl	0x200e8 ; symbol stub for: _objc_release
   10cb8:	b	0x10ce4
   10cbc:	adrp	x8, 36 ; 0x34000
   10cc0:	ldr	x20, [x8, #0xd30]
   10cc4:	mov	x0, x19
   10cc8:	mov	x1, x20
   10ccc:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   10cd0:	tbz	w0, #0x0, 0x10ce0
   10cd4:	mov	x0, x19
   10cd8:	mov	x1, x20
   10cdc:	bl	0x200a0 ; symbol stub for: _objc_msgSend

; ===== sub_10ce0 =====
   10ce0:	mov	w20, #0x1

; ===== sub_10ce4 =====
   10ce4:	mov	x0, x19
   10ce8:	bl	0x200e8 ; symbol stub for: _objc_release
   10cec:	mov	x0, x20
   10cf0:	ldp	x29, x30, [sp, #0x50]
   10cf4:	ldp	x20, x19, [sp, #0x40]
   10cf8:	ldp	x22, x21, [sp, #0x30]
   10cfc:	ldp	x24, x23, [sp, #0x20]
   10d00:	ldp	d9, d8, [sp, #0x10]
   10d04:	add	sp, sp, #0x60
   10d08:	ret
   10d0c:	mov	w0, #-0x1
   10d10:	b	0x10a7c
   10d14:	mov	x2, x1
   10d18:	adrp	x1, 31 ; 0x2f000
   10d1c:	add	x1, x1, #0xbc8 ; "com.apple.camera"
   10d20:	mov	w0, #0x1
   10d24:	b	0x10d28

; ===== sub_10d28 =====
   10d28:	stp	x24, x23, [sp, #-0x40]!
   10d2c:	stp	x22, x21, [sp, #0x10]
   10d30:	stp	x20, x19, [sp, #0x20]
   10d34:	stp	x29, x30, [sp, #0x30]
   10d38:	add	x29, sp, #0x30
   10d3c:	mov	x22, x2
   10d40:	mov	x21, x0
   10d44:	mov	x0, x1
   10d48:	bl	0x200f4 ; symbol stub for: _objc_retain
   10d4c:	mov	x19, x0
   10d50:	mov	w1, #0x1
   10d54:	bl	0xbb6c
   10d58:	mov	x20, x0
   10d5c:	tbnz	w22, #0x0, 0x10dc8
   10d60:	cbz	w20, 0x10dc8
   10d64:	adrp	x23, 38 ; 0x36000
   10d68:	ldr	w22, [x23, #0x7c]
   10d6c:	cmn	w22, #0x1
   10d70:	b.eq	0x10d90
   10d74:	mov	x0, #0x0
   10d78:	bl	0x20214 ; symbol stub for: _time
   10d7c:	mov	w8, w0
   10d80:	orr	x1, x8, x21, lsl #32
   10d84:	mov	x0, x22
   10d88:	bl	0x2001c ; symbol stub for: _notify_set_state
   10d8c:	b	0x10db0
   10d90:	adrp	x0, 19 ; 0x23000
   10d94:	add	x0, x0, #0xcc5 ; literal pool for: "com.johndie.triggr/app-request"
   10d98:	adrp	x1, 38 ; 0x36000
   10d9c:	add	x1, x1, #0x7c
   10da0:	bl	0x20004 ; symbol stub for: _notify_register_check
   10da4:	cbz	w0, 0x10de8
   10da8:	mov	w8, #-0x1
   10dac:	str	w8, [x23, #0x7c]

; ===== sub_10db0 =====
   10db0:	adrp	x0, 19 ; 0x23000
   10db4:	add	x0, x0, #0xcc5 ; literal pool for: "com.johndie.triggr/app-request"
   10db8:	bl	0x1fff8 ; symbol stub for: _notify_post
   10dbc:	mov	x0, x19
   10dc0:	mov	w1, #0x0
   10dc4:	bl	0xbb6c
   10dc8:	mov	x0, x19
   10dcc:	bl	0x200e8 ; symbol stub for: _objc_release
   10dd0:	mov	x0, x20
   10dd4:	ldp	x29, x30, [sp, #0x30]
   10dd8:	ldp	x20, x19, [sp, #0x20]
   10ddc:	ldp	x22, x21, [sp, #0x10]
   10de0:	ldp	x24, x23, [sp], #0x40
   10de4:	ret
   10de8:	ldr	w22, [x23, #0x7c]
   10dec:	cmn	w22, #0x1
   10df0:	b.ne	0x10d74
   10df4:	b	0x10db0
   10df8:	mov	x2, x1
   10dfc:	adrp	x1, 31 ; 0x2f000
   10e00:	add	x1, x1, #0xc08 ; "com.apple.VoiceMemos"
   10e04:	mov	w0, #0x2
   10e08:	b	0x10d28
   10e0c:	tbnz	w1, #0x0, 0x10e24
   10e10:	stp	x29, x30, [sp, #-0x10]!
   10e14:	mov	x29, sp
   10e18:	mov	w0, #0xfff
   10e1c:	bl	0x1fd1c ; symbol stub for: _AudioServicesPlaySystemSound
   10e20:	ldp	x29, x30, [sp], #0x10
   10e24:	mov	w0, #0x1
   10e28:	ret
   10e2c:	stp	x22, x21, [sp, #-0x30]!
   10e30:	stp	x20, x19, [sp, #0x10]
   10e34:	stp	x29, x30, [sp, #0x20]
   10e38:	add	x29, sp, #0x20
   10e3c:	mov	x22, x1
   10e40:	mov	x21, x0
   10e44:	adrp	x8, 36 ; 0x34000
   10e48:	ldr	x19, [x8, #0xc30]
   10e4c:	ldr	x0, [x0, #0x20]
   10e50:	mov	x1, x19
   10e54:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   10e58:	mov	x20, x0
   10e5c:	tbnz	w22, #0x0, 0x10e74
   10e60:	tbz	w20, #0x0, 0x10e74
   10e64:	ldr	x0, [x21, #0x20]
   10e68:	mov	x1, x19
   10e6c:	mov	x2, #0x0
   10e70:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   10e74:	and	w0, w20, #0x1
   10e78:	ldp	x29, x30, [sp, #0x20]
   10e7c:	ldp	x20, x19, [sp, #0x10]
   10e80:	ldp	x22, x21, [sp], #0x30
   10e84:	ret
   10e88:	stp	x22, x21, [sp, #-0x30]!
   10e8c:	stp	x20, x19, [sp, #0x10]
   10e90:	stp	x29, x30, [sp, #0x20]
   10e94:	add	x29, sp, #0x20
   10e98:	mov	x20, x1
   10e9c:	mov	x0, #0x0
   10ea0:	mov	w1, #0x1
   10ea4:	bl	0xbb6c
   10ea8:	mov	x19, x0
   10eac:	tbnz	w20, #0x0, 0x10f08
   10eb0:	cbz	w19, 0x10f08
   10eb4:	bl	0xc264
   10eb8:	mov	x29, x29
   10ebc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   10ec0:	mov	x21, x0
   10ec4:	adrp	x8, 38 ; 0x36000
   10ec8:	add	x8, x8, #0x338
   10ecc:	adrp	x9, 38 ; 0x36000
   10ed0:	add	x9, x9, #0x330
   10ed4:	cmp	x0, #0x0
   10ed8:	csel	x8, x9, x8, eq
   10edc:	ldr	x0, [x8]
   10ee0:	bl	0x200f4 ; symbol stub for: _objc_retain
   10ee4:	mov	x20, x0
   10ee8:	mov	x0, x21
   10eec:	bl	0x200e8 ; symbol stub for: _objc_release
   10ef0:	cbz	x20, 0x10f00
   10ef4:	mov	x0, x20
   10ef8:	mov	w1, #0x0
   10efc:	bl	0xbb6c
   10f00:	mov	x0, x20
   10f04:	bl	0x200e8 ; symbol stub for: _objc_release
   10f08:	mov	x0, x19
   10f0c:	ldp	x29, x30, [sp, #0x20]
   10f10:	ldp	x20, x19, [sp, #0x10]
   10f14:	ldp	x22, x21, [sp], #0x30
   10f18:	ret
   10f1c:	stp	x22, x21, [sp, #-0x30]!
   10f20:	stp	x20, x19, [sp, #0x10]
   10f24:	stp	x29, x30, [sp, #0x20]
   10f28:	add	x29, sp, #0x20
   10f2c:	mov	x22, x1
   10f30:	adrp	x0, 19 ; 0x23000
   10f34:	add	x0, x0, #0x6ce ; literal pool for: "FBSystemService"
   10f38:	bl	0x105fc
   10f3c:	mov	x29, x29
   10f40:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   10f44:	mov	x19, x0
   10f48:	adrp	x8, 36 ; 0x34000
   10f4c:	ldr	x21, [x8, #0xc38]
   10f50:	mov	x1, x21
   10f54:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   10f58:	mov	x20, x0
   10f5c:	tbnz	w22, #0x0, 0x10fa4
   10f60:	tbz	w20, #0x0, 0x10fa4
   10f64:	bl	0xc264
   10f68:	mov	x29, x29
   10f6c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   10f70:	mov	x22, x0
   10f74:	cbz	x0, 0x10f9c
   10f78:	adrp	x5, 31 ; 0x2f000
   10f7c:	add	x5, x5, #0xca8 ; "Triggr: Quit Current App"
   10f80:	mov	x0, x19
   10f84:	mov	x1, x21
   10f88:	mov	x2, x22
   10f8c:	mov	w3, #0x1
   10f90:	mov	w4, #0x0
   10f94:	mov	x6, #0x0
   10f98:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   10f9c:	mov	x0, x22
   10fa0:	bl	0x200e8 ; symbol stub for: _objc_release
   10fa4:	mov	x0, x19
   10fa8:	bl	0x200e8 ; symbol stub for: _objc_release
   10fac:	and	w0, w20, #0x1
   10fb0:	ldp	x29, x30, [sp, #0x20]
   10fb4:	ldp	x20, x19, [sp, #0x10]
   10fb8:	ldp	x22, x21, [sp], #0x30
   10fbc:	ret
   10fc0:	sub	sp, sp, #0x60
   10fc4:	stp	x22, x21, [sp, #0x30]
   10fc8:	stp	x20, x19, [sp, #0x40]
   10fcc:	stp	x29, x30, [sp, #0x50]
   10fd0:	add	x29, sp, #0x50
   10fd4:	mov	x21, x1
   10fd8:	adrp	x0, 19 ; 0x23000
   10fdc:	add	x0, x0, #0x826 ; literal pool for: "SiriSimpleActivationSource"
   10fe0:	bl	0x20088 ; symbol stub for: _objc_getClass
   10fe4:	adrp	x8, 36 ; 0x34000
   10fe8:	ldr	x20, [x8, #0xc40]
   10fec:	mov	x2, x20
   10ff0:	bl	0x20f40
   10ff4:	mov	x19, x0
   10ff8:	tbnz	w21, #0x0, 0x110c4
   10ffc:	cbz	w19, 0x110c4
   11000:	adrp	x0, 18 ; 0x23000
   11004:	add	x0, x0, #0x826 ; literal pool for: "SiriSimpleActivationSource"
   11008:	bl	0x20088 ; symbol stub for: _objc_getClass
   1100c:	mov	x21, x0
   11010:	bl	0x12de0
   11014:	cbz	w0, 0x110c4
   11018:	mov	x0, x21
   1101c:	mov	x2, x20
   11020:	bl	0x20f40
   11024:	cbz	w0, 0x110c4
   11028:	mov	x0, x21
   1102c:	bl	0x200d0 ; symbol stub for: _objc_opt_new
   11030:	mov	x20, x0
   11034:	adrp	x8, 37 ; 0x36000
   11038:	ldr	x0, [x8, #0x4d0]
   1103c:	str	x20, [x8, #0x4d0]
   11040:	bl	0x200e8 ; symbol stub for: _objc_release
   11044:	mov	x0, x20
   11048:	bl	0x200f4 ; symbol stub for: _objc_retain
   1104c:	mov	x20, x0
   11050:	mov	x0, #0x0
   11054:	mov	w1, #0x6500
   11058:	movk	w1, #0x1dcd, lsl #16
   1105c:	bl	0x1ff38 ; symbol stub for: _dispatch_time
   11060:	mov	x21, x0
   11064:	adrp	x8, 33 ; 0x32000
   11068:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1106c:	str	x8, [sp, #0x8]
   11070:	adrp	x8, 17 ; 0x22000
   11074:	ldr	d0, [x8, #0x8f8]
   11078:	adrp	x8, 1 ; 0x12000
   1107c:	add	x8, x8, #0xe48
   11080:	str	d0, [sp, #0x10]
   11084:	adrp	x9, 27 ; 0x2c000
   11088:	add	x9, x9, #0xb0
   1108c:	stp	x8, x9, [sp, #0x18]
   11090:	str	x20, [sp, #0x28]
   11094:	mov	x0, x20
   11098:	bl	0x200f4 ; symbol stub for: _objc_retain
   1109c:	mov	x20, x0
   110a0:	adrp	x1, 33 ; 0x32000
   110a4:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
   110a8:	add	x2, sp, #0x8
   110ac:	mov	x0, x21
   110b0:	bl	0x1fefc ; symbol stub for: _dispatch_after
   110b4:	ldr	x0, [sp, #0x28]
   110b8:	bl	0x200e8 ; symbol stub for: _objc_release
   110bc:	mov	x0, x20
   110c0:	bl	0x200e8 ; symbol stub for: _objc_release
   110c4:	mov	x0, x19
   110c8:	ldp	x29, x30, [sp, #0x50]
   110cc:	ldp	x20, x19, [sp, #0x40]
   110d0:	ldp	x22, x21, [sp, #0x30]
   110d4:	add	sp, sp, #0x60
   110d8:	ret
   110dc:	mov	x0, x1
   110e0:	b	0x110e4

; ===== sub_110e4 =====
   110e4:	stp	x22, x21, [sp, #-0x30]!
   110e8:	stp	x20, x19, [sp, #0x10]
   110ec:	stp	x29, x30, [sp, #0x20]
   110f0:	add	x29, sp, #0x20
   110f4:	mov	x20, x0
   110f8:	adrp	x8, 36 ; 0x35000
   110fc:	ldr	x0, [x8, #0xa60] ; Objc class ref: bad class ref
   11100:	bl	0x21f00
   11104:	mov	x29, x29
   11108:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1110c:	mov	x19, x0
   11110:	cbz	w20, 0x1112c
   11114:	adrp	x8, 35 ; 0x34000
   11118:	ldr	x1, [x8, #0xd48]
   1111c:	mov	x0, x19
   11120:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11124:	mov	x21, x0
   11128:	b	0x111d4
   1112c:	bl	0x12e5c
   11130:	mov	x29, x29
   11134:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   11138:	mov	x20, x0
   1113c:	adrp	x8, 35 ; 0x34000
   11140:	ldr	x21, [x8, #0xd50]
   11144:	mov	x1, x21
   11148:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1114c:	tbz	w0, #0x0, 0x11188
   11150:	adrp	x8, 35 ; 0x34000
   11154:	ldr	x22, [x8, #0xd58]
   11158:	mov	x0, x20
   1115c:	mov	x1, x22
   11160:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11164:	tbz	w0, #0x0, 0x11188
   11168:	mov	x0, x20
   1116c:	mov	x1, x21
   11170:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   11174:	cbz	w0, 0x11188
   11178:	mov	x0, x20
   1117c:	mov	x1, x22
   11180:	mov	w2, #0x0
   11184:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   11188:	adrp	x8, 35 ; 0x34000
   1118c:	ldr	x21, [x8, #0xd60]
   11190:	mov	x0, x20
   11194:	mov	x1, x21
   11198:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1119c:	tbz	w0, #0x0, 0x111b4
   111a0:	mov	x0, x20
   111a4:	mov	x1, x21
   111a8:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   111ac:	mov	w21, #0x1
   111b0:	b	0x111cc
   111b4:	adrp	x8, 35 ; 0x34000
   111b8:	ldr	x1, [x8, #0xd48]
   111bc:	mov	x0, x19
   111c0:	mov	w2, #0x0
   111c4:	bl	0x10534
   111c8:	mov	x21, x0

; ===== sub_111cc =====
   111cc:	mov	x0, x20
   111d0:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_111d4 =====
   111d4:	mov	x0, x19
   111d8:	bl	0x200e8 ; symbol stub for: _objc_release
   111dc:	and	w0, w21, #0x1
   111e0:	ldp	x29, x30, [sp, #0x20]
   111e4:	ldp	x20, x19, [sp, #0x10]
   111e8:	ldp	x22, x21, [sp], #0x30
   111ec:	ret
   111f0:	stp	x20, x19, [sp, #-0x20]!
   111f4:	stp	x29, x30, [sp, #0x10]
   111f8:	add	x29, sp, #0x10
   111fc:	mov	x19, x1
   11200:	adrp	x0, 18 ; 0x23000
   11204:	add	x0, x0, #0x85f ; literal pool for: "SBMainWorkspace"
   11208:	bl	0x105fc
   1120c:	mov	x29, x29
   11210:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   11214:	mov	x20, x0
   11218:	adrp	x8, 35 ; 0x34000
   1121c:	ldr	x1, [x8, #0xc48]
   11220:	mov	x2, x19
   11224:	bl	0x10534
   11228:	mov	x19, x0
   1122c:	mov	x0, x20
   11230:	bl	0x200e8 ; symbol stub for: _objc_release
   11234:	mov	x0, x19
   11238:	ldp	x29, x30, [sp, #0x10]
   1123c:	ldp	x20, x19, [sp], #0x20
   11240:	ret
   11244:	mov	w0, #0x1
   11248:	b	0x1124c

; ===== sub_1124c =====
   1124c:	stp	x24, x23, [sp, #-0x40]!
   11250:	stp	x22, x21, [sp, #0x10]
   11254:	stp	x20, x19, [sp, #0x20]
   11258:	stp	x29, x30, [sp, #0x30]
   1125c:	add	x29, sp, #0x30
   11260:	mov	x23, x1
   11264:	mov	x19, x0
   11268:	adrp	x0, 18 ; 0x23000
   1126c:	add	x0, x0, #0x6ce ; literal pool for: "FBSystemService"
   11270:	bl	0x105fc
   11274:	mov	x29, x29
   11278:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1127c:	mov	x20, x0
   11280:	adrp	x8, 35 ; 0x34000
   11284:	ldr	x22, [x8, #0xd80]
   11288:	mov	x1, x22
   1128c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11290:	mov	x21, x0
   11294:	tbnz	w23, #0x0, 0x112ac
   11298:	tbz	w21, #0x0, 0x112ac
   1129c:	mov	x0, x20
   112a0:	mov	x1, x22
   112a4:	mov	x2, x19
   112a8:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   112ac:	mov	x0, x20
   112b0:	bl	0x200e8 ; symbol stub for: _objc_release
   112b4:	and	w0, w21, #0x1
   112b8:	ldp	x29, x30, [sp, #0x30]
   112bc:	ldp	x20, x19, [sp, #0x20]
   112c0:	ldp	x22, x21, [sp, #0x10]
   112c4:	ldp	x24, x23, [sp], #0x40
   112c8:	ret
   112cc:	sub	sp, sp, #0x140
   112d0:	stp	x28, x27, [sp, #0xe0]
   112d4:	stp	x26, x25, [sp, #0xf0]
   112d8:	stp	x24, x23, [sp, #0x100]
   112dc:	stp	x22, x21, [sp, #0x110]
   112e0:	stp	x20, x19, [sp, #0x120]
   112e4:	stp	x29, x30, [sp, #0x130]
   112e8:	add	x29, sp, #0x130
   112ec:	mov	x19, x1
   112f0:	adrp	x8, 33 ; 0x32000
   112f4:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   112f8:	ldr	x8, [x8]
   112fc:	stur	x8, [x29, #-0x58]
   11300:	movi.16b	v0, #0x0
   11304:	stp	q0, q0, [sp]
   11308:	stp	q0, q0, [sp, #0x20]
   1130c:	adrp	x0, 32 ; 0x31000
   11310:	add	x0, x0, #0xe08 ; "/var/jb"
   11314:	adrp	x20, 30 ; 0x2f000
   11318:	add	x20, x20, #0xd68 ; "/usr/lib/ellekit/libinjector.dylib"
   1131c:	mov	x2, x20
   11320:	bl	0x220a0
   11324:	mov	x29, x29
   11328:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1132c:	mov	x21, x0
   11330:	stp	x0, x20, [sp, #0x48]
   11334:	adrp	x8, 36 ; 0x35000
   11338:	ldr	x0, [x8, #0xa48] ; Objc class ref: bad class ref
   1133c:	add	x2, sp, #0x48
   11340:	mov	w3, #0x2
   11344:	bl	0x20580
   11348:	mov	x29, x29
   1134c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   11350:	mov	x20, x0
   11354:	mov	x0, x21
   11358:	bl	0x200e8 ; symbol stub for: _objc_release
   1135c:	mov	x2, sp
   11360:	add	x3, sp, #0x58
   11364:	mov	x0, x20
   11368:	mov	w4, #0x10
   1136c:	bl	0x20980
   11370:	cbz	x0, 0x11404
   11374:	mov	x21, x0
   11378:	mov	w24, #0x0
   1137c:	ldr	x8, [sp, #0x10]
   11380:	ldr	x25, [x8]
   11384:	adrp	x26, 36 ; 0x35000
   11388:	mov	x27, #0x0
   1138c:	ldr	x8, [sp, #0x10]
   11390:	ldr	x8, [x8]
   11394:	cmp	x8, x25
   11398:	b.eq	0x113a4
   1139c:	mov	x0, x20
   113a0:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   113a4:	ldr	x8, [sp, #0x8]
   113a8:	ldr	x22, [x8, x27, lsl #3]
   113ac:	ldr	x0, [x26, #0xa78]
   113b0:	bl	0x20b00
   113b4:	mov	x29, x29
   113b8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   113bc:	mov	x23, x0
   113c0:	mov	x2, x22
   113c4:	bl	0x20c40
   113c8:	mov	x22, x0
   113cc:	mov	x0, x23
   113d0:	bl	0x200e8 ; symbol stub for: _objc_release
   113d4:	orr	w24, w22, w24
   113d8:	add	x27, x27, #0x1
   113dc:	cmp	x21, x27
   113e0:	b.ne	0x1138c
   113e4:	mov	x2, sp
   113e8:	add	x3, sp, #0x58
   113ec:	mov	x0, x20
   113f0:	mov	w4, #0x10
   113f4:	bl	0x20980
   113f8:	mov	x21, x0
   113fc:	cbnz	x0, 0x11388
   11400:	b	0x11408
   11404:	mov	w24, #0x0

; ===== sub_11408 =====
   11408:	mov	x0, x20
   1140c:	bl	0x200e8 ; symbol stub for: _objc_release
   11410:	adrp	x0, 18 ; 0x23000
   11414:	add	x0, x0, #0x6ce ; literal pool for: "FBSystemService"
   11418:	bl	0x105fc
   1141c:	mov	x29, x29
   11420:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   11424:	mov	x20, x0
   11428:	tbz	w24, #0x0, 0x11494
   1142c:	adrp	x8, 35 ; 0x34000
   11430:	ldr	x1, [x8, #0xc28]
   11434:	mov	x0, x20
   11438:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1143c:	mov	x21, x0
   11440:	tbnz	w19, #0x0, 0x11498
   11444:	tbz	w21, #0x0, 0x11498
   11448:	adrp	x8, 36 ; 0x35000
   1144c:	ldr	x0, [x8, #0xb08] ; Objc class ref: bad class ref
   11450:	bl	0x20a00
   11454:	mov	x29, x29
   11458:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1145c:	mov	x19, x0
   11460:	adrp	x2, 30 ; 0x2f000
   11464:	add	x2, x2, #0xd88 ; "/var/mobile/.eksafemode"
   11468:	mov	w3, #0x0
   1146c:	bl	0x224a0
   11470:	mov	x21, x0
   11474:	mov	x0, x19
   11478:	bl	0x200e8 ; symbol stub for: _objc_release
   1147c:	cbz	w21, 0x1148c
   11480:	mov	x0, x20
   11484:	mov	w1, #0x0
   11488:	bl	0x10678
   1148c:	mov	w21, #0x1
   11490:	b	0x11498
   11494:	mov	w21, #0x0

; ===== sub_11498 =====
   11498:	mov	x0, x20
   1149c:	bl	0x200e8 ; symbol stub for: _objc_release
   114a0:	ldur	x8, [x29, #-0x58]
   114a4:	adrp	x9, 33 ; 0x32000
   114a8:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   114ac:	ldr	x9, [x9]
   114b0:	cmp	x9, x8
   114b4:	b.ne	0x114dc
   114b8:	and	w0, w21, #0x1
   114bc:	ldp	x29, x30, [sp, #0x130]
   114c0:	ldp	x20, x19, [sp, #0x120]
   114c4:	ldp	x22, x21, [sp, #0x110]
   114c8:	ldp	x24, x23, [sp, #0x100]
   114cc:	ldp	x26, x25, [sp, #0xf0]
   114d0:	ldp	x28, x27, [sp, #0xe0]
   114d4:	add	sp, sp, #0x140
   114d8:	ret
   114dc:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
   114e0:	mov	w0, #0x0
   114e4:	b	0x1124c
   114e8:	sub	sp, sp, #0x40
   114ec:	stp	x22, x21, [sp, #0x10]
   114f0:	stp	x20, x19, [sp, #0x20]
   114f4:	stp	x29, x30, [sp, #0x30]
   114f8:	add	x29, sp, #0x30
   114fc:	mov	x21, x1
   11500:	adrp	x0, 18 ; 0x23000
   11504:	add	x0, x0, #0x8e9 ; literal pool for: "SBUIController"
   11508:	bl	0x105fc
   1150c:	mov	x29, x29
   11510:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   11514:	mov	x19, x0
   11518:	adrp	x8, 35 ; 0x34000
   1151c:	ldr	x1, [x8, #0xc50]
   11520:	mov	x2, x21
   11524:	bl	0x10534
   11528:	mov	x20, x0
   1152c:	mov	x0, x19
   11530:	bl	0x200e8 ; symbol stub for: _objc_release
   11534:	tbz	w20, #0x0, 0x11540
   11538:	mov	w19, #0x1
   1153c:	b	0x115c0
   11540:	adrp	x8, 35 ; 0x34000
   11544:	ldr	x0, [x8, #0xc58]
   11548:	bl	0x115d8
   1154c:	mov	x29, x29
   11550:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   11554:	mov	x20, x0
   11558:	adrp	x8, 35 ; 0x34000
   1155c:	ldr	x22, [x8, #0xc60]
   11560:	mov	x1, x22
   11564:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11568:	mov	x19, x0
   1156c:	tbnz	w21, #0x0, 0x115b8
   11570:	tbz	w19, #0x0, 0x115b8
   11574:	adrp	x21, 29 ; 0x2e000
   11578:	add	x21, x21, #0xec8 ; "com.johndie.triggr"
   1157c:	mov	x0, x21
   11580:	bl	0x1fd4c ; symbol stub for: _CFPreferencesAppSynchronize
   11584:	strb	wzr, [sp, #0xf]
   11588:	adrp	x0, 31 ; 0x30000
   1158c:	add	x0, x0, #0x488 ; "DebugSwitcherSource"
   11590:	add	x2, sp, #0xf
   11594:	mov	x1, x21
   11598:	bl	0x1fd88 ; symbol stub for: _CFPreferencesGetAppIntegerValue
   1159c:	ldrb	w8, [sp, #0xf]
   115a0:	cmp	w8, #0x0
   115a4:	csinc	x2, x0, xzr, ne
   115a8:	mov	x0, x20
   115ac:	mov	x1, x22
   115b0:	mov	w3, #0x1
   115b4:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   115b8:	mov	x0, x20
   115bc:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_115c0 =====
   115c0:	and	w0, w19, #0x1
   115c4:	ldp	x29, x30, [sp, #0x30]
   115c8:	ldp	x20, x19, [sp, #0x20]
   115cc:	ldp	x22, x21, [sp, #0x10]
   115d0:	add	sp, sp, #0x40
   115d4:	ret

; ===== sub_115d8 =====
   115d8:	stp	x22, x21, [sp, #-0x30]!
   115dc:	stp	x20, x19, [sp, #0x10]
   115e0:	stp	x29, x30, [sp, #0x20]
   115e4:	add	x29, sp, #0x20
   115e8:	mov	x20, x0
   115ec:	adrp	x8, 36 ; 0x35000
   115f0:	ldr	x0, [x8, #0xa60] ; Objc class ref: bad class ref
   115f4:	bl	0x21f00
   115f8:	mov	x29, x29
   115fc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   11600:	mov	x19, x0
   11604:	adrp	x8, 35 ; 0x34000
   11608:	ldr	x21, [x8, #0xd88]
   1160c:	mov	x1, x21
   11610:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11614:	tbz	w0, #0x0, 0x11634
   11618:	mov	x0, x19
   1161c:	mov	x2, x21
   11620:	bl	0x215e0
   11624:	mov	x29, x29
   11628:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1162c:	mov	x21, x0
   11630:	cbnz	x0, 0x1166c
   11634:	adrp	x8, 35 ; 0x34000
   11638:	ldr	x21, [x8, #0xd90]
   1163c:	mov	x0, x19
   11640:	mov	x1, x21
   11644:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11648:	tbz	w0, #0x0, 0x11668
   1164c:	mov	x0, x19
   11650:	mov	x2, x21
   11654:	bl	0x215e0
   11658:	mov	x29, x29
   1165c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   11660:	mov	x21, x0
   11664:	b	0x1166c
   11668:	mov	x21, #0x0

; ===== sub_1166c =====
   1166c:	mov	x0, x21
   11670:	mov	x1, x20
   11674:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11678:	tbz	w0, #0x0, 0x11698
   1167c:	mov	x0, x21
   11680:	mov	x1, x20
   11684:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   11688:	mov	x29, x29
   1168c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   11690:	mov	x20, x0
   11694:	b	0x1169c
   11698:	mov	x20, #0x0

; ===== sub_1169c =====
   1169c:	mov	x0, x21
   116a0:	bl	0x200e8 ; symbol stub for: _objc_release
   116a4:	mov	x0, x19
   116a8:	bl	0x200e8 ; symbol stub for: _objc_release
   116ac:	mov	x0, x20
   116b0:	ldp	x29, x30, [sp, #0x20]
   116b4:	ldp	x20, x19, [sp, #0x10]
   116b8:	ldp	x22, x21, [sp], #0x30
   116bc:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue
   116c0:	stp	x22, x21, [sp, #-0x30]!
   116c4:	stp	x20, x19, [sp, #0x10]
   116c8:	stp	x29, x30, [sp, #0x20]
   116cc:	add	x29, sp, #0x20
   116d0:	mov	x19, x1
   116d4:	adrp	x0, 18 ; 0x23000
   116d8:	add	x0, x0, #0x90c ; literal pool for: "SBReachabilityManager"
   116dc:	bl	0x105fc
   116e0:	mov	x29, x29
   116e4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   116e8:	mov	x21, x0
   116ec:	adrp	x8, 35 ; 0x34000
   116f0:	ldr	x20, [x8, #0xc68]
   116f4:	mov	x1, x20
   116f8:	mov	x2, x19
   116fc:	bl	0x10534
   11700:	mov	x22, x0
   11704:	mov	x0, x21
   11708:	bl	0x200e8 ; symbol stub for: _objc_release
   1170c:	tbz	w22, #0x0, 0x11718
   11710:	mov	w0, #0x1
   11714:	b	0x1174c
   11718:	adrp	x8, 35 ; 0x34000
   1171c:	ldr	x0, [x8, #0xc70]
   11720:	bl	0x115d8
   11724:	mov	x29, x29
   11728:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1172c:	mov	x21, x0
   11730:	mov	x1, x20
   11734:	mov	x2, x19
   11738:	bl	0x10534
   1173c:	mov	x19, x0
   11740:	mov	x0, x21
   11744:	bl	0x200e8 ; symbol stub for: _objc_release
   11748:	mov	x0, x19

; ===== sub_1174c =====
   1174c:	ldp	x29, x30, [sp, #0x20]
   11750:	ldp	x20, x19, [sp, #0x10]
   11754:	ldp	x22, x21, [sp], #0x30
   11758:	ret
   1175c:	stp	x22, x21, [sp, #-0x30]!
   11760:	stp	x20, x19, [sp, #0x10]
   11764:	stp	x29, x30, [sp, #0x20]
   11768:	add	x29, sp, #0x20
   1176c:	mov	x22, x1
   11770:	adrp	x0, 17 ; 0x22000
   11774:	add	x0, x0, #0xc65 ; literal pool for: "SBLockScreenManager"
   11778:	bl	0x105fc
   1177c:	mov	x29, x29
   11780:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   11784:	mov	x19, x0
   11788:	adrp	x8, 35 ; 0x34000
   1178c:	ldr	x21, [x8, #0xc78]
   11790:	mov	x1, x21
   11794:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11798:	mov	x20, x0
   1179c:	tbnz	w22, #0x0, 0x117b8
   117a0:	tbz	w20, #0x0, 0x117b8
   117a4:	mov	x0, x19
   117a8:	mov	x1, x21
   117ac:	mov	w2, #0x1
   117b0:	mov	x3, #0x0
   117b4:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   117b8:	mov	x0, x19
   117bc:	bl	0x200e8 ; symbol stub for: _objc_release
   117c0:	and	w0, w20, #0x1
   117c4:	ldp	x29, x30, [sp, #0x20]
   117c8:	ldp	x20, x19, [sp, #0x10]
   117cc:	ldp	x22, x21, [sp], #0x30
   117d0:	ret
   117d4:	stp	x22, x21, [sp, #-0x30]!
   117d8:	stp	x20, x19, [sp, #0x10]
   117dc:	stp	x29, x30, [sp, #0x20]
   117e0:	add	x29, sp, #0x20
   117e4:	mov	x19, x1
   117e8:	adrp	x0, 18 ; 0x23000
   117ec:	add	x0, x0, #0x938 ; literal pool for: "SBControlCenterController"
   117f0:	bl	0x105fc
   117f4:	mov	x29, x29
   117f8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   117fc:	mov	x21, x0
   11800:	cbz	x0, 0x11810
   11804:	mov	x0, x21
   11808:	bl	0x200f4 ; symbol stub for: _objc_retain
   1180c:	b	0x11824
   11810:	adrp	x8, 35 ; 0x34000
   11814:	ldr	x0, [x8, #0xc80]
   11818:	bl	0x115d8
   1181c:	mov	x29, x29
   11820:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue

; ===== sub_11824 =====
   11824:	mov	x20, x0
   11828:	mov	x0, x21
   1182c:	bl	0x200e8 ; symbol stub for: _objc_release
   11830:	adrp	x8, 35 ; 0x34000
   11834:	ldr	x22, [x8, #0xc88]
   11838:	mov	x0, x20
   1183c:	mov	x1, x22
   11840:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11844:	mov	x21, x0
   11848:	tbnz	w19, #0x0, 0x11860
   1184c:	tbz	w21, #0x0, 0x11860
   11850:	mov	x0, x20
   11854:	mov	x1, x22
   11858:	mov	w2, #0x1
   1185c:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   11860:	mov	x0, x20
   11864:	bl	0x200e8 ; symbol stub for: _objc_release
   11868:	and	w0, w21, #0x1
   1186c:	ldp	x29, x30, [sp, #0x20]
   11870:	ldp	x20, x19, [sp, #0x10]
   11874:	ldp	x22, x21, [sp], #0x30
   11878:	ret
   1187c:	stp	x22, x21, [sp, #-0x30]!
   11880:	stp	x20, x19, [sp, #0x10]
   11884:	stp	x29, x30, [sp, #0x20]
   11888:	add	x29, sp, #0x20
   1188c:	mov	x19, x1
   11890:	adrp	x0, 18 ; 0x23000
   11894:	add	x0, x0, #0x95c ; literal pool for: "SBCoverSheetPresentationManager"
   11898:	bl	0x105fc
   1189c:	mov	x29, x29
   118a0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   118a4:	mov	x21, x0
   118a8:	cbz	x0, 0x118b8
   118ac:	mov	x0, x21
   118b0:	bl	0x200f4 ; symbol stub for: _objc_retain
   118b4:	b	0x118cc
   118b8:	adrp	x8, 35 ; 0x34000
   118bc:	ldr	x0, [x8, #0xc90]
   118c0:	bl	0x115d8
   118c4:	mov	x29, x29
   118c8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue

; ===== sub_118cc =====
   118cc:	mov	x20, x0
   118d0:	mov	x0, x21
   118d4:	bl	0x200e8 ; symbol stub for: _objc_release
   118d8:	adrp	x8, 35 ; 0x34000
   118dc:	ldr	x22, [x8, #0xc98]
   118e0:	mov	x0, x20
   118e4:	mov	x1, x22
   118e8:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   118ec:	mov	x21, x0
   118f0:	tbnz	w19, #0x0, 0x11910
   118f4:	tbz	w21, #0x0, 0x11910
   118f8:	mov	x0, x20
   118fc:	mov	x1, x22
   11900:	mov	w2, #0x1
   11904:	mov	w3, #0x1
   11908:	mov	x4, #0x0
   1190c:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   11910:	mov	x0, x20
   11914:	bl	0x200e8 ; symbol stub for: _objc_release
   11918:	and	w0, w21, #0x1
   1191c:	ldp	x29, x30, [sp, #0x20]
   11920:	ldp	x20, x19, [sp, #0x10]
   11924:	ldp	x22, x21, [sp], #0x30
   11928:	ret
   1192c:	stp	x22, x21, [sp, #-0x30]!
   11930:	stp	x20, x19, [sp, #0x10]
   11934:	stp	x29, x30, [sp, #0x20]
   11938:	add	x29, sp, #0x20
   1193c:	mov	x21, x1
   11940:	mov	x19, x0
   11944:	adrp	x8, 35 ; 0x34000
   11948:	ldr	x20, [x8, #0xca0]
   1194c:	ldr	x0, [x0, #0x20]
   11950:	mov	x1, x20
   11954:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11958:	tbz	w0, #0x0, 0x11980
   1195c:	tbnz	w21, #0x0, 0x11978
   11960:	ldr	x0, [x19, #0x20]
   11964:	mov	x1, x20
   11968:	mov	x2, #0x0
   1196c:	mov	x3, #0x0
   11970:	mov	x4, #0x0
   11974:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   11978:	mov	w20, #0x1
   1197c:	b	0x119ac
   11980:	adrp	x8, 35 ; 0x34000
   11984:	ldr	x22, [x8, #0xca8]
   11988:	ldr	x0, [x19, #0x20]
   1198c:	mov	x1, x22
   11990:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11994:	mov	x20, x0
   11998:	tbnz	w21, #0x0, 0x119ac
   1199c:	tbz	w20, #0x0, 0x119ac
   119a0:	ldr	x0, [x19, #0x20]
   119a4:	mov	x1, x22
   119a8:	bl	0x200a0 ; symbol stub for: _objc_msgSend

; ===== sub_119ac =====
   119ac:	and	w0, w20, #0x1
   119b0:	ldp	x29, x30, [sp, #0x20]
   119b4:	ldp	x20, x19, [sp, #0x10]
   119b8:	ldp	x22, x21, [sp], #0x30
   119bc:	ret
   119c0:	stp	x22, x21, [sp, #-0x30]!
   119c4:	stp	x20, x19, [sp, #0x10]
   119c8:	stp	x29, x30, [sp, #0x20]
   119cc:	add	x29, sp, #0x20
   119d0:	mov	x22, x1
   119d4:	adrp	x0, 17 ; 0x22000
   119d8:	add	x0, x0, #0xfe8 ; literal pool for: "SBMediaController"
   119dc:	bl	0x105fc
   119e0:	mov	x29, x29
   119e4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   119e8:	mov	x19, x0
   119ec:	adrp	x8, 35 ; 0x34000
   119f0:	ldr	x21, [x8, #0xcb0]
   119f4:	mov	x1, x21
   119f8:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   119fc:	mov	x20, x0
   11a00:	tbnz	w22, #0x0, 0x11a18
   11a04:	tbz	w20, #0x0, 0x11a18
   11a08:	mov	x0, x19
   11a0c:	mov	x1, x21
   11a10:	mov	x2, #0x0
   11a14:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   11a18:	mov	x0, x19
   11a1c:	bl	0x200e8 ; symbol stub for: _objc_release
   11a20:	and	w0, w20, #0x1
   11a24:	ldp	x29, x30, [sp, #0x20]
   11a28:	ldp	x20, x19, [sp, #0x10]
   11a2c:	ldp	x22, x21, [sp], #0x30
   11a30:	ret
   11a34:	stp	x22, x21, [sp, #-0x30]!
   11a38:	stp	x20, x19, [sp, #0x10]
   11a3c:	stp	x29, x30, [sp, #0x20]
   11a40:	add	x29, sp, #0x20
   11a44:	mov	x22, x1
   11a48:	adrp	x0, 17 ; 0x22000
   11a4c:	add	x0, x0, #0xfe8 ; literal pool for: "SBMediaController"
   11a50:	bl	0x105fc
   11a54:	mov	x29, x29
   11a58:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   11a5c:	mov	x19, x0
   11a60:	adrp	x8, 35 ; 0x34000
   11a64:	ldr	x21, [x8, #0xcb8]
   11a68:	mov	x1, x21
   11a6c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11a70:	mov	x20, x0
   11a74:	tbnz	w22, #0x0, 0x11a90
   11a78:	tbz	w20, #0x0, 0x11a90
   11a7c:	mov	x0, x19
   11a80:	mov	x1, x21
   11a84:	mov	w2, #0x1
   11a88:	mov	x3, #0x0
   11a8c:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   11a90:	mov	x0, x19
   11a94:	bl	0x200e8 ; symbol stub for: _objc_release
   11a98:	and	w0, w20, #0x1
   11a9c:	ldp	x29, x30, [sp, #0x20]
   11aa0:	ldp	x20, x19, [sp, #0x10]
   11aa4:	ldp	x22, x21, [sp], #0x30
   11aa8:	ret
   11aac:	stp	x22, x21, [sp, #-0x30]!
   11ab0:	stp	x20, x19, [sp, #0x10]
   11ab4:	stp	x29, x30, [sp, #0x20]
   11ab8:	add	x29, sp, #0x20
   11abc:	mov	x22, x1
   11ac0:	adrp	x0, 17 ; 0x22000
   11ac4:	add	x0, x0, #0xfe8 ; literal pool for: "SBMediaController"
   11ac8:	bl	0x105fc
   11acc:	mov	x29, x29
   11ad0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   11ad4:	mov	x19, x0
   11ad8:	adrp	x8, 35 ; 0x34000
   11adc:	ldr	x21, [x8, #0xcb8]
   11ae0:	mov	x1, x21
   11ae4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11ae8:	mov	x20, x0
   11aec:	tbnz	w22, #0x0, 0x11b08
   11af0:	tbz	w20, #0x0, 0x11b08
   11af4:	mov	x0, x19
   11af8:	mov	x1, x21
   11afc:	mov	w2, #-0x1
   11b00:	mov	x3, #0x0
   11b04:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   11b08:	mov	x0, x19
   11b0c:	bl	0x200e8 ; symbol stub for: _objc_release
   11b10:	and	w0, w20, #0x1
   11b14:	ldp	x29, x30, [sp, #0x20]
   11b18:	ldp	x20, x19, [sp, #0x10]
   11b1c:	ldp	x22, x21, [sp], #0x30
   11b20:	ret
   11b24:	stp	x22, x21, [sp, #-0x30]!
   11b28:	stp	x20, x19, [sp, #0x10]
   11b2c:	stp	x29, x30, [sp, #0x20]
   11b30:	add	x29, sp, #0x20
   11b34:	mov	x22, x1
   11b38:	adrp	x0, 18 ; 0x23000
   11b3c:	add	x0, x0, #0xd0e ; literal pool for: "MPMediaControls"
   11b40:	bl	0x20088 ; symbol stub for: _objc_getClass
   11b44:	mov	x21, x0
   11b48:	adrp	x8, 35 ; 0x34000
   11b4c:	ldr	x19, [x8, #0xd98]
   11b50:	mov	x2, x19
   11b54:	bl	0x20f40
   11b58:	mov	x20, x0
   11b5c:	tbnz	w22, #0x0, 0x11b8c
   11b60:	cbz	w20, 0x11b8c
   11b64:	mov	x0, x21
   11b68:	bl	0x200d0 ; symbol stub for: _objc_opt_new
   11b6c:	adrp	x21, 37 ; 0x36000
   11b70:	ldr	x8, [x21, #0x4d8]
   11b74:	str	x0, [x21, #0x4d8]
   11b78:	mov	x0, x8
   11b7c:	bl	0x200e8 ; symbol stub for: _objc_release
   11b80:	ldr	x0, [x21, #0x4d8]
   11b84:	mov	x1, x19
   11b88:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   11b8c:	mov	x0, x20
   11b90:	ldp	x29, x30, [sp, #0x20]
   11b94:	ldp	x20, x19, [sp, #0x10]
   11b98:	ldp	x22, x21, [sp], #0x30
   11b9c:	ret
   11ba0:	mov	x0, #0x0
   11ba4:	b	0xef24
   11ba8:	stp	x24, x23, [sp, #-0x40]!
   11bac:	stp	x22, x21, [sp, #0x10]
   11bb0:	stp	x20, x19, [sp, #0x20]
   11bb4:	stp	x29, x30, [sp, #0x30]
   11bb8:	add	x29, sp, #0x30
   11bbc:	mov	x19, x1
   11bc0:	adrp	x0, 18 ; 0x23000
   11bc4:	add	x0, x0, #0xd1e ; literal pool for: "RPScreenRecorder"
   11bc8:	bl	0x20088 ; symbol stub for: _objc_getClass
   11bcc:	mov	x20, x0
   11bd0:	cbnz	x0, 0x11bf4
   11bd4:	adrp	x0, 18 ; 0x23000
   11bd8:	add	x0, x0, #0xd2f ; literal pool for: "/System/Library/Frameworks/ReplayKit.framework/ReplayKit"
   11bdc:	mov	w1, #0x2
   11be0:	bl	0x1ff44 ; symbol stub for: _dlopen
   11be4:	adrp	x0, 18 ; 0x23000
   11be8:	add	x0, x0, #0xd1e ; literal pool for: "RPScreenRecorder"
   11bec:	bl	0x20088 ; symbol stub for: _objc_getClass
   11bf0:	mov	x20, x0
   11bf4:	adrp	x8, 35 ; 0x34000
   11bf8:	ldr	x21, [x8, #0xda0]
   11bfc:	mov	x0, x20
   11c00:	mov	x1, x21
   11c04:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11c08:	tbz	w0, #0x0, 0x11c1c
   11c0c:	mov	x0, x20
   11c10:	mov	x2, x21
   11c14:	bl	0x215e0
   11c18:	b	0x11c20
   11c1c:	mov	x0, #0x0

; ===== sub_11c20 =====
   11c20:	bl	0x200f4 ; symbol stub for: _objc_retain
   11c24:	mov	x20, x0
   11c28:	adrp	x8, 35 ; 0x34000
   11c2c:	ldr	x21, [x8, #0xda8]
   11c30:	mov	x1, x21
   11c34:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11c38:	tbz	w0, #0x0, 0x11c9c
   11c3c:	adrp	x8, 35 ; 0x34000
   11c40:	ldr	x22, [x8, #0xdb0]
   11c44:	mov	x0, x20
   11c48:	mov	x1, x22
   11c4c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11c50:	tbz	w0, #0x0, 0x11c9c
   11c54:	adrp	x8, 35 ; 0x34000
   11c58:	ldr	x24, [x8, #0xdb8]
   11c5c:	mov	x0, x20
   11c60:	mov	x1, x24
   11c64:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11c68:	mov	x23, x0
   11c6c:	tbnz	w19, #0x0, 0x11ca0
   11c70:	tbz	w23, #0x0, 0x11ca0
   11c74:	mov	x0, x20
   11c78:	mov	x1, x24
   11c7c:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   11c80:	cbz	w0, 0x11cc0
   11c84:	adrp	x2, 27 ; 0x2c000
   11c88:	add	x2, x2, #0xd00
   11c8c:	mov	x0, x20
   11c90:	mov	x1, x22
   11c94:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   11c98:	b	0x11cd8
   11c9c:	mov	w23, #0x0

; ===== sub_11ca0 =====
   11ca0:	mov	x0, x20
   11ca4:	bl	0x200e8 ; symbol stub for: _objc_release
   11ca8:	and	w0, w23, #0x1
   11cac:	ldp	x29, x30, [sp, #0x30]
   11cb0:	ldp	x20, x19, [sp, #0x20]
   11cb4:	ldp	x22, x21, [sp, #0x10]
   11cb8:	ldp	x24, x23, [sp], #0x40
   11cbc:	ret
   11cc0:	adrp	x3, 27 ; 0x2c000
   11cc4:	add	x3, x3, #0xd20
   11cc8:	mov	x0, x20
   11ccc:	mov	x1, x21
   11cd0:	mov	w2, #0x0
   11cd4:	bl	0x200a0 ; symbol stub for: _objc_msgSend

; ===== sub_11cd8 =====
   11cd8:	mov	w23, #0x1
   11cdc:	b	0x11ca0
   11ce0:	stp	x28, x27, [sp, #-0x60]!
   11ce4:	stp	x26, x25, [sp, #0x10]
   11ce8:	stp	x24, x23, [sp, #0x20]
   11cec:	stp	x22, x21, [sp, #0x30]
   11cf0:	stp	x20, x19, [sp, #0x40]
   11cf4:	stp	x29, x30, [sp, #0x50]
   11cf8:	add	x29, sp, #0x50
   11cfc:	sub	sp, sp, #0x290
   11d00:	mov	x21, x1
   11d04:	adrp	x8, 33 ; 0x32000
   11d08:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   11d0c:	ldr	x8, [x8]
   11d10:	stur	x8, [x29, #-0x60]
   11d14:	adrp	x0, 18 ; 0x23000
   11d18:	add	x0, x0, #0xd71 ; literal pool for: "SBMainSwitcherControllerCoordinator"
   11d1c:	bl	0x105fc
   11d20:	mov	x29, x29
   11d24:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   11d28:	mov	x19, x0
   11d2c:	cbz	x0, 0x11d3c
   11d30:	mov	x0, x19
   11d34:	bl	0x200f4 ; symbol stub for: _objc_retain
   11d38:	b	0x11d50
   11d3c:	adrp	x0, 18 ; 0x23000
   11d40:	add	x0, x0, #0xd95 ; literal pool for: "SBMainSwitcherViewController"
   11d44:	bl	0x105fc
   11d48:	mov	x29, x29
   11d4c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue

; ===== sub_11d50 =====
   11d50:	mov	x24, x0
   11d54:	mov	x0, x19
   11d58:	bl	0x200e8 ; symbol stub for: _objc_release
   11d5c:	adrp	x8, 35 ; 0x34000
   11d60:	ldr	x20, [x8, #0xdc0]
   11d64:	mov	x0, x24
   11d68:	mov	x1, x20
   11d6c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11d70:	tbz	w0, #0x0, 0x11e10
   11d74:	adrp	x8, 35 ; 0x34000
   11d78:	ldr	x22, [x8, #0xdc8]
   11d7c:	mov	x0, x24
   11d80:	mov	x1, x22
   11d84:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11d88:	mov	x19, x0
   11d8c:	tbnz	w21, #0x0, 0x12100
   11d90:	tbz	w19, #0x0, 0x12100
   11d94:	adrp	x8, 36 ; 0x35000
   11d98:	ldr	x0, [x8, #0xa28] ; Objc class ref: bad class ref
   11d9c:	bl	0x218e0
   11da0:	mov	x29, x29
   11da4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   11da8:	mov	x21, x0
   11dac:	bl	0xc264
   11db0:	mov	x29, x29
   11db4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   11db8:	mov	x23, x0
   11dbc:	cbz	x0, 0x11dcc
   11dc0:	mov	x0, x21
   11dc4:	mov	x2, x23
   11dc8:	bl	0x203c0
   11dcc:	adrp	x0, 17 ; 0x22000
   11dd0:	add	x0, x0, #0xfe8 ; literal pool for: "SBMediaController"
   11dd4:	bl	0x105fc
   11dd8:	mov	x29, x29
   11ddc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   11de0:	mov	x25, x0
   11de4:	adrp	x8, 35 ; 0x34000
   11de8:	ldr	x19, [x8, #0xcc0]
   11dec:	mov	x1, x19
   11df0:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11df4:	stp	x23, x20, [sp, #0x10]
   11df8:	str	x25, [sp, #0x8]
   11dfc:	tbz	w0, #0x0, 0x11e18
   11e00:	mov	x0, x25
   11e04:	mov	x2, x19
   11e08:	bl	0x215e0
   11e0c:	b	0x11e1c
   11e10:	mov	w19, #0x0
   11e14:	b	0x12100
   11e18:	mov	x0, #0x0

; ===== sub_11e1c =====
   11e1c:	bl	0x200f4 ; symbol stub for: _objc_retain
   11e20:	mov	x20, x0
   11e24:	adrp	x8, 36 ; 0x35000
   11e28:	ldr	x25, [x8, #0x158]
   11e2c:	mov	x1, x25
   11e30:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11e34:	tbz	w0, #0x0, 0x11e68
   11e38:	mov	x0, x20
   11e3c:	mov	x2, x25
   11e40:	bl	0x215e0
   11e44:	mov	x29, x29
   11e48:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   11e4c:	cbz	x0, 0x11e68
   11e50:	mov	x19, x0
   11e54:	mov	x0, x21
   11e58:	mov	x2, x19
   11e5c:	bl	0x203c0
   11e60:	mov	x0, x19
   11e64:	bl	0x200e8 ; symbol stub for: _objc_release
   11e68:	str	x20, [sp]
   11e6c:	adrp	x8, 36 ; 0x35000
   11e70:	ldr	x0, [x8, #0xb18] ; Objc class ref: bad class ref
   11e74:	bl	0x21560
   11e78:	mov	x29, x29
   11e7c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   11e80:	mov	x26, x0
   11e84:	movi.16b	v0, #0x0
   11e88:	stp	q0, q0, [sp, #0xc0]
   11e8c:	stp	q0, q0, [sp, #0xe0]
   11e90:	str	x24, [sp, #0x20]
   11e94:	mov	x0, x24
   11e98:	mov	x2, x22
   11e9c:	bl	0x215e0
   11ea0:	mov	x29, x29
   11ea4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   11ea8:	add	x2, sp, #0xc0
   11eac:	sub	x3, x29, #0xe0
   11eb0:	str	x0, [sp, #0x28]
   11eb4:	mov	w4, #0x10
   11eb8:	bl	0x20980
   11ebc:	str	x0, [sp, #0x38]
   11ec0:	cbz	x0, 0x12030
   11ec4:	ldr	x8, [sp, #0xd0]
   11ec8:	ldr	x8, [x8]
   11ecc:	str	x8, [sp, #0x30]
   11ed0:	mov	x27, #0x0
   11ed4:	adrp	x8, 35 ; 0x34000
   11ed8:	ldr	x22, [x8, #0xdd0]
   11edc:	ldr	x8, [sp, #0xd0]
   11ee0:	ldr	x8, [x8]
   11ee4:	ldr	x9, [sp, #0x30]
   11ee8:	cmp	x8, x9
   11eec:	b.eq	0x11ef8
   11ef0:	ldr	x0, [sp, #0x28]
   11ef4:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   11ef8:	ldr	x8, [sp, #0xc8]
   11efc:	ldr	x19, [x8, x27, lsl #3]
   11f00:	mov	x0, x19
   11f04:	mov	x1, x22
   11f08:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11f0c:	tbz	w0, #0x0, 0x11f20
   11f10:	mov	x0, x19
   11f14:	mov	x2, x22
   11f18:	bl	0x215e0
   11f1c:	b	0x11f24
   11f20:	mov	x0, #0x0

; ===== sub_11f24 =====
   11f24:	bl	0x200f4 ; symbol stub for: _objc_retain
   11f28:	mov	x23, x0
   11f2c:	movi.16b	v0, #0x0
   11f30:	stp	q0, q0, [sp, #0x80]
   11f34:	stp	q0, q0, [sp, #0xa0]
   11f38:	add	x2, sp, #0x80
   11f3c:	add	x3, sp, #0x180
   11f40:	mov	w4, #0x10
   11f44:	bl	0x20980
   11f48:	cbz	x0, 0x11ffc
   11f4c:	mov	x24, x0
   11f50:	ldr	x8, [sp, #0x90]
   11f54:	ldr	x20, [x8]
   11f58:	mov	x28, #0x0
   11f5c:	ldr	x8, [sp, #0x90]
   11f60:	ldr	x8, [x8]
   11f64:	cmp	x8, x20
   11f68:	b.eq	0x11f74
   11f6c:	mov	x0, x23
   11f70:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   11f74:	ldr	x8, [sp, #0x88]
   11f78:	ldr	x19, [x8, x28, lsl #3]
   11f7c:	mov	x0, x19
   11f80:	mov	x1, x25
   11f84:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   11f88:	tbz	w0, #0x0, 0x11fc8
   11f8c:	mov	x0, x19
   11f90:	mov	x2, x25
   11f94:	bl	0x215e0
   11f98:	mov	x29, x29
   11f9c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   11fa0:	mov	x19, x0
   11fa4:	cbz	x0, 0x11fcc
   11fa8:	mov	x0, x21
   11fac:	mov	x2, x19
   11fb0:	bl	0x208a0
   11fb4:	tbnz	w0, #0x0, 0x11fcc
   11fb8:	mov	x0, x26
   11fbc:	mov	x2, x19
   11fc0:	bl	0x203c0
   11fc4:	b	0x11fcc
   11fc8:	mov	x19, #0x0

; ===== sub_11fcc =====
   11fcc:	mov	x0, x19
   11fd0:	bl	0x200e8 ; symbol stub for: _objc_release
   11fd4:	add	x28, x28, #0x1
   11fd8:	cmp	x24, x28
   11fdc:	b.ne	0x11f5c
   11fe0:	add	x2, sp, #0x80
   11fe4:	add	x3, sp, #0x180
   11fe8:	mov	x0, x23
   11fec:	mov	w4, #0x10
   11ff0:	bl	0x20980
   11ff4:	mov	x24, x0
   11ff8:	cbnz	x0, 0x11f58
   11ffc:	mov	x0, x23
   12000:	bl	0x200e8 ; symbol stub for: _objc_release
   12004:	add	x27, x27, #0x1
   12008:	ldr	x8, [sp, #0x38]
   1200c:	cmp	x27, x8
   12010:	b.ne	0x11edc
   12014:	add	x2, sp, #0xc0
   12018:	sub	x3, x29, #0xe0
   1201c:	ldr	x0, [sp, #0x28]
   12020:	mov	w4, #0x10
   12024:	bl	0x20980
   12028:	str	x0, [sp, #0x38]
   1202c:	cbnz	x0, 0x11ed0
   12030:	ldr	x0, [sp, #0x28]
   12034:	bl	0x200e8 ; symbol stub for: _objc_release
   12038:	movi.16b	v0, #0x0
   1203c:	stp	q0, q0, [sp, #0x60]
   12040:	stp	q0, q0, [sp, #0x40]
   12044:	mov	x0, x26
   12048:	bl	0x200f4 ; symbol stub for: _objc_retain
   1204c:	mov	x22, x0
   12050:	add	x2, sp, #0x40
   12054:	add	x3, sp, #0x100
   12058:	mov	w4, #0x10
   1205c:	bl	0x20980
   12060:	ldp	x25, x24, [sp, #0x18]
   12064:	cbz	x0, 0x120cc
   12068:	mov	x23, x0
   1206c:	ldr	x8, [sp, #0x50]
   12070:	ldr	x19, [x8]
   12074:	mov	x20, #0x0
   12078:	ldr	x8, [sp, #0x50]
   1207c:	ldr	x8, [x8]
   12080:	cmp	x8, x19
   12084:	b.eq	0x12090
   12088:	mov	x0, x22
   1208c:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   12090:	ldr	x8, [sp, #0x48]
   12094:	ldr	x2, [x8, x20, lsl #3]
   12098:	mov	x0, x24
   1209c:	mov	x1, x25
   120a0:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   120a4:	add	x20, x20, #0x1
   120a8:	cmp	x23, x20
   120ac:	b.ne	0x12078
   120b0:	add	x2, sp, #0x40
   120b4:	add	x3, sp, #0x100
   120b8:	mov	x0, x22
   120bc:	mov	w4, #0x10
   120c0:	bl	0x20980
   120c4:	mov	x23, x0
   120c8:	cbnz	x0, 0x12074
   120cc:	mov	x0, x22
   120d0:	bl	0x200e8 ; symbol stub for: _objc_release
   120d4:	mov	x0, x22
   120d8:	bl	0x200e8 ; symbol stub for: _objc_release
   120dc:	ldr	x0, [sp]
   120e0:	bl	0x200e8 ; symbol stub for: _objc_release
   120e4:	ldr	x0, [sp, #0x8]
   120e8:	bl	0x200e8 ; symbol stub for: _objc_release
   120ec:	ldr	x0, [sp, #0x10]
   120f0:	bl	0x200e8 ; symbol stub for: _objc_release
   120f4:	mov	x0, x21
   120f8:	bl	0x200e8 ; symbol stub for: _objc_release
   120fc:	mov	w19, #0x1

; ===== sub_12100 =====
   12100:	mov	x0, x24
   12104:	bl	0x200e8 ; symbol stub for: _objc_release
   12108:	ldur	x8, [x29, #-0x60]
   1210c:	adrp	x9, 32 ; 0x32000
   12110:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   12114:	ldr	x9, [x9]
   12118:	cmp	x9, x8
   1211c:	b.ne	0x12144
   12120:	and	w0, w19, #0x1
   12124:	add	sp, sp, #0x290
   12128:	ldp	x29, x30, [sp, #0x50]
   1212c:	ldp	x20, x19, [sp, #0x40]
   12130:	ldp	x22, x21, [sp, #0x30]
   12134:	ldp	x24, x23, [sp, #0x20]
   12138:	ldp	x26, x25, [sp, #0x10]
   1213c:	ldp	x28, x27, [sp], #0x60
   12140:	ret
   12144:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
   12148:	mov	w0, #0x1
   1214c:	b	0x12150

; ===== sub_12150 =====
   12150:	stp	x24, x23, [sp, #-0x40]!
   12154:	stp	x22, x21, [sp, #0x10]
   12158:	stp	x20, x19, [sp, #0x20]
   1215c:	stp	x29, x30, [sp, #0x30]
   12160:	add	x29, sp, #0x30
   12164:	mov	x20, x1
   12168:	mov	x21, x0
   1216c:	bl	0x12f4c
   12170:	mov	x29, x29
   12174:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   12178:	mov	x19, x0
   1217c:	adrp	x8, 34 ; 0x34000
   12180:	add	x8, x8, #0xdd8
   12184:	adrp	x9, 34 ; 0x34000
   12188:	add	x9, x9, #0xde0
   1218c:	cmp	w21, #0x0
   12190:	csel	x8, x8, x9, ne
   12194:	ldr	x22, [x8]
   12198:	mov	w0, #0x2
   1219c:	mov	w1, #0x10
   121a0:	mov	w2, #0x0
   121a4:	mov	w3, #0x0
   121a8:	bl	0x1f804
   121ac:	mov	x23, x0
   121b0:	mov	w0, #0x2
   121b4:	mov	w1, #0x11
   121b8:	mov	w2, #0x0
   121bc:	mov	w3, #0x0
   121c0:	bl	0x1f804
   121c4:	cbnz	w0, 0x121cc
   121c8:	cbnz	w23, 0x12240
   121cc:	mov	x0, x19
   121d0:	mov	x1, x22
   121d4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   121d8:	tbz	w0, #0x0, 0x12240
   121dc:	adrp	x8, 34 ; 0x34000
   121e0:	ldr	x23, [x8, #0xde8]
   121e4:	mov	x0, x19
   121e8:	mov	x1, x23
   121ec:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   121f0:	tbz	w0, #0x0, 0x12240
   121f4:	tbnz	w20, #0x0, 0x122c4
   121f8:	mov	x0, x19
   121fc:	mov	x1, x22
   12200:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   12204:	fabs	s1, s0
   12208:	fmov	s2, #0.50000000
   1220c:	fcmp	s1, s2
   12210:	fmov	s2, wzr
   12214:	fccmp	s0, s2, #0x4, le
   12218:	mov	w8, #0x3d800000
   1221c:	fmov	s0, w8
   12220:	fcsel	s0, s0, s1, eq
   12224:	fneg	s1, s0
   12228:	cmp	w21, #0x0
   1222c:	fcsel	s0, s0, s1, ne
   12230:	mov	x0, x19
   12234:	mov	x1, x23
   12238:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   1223c:	b	0x122c4
   12240:	mov	x0, x19
   12244:	mov	x1, x22
   12248:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1224c:	tbz	w0, #0x0, 0x12260
   12250:	tbnz	w20, #0x0, 0x122c4
   12254:	mov	x0, x19
   12258:	mov	x1, x22
   1225c:	b	0x122c0
   12260:	adrp	x8, 34 ; 0x34000
   12264:	add	x8, x8, #0xdf0
   12268:	adrp	x9, 34 ; 0x34000
   1226c:	add	x9, x9, #0xdf8
   12270:	cmp	w21, #0x0
   12274:	csel	x8, x8, x9, ne
   12278:	ldr	x22, [x8]
   1227c:	mov	x0, x19
   12280:	mov	x1, x22
   12284:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   12288:	tbz	w0, #0x0, 0x122cc
   1228c:	adrp	x8, 34 ; 0x34000
   12290:	ldr	x23, [x8, #0xe00]
   12294:	mov	x0, x19
   12298:	mov	x1, x23
   1229c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   122a0:	mov	x21, x0
   122a4:	tbnz	w20, #0x0, 0x122d0
   122a8:	tbz	w21, #0x0, 0x122d0
   122ac:	mov	x0, x19
   122b0:	mov	x1, x22
   122b4:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   122b8:	mov	x0, x19
   122bc:	mov	x1, x23

; ===== sub_122c0 =====
   122c0:	bl	0x200a0 ; symbol stub for: _objc_msgSend

; ===== sub_122c4 =====
   122c4:	mov	w21, #0x1
   122c8:	b	0x122d0
   122cc:	mov	w21, #0x0

; ===== sub_122d0 =====
   122d0:	mov	x0, x19
   122d4:	bl	0x200e8 ; symbol stub for: _objc_release
   122d8:	and	w0, w21, #0x1
   122dc:	ldp	x29, x30, [sp, #0x30]
   122e0:	ldp	x20, x19, [sp, #0x20]
   122e4:	ldp	x22, x21, [sp, #0x10]
   122e8:	ldp	x24, x23, [sp], #0x40
   122ec:	ret
   122f0:	mov	w0, #0x0
   122f4:	b	0x12150
   122f8:	mov	x2, x1
   122fc:	ldr	x0, [x0, #0x20]
   12300:	mov	w1, #0x1
   12304:	b	0x12308

; ===== sub_12308 =====
   12308:	stp	x26, x25, [sp, #-0x50]!
   1230c:	stp	x24, x23, [sp, #0x10]
   12310:	stp	x22, x21, [sp, #0x20]
   12314:	stp	x20, x19, [sp, #0x30]
   12318:	stp	x29, x30, [sp, #0x40]
   1231c:	add	x29, sp, #0x40
   12320:	mov	x20, x2
   12324:	mov	x22, x1
   12328:	bl	0x200f4 ; symbol stub for: _objc_retain
   1232c:	mov	x19, x0
   12330:	adrp	x8, 34 ; 0x34000
   12334:	ldr	x21, [x8, #0xe10]
   12338:	mov	x1, x21
   1233c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   12340:	tbz	w0, #0x0, 0x12354
   12344:	mov	x0, x19
   12348:	mov	x2, x21
   1234c:	bl	0x215e0
   12350:	b	0x12358
   12354:	mov	x0, #0x0

; ===== sub_12358 =====
   12358:	bl	0x200f4 ; symbol stub for: _objc_retain
   1235c:	mov	x21, x0
   12360:	adrp	x8, 34 ; 0x34000
   12364:	ldr	x23, [x8, #0xd70]
   12368:	mov	x1, x23
   1236c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   12370:	tbz	w0, #0x0, 0x12384
   12374:	mov	x0, x21
   12378:	mov	x2, x23
   1237c:	bl	0x215e0
   12380:	b	0x12388
   12384:	mov	x0, #0x0

; ===== sub_12388 =====
   12388:	bl	0x200f4 ; symbol stub for: _objc_retain
   1238c:	mov	x23, x0
   12390:	adrp	x8, 34 ; 0x34000
   12394:	add	x8, x8, #0xe18
   12398:	adrp	x9, 34 ; 0x34000
   1239c:	add	x9, x9, #0xe20
   123a0:	cmp	w22, #0x0
   123a4:	csel	x8, x8, x9, ne
   123a8:	ldr	x25, [x8]
   123ac:	adrp	x8, 34 ; 0x34000
   123b0:	add	x8, x8, #0xe28
   123b4:	adrp	x9, 34 ; 0x34000
   123b8:	add	x9, x9, #0xe30
   123bc:	csel	x8, x8, x9, ne
   123c0:	ldr	x24, [x8]
   123c4:	mov	x1, x25
   123c8:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   123cc:	tbz	w0, #0x0, 0x12408
   123d0:	mov	x0, x23
   123d4:	mov	x1, x24
   123d8:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   123dc:	tbz	w0, #0x0, 0x12408
   123e0:	tbnz	w20, #0x0, 0x12400
   123e4:	mov	x0, x23
   123e8:	mov	x1, x25
   123ec:	mov	x2, #0x0
   123f0:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   123f4:	mov	x0, x23
   123f8:	mov	x1, x24
   123fc:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   12400:	mov	w20, #0x1
   12404:	b	0x12418
   12408:	mov	x0, x22
   1240c:	mov	x1, x20
   12410:	bl	0x12150
   12414:	mov	x20, x0

; ===== sub_12418 =====
   12418:	mov	x0, x23
   1241c:	bl	0x200e8 ; symbol stub for: _objc_release
   12420:	mov	x0, x21
   12424:	bl	0x200e8 ; symbol stub for: _objc_release
   12428:	mov	x0, x19
   1242c:	bl	0x200e8 ; symbol stub for: _objc_release
   12430:	mov	x0, x20
   12434:	ldp	x29, x30, [sp, #0x40]
   12438:	ldp	x20, x19, [sp, #0x30]
   1243c:	ldp	x22, x21, [sp, #0x20]
   12440:	ldp	x24, x23, [sp, #0x10]
   12444:	ldp	x26, x25, [sp], #0x50
   12448:	ret
   1244c:	mov	x2, x1
   12450:	ldr	x0, [x0, #0x20]
   12454:	mov	w1, #0x0
   12458:	b	0x12308
   1245c:	stp	x22, x21, [sp, #-0x30]!
   12460:	stp	x20, x19, [sp, #0x10]
   12464:	stp	x29, x30, [sp, #0x20]
   12468:	add	x29, sp, #0x20
   1246c:	mov	x20, x1
   12470:	adrp	x0, 16 ; 0x22000
   12474:	add	x0, x0, #0xfe8 ; literal pool for: "SBMediaController"
   12478:	bl	0x105fc
   1247c:	mov	x29, x29
   12480:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   12484:	mov	x19, x0
   12488:	adrp	x8, 34 ; 0x34000
   1248c:	ldr	x21, [x8, #0xcc0]
   12490:	mov	x1, x21
   12494:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   12498:	tbz	w0, #0x0, 0x1251c
   1249c:	mov	x0, #0x0
   124a0:	mov	w1, #0x1
   124a4:	bl	0xbb6c
   124a8:	mov	x22, x0
   124ac:	tbnz	w20, #0x0, 0x12520
   124b0:	cbz	w22, 0x12520
   124b4:	mov	x0, x19
   124b8:	mov	x2, x21
   124bc:	bl	0x215e0
   124c0:	mov	x29, x29
   124c4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   124c8:	mov	x20, x0
   124cc:	adrp	x8, 35 ; 0x35000
   124d0:	ldr	x21, [x8, #0x158]
   124d4:	mov	x1, x21
   124d8:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   124dc:	tbz	w0, #0x0, 0x1250c
   124e0:	mov	x0, x20
   124e4:	mov	x2, x21
   124e8:	bl	0x215e0
   124ec:	mov	x29, x29
   124f0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   124f4:	cbz	x0, 0x1250c
   124f8:	mov	x21, x0
   124fc:	mov	w1, #0x0
   12500:	bl	0xbb6c
   12504:	mov	x0, x21
   12508:	bl	0x200e8 ; symbol stub for: _objc_release
   1250c:	mov	x0, x20
   12510:	bl	0x200e8 ; symbol stub for: _objc_release
   12514:	mov	w22, #0x1
   12518:	b	0x12520
   1251c:	mov	w22, #0x0

; ===== sub_12520 =====
   12520:	mov	x0, x19
   12524:	bl	0x200e8 ; symbol stub for: _objc_release
   12528:	mov	x0, x22
   1252c:	ldp	x29, x30, [sp, #0x20]
   12530:	ldp	x20, x19, [sp, #0x10]
   12534:	ldp	x22, x21, [sp], #0x30
   12538:	ret
   1253c:	stp	x24, x23, [sp, #-0x40]!
   12540:	stp	x22, x21, [sp, #0x10]
   12544:	stp	x20, x19, [sp, #0x20]
   12548:	stp	x29, x30, [sp, #0x30]
   1254c:	add	x29, sp, #0x30
   12550:	mov	x20, x1
   12554:	adrp	x0, 17 ; 0x23000
   12558:	add	x0, x0, #0xa5d ; literal pool for: "TUCallCenter"
   1255c:	bl	0x105fc
   12560:	mov	x29, x29
   12564:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   12568:	mov	x19, x0
   1256c:	adrp	x8, 34 ; 0x34000
   12570:	ldr	x21, [x8, #0xcc8]
   12574:	mov	x1, x21
   12578:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1257c:	tbz	w0, #0x0, 0x125dc
   12580:	adrp	x8, 34 ; 0x34000
   12584:	ldr	x22, [x8, #0xcd0]
   12588:	mov	x0, x19
   1258c:	mov	x1, x22
   12590:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   12594:	mov	x23, x0
   12598:	tbnz	w20, #0x0, 0x125e0
   1259c:	tbz	w23, #0x0, 0x125e0
   125a0:	mov	x0, x19
   125a4:	mov	x2, x21
   125a8:	bl	0x215e0
   125ac:	mov	x29, x29
   125b0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   125b4:	mov	x20, x0
   125b8:	cbz	x0, 0x125cc
   125bc:	mov	x0, x19
   125c0:	mov	x2, x22
   125c4:	mov	x3, x20
   125c8:	bl	0x21600
   125cc:	mov	x0, x20
   125d0:	bl	0x200e8 ; symbol stub for: _objc_release
   125d4:	mov	w23, #0x1
   125d8:	b	0x125e0
   125dc:	mov	w23, #0x0

; ===== sub_125e0 =====
   125e0:	mov	x0, x19
   125e4:	bl	0x200e8 ; symbol stub for: _objc_release
   125e8:	and	w0, w23, #0x1
   125ec:	ldp	x29, x30, [sp, #0x30]
   125f0:	ldp	x20, x19, [sp, #0x20]
   125f4:	ldp	x22, x21, [sp, #0x10]
   125f8:	ldp	x24, x23, [sp], #0x40
   125fc:	ret
   12600:	stp	x24, x23, [sp, #-0x40]!
   12604:	stp	x22, x21, [sp, #0x10]
   12608:	stp	x20, x19, [sp, #0x20]
   1260c:	stp	x29, x30, [sp, #0x30]
   12610:	add	x29, sp, #0x30
   12614:	mov	x22, x1
   12618:	adrp	x0, 17 ; 0x23000
   1261c:	add	x0, x0, #0xa5d ; literal pool for: "TUCallCenter"
   12620:	bl	0x105fc
   12624:	mov	x29, x29
   12628:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1262c:	mov	x19, x0
   12630:	adrp	x8, 34 ; 0x34000
   12634:	ldr	x20, [x8, #0xcd8]
   12638:	mov	x1, x20
   1263c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   12640:	tbz	w0, #0x0, 0x126b4
   12644:	adrp	x8, 34 ; 0x34000
   12648:	ldr	x21, [x8, #0xce0]
   1264c:	mov	x0, x19
   12650:	mov	x1, x21
   12654:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   12658:	mov	x23, x0
   1265c:	tbnz	w22, #0x0, 0x126cc
   12660:	tbz	w23, #0x0, 0x126cc
   12664:	adrp	x8, 34 ; 0x34000
   12668:	ldr	x22, [x8, #0xcc8]
   1266c:	mov	x0, x19
   12670:	mov	x1, x22
   12674:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   12678:	tbz	w0, #0x0, 0x126bc
   1267c:	mov	x0, x19
   12680:	mov	x2, x22
   12684:	bl	0x215e0
   12688:	mov	x29, x29
   1268c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   12690:	cbz	x0, 0x126bc
   12694:	mov	x22, x0
   12698:	mov	x0, x19
   1269c:	mov	x2, x21
   126a0:	mov	x3, x22
   126a4:	bl	0x21600
   126a8:	mov	x0, x22
   126ac:	bl	0x200e8 ; symbol stub for: _objc_release
   126b0:	b	0x126c8
   126b4:	mov	w23, #0x0
   126b8:	b	0x126cc
   126bc:	mov	x0, x19
   126c0:	mov	x2, x20
   126c4:	bl	0x215e0

; ===== sub_126c8 =====
   126c8:	mov	w23, #0x1

; ===== sub_126cc =====
   126cc:	mov	x0, x19
   126d0:	bl	0x200e8 ; symbol stub for: _objc_release
   126d4:	and	w0, w23, #0x1
   126d8:	ldp	x29, x30, [sp, #0x30]
   126dc:	ldp	x20, x19, [sp, #0x20]
   126e0:	ldp	x22, x21, [sp, #0x10]
   126e4:	ldp	x24, x23, [sp], #0x40
   126e8:	ret
   126ec:	tbnz	w1, #0x0, 0x12710
   126f0:	stp	x29, x30, [sp, #-0x10]!
   126f4:	mov	x29, sp
   126f8:	adrp	x0, 30 ; 0x30000
   126fc:	add	x0, x0, #0x68 ; "mobilephone-favorites://"
   12700:	adrp	x1, 30 ; 0x30000
   12704:	add	x1, x1, #0x88 ; "com.apple.mobilephone"
   12708:	bl	0xba78
   1270c:	ldp	x29, x30, [sp], #0x10
   12710:	mov	w0, #0x1
   12714:	ret
   12718:	tbnz	w1, #0x0, 0x1273c
   1271c:	stp	x29, x30, [sp, #-0x10]!
   12720:	mov	x29, sp
   12724:	adrp	x0, 30 ; 0x30000
   12728:	add	x0, x0, #0xc8 ; "mobilephone-recents://"
   1272c:	adrp	x1, 30 ; 0x30000
   12730:	add	x1, x1, #0x88 ; "com.apple.mobilephone"
   12734:	bl	0xba78
   12738:	ldp	x29, x30, [sp], #0x10
   1273c:	mov	w0, #0x1
   12740:	ret
   12744:	tbnz	w1, #0x0, 0x12768
   12748:	stp	x29, x30, [sp, #-0x10]!
   1274c:	mov	x29, sp
   12750:	adrp	x0, 30 ; 0x30000
   12754:	add	x0, x0, #0x108 ; "mobilephone-contacts://"
   12758:	adrp	x1, 30 ; 0x30000
   1275c:	add	x1, x1, #0x88 ; "com.apple.mobilephone"
   12760:	bl	0xba78
   12764:	ldp	x29, x30, [sp], #0x10
   12768:	mov	w0, #0x1
   1276c:	ret
   12770:	tbnz	w1, #0x0, 0x12794
   12774:	stp	x29, x30, [sp, #-0x10]!
   12778:	mov	x29, sp
   1277c:	adrp	x0, 30 ; 0x30000
   12780:	add	x0, x0, #0x148 ; "mobilephone-keypad://"
   12784:	adrp	x1, 30 ; 0x30000
   12788:	add	x1, x1, #0x88 ; "com.apple.mobilephone"
   1278c:	bl	0xba78
   12790:	ldp	x29, x30, [sp], #0x10
   12794:	mov	w0, #0x1
   12798:	ret
   1279c:	tbnz	w1, #0x0, 0x127c0
   127a0:	stp	x29, x30, [sp, #-0x10]!
   127a4:	mov	x29, sp
   127a8:	adrp	x0, 30 ; 0x30000
   127ac:	add	x0, x0, #0x188 ; "vmshow://"
   127b0:	adrp	x1, 30 ; 0x30000
   127b4:	add	x1, x1, #0x88 ; "com.apple.mobilephone"
   127b8:	bl	0xba78
   127bc:	ldp	x29, x30, [sp], #0x10
   127c0:	mov	w0, #0x1
   127c4:	ret
   127c8:	tbnz	w1, #0x0, 0x127e8
   127cc:	stp	x29, x30, [sp, #-0x10]!
   127d0:	mov	x29, sp
   127d4:	adrp	x0, 30 ; 0x30000
   127d8:	add	x0, x0, #0x1c8 ; "sms:"
   127dc:	mov	x1, #0x0
   127e0:	bl	0xba78
   127e4:	ldp	x29, x30, [sp], #0x10
   127e8:	mov	w0, #0x1
   127ec:	ret
   127f0:	tbnz	w1, #0x0, 0x12810
   127f4:	stp	x29, x30, [sp, #-0x10]!
   127f8:	mov	x29, sp
   127fc:	adrp	x0, 30 ; 0x30000
   12800:	add	x0, x0, #0x208 ; "mailto:"
   12804:	mov	x1, #0x0
   12808:	bl	0xba78
   1280c:	ldp	x29, x30, [sp], #0x10
   12810:	mov	w0, #0x1
   12814:	ret
   12818:	tbnz	w1, #0x0, 0x1283c
   1281c:	stp	x29, x30, [sp, #-0x10]!
   12820:	mov	x29, sp
   12824:	adrp	x0, 30 ; 0x30000
   12828:	add	x0, x0, #0x248 ; "clock-alarm://"
   1282c:	adrp	x1, 30 ; 0x30000
   12830:	add	x1, x1, #0x268 ; "com.apple.mobiletimer"
   12834:	bl	0xba78
   12838:	ldp	x29, x30, [sp], #0x10
   1283c:	mov	w0, #0x1
   12840:	ret
   12844:	tbnz	w1, #0x0, 0x12868
   12848:	stp	x29, x30, [sp, #-0x10]!
   1284c:	mov	x29, sp
   12850:	adrp	x0, 30 ; 0x30000
   12854:	add	x0, x0, #0x2a8 ; "clock-worldclock://"
   12858:	adrp	x1, 30 ; 0x30000
   1285c:	add	x1, x1, #0x268 ; "com.apple.mobiletimer"
   12860:	bl	0xba78
   12864:	ldp	x29, x30, [sp], #0x10
   12868:	mov	w0, #0x1
   1286c:	ret
   12870:	tbnz	w1, #0x0, 0x12894
   12874:	stp	x29, x30, [sp, #-0x10]!
   12878:	mov	x29, sp
   1287c:	adrp	x0, 30 ; 0x30000
   12880:	add	x0, x0, #0x2e8 ; "clock-stopwatch://"
   12884:	adrp	x1, 30 ; 0x30000
   12888:	add	x1, x1, #0x268 ; "com.apple.mobiletimer"
   1288c:	bl	0xba78
   12890:	ldp	x29, x30, [sp], #0x10
   12894:	mov	w0, #0x1
   12898:	ret
   1289c:	tbnz	w1, #0x0, 0x128c0
   128a0:	stp	x29, x30, [sp, #-0x10]!
   128a4:	mov	x29, sp
   128a8:	adrp	x0, 30 ; 0x30000
   128ac:	add	x0, x0, #0x328 ; "clock-timer://"
   128b0:	adrp	x1, 30 ; 0x30000
   128b4:	add	x1, x1, #0x268 ; "com.apple.mobiletimer"
   128b8:	bl	0xba78
   128bc:	ldp	x29, x30, [sp], #0x10
   128c0:	mov	w0, #0x1
   128c4:	ret
   128c8:	tbnz	w1, #0x0, 0x128ec
   128cc:	stp	x29, x30, [sp, #-0x10]!
   128d0:	mov	x29, sp
   128d4:	adrp	x0, 30 ; 0x30000
   128d8:	add	x0, x0, #0x368 ; "clock-sleep-alarm://"
   128dc:	adrp	x1, 30 ; 0x30000
   128e0:	add	x1, x1, #0x268 ; "com.apple.mobiletimer"
   128e4:	bl	0xba78
   128e8:	ldp	x29, x30, [sp], #0x10
   128ec:	mov	w0, #0x1
   128f0:	ret
   128f4:	tbnz	w1, #0x0, 0x1290c
   128f8:	stp	x29, x30, [sp, #-0x10]!
   128fc:	mov	x29, sp
   12900:	mov	w0, #0x5ef
   12904:	bl	0x1fd1c ; symbol stub for: _AudioServicesPlaySystemSound
   12908:	ldp	x29, x30, [sp], #0x10
   1290c:	mov	w0, #0x1
   12910:	ret
   12914:	tbnz	w1, #0x0, 0x1292c
   12918:	stp	x29, x30, [sp, #-0x10]!
   1291c:	mov	x29, sp
   12920:	mov	w0, #0x5f0
   12924:	bl	0x1fd1c ; symbol stub for: _AudioServicesPlaySystemSound
   12928:	ldp	x29, x30, [sp], #0x10
   1292c:	mov	w0, #0x1
   12930:	ret
   12934:	tbnz	w1, #0x0, 0x1294c
   12938:	stp	x29, x30, [sp, #-0x10]!
   1293c:	mov	x29, sp
   12940:	mov	w0, #0x5f1
   12944:	bl	0x1fd1c ; symbol stub for: _AudioServicesPlaySystemSound
   12948:	ldp	x29, x30, [sp], #0x10
   1294c:	mov	w0, #0x1
   12950:	ret
   12954:	sub	sp, sp, #0x90
   12958:	stp	x28, x27, [sp, #0x30]
   1295c:	stp	x26, x25, [sp, #0x40]
   12960:	stp	x24, x23, [sp, #0x50]
   12964:	stp	x22, x21, [sp, #0x60]
   12968:	stp	x20, x19, [sp, #0x70]
   1296c:	stp	x29, x30, [sp, #0x80]
   12970:	add	x29, sp, #0x80
   12974:	mov	x24, x1
   12978:	mov	x21, x0
   1297c:	adrp	x0, 17 ; 0x23000
   12980:	add	x0, x0, #0xc51 ; literal pool for: "SBIconController"
   12984:	bl	0x105fc
   12988:	mov	x29, x29
   1298c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   12990:	mov	x19, x0
   12994:	adrp	x8, 34 ; 0x34000
   12998:	ldr	x20, [x8, #0xce8]
   1299c:	mov	x1, x20
   129a0:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   129a4:	tbz	w0, #0x0, 0x129b8
   129a8:	mov	x0, x19
   129ac:	mov	x2, x20
   129b0:	bl	0x215e0
   129b4:	b	0x129bc
   129b8:	mov	x0, #0x0

; ===== sub_129bc =====
   129bc:	bl	0x200f4 ; symbol stub for: _objc_retain
   129c0:	mov	x20, x0
   129c4:	adrp	x8, 34 ; 0x34000
   129c8:	ldr	x22, [x8, #0xcf0]
   129cc:	mov	x1, x22
   129d0:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   129d4:	tbz	w0, #0x0, 0x129e8
   129d8:	mov	x0, x20
   129dc:	mov	x2, x22
   129e0:	bl	0x215e0
   129e4:	b	0x129ec
   129e8:	mov	x0, #0x0

; ===== sub_129ec =====
   129ec:	bl	0x200f4 ; symbol stub for: _objc_retain
   129f0:	mov	x23, x0
   129f4:	adrp	x8, 34 ; 0x34000
   129f8:	ldr	x1, [x8, #0xcf8]
   129fc:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   12a00:	mov	x22, x0
   12a04:	tbnz	w24, #0x0, 0x12ad8
   12a08:	tbz	w22, #0x0, 0x12ad8
   12a0c:	adrp	x8, 32 ; 0x32000
   12a10:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   12a14:	str	x8, [sp, #0x8]
   12a18:	adrp	x8, 16 ; 0x22000
   12a1c:	ldr	d0, [x8, #0x8f8]
   12a20:	str	d0, [sp, #0x10]
   12a24:	adrp	x8, 0 ; 0x12000
   12a28:	add	x8, x8, #0xb14
   12a2c:	adrp	x9, 26 ; 0x2c000
   12a30:	add	x9, x9, #0xb0
   12a34:	stp	x8, x9, [sp, #0x18]
   12a38:	mov	x0, x23
   12a3c:	bl	0x200f4 ; symbol stub for: _objc_retain
   12a40:	str	x0, [sp, #0x28]
   12a44:	add	x0, sp, #0x8
   12a48:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   12a4c:	mov	x24, x0
   12a50:	bl	0xc264
   12a54:	mov	x29, x29
   12a58:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   12a5c:	cbz	x0, 0x12abc
   12a60:	mov	x26, x0
   12a64:	ldr	x0, [x21, #0x20]
   12a68:	adrp	x8, 34 ; 0x34000
   12a6c:	ldr	x25, [x8, #0xc30]
   12a70:	mov	x1, x25
   12a74:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   12a78:	mov	x27, x0
   12a7c:	mov	x0, x26
   12a80:	bl	0x200e8 ; symbol stub for: _objc_release
   12a84:	tbz	w27, #0x0, 0x12abc
   12a88:	ldr	x0, [x21, #0x20]
   12a8c:	mov	x1, x25
   12a90:	mov	x2, #0x0
   12a94:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   12a98:	mov	x0, #0x0
   12a9c:	mov	w1, #0x7480
   12aa0:	movk	w1, #0x1ad2, lsl #16
   12aa4:	bl	0x1ff38 ; symbol stub for: _dispatch_time
   12aa8:	adrp	x1, 32 ; 0x32000
   12aac:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
   12ab0:	mov	x2, x24
   12ab4:	bl	0x1fefc ; symbol stub for: _dispatch_after
   12ab8:	b	0x12ac8
   12abc:	ldr	x8, [x24, #0x10]
   12ac0:	mov	x0, x24
   12ac4:	blr	x8

; ===== sub_12ac8 =====
   12ac8:	mov	x0, x24
   12acc:	bl	0x200e8 ; symbol stub for: _objc_release
   12ad0:	ldr	x0, [sp, #0x28]
   12ad4:	bl	0x200e8 ; symbol stub for: _objc_release
   12ad8:	mov	x0, x23
   12adc:	bl	0x200e8 ; symbol stub for: _objc_release
   12ae0:	mov	x0, x20
   12ae4:	bl	0x200e8 ; symbol stub for: _objc_release
   12ae8:	mov	x0, x19
   12aec:	bl	0x200e8 ; symbol stub for: _objc_release
   12af0:	and	w0, w22, #0x1
   12af4:	ldp	x29, x30, [sp, #0x80]
   12af8:	ldp	x20, x19, [sp, #0x70]
   12afc:	ldp	x22, x21, [sp, #0x60]
   12b00:	ldp	x24, x23, [sp, #0x50]
   12b04:	ldp	x26, x25, [sp, #0x40]
   12b08:	ldp	x28, x27, [sp, #0x30]
   12b0c:	add	sp, sp, #0x90
   12b10:	ret
   12b14:	stp	x22, x21, [sp, #-0x30]!
   12b18:	stp	x20, x19, [sp, #0x10]
   12b1c:	stp	x29, x30, [sp, #0x20]
   12b20:	add	x29, sp, #0x20
   12b24:	mov	x19, x0
   12b28:	ldr	x0, [x0, #0x20]
   12b2c:	adrp	x8, 34 ; 0x34000
   12b30:	ldr	x20, [x8, #0xd00]
   12b34:	mov	x1, x20
   12b38:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   12b3c:	tbz	w0, #0x0, 0x12b50
   12b40:	ldr	x0, [x19, #0x20]
   12b44:	mov	x2, x20
   12b48:	bl	0x215e0
   12b4c:	b	0x12b54
   12b50:	mov	x0, #0x0

; ===== sub_12b54 =====
   12b54:	bl	0x200f4 ; symbol stub for: _objc_retain
   12b58:	mov	x20, x0
   12b5c:	adrp	x8, 34 ; 0x34000
   12b60:	ldr	x21, [x8, #0xd08]
   12b64:	mov	x1, x21
   12b68:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   12b6c:	tbz	w0, #0x0, 0x12b84
   12b70:	mov	x0, x20
   12b74:	mov	x1, x21
   12b78:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   12b7c:	mov	x2, x0
   12b80:	b	0x12b88
   12b84:	mov	x2, #0x0

; ===== sub_12b88 =====
   12b88:	ldr	x0, [x19, #0x20]
   12b8c:	adrp	x8, 34 ; 0x34000
   12b90:	ldr	x1, [x8, #0xcf8]
   12b94:	mov	w3, #0x1
   12b98:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   12b9c:	mov	x0, x20
   12ba0:	ldp	x29, x30, [sp, #0x20]
   12ba4:	ldp	x20, x19, [sp, #0x10]
   12ba8:	ldp	x22, x21, [sp], #0x30
   12bac:	b	0x200e8 ; symbol stub for: _objc_release
   12bb0:	tbnz	w1, #0x0, 0x12bcc
   12bb4:	stp	x29, x30, [sp, #-0x10]!
   12bb8:	mov	x29, sp
   12bbc:	adrp	x0, 17 ; 0x23000
   12bc0:	add	x0, x0, #0xc6e ; literal pool for: "com.johndie.triggr/back"
   12bc4:	bl	0x1fff8 ; symbol stub for: _notify_post
   12bc8:	ldp	x29, x30, [sp], #0x10
   12bcc:	mov	w0, #0x1
   12bd0:	ret
   12bd4:	mov	x0, x1
   12bd8:	b	0x12bdc

; ===== sub_12bdc =====
   12bdc:	stp	x22, x21, [sp, #-0x30]!
   12be0:	stp	x20, x19, [sp, #0x10]
   12be4:	stp	x29, x30, [sp, #0x20]
   12be8:	add	x29, sp, #0x20
   12bec:	mov	x22, x0
   12bf0:	adrp	x0, 16 ; 0x22000
   12bf4:	add	x0, x0, #0xc65 ; literal pool for: "SBLockScreenManager"
   12bf8:	bl	0x20088 ; symbol stub for: _objc_getClass
   12bfc:	mov	x19, x0
   12c00:	adrp	x8, 35 ; 0x35000
   12c04:	ldr	x1, [x8, #0x788]
   12c08:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   12c0c:	tbz	w0, #0x0, 0x12c28
   12c10:	mov	x0, x19
   12c14:	bl	0x21f20
   12c18:	mov	x29, x29
   12c1c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   12c20:	mov	x19, x0
   12c24:	b	0x12c2c
   12c28:	mov	x19, #0x0

; ===== sub_12c2c =====
   12c2c:	adrp	x8, 34 ; 0x34000
   12c30:	ldr	x21, [x8, #0xe38]
   12c34:	mov	x0, x19
   12c38:	mov	x1, x21
   12c3c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   12c40:	mov	x20, x0
   12c44:	tbnz	w22, #0x0, 0x12d08
   12c48:	tbz	w20, #0x0, 0x12d08
   12c4c:	adrp	x8, 35 ; 0x35000
   12c50:	ldr	x1, [x8, #0x3f8]
   12c54:	mov	x0, x19
   12c58:	bl	0x5b7c
   12c5c:	cbz	w0, 0x12d08
   12c60:	bl	0x12de0
   12c64:	tbnz	w0, #0x0, 0x12c70
   12c68:	fmov	s0, #1.00000000
   12c6c:	bl	0x13178
   12c70:	mov	x0, x19
   12c74:	mov	x1, x21
   12c78:	mov	w2, #0x0
   12c7c:	mov	x3, #0x0
   12c80:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   12c84:	tbnz	w0, #0x0, 0x12d08
   12c88:	adrp	x0, 17 ; 0x23000
   12c8c:	add	x0, x0, #0x95c ; literal pool for: "SBCoverSheetPresentationManager"
   12c90:	bl	0x105fc
   12c94:	mov	x29, x29
   12c98:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   12c9c:	mov	x22, x0
   12ca0:	cbz	x0, 0x12cb0
   12ca4:	mov	x0, x22
   12ca8:	bl	0x200f4 ; symbol stub for: _objc_retain
   12cac:	b	0x12cc4
   12cb0:	adrp	x8, 34 ; 0x34000
   12cb4:	ldr	x0, [x8, #0xc90]
   12cb8:	bl	0x115d8
   12cbc:	mov	x29, x29
   12cc0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue

; ===== sub_12cc4 =====
   12cc4:	mov	x21, x0
   12cc8:	mov	x0, x22
   12ccc:	bl	0x200e8 ; symbol stub for: _objc_release
   12cd0:	adrp	x8, 34 ; 0x34000
   12cd4:	ldr	x22, [x8, #0xc98]
   12cd8:	mov	x0, x21
   12cdc:	mov	x1, x22
   12ce0:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   12ce4:	tbz	w0, #0x0, 0x12d00
   12ce8:	mov	x0, x21
   12cec:	mov	x1, x22
   12cf0:	mov	w2, #0x0
   12cf4:	mov	w3, #0x1
   12cf8:	mov	x4, #0x0
   12cfc:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   12d00:	mov	x0, x21
   12d04:	bl	0x200e8 ; symbol stub for: _objc_release
   12d08:	mov	x0, x19
   12d0c:	bl	0x200e8 ; symbol stub for: _objc_release
   12d10:	and	w0, w20, #0x1
   12d14:	ldp	x29, x30, [sp, #0x20]
   12d18:	ldp	x20, x19, [sp, #0x10]
   12d1c:	ldp	x22, x21, [sp], #0x30
   12d20:	ret
   12d24:	stp	x20, x19, [sp, #-0x20]!
   12d28:	stp	x29, x30, [sp, #0x10]
   12d2c:	add	x29, sp, #0x10
   12d30:	mov	x19, x1
   12d34:	adrp	x0, 16 ; 0x22000
   12d38:	add	x0, x0, #0xc65 ; literal pool for: "SBLockScreenManager"
   12d3c:	bl	0x20088 ; symbol stub for: _objc_getClass
   12d40:	mov	x20, x0
   12d44:	adrp	x8, 35 ; 0x35000
   12d48:	ldr	x1, [x8, #0x788]
   12d4c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   12d50:	tbz	w0, #0x0, 0x12d74
   12d54:	cbz	w19, 0x12d7c
   12d58:	mov	w0, #0x1
   12d5c:	bl	0x12bdc
   12d60:	cbz	w0, 0x12dc0
   12d64:	mov	w0, #0x1
   12d68:	ldp	x29, x30, [sp, #0x10]
   12d6c:	ldp	x20, x19, [sp], #0x20
   12d70:	b	0x110e4
   12d74:	mov	w0, #0x0
   12d78:	b	0x12dc0
   12d7c:	mov	x0, x20
   12d80:	bl	0x21f20
   12d84:	mov	x29, x29
   12d88:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   12d8c:	mov	x19, x0
   12d90:	adrp	x8, 35 ; 0x35000
   12d94:	ldr	x1, [x8, #0x3f8]
   12d98:	bl	0x5b7c
   12d9c:	mov	x20, x0
   12da0:	mov	x0, x19
   12da4:	bl	0x200e8 ; symbol stub for: _objc_release
   12da8:	mov	w0, #0x0
   12dac:	cbz	w20, 0x12db8
   12db0:	bl	0x12bdc
   12db4:	b	0x12dbc
   12db8:	bl	0x110e4

; ===== sub_12dbc =====
   12dbc:	mov	w0, #0x1

; ===== sub_12dc0 =====
   12dc0:	ldp	x29, x30, [sp, #0x10]
   12dc4:	ldp	x20, x19, [sp], #0x20
   12dc8:	ret
   12dcc:	ldr	x8, [x0, #0x20]
   12dd0:	ldr	w9, [x0, #0x28]
   12dd4:	add	w1, w9, #0x1
   12dd8:	mov	x0, x8
   12ddc:	b	0x10678

; ===== sub_12de0 =====
   12de0:	stp	x20, x19, [sp, #-0x20]!
   12de4:	stp	x29, x30, [sp, #0x10]
   12de8:	add	x29, sp, #0x10
   12dec:	adrp	x0, 17 ; 0x23000
   12df0:	add	x0, x0, #0xce4 ; literal pool for: "SBBacklightController"
   12df4:	bl	0x105fc
   12df8:	mov	x29, x29
   12dfc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   12e00:	mov	x19, x0
   12e04:	adrp	x8, 34 ; 0x34000
   12e08:	ldr	x20, [x8, #0xd40]
   12e0c:	mov	x1, x20
   12e10:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   12e14:	tbz	w0, #0x0, 0x12e2c
   12e18:	mov	x0, x19
   12e1c:	mov	x1, x20
   12e20:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   12e24:	mov	x20, x0
   12e28:	b	0x12e30
   12e2c:	mov	w20, #0x1

; ===== sub_12e30 =====
   12e30:	mov	x0, x19
   12e34:	bl	0x200e8 ; symbol stub for: _objc_release
   12e38:	mov	x0, x20
   12e3c:	ldp	x29, x30, [sp, #0x10]
   12e40:	ldp	x20, x19, [sp], #0x20
   12e44:	ret
   12e48:	ldr	x0, [x0, #0x20]
   12e4c:	adrp	x8, 34 ; 0x34000
   12e50:	ldr	x1, [x8, #0xc40]
   12e54:	mov	w2, #0x1
   12e58:	b	0x200a0 ; symbol stub for: _objc_msgSend

; ===== sub_12e5c =====
   12e5c:	stp	x22, x21, [sp, #-0x30]!
   12e60:	stp	x20, x19, [sp, #0x10]
   12e64:	stp	x29, x30, [sp, #0x20]
   12e68:	add	x29, sp, #0x20
   12e6c:	adrp	x8, 35 ; 0x35000
   12e70:	ldr	x0, [x8, #0xa60] ; Objc class ref: bad class ref
   12e74:	bl	0x21f00
   12e78:	mov	x29, x29
   12e7c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   12e80:	mov	x19, x0
   12e84:	adrp	x8, 34 ; 0x34000
   12e88:	ldr	x20, [x8, #0xd68]
   12e8c:	mov	x1, x20
   12e90:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   12e94:	tbz	w0, #0x0, 0x12ea8
   12e98:	mov	x0, x19
   12e9c:	mov	x2, x20
   12ea0:	bl	0x215e0
   12ea4:	b	0x12eac
   12ea8:	mov	x0, #0x0

; ===== sub_12eac =====
   12eac:	bl	0x200f4 ; symbol stub for: _objc_retain
   12eb0:	mov	x20, x0
   12eb4:	adrp	x8, 34 ; 0x34000
   12eb8:	ldr	x21, [x8, #0xd70]
   12ebc:	mov	x1, x21
   12ec0:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   12ec4:	tbz	w0, #0x0, 0x12ed8
   12ec8:	mov	x0, x20
   12ecc:	mov	x2, x21
   12ed0:	bl	0x215e0
   12ed4:	b	0x12edc
   12ed8:	mov	x0, #0x0

; ===== sub_12edc =====
   12edc:	bl	0x200f4 ; symbol stub for: _objc_retain
   12ee0:	mov	x21, x0
   12ee4:	adrp	x8, 34 ; 0x34000
   12ee8:	ldr	x22, [x8, #0xd78]
   12eec:	mov	x1, x22
   12ef0:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   12ef4:	tbz	w0, #0x0, 0x12f0c
   12ef8:	mov	x0, x21
   12efc:	mov	x2, x22
   12f00:	bl	0x215e0
   12f04:	mov	x22, x0
   12f08:	b	0x12f10
   12f0c:	mov	x22, #0x0

; ===== sub_12f10 =====
   12f10:	mov	x0, x22
   12f14:	bl	0x2010c ; symbol stub for: _objc_retainAutoreleaseReturnValue
   12f18:	mov	x0, x21
   12f1c:	bl	0x200e8 ; symbol stub for: _objc_release
   12f20:	mov	x0, x20
   12f24:	bl	0x200e8 ; symbol stub for: _objc_release
   12f28:	mov	x0, x19
   12f2c:	bl	0x200e8 ; symbol stub for: _objc_release
   12f30:	mov	x0, x22
   12f34:	ldp	x29, x30, [sp, #0x20]
   12f38:	ldp	x20, x19, [sp, #0x10]
   12f3c:	ldp	x22, x21, [sp], #0x30
   12f40:	ret
   12f44:	ret
   12f48:	ret

; ===== sub_12f4c =====
   12f4c:	sub	sp, sp, #0x120
   12f50:	stp	x26, x25, [sp, #0xd0]
   12f54:	stp	x24, x23, [sp, #0xe0]
   12f58:	stp	x22, x21, [sp, #0xf0]
   12f5c:	stp	x20, x19, [sp, #0x100]
   12f60:	stp	x29, x30, [sp, #0x110]
   12f64:	add	x29, sp, #0x110
   12f68:	adrp	x8, 32 ; 0x32000
   12f6c:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   12f70:	ldr	x8, [x8]
   12f74:	stur	x8, [x29, #-0x48]
   12f78:	adrp	x8, 34 ; 0x34000
   12f7c:	ldr	x0, [x8, #0xe08]
   12f80:	bl	0x130bc
   12f84:	mov	x29, x29
   12f88:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   12f8c:	mov	x22, x0
   12f90:	cbz	x0, 0x12fcc

; ===== sub_12f94 =====
   12f94:	ldur	x8, [x29, #-0x48]
   12f98:	adrp	x9, 32 ; 0x32000
   12f9c:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   12fa0:	ldr	x9, [x9]
   12fa4:	cmp	x9, x8
   12fa8:	b.ne	0x130b4
   12fac:	mov	x0, x22
   12fb0:	ldp	x29, x30, [sp, #0x110]
   12fb4:	ldp	x20, x19, [sp, #0x100]
   12fb8:	ldp	x22, x21, [sp, #0xf0]
   12fbc:	ldp	x24, x23, [sp, #0xe0]
   12fc0:	ldp	x26, x25, [sp, #0xd0]
   12fc4:	add	sp, sp, #0x120
   12fc8:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue
   12fcc:	movi.16b	v0, #0x0
   12fd0:	stp	q0, q0, [sp, #0x20]
   12fd4:	stp	q0, q0, [sp]
   12fd8:	adrp	x0, 32 ; 0x32000
   12fdc:	add	x0, x0, #0x8e8
   12fe0:	mov	x2, sp
   12fe4:	add	x3, sp, #0x48
   12fe8:	mov	w4, #0x10
   12fec:	bl	0x20980
   12ff0:	mov	x21, x0
   12ff4:	cbz	x0, 0x130ac
   12ff8:	ldr	x8, [sp, #0x10]
   12ffc:	ldr	x24, [x8]
   13000:	adrp	x19, 29 ; 0x30000
   13004:	add	x19, x19, #0x4e8 ; "_volumeControl"
   13008:	adrp	x20, 31 ; 0x32000
   1300c:	add	x20, x20, #0x8e8
   13010:	mov	x25, #0x0
   13014:	ldr	x8, [sp, #0x10]
   13018:	ldr	x8, [x8]
   1301c:	cmp	x8, x24
   13020:	b.eq	0x1302c
   13024:	mov	x0, x20
   13028:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   1302c:	ldr	x8, [sp, #0x8]
   13030:	ldr	x0, [x8, x25, lsl #3]
   13034:	bl	0x20100 ; symbol stub for: _objc_retainAutorelease
   13038:	bl	0x20280
   1303c:	bl	0x105fc
   13040:	mov	x29, x29
   13044:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   13048:	mov	x23, x0
   1304c:	mov	x2, x19
   13050:	bl	0x223e0
   13054:	mov	x29, x29
   13058:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1305c:	mov	x22, x0
   13060:	mov	x0, x23
   13064:	bl	0x200e8 ; symbol stub for: _objc_release
   13068:	cbnz	x22, 0x12f94

; ===== sub_1306c =====
   1306c:	add	x25, x25, #0x1
   13070:	cmp	x21, x25
   13074:	b.ne	0x13014
   13078:	b	0x13090
   1307c:	cmp	w1, #0x1
   13080:	b.ne	0x130b8
   13084:	bl	0x2004c ; symbol stub for: _objc_begin_catch
   13088:	bl	0x20064 ; symbol stub for: _objc_end_catch
   1308c:	b	0x1306c

; ===== sub_13090 =====
   13090:	mov	x2, sp
   13094:	add	x3, sp, #0x48
   13098:	mov	x0, x20
   1309c:	mov	w4, #0x10
   130a0:	bl	0x20980
   130a4:	mov	x21, x0
   130a8:	cbnz	x0, 0x13010
   130ac:	mov	x22, #0x0
   130b0:	b	0x12f94
   130b4:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
   130b8:	bl	0x1fe54 ; symbol stub for: __Unwind_Resume

; ===== sub_130bc =====
   130bc:	stp	x22, x21, [sp, #-0x30]!
   130c0:	stp	x20, x19, [sp, #0x10]
   130c4:	stp	x29, x30, [sp, #0x20]
   130c8:	add	x29, sp, #0x20
   130cc:	mov	x20, x0
   130d0:	adrp	x8, 34 ; 0x35000
   130d4:	ldr	x0, [x8, #0xa60] ; Objc class ref: bad class ref
   130d8:	bl	0x21f00
   130dc:	mov	x29, x29
   130e0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   130e4:	mov	x19, x0
   130e8:	mov	x1, x20
   130ec:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   130f0:	tbz	w0, #0x0, 0x13110
   130f4:	mov	x0, x19
   130f8:	mov	x1, x20
   130fc:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   13100:	mov	x29, x29
   13104:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   13108:	mov	x20, x0
   1310c:	b	0x1315c
   13110:	adrp	x0, 16 ; 0x23000
   13114:	add	x0, x0, #0x85f ; literal pool for: "SBMainWorkspace"
   13118:	bl	0x105fc
   1311c:	mov	x29, x29
   13120:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   13124:	mov	x21, x0
   13128:	mov	x1, x20
   1312c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   13130:	tbz	w0, #0x0, 0x13150
   13134:	mov	x0, x21
   13138:	mov	x1, x20
   1313c:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   13140:	mov	x29, x29
   13144:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   13148:	mov	x20, x0
   1314c:	b	0x13154
   13150:	mov	x20, #0x0

; ===== sub_13154 =====
   13154:	mov	x0, x21
   13158:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_1315c =====
   1315c:	mov	x0, x19
   13160:	bl	0x200e8 ; symbol stub for: _objc_release
   13164:	mov	x0, x20
   13168:	ldp	x29, x30, [sp, #0x20]
   1316c:	ldp	x20, x19, [sp, #0x10]
   13170:	ldp	x22, x21, [sp], #0x30
   13174:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue

; ===== sub_13178 =====
   13178:	stp	d9, d8, [sp, #-0x40]!
   1317c:	stp	x22, x21, [sp, #0x10]
   13180:	stp	x20, x19, [sp, #0x20]
   13184:	stp	x29, x30, [sp, #0x30]
   13188:	add	x29, sp, #0x30
   1318c:	mov.16b	v8, v0
   13190:	adrp	x0, 16 ; 0x23000
   13194:	add	x0, x0, #0xce4 ; literal pool for: "SBBacklightController"
   13198:	bl	0x105fc
   1319c:	mov	x29, x29
   131a0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   131a4:	mov	x19, x0
   131a8:	adrp	x8, 33 ; 0x34000
   131ac:	ldr	x21, [x8, #0xe40]
   131b0:	mov	x1, x21
   131b4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   131b8:	mov	x20, x0
   131bc:	tbz	w0, #0x0, 0x131e4
   131c0:	adrp	x8, 15 ; 0x22000
   131c4:	ldr	d1, [x8, #0x990]
   131c8:	mov	x0, x19
   131cc:	mov	x1, x21
   131d0:	mov.16b	v0, v8
   131d4:	mov	w2, #0x3
   131d8:	mov	w3, #0x0
   131dc:	mov	x4, #0x0
   131e0:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   131e4:	mov	x0, x19
   131e8:	bl	0x200e8 ; symbol stub for: _objc_release
   131ec:	and	w0, w20, #0x1
   131f0:	ldp	x29, x30, [sp, #0x30]
   131f4:	ldp	x20, x19, [sp, #0x20]
   131f8:	ldp	x22, x21, [sp, #0x10]
   131fc:	ldp	d9, d8, [sp], #0x40
   13200:	ret
   13204:	sub	sp, sp, #0x40
   13208:	stp	x22, x21, [sp, #0x10]
   1320c:	stp	x20, x19, [sp, #0x20]
   13210:	stp	x29, x30, [sp, #0x30]
   13214:	add	x29, sp, #0x30
   13218:	mov	x21, x1
   1321c:	mov	x20, x0
   13220:	stp	xzr, xzr, [sp]
   13224:	ldr	x0, [x0, #0x20]
   13228:	mov	x1, sp
   1322c:	bl	0x132c8
   13230:	mov	x19, x0
   13234:	tbnz	w21, #0x0, 0x13258
   13238:	eor	w8, w19, #0x1
   1323c:	cbnz	w8, 0x13258
   13240:	ldr	w8, [x20, #0x28]
   13244:	cmn	w8, #0x1
   13248:	b.eq	0x13260
   1324c:	cmp	w8, #0x0
   13250:	cset	w1, ne
   13254:	b	0x13270
   13258:	ldr	x20, [sp, #0x8]
   1325c:	b	0x13280
   13260:	ldr	x0, [sp]
   13264:	ldr	x8, [x0, #0x10]
   13268:	blr	x8
   1326c:	eor	w1, w0, #0x1

; ===== sub_13270 =====
   13270:	ldr	x20, [sp, #0x8]
   13274:	ldr	x8, [x20, #0x10]
   13278:	mov	x0, x20
   1327c:	blr	x8

; ===== sub_13280 =====
   13280:	ldr	x0, [sp]
   13284:	bl	0x200e8 ; symbol stub for: _objc_release
   13288:	mov	x0, x20
   1328c:	bl	0x200e8 ; symbol stub for: _objc_release
   13290:	mov	x0, x19
   13294:	ldp	x29, x30, [sp, #0x30]
   13298:	ldp	x20, x19, [sp, #0x20]
   1329c:	ldp	x22, x21, [sp, #0x10]
   132a0:	add	sp, sp, #0x40
   132a4:	ret
   132a8:	b	0x132ac

; ===== sub_132ac =====
   132ac:	mov	x19, x0
   132b0:	ldr	x0, [sp]
   132b4:	bl	0x200e8 ; symbol stub for: _objc_release
   132b8:	ldr	x0, [sp, #0x8]
   132bc:	bl	0x200e8 ; symbol stub for: _objc_release
   132c0:	mov	x0, x19
   132c4:	bl	0x1fe54 ; symbol stub for: __Unwind_Resume

; ===== sub_132c8 =====
   132c8:	stp	d9, d8, [sp, #-0x60]!
   132cc:	stp	x26, x25, [sp, #0x10]
   132d0:	stp	x24, x23, [sp, #0x20]
   132d4:	stp	x22, x21, [sp, #0x30]
   132d8:	stp	x20, x19, [sp, #0x40]
   132dc:	stp	x29, x30, [sp, #0x50]
   132e0:	add	x29, sp, #0x50
   132e4:	sub	sp, sp, #0x4e0
   132e8:	mov	x20, x1
   132ec:	bl	0x200f4 ; symbol stub for: _objc_retain
   132f0:	mov	x19, x0
   132f4:	adrp	x2, 29 ; 0x30000
   132f8:	add	x2, x2, #0x568 ; "flashlight"
   132fc:	bl	0x21000
   13300:	cbz	w0, 0x133e8
   13304:	adrp	x0, 16 ; 0x23000
   13308:	add	x0, x0, #0xca6 ; literal pool for: "SBUIFlashlightController"
   1330c:	bl	0x105fc
   13310:	mov	x29, x29
   13314:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   13318:	mov	x21, x0
   1331c:	adrp	x8, 33 ; 0x34000
   13320:	ldr	x1, [x8, #0xd20]
   13324:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   13328:	tbz	w0, #0x0, 0x134e8
   1332c:	adrp	x8, 33 ; 0x34000
   13330:	ldr	x1, [x8, #0xd18]
   13334:	mov	x0, x21
   13338:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1333c:	tbz	w0, #0x0, 0x134e8
   13340:	adrp	x23, 31 ; 0x32000
   13344:	ldr	x23, [x23, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   13348:	stur	x23, [x29, #-0x78]
   1334c:	adrp	x8, 15 ; 0x22000
   13350:	ldr	d8, [x8, #0x8f8]
   13354:	stur	d8, [x29, #-0x70]
   13358:	adrp	x8, 1 ; 0x14000
   1335c:	add	x8, x8, #0x3c0
   13360:	adrp	x9, 25 ; 0x2c000
   13364:	add	x9, x9, #0xd70
   13368:	stp	x8, x9, [x29, #-0x68]
   1336c:	mov	x0, x21
   13370:	bl	0x200f4 ; symbol stub for: _objc_retain
   13374:	mov	x22, x0
   13378:	stur	x0, [x29, #-0x58]
   1337c:	sub	x0, x29, #0x78
   13380:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   13384:	ldr	x8, [x20]
   13388:	str	x0, [x20]
   1338c:	mov	x0, x8
   13390:	bl	0x200e8 ; symbol stub for: _objc_release
   13394:	stur	x23, [x29, #-0xa0]
   13398:	stur	d8, [x29, #-0x98]
   1339c:	adrp	x8, 1 ; 0x14000
   133a0:	add	x8, x8, #0x40c
   133a4:	adrp	x9, 25 ; 0x2c000
   133a8:	add	x9, x9, #0x2e0
   133ac:	stp	x8, x9, [x29, #-0x90]
   133b0:	mov	x0, x22
   133b4:	bl	0x200f4 ; symbol stub for: _objc_retain
   133b8:	stur	x0, [x29, #-0x80]
   133bc:	sub	x0, x29, #0xa0
   133c0:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   133c4:	ldr	x8, [x20, #0x8]
   133c8:	str	x0, [x20, #0x8]
   133cc:	mov	x0, x8
   133d0:	bl	0x200e8 ; symbol stub for: _objc_release
   133d4:	ldur	x0, [x29, #-0x80]
   133d8:	bl	0x200e8 ; symbol stub for: _objc_release
   133dc:	mov	w22, #0x1
   133e0:	ldur	x23, [x29, #-0x58]
   133e4:	b	0x136c8
   133e8:	adrp	x2, 29 ; 0x30000
   133ec:	add	x2, x2, #0x588 ; "wifi"
   133f0:	mov	x0, x19
   133f4:	bl	0x21000
   133f8:	cbz	w0, 0x135c4
   133fc:	adrp	x0, 16 ; 0x23000
   13400:	add	x0, x0, #0xde5 ; literal pool for: "SBWiFiManager"
   13404:	bl	0x105fc
   13408:	mov	x29, x29
   1340c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   13410:	mov	x21, x0
   13414:	adrp	x8, 33 ; 0x34000
   13418:	ldr	x1, [x8, #0xe50]
   1341c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   13420:	tbz	w0, #0x0, 0x14380
   13424:	adrp	x8, 33 ; 0x34000
   13428:	ldr	x1, [x8, #0xe58]
   1342c:	mov	x0, x21
   13430:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   13434:	tbz	w0, #0x0, 0x14380
   13438:	adrp	x22, 31 ; 0x32000
   1343c:	ldr	x22, [x22, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   13440:	str	x22, [sp, #0x418]
   13444:	adrp	x8, 15 ; 0x22000
   13448:	ldr	d8, [x8, #0x8f8]
   1344c:	str	d8, [sp, #0x420]
   13450:	adrp	x8, 1 ; 0x14000
   13454:	add	x8, x8, #0x59c
   13458:	adrp	x9, 25 ; 0x2c000
   1345c:	add	x9, x9, #0xd70
   13460:	str	x8, [sp, #0x428]
   13464:	str	x9, [sp, #0x430]
   13468:	mov	x0, x21
   1346c:	bl	0x200f4 ; symbol stub for: _objc_retain
   13470:	mov	x21, x0
   13474:	str	x0, [sp, #0x438]
   13478:	add	x0, sp, #0x418
   1347c:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   13480:	ldr	x8, [x20]
   13484:	str	x0, [x20]
   13488:	mov	x0, x8
   1348c:	bl	0x200e8 ; symbol stub for: _objc_release
   13490:	str	x22, [sp, #0x3f0]
   13494:	str	d8, [sp, #0x3f8]
   13498:	adrp	x8, 1 ; 0x14000
   1349c:	add	x8, x8, #0x5ac
   134a0:	adrp	x9, 25 ; 0x2c000
   134a4:	add	x9, x9, #0x2e0
   134a8:	str	x8, [sp, #0x400]
   134ac:	str	x9, [sp, #0x408]
   134b0:	mov	x0, x21
   134b4:	bl	0x200f4 ; symbol stub for: _objc_retain
   134b8:	mov	x21, x0
   134bc:	str	x0, [sp, #0x410]
   134c0:	add	x0, sp, #0x3f0
   134c4:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   134c8:	ldr	x8, [x20, #0x8]
   134cc:	str	x0, [x20, #0x8]
   134d0:	mov	x0, x8
   134d4:	bl	0x200e8 ; symbol stub for: _objc_release
   134d8:	ldr	x0, [sp, #0x410]
   134dc:	bl	0x200e8 ; symbol stub for: _objc_release
   134e0:	ldr	x0, [sp, #0x438]
   134e4:	b	0x138ac
   134e8:	adrp	x8, 34 ; 0x35000
   134ec:	ldr	x0, [x8, #0xb10] ; Objc class ref: bad class ref
   134f0:	adrp	x8, 31 ; 0x32000
   134f4:	ldr	x8, [x8, #0xd78] ; literal pool symbol address: _AVMediaTypeVideo
   134f8:	ldr	x2, [x8]
   134fc:	bl	0x20ae0
   13500:	mov	x29, x29
   13504:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   13508:	mov	x23, x0
   1350c:	bl	0x20dc0
   13510:	cbz	w0, 0x136c4
   13514:	adrp	x24, 31 ; 0x32000
   13518:	ldr	x24, [x24, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1351c:	stur	x24, [x29, #-0xc8]
   13520:	adrp	x8, 15 ; 0x22000
   13524:	ldr	d8, [x8, #0x8f8]
   13528:	stur	d8, [x29, #-0xc0]
   1352c:	adrp	x8, 1 ; 0x14000
   13530:	add	x8, x8, #0x50c
   13534:	adrp	x9, 25 ; 0x2c000
   13538:	add	x9, x9, #0xd70
   1353c:	stp	x8, x9, [x29, #-0xb8]
   13540:	mov	x0, x23
   13544:	bl	0x200f4 ; symbol stub for: _objc_retain
   13548:	mov	x22, x0
   1354c:	stur	x0, [x29, #-0xa8]
   13550:	sub	x0, x29, #0xc8
   13554:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   13558:	ldr	x8, [x20]
   1355c:	str	x0, [x20]
   13560:	mov	x0, x8
   13564:	bl	0x200e8 ; symbol stub for: _objc_release
   13568:	stur	x24, [x29, #-0xf0]
   1356c:	stur	d8, [x29, #-0xe8]
   13570:	adrp	x8, 1 ; 0x14000
   13574:	add	x8, x8, #0x52c
   13578:	adrp	x9, 25 ; 0x2c000
   1357c:	add	x9, x9, #0x2e0
   13580:	stp	x8, x9, [x29, #-0xe0]
   13584:	mov	x0, x22
   13588:	bl	0x200f4 ; symbol stub for: _objc_retain
   1358c:	mov	x23, x0
   13590:	stur	x0, [x29, #-0xd0]
   13594:	sub	x0, x29, #0xf0
   13598:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   1359c:	ldr	x8, [x20, #0x8]
   135a0:	str	x0, [x20, #0x8]
   135a4:	mov	x0, x8
   135a8:	bl	0x200e8 ; symbol stub for: _objc_release
   135ac:	ldur	x0, [x29, #-0xd0]
   135b0:	bl	0x200e8 ; symbol stub for: _objc_release
   135b4:	ldur	x0, [x29, #-0xa8]
   135b8:	bl	0x200e8 ; symbol stub for: _objc_release
   135bc:	mov	w22, #0x1
   135c0:	b	0x136c8
   135c4:	adrp	x2, 29 ; 0x30000
   135c8:	add	x2, x2, #0x5a8 ; "bluetooth"
   135cc:	mov	x0, x19
   135d0:	bl	0x21000
   135d4:	cbz	w0, 0x136d4
   135d8:	adrp	x0, 16 ; 0x23000
   135dc:	add	x0, x0, #0xdfd ; literal pool for: "BluetoothManager"
   135e0:	bl	0x105fc
   135e4:	mov	x29, x29
   135e8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   135ec:	mov	x21, x0
   135f0:	adrp	x8, 33 ; 0x34000
   135f4:	ldr	x1, [x8, #0xe60]
   135f8:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   135fc:	tbz	w0, #0x0, 0x14380
   13600:	adrp	x8, 33 ; 0x34000
   13604:	ldr	x1, [x8, #0xe68]
   13608:	mov	x0, x21
   1360c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   13610:	tbz	w0, #0x0, 0x14380
   13614:	adrp	x22, 31 ; 0x32000
   13618:	ldr	x22, [x22, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1361c:	str	x22, [sp, #0x3c8]
   13620:	adrp	x8, 15 ; 0x22000
   13624:	ldr	d8, [x8, #0x8f8]
   13628:	str	d8, [sp, #0x3d0]
   1362c:	adrp	x8, 1 ; 0x14000
   13630:	add	x8, x8, #0x5c0
   13634:	adrp	x9, 25 ; 0x2c000
   13638:	add	x9, x9, #0xd70
   1363c:	str	x8, [sp, #0x3d8]
   13640:	str	x9, [sp, #0x3e0]
   13644:	mov	x0, x21
   13648:	bl	0x200f4 ; symbol stub for: _objc_retain
   1364c:	mov	x21, x0
   13650:	str	x0, [sp, #0x3e8]
   13654:	add	x0, sp, #0x3c8
   13658:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   1365c:	ldr	x8, [x20]
   13660:	str	x0, [x20]
   13664:	mov	x0, x8
   13668:	bl	0x200e8 ; symbol stub for: _objc_release
   1366c:	str	x22, [sp, #0x3a0]
   13670:	str	d8, [sp, #0x3a8]
   13674:	adrp	x8, 1 ; 0x14000
   13678:	add	x8, x8, #0x5d0
   1367c:	adrp	x9, 25 ; 0x2c000
   13680:	add	x9, x9, #0x2e0
   13684:	str	x8, [sp, #0x3b0]
   13688:	str	x9, [sp, #0x3b8]
   1368c:	mov	x0, x21
   13690:	bl	0x200f4 ; symbol stub for: _objc_retain
   13694:	mov	x21, x0
   13698:	str	x0, [sp, #0x3c0]
   1369c:	add	x0, sp, #0x3a0
   136a0:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   136a4:	ldr	x8, [x20, #0x8]
   136a8:	str	x0, [x20, #0x8]
   136ac:	mov	x0, x8
   136b0:	bl	0x200e8 ; symbol stub for: _objc_release
   136b4:	ldr	x0, [sp, #0x3c0]
   136b8:	bl	0x200e8 ; symbol stub for: _objc_release
   136bc:	ldr	x0, [sp, #0x3e8]
   136c0:	b	0x138ac
   136c4:	mov	w22, #0x0

; ===== sub_136c8 =====
   136c8:	mov	x0, x23
   136cc:	bl	0x200e8 ; symbol stub for: _objc_release
   136d0:	b	0x14384
   136d4:	adrp	x2, 29 ; 0x30000
   136d8:	add	x2, x2, #0x5c8 ; "rotation"
   136dc:	mov	x0, x19
   136e0:	bl	0x21000
   136e4:	cbz	w0, 0x137e8
   136e8:	adrp	x0, 16 ; 0x23000
   136ec:	add	x0, x0, #0xe17 ; literal pool for: "SBOrientationLockManager"
   136f0:	bl	0x105fc
   136f4:	mov	x29, x29
   136f8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   136fc:	mov	x21, x0
   13700:	adrp	x8, 33 ; 0x34000
   13704:	ldr	x1, [x8, #0xe70]
   13708:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1370c:	tbz	w0, #0x0, 0x14380
   13710:	adrp	x8, 33 ; 0x34000
   13714:	ldr	x1, [x8, #0xe78]
   13718:	mov	x0, x21
   1371c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   13720:	tbz	w0, #0x0, 0x14380
   13724:	adrp	x8, 33 ; 0x34000
   13728:	ldr	x1, [x8, #0xe80]
   1372c:	mov	x0, x21
   13730:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   13734:	tbz	w0, #0x0, 0x14380
   13738:	adrp	x22, 31 ; 0x32000
   1373c:	ldr	x22, [x22, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   13740:	str	x22, [sp, #0x378]
   13744:	adrp	x8, 15 ; 0x22000
   13748:	ldr	d8, [x8, #0x8f8]
   1374c:	str	d8, [sp, #0x380]
   13750:	adrp	x8, 1 ; 0x14000
   13754:	add	x8, x8, #0x5e4
   13758:	adrp	x9, 25 ; 0x2c000
   1375c:	add	x9, x9, #0xd70
   13760:	str	x8, [sp, #0x388]
   13764:	str	x9, [sp, #0x390]
   13768:	mov	x0, x21
   1376c:	bl	0x200f4 ; symbol stub for: _objc_retain
   13770:	mov	x21, x0
   13774:	str	x0, [sp, #0x398]
   13778:	add	x0, sp, #0x378
   1377c:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   13780:	ldr	x8, [x20]
   13784:	str	x0, [x20]
   13788:	mov	x0, x8
   1378c:	bl	0x200e8 ; symbol stub for: _objc_release
   13790:	str	x22, [sp, #0x350]
   13794:	str	d8, [sp, #0x358]
   13798:	adrp	x8, 1 ; 0x14000
   1379c:	add	x8, x8, #0x5f4
   137a0:	adrp	x9, 25 ; 0x2c000
   137a4:	add	x9, x9, #0x2e0
   137a8:	str	x8, [sp, #0x360]
   137ac:	str	x9, [sp, #0x368]
   137b0:	mov	x0, x21
   137b4:	bl	0x200f4 ; symbol stub for: _objc_retain
   137b8:	mov	x21, x0
   137bc:	str	x0, [sp, #0x370]
   137c0:	add	x0, sp, #0x350
   137c4:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   137c8:	ldr	x8, [x20, #0x8]
   137cc:	str	x0, [x20, #0x8]
   137d0:	mov	x0, x8
   137d4:	bl	0x200e8 ; symbol stub for: _objc_release
   137d8:	ldr	x0, [sp, #0x370]
   137dc:	bl	0x200e8 ; symbol stub for: _objc_release
   137e0:	ldr	x0, [sp, #0x398]
   137e4:	b	0x138ac
   137e8:	adrp	x2, 29 ; 0x30000
   137ec:	add	x2, x2, #0x5e8 ; "lowpower"
   137f0:	mov	x0, x19
   137f4:	bl	0x21000
   137f8:	cbz	w0, 0x138b8
   137fc:	adrp	x8, 35 ; 0x36000
   13800:	ldr	x8, [x8, #0x4e0]
   13804:	cmn	x8, #0x1
   13808:	b.ne	0x143b8

; ===== sub_1380c =====
   1380c:	adrp	x0, 16 ; 0x23000
   13810:	add	x0, x0, #0xe39 ; literal pool for: "_PMLowPowerMode"
   13814:	bl	0x105fc
   13818:	mov	x29, x29
   1381c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   13820:	mov	x21, x0
   13824:	adrp	x8, 33 ; 0x34000
   13828:	ldr	x22, [x8, #0xe88]
   1382c:	mov	x1, x22
   13830:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   13834:	tbz	w0, #0x0, 0x14380
   13838:	ldr	x0, [x20]
   1383c:	adrp	x8, 25 ; 0x2c000
   13840:	add	x8, x8, #0xde0
   13844:	str	x8, [x20]
   13848:	bl	0x200e8 ; symbol stub for: _objc_release
   1384c:	adrp	x8, 31 ; 0x32000
   13850:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   13854:	str	x8, [sp, #0x320]
   13858:	adrp	x8, 15 ; 0x22000
   1385c:	ldr	d0, [x8, #0x8f8]
   13860:	str	d0, [sp, #0x328]
   13864:	adrp	x8, 1 ; 0x14000
   13868:	add	x8, x8, #0x690
   1386c:	adrp	x9, 25 ; 0x2c000
   13870:	add	x9, x9, #0xe40
   13874:	str	x8, [sp, #0x330]
   13878:	str	x9, [sp, #0x338]
   1387c:	mov	x0, x21
   13880:	bl	0x200f4 ; symbol stub for: _objc_retain
   13884:	mov	x21, x0
   13888:	str	x0, [sp, #0x340]
   1388c:	str	x22, [sp, #0x348]
   13890:	add	x0, sp, #0x320
   13894:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   13898:	ldr	x8, [x20, #0x8]
   1389c:	str	x0, [x20, #0x8]
   138a0:	mov	x0, x8
   138a4:	bl	0x200e8 ; symbol stub for: _objc_release
   138a8:	ldr	x0, [sp, #0x340]

; ===== sub_138ac =====
   138ac:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_138b0 =====
   138b0:	mov	w22, #0x1
   138b4:	b	0x14384
   138b8:	adrp	x2, 29 ; 0x30000
   138bc:	add	x2, x2, #0x628 ; "airplane"
   138c0:	mov	x0, x19
   138c4:	bl	0x21000
   138c8:	cbz	w0, 0x139b8
   138cc:	adrp	x0, 16 ; 0x23000
   138d0:	add	x0, x0, #0xeea ; literal pool for: "SBAirplaneModeController"
   138d4:	bl	0x105fc
   138d8:	mov	x29, x29
   138dc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   138e0:	mov	x21, x0
   138e4:	adrp	x8, 33 ; 0x34000
   138e8:	ldr	x1, [x8, #0xe90]
   138ec:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   138f0:	tbz	w0, #0x0, 0x14380
   138f4:	adrp	x8, 33 ; 0x34000
   138f8:	ldr	x1, [x8, #0xe98]
   138fc:	mov	x0, x21
   13900:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   13904:	tbz	w0, #0x0, 0x14380
   13908:	adrp	x22, 31 ; 0x32000
   1390c:	ldr	x22, [x22, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   13910:	str	x22, [sp, #0x2f8]
   13914:	adrp	x8, 15 ; 0x22000
   13918:	ldr	d8, [x8, #0x8f8]
   1391c:	str	d8, [sp, #0x300]
   13920:	adrp	x8, 1 ; 0x14000
   13924:	add	x8, x8, #0x6fc
   13928:	adrp	x9, 25 ; 0x2c000
   1392c:	add	x9, x9, #0xd70
   13930:	str	x8, [sp, #0x308]
   13934:	str	x9, [sp, #0x310]
   13938:	mov	x0, x21
   1393c:	bl	0x200f4 ; symbol stub for: _objc_retain
   13940:	mov	x21, x0
   13944:	str	x0, [sp, #0x318]
   13948:	add	x0, sp, #0x2f8
   1394c:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   13950:	ldr	x8, [x20]
   13954:	str	x0, [x20]
   13958:	mov	x0, x8
   1395c:	bl	0x200e8 ; symbol stub for: _objc_release
   13960:	str	x22, [sp, #0x2d0]
   13964:	str	d8, [sp, #0x2d8]
   13968:	adrp	x8, 1 ; 0x14000
   1396c:	add	x8, x8, #0x70c
   13970:	adrp	x9, 25 ; 0x2c000
   13974:	add	x9, x9, #0x2e0
   13978:	str	x8, [sp, #0x2e0]
   1397c:	str	x9, [sp, #0x2e8]
   13980:	mov	x0, x21
   13984:	bl	0x200f4 ; symbol stub for: _objc_retain
   13988:	mov	x21, x0
   1398c:	str	x0, [sp, #0x2f0]
   13990:	add	x0, sp, #0x2d0
   13994:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   13998:	ldr	x8, [x20, #0x8]
   1399c:	str	x0, [x20, #0x8]
   139a0:	mov	x0, x8
   139a4:	bl	0x200e8 ; symbol stub for: _objc_release
   139a8:	ldr	x0, [sp, #0x2f0]
   139ac:	bl	0x200e8 ; symbol stub for: _objc_release
   139b0:	ldr	x0, [sp, #0x318]
   139b4:	b	0x138ac
   139b8:	adrp	x2, 29 ; 0x30000
   139bc:	add	x2, x2, #0x648 ; "cellular"
   139c0:	mov	x0, x19
   139c4:	bl	0x21000
   139c8:	cbz	w0, 0x13a84
   139cc:	adrp	x1, 16 ; 0x23000
   139d0:	add	x1, x1, #0xf0c ; literal pool for: "CTCellularDataPlanGetIsEnabled"
   139d4:	mov	x0, #-0x2
   139d8:	bl	0x1ff50 ; symbol stub for: _dlsym
   139dc:	mov	x23, x0
   139e0:	adrp	x1, 16 ; 0x23000
   139e4:	add	x1, x1, #0xf2b ; literal pool for: "CTCellularDataPlanSetIsEnabled"
   139e8:	mov	x0, #-0x2
   139ec:	bl	0x1ff50 ; symbol stub for: _dlsym
   139f0:	mov	w22, #0x0
   139f4:	cbz	x23, 0x1438c
   139f8:	mov	x21, x0
   139fc:	cbz	x0, 0x1438c
   13a00:	adrp	x22, 31 ; 0x32000
   13a04:	ldr	x22, [x22, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   13a08:	str	x22, [sp, #0x2a8]
   13a0c:	adrp	x8, 15 ; 0x22000
   13a10:	ldr	d8, [x8, #0x938]
   13a14:	adrp	x8, 1 ; 0x14000
   13a18:	add	x8, x8, #0x720
   13a1c:	str	d8, [sp, #0x2b0]
   13a20:	adrp	x9, 25 ; 0x2c000
   13a24:	add	x9, x9, #0xe70
   13a28:	str	x8, [sp, #0x2b8]
   13a2c:	str	x9, [sp, #0x2c0]
   13a30:	str	x23, [sp, #0x2c8]
   13a34:	add	x0, sp, #0x2a8
   13a38:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   13a3c:	ldr	x8, [x20]
   13a40:	str	x0, [x20]
   13a44:	mov	x0, x8
   13a48:	bl	0x200e8 ; symbol stub for: _objc_release
   13a4c:	str	x22, [sp, #0x280]
   13a50:	adrp	x8, 1 ; 0x14000
   13a54:	add	x8, x8, #0x740
   13a58:	str	d8, [sp, #0x288]
   13a5c:	adrp	x9, 25 ; 0x2c000
   13a60:	add	x9, x9, #0x4a0
   13a64:	str	x8, [sp, #0x290]
   13a68:	str	x9, [sp, #0x298]
   13a6c:	str	x21, [sp, #0x2a0]
   13a70:	add	x0, sp, #0x280

; ===== sub_13a74 =====
   13a74:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   13a78:	ldr	x21, [x20, #0x8]
   13a7c:	str	x0, [x20, #0x8]
   13a80:	b	0x138b0
   13a84:	adrp	x2, 29 ; 0x30000
   13a88:	add	x2, x2, #0x668 ; "dnd"
   13a8c:	mov	x0, x19
   13a90:	bl	0x21000
   13a94:	cbz	w0, 0x13c18
   13a98:	adrp	x0, 16 ; 0x23000
   13a9c:	add	x0, x0, #0xf4e ; literal pool for: "DNDModeAssertionService"
   13aa0:	bl	0x20088 ; symbol stub for: _objc_getClass
   13aa4:	mov	x22, x0
   13aa8:	adrp	x0, 16 ; 0x23000
   13aac:	add	x0, x0, #0xf66 ; literal pool for: "DNDModeAssertionDetails"
   13ab0:	bl	0x20088 ; symbol stub for: _objc_getClass
   13ab4:	mov	x21, x0
   13ab8:	adrp	x24, 35 ; 0x36000
   13abc:	ldr	x8, [x24, #0x4e8]
   13ac0:	cbnz	x8, 0x13b08
   13ac4:	adrp	x8, 33 ; 0x34000
   13ac8:	ldr	x23, [x8, #0xea8]
   13acc:	mov	x0, x22
   13ad0:	mov	x1, x23
   13ad4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   13ad8:	tbz	w0, #0x0, 0x13b08
   13adc:	adrp	x3, 29 ; 0x30000
   13ae0:	add	x3, x3, #0x688 ; "com.apple.donotdisturb.control-center.module"
   13ae4:	mov	x0, x22
   13ae8:	mov	x2, x23
   13aec:	bl	0x21600
   13af0:	mov	x29, x29
   13af4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   13af8:	ldr	x8, [x24, #0x4e8]
   13afc:	str	x0, [x24, #0x4e8]
   13b00:	mov	x0, x8
   13b04:	bl	0x200e8 ; symbol stub for: _objc_release
   13b08:	ldr	x0, [x24, #0x4e8]
   13b0c:	adrp	x8, 33 ; 0x34000
   13b10:	ldr	x1, [x8, #0xeb0]
   13b14:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   13b18:	tbz	w0, #0x0, 0x142bc
   13b1c:	ldr	x0, [x24, #0x4e8]
   13b20:	adrp	x8, 33 ; 0x34000
   13b24:	ldr	x1, [x8, #0xeb8]
   13b28:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   13b2c:	tbz	w0, #0x0, 0x142bc
   13b30:	ldr	x0, [x24, #0x4e8]
   13b34:	adrp	x8, 33 ; 0x34000
   13b38:	ldr	x1, [x8, #0xec0]
   13b3c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   13b40:	tbz	w0, #0x0, 0x142bc
   13b44:	adrp	x8, 33 ; 0x34000
   13b48:	ldr	x22, [x8, #0xea0]
   13b4c:	mov	x0, x21
   13b50:	mov	x1, x22
   13b54:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   13b58:	tbz	w0, #0x0, 0x142bc
   13b5c:	ldr	x0, [x24, #0x4e8]
   13b60:	bl	0x200f4 ; symbol stub for: _objc_retain
   13b64:	adrp	x24, 31 ; 0x32000
   13b68:	ldr	x24, [x24, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   13b6c:	str	x24, [sp, #0x258]
   13b70:	adrp	x8, 15 ; 0x22000
   13b74:	ldr	d8, [x8, #0x8f8]
   13b78:	str	d8, [sp, #0x260]
   13b7c:	adrp	x8, 1 ; 0x14000
   13b80:	add	x8, x8, #0x74c
   13b84:	adrp	x9, 25 ; 0x2c000
   13b88:	add	x9, x9, #0xd70
   13b8c:	str	x8, [sp, #0x268]
   13b90:	str	x9, [sp, #0x270]
   13b94:	bl	0x200f4 ; symbol stub for: _objc_retain
   13b98:	mov	x23, x0
   13b9c:	str	x0, [sp, #0x278]
   13ba0:	add	x0, sp, #0x258
   13ba4:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   13ba8:	ldr	x8, [x20]
   13bac:	str	x0, [x20]
   13bb0:	mov	x0, x8
   13bb4:	bl	0x200e8 ; symbol stub for: _objc_release
   13bb8:	str	x24, [sp, #0x220]
   13bbc:	adrp	x8, 1 ; 0x14000
   13bc0:	add	x8, x8, #0x790
   13bc4:	adrp	x9, 25 ; 0x2c000
   13bc8:	add	x9, x9, #0xe90
   13bcc:	str	d8, [sp, #0x228]
   13bd0:	str	x8, [sp, #0x230]
   13bd4:	str	x9, [sp, #0x238]
   13bd8:	str	x22, [sp, #0x250]
   13bdc:	str	x21, [sp, #0x248]
   13be0:	str	x23, [sp, #0x240]
   13be4:	mov	x0, x23
   13be8:	bl	0x200f4 ; symbol stub for: _objc_retain
   13bec:	mov	x21, x0
   13bf0:	add	x0, sp, #0x220
   13bf4:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   13bf8:	ldr	x8, [x20, #0x8]
   13bfc:	str	x0, [x20, #0x8]
   13c00:	mov	x0, x8
   13c04:	bl	0x200e8 ; symbol stub for: _objc_release
   13c08:	ldr	x0, [sp, #0x240]
   13c0c:	bl	0x200e8 ; symbol stub for: _objc_release
   13c10:	ldr	x0, [sp, #0x278]
   13c14:	b	0x138ac
   13c18:	adrp	x2, 29 ; 0x30000
   13c1c:	add	x2, x2, #0x6e8 ; "darkmode"
   13c20:	mov	x0, x19
   13c24:	bl	0x21000
   13c28:	cbz	w0, 0x13d3c
   13c2c:	adrp	x0, 17 ; 0x24000
   13c30:	add	x0, x0, #0x2 ; literal pool for: "UISUserInterfaceStyleMode"
   13c34:	bl	0x20088 ; symbol stub for: _objc_getClass
   13c38:	adrp	x23, 35 ; 0x36000
   13c3c:	ldr	x8, [x23, #0x4f0]
   13c40:	cbnz	x8, 0x13c94
   13c44:	mov	x21, x0
   13c48:	adrp	x8, 33 ; 0x34000
   13c4c:	ldr	x22, [x8, #0xec8]
   13c50:	mov	x2, x22
   13c54:	bl	0x20f40
   13c58:	cbz	w0, 0x13c94
   13c5c:	mov	x0, x21
   13c60:	bl	0x20028 ; symbol stub for: _objc_alloc
   13c64:	mov	x21, x0
   13c68:	mov	x1, x22
   13c6c:	mov	x2, #0x0
   13c70:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   13c74:	mov	x29, x29
   13c78:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   13c7c:	ldr	x8, [x23, #0x4f0]
   13c80:	str	x0, [x23, #0x4f0]
   13c84:	mov	x0, x8
   13c88:	bl	0x200e8 ; symbol stub for: _objc_release
   13c8c:	mov	x0, x21
   13c90:	bl	0x200e8 ; symbol stub for: _objc_release
   13c94:	ldr	x0, [x23, #0x4f0]
   13c98:	adrp	x8, 33 ; 0x34000
   13c9c:	ldr	x1, [x8, #0xed0]
   13ca0:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   13ca4:	tbz	w0, #0x0, 0x142bc
   13ca8:	ldr	x0, [x23, #0x4f0]
   13cac:	adrp	x8, 33 ; 0x34000
   13cb0:	ldr	x1, [x8, #0xed8]
   13cb4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   13cb8:	tbz	w0, #0x0, 0x142bc
   13cbc:	ldr	x0, [x23, #0x4f0]
   13cc0:	bl	0x200f4 ; symbol stub for: _objc_retain
   13cc4:	mov	x21, x0
   13cc8:	ldr	x0, [x20]
   13ccc:	adrp	x8, 25 ; 0x2c000
   13cd0:	add	x8, x8, #0xec0
   13cd4:	str	x8, [x20]
   13cd8:	bl	0x200e8 ; symbol stub for: _objc_release
   13cdc:	adrp	x8, 31 ; 0x32000
   13ce0:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   13ce4:	str	x8, [sp, #0x1f8]
   13ce8:	adrp	x8, 15 ; 0x22000
   13cec:	ldr	d0, [x8, #0x8f8]
   13cf0:	adrp	x8, 1 ; 0x14000
   13cf4:	add	x8, x8, #0x8b0
   13cf8:	str	d0, [sp, #0x200]
   13cfc:	adrp	x9, 25 ; 0x2c000
   13d00:	add	x9, x9, #0x2e0
   13d04:	str	x8, [sp, #0x208]
   13d08:	str	x9, [sp, #0x210]
   13d0c:	str	x21, [sp, #0x218]
   13d10:	mov	x0, x21
   13d14:	bl	0x200f4 ; symbol stub for: _objc_retain
   13d18:	mov	x21, x0
   13d1c:	add	x0, sp, #0x1f8
   13d20:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   13d24:	ldr	x8, [x20, #0x8]
   13d28:	str	x0, [x20, #0x8]
   13d2c:	mov	x0, x8
   13d30:	bl	0x200e8 ; symbol stub for: _objc_release
   13d34:	ldr	x0, [sp, #0x218]
   13d38:	b	0x138ac
   13d3c:	adrp	x2, 29 ; 0x30000
   13d40:	add	x2, x2, #0x708 ; "nightshift"
   13d44:	mov	x0, x19
   13d48:	bl	0x21000
   13d4c:	cbz	w0, 0x13e7c
   13d50:	adrp	x0, 17 ; 0x24000
   13d54:	add	x0, x0, #0x27 ; literal pool for: "CBBlueLightClient"
   13d58:	bl	0x20088 ; symbol stub for: _objc_getClass
   13d5c:	mov	x21, x0
   13d60:	adrp	x8, 33 ; 0x34000
   13d64:	ldr	x22, [x8, #0xee0]
   13d68:	mov	x1, x22
   13d6c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   13d70:	tbz	w0, #0x0, 0x142bc
   13d74:	mov	x0, x21
   13d78:	mov	x1, x22
   13d7c:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   13d80:	cbz	w0, 0x142bc
   13d84:	adrp	x22, 35 ; 0x36000
   13d88:	ldr	x0, [x22, #0x4f8]
   13d8c:	cbnz	x0, 0x13dac
   13d90:	mov	x0, x21
   13d94:	bl	0x200d0 ; symbol stub for: _objc_opt_new
   13d98:	ldr	x8, [x22, #0x4f8]
   13d9c:	str	x0, [x22, #0x4f8]
   13da0:	mov	x0, x8
   13da4:	bl	0x200e8 ; symbol stub for: _objc_release
   13da8:	ldr	x0, [x22, #0x4f8]
   13dac:	adrp	x8, 33 ; 0x34000
   13db0:	ldr	x1, [x8, #0xee8]
   13db4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   13db8:	tbz	w0, #0x0, 0x142bc
   13dbc:	ldr	x0, [x22, #0x4f8]
   13dc0:	adrp	x8, 33 ; 0x34000
   13dc4:	ldr	x1, [x8, #0xe60]
   13dc8:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   13dcc:	tbz	w0, #0x0, 0x142bc
   13dd0:	ldr	x0, [x22, #0x4f8]
   13dd4:	bl	0x200f4 ; symbol stub for: _objc_retain
   13dd8:	adrp	x22, 31 ; 0x32000
   13ddc:	ldr	x22, [x22, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   13de0:	str	x22, [sp, #0x1d0]
   13de4:	adrp	x8, 15 ; 0x22000
   13de8:	ldr	d8, [x8, #0x8f8]
   13dec:	str	d8, [sp, #0x1d8]
   13df0:	adrp	x8, 1 ; 0x14000
   13df4:	add	x8, x8, #0x8d0
   13df8:	adrp	x9, 25 ; 0x2c000
   13dfc:	add	x9, x9, #0xd70
   13e00:	stp	x8, x9, [sp, #0x1e0]
   13e04:	bl	0x200f4 ; symbol stub for: _objc_retain
   13e08:	mov	x21, x0
   13e0c:	str	x0, [sp, #0x1f0]
   13e10:	add	x0, sp, #0x1d0
   13e14:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   13e18:	ldr	x8, [x20]
   13e1c:	str	x0, [x20]
   13e20:	mov	x0, x8
   13e24:	bl	0x200e8 ; symbol stub for: _objc_release
   13e28:	str	x22, [sp, #0x1a8]
   13e2c:	adrp	x8, 1 ; 0x14000
   13e30:	add	x8, x8, #0x90c
   13e34:	str	d8, [sp, #0x1b0]
   13e38:	adrp	x9, 25 ; 0x2c000
   13e3c:	add	x9, x9, #0x2e0
   13e40:	stp	x8, x9, [sp, #0x1b8]
   13e44:	str	x21, [sp, #0x1c8]
   13e48:	mov	x0, x21
   13e4c:	bl	0x200f4 ; symbol stub for: _objc_retain
   13e50:	mov	x21, x0
   13e54:	add	x0, sp, #0x1a8
   13e58:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   13e5c:	ldr	x8, [x20, #0x8]
   13e60:	str	x0, [x20, #0x8]
   13e64:	mov	x0, x8
   13e68:	bl	0x200e8 ; symbol stub for: _objc_release
   13e6c:	ldr	x0, [sp, #0x1c8]
   13e70:	bl	0x200e8 ; symbol stub for: _objc_release
   13e74:	ldr	x0, [sp, #0x1f0]
   13e78:	b	0x138ac
   13e7c:	adrp	x2, 29 ; 0x30000
   13e80:	add	x2, x2, #0x728 ; "autobrightness"
   13e84:	mov	x0, x19
   13e88:	bl	0x21000
   13e8c:	cbz	w0, 0x13ef4
   13e90:	adrp	x1, 17 ; 0x24000
   13e94:	add	x1, x1, #0x48 ; literal pool for: "BKSDisplayBrightnessSetAutoBrightnessEnabled"
   13e98:	mov	x0, #-0x2
   13e9c:	bl	0x1ff50 ; symbol stub for: _dlsym
   13ea0:	cbz	x0, 0x142bc
   13ea4:	mov	x21, x0
   13ea8:	ldr	x0, [x20]
   13eac:	adrp	x8, 25 ; 0x2c000
   13eb0:	add	x8, x8, #0xee0
   13eb4:	str	x8, [x20]
   13eb8:	bl	0x200e8 ; symbol stub for: _objc_release
   13ebc:	adrp	x8, 31 ; 0x32000
   13ec0:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   13ec4:	str	x8, [sp, #0x180]
   13ec8:	adrp	x8, 15 ; 0x22000
   13ecc:	ldr	d0, [x8, #0x938]
   13ed0:	adrp	x8, 1 ; 0x14000
   13ed4:	add	x8, x8, #0x9b8
   13ed8:	str	d0, [sp, #0x188]
   13edc:	adrp	x9, 25 ; 0x2c000
   13ee0:	add	x9, x9, #0x4a0
   13ee4:	stp	x8, x9, [sp, #0x190]
   13ee8:	str	x21, [sp, #0x1a0]
   13eec:	add	x0, sp, #0x180
   13ef0:	b	0x13a74
   13ef4:	adrp	x0, 31 ; 0x32000
   13ef8:	add	x0, x0, #0xa98
   13efc:	mov	x2, x19
   13f00:	bl	0x214e0
   13f04:	mov	x29, x29
   13f08:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   13f0c:	mov	x21, x0
   13f10:	bl	0x200e8 ; symbol stub for: _objc_release
   13f14:	cbz	x21, 0x14068
   13f18:	adrp	x25, 34 ; 0x35000
   13f1c:	ldr	x21, [x25, #0xa38] ; Objc class ref: bad class ref
   13f20:	adrp	x22, 31 ; 0x32000
   13f24:	add	x22, x22, #0xa98
   13f28:	mov	x0, x22
   13f2c:	mov	x2, x19
   13f30:	bl	0x214e0
   13f34:	mov	x29, x29
   13f38:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   13f3c:	mov	x23, x0
   13f40:	str	x0, [sp]
   13f44:	adrp	x2, 29 ; 0x30000
   13f48:	add	x2, x2, #0x8a8 ; "_AXS%@Enabled"
   13f4c:	mov	x0, x21
   13f50:	bl	0x22100
   13f54:	mov	x29, x29
   13f58:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   13f5c:	mov	x24, x0
   13f60:	bl	0x20100 ; symbol stub for: _objc_retainAutorelease
   13f64:	bl	0x20280
   13f68:	mov	x1, x0
   13f6c:	mov	x0, #-0x2
   13f70:	bl	0x1ff50 ; symbol stub for: _dlsym
   13f74:	mov	x21, x0
   13f78:	mov	x0, x24
   13f7c:	bl	0x200e8 ; symbol stub for: _objc_release
   13f80:	mov	x0, x23
   13f84:	bl	0x200e8 ; symbol stub for: _objc_release
   13f88:	ldr	x23, [x25, #0xa38]
   13f8c:	mov	x0, x22
   13f90:	mov	x2, x19
   13f94:	bl	0x214e0
   13f98:	mov	x29, x29
   13f9c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   13fa0:	mov	x22, x0
   13fa4:	str	x0, [sp]
   13fa8:	adrp	x2, 29 ; 0x30000
   13fac:	add	x2, x2, #0x8c8 ; "_AXS%@SetEnabled"
   13fb0:	mov	x0, x23
   13fb4:	bl	0x22100
   13fb8:	mov	x29, x29
   13fbc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   13fc0:	mov	x24, x0
   13fc4:	bl	0x20100 ; symbol stub for: _objc_retainAutorelease
   13fc8:	bl	0x20280
   13fcc:	mov	x1, x0
   13fd0:	mov	x0, #-0x2
   13fd4:	bl	0x1ff50 ; symbol stub for: _dlsym
   13fd8:	mov	x23, x0
   13fdc:	mov	x0, x24
   13fe0:	bl	0x200e8 ; symbol stub for: _objc_release
   13fe4:	mov	x0, x22
   13fe8:	bl	0x200e8 ; symbol stub for: _objc_release
   13fec:	mov	w22, #0x0
   13ff0:	cbz	x21, 0x1438c
   13ff4:	cbz	x23, 0x1438c
   13ff8:	adrp	x22, 31 ; 0x32000
   13ffc:	ldr	x22, [x22, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   14000:	str	x22, [sp, #0x158]
   14004:	adrp	x8, 14 ; 0x22000
   14008:	ldr	d8, [x8, #0x938]
   1400c:	adrp	x8, 0 ; 0x14000
   14010:	add	x8, x8, #0x9c4
   14014:	str	d8, [sp, #0x160]
   14018:	adrp	x9, 24 ; 0x2c000
   1401c:	add	x9, x9, #0xe70
   14020:	stp	x8, x9, [sp, #0x168]
   14024:	str	x21, [sp, #0x178]
   14028:	add	x0, sp, #0x158
   1402c:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   14030:	ldr	x8, [x20]
   14034:	str	x0, [x20]
   14038:	mov	x0, x8
   1403c:	bl	0x200e8 ; symbol stub for: _objc_release
   14040:	str	x22, [sp, #0x130]
   14044:	adrp	x8, 0 ; 0x14000
   14048:	add	x8, x8, #0x9cc
   1404c:	str	d8, [sp, #0x138]
   14050:	adrp	x9, 24 ; 0x2c000
   14054:	add	x9, x9, #0x4a0
   14058:	stp	x8, x9, [sp, #0x140]
   1405c:	str	x23, [sp, #0x150]
   14060:	add	x0, sp, #0x130
   14064:	b	0x13a74
   14068:	adrp	x2, 28 ; 0x30000
   1406c:	add	x2, x2, #0x8e8 ; "keepawake"
   14070:	mov	x0, x19
   14074:	bl	0x21000
   14078:	cbz	w0, 0x14118
   1407c:	adrp	x0, 16 ; 0x24000
   14080:	add	x0, x0, #0x124 ; literal pool for: "SBIdleTimerGlobalCoordinator"
   14084:	bl	0x105fc
   14088:	mov	x29, x29
   1408c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   14090:	mov	x21, x0
   14094:	adrp	x8, 32 ; 0x34000
   14098:	ldr	x22, [x8, #0xef0]
   1409c:	mov	x1, x22
   140a0:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   140a4:	tbz	w0, #0x0, 0x14380
   140a8:	ldr	x0, [x20]
   140ac:	adrp	x8, 24 ; 0x2c000
   140b0:	add	x8, x8, #0xf00
   140b4:	str	x8, [x20]
   140b8:	bl	0x200e8 ; symbol stub for: _objc_release
   140bc:	adrp	x8, 30 ; 0x32000
   140c0:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   140c4:	str	x8, [sp, #0x100]
   140c8:	adrp	x8, 14 ; 0x22000
   140cc:	ldr	d0, [x8, #0x8f8]
   140d0:	str	d0, [sp, #0x108]
   140d4:	adrp	x8, 0 ; 0x14000
   140d8:	add	x8, x8, #0x9ec
   140dc:	adrp	x9, 24 ; 0x2c000
   140e0:	add	x9, x9, #0xe40
   140e4:	stp	x8, x9, [sp, #0x110]
   140e8:	mov	x0, x21
   140ec:	bl	0x200f4 ; symbol stub for: _objc_retain
   140f0:	mov	x21, x0
   140f4:	stp	x0, x22, [sp, #0x120]
   140f8:	add	x0, sp, #0x100
   140fc:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   14100:	ldr	x8, [x20, #0x8]
   14104:	str	x0, [x20, #0x8]
   14108:	mov	x0, x8
   1410c:	bl	0x200e8 ; symbol stub for: _objc_release
   14110:	ldr	x0, [sp, #0x120]
   14114:	b	0x138ac
   14118:	adrp	x2, 28 ; 0x30000
   1411c:	add	x2, x2, #0x928 ; "location"
   14120:	mov	x0, x19
   14124:	bl	0x21000
   14128:	cbz	w0, 0x141d0
   1412c:	adrp	x0, 16 ; 0x24000
   14130:	add	x0, x0, #0x164 ; literal pool for: "CLLocationManager"
   14134:	bl	0x20088 ; symbol stub for: _objc_getClass
   14138:	mov	x21, x0
   1413c:	adrp	x8, 32 ; 0x34000
   14140:	ldr	x1, [x8, #0xef8]
   14144:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   14148:	tbz	w0, #0x0, 0x142bc
   1414c:	adrp	x8, 32 ; 0x34000
   14150:	ldr	x1, [x8, #0xf00]
   14154:	mov	x0, x21
   14158:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1415c:	tbz	w0, #0x0, 0x142bc
   14160:	adrp	x22, 30 ; 0x32000
   14164:	ldr	x22, [x22, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   14168:	str	x22, [sp, #0xd8]
   1416c:	adrp	x8, 14 ; 0x22000
   14170:	ldr	d8, [x8, #0x938]
   14174:	adrp	x8, 0 ; 0x14000
   14178:	add	x8, x8, #0xa84
   1417c:	str	d8, [sp, #0xe0]
   14180:	adrp	x9, 24 ; 0x2c000
   14184:	add	x9, x9, #0xf20
   14188:	stp	x8, x9, [sp, #0xe8]
   1418c:	str	x21, [sp, #0xf8]
   14190:	add	x0, sp, #0xd8
   14194:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   14198:	ldr	x8, [x20]
   1419c:	str	x0, [x20]
   141a0:	mov	x0, x8
   141a4:	bl	0x200e8 ; symbol stub for: _objc_release
   141a8:	str	x22, [sp, #0xb0]
   141ac:	adrp	x8, 0 ; 0x14000
   141b0:	add	x8, x8, #0xa94
   141b4:	str	d8, [sp, #0xb8]
   141b8:	adrp	x9, 24 ; 0x2c000
   141bc:	add	x9, x9, #0xf40
   141c0:	stp	x8, x9, [sp, #0xc0]
   141c4:	str	x21, [sp, #0xd0]
   141c8:	add	x0, sp, #0xb0
   141cc:	b	0x13a74
   141d0:	adrp	x2, 28 ; 0x30000
   141d4:	add	x2, x2, #0x948 ; "mute"
   141d8:	mov	x0, x19
   141dc:	bl	0x21000
   141e0:	cbz	w0, 0x142bc
   141e4:	bl	0x14aa8
   141e8:	mov	x29, x29
   141ec:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   141f0:	mov	x21, x0
   141f4:	adrp	x8, 32 ; 0x34000
   141f8:	ldr	x1, [x8, #0xf10]
   141fc:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   14200:	tbz	w0, #0x0, 0x142c4
   14204:	adrp	x8, 32 ; 0x34000
   14208:	ldr	x1, [x8, #0xf18]
   1420c:	mov	x0, x21
   14210:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   14214:	tbz	w0, #0x0, 0x142c4
   14218:	adrp	x23, 30 ; 0x32000
   1421c:	ldr	x23, [x23, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   14220:	str	x23, [sp, #0x88]
   14224:	adrp	x8, 14 ; 0x22000
   14228:	ldr	d8, [x8, #0x8f8]
   1422c:	str	d8, [sp, #0x90]
   14230:	adrp	x8, 0 ; 0x14000
   14234:	add	x8, x8, #0xb38
   14238:	adrp	x9, 24 ; 0x2c000
   1423c:	add	x9, x9, #0xd70
   14240:	stp	x8, x9, [sp, #0x98]
   14244:	mov	x0, x21
   14248:	bl	0x200f4 ; symbol stub for: _objc_retain
   1424c:	mov	x22, x0
   14250:	str	x0, [sp, #0xa8]
   14254:	add	x0, sp, #0x88
   14258:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   1425c:	ldr	x8, [x20]
   14260:	str	x0, [x20]
   14264:	mov	x0, x8
   14268:	bl	0x200e8 ; symbol stub for: _objc_release
   1426c:	str	x23, [sp, #0x60]
   14270:	str	d8, [sp, #0x68]
   14274:	adrp	x8, 0 ; 0x14000
   14278:	add	x8, x8, #0xb48
   1427c:	adrp	x9, 24 ; 0x2c000
   14280:	add	x9, x9, #0x2e0
   14284:	stp	x8, x9, [sp, #0x70]
   14288:	mov	x0, x22
   1428c:	bl	0x200f4 ; symbol stub for: _objc_retain
   14290:	str	x0, [sp, #0x80]
   14294:	add	x0, sp, #0x60
   14298:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   1429c:	ldr	x8, [x20, #0x8]
   142a0:	str	x0, [x20, #0x8]
   142a4:	mov	x0, x8
   142a8:	bl	0x200e8 ; symbol stub for: _objc_release
   142ac:	ldr	x0, [sp, #0x80]
   142b0:	bl	0x200e8 ; symbol stub for: _objc_release
   142b4:	ldr	x0, [sp, #0xa8]
   142b8:	b	0x138ac
   142bc:	mov	w22, #0x0
   142c0:	b	0x1438c
   142c4:	adrp	x8, 32 ; 0x34000
   142c8:	ldr	x22, [x8, #0xf08]
   142cc:	mov	x0, x21
   142d0:	mov	x1, x22
   142d4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   142d8:	tbz	w0, #0x0, 0x14380
   142dc:	adrp	x24, 30 ; 0x32000
   142e0:	ldr	x24, [x24, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   142e4:	str	x24, [sp, #0x38]
   142e8:	adrp	x8, 14 ; 0x22000
   142ec:	ldr	d8, [x8, #0x8f8]
   142f0:	str	d8, [sp, #0x40]
   142f4:	adrp	x8, 0 ; 0x14000
   142f8:	add	x8, x8, #0xb5c
   142fc:	adrp	x9, 24 ; 0x2c000
   14300:	add	x9, x9, #0xd70
   14304:	stp	x8, x9, [sp, #0x48]
   14308:	mov	x0, x21
   1430c:	bl	0x200f4 ; symbol stub for: _objc_retain
   14310:	mov	x23, x0
   14314:	str	x0, [sp, #0x58]
   14318:	add	x0, sp, #0x38
   1431c:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   14320:	ldr	x8, [x20]
   14324:	str	x0, [x20]
   14328:	mov	x0, x8
   1432c:	bl	0x200e8 ; symbol stub for: _objc_release
   14330:	str	x24, [sp, #0x8]
   14334:	str	d8, [sp, #0x10]
   14338:	adrp	x8, 0 ; 0x14000
   1433c:	add	x8, x8, #0xba4
   14340:	adrp	x9, 24 ; 0x2c000
   14344:	add	x9, x9, #0xe40
   14348:	stp	x8, x9, [sp, #0x18]
   1434c:	mov	x0, x23
   14350:	bl	0x200f4 ; symbol stub for: _objc_retain
   14354:	stp	x0, x22, [sp, #0x28]
   14358:	add	x0, sp, #0x8
   1435c:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   14360:	ldr	x8, [x20, #0x8]
   14364:	str	x0, [x20, #0x8]
   14368:	mov	x0, x8
   1436c:	bl	0x200e8 ; symbol stub for: _objc_release
   14370:	ldr	x0, [sp, #0x28]
   14374:	bl	0x200e8 ; symbol stub for: _objc_release
   14378:	ldr	x0, [sp, #0x58]
   1437c:	b	0x138ac
   14380:	mov	w22, #0x0

; ===== sub_14384 =====
   14384:	mov	x0, x21
   14388:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_1438c =====
   1438c:	mov	x0, x19
   14390:	bl	0x200e8 ; symbol stub for: _objc_release
   14394:	mov	x0, x22
   14398:	add	sp, sp, #0x4e0
   1439c:	ldp	x29, x30, [sp, #0x50]
   143a0:	ldp	x20, x19, [sp, #0x40]
   143a4:	ldp	x22, x21, [sp, #0x30]
   143a8:	ldp	x24, x23, [sp, #0x20]
   143ac:	ldp	x26, x25, [sp, #0x10]
   143b0:	ldp	d9, d8, [sp], #0x60
   143b4:	ret
   143b8:	bl	0x1fcf4
   143bc:	b	0x1380c
   143c0:	stp	x20, x19, [sp, #-0x20]!
   143c4:	stp	x29, x30, [sp, #0x10]
   143c8:	add	x29, sp, #0x10
   143cc:	ldr	x0, [x0, #0x20]
   143d0:	adrp	x2, 28 ; 0x30000
   143d4:	add	x2, x2, #0x468 ; "level"
   143d8:	bl	0x223e0
   143dc:	mov	x29, x29
   143e0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   143e4:	mov	x19, x0
   143e8:	bl	0x20be0
   143ec:	fcmp	d0, #0.0
   143f0:	cset	w20, gt
   143f4:	mov	x0, x19
   143f8:	bl	0x200e8 ; symbol stub for: _objc_release
   143fc:	mov	x0, x20
   14400:	ldp	x29, x30, [sp, #0x10]
   14404:	ldp	x20, x19, [sp], #0x20
   14408:	ret
   1440c:	stp	x22, x21, [sp, #-0x30]!
   14410:	stp	x20, x19, [sp, #0x10]
   14414:	stp	x29, x30, [sp, #0x20]
   14418:	add	x29, sp, #0x20
   1441c:	mov	x20, x1
   14420:	mov	x19, x0
   14424:	cbz	w1, 0x1444c
   14428:	ldr	x0, [x19, #0x20]
   1442c:	adrp	x8, 32 ; 0x34000
   14430:	ldr	x21, [x8, #0xd28]
   14434:	mov	x1, x21
   14438:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1443c:	tbz	w0, #0x0, 0x1444c
   14440:	ldr	x0, [x19, #0x20]
   14444:	mov	x1, x21
   14448:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   1444c:	ldr	x0, [x19, #0x20]
   14450:	adrp	x8, 32 ; 0x34000
   14454:	ldr	x21, [x8, #0xe48]
   14458:	mov	x1, x21
   1445c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   14460:	tbz	w0, #0x0, 0x14484
   14464:	ldr	x0, [x19, #0x20]
   14468:	mov	x1, x21
   1446c:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   14470:	sub	x8, x0, #0x1
   14474:	cmp	x8, #0x4
   14478:	mov	w8, #0x4
   1447c:	csel	x8, x0, x8, lo
   14480:	b	0x14488
   14484:	mov	w8, #0x4

; ===== sub_14488 =====
   14488:	ldr	x21, [x19, #0x20]
   1448c:	adrp	x9, 33 ; 0x35000
   14490:	ldr	x0, [x9, #0xa70] ; Objc class ref: bad class ref
   14494:	cmp	w20, #0x0
   14498:	csel	x2, x8, xzr, ne
   1449c:	bl	0x21480
   144a0:	mov	x29, x29
   144a4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   144a8:	mov	x22, x0
   144ac:	adrp	x3, 28 ; 0x30000
   144b0:	add	x3, x3, #0x468 ; "level"
   144b4:	mov	x0, x21
   144b8:	mov	x2, x22
   144bc:	bl	0x21e80
   144c0:	mov	x0, x22
   144c4:	bl	0x200e8 ; symbol stub for: _objc_release
   144c8:	tbnz	w20, #0x0, 0x144fc
   144cc:	ldr	x0, [x19, #0x20]
   144d0:	adrp	x8, 32 ; 0x34000
   144d4:	ldr	x20, [x8, #0xd30]
   144d8:	mov	x1, x20
   144dc:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   144e0:	tbz	w0, #0x0, 0x144fc
   144e4:	ldr	x0, [x19, #0x20]
   144e8:	mov	x1, x20
   144ec:	ldp	x29, x30, [sp, #0x20]
   144f0:	ldp	x20, x19, [sp, #0x10]
   144f4:	ldp	x22, x21, [sp], #0x30
   144f8:	b	0x200a0 ; symbol stub for: _objc_msgSend
   144fc:	ldp	x29, x30, [sp, #0x20]
   14500:	ldp	x20, x19, [sp, #0x10]
   14504:	ldp	x22, x21, [sp], #0x30
   14508:	ret
   1450c:	stp	x29, x30, [sp, #-0x10]!
   14510:	mov	x29, sp
   14514:	ldr	x0, [x0, #0x20]
   14518:	bl	0x222a0
   1451c:	cmp	x0, #0x1
   14520:	cset	w0, eq
   14524:	ldp	x29, x30, [sp], #0x10
   14528:	ret
   1452c:	sub	sp, sp, #0x40
   14530:	stp	x22, x21, [sp, #0x10]
   14534:	stp	x20, x19, [sp, #0x20]
   14538:	stp	x29, x30, [sp, #0x30]
   1453c:	add	x29, sp, #0x30
   14540:	mov	x20, x1
   14544:	mov	x19, x0
   14548:	ldr	x0, [x0, #0x20]
   1454c:	str	xzr, [sp, #0x8]
   14550:	add	x2, sp, #0x8
   14554:	bl	0x21220
   14558:	mov	x22, x0
   1455c:	ldr	x0, [sp, #0x8]
   14560:	bl	0x200f4 ; symbol stub for: _objc_retain
   14564:	mov	x21, x0
   14568:	cbz	w22, 0x14580
   1456c:	mov	w2, w20
   14570:	ldr	x0, [x19, #0x20]
   14574:	bl	0x21de0
   14578:	ldr	x0, [x19, #0x20]
   1457c:	bl	0x22360
   14580:	mov	x0, x21
   14584:	bl	0x200e8 ; symbol stub for: _objc_release
   14588:	ldp	x29, x30, [sp, #0x30]
   1458c:	ldp	x20, x19, [sp, #0x20]
   14590:	ldp	x22, x21, [sp, #0x10]
   14594:	add	sp, sp, #0x40
   14598:	ret
   1459c:	ldr	x0, [x0, #0x20]
   145a0:	adrp	x8, 32 ; 0x34000
   145a4:	ldr	x1, [x8, #0xe58]
   145a8:	b	0x200a0 ; symbol stub for: _objc_msgSend
   145ac:	mov	x2, x1
   145b0:	ldr	x0, [x0, #0x20]
   145b4:	adrp	x8, 32 ; 0x34000
   145b8:	ldr	x1, [x8, #0xe50]
   145bc:	b	0x200a0 ; symbol stub for: _objc_msgSend
   145c0:	ldr	x0, [x0, #0x20]
   145c4:	adrp	x8, 32 ; 0x34000
   145c8:	ldr	x1, [x8, #0xe68]
   145cc:	b	0x200a0 ; symbol stub for: _objc_msgSend
   145d0:	mov	x2, x1
   145d4:	ldr	x0, [x0, #0x20]
   145d8:	adrp	x8, 32 ; 0x34000
   145dc:	ldr	x1, [x8, #0xe60]
   145e0:	b	0x200a0 ; symbol stub for: _objc_msgSend
   145e4:	ldr	x0, [x0, #0x20]
   145e8:	adrp	x8, 32 ; 0x34000
   145ec:	ldr	x1, [x8, #0xe70]
   145f0:	b	0x200a0 ; symbol stub for: _objc_msgSend
   145f4:	adrp	x8, 32 ; 0x34000
   145f8:	add	x8, x8, #0xe78
   145fc:	adrp	x9, 32 ; 0x34000
   14600:	add	x9, x9, #0xe80
   14604:	ldr	x0, [x0, #0x20]
   14608:	cmp	w1, #0x0
   1460c:	csel	x8, x8, x9, ne
   14610:	ldr	x1, [x8]
   14614:	b	0x200a0 ; symbol stub for: _objc_msgSend
   14618:	stp	x29, x30, [sp, #-0x10]!
   1461c:	mov	x29, sp
   14620:	adrp	x0, 15 ; 0x23000
   14624:	add	x0, x0, #0xe39 ; literal pool for: "_PMLowPowerMode"
   14628:	bl	0x20088 ; symbol stub for: _objc_getClass
   1462c:	cbz	x0, 0x14638
   14630:	ldp	x29, x30, [sp], #0x10
   14634:	ret
   14638:	adrp	x0, 15 ; 0x23000
   1463c:	add	x0, x0, #0xe49 ; literal pool for: "/System/Library/PrivateFrameworks/LowPowerMode.framework/LowPowerMode"
   14640:	mov	w1, #0x1
   14644:	ldp	x29, x30, [sp], #0x10
   14648:	b	0x1ff44 ; symbol stub for: _dlopen
   1464c:	stp	x20, x19, [sp, #-0x20]!
   14650:	stp	x29, x30, [sp, #0x10]
   14654:	add	x29, sp, #0x10
   14658:	adrp	x8, 33 ; 0x35000
   1465c:	ldr	x0, [x8, #0xb20] ; Objc class ref: bad class ref
   14660:	bl	0x216c0
   14664:	mov	x29, x29
   14668:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1466c:	mov	x19, x0
   14670:	bl	0x21040
   14674:	mov	x20, x0
   14678:	mov	x0, x19
   1467c:	bl	0x200e8 ; symbol stub for: _objc_release
   14680:	mov	x0, x20
   14684:	ldp	x29, x30, [sp, #0x10]
   14688:	ldp	x20, x19, [sp], #0x20
   1468c:	ret
   14690:	stp	x20, x19, [sp, #-0x20]!
   14694:	stp	x29, x30, [sp, #0x10]
   14698:	add	x29, sp, #0x10
   1469c:	mov	x19, x1
   146a0:	mov	x20, x0
   146a4:	adrp	x1, 15 ; 0x23000
   146a8:	add	x1, x1, #0xe8f ; literal pool for: "kPMLPMSourceSettings"
   146ac:	mov	x0, #-0x2
   146b0:	bl	0x1ff50 ; symbol stub for: _dlsym
   146b4:	cbnz	x0, 0x146cc
   146b8:	adrp	x1, 15 ; 0x23000
   146bc:	add	x1, x1, #0xea4 ; literal pool for: "kPMLPMSourceControlCenter"
   146c0:	mov	x0, #-0x2
   146c4:	bl	0x1ff50 ; symbol stub for: _dlsym
   146c8:	cbz	x0, 0x146ec
   146cc:	ldr	x3, [x0]

; ===== sub_146d0 =====
   146d0:	ldp	x0, x1, [x20, #0x20]
   146d4:	adrp	x4, 24 ; 0x2c000
   146d8:	add	x4, x4, #0xe20
   146dc:	mov	w2, w19
   146e0:	ldp	x29, x30, [sp, #0x10]
   146e4:	ldp	x20, x19, [sp], #0x20
   146e8:	b	0x200a0 ; symbol stub for: _objc_msgSend
   146ec:	adrp	x3, 28 ; 0x30000
   146f0:	add	x3, x3, #0x608 ; "ControlCenter"
   146f4:	b	0x146d0
   146f8:	ret
   146fc:	ldr	x0, [x0, #0x20]
   14700:	adrp	x8, 32 ; 0x34000
   14704:	ldr	x1, [x8, #0xe90]
   14708:	b	0x200a0 ; symbol stub for: _objc_msgSend
   1470c:	mov	x2, x1
   14710:	ldr	x0, [x0, #0x20]
   14714:	adrp	x8, 32 ; 0x34000
   14718:	ldr	x1, [x8, #0xe98]
   1471c:	b	0x200a0 ; symbol stub for: _objc_msgSend
   14720:	stp	x29, x30, [sp, #-0x10]!
   14724:	mov	x29, sp
   14728:	ldr	x8, [x0, #0x20]
   1472c:	blr	x8
   14730:	cmp	w0, #0x0
   14734:	cset	w0, ne
   14738:	ldp	x29, x30, [sp], #0x10
   1473c:	ret
   14740:	ldr	x2, [x0, #0x20]
   14744:	mov	x0, x1
   14748:	br	x2
   1474c:	stp	x20, x19, [sp, #-0x20]!
   14750:	stp	x29, x30, [sp, #0x10]
   14754:	add	x29, sp, #0x10
   14758:	ldr	x0, [x0, #0x20]
   1475c:	adrp	x8, 32 ; 0x34000
   14760:	ldr	x1, [x8, #0xeb0]
   14764:	mov	x2, #0x0
   14768:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   1476c:	mov	x29, x29
   14770:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   14774:	cmp	x0, #0x0
   14778:	cset	w19, ne
   1477c:	bl	0x200e8 ; symbol stub for: _objc_release
   14780:	mov	x0, x19
   14784:	ldp	x29, x30, [sp, #0x10]
   14788:	ldp	x20, x19, [sp], #0x20
   1478c:	ret
   14790:	sub	sp, sp, #0x30
   14794:	stp	x20, x19, [sp, #0x10]
   14798:	stp	x29, x30, [sp, #0x20]
   1479c:	add	x29, sp, #0x20
   147a0:	mov	x19, x0
   147a4:	cbz	w1, 0x1480c
   147a8:	ldp	x0, x1, [x19, #0x28]
   147ac:	adrp	x2, 28 ; 0x30000
   147b0:	add	x2, x2, #0x6a8 ; "com.apple.control-center.manual-toggle"
   147b4:	adrp	x3, 28 ; 0x30000
   147b8:	add	x3, x3, #0x6c8 ; "com.apple.donotdisturb.mode.default"
   147bc:	mov	x4, #0x0
   147c0:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   147c4:	mov	x29, x29
   147c8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   147cc:	mov	x20, x0
   147d0:	ldr	x0, [x19, #0x20]
   147d4:	adrp	x8, 32 ; 0x34000
   147d8:	ldr	x1, [x8, #0xeb8]
   147dc:	str	xzr, [sp, #0x8]
   147e0:	add	x3, sp, #0x8
   147e4:	mov	x2, x20
   147e8:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   147ec:	mov	x29, x29
   147f0:	bl	0x20160 ; symbol stub for: _objc_unsafeClaimAutoreleasedReturnValue
   147f4:	ldr	x0, [sp, #0x8]
   147f8:	bl	0x200f4 ; symbol stub for: _objc_retain
   147fc:	mov	x19, x0
   14800:	mov	x0, x20
   14804:	bl	0x200e8 ; symbol stub for: _objc_release
   14808:	b	0x14830
   1480c:	ldr	x0, [x19, #0x20]
   14810:	adrp	x8, 32 ; 0x34000
   14814:	ldr	x1, [x8, #0xec0]
   14818:	str	xzr, [sp]
   1481c:	mov	x2, sp
   14820:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   14824:	ldr	x0, [sp]
   14828:	bl	0x200f4 ; symbol stub for: _objc_retain
   1482c:	mov	x19, x0

; ===== sub_14830 =====
   14830:	mov	x0, x19
   14834:	bl	0x200e8 ; symbol stub for: _objc_release
   14838:	ldp	x29, x30, [sp, #0x20]
   1483c:	ldp	x20, x19, [sp, #0x10]
   14840:	add	sp, sp, #0x30
   14844:	ret
   14848:	stp	x22, x21, [sp, #-0x30]!
   1484c:	stp	x20, x19, [sp, #0x10]
   14850:	stp	x29, x30, [sp, #0x20]
   14854:	add	x29, sp, #0x20
   14858:	adrp	x8, 33 ; 0x35000
   1485c:	ldr	x0, [x8, #0xa88] ; Objc class ref: bad class ref
   14860:	bl	0x21300
   14864:	mov	x29, x29
   14868:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1486c:	mov	x19, x0
   14870:	bl	0x222c0
   14874:	mov	x29, x29
   14878:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1487c:	mov	x20, x0
   14880:	bl	0x223c0
   14884:	cmp	x0, #0x2
   14888:	cset	w21, eq
   1488c:	mov	x0, x20
   14890:	bl	0x200e8 ; symbol stub for: _objc_release
   14894:	mov	x0, x19
   14898:	bl	0x200e8 ; symbol stub for: _objc_release
   1489c:	mov	x0, x21
   148a0:	ldp	x29, x30, [sp, #0x20]
   148a4:	ldp	x20, x19, [sp, #0x10]
   148a8:	ldp	x22, x21, [sp], #0x30
   148ac:	ret
   148b0:	ldr	x0, [x0, #0x20]
   148b4:	adrp	x8, 32 ; 0x34000
   148b8:	ldr	x8, [x8, #0xed8]
   148bc:	cmp	w1, #0x0
   148c0:	mov	w9, #0x1
   148c4:	cinc	x2, x9, ne
   148c8:	mov	x1, x8
   148cc:	b	0x200a0 ; symbol stub for: _objc_msgSend
   148d0:	sub	sp, sp, #0x40
   148d4:	stp	x29, x30, [sp, #0x30]
   148d8:	add	x29, sp, #0x30
   148dc:	str	xzr, [sp, #0x20]
   148e0:	movi.16b	v0, #0x0
   148e4:	stp	q0, q0, [sp]
   148e8:	ldr	x0, [x0, #0x20]
   148ec:	adrp	x8, 32 ; 0x34000
   148f0:	ldr	x1, [x8, #0xee8]
   148f4:	mov	x2, sp
   148f8:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   148fc:	ldrb	w0, [sp, #0x1]
   14900:	ldp	x29, x30, [sp, #0x30]
   14904:	add	sp, sp, #0x40
   14908:	ret
   1490c:	mov	x2, x1
   14910:	ldr	x0, [x0, #0x20]
   14914:	adrp	x8, 32 ; 0x34000
   14918:	ldr	x1, [x8, #0xe60]
   1491c:	b	0x200a0 ; symbol stub for: _objc_msgSend
   14920:	stp	x22, x21, [sp, #-0x30]!
   14924:	stp	x20, x19, [sp, #0x10]
   14928:	stp	x29, x30, [sp, #0x20]
   1492c:	add	x29, sp, #0x20
   14930:	adrp	x8, 30 ; 0x32000
   14934:	ldr	x8, [x8, #0xd40] ; literal pool symbol address: _kCFPreferencesAnyHost
   14938:	ldr	x19, [x8]
   1493c:	adrp	x20, 28 ; 0x30000
   14940:	add	x20, x20, #0x748 ; "com.apple.backboardd"
   14944:	adrp	x21, 28 ; 0x30000
   14948:	add	x21, x21, #0x768 ; "mobile"
   1494c:	mov	x0, x20
   14950:	mov	x1, x21
   14954:	mov	x2, x19
   14958:	bl	0x1fda0 ; symbol stub for: _CFPreferencesSynchronize
   1495c:	adrp	x0, 28 ; 0x30000
   14960:	add	x0, x0, #0x788 ; "BKEnableALS"
   14964:	mov	x1, x20
   14968:	mov	x2, x21
   1496c:	mov	x3, x19
   14970:	bl	0x1fd7c ; symbol stub for: _CFPreferencesCopyValue
   14974:	mov	x19, x0
   14978:	adrp	x8, 33 ; 0x35000
   1497c:	ldr	x1, [x8, #0x140]
   14980:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   14984:	tbz	w0, #0x0, 0x14998
   14988:	mov	x0, x19
   1498c:	bl	0x20600
   14990:	mov	x20, x0
   14994:	b	0x1499c
   14998:	mov	w20, #0x1

; ===== sub_1499c =====
   1499c:	mov	x0, x19
   149a0:	bl	0x200e8 ; symbol stub for: _objc_release
   149a4:	mov	x0, x20
   149a8:	ldp	x29, x30, [sp, #0x20]
   149ac:	ldp	x20, x19, [sp, #0x10]
   149b0:	ldp	x22, x21, [sp], #0x30
   149b4:	ret
   149b8:	ldr	x2, [x0, #0x20]
   149bc:	mov	x0, x1
   149c0:	br	x2
   149c4:	ldr	x0, [x0, #0x20]
   149c8:	br	x0
   149cc:	ldr	x2, [x0, #0x20]
   149d0:	mov	x0, x1
   149d4:	br	x2
   149d8:	adrp	x8, 34 ; 0x36000
   149dc:	ldr	x8, [x8, #0x500]
   149e0:	cmp	x8, #0x0
   149e4:	cset	w0, ne
   149e8:	ret
   149ec:	stp	x20, x19, [sp, #-0x20]!
   149f0:	stp	x29, x30, [sp, #0x10]
   149f4:	add	x29, sp, #0x10
   149f8:	mov	x8, x0
   149fc:	eor	w9, w1, #0x1
   14a00:	adrp	x20, 34 ; 0x36000
   14a04:	ldr	x0, [x20, #0x500]
   14a08:	tbnz	w9, #0x0, 0x14a2c
   14a0c:	cbnz	x0, 0x14a2c
   14a10:	ldp	x0, x1, [x8, #0x20]
   14a14:	adrp	x2, 28 ; 0x30000
   14a18:	add	x2, x2, #0x908 ; "Triggr: Keep Screen Awake"
   14a1c:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   14a20:	mov	x29, x29
   14a24:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   14a28:	b	0x14a60
   14a2c:	cmp	x0, #0x0
   14a30:	csel	w8, wzr, w9, eq
   14a34:	cmp	w8, #0x1
   14a38:	b.ne	0x14a78
   14a3c:	adrp	x8, 33 ; 0x35000
   14a40:	ldr	x19, [x8, #0x3a8]
   14a44:	mov	x1, x19
   14a48:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   14a4c:	tbz	w0, #0x0, 0x14a5c
   14a50:	ldr	x0, [x20, #0x500]
   14a54:	mov	x1, x19
   14a58:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   14a5c:	mov	x0, #0x0

; ===== sub_14a60 =====
   14a60:	ldr	x8, [x20, #0x500]
   14a64:	str	x0, [x20, #0x500]
   14a68:	mov	x0, x8
   14a6c:	ldp	x29, x30, [sp, #0x10]
   14a70:	ldp	x20, x19, [sp], #0x20
   14a74:	b	0x200e8 ; symbol stub for: _objc_release
   14a78:	ldp	x29, x30, [sp, #0x10]
   14a7c:	ldp	x20, x19, [sp], #0x20
   14a80:	ret
   14a84:	ldr	x0, [x0, #0x20]
   14a88:	adrp	x8, 32 ; 0x34000
   14a8c:	ldr	x1, [x8, #0xf00]
   14a90:	b	0x200a0 ; symbol stub for: _objc_msgSend
   14a94:	mov	x2, x1
   14a98:	ldr	x0, [x0, #0x20]
   14a9c:	adrp	x8, 32 ; 0x34000
   14aa0:	ldr	x1, [x8, #0xef8]
   14aa4:	b	0x200a0 ; symbol stub for: _objc_msgSend

; ===== sub_14aa8 =====
   14aa8:	stp	x20, x19, [sp, #-0x20]!
   14aac:	stp	x29, x30, [sp, #0x10]
   14ab0:	add	x29, sp, #0x10
   14ab4:	adrp	x8, 32 ; 0x34000
   14ab8:	ldr	x0, [x8, #0xf20]
   14abc:	bl	0x130bc
   14ac0:	mov	x29, x29
   14ac4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   14ac8:	mov	x19, x0
   14acc:	cbnz	x0, 0x14b00
   14ad0:	bl	0x12f4c
   14ad4:	mov	x29, x29
   14ad8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   14adc:	mov	x20, x0
   14ae0:	adrp	x2, 28 ; 0x30000
   14ae4:	add	x2, x2, #0x988 ; "_ringerControl"
   14ae8:	bl	0x223e0
   14aec:	mov	x29, x29
   14af0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   14af4:	mov	x19, x0
   14af8:	mov	x0, x20
   14afc:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_14b00 =====
   14b00:	mov	x0, x19
   14b04:	bl	0x2010c ; symbol stub for: _objc_retainAutoreleaseReturnValue
   14b08:	bl	0x200e8 ; symbol stub for: _objc_release
   14b0c:	mov	x0, x19
   14b10:	ldp	x29, x30, [sp, #0x10]
   14b14:	ldp	x20, x19, [sp], #0x20
   14b18:	ret
   14b1c:	cmp	w1, #0x1
   14b20:	b.ne	0x14b34
   14b24:	bl	0x2004c ; symbol stub for: _objc_begin_catch
   14b28:	bl	0x20064 ; symbol stub for: _objc_end_catch
   14b2c:	mov	x19, #0x0
   14b30:	b	0x14b00
   14b34:	bl	0x1fe54 ; symbol stub for: __Unwind_Resume
   14b38:	ldr	x0, [x0, #0x20]
   14b3c:	adrp	x8, 32 ; 0x34000
   14b40:	ldr	x1, [x8, #0xf10]
   14b44:	b	0x200a0 ; symbol stub for: _objc_msgSend
   14b48:	mov	x2, x1
   14b4c:	ldr	x0, [x0, #0x20]
   14b50:	adrp	x8, 32 ; 0x34000
   14b54:	ldr	x1, [x8, #0xf18]
   14b58:	b	0x200a0 ; symbol stub for: _objc_msgSend
   14b5c:	stp	x20, x19, [sp, #-0x20]!
   14b60:	stp	x29, x30, [sp, #0x10]
   14b64:	add	x29, sp, #0x10
   14b68:	ldr	x0, [x0, #0x20]
   14b6c:	adrp	x2, 28 ; 0x30000
   14b70:	add	x2, x2, #0x968 ; "_ringerMuted"
   14b74:	bl	0x223e0
   14b78:	mov	x29, x29
   14b7c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   14b80:	mov	x19, x0
   14b84:	bl	0x20600
   14b88:	mov	x20, x0
   14b8c:	mov	x0, x19
   14b90:	bl	0x200e8 ; symbol stub for: _objc_release
   14b94:	mov	x0, x20
   14b98:	ldp	x29, x30, [sp, #0x10]
   14b9c:	ldp	x20, x19, [sp], #0x20
   14ba0:	ret
   14ba4:	mov	x2, x1
   14ba8:	ldp	x8, x1, [x0, #0x20]
   14bac:	adrp	x4, 27 ; 0x2f000
   14bb0:	add	x4, x4, #0x748 ; "Triggr"
   14bb4:	mov	x0, x8
   14bb8:	mov	w3, #0x1
   14bbc:	mov	w5, #0x1
   14bc0:	b	0x200a0 ; symbol stub for: _objc_msgSend

; ===== sub_14bc4 =====
   14bc4:	stp	x22, x21, [sp, #-0x30]!
   14bc8:	stp	x20, x19, [sp, #0x10]
   14bcc:	stp	x29, x30, [sp, #0x20]
   14bd0:	add	x29, sp, #0x20
   14bd4:	mov	x19, x1
   14bd8:	mov	x21, x0
   14bdc:	adrp	x0, 15 ; 0x23000
   14be0:	add	x0, x0, #0xde5 ; literal pool for: "SBWiFiManager"
   14be4:	bl	0x105fc
   14be8:	mov	x29, x29
   14bec:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   14bf0:	mov	x20, x0
   14bf4:	adrp	x8, 32 ; 0x34000
   14bf8:	ldr	x1, [x8, #0xe58]
   14bfc:	bl	0x5b7c
   14c00:	strb	w0, [x21]
   14c04:	adrp	x8, 32 ; 0x34000
   14c08:	ldr	x21, [x8, #0xf30]
   14c0c:	mov	x0, x20
   14c10:	mov	x1, x21
   14c14:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   14c18:	tbz	w0, #0x0, 0x14c38
   14c1c:	mov	x0, x20
   14c20:	mov	x1, x21
   14c24:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   14c28:	mov	x29, x29
   14c2c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   14c30:	mov	x21, x0
   14c34:	b	0x14c3c
   14c38:	mov	x21, #0x0

; ===== sub_14c3c =====
   14c3c:	adrp	x8, 33 ; 0x35000
   14c40:	ldr	x0, [x8, #0xa38] ; Objc class ref: bad class ref
   14c44:	bl	0x200b8 ; symbol stub for: _objc_opt_class
   14c48:	mov	x1, x0
   14c4c:	mov	x0, x21
   14c50:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
   14c54:	tbz	w0, #0x0, 0x14c64
   14c58:	mov	x0, x21
   14c5c:	bl	0x21160
   14c60:	cbnz	x0, 0x14c70
   14c64:	mov	x0, x21
   14c68:	bl	0x200e8 ; symbol stub for: _objc_release
   14c6c:	mov	x21, #0x0
   14c70:	cmp	x21, #0x0
   14c74:	cset	w8, ne
   14c78:	strb	w8, [x19]
   14c7c:	mov	x0, x20
   14c80:	bl	0x200e8 ; symbol stub for: _objc_release
   14c84:	mov	x0, x21
   14c88:	ldp	x29, x30, [sp, #0x20]
   14c8c:	ldp	x20, x19, [sp, #0x10]
   14c90:	ldp	x22, x21, [sp], #0x30
   14c94:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue

; ===== sub_14c98 =====
   14c98:	stp	x20, x19, [sp, #-0x20]!
   14c9c:	stp	x29, x30, [sp, #0x10]
   14ca0:	add	x29, sp, #0x10
   14ca4:	adrp	x8, 33 ; 0x35000
   14ca8:	ldr	x0, [x8, #0xaf0] ; Objc class ref: bad class ref
   14cac:	bl	0x209c0
   14cb0:	mov	x29, x29
   14cb4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   14cb8:	mov	x19, x0
   14cbc:	bl	0x205c0
   14cc0:	mov	x20, x0
   14cc4:	mov	x0, x19
   14cc8:	bl	0x200e8 ; symbol stub for: _objc_release
   14ccc:	and	x8, x20, #0xfffffffffffffffe
   14cd0:	cmp	x8, #0x2
   14cd4:	cset	w0, eq
   14cd8:	ldp	x29, x30, [sp, #0x10]
   14cdc:	ldp	x20, x19, [sp], #0x20
   14ce0:	ret

; ===== sub_14ce4 =====
   14ce4:	sub	sp, sp, #0x130
   14ce8:	stp	x28, x27, [sp, #0xd0]
   14cec:	stp	x26, x25, [sp, #0xe0]
   14cf0:	stp	x24, x23, [sp, #0xf0]
   14cf4:	stp	x22, x21, [sp, #0x100]
   14cf8:	stp	x20, x19, [sp, #0x110]
   14cfc:	stp	x29, x30, [sp, #0x120]
   14d00:	add	x29, sp, #0x120
   14d04:	adrp	x8, 30 ; 0x32000
   14d08:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   14d0c:	ldr	x8, [x8]
   14d10:	stur	x8, [x29, #-0x60]
   14d14:	movi.16b	v0, #0x0
   14d18:	stp	q0, q0, [sp]
   14d1c:	stp	q0, q0, [sp, #0x20]
   14d20:	bl	0x215a0
   14d24:	mov	x29, x29
   14d28:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   14d2c:	mov	x19, x0
   14d30:	mov	x2, sp
   14d34:	add	x3, sp, #0x40
   14d38:	mov	w4, #0x10
   14d3c:	bl	0x20980
   14d40:	cbz	x0, 0x14e24
   14d44:	mov	x21, x0
   14d48:	ldr	x8, [sp, #0x10]
   14d4c:	ldr	x27, [x8]
   14d50:	adrp	x8, 30 ; 0x32000
   14d54:	ldr	x8, [x8, #0xf78] ; literal pool symbol address: _AVAudioSessionPortHeadphones
   14d58:	ldr	x20, [x8]
   14d5c:	adrp	x8, 30 ; 0x32000
   14d60:	ldr	x8, [x8, #0xf60] ; literal pool symbol address: _AVAudioSessionPortBluetoothA2DP
   14d64:	ldr	x22, [x8]
   14d68:	adrp	x8, 30 ; 0x32000
   14d6c:	ldr	x8, [x8, #0xf68] ; literal pool symbol address: _AVAudioSessionPortBluetoothHFP
   14d70:	ldr	x23, [x8]
   14d74:	adrp	x8, 30 ; 0x32000
   14d78:	ldr	x8, [x8, #0xf70] ; literal pool symbol address: _AVAudioSessionPortBluetoothLE
   14d7c:	ldr	x24, [x8]
   14d80:	mov	x28, #0x0
   14d84:	ldr	x8, [sp, #0x10]
   14d88:	ldr	x8, [x8]
   14d8c:	cmp	x8, x27
   14d90:	b.eq	0x14d9c
   14d94:	mov	x0, x19
   14d98:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   14d9c:	ldr	x8, [sp, #0x8]
   14da0:	ldr	x0, [x8, x28, lsl #3]
   14da4:	bl	0x21660
   14da8:	mov	x29, x29
   14dac:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   14db0:	mov	x25, x0
   14db4:	mov	x2, x20
   14db8:	bl	0x21000
   14dbc:	tbnz	w0, #0x0, 0x14e2c
   14dc0:	mov	x0, x25
   14dc4:	mov	x2, x22
   14dc8:	bl	0x21000
   14dcc:	tbnz	w0, #0x0, 0x14e2c
   14dd0:	mov	x0, x25
   14dd4:	mov	x2, x23
   14dd8:	bl	0x21000
   14ddc:	cbnz	w0, 0x14e2c
   14de0:	mov	x0, x25
   14de4:	mov	x2, x24
   14de8:	bl	0x21000
   14dec:	mov	x26, x0
   14df0:	mov	x0, x25
   14df4:	bl	0x200e8 ; symbol stub for: _objc_release
   14df8:	tbnz	w26, #0x0, 0x14e34
   14dfc:	add	x28, x28, #0x1
   14e00:	cmp	x21, x28
   14e04:	b.ne	0x14d84
   14e08:	mov	x2, sp
   14e0c:	add	x3, sp, #0x40
   14e10:	mov	x0, x19
   14e14:	mov	w4, #0x10
   14e18:	bl	0x20980
   14e1c:	mov	x21, x0
   14e20:	cbnz	x0, 0x14d80
   14e24:	mov	w20, #0x0
   14e28:	b	0x14e38
   14e2c:	mov	x0, x25
   14e30:	bl	0x200e8 ; symbol stub for: _objc_release
   14e34:	mov	w20, #0x1

; ===== sub_14e38 =====
   14e38:	mov	x0, x19
   14e3c:	bl	0x200e8 ; symbol stub for: _objc_release
   14e40:	ldur	x8, [x29, #-0x60]
   14e44:	adrp	x9, 30 ; 0x32000
   14e48:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   14e4c:	ldr	x9, [x9]
   14e50:	cmp	x9, x8
   14e54:	b.ne	0x14e7c
   14e58:	mov	x0, x20
   14e5c:	ldp	x29, x30, [sp, #0x120]
   14e60:	ldp	x20, x19, [sp, #0x110]
   14e64:	ldp	x22, x21, [sp, #0x100]
   14e68:	ldp	x24, x23, [sp, #0xf0]
   14e6c:	ldp	x26, x25, [sp, #0xe0]
   14e70:	ldp	x28, x27, [sp, #0xd0]
   14e74:	add	sp, sp, #0x130
   14e78:	ret
   14e7c:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
   14e80:	sub	sp, sp, #0x150
   14e84:	stp	x28, x27, [sp, #0xf0]
   14e88:	stp	x26, x25, [sp, #0x100]
   14e8c:	stp	x24, x23, [sp, #0x110]
   14e90:	stp	x22, x21, [sp, #0x120]
   14e94:	stp	x20, x19, [sp, #0x130]
   14e98:	stp	x29, x30, [sp, #0x140]
   14e9c:	add	x29, sp, #0x140
   14ea0:	adrp	x8, 30 ; 0x32000
   14ea4:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   14ea8:	ldr	x8, [x8]
   14eac:	stur	x8, [x29, #-0x60]
   14eb0:	ldp	x8, x19, [x0, #0x20]
   14eb4:	mov	x0, x8
   14eb8:	bl	0x200f4 ; symbol stub for: _objc_retain
   14ebc:	mov	x20, x0
   14ec0:	mov	x0, x19
   14ec4:	bl	0x200f4 ; symbol stub for: _objc_retain
   14ec8:	mov	x19, x0
   14ecc:	adrp	x8, 34 ; 0x36000
   14ed0:	ldr	x8, [x8, #0x510]
   14ed4:	cmp	x8, #0x1
   14ed8:	b.lt	0x14f40
   14edc:	b.eq	0x14efc
   14ee0:	mov	w9, #0x3
   14ee4:	cmp	x8, #0x2
   14ee8:	mov	w10, #0x1
   14eec:	cinc	x10, x10, ne
   14ef0:	cmp	x8, #0x4
   14ef4:	csel	x8, x9, x10, eq
   14ef8:	b	0x14f00
   14efc:	mov	x8, #0x0

; ===== sub_14f00 =====
   14f00:	adrp	x9, 30 ; 0x32000
   14f04:	ldr	x9, [x9, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   14f08:	str	x9, [sp, #0x60]
   14f0c:	adrp	x9, 14 ; 0x22000
   14f10:	ldr	d0, [x9, #0x938]
   14f14:	adrp	x9, 2 ; 0x16000
   14f18:	add	x9, x9, #0x194
   14f1c:	str	d0, [sp, #0x68]
   14f20:	adrp	x10, 24 ; 0x2c000
   14f24:	add	x10, x10, #0x4c0
   14f28:	stp	x9, x10, [sp, #0x70]
   14f2c:	str	x8, [sp, #0x80]
   14f30:	adrp	x0, 30 ; 0x32000
   14f34:	ldr	x0, [x0, #0xde8] ; literal pool symbol address: __dispatch_main_q
   14f38:	add	x1, sp, #0x60
   14f3c:	bl	0x1ff08 ; symbol stub for: _dispatch_async
   14f40:	adrp	x8, 34 ; 0x36000
   14f44:	ldrb	w8, [x8, #0x508]
   14f48:	cmp	w8, #0x1
   14f4c:	b.ne	0x15108
   14f50:	str	x20, [sp, #0x10]
   14f54:	adrp	x8, 33 ; 0x35000
   14f58:	ldr	x0, [x8, #0xa40] ; Objc class ref: bad class ref
   14f5c:	bl	0x20560
   14f60:	mov	x29, x29
   14f64:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   14f68:	str	x0, [sp, #0x18]
   14f6c:	movi.16b	v0, #0x0
   14f70:	stp	q0, q0, [sp, #0x20]
   14f74:	stp	q0, q0, [sp, #0x40]
   14f78:	str	x19, [sp, #0x8]
   14f7c:	mov	x0, x19
   14f80:	bl	0x200f4 ; symbol stub for: _objc_retain
   14f84:	mov	x22, x0
   14f88:	add	x2, sp, #0x20
   14f8c:	add	x3, sp, #0x60
   14f90:	mov	w4, #0x10
   14f94:	bl	0x20980
   14f98:	cbz	x0, 0x150bc
   14f9c:	mov	x24, x0
   14fa0:	adrp	x23, 27 ; 0x2f000
   14fa4:	add	x23, x23, #0x5c8 ; "pause:"
   14fa8:	ldr	x8, [sp, #0x30]
   14fac:	adrp	x25, 27 ; 0x2f000
   14fb0:	add	x25, x25, #0x5e8 ; "if:"
   14fb4:	ldr	x19, [x8]
   14fb8:	adrp	x26, 27 ; 0x2f000
   14fbc:	add	x26, x26, #0x608 ; "else"
   14fc0:	adrp	x27, 27 ; 0x2f000
   14fc4:	add	x27, x27, #0x628 ; "endif"
   14fc8:	mov	x28, #0x0
   14fcc:	ldr	x8, [sp, #0x30]
   14fd0:	ldr	x8, [x8]
   14fd4:	cmp	x8, x19
   14fd8:	b.eq	0x14fe4
   14fdc:	mov	x0, x22
   14fe0:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   14fe4:	ldr	x8, [sp, #0x28]
   14fe8:	ldr	x0, [x8, x28, lsl #3]
   14fec:	bl	0x200f4 ; symbol stub for: _objc_retain
   14ff0:	mov	x20, x0
   14ff4:	mov	x2, x23
   14ff8:	bl	0x20d80
   14ffc:	tbnz	w0, #0x0, 0x15020
   15000:	mov	x0, x20
   15004:	mov	x2, x25
   15008:	bl	0x20d80
   1500c:	tbnz	w0, #0x0, 0x15020
   15010:	mov	x0, x20
   15014:	mov	x2, x26
   15018:	bl	0x21000
   1501c:	tbz	w0, #0x0, 0x15038

; ===== sub_15020 =====
   15020:	mov	x0, x20
   15024:	bl	0x200e8 ; symbol stub for: _objc_release
   15028:	add	x28, x28, #0x1
   1502c:	cmp	x24, x28
   15030:	b.ne	0x14fcc
   15034:	b	0x150a0
   15038:	mov	x0, x20
   1503c:	mov	x2, x27
   15040:	bl	0x21000
   15044:	mov	x21, x0
   15048:	mov	x0, x20
   1504c:	bl	0x200e8 ; symbol stub for: _objc_release
   15050:	tbnz	w21, #0x0, 0x15028
   15054:	mov	x0, x20
   15058:	adrp	x2, 26 ; 0x2f000
   1505c:	add	x2, x2, #0x3c8 ; "menu:"
   15060:	bl	0x20d80
   15064:	tbnz	w0, #0x0, 0x15028
   15068:	mov	x0, x20
   1506c:	adrp	x2, 26 ; 0x2f000
   15070:	add	x2, x2, #0xa28 ; "system.nothing"
   15074:	bl	0x21000
   15078:	tbnz	w0, #0x0, 0x15028
   1507c:	mov	x0, x20
   15080:	bl	0x1515c
   15084:	mov	x29, x29
   15088:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1508c:	mov	x20, x0
   15090:	ldr	x0, [sp, #0x18]
   15094:	mov	x2, x20
   15098:	bl	0x203c0
   1509c:	b	0x15020

; ===== sub_150a0 =====
   150a0:	add	x2, sp, #0x20
   150a4:	add	x3, sp, #0x60
   150a8:	mov	x0, x22
   150ac:	mov	w4, #0x10
   150b0:	bl	0x20980
   150b4:	mov	x24, x0
   150b8:	cbnz	x0, 0x14fc8
   150bc:	mov	x0, x22
   150c0:	bl	0x200e8 ; symbol stub for: _objc_release
   150c4:	ldr	x20, [sp, #0x18]
   150c8:	mov	x0, x20
   150cc:	bl	0x20960
   150d0:	cbz	x0, 0x150fc
   150d4:	adrp	x2, 27 ; 0x30000
   150d8:	add	x2, x2, #0xb08
   150dc:	mov	x0, x20
   150e0:	bl	0x207c0
   150e4:	mov	x29, x29
   150e8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   150ec:	mov	x19, x0
   150f0:	bl	0xe8ac
   150f4:	mov	x0, x19
   150f8:	bl	0x200e8 ; symbol stub for: _objc_release
   150fc:	mov	x0, x20
   15100:	bl	0x200e8 ; symbol stub for: _objc_release
   15104:	ldp	x19, x20, [sp, #0x8]
   15108:	mov	x0, x19
   1510c:	bl	0x7ec4
   15110:	mov	x0, x19
   15114:	bl	0x200e8 ; symbol stub for: _objc_release
   15118:	mov	x0, x20
   1511c:	bl	0x200e8 ; symbol stub for: _objc_release
   15120:	ldur	x8, [x29, #-0x60]
   15124:	adrp	x9, 29 ; 0x32000
   15128:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1512c:	ldr	x9, [x9]
   15130:	cmp	x9, x8
   15134:	b.ne	0x15158
   15138:	ldp	x29, x30, [sp, #0x140]
   1513c:	ldp	x20, x19, [sp, #0x130]
   15140:	ldp	x22, x21, [sp, #0x120]
   15144:	ldp	x24, x23, [sp, #0x110]
   15148:	ldp	x26, x25, [sp, #0x100]
   1514c:	ldp	x28, x27, [sp, #0xf0]
   15150:	add	sp, sp, #0x150
   15154:	ret
   15158:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_1515c =====
   1515c:	stp	x28, x27, [sp, #-0x60]!
   15160:	stp	x26, x25, [sp, #0x10]
   15164:	stp	x24, x23, [sp, #0x20]
   15168:	stp	x22, x21, [sp, #0x30]
   1516c:	stp	x20, x19, [sp, #0x40]
   15170:	stp	x29, x30, [sp, #0x50]
   15174:	add	x29, sp, #0x50
   15178:	sub	sp, sp, #0x300
   1517c:	adrp	x8, 29 ; 0x32000
   15180:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   15184:	ldr	x8, [x8]
   15188:	stur	x8, [x29, #-0x60]
   1518c:	bl	0x200f4 ; symbol stub for: _objc_retain
   15190:	mov	x25, x0
   15194:	adrp	x2, 26 ; 0x2f000
   15198:	add	x2, x2, #0x3c8 ; "menu:"
   1519c:	bl	0x20d80
   151a0:	cbz	w0, 0x15210
   151a4:	adrp	x8, 33 ; 0x36000
   151a8:	ldr	x19, [x8, #0x328]
   151ac:	adrp	x0, 26 ; 0x2f000
   151b0:	add	x0, x0, #0x3c8 ; "menu:"
   151b4:	bl	0x21160
   151b8:	mov	x2, x0
   151bc:	mov	x0, x25
   151c0:	bl	0x22140
   151c4:	mov	x29, x29
   151c8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   151cc:	mov	x20, x0
   151d0:	mov	x0, x19
   151d4:	mov	x2, x20
   151d8:	bl	0x214e0
   151dc:	mov	x29, x29
   151e0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   151e4:	mov	x19, x0
   151e8:	adrp	x8, 27 ; 0x30000
   151ec:	add	x8, x8, #0xb28 ; "Menu"
   151f0:	cmp	x0, #0x0
   151f4:	csel	x0, x8, x0, eq
   151f8:	bl	0x200f4 ; symbol stub for: _objc_retain
   151fc:	mov	x24, x0
   15200:	mov	x0, x19
   15204:	bl	0x200e8 ; symbol stub for: _objc_release
   15208:	mov	x0, x20
   1520c:	b	0x154a4
   15210:	adrp	x2, 26 ; 0x2f000
   15214:	add	x2, x2, #0x2c8 ; "app:"
   15218:	mov	x0, x25
   1521c:	bl	0x20d80
   15220:	cbz	w0, 0x1528c
   15224:	adrp	x0, 15 ; 0x24000
   15228:	add	x0, x0, #0x1e9 ; literal pool for: "SBApplicationController"
   1522c:	bl	0x105fc
   15230:	mov	x29, x29
   15234:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15238:	mov	x19, x0
   1523c:	adrp	x0, 26 ; 0x2f000
   15240:	add	x0, x0, #0x2c8 ; "app:"
   15244:	bl	0x21160
   15248:	mov	x2, x0
   1524c:	mov	x0, x25
   15250:	bl	0x22140
   15254:	mov	x29, x29
   15258:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1525c:	mov	x20, x0
   15260:	adrp	x8, 31 ; 0x34000
   15264:	ldr	x21, [x8, #0xf38]
   15268:	mov	x0, x19
   1526c:	mov	x1, x21
   15270:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   15274:	tbz	w0, #0x0, 0x15398
   15278:	mov	x0, x19
   1527c:	mov	x2, x21
   15280:	mov	x3, x20
   15284:	bl	0x21600
   15288:	b	0x1539c
   1528c:	mov	x0, x25
   15290:	bl	0x200f4 ; symbol stub for: _objc_retain
   15294:	mov	x27, x0
   15298:	bl	0x21160
   1529c:	cbz	x0, 0x15430
   152a0:	mov	x0, x27
   152a4:	bl	0xde6c
   152a8:	mov	x29, x29
   152ac:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   152b0:	mov	x26, x0
   152b4:	cbz	x0, 0x1543c
   152b8:	mov	x0, x26
   152bc:	mov	x2, #0x0
   152c0:	bl	0x214c0
   152c4:	mov	x29, x29
   152c8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   152cc:	mov	x20, x0
   152d0:	bl	0xdab0
   152d4:	mov	x29, x29
   152d8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   152dc:	mov	x21, x0
   152e0:	adrp	x2, 27 ; 0x30000
   152e4:	add	x2, x2, #0xb88 ; "ItemTitle"
   152e8:	bl	0x214e0
   152ec:	mov	x29, x29
   152f0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   152f4:	mov	x19, x0
   152f8:	mov	x0, x21
   152fc:	bl	0x200e8 ; symbol stub for: _objc_release
   15300:	mov	x0, x20
   15304:	bl	0x200e8 ; symbol stub for: _objc_release
   15308:	adrp	x8, 32 ; 0x35000
   1530c:	ldr	x20, [x8, #0xa38] ; Objc class ref: bad class ref
   15310:	mov	x0, x20
   15314:	bl	0x200b8 ; symbol stub for: _objc_opt_class
   15318:	mov	x1, x0
   1531c:	mov	x0, x19
   15320:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
   15324:	mov	x21, x0
   15328:	mov	x22, x19
   1532c:	tbnz	w0, #0x0, 0x15348
   15330:	mov	x0, x26
   15334:	mov	x2, #0x0
   15338:	bl	0x214c0
   1533c:	mov	x29, x29
   15340:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15344:	mov	x22, x0
   15348:	mov	x0, x26
   1534c:	mov	w2, #0x1
   15350:	bl	0x214c0
   15354:	mov	x29, x29
   15358:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1535c:	mov	x23, x0
   15360:	stp	x22, x0, [sp]
   15364:	adrp	x2, 27 ; 0x30000
   15368:	add	x2, x2, #0xba8 ; "%@: %@"
   1536c:	mov	x0, x20
   15370:	bl	0x22100
   15374:	mov	x29, x29
   15378:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1537c:	mov	x24, x0
   15380:	mov	x0, x23
   15384:	bl	0x200e8 ; symbol stub for: _objc_release
   15388:	tbnz	w21, #0x0, 0x15490
   1538c:	mov	x0, x22

; ===== sub_15390 =====
   15390:	bl	0x200e8 ; symbol stub for: _objc_release
   15394:	b	0x15490
   15398:	mov	x0, #0x0

; ===== sub_1539c =====
   1539c:	bl	0x200f4 ; symbol stub for: _objc_retain
   153a0:	mov	x21, x0
   153a4:	adrp	x8, 31 ; 0x34000
   153a8:	ldr	x22, [x8, #0xf40]
   153ac:	mov	x1, x22
   153b0:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   153b4:	tbz	w0, #0x0, 0x153c8
   153b8:	mov	x0, x21
   153bc:	mov	x2, x22
   153c0:	bl	0x215e0
   153c4:	b	0x153cc
   153c8:	mov	x0, #0x0

; ===== sub_153cc =====
   153cc:	adrp	x8, 32 ; 0x35000
   153d0:	ldr	x22, [x8, #0xa38] ; Objc class ref: bad class ref
   153d4:	bl	0x200f4 ; symbol stub for: _objc_retain
   153d8:	mov	x23, x0
   153dc:	mov	x0, x22
   153e0:	bl	0x200b8 ; symbol stub for: _objc_opt_class
   153e4:	mov	x1, x0
   153e8:	mov	x0, x23
   153ec:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
   153f0:	tst	w0, #0x1
   153f4:	csel	x2, x23, x20, ne
   153f8:	adrp	x0, 27 ; 0x30000
   153fc:	add	x0, x0, #0xb48 ; "Open"
   15400:	bl	0x220a0
   15404:	mov	x29, x29
   15408:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1540c:	mov	x24, x0
   15410:	mov	x0, x23
   15414:	bl	0x200e8 ; symbol stub for: _objc_release
   15418:	mov	x0, x21
   1541c:	bl	0x200e8 ; symbol stub for: _objc_release
   15420:	mov	x0, x20
   15424:	bl	0x200e8 ; symbol stub for: _objc_release
   15428:	mov	x0, x19
   1542c:	b	0x154a4
   15430:	adrp	x24, 27 ; 0x30000
   15434:	add	x24, x24, #0xb68 ; "None"
   15438:	b	0x154a0
   1543c:	adrp	x2, 26 ; 0x2f000
   15440:	add	x2, x2, #0x3e8 ; "shortcut:"
   15444:	mov	x0, x27
   15448:	bl	0x20d80
   1544c:	cbz	w0, 0x154ec
   15450:	adrp	x0, 26 ; 0x2f000
   15454:	add	x0, x0, #0x3e8 ; "shortcut:"
   15458:	bl	0x21160
   1545c:	mov	x2, x0
   15460:	mov	x0, x27
   15464:	bl	0x22140
   15468:	mov	x29, x29
   1546c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15470:	mov	x19, x0
   15474:	adrp	x0, 27 ; 0x30000
   15478:	add	x0, x0, #0xbc8 ; "Shortcut:"

; ===== sub_1547c =====
   1547c:	mov	x2, x19
   15480:	bl	0x220a0
   15484:	mov	x29, x29
   15488:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1548c:	mov	x24, x0

; ===== sub_15490 =====
   15490:	mov	x0, x19

; ===== sub_15494 =====
   15494:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_15498 =====
   15498:	mov	x0, x26
   1549c:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_154a0 =====
   154a0:	mov	x0, x27

; ===== sub_154a4 =====
   154a4:	bl	0x200e8 ; symbol stub for: _objc_release
   154a8:	mov	x0, x25
   154ac:	bl	0x200e8 ; symbol stub for: _objc_release
   154b0:	ldur	x8, [x29, #-0x60]
   154b4:	adrp	x9, 29 ; 0x32000
   154b8:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   154bc:	ldr	x9, [x9]
   154c0:	cmp	x9, x8
   154c4:	b.ne	0x15f20
   154c8:	mov	x0, x24
   154cc:	add	sp, sp, #0x300
   154d0:	ldp	x29, x30, [sp, #0x50]
   154d4:	ldp	x20, x19, [sp, #0x40]
   154d8:	ldp	x22, x21, [sp, #0x30]
   154dc:	ldp	x24, x23, [sp, #0x20]
   154e0:	ldp	x26, x25, [sp, #0x10]
   154e4:	ldp	x28, x27, [sp], #0x60
   154e8:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue
   154ec:	adrp	x2, 26 ; 0x2f000
   154f0:	add	x2, x2, #0x3a8 ; "activator:"
   154f4:	mov	x0, x27
   154f8:	bl	0x20d80
   154fc:	cbz	w0, 0x15a6c
   15500:	str	x26, [sp, #0x18]
   15504:	str	x25, [sp, #0x28]
   15508:	adrp	x0, 26 ; 0x2f000
   1550c:	add	x0, x0, #0x3a8 ; "activator:"
   15510:	bl	0x21160
   15514:	mov	x2, x0
   15518:	str	x27, [sp, #0x20]
   1551c:	mov	x0, x27
   15520:	bl	0x22140
   15524:	mov	x29, x29
   15528:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1552c:	bl	0x200f4 ; symbol stub for: _objc_retain
   15530:	str	x0, [sp, #0x10]
   15534:	movi.16b	v0, #0x0
   15538:	stp	q0, q0, [sp, #0x50]
   1553c:	stp	q0, q0, [sp, #0x70]
   15540:	adrp	x19, 28 ; 0x31000
   15544:	add	x19, x19, #0xe08 ; "/var/jb"
   15548:	adrp	x2, 27 ; 0x30000
   1554c:	add	x2, x2, #0xde8 ; "/Library/Activator/Listeners"
   15550:	mov	x0, x19
   15554:	bl	0x220a0
   15558:	mov	x29, x29
   1555c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15560:	str	x0, [sp, #0x30]
   15564:	adrp	x25, 32 ; 0x35000
   15568:	ldr	x0, [x25, #0xa40] ; Objc class ref: bad class ref
   1556c:	bl	0x20560
   15570:	mov	x29, x29
   15574:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15578:	str	x0, [sp, #0x48]
   1557c:	movi.16b	v0, #0x0
   15580:	stp	q0, q0, [sp, #0x110]
   15584:	stp	q0, q0, [sp, #0x130]
   15588:	adrp	x26, 32 ; 0x35000
   1558c:	ldr	x0, [x26, #0xa78] ; Objc class ref: bad class ref
   15590:	bl	0x20b00
   15594:	mov	x29, x29
   15598:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1559c:	mov	x20, x0
   155a0:	adrp	x2, 26 ; 0x2f000
   155a4:	add	x2, x2, #0x528 ; "/Library/MobileSubstrate/DynamicLibraries"
   155a8:	mov	x0, x19
   155ac:	bl	0x220a0
   155b0:	mov	x29, x29
   155b4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   155b8:	mov	x21, x0
   155bc:	mov	x0, x20
   155c0:	mov	x2, x21
   155c4:	mov	x3, #0x0
   155c8:	bl	0x208e0
   155cc:	mov	x29, x29
   155d0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   155d4:	mov	x19, x0
   155d8:	mov	x0, x21
   155dc:	bl	0x200e8 ; symbol stub for: _objc_release
   155e0:	mov	x0, x20
   155e4:	bl	0x200e8 ; symbol stub for: _objc_release
   155e8:	add	x2, sp, #0x110
   155ec:	sub	x3, x29, #0xe0
   155f0:	mov	x0, x19
   155f4:	mov	w4, #0x10
   155f8:	bl	0x20980
   155fc:	cbz	x0, 0x15698
   15600:	mov	x21, x0
   15604:	ldr	x8, [sp, #0x120]
   15608:	ldr	x27, [x8]
   1560c:	adrp	x20, 26 ; 0x2f000
   15610:	add	x20, x20, #0x548 ; "dylib"
   15614:	mov	x28, #0x0
   15618:	ldr	x8, [sp, #0x120]
   1561c:	ldr	x8, [x8]
   15620:	cmp	x8, x27
   15624:	b.eq	0x15630
   15628:	mov	x0, x19
   1562c:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   15630:	ldr	x8, [sp, #0x118]
   15634:	ldr	x22, [x8, x28, lsl #3]
   15638:	mov	x0, x22
   1563c:	bl	0x215c0
   15640:	mov	x29, x29
   15644:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15648:	mov	x23, x0
   1564c:	mov	x2, x20
   15650:	bl	0x21000
   15654:	mov	x24, x0
   15658:	mov	x0, x23
   1565c:	bl	0x200e8 ; symbol stub for: _objc_release
   15660:	cbz	w24, 0x15670
   15664:	ldr	x0, [sp, #0x48]
   15668:	mov	x2, x22
   1566c:	bl	0x203c0
   15670:	add	x28, x28, #0x1
   15674:	cmp	x21, x28
   15678:	b.ne	0x15618
   1567c:	add	x2, sp, #0x110
   15680:	sub	x3, x29, #0xe0
   15684:	mov	x0, x19
   15688:	mov	w4, #0x10
   1568c:	bl	0x20980
   15690:	mov	x21, x0
   15694:	cbnz	x0, 0x15614
   15698:	mov	x0, x19
   1569c:	bl	0x200e8 ; symbol stub for: _objc_release
   156a0:	ldr	x0, [x25, #0xa40]
   156a4:	bl	0x20560
   156a8:	mov	x29, x29
   156ac:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   156b0:	str	x0, [sp, #0x40]
   156b4:	movi.16b	v0, #0x0
   156b8:	stp	q0, q0, [sp, #0xd0]
   156bc:	stp	q0, q0, [sp, #0xf0]
   156c0:	ldr	x0, [x26, #0xa78]
   156c4:	bl	0x20b00
   156c8:	mov	x29, x29
   156cc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   156d0:	mov	x19, x0
   156d4:	ldr	x2, [sp, #0x30]
   156d8:	mov	x3, #0x0
   156dc:	bl	0x208e0
   156e0:	mov	x29, x29
   156e4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   156e8:	mov	x24, x0
   156ec:	mov	x0, x19
   156f0:	bl	0x200e8 ; symbol stub for: _objc_release
   156f4:	add	x2, sp, #0xd0
   156f8:	add	x3, sp, #0x1f0
   156fc:	mov	x0, x24
   15700:	mov	w4, #0x10
   15704:	bl	0x20980
   15708:	cbz	x0, 0x15980
   1570c:	mov	x28, x0
   15710:	ldr	x8, [sp, #0xe0]
   15714:	adrp	x27, 26 ; 0x2f000
   15718:	add	x27, x27, #0x5a8
   1571c:	ldr	x21, [x8]
   15720:	adrp	x26, 26 ; 0x2f000
   15724:	add	x26, x26, #0x4a8 ; "com.jontelang.snapper3."
   15728:	str	x24, [sp, #0x38]
   1572c:	mov	x25, #0x0
   15730:	ldr	x8, [sp, #0xe0]
   15734:	ldr	x8, [x8]
   15738:	cmp	x8, x21
   1573c:	b.eq	0x15748
   15740:	mov	x0, x24
   15744:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   15748:	ldr	x8, [sp, #0xd8]
   1574c:	ldr	x20, [x8, x25, lsl #3]
   15750:	mov	x0, x20
   15754:	mov	x2, x27
   15758:	bl	0x20d80
   1575c:	tbnz	w0, #0x0, 0x15958
   15760:	mov	x0, x20
   15764:	mov	x2, x26
   15768:	bl	0x20d80
   1576c:	tbnz	w0, #0x0, 0x15958
   15770:	movi.16b	v0, #0x0
   15774:	stp	q0, q0, [sp, #0xb0]
   15778:	stp	q0, q0, [sp, #0x90]
   1577c:	ldr	x0, [sp, #0x48]
   15780:	bl	0x200f4 ; symbol stub for: _objc_retain
   15784:	mov	x22, x0
   15788:	add	x2, sp, #0x90
   1578c:	add	x3, sp, #0x170
   15790:	mov	w4, #0x10
   15794:	bl	0x20980
   15798:	cbz	x0, 0x15950
   1579c:	mov	x19, x0
   157a0:	ldr	x8, [sp, #0xa0]
   157a4:	ldr	x23, [x8]
   157a8:	mov	x24, #0x0
   157ac:	ldr	x8, [sp, #0xa0]
   157b0:	ldr	x8, [x8]
   157b4:	cmp	x8, x23
   157b8:	b.eq	0x157c4
   157bc:	mov	x0, x22
   157c0:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   157c4:	ldr	x8, [sp, #0x98]
   157c8:	ldr	x0, [x8, x24, lsl #3]
   157cc:	mov	x1, x20
   157d0:	bl	0xe38c
   157d4:	tbnz	w0, #0x0, 0x15804
   157d8:	add	x24, x24, #0x1
   157dc:	cmp	x19, x24
   157e0:	b.ne	0x157ac
   157e4:	add	x2, sp, #0x90
   157e8:	add	x3, sp, #0x170
   157ec:	mov	x0, x22
   157f0:	mov	w4, #0x10
   157f4:	bl	0x20980
   157f8:	mov	x19, x0
   157fc:	cbnz	x0, 0x157a8
   15800:	b	0x1594c
   15804:	mov	x0, x22
   15808:	bl	0x200e8 ; symbol stub for: _objc_release
   1580c:	adrp	x8, 32 ; 0x35000
   15810:	ldr	x19, [x8, #0xaf8] ; Objc class ref: bad class ref
   15814:	ldr	x0, [sp, #0x30]
   15818:	mov	x2, x20
   1581c:	bl	0x22060
   15820:	mov	x29, x29
   15824:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15828:	mov	x24, x0
   1582c:	adrp	x2, 27 ; 0x30000
   15830:	add	x2, x2, #0xe08 ; "Info.plist"
   15834:	bl	0x22060
   15838:	mov	x29, x29
   1583c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15840:	mov	x23, x0
   15844:	mov	x0, x19
   15848:	mov	x2, x23
   1584c:	bl	0x20b80
   15850:	mov	x29, x29
   15854:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15858:	mov	x22, x0
   1585c:	mov	x0, x23
   15860:	bl	0x200e8 ; symbol stub for: _objc_release
   15864:	mov	x0, x24
   15868:	bl	0x200e8 ; symbol stub for: _objc_release
   1586c:	mov	x0, x22
   15870:	adrp	x2, 27 ; 0x30000
   15874:	add	x2, x2, #0xe28 ; "title"
   15878:	bl	0x214e0
   1587c:	mov	x29, x29
   15880:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15884:	mov	x19, x0
   15888:	mov	x0, x22
   1588c:	adrp	x2, 27 ; 0x30000
   15890:	add	x2, x2, #0xe48 ; "group"
   15894:	bl	0x214e0
   15898:	mov	x29, x29
   1589c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   158a0:	mov	x24, x0
   158a4:	str	x20, [sp, #0x158]
   158a8:	adrp	x8, 32 ; 0x35000
   158ac:	ldr	x0, [x8, #0xa38] ; Objc class ref: bad class ref
   158b0:	bl	0x200b8 ; symbol stub for: _objc_opt_class
   158b4:	mov	x1, x0
   158b8:	mov	x0, x19
   158bc:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
   158c0:	tbz	w0, #0x0, 0x158d4
   158c4:	mov	x0, x19
   158c8:	bl	0x21160
   158cc:	mov	x8, x19
   158d0:	cbnz	x0, 0x158d8
   158d4:	mov	x8, x20
   158d8:	str	x8, [sp, #0x160]
   158dc:	adrp	x8, 32 ; 0x35000
   158e0:	ldr	x0, [x8, #0xa38] ; Objc class ref: bad class ref
   158e4:	bl	0x200b8 ; symbol stub for: _objc_opt_class
   158e8:	mov	x1, x0
   158ec:	mov	x0, x24
   158f0:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
   158f4:	tst	w0, #0x1
   158f8:	adrp	x8, 26 ; 0x2f000
   158fc:	add	x8, x8, #0xae8
   15900:	csel	x8, x24, x8, ne
   15904:	str	x8, [sp, #0x168]
   15908:	adrp	x8, 32 ; 0x35000
   1590c:	ldr	x0, [x8, #0xa48] ; Objc class ref: bad class ref
   15910:	add	x2, sp, #0x158
   15914:	mov	w3, #0x3
   15918:	bl	0x20580
   1591c:	mov	x29, x29
   15920:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15924:	mov	x20, x0
   15928:	ldr	x0, [sp, #0x40]
   1592c:	mov	x2, x20
   15930:	bl	0x203c0
   15934:	mov	x0, x20
   15938:	bl	0x200e8 ; symbol stub for: _objc_release
   1593c:	mov	x0, x24
   15940:	bl	0x200e8 ; symbol stub for: _objc_release
   15944:	mov	x0, x19
   15948:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_1594c =====
   1594c:	ldr	x24, [sp, #0x38]
   15950:	mov	x0, x22
   15954:	bl	0x200e8 ; symbol stub for: _objc_release
   15958:	add	x25, x25, #0x1
   1595c:	cmp	x25, x28
   15960:	b.ne	0x15730
   15964:	add	x2, sp, #0xd0
   15968:	add	x3, sp, #0x1f0
   1596c:	mov	x0, x24
   15970:	mov	w4, #0x10
   15974:	bl	0x20980
   15978:	mov	x28, x0
   1597c:	cbnz	x0, 0x1572c
   15980:	mov	x0, x24
   15984:	bl	0x200e8 ; symbol stub for: _objc_release
   15988:	adrp	x2, 24 ; 0x2d000
   1598c:	add	x2, x2, #0x30
   15990:	ldr	x19, [sp, #0x40]
   15994:	mov	x0, x19
   15998:	bl	0x21f40
   1599c:	ldr	x0, [sp, #0x48]
   159a0:	bl	0x200e8 ; symbol stub for: _objc_release
   159a4:	ldr	x0, [sp, #0x30]
   159a8:	bl	0x200e8 ; symbol stub for: _objc_release
   159ac:	add	x2, sp, #0x50
   159b0:	sub	x3, x29, #0xe0
   159b4:	mov	x0, x19
   159b8:	mov	w4, #0x10
   159bc:	bl	0x20980
   159c0:	ldp	x27, x25, [sp, #0x20]
   159c4:	ldp	x28, x26, [sp, #0x10]
   159c8:	cbz	x0, 0x15a54
   159cc:	mov	x19, x0
   159d0:	ldr	x8, [sp, #0x60]
   159d4:	ldr	x23, [x8]
   159d8:	mov	x24, #0x0
   159dc:	ldr	x8, [sp, #0x60]
   159e0:	ldr	x8, [x8]
   159e4:	cmp	x8, x23
   159e8:	b.eq	0x159f4
   159ec:	ldr	x0, [sp, #0x40]
   159f0:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   159f4:	ldr	x8, [sp, #0x58]
   159f8:	ldr	x20, [x8, x24, lsl #3]
   159fc:	mov	x0, x20
   15a00:	mov	x2, #0x0
   15a04:	bl	0x214c0
   15a08:	mov	x29, x29
   15a0c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15a10:	mov	x21, x0
   15a14:	mov	x2, x28
   15a18:	bl	0x21000
   15a1c:	mov	x22, x0
   15a20:	mov	x0, x21
   15a24:	bl	0x200e8 ; symbol stub for: _objc_release
   15a28:	cbnz	w22, 0x15ab0
   15a2c:	add	x24, x24, #0x1
   15a30:	cmp	x19, x24
   15a34:	b.ne	0x159dc
   15a38:	add	x2, sp, #0x50
   15a3c:	sub	x3, x29, #0xe0
   15a40:	ldr	x0, [sp, #0x40]
   15a44:	mov	w4, #0x10
   15a48:	bl	0x20980
   15a4c:	mov	x19, x0
   15a50:	cbnz	x0, 0x159d8
   15a54:	ldr	x0, [sp, #0x40]
   15a58:	bl	0x200e8 ; symbol stub for: _objc_release
   15a5c:	mov	x0, x28
   15a60:	bl	0x200f4 ; symbol stub for: _objc_retain
   15a64:	mov	x24, x0
   15a68:	b	0x15bec
   15a6c:	adrp	x2, 26 ; 0x2f000
   15a70:	add	x2, x2, #0x408 ; "url:"
   15a74:	mov	x0, x27
   15a78:	bl	0x20d80
   15a7c:	cbz	w0, 0x15b3c
   15a80:	adrp	x0, 26 ; 0x2f000
   15a84:	add	x0, x0, #0x408 ; "url:"
   15a88:	bl	0x21160
   15a8c:	mov	x2, x0
   15a90:	mov	x0, x27
   15a94:	bl	0x22140
   15a98:	mov	x29, x29
   15a9c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15aa0:	mov	x19, x0
   15aa4:	adrp	x0, 27 ; 0x30000
   15aa8:	add	x0, x0, #0xbe8 ; "URL:"
   15aac:	b	0x1547c
   15ab0:	mov	x0, x20
   15ab4:	mov	w2, #0x2
   15ab8:	bl	0x214c0
   15abc:	mov	x29, x29
   15ac0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15ac4:	mov	x19, x0
   15ac8:	bl	0x21160
   15acc:	cbz	x0, 0x15bc4
   15ad0:	adrp	x8, 32 ; 0x35000
   15ad4:	ldr	x21, [x8, #0xa38] ; Objc class ref: bad class ref
   15ad8:	mov	x0, x20
   15adc:	mov	w2, #0x2
   15ae0:	bl	0x214c0
   15ae4:	mov	x29, x29
   15ae8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15aec:	mov	x22, x0
   15af0:	mov	x0, x20
   15af4:	mov	w2, #0x1
   15af8:	bl	0x214c0
   15afc:	mov	x29, x29
   15b00:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15b04:	mov	x20, x0
   15b08:	stp	x22, x0, [sp]
   15b0c:	adrp	x2, 27 ; 0x30000
   15b10:	add	x2, x2, #0xba8 ; "%@: %@"
   15b14:	mov	x0, x21
   15b18:	bl	0x22100
   15b1c:	mov	x29, x29
   15b20:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15b24:	mov	x24, x0
   15b28:	mov	x0, x20
   15b2c:	bl	0x200e8 ; symbol stub for: _objc_release
   15b30:	mov	x0, x22
   15b34:	bl	0x200e8 ; symbol stub for: _objc_release
   15b38:	b	0x15bdc
   15b3c:	adrp	x2, 26 ; 0x2f000
   15b40:	add	x2, x2, #0x428 ; "shell:"
   15b44:	mov	x0, x27
   15b48:	bl	0x20d80
   15b4c:	cbz	w0, 0x15b80
   15b50:	adrp	x0, 26 ; 0x2f000
   15b54:	add	x0, x0, #0x428 ; "shell:"
   15b58:	bl	0x21160
   15b5c:	mov	x2, x0
   15b60:	mov	x0, x27
   15b64:	bl	0x22140
   15b68:	mov	x29, x29
   15b6c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15b70:	mov	x19, x0
   15b74:	adrp	x0, 27 ; 0x30000
   15b78:	add	x0, x0, #0xc08 ; "Command:"
   15b7c:	b	0x1547c
   15b80:	adrp	x2, 26 ; 0x2f000
   15b84:	add	x2, x2, #0x2c8 ; "app:"
   15b88:	mov	x0, x27
   15b8c:	bl	0x20d80
   15b90:	cbz	w0, 0x15bfc
   15b94:	adrp	x0, 26 ; 0x2f000
   15b98:	add	x0, x0, #0x2c8 ; "app:"
   15b9c:	bl	0x21160
   15ba0:	mov	x2, x0
   15ba4:	mov	x0, x27
   15ba8:	bl	0x22140
   15bac:	mov	x29, x29
   15bb0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15bb4:	mov	x19, x0
   15bb8:	adrp	x0, 27 ; 0x30000
   15bbc:	add	x0, x0, #0xb48 ; "Open"
   15bc0:	b	0x1547c
   15bc4:	mov	x0, x20
   15bc8:	mov	w2, #0x1
   15bcc:	bl	0x214c0
   15bd0:	mov	x29, x29
   15bd4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15bd8:	mov	x24, x0

; ===== sub_15bdc =====
   15bdc:	mov	x0, x19
   15be0:	bl	0x200e8 ; symbol stub for: _objc_release
   15be4:	ldr	x0, [sp, #0x40]
   15be8:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_15bec =====
   15bec:	mov	x0, x28
   15bf0:	bl	0x200e8 ; symbol stub for: _objc_release
   15bf4:	mov	x0, x28
   15bf8:	b	0x15494
   15bfc:	adrp	x2, 26 ; 0x2f000
   15c00:	add	x2, x2, #0x5c8 ; "pause:"
   15c04:	mov	x0, x27
   15c08:	bl	0x20d80
   15c0c:	cbz	w0, 0x15c64
   15c10:	adrp	x8, 32 ; 0x35000
   15c14:	ldr	x19, [x8, #0xa38] ; Objc class ref: bad class ref
   15c18:	adrp	x0, 26 ; 0x2f000
   15c1c:	add	x0, x0, #0x5c8 ; "pause:"
   15c20:	bl	0x21160
   15c24:	mov	x2, x0
   15c28:	mov	x0, x27
   15c2c:	bl	0x22140
   15c30:	mov	x29, x29
   15c34:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15c38:	mov	x20, x0
   15c3c:	str	x0, [sp]
   15c40:	adrp	x2, 27 ; 0x30000
   15c44:	add	x2, x2, #0xc28 ; "Pause %@ s"

; ===== sub_15c48 =====
   15c48:	mov	x0, x19
   15c4c:	bl	0x22100
   15c50:	mov	x29, x29
   15c54:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15c58:	mov	x24, x0
   15c5c:	mov	x0, x20
   15c60:	b	0x15494
   15c64:	adrp	x2, 26 ; 0x2f000
   15c68:	add	x2, x2, #0x5e8 ; "if:"
   15c6c:	mov	x0, x27
   15c70:	bl	0x20d80
   15c74:	cbz	w0, 0x15cd0
   15c78:	adrp	x0, 26 ; 0x2f000
   15c7c:	add	x0, x0, #0x5e8 ; "if:"
   15c80:	bl	0x21160
   15c84:	mov	x2, x0
   15c88:	mov	x0, x27
   15c8c:	bl	0x22140
   15c90:	mov	x29, x29
   15c94:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15c98:	mov	x19, x0
   15c9c:	bl	0x161d8
   15ca0:	mov	x29, x29
   15ca4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15ca8:	mov	x20, x0
   15cac:	adrp	x0, 27 ; 0x30000
   15cb0:	add	x0, x0, #0xc48 ; "If"
   15cb4:	mov	x2, x20
   15cb8:	bl	0x220a0
   15cbc:	mov	x29, x29
   15cc0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15cc4:	mov	x24, x0
   15cc8:	mov	x0, x20
   15ccc:	b	0x15390
   15cd0:	adrp	x2, 26 ; 0x2f000
   15cd4:	add	x2, x2, #0x608 ; "else"
   15cd8:	mov	x0, x27
   15cdc:	bl	0x21000
   15ce0:	tbz	w0, #0x0, 0x15cf0
   15ce4:	adrp	x24, 27 ; 0x30000
   15ce8:	add	x24, x24, #0xc68 ; "Otherwise"
   15cec:	b	0x15498
   15cf0:	adrp	x2, 26 ; 0x2f000
   15cf4:	add	x2, x2, #0x628 ; "endif"
   15cf8:	mov	x0, x27
   15cfc:	bl	0x21000
   15d00:	tbz	w0, #0x0, 0x15d10
   15d04:	adrp	x24, 27 ; 0x30000
   15d08:	add	x24, x24, #0xc88 ; "End If"
   15d0c:	b	0x15498
   15d10:	adrp	x2, 26 ; 0x2f000
   15d14:	add	x2, x2, #0x3c8 ; "menu:"
   15d18:	mov	x0, x27
   15d1c:	bl	0x20d80
   15d20:	tbz	w0, #0x0, 0x15d30
   15d24:	adrp	x24, 27 ; 0x30000
   15d28:	add	x24, x24, #0xb28 ; "Menu"
   15d2c:	b	0x15498
   15d30:	adrp	x2, 26 ; 0x2f000
   15d34:	add	x2, x2, #0x648 ; "brightness:"
   15d38:	mov	x28, x27
   15d3c:	mov	x0, x27
   15d40:	bl	0x20d80
   15d44:	cbz	w0, 0x15d88
   15d48:	adrp	x8, 32 ; 0x35000
   15d4c:	ldr	x19, [x8, #0xa38] ; Objc class ref: bad class ref
   15d50:	adrp	x0, 26 ; 0x2f000
   15d54:	add	x0, x0, #0x648 ; "brightness:"
   15d58:	bl	0x21160
   15d5c:	mov	x2, x0
   15d60:	mov	x27, x28
   15d64:	mov	x0, x28
   15d68:	bl	0x22140
   15d6c:	mov	x29, x29
   15d70:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15d74:	mov	x20, x0
   15d78:	str	x0, [sp]
   15d7c:	adrp	x2, 27 ; 0x30000
   15d80:	add	x2, x2, #0xca8 ; "Brightness %@%%"
   15d84:	b	0x15c48
   15d88:	adrp	x2, 26 ; 0x2f000
   15d8c:	add	x2, x2, #0x668 ; "brightness.up:"
   15d90:	mov	x0, x28
   15d94:	bl	0x20d80
   15d98:	cbz	w0, 0x15ddc
   15d9c:	adrp	x8, 32 ; 0x35000
   15da0:	ldr	x19, [x8, #0xa38] ; Objc class ref: bad class ref
   15da4:	adrp	x0, 26 ; 0x2f000
   15da8:	add	x0, x0, #0x668 ; "brightness.up:"
   15dac:	bl	0x21160
   15db0:	mov	x2, x0
   15db4:	mov	x27, x28
   15db8:	mov	x0, x28
   15dbc:	bl	0x22140
   15dc0:	mov	x29, x29
   15dc4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15dc8:	mov	x20, x0
   15dcc:	str	x0, [sp]
   15dd0:	adrp	x2, 27 ; 0x30000
   15dd4:	add	x2, x2, #0xcc8 ; "Brightness Up %@%%"
   15dd8:	b	0x15c48
   15ddc:	adrp	x2, 26 ; 0x2f000
   15de0:	add	x2, x2, #0x688 ; "brightness.down:"
   15de4:	mov	x0, x28
   15de8:	bl	0x20d80
   15dec:	cbz	w0, 0x15e30
   15df0:	adrp	x8, 32 ; 0x35000
   15df4:	ldr	x19, [x8, #0xa38] ; Objc class ref: bad class ref
   15df8:	adrp	x0, 26 ; 0x2f000
   15dfc:	add	x0, x0, #0x688 ; "brightness.down:"
   15e00:	bl	0x21160
   15e04:	mov	x2, x0
   15e08:	mov	x27, x28
   15e0c:	mov	x0, x28
   15e10:	bl	0x22140
   15e14:	mov	x29, x29
   15e18:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15e1c:	mov	x20, x0
   15e20:	str	x0, [sp]
   15e24:	adrp	x2, 27 ; 0x30000
   15e28:	add	x2, x2, #0xce8 ; "Brightness Down %@%%"
   15e2c:	b	0x15c48
   15e30:	adrp	x2, 26 ; 0x2f000
   15e34:	add	x2, x2, #0x6a8 ; "volume.media:"
   15e38:	mov	x0, x28
   15e3c:	bl	0x20d80
   15e40:	cbz	w0, 0x15e84
   15e44:	adrp	x8, 32 ; 0x35000
   15e48:	ldr	x19, [x8, #0xa38] ; Objc class ref: bad class ref
   15e4c:	adrp	x0, 26 ; 0x2f000
   15e50:	add	x0, x0, #0x6a8 ; "volume.media:"
   15e54:	bl	0x21160
   15e58:	mov	x2, x0
   15e5c:	mov	x27, x28
   15e60:	mov	x0, x28
   15e64:	bl	0x22140
   15e68:	mov	x29, x29
   15e6c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15e70:	mov	x20, x0
   15e74:	str	x0, [sp]
   15e78:	adrp	x2, 27 ; 0x30000
   15e7c:	add	x2, x2, #0xd08 ; "Media Volume %@%%"
   15e80:	b	0x15c48
   15e84:	adrp	x2, 26 ; 0x2f000
   15e88:	add	x2, x2, #0x6e8 ; "volume.ringer:"
   15e8c:	mov	x0, x28
   15e90:	bl	0x20d80
   15e94:	cbz	w0, 0x15ed8
   15e98:	adrp	x8, 32 ; 0x35000
   15e9c:	ldr	x19, [x8, #0xa38] ; Objc class ref: bad class ref
   15ea0:	adrp	x0, 26 ; 0x2f000
   15ea4:	add	x0, x0, #0x6e8 ; "volume.ringer:"
   15ea8:	bl	0x21160
   15eac:	mov	x2, x0
   15eb0:	mov	x27, x28
   15eb4:	mov	x0, x28
   15eb8:	bl	0x22140
   15ebc:	mov	x29, x29
   15ec0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15ec4:	mov	x20, x0
   15ec8:	str	x0, [sp]
   15ecc:	adrp	x2, 27 ; 0x30000
   15ed0:	add	x2, x2, #0xd28 ; "Ringer Volume %@%%"
   15ed4:	b	0x15c48
   15ed8:	adrp	x2, 26 ; 0x2f000
   15edc:	add	x2, x2, #0x728 ; "message:"
   15ee0:	mov	x0, x28
   15ee4:	bl	0x20d80
   15ee8:	cbz	w0, 0x15f24
   15eec:	adrp	x0, 26 ; 0x2f000
   15ef0:	add	x0, x0, #0x728 ; "message:"
   15ef4:	bl	0x21160
   15ef8:	mov	x2, x0
   15efc:	mov	x27, x28
   15f00:	mov	x0, x28
   15f04:	bl	0x22140
   15f08:	mov	x29, x29
   15f0c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15f10:	mov	x19, x0
   15f14:	adrp	x0, 27 ; 0x30000
   15f18:	add	x0, x0, #0xd48 ; "Message:"
   15f1c:	b	0x1547c
   15f20:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
   15f24:	adrp	x2, 26 ; 0x2f000
   15f28:	add	x2, x2, #0x788 ; "speak:"
   15f2c:	mov	x0, x28
   15f30:	bl	0x20d80
   15f34:	cbz	w0, 0x15f6c
   15f38:	adrp	x0, 26 ; 0x2f000
   15f3c:	add	x0, x0, #0x788 ; "speak:"
   15f40:	bl	0x21160
   15f44:	mov	x2, x0
   15f48:	mov	x27, x28
   15f4c:	mov	x0, x28
   15f50:	bl	0x22140
   15f54:	mov	x29, x29
   15f58:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15f5c:	mov	x19, x0
   15f60:	adrp	x0, 27 ; 0x30000
   15f64:	add	x0, x0, #0xd68 ; "Say:"
   15f68:	b	0x1547c
   15f6c:	adrp	x2, 26 ; 0x2f000
   15f70:	add	x2, x2, #0x7a8 ; "toast:"
   15f74:	mov	x0, x28
   15f78:	bl	0x20d80
   15f7c:	cbz	w0, 0x15fb4
   15f80:	adrp	x0, 26 ; 0x2f000
   15f84:	add	x0, x0, #0x7a8 ; "toast:"
   15f88:	bl	0x21160
   15f8c:	mov	x2, x0
   15f90:	mov	x27, x28
   15f94:	mov	x0, x28
   15f98:	bl	0x22140
   15f9c:	mov	x29, x29
   15fa0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15fa4:	mov	x19, x0
   15fa8:	adrp	x0, 27 ; 0x30000
   15fac:	add	x0, x0, #0xd88 ; "Show:"
   15fb0:	b	0x1547c
   15fb4:	adrp	x2, 26 ; 0x2f000
   15fb8:	add	x2, x2, #0x7c8 ; "airplay:"
   15fbc:	mov	x0, x28
   15fc0:	bl	0x20d80
   15fc4:	cbz	w0, 0x15ffc
   15fc8:	adrp	x0, 26 ; 0x2f000
   15fcc:	add	x0, x0, #0x7c8 ; "airplay:"
   15fd0:	bl	0x21160
   15fd4:	mov	x2, x0
   15fd8:	mov	x27, x28
   15fdc:	mov	x0, x28
   15fe0:	bl	0x22140
   15fe4:	mov	x29, x29
   15fe8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   15fec:	mov	x19, x0
   15ff0:	adrp	x0, 27 ; 0x30000
   15ff4:	add	x0, x0, #0xda8 ; "AirPlay to"
   15ff8:	b	0x1547c
   15ffc:	adrp	x2, 26 ; 0x2f000
   16000:	add	x2, x2, #0x7e8 ; "settings:"
   16004:	mov	x0, x28
   16008:	bl	0x20d80
   1600c:	tbz	w0, #0x0, 0x160a4
   16010:	adrp	x0, 25 ; 0x2f000
   16014:	add	x0, x0, #0x7e8 ; "settings:"
   16018:	bl	0x21160
   1601c:	mov	x2, x0
   16020:	mov	x0, x28
   16024:	bl	0x22140
   16028:	mov	x29, x29
   1602c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16030:	mov	x19, x0
   16034:	mov	w22, #0xb
   16038:	adrp	x23, 31 ; 0x35000
   1603c:	adrp	x24, 22 ; 0x2c000
   16040:	add	x24, x24, #0xf68
   16044:	ldr	x0, [x23, #0xa38]
   16048:	ldur	x2, [x24, #-0x8]
   1604c:	bl	0x22120
   16050:	mov	x29, x29
   16054:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16058:	mov	x20, x0
   1605c:	mov	x0, x19
   16060:	mov	x2, x20
   16064:	bl	0x21000
   16068:	mov	x21, x0
   1606c:	mov	x0, x20
   16070:	bl	0x200e8 ; symbol stub for: _objc_release
   16074:	cbnz	w21, 0x16148
   16078:	add	x24, x24, #0x10
   1607c:	subs	x22, x22, #0x1
   16080:	b.ne	0x16044
   16084:	adrp	x0, 26 ; 0x30000
   16088:	add	x0, x0, #0xdc8 ; "Settings:"
   1608c:	mov	x2, x19
   16090:	bl	0x220a0
   16094:	mov	x29, x29
   16098:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1609c:	mov	x24, x0
   160a0:	b	0x16184
   160a4:	mov	x21, #0x0
   160a8:	adrp	x23, 23 ; 0x2d000
   160ac:	add	x23, x23, #0x770
   160b0:	adrp	x22, 31 ; 0x35000
   160b4:	add	x8, x23, x21, lsl #5
   160b8:	ldr	w24, [x8, #0x10]
   160bc:	cmp	w24, #0x1
   160c0:	b.lt	0x1610c
   160c4:	ldr	x8, [x8, #0x8]
   160c8:	add	x27, x8, #0x8
   160cc:	ldr	x0, [x22, #0xa38]
   160d0:	ldur	x2, [x27, #-0x8]
   160d4:	bl	0x22120
   160d8:	mov	x29, x29
   160dc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   160e0:	mov	x19, x0
   160e4:	mov	x0, x28
   160e8:	mov	x2, x19
   160ec:	bl	0x21000
   160f0:	mov	x20, x0
   160f4:	mov	x0, x19
   160f8:	bl	0x200e8 ; symbol stub for: _objc_release
   160fc:	tbnz	w20, #0x0, 0x1612c
   16100:	add	x27, x27, #0x10
   16104:	subs	x24, x24, #0x1
   16108:	b.ne	0x160cc
   1610c:	add	x21, x21, #0x1
   16110:	cmp	x21, #0xf
   16114:	b.ne	0x160b4
   16118:	mov	x27, x28
   1611c:	mov	x0, x28
   16120:	bl	0x200f4 ; symbol stub for: _objc_retain
   16124:	mov	x24, x0
   16128:	b	0x15498
   1612c:	ldr	x0, [x22, #0xa38]
   16130:	ldr	x2, [x27]
   16134:	bl	0x22120
   16138:	mov	x29, x29
   1613c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16140:	mov	x24, x0
   16144:	b	0x1618c
   16148:	ldr	x0, [x23, #0xa38]
   1614c:	ldr	x2, [x24]
   16150:	bl	0x22120
   16154:	mov	x29, x29
   16158:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1615c:	mov	x20, x0
   16160:	adrp	x0, 26 ; 0x30000
   16164:	add	x0, x0, #0xdc8 ; "Settings:"
   16168:	mov	x2, x20
   1616c:	bl	0x220a0
   16170:	mov	x29, x29
   16174:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16178:	mov	x24, x0
   1617c:	mov	x0, x20
   16180:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_16184 =====
   16184:	mov	x0, x19
   16188:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_1618c =====
   1618c:	mov	x27, x28
   16190:	b	0x15498
   16194:	stp	x20, x19, [sp, #-0x20]!
   16198:	stp	x29, x30, [sp, #0x10]
   1619c:	add	x29, sp, #0x10
   161a0:	mov	x19, x0
   161a4:	adrp	x8, 31 ; 0x35000
   161a8:	ldr	x0, [x8, #0xb38] ; Objc class ref: bad class ref
   161ac:	bl	0x20028 ; symbol stub for: _objc_alloc
   161b0:	ldr	x2, [x19, #0x20]
   161b4:	bl	0x20ec0
   161b8:	mov	x19, x0
   161bc:	bl	0x21680
   161c0:	mov	x0, x19
   161c4:	bl	0x20e20
   161c8:	mov	x0, x19
   161cc:	ldp	x29, x30, [sp, #0x10]
   161d0:	ldp	x20, x19, [sp], #0x20
   161d4:	b	0x200e8 ; symbol stub for: _objc_release

; ===== sub_161d8 =====
   161d8:	sub	sp, sp, #0x60
   161dc:	stp	x24, x23, [sp, #0x20]
   161e0:	stp	x22, x21, [sp, #0x30]
   161e4:	stp	x20, x19, [sp, #0x40]
   161e8:	stp	x29, x30, [sp, #0x50]
   161ec:	add	x29, sp, #0x50
   161f0:	bl	0x200f4 ; symbol stub for: _objc_retain
   161f4:	mov	x19, x0
   161f8:	adrp	x2, 26 ; 0x30000
   161fc:	add	x2, x2, #0x9a8
   16200:	bl	0x20d80
   16204:	mov	x21, x0
   16208:	tbz	w0, #0x0, 0x16224
   1620c:	mov	x0, x19
   16210:	mov	w2, #0x1
   16214:	bl	0x22140
   16218:	mov	x29, x29
   1621c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16220:	b	0x1622c
   16224:	mov	x0, x19
   16228:	bl	0x200f4 ; symbol stub for: _objc_retain

; ===== sub_1622c =====
   1622c:	mov	x20, x0
   16230:	adrp	x2, 26 ; 0x30000
   16234:	add	x2, x2, #0x588 ; "wifi"
   16238:	bl	0x21000
   1623c:	cbz	w0, 0x16264
   16240:	adrp	x8, 26 ; 0x30000
   16244:	add	x8, x8, #0xe88 ; "On any Wi-Fi"
   16248:	adrp	x9, 26 ; 0x30000
   1624c:	add	x9, x9, #0xe68 ; "Not on Wi-Fi"

; ===== sub_16250 =====
   16250:	cmp	w21, #0x0
   16254:	csel	x0, x9, x8, ne

; ===== sub_16258 =====
   16258:	bl	0x200f4 ; symbol stub for: _objc_retain
   1625c:	mov	x21, x0
   16260:	b	0x16314
   16264:	adrp	x2, 26 ; 0x30000
   16268:	add	x2, x2, #0x9c8 ; "wifi:"
   1626c:	mov	x0, x20
   16270:	bl	0x20d80
   16274:	cbz	w0, 0x162a4
   16278:	adrp	x8, 31 ; 0x35000
   1627c:	ldr	x22, [x8, #0xa38] ; Objc class ref: bad class ref
   16280:	adrp	x8, 26 ; 0x30000
   16284:	add	x8, x8, #0xec8 ; "On “%@”"
   16288:	adrp	x9, 26 ; 0x30000
   1628c:	add	x9, x9, #0xea8 ; "Not on “%@”"
   16290:	cmp	w21, #0x0
   16294:	csel	x21, x9, x8, ne
   16298:	mov	x0, x20
   1629c:	mov	w2, #0x5
   162a0:	b	0x162e0
   162a4:	adrp	x2, 26 ; 0x30000
   162a8:	add	x2, x2, #0x9e8 ; "bt:"
   162ac:	mov	x0, x20
   162b0:	bl	0x20d80
   162b4:	cbz	w0, 0x16340
   162b8:	adrp	x8, 31 ; 0x35000
   162bc:	ldr	x22, [x8, #0xa38] ; Objc class ref: bad class ref
   162c0:	adrp	x8, 26 ; 0x30000
   162c4:	add	x8, x8, #0xf08 ; "“%@” connected"
   162c8:	adrp	x9, 26 ; 0x30000
   162cc:	add	x9, x9, #0xee8 ; "“%@” not connected"
   162d0:	cmp	w21, #0x0
   162d4:	csel	x21, x9, x8, ne
   162d8:	mov	x0, x20
   162dc:	mov	w2, #0x3

; ===== sub_162e0 =====
   162e0:	bl	0x22140
   162e4:	mov	x29, x29
   162e8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   162ec:	mov	x23, x0
   162f0:	str	x0, [sp]
   162f4:	mov	x0, x22
   162f8:	mov	x2, x21
   162fc:	bl	0x22100
   16300:	mov	x29, x29
   16304:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16308:	mov	x21, x0
   1630c:	mov	x0, x23

; ===== sub_16310 =====
   16310:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_16314 =====
   16314:	mov	x0, x20
   16318:	bl	0x200e8 ; symbol stub for: _objc_release
   1631c:	mov	x0, x19
   16320:	bl	0x200e8 ; symbol stub for: _objc_release
   16324:	mov	x0, x21
   16328:	ldp	x29, x30, [sp, #0x50]
   1632c:	ldp	x20, x19, [sp, #0x40]
   16330:	ldp	x22, x21, [sp, #0x30]
   16334:	ldp	x24, x23, [sp, #0x20]
   16338:	add	sp, sp, #0x60
   1633c:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue
   16340:	adrp	x2, 26 ; 0x30000
   16344:	add	x2, x2, #0xa08 ; "charging"
   16348:	mov	x0, x20
   1634c:	bl	0x21000
   16350:	cbz	w0, 0x16368
   16354:	adrp	x8, 26 ; 0x30000
   16358:	add	x8, x8, #0xf48 ; "Charging"
   1635c:	adrp	x9, 26 ; 0x30000
   16360:	add	x9, x9, #0xf28 ; "Not charging"
   16364:	b	0x16250
   16368:	adrp	x2, 26 ; 0x30000
   1636c:	add	x2, x2, #0xa28 ; "locked"
   16370:	mov	x0, x20
   16374:	bl	0x21000
   16378:	cbz	w0, 0x16390
   1637c:	adrp	x8, 26 ; 0x30000
   16380:	add	x8, x8, #0xf88 ; "Locked"
   16384:	adrp	x9, 26 ; 0x30000
   16388:	add	x9, x9, #0xf68 ; "Unlocked"
   1638c:	b	0x16250
   16390:	adrp	x2, 26 ; 0x30000
   16394:	add	x2, x2, #0xa48 ; "music"
   16398:	mov	x0, x20
   1639c:	bl	0x21000
   163a0:	cbz	w0, 0x163b8
   163a4:	adrp	x8, 26 ; 0x30000
   163a8:	add	x8, x8, #0xfc8 ; "Music playing"
   163ac:	adrp	x9, 26 ; 0x30000
   163b0:	add	x9, x9, #0xfa8 ; "Music not playing"
   163b4:	b	0x16250
   163b8:	adrp	x2, 26 ; 0x30000
   163bc:	add	x2, x2, #0xa68 ; "headphones"
   163c0:	mov	x0, x20
   163c4:	bl	0x21000
   163c8:	cbz	w0, 0x163e0
   163cc:	adrp	x8, 27 ; 0x31000
   163d0:	add	x8, x8, #0x8 ; "Headphones connected"
   163d4:	adrp	x9, 26 ; 0x30000
   163d8:	add	x9, x9, #0xfe8 ; "No headphones"
   163dc:	b	0x16250
   163e0:	adrp	x2, 26 ; 0x30000
   163e4:	add	x2, x2, #0x5e8 ; "lowpower"
   163e8:	mov	x0, x20
   163ec:	bl	0x21000
   163f0:	cbz	w0, 0x16408
   163f4:	adrp	x8, 27 ; 0x31000
   163f8:	add	x8, x8, #0x48 ; "Low Power Mode on"
   163fc:	adrp	x9, 27 ; 0x31000
   16400:	add	x9, x9, #0x28 ; "Low Power Mode off"
   16404:	b	0x16250
   16408:	adrp	x2, 26 ; 0x30000
   1640c:	add	x2, x2, #0x568 ; "flashlight"
   16410:	mov	x0, x20
   16414:	bl	0x21000
   16418:	cbz	w0, 0x16430
   1641c:	adrp	x8, 27 ; 0x31000
   16420:	add	x8, x8, #0x88 ; "Flashlight on"
   16424:	adrp	x9, 27 ; 0x31000
   16428:	add	x9, x9, #0x68 ; "Flashlight off"
   1642c:	b	0x16250
   16430:	adrp	x2, 26 ; 0x30000
   16434:	add	x2, x2, #0xa88 ; "battery<"
   16438:	mov	x0, x20
   1643c:	bl	0x20d80
   16440:	cbz	w0, 0x16474
   16444:	adrp	x8, 31 ; 0x35000
   16448:	ldr	x21, [x8, #0xa38] ; Objc class ref: bad class ref
   1644c:	mov	x0, x20
   16450:	mov	w2, #0x8
   16454:	bl	0x22140
   16458:	mov	x29, x29
   1645c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16460:	mov	x22, x0
   16464:	str	x0, [sp]
   16468:	adrp	x2, 27 ; 0x31000
   1646c:	add	x2, x2, #0xa8 ; "Battery below %@%%"
   16470:	b	0x1660c
   16474:	adrp	x2, 26 ; 0x30000
   16478:	add	x2, x2, #0xaa8 ; "battery>"
   1647c:	mov	x0, x20
   16480:	bl	0x20d80
   16484:	cbz	w0, 0x164b8
   16488:	adrp	x8, 31 ; 0x35000
   1648c:	ldr	x21, [x8, #0xa38] ; Objc class ref: bad class ref
   16490:	mov	x0, x20
   16494:	mov	w2, #0x8
   16498:	bl	0x22140
   1649c:	mov	x29, x29
   164a0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   164a4:	mov	x22, x0
   164a8:	str	x0, [sp]
   164ac:	adrp	x2, 27 ; 0x31000
   164b0:	add	x2, x2, #0xc8 ; "Battery above %@%%"
   164b4:	b	0x1660c
   164b8:	adrp	x2, 26 ; 0x30000
   164bc:	add	x2, x2, #0xac8 ; "time:"
   164c0:	mov	x0, x20
   164c4:	bl	0x20d80
   164c8:	cbz	w0, 0x165cc
   164cc:	mov	x0, x20
   164d0:	mov	w2, #0x5
   164d4:	bl	0x22140
   164d8:	mov	x29, x29
   164dc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   164e0:	mov	x22, x0
   164e4:	adrp	x2, 26 ; 0x30000
   164e8:	add	x2, x2, #0xae8
   164ec:	bl	0x207e0
   164f0:	mov	x29, x29
   164f4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   164f8:	mov	x21, x0
   164fc:	mov	x0, x22
   16500:	bl	0x200e8 ; symbol stub for: _objc_release
   16504:	mov	x0, x21
   16508:	bl	0x20960
   1650c:	cmp	x0, #0x2
   16510:	b.ne	0x165c4
   16514:	mov	x0, x21
   16518:	mov	x2, #0x0
   1651c:	bl	0x214c0
   16520:	mov	x29, x29
   16524:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16528:	mov	x22, x0
   1652c:	bl	0x20f60
   16530:	mov	x23, x0
   16534:	mov	x0, x22
   16538:	bl	0x200e8 ; symbol stub for: _objc_release
   1653c:	mov	x0, x21
   16540:	mov	w2, #0x1
   16544:	bl	0x214c0
   16548:	mov	x29, x29
   1654c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16550:	mov	x22, x0
   16554:	bl	0x20f60
   16558:	mov	x24, x0
   1655c:	mov	x0, x22
   16560:	bl	0x200e8 ; symbol stub for: _objc_release
   16564:	adrp	x8, 31 ; 0x35000
   16568:	ldr	x0, [x8, #0xa38] ; Objc class ref: bad class ref
   1656c:	mov	w8, #0x851f
   16570:	movk	w8, #0x51eb, lsl #16
   16574:	smull	x9, w23, w8
   16578:	asr	x9, x9, #37
   1657c:	add	w9, w9, w9, lsr #31
   16580:	mov	w10, #0x64
   16584:	msub	w11, w9, w10, w23
   16588:	smull	x8, w24, w8
   1658c:	asr	x8, x8, #37
   16590:	add	w8, w8, w8, lsr #31
   16594:	msub	w10, w8, w10, w24
   16598:	stp	x9, x11, [sp]
   1659c:	stp	x8, x10, [sp, #0x10]
   165a0:	adrp	x2, 27 ; 0x31000
   165a4:	add	x2, x2, #0xe8 ; "Between %02d:%02d and %02d:%02d"
   165a8:	bl	0x22100
   165ac:	mov	x29, x29
   165b0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   165b4:	mov	x1, x21
   165b8:	mov	x21, x0
   165bc:	mov	x0, x1
   165c0:	b	0x16310
   165c4:	mov	x0, x21
   165c8:	bl	0x200e8 ; symbol stub for: _objc_release
   165cc:	adrp	x2, 24 ; 0x2e000
   165d0:	add	x2, x2, #0xf88 ; "after:"
   165d4:	mov	x0, x20
   165d8:	bl	0x20d80
   165dc:	cbz	w0, 0x16628
   165e0:	adrp	x8, 31 ; 0x35000
   165e4:	ldr	x21, [x8, #0xa38] ; Objc class ref: bad class ref
   165e8:	mov	x0, x20
   165ec:	mov	w2, #0x6
   165f0:	bl	0x22140
   165f4:	mov	x29, x29
   165f8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   165fc:	mov	x22, x0
   16600:	str	x0, [sp]
   16604:	adrp	x2, 27 ; 0x31000
   16608:	add	x2, x2, #0x108 ; "Still true after %@ s"

; ===== sub_1660c =====
   1660c:	mov	x0, x21
   16610:	bl	0x22100
   16614:	mov	x29, x29
   16618:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1661c:	mov	x21, x0
   16620:	mov	x0, x22
   16624:	b	0x16310
   16628:	mov	x0, x19
   1662c:	b	0x16258
   16630:	stp	x24, x23, [sp, #-0x40]!
   16634:	stp	x22, x21, [sp, #0x10]
   16638:	stp	x20, x19, [sp, #0x20]
   1663c:	stp	x29, x30, [sp, #0x30]
   16640:	add	x29, sp, #0x30
   16644:	mov	x20, x2
   16648:	mov	x0, x1
   1664c:	bl	0x200f4 ; symbol stub for: _objc_retain
   16650:	mov	x19, x0
   16654:	mov	x0, x20
   16658:	bl	0x200f4 ; symbol stub for: _objc_retain
   1665c:	mov	x20, x0
   16660:	mov	x0, x19
   16664:	mov	w2, #0x2
   16668:	bl	0x214c0
   1666c:	mov	x29, x29
   16670:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16674:	mov	x22, x0
   16678:	mov	x0, x20
   1667c:	mov	w2, #0x2
   16680:	bl	0x214c0
   16684:	mov	x29, x29
   16688:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1668c:	mov	x23, x0
   16690:	mov	x0, x22
   16694:	mov	x2, x23
   16698:	bl	0x21180
   1669c:	mov	x21, x0
   166a0:	mov	x0, x23
   166a4:	bl	0x200e8 ; symbol stub for: _objc_release
   166a8:	mov	x0, x22
   166ac:	bl	0x200e8 ; symbol stub for: _objc_release
   166b0:	cbnz	x21, 0x16704
   166b4:	mov	x0, x19
   166b8:	mov	w2, #0x1
   166bc:	bl	0x214c0
   166c0:	mov	x29, x29
   166c4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   166c8:	mov	x22, x0
   166cc:	mov	x0, x20
   166d0:	mov	w2, #0x1
   166d4:	bl	0x214c0
   166d8:	mov	x29, x29
   166dc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   166e0:	mov	x23, x0
   166e4:	mov	x0, x22
   166e8:	mov	x2, x23
   166ec:	bl	0x21180
   166f0:	mov	x21, x0
   166f4:	mov	x0, x23
   166f8:	bl	0x200e8 ; symbol stub for: _objc_release
   166fc:	mov	x0, x22
   16700:	bl	0x200e8 ; symbol stub for: _objc_release
   16704:	mov	x0, x20
   16708:	bl	0x200e8 ; symbol stub for: _objc_release
   1670c:	mov	x0, x19
   16710:	bl	0x200e8 ; symbol stub for: _objc_release
   16714:	mov	x0, x21
   16718:	ldp	x29, x30, [sp, #0x30]
   1671c:	ldp	x20, x19, [sp, #0x20]
   16720:	ldp	x22, x21, [sp, #0x10]
   16724:	ldp	x24, x23, [sp], #0x40
   16728:	ret

; ===== sub_1672c =====
   1672c:	sub	sp, sp, #0x30
   16730:	stp	x20, x19, [sp, #0x10]
   16734:	stp	x29, x30, [sp, #0x20]
   16738:	add	x29, sp, #0x20
   1673c:	mov	x20, x1
   16740:	bl	0x200f4 ; symbol stub for: _objc_retain
   16744:	mov	x19, x0
   16748:	cbz	x20, 0x167a4
   1674c:	adrp	x8, 31 ; 0x35000
   16750:	ldr	x0, [x8, #0xa38] ; Objc class ref: bad class ref
   16754:	adrp	x8, 27 ; 0x31000
   16758:	add	x8, x8, #0x188 ; "right"
   1675c:	adrp	x9, 27 ; 0x31000
   16760:	add	x9, x9, #0x168 ; "left"
   16764:	cmp	x20, #0x1
   16768:	csel	x8, x9, x8, eq
   1676c:	stp	x8, x19, [sp]
   16770:	adrp	x2, 27 ; 0x31000
   16774:	add	x2, x2, #0x148 ; "statusbar.%@.%@"
   16778:	bl	0x22100
   1677c:	mov	x29, x29
   16780:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16784:	mov	x20, x0
   16788:	adrp	x8, 32 ; 0x36000
   1678c:	ldr	x0, [x8, #0xf8]
   16790:	mov	x2, x20
   16794:	bl	0x208a0
   16798:	tbnz	w0, #0x0, 0x167c0
   1679c:	mov	x0, x20
   167a0:	bl	0x200e8 ; symbol stub for: _objc_release
   167a4:	adrp	x0, 27 ; 0x31000
   167a8:	add	x0, x0, #0x1a8 ; "statusbar."
   167ac:	mov	x2, x19
   167b0:	bl	0x220a0
   167b4:	mov	x29, x29
   167b8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   167bc:	mov	x20, x0
   167c0:	mov	x0, x19
   167c4:	bl	0x200e8 ; symbol stub for: _objc_release
   167c8:	mov	x0, x20
   167cc:	ldp	x29, x30, [sp, #0x20]
   167d0:	ldp	x20, x19, [sp, #0x10]
   167d4:	add	sp, sp, #0x30
   167d8:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue

; ===== sub_167dc =====
   167dc:	stp	d11, d10, [sp, #-0x40]!
   167e0:	stp	d9, d8, [sp, #0x10]
   167e4:	stp	x20, x19, [sp, #0x20]
   167e8:	stp	x29, x30, [sp, #0x30]
   167ec:	add	x29, sp, #0x30
   167f0:	mov.16b	v10, v1
   167f4:	mov.16b	v8, v0
   167f8:	adrp	x8, 31 ; 0x35000
   167fc:	ldr	x0, [x8, #0xa88] ; Objc class ref: bad class ref
   16800:	bl	0x21300
   16804:	mov	x29, x29
   16808:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1680c:	mov	x19, x0
   16810:	bl	0x20620
   16814:	mov.16b	v9, v2
   16818:	mov.16b	v11, v3
   1681c:	mov	x0, x19
   16820:	bl	0x200e8 ; symbol stub for: _objc_release
   16824:	fmov	d0, #-24.00000000
   16828:	fadd	d0, d11, d0
   1682c:	fcmp	d9, d11
   16830:	fccmp	d10, d0, #0x8, le
   16834:	b.pl	0x16840
   16838:	mov	x0, #0x0
   1683c:	b	0x16898
   16840:	fmov	d0, #3.00000000
   16844:	fdiv	d1, d9, d0
   16848:	fcmp	d8, d1
   1684c:	b.pl	0x1685c
   16850:	adrp	x19, 27 ; 0x31000
   16854:	add	x19, x19, #0x268 ; "edge.bottomleft"
   16858:	b	0x16874
   1685c:	fadd	d1, d9, d9
   16860:	fdiv	d0, d1, d0
   16864:	fcmp	d8, d0
   16868:	b.le	0x16890
   1686c:	adrp	x19, 27 ; 0x31000
   16870:	add	x19, x19, #0x288 ; "edge.bottomright"

; ===== sub_16874 =====
   16874:	adrp	x8, 32 ; 0x36000
   16878:	ldr	x0, [x8, #0xf8]
   1687c:	mov	x2, x19
   16880:	bl	0x208a0
   16884:	cmp	w0, #0x0
   16888:	csel	x0, x19, xzr, ne
   1688c:	b	0x16894
   16890:	mov	x0, #0x0

; ===== sub_16894 =====
   16894:	bl	0x200f4 ; symbol stub for: _objc_retain

; ===== sub_16898 =====
   16898:	ldp	x29, x30, [sp, #0x30]
   1689c:	ldp	x20, x19, [sp, #0x20]
   168a0:	ldp	d9, d8, [sp, #0x10]
   168a4:	ldp	d11, d10, [sp], #0x40
   168a8:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue

; ===== sub_168ac =====
   168ac:	stp	d11, d10, [sp, #-0x40]!
   168b0:	stp	d9, d8, [sp, #0x10]
   168b4:	stp	x20, x19, [sp, #0x20]
   168b8:	stp	x29, x30, [sp, #0x30]
   168bc:	add	x29, sp, #0x30
   168c0:	mov.16b	v10, v1
   168c4:	mov.16b	v8, v0
   168c8:	adrp	x8, 31 ; 0x35000
   168cc:	ldr	x0, [x8, #0xa88] ; Objc class ref: bad class ref
   168d0:	bl	0x21300
   168d4:	mov	x29, x29
   168d8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   168dc:	mov	x19, x0
   168e0:	bl	0x20620
   168e4:	mov.16b	v9, v2
   168e8:	mov.16b	v11, v3
   168ec:	mov	x0, x19
   168f0:	bl	0x200e8 ; symbol stub for: _objc_release
   168f4:	fcmp	d9, d11
   168f8:	fmov	d0, #24.00000000
   168fc:	fccmp	d10, d0, #0x0, le
   16900:	b.le	0x1690c
   16904:	mov	x0, #0x0
   16908:	b	0x16964
   1690c:	fmov	d0, #3.00000000
   16910:	fdiv	d1, d9, d0
   16914:	fcmp	d8, d1
   16918:	b.pl	0x16928
   1691c:	adrp	x19, 27 ; 0x31000
   16920:	add	x19, x19, #0x2a8 ; "edge.topleft"
   16924:	b	0x16940
   16928:	fadd	d1, d9, d9
   1692c:	fdiv	d0, d1, d0
   16930:	fcmp	d8, d0
   16934:	b.le	0x1695c
   16938:	adrp	x19, 27 ; 0x31000
   1693c:	add	x19, x19, #0x2c8 ; "edge.topright"

; ===== sub_16940 =====
   16940:	adrp	x8, 32 ; 0x36000
   16944:	ldr	x0, [x8, #0xf8]
   16948:	mov	x2, x19
   1694c:	bl	0x208a0
   16950:	cmp	w0, #0x0
   16954:	csel	x0, x19, xzr, ne
   16958:	b	0x16960
   1695c:	mov	x0, #0x0

; ===== sub_16960 =====
   16960:	bl	0x200f4 ; symbol stub for: _objc_retain

; ===== sub_16964 =====
   16964:	ldp	x29, x30, [sp, #0x30]
   16968:	ldp	x20, x19, [sp, #0x20]
   1696c:	ldp	d9, d8, [sp, #0x10]
   16970:	ldp	d11, d10, [sp], #0x40
   16974:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue

; ===== sub_16978 =====
   16978:	sub	sp, sp, #0x160
   1697c:	stp	x28, x27, [sp, #0x100]
   16980:	stp	x26, x25, [sp, #0x110]
   16984:	stp	x24, x23, [sp, #0x120]
   16988:	stp	x22, x21, [sp, #0x130]
   1698c:	stp	x20, x19, [sp, #0x140]
   16990:	stp	x29, x30, [sp, #0x150]
   16994:	add	x29, sp, #0x150
   16998:	adrp	x8, 28 ; 0x32000
   1699c:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   169a0:	ldr	x8, [x8]
   169a4:	stur	x8, [x29, #-0x60]
   169a8:	adrp	x26, 32 ; 0x36000
   169ac:	ldr	x0, [x26, #0x418]
   169b0:	bl	0x20fa0
   169b4:	ldr	x0, [x26, #0x418]
   169b8:	str	xzr, [x26, #0x418]
   169bc:	bl	0x200e8 ; symbol stub for: _objc_release
   169c0:	adrp	x8, 31 ; 0x35000
   169c4:	ldr	x0, [x8, #0xae0] ; Objc class ref: bad class ref
   169c8:	bl	0x20a20
   169cc:	mov	x29, x29
   169d0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   169d4:	mov	x19, x0
   169d8:	movi.16b	v0, #0x0
   169dc:	stp	q0, q0, [sp, #0x30]
   169e0:	stp	q0, q0, [sp, #0x50]
   169e4:	adrp	x8, 32 ; 0x36000
   169e8:	ldr	x0, [x8, #0xf8]
   169ec:	bl	0x200f4 ; symbol stub for: _objc_retain
   169f0:	mov	x21, x0
   169f4:	add	x2, sp, #0x30
   169f8:	add	x3, sp, #0x70
   169fc:	mov	w4, #0x10
   16a00:	bl	0x20980
   16a04:	cbz	x0, 0x16b8c
   16a08:	mov	x22, x0
   16a0c:	mov	x20, #0x0
   16a10:	ldr	x8, [sp, #0x40]
   16a14:	ldr	x27, [x8]
   16a18:	adrp	x23, 26 ; 0x30000
   16a1c:	add	x23, x23, #0xac8 ; "time:"
   16a20:	mov	x28, #0x0
   16a24:	ldr	x8, [sp, #0x40]
   16a28:	ldr	x8, [x8]
   16a2c:	cmp	x8, x27
   16a30:	b.eq	0x16a3c
   16a34:	mov	x0, x21
   16a38:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   16a3c:	ldr	x8, [sp, #0x38]
   16a40:	ldr	x24, [x8, x28, lsl #3]
   16a44:	mov	x0, x24
   16a48:	mov	x2, x23
   16a4c:	bl	0x20d80
   16a50:	cbz	w0, 0x16aa8
   16a54:	mov	x0, x24
   16a58:	mov	x1, x19
   16a5c:	bl	0x16d8c
   16a60:	mov	x29, x29
   16a64:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16a68:	mov	x24, x0
   16a6c:	cbz	x0, 0x16aa0
   16a70:	cbz	x20, 0x16a88
   16a74:	mov	x0, x24
   16a78:	mov	x2, x20
   16a7c:	bl	0x20760
   16a80:	cmn	x0, #0x1
   16a84:	b.ne	0x16aa0
   16a88:	mov	x0, x24
   16a8c:	bl	0x200f4 ; symbol stub for: _objc_retain
   16a90:	mov	x25, x0
   16a94:	mov	x0, x20
   16a98:	bl	0x200e8 ; symbol stub for: _objc_release
   16a9c:	mov	x20, x25
   16aa0:	mov	x0, x24
   16aa4:	bl	0x200e8 ; symbol stub for: _objc_release
   16aa8:	add	x28, x28, #0x1
   16aac:	cmp	x22, x28
   16ab0:	b.ne	0x16a24
   16ab4:	add	x2, sp, #0x30
   16ab8:	add	x3, sp, #0x70
   16abc:	mov	x0, x21
   16ac0:	mov	w4, #0x10
   16ac4:	bl	0x20980
   16ac8:	mov	x22, x0
   16acc:	cbnz	x0, 0x16a20
   16ad0:	mov	x0, x21
   16ad4:	bl	0x200e8 ; symbol stub for: _objc_release
   16ad8:	cbz	x20, 0x16b94
   16adc:	adrp	x0, 15 ; 0x25000
   16ae0:	add	x0, x0, #0x4 ; literal pool for: "PCPersistentTimer"
   16ae4:	bl	0x20088 ; symbol stub for: _objc_getClass
   16ae8:	mov	x21, x0
   16aec:	cbnz	x0, 0x16b10
   16af0:	adrp	x0, 15 ; 0x25000
   16af4:	add	x0, x0, #0x16 ; literal pool for: "/System/Library/PrivateFrameworks/PersistentConnection.framework/PersistentConnection"
   16af8:	mov	w1, #0x1
   16afc:	bl	0x1ff44 ; symbol stub for: _dlopen
   16b00:	adrp	x0, 15 ; 0x25000
   16b04:	add	x0, x0, #0x4 ; literal pool for: "PCPersistentTimer"
   16b08:	bl	0x20088 ; symbol stub for: _objc_getClass
   16b0c:	mov	x21, x0
   16b10:	adrp	x22, 32 ; 0x36000
   16b14:	ldr	x8, [x22, #0x528]
   16b18:	cbz	x8, 0x16be0
   16b1c:	cbz	x21, 0x16c00
   16b20:	mov	x0, x21
   16b24:	bl	0x20028 ; symbol stub for: _objc_alloc
   16b28:	ldr	x4, [x22, #0x528]
   16b2c:	adrp	x8, 30 ; 0x34000
   16b30:	ldr	x5, [x8, #0xf70]
   16b34:	adrp	x3, 27 ; 0x31000
   16b38:	add	x3, x3, #0x2e8 ; "com.johndie.triggr.schedule"
   16b3c:	mov	x2, x20
   16b40:	mov	x6, x20
   16b44:	bl	0x20ea0
   16b48:	mov	x21, x0
   16b4c:	fmov	d0, #1.00000000
   16b50:	bl	0x21b40
   16b54:	adrp	x8, 31 ; 0x35000
   16b58:	ldr	x0, [x8, #0xb48] ; Objc class ref: bad class ref
   16b5c:	bl	0x212e0
   16b60:	mov	x29, x29
   16b64:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16b68:	mov	x22, x0
   16b6c:	mov	x0, x21
   16b70:	mov	x2, x22
   16b74:	bl	0x21860
   16b78:	mov	x0, x22
   16b7c:	bl	0x200e8 ; symbol stub for: _objc_release
   16b80:	ldr	x0, [x26, #0x418]
   16b84:	str	x21, [x26, #0x418]
   16b88:	b	0x16cb0
   16b8c:	mov	x0, x21
   16b90:	bl	0x200e8 ; symbol stub for: _objc_release
   16b94:	adrp	x22, 32 ; 0x36000
   16b98:	ldr	x8, [x22, #0x420]
   16b9c:	cbz	x8, 0x16bd8
   16ba0:	adrp	x8, 31 ; 0x35000
   16ba4:	ldr	x0, [x8, #0xb58] ; Objc class ref: bad class ref
   16ba8:	bl	0x20ac0
   16bac:	mov	x29, x29
   16bb0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16bb4:	mov	x20, x0
   16bb8:	ldr	x2, [x22, #0x420]
   16bbc:	bl	0x217a0
   16bc0:	mov	x0, x20
   16bc4:	bl	0x200e8 ; symbol stub for: _objc_release
   16bc8:	mov	x20, #0x0
   16bcc:	ldr	x21, [x22, #0x420]
   16bd0:	str	xzr, [x22, #0x420]
   16bd4:	b	0x16d38
   16bd8:	mov	x20, #0x0
   16bdc:	b	0x16d40
   16be0:	adrp	x8, 31 ; 0x35000
   16be4:	ldr	x0, [x8, #0xb40] ; Objc class ref: bad class ref
   16be8:	bl	0x200d0 ; symbol stub for: _objc_opt_new
   16bec:	ldr	x8, [x22, #0x528]
   16bf0:	str	x0, [x22, #0x528]
   16bf4:	mov	x0, x8
   16bf8:	bl	0x200e8 ; symbol stub for: _objc_release
   16bfc:	cbnz	x21, 0x16b20
   16c00:	adrp	x8, 31 ; 0x35000
   16c04:	ldr	x0, [x8, #0xb50] ; Objc class ref: bad class ref
   16c08:	bl	0x20028 ; symbol stub for: _objc_alloc
   16c0c:	mov	x21, x0
   16c10:	adrp	x8, 28 ; 0x32000
   16c14:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   16c18:	str	x8, [sp, #0x8]
   16c1c:	adrp	x8, 12 ; 0x22000
   16c20:	ldr	d0, [x8, #0x8f8]
   16c24:	str	d0, [sp, #0x10]
   16c28:	adrp	x8, 1 ; 0x17000
   16c2c:	add	x8, x8, #0x1a8
   16c30:	adrp	x9, 23 ; 0x2d000
   16c34:	add	x9, x9, #0x950
   16c38:	stp	x8, x9, [sp, #0x18]
   16c3c:	mov	x0, x20
   16c40:	bl	0x200f4 ; symbol stub for: _objc_retain
   16c44:	mov	x2, x0
   16c48:	str	x0, [sp, #0x28]
   16c4c:	fmov	d0, xzr
   16c50:	add	x4, sp, #0x8
   16c54:	mov	x0, x21
   16c58:	mov	w3, #0x0
   16c5c:	bl	0x20e80
   16c60:	mov	x21, x0
   16c64:	fmov	d0, #1.00000000
   16c68:	bl	0x21dc0
   16c6c:	adrp	x8, 31 ; 0x35000
   16c70:	ldr	x0, [x8, #0xb48] ; Objc class ref: bad class ref
   16c74:	bl	0x212e0
   16c78:	mov	x29, x29
   16c7c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16c80:	mov	x22, x0
   16c84:	adrp	x8, 28 ; 0x32000
   16c88:	ldr	x8, [x8, #0xd18] ; literal pool symbol address: _NSRunLoopCommonModes
   16c8c:	ldr	x3, [x8]
   16c90:	mov	x2, x21
   16c94:	bl	0x20420
   16c98:	mov	x0, x22
   16c9c:	bl	0x200e8 ; symbol stub for: _objc_release
   16ca0:	ldr	x0, [x26, #0x418]
   16ca4:	str	x21, [x26, #0x418]
   16ca8:	bl	0x200e8 ; symbol stub for: _objc_release
   16cac:	ldr	x0, [sp, #0x28]

; ===== sub_16cb0 =====
   16cb0:	bl	0x200e8 ; symbol stub for: _objc_release
   16cb4:	adrp	x24, 32 ; 0x36000
   16cb8:	ldr	x8, [x24, #0x420]
   16cbc:	cbnz	x8, 0x16d40
   16cc0:	adrp	x8, 31 ; 0x35000
   16cc4:	ldr	x0, [x8, #0xb58] ; Objc class ref: bad class ref
   16cc8:	bl	0x20ac0
   16ccc:	mov	x29, x29
   16cd0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16cd4:	mov	x21, x0
   16cd8:	adrp	x8, 28 ; 0x32000
   16cdc:	ldr	x8, [x8, #0xd50] ; literal pool symbol address: _UIApplicationSignificantTimeChangeNotification
   16ce0:	ldr	x22, [x8]
   16ce4:	adrp	x8, 31 ; 0x35000
   16ce8:	ldr	x0, [x8, #0xb60] ; Objc class ref: bad class ref
   16cec:	bl	0x212c0
   16cf0:	mov	x29, x29
   16cf4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16cf8:	mov	x23, x0
   16cfc:	adrp	x5, 23 ; 0x2d000
   16d00:	add	x5, x5, #0x9a0
   16d04:	mov	x0, x21
   16d08:	mov	x2, x22
   16d0c:	mov	x3, #0x0
   16d10:	mov	x4, x23
   16d14:	bl	0x203e0
   16d18:	mov	x29, x29
   16d1c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16d20:	ldr	x8, [x24, #0x420]
   16d24:	str	x0, [x24, #0x420]
   16d28:	mov	x0, x8
   16d2c:	bl	0x200e8 ; symbol stub for: _objc_release
   16d30:	mov	x0, x23
   16d34:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_16d38 =====
   16d38:	mov	x0, x21
   16d3c:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_16d40 =====
   16d40:	mov	x0, x20
   16d44:	bl	0x200e8 ; symbol stub for: _objc_release
   16d48:	mov	x0, x19
   16d4c:	bl	0x200e8 ; symbol stub for: _objc_release
   16d50:	ldur	x8, [x29, #-0x60]
   16d54:	adrp	x9, 28 ; 0x32000
   16d58:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   16d5c:	ldr	x9, [x9]
   16d60:	cmp	x9, x8
   16d64:	b.ne	0x16d88
   16d68:	ldp	x29, x30, [sp, #0x150]
   16d6c:	ldp	x20, x19, [sp, #0x140]
   16d70:	ldp	x22, x21, [sp, #0x130]
   16d74:	ldp	x24, x23, [sp, #0x120]
   16d78:	ldp	x26, x25, [sp, #0x110]
   16d7c:	ldp	x28, x27, [sp, #0x100]
   16d80:	add	sp, sp, #0x160
   16d84:	ret
   16d88:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_16d8c =====
   16d8c:	sub	sp, sp, #0x90
   16d90:	stp	x28, x27, [sp, #0x30]
   16d94:	stp	x26, x25, [sp, #0x40]
   16d98:	stp	x24, x23, [sp, #0x50]
   16d9c:	stp	x22, x21, [sp, #0x60]
   16da0:	stp	x20, x19, [sp, #0x70]
   16da4:	stp	x29, x30, [sp, #0x80]
   16da8:	add	x29, sp, #0x80
   16dac:	mov	x19, x1
   16db0:	bl	0x200f4 ; symbol stub for: _objc_retain
   16db4:	mov	x25, x0
   16db8:	mov	x0, x19
   16dbc:	bl	0x200f4 ; symbol stub for: _objc_retain
   16dc0:	str	x0, [sp, #0x10]
   16dc4:	adrp	x0, 26 ; 0x30000
   16dc8:	add	x0, x0, #0xac8 ; "time:"
   16dcc:	bl	0x21160
   16dd0:	mov	x19, x0
   16dd4:	mov	x0, x25
   16dd8:	bl	0x21160
   16ddc:	cmp	x19, x0
   16de0:	csel	x2, x19, x0, lo
   16de4:	mov	x0, x25
   16de8:	bl	0x22140
   16dec:	mov	x29, x29
   16df0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16df4:	mov	x21, x0
   16df8:	adrp	x2, 25 ; 0x2f000
   16dfc:	add	x2, x2, #0x9c8
   16e00:	bl	0x207e0
   16e04:	mov	x29, x29
   16e08:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16e0c:	mov	x19, x0
   16e10:	mov	x0, x21
   16e14:	bl	0x200e8 ; symbol stub for: _objc_release
   16e18:	mov	x0, x19
   16e1c:	bl	0x20960
   16e20:	cmp	x0, #0x2
   16e24:	b.ne	0x16ed8
   16e28:	mov	x0, x19
   16e2c:	mov	x2, #0x0
   16e30:	bl	0x214c0
   16e34:	mov	x29, x29
   16e38:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16e3c:	mov	x21, x0
   16e40:	bl	0x21160
   16e44:	mov	x22, x0
   16e48:	mov	x0, x21
   16e4c:	bl	0x200e8 ; symbol stub for: _objc_release
   16e50:	cmp	x22, #0x4
   16e54:	b.ne	0x16ed8
   16e58:	mov	x0, x19
   16e5c:	mov	x2, #0x0
   16e60:	bl	0x214c0
   16e64:	mov	x29, x29
   16e68:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16e6c:	mov	x21, x0
   16e70:	bl	0x20f60
   16e74:	mov	x22, x0
   16e78:	mov	x0, x21
   16e7c:	bl	0x200e8 ; symbol stub for: _objc_release
   16e80:	mov	w8, #0x851f
   16e84:	movk	w8, #0x51eb, lsl #16
   16e88:	smull	x8, w22, w8
   16e8c:	asr	x8, x8, #37
   16e90:	add	w23, w8, w8, lsr #31
   16e94:	mov	w8, #0x64
   16e98:	msub	w24, w23, w8, w22
   16e9c:	mov	x0, x19
   16ea0:	mov	w2, #0x1
   16ea4:	bl	0x214c0
   16ea8:	mov	x29, x29
   16eac:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16eb0:	mov	x21, x0
   16eb4:	bl	0x20034 ; symbol stub for: _objc_autorelease
   16eb8:	cmp	w22, #0x960
   16ebc:	mov	w8, #0x3c
   16ec0:	ccmp	w24, w8, #0x0, lt
   16ec4:	cset	w20, lt
   16ec8:	sxtw	x22, w23
   16ecc:	sxtw	x8, w24
   16ed0:	str	x8, [sp, #0x28]
   16ed4:	b	0x16ee8
   16ed8:	mov	x22, #0x0
   16edc:	str	xzr, [sp, #0x28]
   16ee0:	mov	x21, #0x0
   16ee4:	mov	w20, #0x0

; ===== sub_16ee8 =====
   16ee8:	mov	x0, x19
   16eec:	bl	0x200e8 ; symbol stub for: _objc_release
   16ef0:	mov	x0, x21
   16ef4:	bl	0x200f4 ; symbol stub for: _objc_retain
   16ef8:	str	x0, [sp, #0x20]
   16efc:	cbz	w20, 0x17138
   16f00:	str	x25, [sp, #0x8]
   16f04:	adrp	x8, 31 ; 0x35000
   16f08:	ldr	x0, [x8, #0xb30] ; Objc class ref: bad class ref
   16f0c:	bl	0x209a0
   16f10:	mov	x29, x29
   16f14:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16f18:	mov	x24, x0
   16f1c:	mov	x25, #0x0
   16f20:	ldr	x20, [sp, #0x10]
   16f24:	str	x22, [sp, #0x18]
   16f28:	mov	x0, x24
   16f2c:	mov	w2, #0x10
   16f30:	mov	x3, x25
   16f34:	mov	x4, x20
   16f38:	mov	x5, #0x0
   16f3c:	bl	0x20a60
   16f40:	mov	x29, x29
   16f44:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16f48:	mov	x28, x0
   16f4c:	mov	x0, x24
   16f50:	mov	x2, x22
   16f54:	ldr	x3, [sp, #0x28]
   16f58:	mov	x4, #0x0
   16f5c:	mov	x5, x28
   16f60:	mov	x6, #0x0
   16f64:	bl	0x20a80
   16f68:	mov	x29, x29
   16f6c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16f70:	mov	x19, x0
   16f74:	mov	x2, x20
   16f78:	bl	0x20760
   16f7c:	cmp	x0, #0x1
   16f80:	b.ne	0x17114
   16f84:	ldr	x0, [sp, #0x20]
   16f88:	bl	0x200f4 ; symbol stub for: _objc_retain
   16f8c:	mov	x21, x0
   16f90:	adrp	x8, 31 ; 0x35000
   16f94:	ldr	x26, [x8, #0xb30] ; Objc class ref: bad class ref
   16f98:	mov	x0, x19
   16f9c:	bl	0x200f4 ; symbol stub for: _objc_retain
   16fa0:	mov	x27, x0
   16fa4:	mov	x0, x26
   16fa8:	bl	0x209a0
   16fac:	mov	x29, x29
   16fb0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   16fb4:	mov	x22, x0
   16fb8:	mov	w2, #0x200
   16fbc:	mov	x3, x27
   16fc0:	bl	0x20780
   16fc4:	mov	x26, x0
   16fc8:	mov	x0, x27
   16fcc:	bl	0x200e8 ; symbol stub for: _objc_release
   16fd0:	mov	x0, x22
   16fd4:	bl	0x200e8 ; symbol stub for: _objc_release
   16fd8:	mov	x0, x21
   16fdc:	adrp	x2, 27 ; 0x31000
   16fe0:	add	x2, x2, #0x308 ; "weekdays"
   16fe4:	bl	0x21000
   16fe8:	cbz	w0, 0x1700c
   16fec:	mov	x0, x21
   16ff0:	bl	0x200e8 ; symbol stub for: _objc_release
   16ff4:	cmp	x26, #0x1
   16ff8:	ldr	x22, [sp, #0x18]
   16ffc:	b.eq	0x17114
   17000:	cmp	x26, #0x7
   17004:	b.ne	0x17158
   17008:	b	0x17114
   1700c:	mov	x0, x21
   17010:	adrp	x2, 26 ; 0x31000
   17014:	add	x2, x2, #0x328 ; "weekends"
   17018:	bl	0x21000
   1701c:	tbz	w0, #0x0, 0x17040
   17020:	mov	x0, x21
   17024:	bl	0x200e8 ; symbol stub for: _objc_release
   17028:	cmp	x26, #0x7
   1702c:	ldr	x22, [sp, #0x18]
   17030:	b.eq	0x17158
   17034:	cmp	x26, #0x1
   17038:	b.eq	0x17158
   1703c:	b	0x17114
   17040:	mov	x0, x21
   17044:	bl	0x200f4 ; symbol stub for: _objc_retain
   17048:	mov	x21, x0
   1704c:	bl	0x21160
   17050:	cbz	x0, 0x17144
   17054:	adrp	x8, 30 ; 0x35000
   17058:	ldr	x0, [x8, #0xa50] ; Objc class ref: bad class ref
   1705c:	adrp	x2, 26 ; 0x31000
   17060:	add	x2, x2, #0x348 ; "1234567"
   17064:	bl	0x20720
   17068:	mov	x29, x29
   1706c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   17070:	mov	x22, x0
   17074:	bl	0x20fc0
   17078:	mov	x29, x29
   1707c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   17080:	mov	x23, x0
   17084:	mov	x0, x21
   17088:	mov	x2, x23
   1708c:	bl	0x216e0
   17090:	mov	x20, x0
   17094:	mov	x0, x23
   17098:	bl	0x200e8 ; symbol stub for: _objc_release
   1709c:	mov	x0, x22
   170a0:	bl	0x200e8 ; symbol stub for: _objc_release
   170a4:	mov	x0, x21
   170a8:	bl	0x200e8 ; symbol stub for: _objc_release
   170ac:	mov	x8, #0x7fffffffffffffff
   170b0:	cmp	x20, x8
   170b4:	b.ne	0x1714c
   170b8:	adrp	x8, 30 ; 0x35000
   170bc:	ldr	x0, [x8, #0xa70] ; Objc class ref: bad class ref
   170c0:	mov	x2, x26
   170c4:	bl	0x21420
   170c8:	mov	x29, x29
   170cc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   170d0:	mov	x20, x0
   170d4:	bl	0x220e0
   170d8:	mov	x29, x29
   170dc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   170e0:	mov	x22, x0
   170e4:	mov	x0, x21
   170e8:	mov	x2, x22
   170ec:	bl	0x208c0
   170f0:	mov	x23, x0
   170f4:	mov	x0, x22
   170f8:	bl	0x200e8 ; symbol stub for: _objc_release
   170fc:	mov	x0, x20
   17100:	bl	0x200e8 ; symbol stub for: _objc_release
   17104:	mov	x0, x21
   17108:	bl	0x200e8 ; symbol stub for: _objc_release
   1710c:	ldp	x20, x22, [sp, #0x10]
   17110:	tbnz	w23, #0x0, 0x17158

; ===== sub_17114 =====
   17114:	mov	x0, x19
   17118:	bl	0x200e8 ; symbol stub for: _objc_release
   1711c:	mov	x0, x28
   17120:	bl	0x200e8 ; symbol stub for: _objc_release
   17124:	add	x25, x25, #0x1
   17128:	cmp	x25, #0x8
   1712c:	b.ne	0x16f28
   17130:	mov	x27, #0x0
   17134:	b	0x17160
   17138:	mov	x27, #0x0
   1713c:	ldr	x20, [sp, #0x10]
   17140:	b	0x1716c
   17144:	mov	x0, x21
   17148:	bl	0x200e8 ; symbol stub for: _objc_release
   1714c:	mov	x0, x21
   17150:	bl	0x200e8 ; symbol stub for: _objc_release
   17154:	ldr	x20, [sp, #0x10]
   17158:	mov	x0, x28
   1715c:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_17160 =====
   17160:	mov	x0, x24
   17164:	bl	0x200e8 ; symbol stub for: _objc_release
   17168:	ldr	x25, [sp, #0x8]

; ===== sub_1716c =====
   1716c:	ldr	x0, [sp, #0x20]
   17170:	bl	0x200e8 ; symbol stub for: _objc_release
   17174:	mov	x0, x20
   17178:	bl	0x200e8 ; symbol stub for: _objc_release
   1717c:	mov	x0, x25
   17180:	bl	0x200e8 ; symbol stub for: _objc_release
   17184:	mov	x0, x27
   17188:	ldp	x29, x30, [sp, #0x80]
   1718c:	ldp	x20, x19, [sp, #0x70]
   17190:	ldp	x22, x21, [sp, #0x60]
   17194:	ldp	x24, x23, [sp, #0x50]
   17198:	ldp	x26, x25, [sp, #0x40]
   1719c:	ldp	x28, x27, [sp, #0x30]
   171a0:	add	sp, sp, #0x90
   171a4:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue
   171a8:	ldr	x0, [x0, #0x20]
   171ac:	b	0x5f0c
   171b0:	b	0x16978

; ===== sub_171b4 =====
   171b4:	stp	d9, d8, [sp, #-0x70]!
   171b8:	stp	x28, x27, [sp, #0x10]
   171bc:	stp	x26, x25, [sp, #0x20]
   171c0:	stp	x24, x23, [sp, #0x30]
   171c4:	stp	x22, x21, [sp, #0x40]
   171c8:	stp	x20, x19, [sp, #0x50]
   171cc:	stp	x29, x30, [sp, #0x60]
   171d0:	add	x29, sp, #0x60
   171d4:	sub	sp, sp, #0x280
   171d8:	adrp	x8, 27 ; 0x32000
   171dc:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   171e0:	ldr	x8, [x8]
   171e4:	stur	x8, [x29, #-0x70]
   171e8:	adrp	x0, 24 ; 0x2f000
   171ec:	add	x0, x0, #0x28 ; "wifi.on"
   171f0:	adrp	x1, 24 ; 0x2f000
   171f4:	add	x1, x1, #0x48 ; "wifi.off"
   171f8:	bl	0x1936c
   171fc:	tbnz	w0, #0x0, 0x17228
   17200:	adrp	x0, 24 ; 0x2f000
   17204:	add	x0, x0, #0x68 ; "wifi.joined"
   17208:	adrp	x1, 24 ; 0x2f000
   1720c:	add	x1, x1, #0x88 ; "wifi.left"
   17210:	bl	0x1936c
   17214:	tbnz	w0, #0x0, 0x17228
   17218:	adrp	x0, 24 ; 0x2f000
   1721c:	add	x0, x0, #0x228 ; "wifi.joined:"
   17220:	bl	0x18b50
   17224:	tbz	w0, #0x0, 0x17ae8
   17228:	mov	w19, #0x1
   1722c:	cbz	w19, 0x1726c
   17230:	adrp	x8, 31 ; 0x36000
   17234:	ldr	x8, [x8, #0x428]
   17238:	cbnz	x8, 0x1726c
   1723c:	adrp	x0, 31 ; 0x36000
   17240:	add	x0, x0, #0x534
   17244:	adrp	x1, 31 ; 0x36000
   17248:	add	x1, x1, #0x535
   1724c:	bl	0x14bc4
   17250:	mov	x29, x29
   17254:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   17258:	adrp	x9, 31 ; 0x36000
   1725c:	ldr	x8, [x9, #0x410]
   17260:	str	x0, [x9, #0x410]
   17264:	mov	x0, x8
   17268:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_1726c =====
   1726c:	adrp	x1, 31 ; 0x36000
   17270:	add	x1, x1, #0x428
   17274:	adrp	x2, 26 ; 0x31000
   17278:	add	x2, x2, #0x608 ; "SBWifiManagerLinkDidChangeNotification"
   1727c:	adrp	x3, 22 ; 0x2d000
   17280:	add	x3, x3, #0xa30
   17284:	mov	x0, x19
   17288:	bl	0x194b8
   1728c:	adrp	x0, 24 ; 0x2f000
   17290:	add	x0, x0, #0x268 ; "bt.connected:"
   17294:	bl	0x18b50
   17298:	adrp	x1, 31 ; 0x36000
   1729c:	add	x1, x1, #0x440
   172a0:	adrp	x2, 26 ; 0x31000
   172a4:	add	x2, x2, #0x628 ; "BluetoothDeviceConnectSuccessNotification"
   172a8:	adrp	x3, 22 ; 0x2d000
   172ac:	add	x3, x3, #0xa50
   172b0:	bl	0x19a4c
   172b4:	adrp	x0, 24 ; 0x2f000
   172b8:	add	x0, x0, #0x288 ; "bt.disconnected:"
   172bc:	bl	0x18b50
   172c0:	adrp	x1, 31 ; 0x36000
   172c4:	add	x1, x1, #0x448
   172c8:	adrp	x2, 26 ; 0x31000
   172cc:	add	x2, x2, #0x648 ; "BluetoothDeviceDisconnectSuccessNotification"
   172d0:	adrp	x3, 22 ; 0x2d000
   172d4:	add	x3, x3, #0xa70
   172d8:	bl	0x19a4c
   172dc:	adrp	x0, 26 ; 0x31000
   172e0:	add	x0, x0, #0x668 ; "battery.above:"
   172e4:	bl	0x18b50
   172e8:	tbz	w0, #0x0, 0x172f8
   172ec:	mov	w19, #0x1
   172f0:	cbnz	w19, 0x1730c
   172f4:	b	0x1734c
   172f8:	adrp	x0, 26 ; 0x31000
   172fc:	add	x0, x0, #0x688 ; "battery.below:"
   17300:	bl	0x18b50
   17304:	mov	x19, x0
   17308:	cbz	w19, 0x1734c
   1730c:	adrp	x8, 31 ; 0x36000
   17310:	ldr	x8, [x8, #0x450]
   17314:	cbnz	x8, 0x1734c
   17318:	adrp	x8, 30 ; 0x35000
   1731c:	ldr	x0, [x8, #0xaf0] ; Objc class ref: bad class ref
   17320:	bl	0x209c0
   17324:	mov	x29, x29
   17328:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1732c:	mov	x20, x0
   17330:	mov	w2, #0x1
   17334:	bl	0x21940
   17338:	mov	x0, x20
   1733c:	bl	0x200e8 ; symbol stub for: _objc_release
   17340:	bl	0xf4d8
   17344:	adrp	x8, 31 ; 0x36000
   17348:	str	w0, [x8, #0x98]

; ===== sub_1734c =====
   1734c:	adrp	x8, 27 ; 0x32000
   17350:	ldr	x8, [x8, #0xd58] ; literal pool symbol address: _UIDeviceBatteryLevelDidChangeNotification
   17354:	ldr	x2, [x8]
   17358:	adrp	x1, 31 ; 0x36000
   1735c:	add	x1, x1, #0x450
   17360:	adrp	x3, 22 ; 0x2d000
   17364:	add	x3, x3, #0xa90
   17368:	mov	x0, x19
   1736c:	bl	0x194b8
   17370:	adrp	x20, 31 ; 0x36000
   17374:	ldr	w0, [x20, #0x9c]
   17378:	cmn	w0, #0x1
   1737c:	csel	w8, wzr, w19, ne
   17380:	cmp	w8, #0x1
   17384:	b.ne	0x173b4
   17388:	adrp	x0, 14 ; 0x25000
   1738c:	add	x0, x0, #0x29a ; literal pool for: "com.apple.system.powersources.percent"
   17390:	adrp	x1, 31 ; 0x36000
   17394:	add	x1, x1, #0x9c
   17398:	adrp	x2, 27 ; 0x32000
   1739c:	ldr	x2, [x2, #0xde8] ; literal pool symbol address: __dispatch_main_q
   173a0:	adrp	x3, 22 ; 0x2d000
   173a4:	add	x3, x3, #0xab0
   173a8:	bl	0x20010 ; symbol stub for: _notify_register_dispatch
   173ac:	cbnz	w0, 0x173c4
   173b0:	b	0x173cc
   173b4:	cmn	w0, #0x1
   173b8:	csinc	w8, w19, wzr, ne
   173bc:	tbnz	w8, #0x0, 0x173cc
   173c0:	bl	0x1ffe0 ; symbol stub for: _notify_cancel
   173c4:	mov	w8, #-0x1
   173c8:	str	w8, [x20, #0x9c]

; ===== sub_173cc =====
   173cc:	adrp	x0, 26 ; 0x31000
   173d0:	add	x0, x0, #0x6a8 ; "app.launched:"
   173d4:	bl	0x18b50
   173d8:	adrp	x8, 31 ; 0x36000
   173dc:	strb	w0, [x8, #0x568]
   173e0:	bl	0x16978
   173e4:	adrp	x0, 24 ; 0x2f000
   173e8:	add	x0, x0, #0xa8 ; "bluetooth.on"
   173ec:	adrp	x1, 24 ; 0x2f000
   173f0:	add	x1, x1, #0xc8 ; "bluetooth.off"
   173f4:	bl	0x1936c
   173f8:	mov	x19, x0
   173fc:	cbz	w0, 0x17440
   17400:	adrp	x8, 31 ; 0x36000
   17404:	ldr	x8, [x8, #0x430]
   17408:	cbnz	x8, 0x17440
   1740c:	adrp	x0, 12 ; 0x23000
   17410:	add	x0, x0, #0xdfd ; literal pool for: "BluetoothManager"
   17414:	bl	0x105fc
   17418:	mov	x29, x29
   1741c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   17420:	mov	x20, x0
   17424:	adrp	x8, 29 ; 0x34000
   17428:	ldr	x1, [x8, #0xe68]
   1742c:	bl	0x5b7c
   17430:	adrp	x8, 31 ; 0x36000
   17434:	strb	w0, [x8, #0x569]
   17438:	mov	x0, x20
   1743c:	bl	0x200e8 ; symbol stub for: _objc_release
   17440:	adrp	x1, 31 ; 0x36000
   17444:	add	x1, x1, #0x430
   17448:	adrp	x2, 26 ; 0x31000
   1744c:	add	x2, x2, #0x6c8 ; "BluetoothStateChangedNotification"
   17450:	adrp	x3, 22 ; 0x2d000
   17454:	add	x3, x3, #0xad0
   17458:	mov	x0, x19
   1745c:	bl	0x194b8
   17460:	adrp	x0, 24 ; 0x2f000
   17464:	add	x0, x0, #0xe8 ; "lowpower.on"
   17468:	adrp	x1, 24 ; 0x2f000
   1746c:	add	x1, x1, #0x108 ; "lowpower.off"
   17470:	bl	0x1936c
   17474:	mov	x19, x0
   17478:	cbz	w0, 0x174b4
   1747c:	adrp	x8, 31 ; 0x36000
   17480:	ldr	x8, [x8, #0x438]
   17484:	cbnz	x8, 0x174b4
   17488:	adrp	x8, 30 ; 0x35000
   1748c:	ldr	x0, [x8, #0xb20] ; Objc class ref: bad class ref
   17490:	bl	0x216c0
   17494:	mov	x29, x29
   17498:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1749c:	mov	x20, x0
   174a0:	bl	0x21040
   174a4:	adrp	x8, 31 ; 0x36000
   174a8:	strb	w0, [x8, #0x56a]
   174ac:	mov	x0, x20
   174b0:	bl	0x200e8 ; symbol stub for: _objc_release
   174b4:	adrp	x8, 27 ; 0x32000
   174b8:	ldr	x8, [x8, #0xc98] ; literal pool symbol address: _NSProcessInfoPowerStateDidChangeNotification
   174bc:	ldr	x2, [x8]
   174c0:	adrp	x1, 31 ; 0x36000
   174c4:	add	x1, x1, #0x438
   174c8:	adrp	x3, 22 ; 0x2d000
   174cc:	add	x3, x3, #0xaf0
   174d0:	mov	x0, x19
   174d4:	bl	0x194b8
   174d8:	adrp	x0, 24 ; 0x2f000
   174dc:	add	x0, x0, #0x128 ; "device.locked"
   174e0:	adrp	x1, 24 ; 0x2f000
   174e4:	add	x1, x1, #0x148 ; "device.unlocked"
   174e8:	bl	0x1936c
   174ec:	mov	x8, x0
   174f0:	adrp	x19, 31 ; 0x36000
   174f4:	ldr	w0, [x19, #0xa0]
   174f8:	cbz	w8, 0x17554
   174fc:	cmn	w0, #0x1
   17500:	b.ne	0x17554
   17504:	adrp	x0, 14 ; 0x25000
   17508:	add	x0, x0, #0x2f0 ; literal pool for: "com.apple.springboard.lockstate"
   1750c:	adrp	x19, 31 ; 0x36000
   17510:	add	x19, x19, #0xa0
   17514:	adrp	x2, 27 ; 0x32000
   17518:	ldr	x2, [x2, #0xde8] ; literal pool symbol address: __dispatch_main_q
   1751c:	adrp	x3, 22 ; 0x2d000
   17520:	add	x3, x3, #0xb10
   17524:	mov	x1, x19
   17528:	bl	0x20010 ; symbol stub for: _notify_register_dispatch
   1752c:	stur	xzr, [x29, #-0xf0]
   17530:	ldr	w0, [x19]
   17534:	sub	x1, x29, #0xf0
   17538:	bl	0x1ffec ; symbol stub for: _notify_get_state
   1753c:	ldur	x8, [x29, #-0xf0]
   17540:	cmp	x8, #0x0
   17544:	cset	w8, ne
   17548:	adrp	x9, 31 ; 0x36000
   1754c:	strb	w8, [x9, #0x56b]
   17550:	b	0x1756c
   17554:	cmn	w0, #0x1
   17558:	csinc	w8, w8, wzr, ne
   1755c:	tbnz	w8, #0x0, 0x1756c
   17560:	bl	0x1ffe0 ; symbol stub for: _notify_cancel
   17564:	mov	w8, #-0x1
   17568:	str	w8, [x19, #0xa0]

; ===== sub_1756c =====
   1756c:	adrp	x0, 24 ; 0x2f000
   17570:	add	x0, x0, #0x168 ; "display.on"
   17574:	adrp	x1, 24 ; 0x2f000
   17578:	add	x1, x1, #0x188 ; "display.off"
   1757c:	bl	0x1936c
   17580:	mov	x8, x0
   17584:	adrp	x19, 31 ; 0x36000
   17588:	ldr	w0, [x19, #0xa4]
   1758c:	cbz	w8, 0x175e8
   17590:	cmn	w0, #0x1
   17594:	b.ne	0x175e8
   17598:	adrp	x0, 14 ; 0x25000
   1759c:	add	x0, x0, #0x310 ; literal pool for: "com.apple.springboard.hasBlankedScreen"
   175a0:	adrp	x1, 31 ; 0x36000
   175a4:	add	x1, x1, #0xa4
   175a8:	adrp	x2, 27 ; 0x32000
   175ac:	ldr	x2, [x2, #0xde8] ; literal pool symbol address: __dispatch_main_q
   175b0:	adrp	x3, 22 ; 0x2d000
   175b4:	add	x3, x3, #0xb30
   175b8:	bl	0x20010 ; symbol stub for: _notify_register_dispatch
   175bc:	cbnz	w0, 0x175f8
   175c0:	stur	xzr, [x29, #-0xf0]
   175c4:	ldr	w0, [x19, #0xa4]
   175c8:	sub	x1, x29, #0xf0
   175cc:	bl	0x1ffec ; symbol stub for: _notify_get_state
   175d0:	ldur	x8, [x29, #-0xf0]
   175d4:	cmp	x8, #0x0
   175d8:	cset	w8, ne
   175dc:	adrp	x9, 31 ; 0x36000
   175e0:	strb	w8, [x9, #0x56c]
   175e4:	b	0x17600
   175e8:	cmn	w0, #0x1
   175ec:	csinc	w8, w8, wzr, ne
   175f0:	tbnz	w8, #0x0, 0x17600
   175f4:	bl	0x1ffe0 ; symbol stub for: _notify_cancel
   175f8:	mov	w8, #-0x1
   175fc:	str	w8, [x19, #0xa4]

; ===== sub_17600 =====
   17600:	adrp	x0, 26 ; 0x31000
   17604:	add	x0, x0, #0x508 ; "icon.flick"
   17608:	bl	0x18b50
   1760c:	adrp	x8, 31 ; 0x36000
   17610:	ldrb	w9, [x8, #0x111]
   17614:	cmp	w9, w0
   17618:	b.eq	0x177a8
   1761c:	mov	x20, x0
   17620:	strb	w0, [x8, #0x111]
   17624:	adrp	x0, 11 ; 0x22000
   17628:	add	x0, x0, #0xf40 ; literal pool for: "SBIconView"
   1762c:	bl	0x20088 ; symbol stub for: _objc_getClass
   17630:	cbz	w20, 0x177a8
   17634:	mov	x19, x0
   17638:	cbz	x0, 0x177a8
   1763c:	movi.16b	v0, #0x0
   17640:	stp	q0, q0, [sp, #0x110]
   17644:	stp	q0, q0, [sp, #0xf0]
   17648:	adrp	x8, 30 ; 0x35000
   1764c:	ldr	x0, [x8, #0xa60] ; Objc class ref: bad class ref
   17650:	bl	0x21f00
   17654:	mov	x29, x29
   17658:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1765c:	mov	x21, x0
   17660:	bl	0x20800
   17664:	mov	x29, x29
   17668:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1766c:	mov	x20, x0
   17670:	mov	x0, x21
   17674:	bl	0x200e8 ; symbol stub for: _objc_release
   17678:	add	x2, sp, #0xf0
   1767c:	sub	x3, x29, #0xf0
   17680:	mov	x0, x20
   17684:	mov	w4, #0x10
   17688:	bl	0x20980
   1768c:	cbz	x0, 0x177a0
   17690:	mov	x21, x0
   17694:	ldr	x8, [sp, #0x100]
   17698:	ldr	x24, [x8]
   1769c:	adrp	x25, 30 ; 0x35000
   176a0:	mov	x26, #0x0
   176a4:	ldr	x8, [sp, #0x100]
   176a8:	ldr	x8, [x8]
   176ac:	cmp	x8, x24
   176b0:	b.eq	0x176bc
   176b4:	mov	x0, x20
   176b8:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   176bc:	ldr	x8, [sp, #0xf8]
   176c0:	ldr	x22, [x8, x26, lsl #3]
   176c4:	ldr	x0, [x25, #0xad8]
   176c8:	bl	0x200b8 ; symbol stub for: _objc_opt_class
   176cc:	mov	x1, x0
   176d0:	mov	x0, x22
   176d4:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
   176d8:	tbz	w0, #0x0, 0x17778
   176dc:	movi.16b	v0, #0x0
   176e0:	stp	q0, q0, [sp, #0xd0]
   176e4:	stp	q0, q0, [sp, #0xb0]
   176e8:	mov	x0, x22
   176ec:	bl	0x22480
   176f0:	mov	x29, x29
   176f4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   176f8:	mov	x22, x0
   176fc:	add	x2, sp, #0xb0
   17700:	add	x3, sp, #0x170
   17704:	mov	w4, #0x10
   17708:	bl	0x20980
   1770c:	cbz	x0, 0x17770
   17710:	mov	x23, x0
   17714:	ldr	x8, [sp, #0xc0]
   17718:	ldr	x27, [x8]
   1771c:	mov	x28, #0x0
   17720:	ldr	x8, [sp, #0xc0]
   17724:	ldr	x8, [x8]
   17728:	cmp	x8, x27
   1772c:	b.eq	0x17738
   17730:	mov	x0, x22
   17734:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   17738:	ldr	x8, [sp, #0xb8]
   1773c:	ldr	x0, [x8, x28, lsl #3]
   17740:	mov	x1, x19
   17744:	bl	0x1a0a8
   17748:	add	x28, x28, #0x1
   1774c:	cmp	x23, x28
   17750:	b.ne	0x17720
   17754:	add	x2, sp, #0xb0
   17758:	add	x3, sp, #0x170
   1775c:	mov	x0, x22
   17760:	mov	w4, #0x10
   17764:	bl	0x20980
   17768:	mov	x23, x0
   1776c:	cbnz	x0, 0x1771c
   17770:	mov	x0, x22
   17774:	bl	0x200e8 ; symbol stub for: _objc_release
   17778:	add	x26, x26, #0x1
   1777c:	cmp	x26, x21
   17780:	b.ne	0x176a4
   17784:	add	x2, sp, #0xf0
   17788:	sub	x3, x29, #0xf0
   1778c:	mov	x0, x20
   17790:	mov	w4, #0x10
   17794:	bl	0x20980
   17798:	mov	x21, x0
   1779c:	cbnz	x0, 0x176a0
   177a0:	mov	x0, x20
   177a4:	bl	0x200e8 ; symbol stub for: _objc_release
   177a8:	adrp	x0, 26 ; 0x31000
   177ac:	add	x0, x0, #0x528 ; "homescreen."
   177b0:	bl	0x18b50
   177b4:	adrp	x8, 31 ; 0x36000
   177b8:	ldrb	w9, [x8, #0x120]
   177bc:	cmp	w9, w0
   177c0:	b.eq	0x17950
   177c4:	mov	x20, x0
   177c8:	strb	w0, [x8, #0x120]
   177cc:	adrp	x0, 11 ; 0x22000
   177d0:	add	x0, x0, #0xf4b ; literal pool for: "SBRootFolderView"
   177d4:	bl	0x20088 ; symbol stub for: _objc_getClass
   177d8:	cbz	w20, 0x17950
   177dc:	mov	x19, x0
   177e0:	cbz	x0, 0x17950
   177e4:	movi.16b	v0, #0x0
   177e8:	stp	q0, q0, [sp, #0x110]
   177ec:	stp	q0, q0, [sp, #0xf0]
   177f0:	adrp	x8, 30 ; 0x35000
   177f4:	ldr	x0, [x8, #0xa60] ; Objc class ref: bad class ref
   177f8:	bl	0x21f00
   177fc:	mov	x29, x29
   17800:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   17804:	mov	x21, x0
   17808:	bl	0x20800
   1780c:	mov	x29, x29
   17810:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   17814:	mov	x20, x0
   17818:	mov	x0, x21
   1781c:	bl	0x200e8 ; symbol stub for: _objc_release
   17820:	add	x2, sp, #0xf0
   17824:	sub	x3, x29, #0xf0
   17828:	mov	x0, x20
   1782c:	mov	w4, #0x10
   17830:	bl	0x20980
   17834:	cbz	x0, 0x17948
   17838:	mov	x21, x0
   1783c:	ldr	x8, [sp, #0x100]
   17840:	ldr	x24, [x8]
   17844:	adrp	x25, 30 ; 0x35000
   17848:	mov	x26, #0x0
   1784c:	ldr	x8, [sp, #0x100]
   17850:	ldr	x8, [x8]
   17854:	cmp	x8, x24
   17858:	b.eq	0x17864
   1785c:	mov	x0, x20
   17860:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   17864:	ldr	x8, [sp, #0xf8]
   17868:	ldr	x22, [x8, x26, lsl #3]
   1786c:	ldr	x0, [x25, #0xad8]
   17870:	bl	0x200b8 ; symbol stub for: _objc_opt_class
   17874:	mov	x1, x0
   17878:	mov	x0, x22
   1787c:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
   17880:	tbz	w0, #0x0, 0x17920
   17884:	movi.16b	v0, #0x0
   17888:	stp	q0, q0, [sp, #0xd0]
   1788c:	stp	q0, q0, [sp, #0xb0]
   17890:	mov	x0, x22
   17894:	bl	0x22480
   17898:	mov	x29, x29
   1789c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   178a0:	mov	x22, x0
   178a4:	add	x2, sp, #0xb0
   178a8:	add	x3, sp, #0x170
   178ac:	mov	w4, #0x10
   178b0:	bl	0x20980
   178b4:	cbz	x0, 0x17918
   178b8:	mov	x23, x0
   178bc:	ldr	x8, [sp, #0xc0]
   178c0:	ldr	x27, [x8]
   178c4:	mov	x28, #0x0
   178c8:	ldr	x8, [sp, #0xc0]
   178cc:	ldr	x8, [x8]
   178d0:	cmp	x8, x27
   178d4:	b.eq	0x178e0
   178d8:	mov	x0, x22
   178dc:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   178e0:	ldr	x8, [sp, #0xb8]
   178e4:	ldr	x0, [x8, x28, lsl #3]
   178e8:	mov	x1, x19
   178ec:	bl	0x1a314
   178f0:	add	x28, x28, #0x1
   178f4:	cmp	x23, x28
   178f8:	b.ne	0x178c8
   178fc:	add	x2, sp, #0xb0
   17900:	add	x3, sp, #0x170
   17904:	mov	x0, x22
   17908:	mov	w4, #0x10
   1790c:	bl	0x20980
   17910:	mov	x23, x0
   17914:	cbnz	x0, 0x178c4
   17918:	mov	x0, x22
   1791c:	bl	0x200e8 ; symbol stub for: _objc_release
   17920:	add	x26, x26, #0x1
   17924:	cmp	x26, x21
   17928:	b.ne	0x1784c
   1792c:	add	x2, sp, #0xf0
   17930:	sub	x3, x29, #0xf0
   17934:	mov	x0, x20
   17938:	mov	w4, #0x10
   1793c:	bl	0x20980
   17940:	mov	x21, x0
   17944:	cbnz	x0, 0x17848
   17948:	mov	x0, x20
   1794c:	bl	0x200e8 ; symbol stub for: _objc_release
   17950:	bl	0x18c64
   17954:	bl	0x1a6b8
   17958:	adrp	x0, 26 ; 0x31000
   1795c:	add	x0, x0, #0x828 ; "carplay."
   17960:	bl	0x18b50
   17964:	eor	w8, w0, #0x1
   17968:	adrp	x20, 31 ; 0x36000
   1796c:	ldr	x0, [x20, #0x3c0]
   17970:	tbnz	w8, #0x0, 0x179e0
   17974:	cbnz	x0, 0x179e0
   17978:	adrp	x0, 14 ; 0x25000
   1797c:	add	x0, x0, #0x464 ; literal pool for: "/System/Library/PrivateFrameworks/CarKit.framework/CarKit"
   17980:	mov	w1, #0x1
   17984:	bl	0x1ff44 ; symbol stub for: _dlopen
   17988:	adrp	x0, 14 ; 0x25000
   1798c:	add	x0, x0, #0x49e ; literal pool for: "CARSessionStatus"
   17990:	bl	0x20088 ; symbol stub for: _objc_getClass
   17994:	cbz	x0, 0x17b1c
   17998:	bl	0x20028 ; symbol stub for: _objc_alloc
   1799c:	mov	x20, x0
   179a0:	adrp	x8, 29 ; 0x34000
   179a4:	ldr	x19, [x8, #0xf90]
   179a8:	mov	x1, x19
   179ac:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   179b0:	tbz	w0, #0x0, 0x17a34
   179b4:	mov	x0, x20
   179b8:	mov	x1, x19
   179bc:	mov	x2, #0x0
   179c0:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   179c4:	mov	x29, x29
   179c8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   179cc:	mov	x19, x0
   179d0:	mov	x0, x20
   179d4:	bl	0x200e8 ; symbol stub for: _objc_release
   179d8:	cbnz	x19, 0x17a44
   179dc:	b	0x17b14
   179e0:	cmp	x0, #0x0
   179e4:	csel	w8, wzr, w8, eq
   179e8:	cmp	w8, #0x1
   179ec:	b.ne	0x17b1c
   179f0:	adrp	x8, 29 ; 0x34000
   179f4:	ldr	x19, [x8, #0xfb0]
   179f8:	mov	x1, x19
   179fc:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   17a00:	tbz	w0, #0x0, 0x17a18
   17a04:	ldr	x0, [x20, #0x3c0]
   17a08:	adrp	x8, 31 ; 0x36000
   17a0c:	ldr	x2, [x8, #0x3c8]
   17a10:	mov	x1, x19
   17a14:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   17a18:	ldr	x0, [x20, #0x3c0]
   17a1c:	str	xzr, [x20, #0x3c0]
   17a20:	bl	0x200e8 ; symbol stub for: _objc_release
   17a24:	adrp	x8, 31 ; 0x36000
   17a28:	ldr	x19, [x8, #0x3c8]
   17a2c:	str	xzr, [x8, #0x3c8]
   17a30:	b	0x17b14
   17a34:	mov	x0, x20
   17a38:	bl	0x20e40
   17a3c:	mov	x19, x0
   17a40:	cbz	x19, 0x17b14
   17a44:	adrp	x8, 30 ; 0x35000
   17a48:	ldr	x0, [x8, #0xb98] ; Objc class ref: bad class ref
   17a4c:	bl	0x200d0 ; symbol stub for: _objc_opt_new
   17a50:	adrp	x21, 31 ; 0x36000
   17a54:	ldr	x8, [x21, #0x3c8]
   17a58:	str	x0, [x21, #0x3c8]
   17a5c:	mov	x0, x8
   17a60:	bl	0x200e8 ; symbol stub for: _objc_release
   17a64:	adrp	x8, 29 ; 0x34000
   17a68:	ldr	x20, [x8, #0xf98]
   17a6c:	mov	x0, x19
   17a70:	mov	x1, x20
   17a74:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   17a78:	tbnz	w0, #0x0, 0x17a94
   17a7c:	adrp	x8, 29 ; 0x34000
   17a80:	ldr	x20, [x8, #0xfa0]
   17a84:	mov	x0, x19
   17a88:	mov	x1, x20
   17a8c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   17a90:	tbz	w0, #0x0, 0x17aa4
   17a94:	ldr	x2, [x21, #0x3c8]
   17a98:	mov	x0, x19
   17a9c:	mov	x1, x20
   17aa0:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   17aa4:	adrp	x8, 29 ; 0x34000
   17aa8:	ldr	x20, [x8, #0xfa8]
   17aac:	mov	x0, x19
   17ab0:	mov	x1, x20
   17ab4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   17ab8:	adrp	x21, 31 ; 0x36000
   17abc:	tbz	w0, #0x0, 0x17b00
   17ac0:	mov	x0, x19
   17ac4:	mov	x1, x20
   17ac8:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   17acc:	mov	x29, x29
   17ad0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   17ad4:	cmp	x0, #0x0
   17ad8:	cset	w8, ne
   17adc:	strb	w8, [x21, #0x138]
   17ae0:	bl	0x200e8 ; symbol stub for: _objc_release
   17ae4:	b	0x17b04
   17ae8:	adrp	x0, 24 ; 0x2f000
   17aec:	add	x0, x0, #0x248 ; "wifi.left:"
   17af0:	bl	0x18b50
   17af4:	mov	x19, x0
   17af8:	cbnz	w19, 0x17230
   17afc:	b	0x1726c
   17b00:	strb	wzr, [x21, #0x138]

; ===== sub_17b04 =====
   17b04:	adrp	x0, 31 ; 0x36000
   17b08:	add	x0, x0, #0x3c0
   17b0c:	mov	x1, x19
   17b10:	bl	0x20148 ; symbol stub for: _objc_storeStrong

; ===== sub_17b14 =====
   17b14:	mov	x0, x19
   17b18:	bl	0x200e8 ; symbol stub for: _objc_release
   17b1c:	bl	0x1aab0
   17b20:	adrp	x0, 26 ; 0x31000
   17b24:	add	x0, x0, #0x548 ; "notification."
   17b28:	bl	0x18b50
   17b2c:	adrp	x8, 31 ; 0x36000
   17b30:	strb	w0, [x8, #0x531]
   17b34:	adrp	x0, 26 ; 0x31000
   17b38:	add	x0, x0, #0x568 ; "proximity."
   17b3c:	bl	0x18b50
   17b40:	mov	x8, x0
   17b44:	adrp	x9, 31 ; 0x36000
   17b48:	strb	w0, [x9, #0x5a8]
   17b4c:	adrp	x19, 31 ; 0x36000
   17b50:	ldr	w0, [x19, #0xb0]
   17b54:	cbz	w8, 0x17b88
   17b58:	cmn	w0, #0x1
   17b5c:	b.ne	0x17b88
   17b60:	adrp	x0, 14 ; 0x25000
   17b64:	add	x0, x0, #0x310 ; literal pool for: "com.apple.springboard.hasBlankedScreen"
   17b68:	adrp	x1, 31 ; 0x36000
   17b6c:	add	x1, x1, #0xb0
   17b70:	adrp	x2, 27 ; 0x32000
   17b74:	ldr	x2, [x2, #0xde8] ; literal pool symbol address: __dispatch_main_q
   17b78:	adrp	x3, 22 ; 0x2d000
   17b7c:	add	x3, x3, #0xe30
   17b80:	bl	0x20010 ; symbol stub for: _notify_register_dispatch
   17b84:	b	0x17ba0
   17b88:	cmn	w0, #0x1
   17b8c:	csinc	w8, w8, wzr, ne
   17b90:	tbnz	w8, #0x0, 0x17ba0
   17b94:	bl	0x1ffe0 ; symbol stub for: _notify_cancel
   17b98:	mov	w8, #-0x1
   17b9c:	str	w8, [x19, #0xb0]

; ===== sub_17ba0 =====
   17ba0:	bl	0x1b52c
   17ba4:	adrp	x0, 26 ; 0x31000
   17ba8:	add	x0, x0, #0x588 ; "music."
   17bac:	bl	0x18b50
   17bb0:	mov	x19, x0
   17bb4:	adrp	x21, 31 ; 0x36000
   17bb8:	cbz	w0, 0x17c10
   17bbc:	ldrb	w8, [x21, #0x5b8]
   17bc0:	tbnz	w8, #0x0, 0x17c10
   17bc4:	adrp	x0, 11 ; 0x22000
   17bc8:	add	x0, x0, #0xfe8 ; literal pool for: "SBMediaController"
   17bcc:	bl	0x20088 ; symbol stub for: _objc_getClass
   17bd0:	bl	0x21f20
   17bd4:	mov	x29, x29
   17bd8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   17bdc:	mov	x20, x0
   17be0:	adrp	x8, 30 ; 0x35000
   17be4:	ldr	x1, [x8, #0x3e0]
   17be8:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   17bec:	tbz	w0, #0x0, 0x17bfc
   17bf0:	mov	x0, x20
   17bf4:	bl	0x21080
   17bf8:	b	0x17c00
   17bfc:	mov	w0, #0x0

; ===== sub_17c00 =====
   17c00:	adrp	x8, 31 ; 0x36000
   17c04:	strb	w0, [x8, #0x5b9]
   17c08:	mov	x0, x20
   17c0c:	bl	0x200e8 ; symbol stub for: _objc_release
   17c10:	strb	w19, [x21, #0x5b8]
   17c14:	adrp	x0, 26 ; 0x31000
   17c18:	add	x0, x0, #0x5a8 ; "call."
   17c1c:	bl	0x18b50
   17c20:	eor	w8, w0, #0x1
   17c24:	adrp	x20, 31 ; 0x36000
   17c28:	ldr	x0, [x20, #0x3e0]
   17c2c:	tbnz	w8, #0x0, 0x17cc8
   17c30:	cbnz	x0, 0x17cc8
   17c34:	adrp	x8, 30 ; 0x35000
   17c38:	ldr	x0, [x8, #0xbb8] ; Objc class ref: bad class ref
   17c3c:	bl	0x200d0 ; symbol stub for: _objc_opt_new
   17c40:	ldr	x8, [x20, #0x3e0]
   17c44:	str	x0, [x20, #0x3e0]
   17c48:	mov	x0, x8
   17c4c:	bl	0x200e8 ; symbol stub for: _objc_release
   17c50:	adrp	x8, 30 ; 0x35000
   17c54:	ldr	x0, [x8, #0xa68] ; Objc class ref: bad class ref
   17c58:	bl	0x20b60
   17c5c:	mov	x29, x29
   17c60:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   17c64:	mov	x19, x0
   17c68:	ldr	x0, [x20, #0x3e0]
   17c6c:	mov	x2, x19
   17c70:	bl	0x21c80
   17c74:	mov	x0, x19
   17c78:	bl	0x200e8 ; symbol stub for: _objc_release
   17c7c:	adrp	x8, 30 ; 0x35000
   17c80:	ldr	x0, [x8, #0xbc0] ; Objc class ref: bad class ref
   17c84:	bl	0x200d0 ; symbol stub for: _objc_opt_new
   17c88:	mov	x19, x0
   17c8c:	ldr	x0, [x20, #0x3e0]
   17c90:	mov	x2, x19
   17c94:	bl	0x21c20
   17c98:	mov	x0, x19
   17c9c:	bl	0x200e8 ; symbol stub for: _objc_release
   17ca0:	ldr	x0, [x20, #0x3e0]
   17ca4:	bl	0x21500
   17ca8:	mov	x29, x29
   17cac:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   17cb0:	mov	x19, x0
   17cb4:	ldr	x2, [x20, #0x3e0]
   17cb8:	adrp	x3, 27 ; 0x32000
   17cbc:	ldr	x3, [x3, #0xde8] ; literal pool symbol address: __dispatch_main_q
   17cc0:	bl	0x219e0
   17cc4:	b	0x17d04
   17cc8:	cmp	x0, #0x0
   17ccc:	csel	w8, wzr, w8, eq
   17cd0:	cmp	w8, #0x1
   17cd4:	b.ne	0x17d0c
   17cd8:	bl	0x21500
   17cdc:	mov	x29, x29
   17ce0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   17ce4:	mov	x19, x0
   17ce8:	mov	x2, #0x0
   17cec:	mov	x3, #0x0
   17cf0:	bl	0x219e0
   17cf4:	mov	x0, x19
   17cf8:	bl	0x200e8 ; symbol stub for: _objc_release
   17cfc:	ldr	x19, [x20, #0x3e0]
   17d00:	str	xzr, [x20, #0x3e0]

; ===== sub_17d04 =====
   17d04:	mov	x0, x19
   17d08:	bl	0x200e8 ; symbol stub for: _objc_release
   17d0c:	adrp	x28, 31 ; 0x36000
   17d10:	ldr	x8, [x28, #0x5c0]
   17d14:	adrp	x24, 31 ; 0x36000
   17d18:	cbnz	x8, 0x17d60
   17d1c:	adrp	x19, 30 ; 0x35000
   17d20:	ldr	x0, [x19, #0xa68] ; Objc class ref: bad class ref
   17d24:	bl	0x20b60
   17d28:	mov	x29, x29
   17d2c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   17d30:	ldr	x8, [x28, #0x5c0]
   17d34:	str	x0, [x28, #0x5c0]
   17d38:	mov	x0, x8
   17d3c:	bl	0x200e8 ; symbol stub for: _objc_release
   17d40:	ldr	x0, [x19, #0xa68]
   17d44:	bl	0x20b60
   17d48:	mov	x29, x29
   17d4c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   17d50:	ldr	x8, [x24, #0x5c8]
   17d54:	str	x0, [x24, #0x5c8]
   17d58:	mov	x0, x8
   17d5c:	bl	0x200e8 ; symbol stub for: _objc_release
   17d60:	adrp	x8, 30 ; 0x35000
   17d64:	ldr	x0, [x8, #0xa28] ; Objc class ref: bad class ref
   17d68:	bl	0x218e0
   17d6c:	mov	x29, x29
   17d70:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   17d74:	mov	x19, x0
   17d78:	movi.16b	v0, #0x0
   17d7c:	stp	q0, q0, [sp, #0xb0]
   17d80:	stp	q0, q0, [sp, #0xd0]
   17d84:	adrp	x8, 31 ; 0x36000
   17d88:	ldr	x0, [x8, #0xf8]
   17d8c:	bl	0x200f4 ; symbol stub for: _objc_retain
   17d90:	mov	x20, x0
   17d94:	add	x2, sp, #0xb0
   17d98:	sub	x3, x29, #0xf0
   17d9c:	mov	w4, #0x10
   17da0:	bl	0x20980
   17da4:	cbz	x0, 0x17e4c
   17da8:	mov	x22, x0
   17dac:	ldr	x8, [sp, #0xc0]
   17db0:	ldr	x25, [x8]
   17db4:	adrp	x21, 26 ; 0x31000
   17db8:	add	x21, x21, #0xa08 ; "lib."
   17dbc:	mov	x26, #0x0
   17dc0:	ldr	x8, [sp, #0xc0]
   17dc4:	ldr	x8, [x8]
   17dc8:	cmp	x8, x25
   17dcc:	b.eq	0x17dd8
   17dd0:	mov	x0, x20
   17dd4:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   17dd8:	ldr	x8, [sp, #0xb8]
   17ddc:	ldr	x23, [x8, x26, lsl #3]
   17de0:	mov	x0, x23
   17de4:	mov	x2, x21
   17de8:	bl	0x20d80
   17dec:	cbz	w0, 0x17e24
   17df0:	mov	x0, x21
   17df4:	bl	0x21160
   17df8:	mov	x2, x0
   17dfc:	mov	x0, x23
   17e00:	bl	0x22140
   17e04:	mov	x29, x29
   17e08:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   17e0c:	mov	x23, x0
   17e10:	mov	x0, x19
   17e14:	mov	x2, x23
   17e18:	bl	0x203c0
   17e1c:	mov	x0, x23
   17e20:	bl	0x200e8 ; symbol stub for: _objc_release
   17e24:	add	x26, x26, #0x1
   17e28:	cmp	x22, x26
   17e2c:	b.ne	0x17dc0
   17e30:	add	x2, sp, #0xb0
   17e34:	sub	x3, x29, #0xf0
   17e38:	mov	x0, x20
   17e3c:	mov	w4, #0x10
   17e40:	bl	0x20980
   17e44:	mov	x22, x0
   17e48:	cbnz	x0, 0x17dbc
   17e4c:	mov	x0, x20
   17e50:	bl	0x200e8 ; symbol stub for: _objc_release
   17e54:	movi.16b	v0, #0x0
   17e58:	stp	q0, q0, [sp, #0x90]
   17e5c:	stp	q0, q0, [sp, #0x70]
   17e60:	ldr	x0, [x28, #0x5c0]
   17e64:	bl	0x20460
   17e68:	mov	x29, x29
   17e6c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   17e70:	mov	x21, x0
   17e74:	bl	0x20940
   17e78:	mov	x20, x0
   17e7c:	mov	x0, x21
   17e80:	bl	0x200e8 ; symbol stub for: _objc_release
   17e84:	add	x2, sp, #0x70
   17e88:	add	x3, sp, #0x170
   17e8c:	mov	x0, x20
   17e90:	mov	w4, #0x10
   17e94:	bl	0x20980
   17e98:	cbz	x0, 0x17f6c
   17e9c:	mov	x21, x0
   17ea0:	ldr	x8, [sp, #0x80]
   17ea4:	ldr	x25, [x8]
   17ea8:	mov	x26, #0x0
   17eac:	ldr	x8, [sp, #0x80]
   17eb0:	ldr	x8, [x8]
   17eb4:	cmp	x8, x25
   17eb8:	b.eq	0x17ec4
   17ebc:	mov	x0, x20
   17ec0:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   17ec4:	ldr	x8, [sp, #0x78]
   17ec8:	ldr	x22, [x8, x26, lsl #3]
   17ecc:	mov	x0, x19
   17ed0:	mov	x2, x22
   17ed4:	bl	0x208a0
   17ed8:	tbnz	w0, #0x0, 0x17f44
   17edc:	ldr	x0, [x28, #0x5c0]
   17ee0:	mov	x2, x22
   17ee4:	bl	0x214e0
   17ee8:	mov	x29, x29
   17eec:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   17ef0:	mov	x23, x0
   17ef4:	bl	0x20f60
   17ef8:	bl	0x1ffe0 ; symbol stub for: _notify_cancel
   17efc:	mov	x0, x23
   17f00:	bl	0x200e8 ; symbol stub for: _objc_release
   17f04:	ldr	x0, [x28, #0x5c0]
   17f08:	mov	x2, x22
   17f0c:	bl	0x21780
   17f10:	ldr	x0, [x24, #0x5c8]
   17f14:	mov	x2, x22
   17f18:	bl	0x214e0
   17f1c:	mov	x29, x29
   17f20:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   17f24:	mov	x22, x0
   17f28:	bl	0x20f60
   17f2c:	mov	x23, x0
   17f30:	mov	x0, x22
   17f34:	bl	0x200e8 ; symbol stub for: _objc_release
   17f38:	mov	x0, x23
   17f3c:	mov	x1, #0x0
   17f40:	bl	0x2001c ; symbol stub for: _notify_set_state
   17f44:	add	x26, x26, #0x1
   17f48:	cmp	x21, x26
   17f4c:	b.ne	0x17eac
   17f50:	add	x2, sp, #0x70
   17f54:	add	x3, sp, #0x170
   17f58:	mov	x0, x20
   17f5c:	mov	w4, #0x10
   17f60:	bl	0x20980
   17f64:	mov	x21, x0
   17f68:	cbnz	x0, 0x17ea8
   17f6c:	mov	x0, x20
   17f70:	bl	0x200e8 ; symbol stub for: _objc_release
   17f74:	movi.16b	v0, #0x0
   17f78:	stp	q0, q0, [sp, #0x50]
   17f7c:	stp	q0, q0, [sp, #0x30]
   17f80:	mov	x0, x19
   17f84:	bl	0x200f4 ; symbol stub for: _objc_retain
   17f88:	mov	x19, x0
   17f8c:	add	x2, sp, #0x30
   17f90:	add	x3, sp, #0xf0
   17f94:	mov	w4, #0x10
   17f98:	bl	0x20980
   17f9c:	cbz	x0, 0x181f0
   17fa0:	mov	x21, x0
   17fa4:	ldr	x8, [sp, #0x40]
   17fa8:	ldr	x22, [x8]
   17fac:	adrp	x8, 11 ; 0x22000
   17fb0:	ldr	d8, [x8, #0x8f8]
   17fb4:	mov	x23, #0x0
   17fb8:	ldr	x8, [sp, #0x40]
   17fbc:	ldr	x8, [x8]
   17fc0:	cmp	x8, x22
   17fc4:	b.eq	0x17fd0
   17fc8:	mov	x0, x19
   17fcc:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   17fd0:	ldr	x8, [sp, #0x38]
   17fd4:	ldr	x25, [x8, x23, lsl #3]
   17fd8:	ldr	x0, [x24, #0x5c8]
   17fdc:	mov	x2, x25
   17fe0:	bl	0x214e0
   17fe4:	mov	x29, x29
   17fe8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   17fec:	mov	x26, x0
   17ff0:	bl	0x200e8 ; symbol stub for: _objc_release
   17ff4:	cbnz	x26, 0x18070
   17ff8:	mov	w8, #-0x1
   17ffc:	str	w8, [sp, #0x2c]
   18000:	adrp	x0, 25 ; 0x31000
   18004:	add	x0, x0, #0xa28 ; "com.johndie.triggr/ta/"
   18008:	mov	x2, x25
   1800c:	bl	0x220a0
   18010:	mov	x29, x29
   18014:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   18018:	mov	x26, x0
   1801c:	bl	0x20100 ; symbol stub for: _objc_retainAutorelease
   18020:	bl	0x20280
   18024:	add	x1, sp, #0x2c
   18028:	bl	0x20004 ; symbol stub for: _notify_register_check
   1802c:	mov	x27, x0
   18030:	mov	x0, x26
   18034:	bl	0x200e8 ; symbol stub for: _objc_release
   18038:	cbnz	w27, 0x18070
   1803c:	adrp	x8, 29 ; 0x35000
   18040:	ldr	x0, [x8, #0xa70] ; Objc class ref: bad class ref
   18044:	ldr	w2, [sp, #0x2c]
   18048:	bl	0x21400
   1804c:	mov	x29, x29
   18050:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   18054:	mov	x26, x0
   18058:	ldr	x0, [x24, #0x5c8]
   1805c:	mov	x2, x26
   18060:	mov	x3, x25
   18064:	bl	0x21c00
   18068:	mov	x0, x26
   1806c:	bl	0x200e8 ; symbol stub for: _objc_release
   18070:	ldr	x0, [x24, #0x5c8]
   18074:	mov	x2, x25
   18078:	bl	0x214e0
   1807c:	mov	x29, x29
   18080:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   18084:	mov	x26, x0
   18088:	bl	0x200e8 ; symbol stub for: _objc_release
   1808c:	cbz	x26, 0x180bc
   18090:	ldr	x0, [x24, #0x5c8]
   18094:	mov	x2, x25
   18098:	bl	0x214e0
   1809c:	mov	x29, x29
   180a0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   180a4:	mov	x26, x0
   180a8:	bl	0x20f60
   180ac:	mov	w1, #0x1
   180b0:	bl	0x2001c ; symbol stub for: _notify_set_state
   180b4:	mov	x0, x26
   180b8:	bl	0x200e8 ; symbol stub for: _objc_release
   180bc:	ldr	x0, [x28, #0x5c0]
   180c0:	mov	x2, x25
   180c4:	bl	0x214e0
   180c8:	mov	x29, x29
   180cc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   180d0:	mov	x26, x0
   180d4:	bl	0x200e8 ; symbol stub for: _objc_release
   180d8:	cbnz	x26, 0x181c8
   180dc:	mov	x20, x28
   180e0:	adrp	x0, 25 ; 0x31000
   180e4:	add	x0, x0, #0xa08 ; "lib."
   180e8:	mov	x2, x25
   180ec:	bl	0x220a0
   180f0:	mov	x29, x29
   180f4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   180f8:	mov	x26, x0
   180fc:	adrp	x0, 25 ; 0x31000
   18100:	add	x0, x0, #0xa48 ; "com.johndie.triggr/t/"
   18104:	mov	x2, x25
   18108:	bl	0x220a0
   1810c:	mov	x29, x29
   18110:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   18114:	mov	x27, x0
   18118:	bl	0x20100 ; symbol stub for: _objc_retainAutorelease
   1811c:	bl	0x20280
   18120:	mov	x28, x0
   18124:	adrp	x8, 26 ; 0x32000
   18128:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1812c:	str	x8, [sp]
   18130:	str	d8, [sp, #0x8]
   18134:	adrp	x8, 3 ; 0x1b000
   18138:	add	x9, x8, #0x67c
   1813c:	adrp	x8, 21 ; 0x2d000
   18140:	add	x8, x8, #0xe50
   18144:	stp	x9, x8, [sp, #0x10]
   18148:	mov	x0, x26
   1814c:	bl	0x200f4 ; symbol stub for: _objc_retain
   18150:	mov	x26, x0
   18154:	str	x0, [sp, #0x20]
   18158:	add	x1, sp, #0x2c
   1815c:	mov	x3, sp
   18160:	mov	x0, x28
   18164:	adrp	x2, 26 ; 0x32000
   18168:	ldr	x2, [x2, #0xde8] ; literal pool symbol address: __dispatch_main_q
   1816c:	bl	0x20010 ; symbol stub for: _notify_register_dispatch
   18170:	mov	x28, x0
   18174:	mov	x0, x27
   18178:	bl	0x200e8 ; symbol stub for: _objc_release
   1817c:	cbnz	w28, 0x181b4
   18180:	adrp	x8, 29 ; 0x35000
   18184:	ldr	x0, [x8, #0xa70] ; Objc class ref: bad class ref
   18188:	ldr	w2, [sp, #0x2c]
   1818c:	bl	0x21400
   18190:	mov	x29, x29
   18194:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   18198:	mov	x27, x0
   1819c:	ldr	x0, [x20, #0x5c0]
   181a0:	mov	x2, x27
   181a4:	mov	x3, x25
   181a8:	bl	0x21c00
   181ac:	mov	x0, x27
   181b0:	bl	0x200e8 ; symbol stub for: _objc_release
   181b4:	ldr	x0, [sp, #0x20]
   181b8:	bl	0x200e8 ; symbol stub for: _objc_release
   181bc:	mov	x0, x26
   181c0:	bl	0x200e8 ; symbol stub for: _objc_release
   181c4:	mov	x28, x20
   181c8:	add	x23, x23, #0x1
   181cc:	cmp	x21, x23
   181d0:	b.ne	0x17fb8
   181d4:	add	x2, sp, #0x30
   181d8:	add	x3, sp, #0xf0
   181dc:	mov	x0, x19
   181e0:	mov	w4, #0x10
   181e4:	bl	0x20980
   181e8:	mov	x21, x0
   181ec:	cbnz	x0, 0x17fb4
   181f0:	mov	x0, x19
   181f4:	bl	0x200e8 ; symbol stub for: _objc_release
   181f8:	mov	x0, x19
   181fc:	bl	0x200e8 ; symbol stub for: _objc_release
   18200:	adrp	x22, 30 ; 0x36000
   18204:	ldr	w8, [x22, #0x88]
   18208:	cmn	w8, #0x1
   1820c:	adrp	x20, 30 ; 0x36000
   18210:	b.eq	0x182d4
   18214:	bl	0x19150
   18218:	mov	w19, w0
   1821c:	ldr	x0, [x20, #0xf8]
   18220:	adrp	x2, 25 ; 0x31000
   18224:	add	x2, x2, #0x5c8 ; "motion.shake"
   18228:	bl	0x208a0
   1822c:	mov	x23, #0x0
   18230:	cmp	w0, #0x0
   18234:	mov	w8, #0x2
   18238:	csel	x8, x8, xzr, ne
   1823c:	orr	x19, x8, x19
   18240:	adrp	x24, 20 ; 0x2c000
   18244:	add	x24, x24, #0x1a0
   18248:	adrp	x25, 29 ; 0x35000
   1824c:	mov	w26, #0x4
   18250:	adrp	x8, 30 ; 0x36000
   18254:	ldr	x20, [x8, #0xf8]
   18258:	ldr	x0, [x25, #0xa38]
   1825c:	ldr	x2, [x24], #0x10
   18260:	bl	0x22120
   18264:	mov	x29, x29
   18268:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1826c:	mov	x21, x0
   18270:	mov	x0, x20
   18274:	mov	x2, x21
   18278:	bl	0x208a0
   1827c:	mov	x20, x0
   18280:	mov	x0, x21
   18284:	bl	0x200e8 ; symbol stub for: _objc_release
   18288:	lsl	x8, x26, x23
   1828c:	cmp	w20, #0x0
   18290:	csel	x8, x8, xzr, ne
   18294:	orr	x19, x8, x19
   18298:	add	x23, x23, #0x1
   1829c:	cmp	x23, #0x14
   182a0:	b.ne	0x18250
   182a4:	ldr	w0, [x22, #0x88]
   182a8:	mov	x1, x19
   182ac:	bl	0x2001c ; symbol stub for: _notify_set_state
   182b0:	adrp	x8, 30 ; 0x36000
   182b4:	ldr	x9, [x8, #0x90]
   182b8:	cmp	x19, x9
   182bc:	b.eq	0x182f4
   182c0:	str	x19, [x8, #0x90]
   182c4:	adrp	x0, 13 ; 0x25000
   182c8:	add	x0, x0, #0x1b0 ; literal pool for: "com.johndie.triggr/relay-wanted"
   182cc:	bl	0x1fff8 ; symbol stub for: _notify_post
   182d0:	b	0x182f4
   182d4:	adrp	x0, 13 ; 0x25000
   182d8:	add	x0, x0, #0x1b0 ; literal pool for: "com.johndie.triggr/relay-wanted"
   182dc:	adrp	x1, 30 ; 0x36000
   182e0:	add	x1, x1, #0x88
   182e4:	bl	0x20004 ; symbol stub for: _notify_register_check
   182e8:	cbz	w0, 0x18518
   182ec:	mov	w8, #-0x1
   182f0:	str	w8, [x22, #0x88]

; ===== sub_182f4 =====
   182f4:	adrp	x8, 29 ; 0x35000
   182f8:	ldr	x0, [x8, #0xb58] ; Objc class ref: bad class ref
   182fc:	bl	0x20ac0
   18300:	mov	x29, x29
   18304:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   18308:	mov	x19, x0
   1830c:	adrp	x0, 22 ; 0x2e000
   18310:	add	x0, x0, #0xfa8 ; "power.connected"
   18314:	adrp	x1, 22 ; 0x2e000
   18318:	add	x1, x1, #0xfc8 ; "power.disconnected"
   1831c:	bl	0x1936c
   18320:	eor	w8, w0, #0x1
   18324:	adrp	x22, 30 ; 0x36000
   18328:	ldr	x2, [x22, #0x400]
   1832c:	tbnz	w8, #0x0, 0x183c4
   18330:	cbnz	x2, 0x183c4
   18334:	adrp	x8, 29 ; 0x35000
   18338:	ldr	x0, [x8, #0xaf0] ; Objc class ref: bad class ref
   1833c:	bl	0x209c0
   18340:	mov	x29, x29
   18344:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   18348:	mov	x20, x0
   1834c:	mov	w2, #0x1
   18350:	bl	0x21940
   18354:	mov	x0, x20
   18358:	bl	0x200e8 ; symbol stub for: _objc_release
   1835c:	bl	0x14c98
   18360:	adrp	x8, 30 ; 0x36000
   18364:	strb	w0, [x8, #0x532]
   18368:	adrp	x8, 26 ; 0x32000
   1836c:	ldr	x8, [x8, #0xd60] ; literal pool symbol address: _UIDeviceBatteryStateDidChangeNotification
   18370:	ldr	x21, [x8]
   18374:	adrp	x8, 29 ; 0x35000
   18378:	ldr	x0, [x8, #0xb60] ; Objc class ref: bad class ref
   1837c:	bl	0x212c0
   18380:	mov	x29, x29
   18384:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   18388:	mov	x20, x0
   1838c:	adrp	x5, 21 ; 0x2d000
   18390:	add	x5, x5, #0x9f0
   18394:	mov	x0, x19
   18398:	mov	x2, x21
   1839c:	mov	x3, #0x0
   183a0:	mov	x4, x20
   183a4:	bl	0x203e0
   183a8:	mov	x29, x29
   183ac:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   183b0:	ldr	x8, [x22, #0x400]
   183b4:	str	x0, [x22, #0x400]
   183b8:	mov	x0, x8
   183bc:	bl	0x200e8 ; symbol stub for: _objc_release
   183c0:	b	0x183e4
   183c4:	cmp	x2, #0x0
   183c8:	csel	w8, wzr, w8, eq
   183cc:	cmp	w8, #0x1
   183d0:	b.ne	0x183ec
   183d4:	mov	x0, x19
   183d8:	bl	0x217a0
   183dc:	ldr	x20, [x22, #0x400]
   183e0:	str	xzr, [x22, #0x400]

; ===== sub_183e4 =====
   183e4:	mov	x0, x20
   183e8:	bl	0x200e8 ; symbol stub for: _objc_release
   183ec:	adrp	x0, 22 ; 0x2e000
   183f0:	add	x0, x0, #0xfe8 ; "headphones.in"
   183f4:	adrp	x1, 23 ; 0x2f000
   183f8:	add	x1, x1, #0x8 ; "headphones.out"
   183fc:	bl	0x1936c
   18400:	eor	w8, w0, #0x1
   18404:	adrp	x22, 30 ; 0x36000
   18408:	ldr	x2, [x22, #0x408]
   1840c:	tbnz	w8, #0x0, 0x184ac
   18410:	cbnz	x2, 0x184ac
   18414:	adrp	x8, 29 ; 0x35000
   18418:	ldr	x0, [x8, #0xb28] ; Objc class ref: bad class ref
   1841c:	bl	0x21f20
   18420:	mov	x29, x29
   18424:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   18428:	mov	x20, x0
   1842c:	bl	0x209e0
   18430:	mov	x29, x29
   18434:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   18438:	mov	x21, x0
   1843c:	bl	0x14ce4
   18440:	adrp	x8, 30 ; 0x36000
   18444:	strb	w0, [x8, #0x533]
   18448:	mov	x0, x21
   1844c:	bl	0x200e8 ; symbol stub for: _objc_release
   18450:	mov	x0, x20
   18454:	bl	0x200e8 ; symbol stub for: _objc_release
   18458:	adrp	x8, 29 ; 0x35000
   1845c:	ldr	x0, [x8, #0xb60] ; Objc class ref: bad class ref
   18460:	bl	0x212c0
   18464:	mov	x29, x29
   18468:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1846c:	mov	x20, x0
   18470:	adrp	x2, 25 ; 0x31000
   18474:	add	x2, x2, #0x5e8 ; "SBAudioRoutesChangedNotification"
   18478:	adrp	x5, 21 ; 0x2d000
   1847c:	add	x5, x5, #0xa10
   18480:	mov	x0, x19
   18484:	mov	x3, #0x0
   18488:	mov	x4, x20
   1848c:	bl	0x203e0
   18490:	mov	x29, x29
   18494:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   18498:	ldr	x8, [x22, #0x408]
   1849c:	str	x0, [x22, #0x408]
   184a0:	mov	x0, x8
   184a4:	bl	0x200e8 ; symbol stub for: _objc_release
   184a8:	b	0x184cc
   184ac:	cmp	x2, #0x0
   184b0:	csel	w8, wzr, w8, eq
   184b4:	cmp	w8, #0x1
   184b8:	b.ne	0x184d4
   184bc:	mov	x0, x19
   184c0:	bl	0x217a0
   184c4:	ldr	x20, [x22, #0x408]
   184c8:	str	xzr, [x22, #0x408]

; ===== sub_184cc =====
   184cc:	mov	x0, x20
   184d0:	bl	0x200e8 ; symbol stub for: _objc_release
   184d4:	mov	x0, x19
   184d8:	bl	0x200e8 ; symbol stub for: _objc_release
   184dc:	ldur	x8, [x29, #-0x70]
   184e0:	adrp	x9, 26 ; 0x32000
   184e4:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   184e8:	ldr	x9, [x9]
   184ec:	cmp	x9, x8
   184f0:	b.ne	0x18528
   184f4:	add	sp, sp, #0x280
   184f8:	ldp	x29, x30, [sp, #0x60]
   184fc:	ldp	x20, x19, [sp, #0x50]
   18500:	ldp	x22, x21, [sp, #0x40]
   18504:	ldp	x24, x23, [sp, #0x30]
   18508:	ldp	x26, x25, [sp, #0x20]
   1850c:	ldp	x28, x27, [sp, #0x10]
   18510:	ldp	d9, d8, [sp], #0x70
   18514:	ret
   18518:	ldr	w8, [x22, #0x88]
   1851c:	cmn	w8, #0x1
   18520:	b.ne	0x18214
   18524:	b	0x182f4
   18528:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_1852c =====
   1852c:	stp	d9, d8, [sp, #-0x70]!
   18530:	stp	x28, x27, [sp, #0x10]
   18534:	stp	x26, x25, [sp, #0x20]
   18538:	stp	x24, x23, [sp, #0x30]
   1853c:	stp	x22, x21, [sp, #0x40]
   18540:	stp	x20, x19, [sp, #0x50]
   18544:	stp	x29, x30, [sp, #0x60]
   18548:	add	x29, sp, #0x60
   1854c:	sub	sp, sp, #0x2f0
   18550:	add	x9, sp, #0xa0
   18554:	adrp	x8, 26 ; 0x32000
   18558:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1855c:	ldr	x8, [x8]
   18560:	stur	x8, [x29, #-0x78]
   18564:	movi.16b	v0, #0x0
   18568:	stp	q0, q0, [x9, #0x70]
   1856c:	stp	q0, q0, [x9, #0x90]
   18570:	adrp	x21, 30 ; 0x36000
   18574:	ldr	x0, [x21, #0x360]
   18578:	bl	0x200f4 ; symbol stub for: _objc_retain
   1857c:	mov	x19, x0
   18580:	add	x2, sp, #0x110
   18584:	sub	x3, x29, #0xf8
   18588:	mov	w4, #0x10
   1858c:	bl	0x20980
   18590:	cbz	x0, 0x185f4
   18594:	mov	x20, x0
   18598:	ldr	x8, [sp, #0x120]
   1859c:	ldr	x22, [x8]
   185a0:	mov	x23, #0x0
   185a4:	ldr	x8, [sp, #0x120]
   185a8:	ldr	x8, [x8]
   185ac:	cmp	x8, x22
   185b0:	b.eq	0x185bc
   185b4:	mov	x0, x19
   185b8:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   185bc:	ldr	x8, [sp, #0x118]
   185c0:	ldr	x0, [x8, x23, lsl #3]
   185c4:	bl	0x20f60
   185c8:	bl	0x1ffe0 ; symbol stub for: _notify_cancel
   185cc:	add	x23, x23, #0x1
   185d0:	cmp	x20, x23
   185d4:	b.ne	0x185a4
   185d8:	add	x2, sp, #0x110
   185dc:	sub	x3, x29, #0xf8
   185e0:	mov	x0, x19
   185e4:	mov	w4, #0x10
   185e8:	bl	0x20980
   185ec:	mov	x20, x0
   185f0:	cbnz	x0, 0x185a0
   185f4:	mov	x0, x19
   185f8:	bl	0x200e8 ; symbol stub for: _objc_release
   185fc:	adrp	x8, 29 ; 0x35000
   18600:	ldr	x0, [x8, #0xa40] ; Objc class ref: bad class ref
   18604:	bl	0x20560
   18608:	mov	x29, x29
   1860c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   18610:	ldr	x8, [x21, #0x360]
   18614:	str	x0, [x21, #0x360]
   18618:	mov	x0, x8
   1861c:	bl	0x200e8 ; symbol stub for: _objc_release
   18620:	adrp	x8, 30 ; 0x36000
   18624:	ldrb	w8, [x8, #0x530]
   18628:	cmp	w8, #0x1
   1862c:	b.ne	0x188b4
   18630:	mov	x23, #0x0
   18634:	adrp	x27, 29 ; 0x35000
   18638:	adrp	x19, 25 ; 0x31000
   1863c:	add	x19, x19, #0xb08 ; "run/"
   18640:	adrp	x24, 26 ; 0x32000
   18644:	ldr	x24, [x24, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   18648:	adrp	x8, 10 ; 0x22000
   1864c:	ldr	d8, [x8, #0x8f8]
   18650:	adrp	x28, 3 ; 0x1b000
   18654:	add	x28, x28, #0x790
   18658:	adrp	x25, 20 ; 0x2c000
   1865c:	add	x25, x25, #0xb0
   18660:	adrp	x8, 21 ; 0x2d000
   18664:	add	x8, x8, #0x770
   18668:	add	x8, x8, x23, lsl #5
   1866c:	ldr	w22, [x8, #0x10]
   18670:	cmp	w22, #0x1
   18674:	b.lt	0x186f4
   18678:	ldr	x26, [x8, #0x8]
   1867c:	ldr	x0, [x27, #0xa38]
   18680:	ldr	x2, [x26], #0x10
   18684:	bl	0x22120
   18688:	mov	x29, x29
   1868c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   18690:	mov	x20, x0
   18694:	mov	x0, x19
   18698:	mov	x2, x20
   1869c:	bl	0x220a0
   186a0:	mov	x29, x29
   186a4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   186a8:	mov	x21, x0
   186ac:	str	x24, [sp, #0xe8]
   186b0:	str	d8, [sp, #0xf0]
   186b4:	stp	x28, x25, [sp, #0xf8]
   186b8:	str	x20, [sp, #0x108]
   186bc:	mov	x0, x20
   186c0:	bl	0x200f4 ; symbol stub for: _objc_retain
   186c4:	mov	x20, x0
   186c8:	add	x1, sp, #0xe8
   186cc:	mov	x0, x21
   186d0:	bl	0x1b684
   186d4:	mov	x0, x21
   186d8:	bl	0x200e8 ; symbol stub for: _objc_release
   186dc:	ldr	x0, [sp, #0x108]
   186e0:	bl	0x200e8 ; symbol stub for: _objc_release
   186e4:	mov	x0, x20
   186e8:	bl	0x200e8 ; symbol stub for: _objc_release
   186ec:	subs	x22, x22, #0x1
   186f0:	b.ne	0x1867c
   186f4:	add	x23, x23, #0x1
   186f8:	cmp	x23, #0xf
   186fc:	b.ne	0x18660
   18700:	movi.16b	v0, #0x0
   18704:	add	x8, sp, #0xa0
   18708:	stp	q0, q0, [x8, #0x20]
   1870c:	stp	q0, q0, [x8]
   18710:	adrp	x8, 30 ; 0x36000
   18714:	ldr	x0, [x8, #0xf8]
   18718:	bl	0x200f4 ; symbol stub for: _objc_retain
   1871c:	mov	x19, x0
   18720:	add	x2, sp, #0xa0
   18724:	add	x3, sp, #0x1d8
   18728:	mov	w4, #0x10
   1872c:	bl	0x20980
   18730:	cbz	x0, 0x187d4
   18734:	mov	x21, x0
   18738:	ldr	x8, [sp, #0xb0]
   1873c:	ldr	x26, [x8]
   18740:	adrp	x20, 25 ; 0x31000
   18744:	add	x20, x20, #0xb28 ; "trigger/"
   18748:	adrp	x27, 3 ; 0x1b000
   1874c:	add	x27, x27, #0x820
   18750:	mov	x28, #0x0
   18754:	ldr	x8, [sp, #0xb0]
   18758:	ldr	x8, [x8]
   1875c:	cmp	x8, x26
   18760:	b.eq	0x1876c
   18764:	mov	x0, x19
   18768:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   1876c:	ldr	x8, [sp, #0xa8]
   18770:	ldr	x22, [x8, x28, lsl #3]
   18774:	mov	x0, x20
   18778:	mov	x2, x22
   1877c:	bl	0x220a0
   18780:	mov	x29, x29
   18784:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   18788:	mov	x23, x0
   1878c:	str	x24, [sp, #0x78]
   18790:	str	d8, [sp, #0x80]
   18794:	stp	x27, x25, [sp, #0x88]
   18798:	str	x22, [sp, #0x98]
   1879c:	add	x1, sp, #0x78
   187a0:	bl	0x1b684
   187a4:	mov	x0, x23
   187a8:	bl	0x200e8 ; symbol stub for: _objc_release
   187ac:	add	x28, x28, #0x1
   187b0:	cmp	x21, x28
   187b4:	b.ne	0x18754
   187b8:	add	x2, sp, #0xa0
   187bc:	add	x3, sp, #0x1d8
   187c0:	mov	x0, x19
   187c4:	mov	w4, #0x10
   187c8:	bl	0x20980
   187cc:	mov	x21, x0
   187d0:	cbnz	x0, 0x18750
   187d4:	mov	x0, x19
   187d8:	bl	0x200e8 ; symbol stub for: _objc_release
   187dc:	movi.16b	v0, #0x0
   187e0:	stp	q0, q0, [sp, #0x50]
   187e4:	stp	q0, q0, [sp, #0x30]
   187e8:	adrp	x8, 30 ; 0x36000
   187ec:	ldr	x0, [x8, #0x328]
   187f0:	bl	0x200f4 ; symbol stub for: _objc_retain
   187f4:	mov	x19, x0
   187f8:	add	x2, sp, #0x30
   187fc:	add	x3, sp, #0x158
   18800:	mov	w4, #0x10
   18804:	bl	0x20980
   18808:	cbz	x0, 0x188ac
   1880c:	mov	x21, x0
   18810:	ldr	x8, [sp, #0x40]
   18814:	ldr	x26, [x8]
   18818:	adrp	x20, 25 ; 0x31000
   1881c:	add	x20, x20, #0xb48 ; "menu/"
   18820:	adrp	x27, 3 ; 0x1b000
   18824:	add	x27, x27, #0x828
   18828:	mov	x28, #0x0
   1882c:	ldr	x8, [sp, #0x40]
   18830:	ldr	x8, [x8]
   18834:	cmp	x8, x26
   18838:	b.eq	0x18844
   1883c:	mov	x0, x19
   18840:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   18844:	ldr	x8, [sp, #0x38]
   18848:	ldr	x22, [x8, x28, lsl #3]
   1884c:	mov	x0, x20
   18850:	mov	x2, x22
   18854:	bl	0x220a0
   18858:	mov	x29, x29
   1885c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   18860:	mov	x23, x0
   18864:	str	x24, [sp, #0x8]
   18868:	str	d8, [sp, #0x10]
   1886c:	stp	x27, x25, [sp, #0x18]
   18870:	str	x22, [sp, #0x28]
   18874:	add	x1, sp, #0x8
   18878:	bl	0x1b684
   1887c:	mov	x0, x23
   18880:	bl	0x200e8 ; symbol stub for: _objc_release
   18884:	add	x28, x28, #0x1
   18888:	cmp	x21, x28
   1888c:	b.ne	0x1882c
   18890:	add	x2, sp, #0x30
   18894:	add	x3, sp, #0x158
   18898:	mov	x0, x19
   1889c:	mov	w4, #0x10
   188a0:	bl	0x20980
   188a4:	mov	x21, x0
   188a8:	cbnz	x0, 0x18828
   188ac:	mov	x0, x19
   188b0:	bl	0x200e8 ; symbol stub for: _objc_release
   188b4:	ldur	x8, [x29, #-0x78]
   188b8:	adrp	x9, 26 ; 0x32000
   188bc:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   188c0:	ldr	x9, [x9]
   188c4:	cmp	x9, x8
   188c8:	b.ne	0x188f0
   188cc:	add	sp, sp, #0x2f0
   188d0:	ldp	x29, x30, [sp, #0x60]
   188d4:	ldp	x20, x19, [sp, #0x50]
   188d8:	ldp	x22, x21, [sp, #0x40]
   188dc:	ldp	x24, x23, [sp, #0x30]
   188e0:	ldp	x26, x25, [sp, #0x20]
   188e4:	ldp	x28, x27, [sp, #0x10]
   188e8:	ldp	d9, d8, [sp], #0x70
   188ec:	ret
   188f0:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
   188f4:	sub	sp, sp, #0x140
   188f8:	stp	x28, x27, [sp, #0xe0]
   188fc:	stp	x26, x25, [sp, #0xf0]
   18900:	stp	x24, x23, [sp, #0x100]
   18904:	stp	x22, x21, [sp, #0x110]
   18908:	stp	x20, x19, [sp, #0x120]
   1890c:	stp	x29, x30, [sp, #0x130]
   18910:	add	x29, sp, #0x130
   18914:	mov	x20, x2
   18918:	mov	x21, x0
   1891c:	adrp	x8, 26 ; 0x32000
   18920:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   18924:	ldr	x8, [x8]
   18928:	stur	x8, [x29, #-0x60]
   1892c:	mov	x0, x1
   18930:	bl	0x200f4 ; symbol stub for: _objc_retain
   18934:	mov	x19, x0
   18938:	mov	x0, x20
   1893c:	bl	0x200f4 ; symbol stub for: _objc_retain
   18940:	mov	x20, x0
   18944:	adrp	x2, 23 ; 0x2f000
   18948:	add	x2, x2, #0x5e8 ; "if:"
   1894c:	mov	x0, x19
   18950:	bl	0x20d80
   18954:	cbz	w0, 0x189b8
   18958:	adrp	x8, 29 ; 0x35000
   1895c:	ldr	x0, [x8, #0xa48] ; Objc class ref: bad class ref
   18960:	bl	0x200b8 ; symbol stub for: _objc_opt_class
   18964:	mov	x1, x0
   18968:	mov	x0, x20
   1896c:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
   18970:	tbz	w0, #0x0, 0x18b04
   18974:	mov	x0, x20
   18978:	bl	0x20960
   1897c:	cbz	x0, 0x18b04
   18980:	ldr	x21, [x21, #0x20]
   18984:	adrp	x0, 23 ; 0x2f000
   18988:	add	x0, x0, #0x5e8 ; "if:"
   1898c:	bl	0x21160
   18990:	mov	x2, x0
   18994:	mov	x0, x19
   18998:	bl	0x22140
   1899c:	mov	x29, x29
   189a0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   189a4:	mov	x22, x0
   189a8:	mov	x0, x21
   189ac:	mov	x2, x20
   189b0:	mov	x3, x22
   189b4:	b	0x18af8
   189b8:	adrp	x2, 22 ; 0x2e000
   189bc:	add	x2, x2, #0xf08
   189c0:	mov	x0, x19
   189c4:	bl	0x208c0
   189c8:	cbz	w0, 0x18b04
   189cc:	adrp	x8, 29 ; 0x35000
   189d0:	ldr	x0, [x8, #0xa40] ; Objc class ref: bad class ref
   189d4:	bl	0x20560
   189d8:	mov	x29, x29
   189dc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   189e0:	mov	x22, x0
   189e4:	movi.16b	v0, #0x0
   189e8:	stp	q0, q0, [sp]
   189ec:	stp	q0, q0, [sp, #0x20]
   189f0:	adrp	x23, 29 ; 0x35000
   189f4:	ldr	x0, [x23, #0xa48] ; Objc class ref: bad class ref
   189f8:	bl	0x200b8 ; symbol stub for: _objc_opt_class
   189fc:	mov	x1, x0
   18a00:	mov	x0, x20
   18a04:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
   18a08:	tbz	w0, #0x0, 0x18a18
   18a0c:	mov	x0, x20
   18a10:	bl	0x200f4 ; symbol stub for: _objc_retain
   18a14:	b	0x18a34
   18a18:	str	x20, [sp, #0x48]
   18a1c:	ldr	x0, [x23, #0xa48]
   18a20:	add	x2, sp, #0x48
   18a24:	mov	w3, #0x1
   18a28:	bl	0x20580
   18a2c:	mov	x29, x29
   18a30:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue

; ===== sub_18a34 =====
   18a34:	mov	x23, x0
   18a38:	mov	x2, sp
   18a3c:	add	x3, sp, #0x50
   18a40:	mov	w4, #0x10
   18a44:	bl	0x20980
   18a48:	cbz	x0, 0x18ad8
   18a4c:	mov	x24, x0
   18a50:	ldr	x8, [sp, #0x10]
   18a54:	ldr	x26, [x8]
   18a58:	adrp	x27, 29 ; 0x35000
   18a5c:	mov	x28, #0x0
   18a60:	ldr	x8, [sp, #0x10]
   18a64:	ldr	x8, [x8]
   18a68:	cmp	x8, x26
   18a6c:	b.eq	0x18a78
   18a70:	mov	x0, x23
   18a74:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   18a78:	ldr	x8, [sp, #0x8]
   18a7c:	ldr	x25, [x8, x28, lsl #3]
   18a80:	ldr	x0, [x27, #0xa38]
   18a84:	bl	0x200b8 ; symbol stub for: _objc_opt_class
   18a88:	mov	x1, x0
   18a8c:	mov	x0, x25
   18a90:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
   18a94:	tbz	w0, #0x0, 0x18ab0
   18a98:	mov	x0, x25
   18a9c:	bl	0x21160
   18aa0:	cbz	x0, 0x18ab0
   18aa4:	mov	x0, x22
   18aa8:	mov	x2, x25
   18aac:	bl	0x203c0
   18ab0:	add	x28, x28, #0x1
   18ab4:	cmp	x24, x28
   18ab8:	b.ne	0x18a60
   18abc:	mov	x2, sp
   18ac0:	add	x3, sp, #0x50
   18ac4:	mov	x0, x23
   18ac8:	mov	w4, #0x10
   18acc:	bl	0x20980
   18ad0:	mov	x24, x0
   18ad4:	cbnz	x0, 0x18a5c
   18ad8:	mov	x0, x23
   18adc:	bl	0x200e8 ; symbol stub for: _objc_release
   18ae0:	mov	x0, x22
   18ae4:	bl	0x20960
   18ae8:	cbz	x0, 0x18afc
   18aec:	ldr	x0, [x21, #0x28]
   18af0:	mov	x2, x22
   18af4:	mov	x3, x19

; ===== sub_18af8 =====
   18af8:	bl	0x21c00
   18afc:	mov	x0, x22
   18b00:	bl	0x200e8 ; symbol stub for: _objc_release
   18b04:	mov	x0, x20
   18b08:	bl	0x200e8 ; symbol stub for: _objc_release
   18b0c:	mov	x0, x19
   18b10:	bl	0x200e8 ; symbol stub for: _objc_release
   18b14:	ldur	x8, [x29, #-0x60]
   18b18:	adrp	x9, 26 ; 0x32000
   18b1c:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   18b20:	ldr	x9, [x9]
   18b24:	cmp	x9, x8
   18b28:	b.ne	0x18b4c
   18b2c:	ldp	x29, x30, [sp, #0x130]
   18b30:	ldp	x20, x19, [sp, #0x120]
   18b34:	ldp	x22, x21, [sp, #0x110]
   18b38:	ldp	x24, x23, [sp, #0x100]
   18b3c:	ldp	x26, x25, [sp, #0xf0]
   18b40:	ldp	x28, x27, [sp, #0xe0]
   18b44:	add	sp, sp, #0x140
   18b48:	ret
   18b4c:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_18b50 =====
   18b50:	sub	sp, sp, #0x110
   18b54:	stp	x24, x23, [sp, #0xd0]
   18b58:	stp	x22, x21, [sp, #0xe0]
   18b5c:	stp	x20, x19, [sp, #0xf0]
   18b60:	stp	x29, x30, [sp, #0x100]
   18b64:	add	x29, sp, #0x100
   18b68:	adrp	x8, 26 ; 0x32000
   18b6c:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   18b70:	ldr	x8, [x8]
   18b74:	stur	x8, [x29, #-0x38]
   18b78:	bl	0x200f4 ; symbol stub for: _objc_retain
   18b7c:	mov	x19, x0
   18b80:	movi.16b	v0, #0x0
   18b84:	stp	q0, q0, [sp]
   18b88:	stp	q0, q0, [sp, #0x20]
   18b8c:	adrp	x8, 30 ; 0x36000
   18b90:	ldr	x0, [x8, #0xf8]
   18b94:	bl	0x200f4 ; symbol stub for: _objc_retain
   18b98:	mov	x20, x0
   18b9c:	mov	x2, sp
   18ba0:	add	x3, sp, #0x48
   18ba4:	mov	w4, #0x10
   18ba8:	bl	0x20980
   18bac:	mov	x21, x0
   18bb0:	cbz	x0, 0x18c1c
   18bb4:	ldr	x8, [sp, #0x10]
   18bb8:	ldr	x22, [x8]
   18bbc:	mov	x23, #0x0
   18bc0:	ldr	x8, [sp, #0x10]
   18bc4:	ldr	x8, [x8]
   18bc8:	cmp	x8, x22
   18bcc:	b.eq	0x18bd8
   18bd0:	mov	x0, x20
   18bd4:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   18bd8:	ldr	x8, [sp, #0x8]
   18bdc:	ldr	x0, [x8, x23, lsl #3]
   18be0:	mov	x2, x19
   18be4:	bl	0x20d80
   18be8:	tbnz	w0, #0x0, 0x18c18
   18bec:	add	x23, x23, #0x1
   18bf0:	cmp	x21, x23
   18bf4:	b.ne	0x18bc0
   18bf8:	mov	x2, sp
   18bfc:	add	x3, sp, #0x48
   18c00:	mov	x0, x20
   18c04:	mov	w4, #0x10
   18c08:	bl	0x20980
   18c0c:	mov	x21, x0
   18c10:	cbnz	x0, 0x18bbc
   18c14:	b	0x18c1c
   18c18:	mov	w21, #0x1

; ===== sub_18c1c =====
   18c1c:	mov	x0, x20
   18c20:	bl	0x200e8 ; symbol stub for: _objc_release
   18c24:	mov	x0, x19
   18c28:	bl	0x200e8 ; symbol stub for: _objc_release
   18c2c:	ldur	x8, [x29, #-0x38]
   18c30:	adrp	x9, 26 ; 0x32000
   18c34:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   18c38:	ldr	x9, [x9]
   18c3c:	cmp	x9, x8
   18c40:	b.ne	0x18c60
   18c44:	mov	x0, x21
   18c48:	ldp	x29, x30, [sp, #0x100]
   18c4c:	ldp	x20, x19, [sp, #0xf0]
   18c50:	ldp	x22, x21, [sp, #0xe0]
   18c54:	ldp	x24, x23, [sp, #0xd0]
   18c58:	add	sp, sp, #0x110
   18c5c:	ret
   18c60:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_18c64 =====
   18c64:	stp	x28, x27, [sp, #-0x60]!
   18c68:	stp	x26, x25, [sp, #0x10]
   18c6c:	stp	x24, x23, [sp, #0x20]
   18c70:	stp	x22, x21, [sp, #0x30]
   18c74:	stp	x20, x19, [sp, #0x40]
   18c78:	stp	x29, x30, [sp, #0x50]
   18c7c:	add	x29, sp, #0x50
   18c80:	sub	sp, sp, #0x1c0
   18c84:	adrp	x8, 26 ; 0x32000
   18c88:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   18c8c:	ldr	x8, [x8]
   18c90:	stur	x8, [x29, #-0x60]
   18c94:	adrp	x22, 30 ; 0x36000
   18c98:	strb	wzr, [x22, #0x578]
   18c9c:	movi.16b	v0, #0x0
   18ca0:	stp	q0, q0, [sp, #0x70]
   18ca4:	stp	q0, q0, [sp, #0x90]
   18ca8:	adrp	x0, 26 ; 0x32000
   18cac:	add	x0, x0, #0x918
   18cb0:	add	x2, sp, #0x70
   18cb4:	sub	x3, x29, #0xe0
   18cb8:	mov	w4, #0x10
   18cbc:	bl	0x20980
   18cc0:	adrp	x21, 30 ; 0x36000
   18cc4:	cbz	x0, 0x18d3c
   18cc8:	mov	x20, x0
   18ccc:	ldr	x8, [sp, #0x80]
   18cd0:	ldr	x23, [x8]
   18cd4:	mov	w24, #0x1
   18cd8:	adrp	x19, 26 ; 0x32000
   18cdc:	add	x19, x19, #0x918
   18ce0:	mov	x25, #0x0
   18ce4:	ldr	x8, [sp, #0x80]
   18ce8:	ldr	x8, [x8]
   18cec:	cmp	x8, x23
   18cf0:	b.eq	0x18cfc
   18cf4:	mov	x0, x19
   18cf8:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   18cfc:	ldr	x8, [sp, #0x78]
   18d00:	ldr	x2, [x8, x25, lsl #3]
   18d04:	ldr	x0, [x21, #0xf8]
   18d08:	bl	0x208a0
   18d0c:	cbz	w0, 0x18d14
   18d10:	strb	w24, [x22, #0x578]
   18d14:	add	x25, x25, #0x1
   18d18:	cmp	x20, x25
   18d1c:	b.ne	0x18ce4
   18d20:	add	x2, sp, #0x70
   18d24:	sub	x3, x29, #0xe0
   18d28:	mov	x0, x19
   18d2c:	mov	w4, #0x10
   18d30:	bl	0x20980
   18d34:	mov	x20, x0
   18d38:	cbnz	x0, 0x18ce0
   18d3c:	ldr	x0, [x21, #0xf8]
   18d40:	adrp	x2, 25 ; 0x31000
   18d44:	add	x2, x2, #0x268 ; "edge.bottomleft"
   18d48:	bl	0x208a0
   18d4c:	tbz	w0, #0x0, 0x18d58
   18d50:	mov	w0, #0x1
   18d54:	b	0x18d68
   18d58:	ldr	x0, [x21, #0xf8]
   18d5c:	adrp	x2, 25 ; 0x31000
   18d60:	add	x2, x2, #0x288 ; "edge.bottomright"
   18d64:	bl	0x208a0

; ===== sub_18d68 =====
   18d68:	adrp	x8, 30 ; 0x36000
   18d6c:	strb	w0, [x8, #0x579]
   18d70:	adrp	x8, 30 ; 0x36000
   18d74:	ldrb	w8, [x8, #0x57a]
   18d78:	tbnz	w8, #0x0, 0x18dac
   18d7c:	adrp	x0, 13 ; 0x25000
   18d80:	add	x0, x0, #0x3ab ; literal pool for: "SBWindowScene"
   18d84:	bl	0x20088 ; symbol stub for: _objc_getClass
   18d88:	cbz	x0, 0x19114
   18d8c:	adrp	x8, 28 ; 0x34000
   18d90:	ldr	x0, [x8, #0xf80]
   18d94:	bl	0x115d8
   18d98:	mov	x29, x29
   18d9c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   18da0:	mov	x19, x0
   18da4:	bl	0x200e8 ; symbol stub for: _objc_release
   18da8:	cbz	x19, 0x19114
   18dac:	adrp	x0, 10 ; 0x22000
   18db0:	add	x0, x0, #0xf9f ; literal pool for: "SBSystemGestureManager"
   18db4:	bl	0x20088 ; symbol stub for: _objc_getClass
   18db8:	mov	x19, x0
   18dbc:	adrp	x8, 29 ; 0x35000
   18dc0:	ldr	x1, [x8, #0x468]
   18dc4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   18dc8:	tbz	w0, #0x0, 0x18de4
   18dcc:	mov	x0, x19
   18dd0:	bl	0x212a0
   18dd4:	mov	x29, x29
   18dd8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   18ddc:	str	x0, [sp, #0x18]
   18de0:	cbnz	x0, 0x18e14
   18de4:	adrp	x0, 30 ; 0x36000
   18de8:	add	x0, x0, #0x398
   18dec:	bl	0x20094 ; symbol stub for: _objc_loadWeakRetained
   18df0:	str	x0, [sp, #0x18]
   18df4:	cbnz	x0, 0x18e14
   18df8:	adrp	x8, 28 ; 0x34000
   18dfc:	ldr	x0, [x8, #0xf80]
   18e00:	bl	0x115d8
   18e04:	mov	x29, x29
   18e08:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   18e0c:	str	x0, [sp, #0x18]
   18e10:	cbz	x0, 0x19114
   18e14:	adrp	x8, 30 ; 0x36000
   18e18:	ldr	x8, [x8, #0x580]
   18e1c:	cbnz	x8, 0x18e40
   18e20:	adrp	x8, 29 ; 0x35000
   18e24:	ldr	x0, [x8, #0xb80] ; Objc class ref: bad class ref
   18e28:	bl	0x200d0 ; symbol stub for: _objc_opt_new
   18e2c:	adrp	x9, 30 ; 0x36000
   18e30:	ldr	x8, [x9, #0x580]
   18e34:	str	x0, [x9, #0x580]
   18e38:	mov	x0, x8
   18e3c:	bl	0x200e8 ; symbol stub for: _objc_release
   18e40:	adrp	x8, 30 ; 0x36000
   18e44:	ldr	x8, [x8, #0x390]
   18e48:	cbnz	x8, 0x18e74
   18e4c:	adrp	x8, 29 ; 0x35000
   18e50:	ldr	x0, [x8, #0xa40] ; Objc class ref: bad class ref
   18e54:	bl	0x20560
   18e58:	mov	x29, x29
   18e5c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   18e60:	adrp	x9, 30 ; 0x36000
   18e64:	ldr	x8, [x9, #0x390]
   18e68:	str	x0, [x9, #0x390]
   18e6c:	mov	x0, x8
   18e70:	bl	0x200e8 ; symbol stub for: _objc_release
   18e74:	ldr	x0, [x21, #0xf8]
   18e78:	adrp	x2, 25 ; 0x31000
   18e7c:	add	x2, x2, #0x2a8 ; "edge.topleft"
   18e80:	bl	0x208a0
   18e84:	tbz	w0, #0x0, 0x18e90
   18e88:	mov	w0, #0x1
   18e8c:	b	0x18ea0
   18e90:	ldr	x0, [x21, #0xf8]
   18e94:	adrp	x2, 25 ; 0x31000
   18e98:	add	x2, x2, #0x2c8 ; "edge.topright"
   18e9c:	bl	0x208a0

; ===== sub_18ea0 =====
   18ea0:	mov	x19, #0x0
   18ea4:	adrp	x8, 30 ; 0x36000
   18ea8:	strb	w0, [x8, #0x588]
   18eac:	adrp	x8, 28 ; 0x34000
   18eb0:	ldr	x9, [x8, #0xf88]
   18eb4:	adrp	x8, 29 ; 0x35000
   18eb8:	ldr	x8, [x8, #0x78]
   18ebc:	stp	x8, x9, [sp, #0x8]
   18ec0:	adrp	x8, 21 ; 0x2d000
   18ec4:	add	x8, x8, #0xb80
   18ec8:	add	x8, x8, x19, lsl #5
   18ecc:	ldr	x2, [x8]
   18ed0:	cbz	x2, 0x19100
   18ed4:	stp	x8, x19, [sp, #0x20]
   18ed8:	adrp	x8, 29 ; 0x35000
   18edc:	ldr	x0, [x8, #0xa38] ; Objc class ref: bad class ref
   18ee0:	bl	0x22120
   18ee4:	mov	x29, x29
   18ee8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   18eec:	mov	x22, x0
   18ef0:	movi.16b	v0, #0x0
   18ef4:	stp	q0, q0, [sp, #0x30]
   18ef8:	stp	q0, q0, [sp, #0x50]
   18efc:	adrp	x8, 30 ; 0x36000
   18f00:	ldr	x0, [x8, #0x390]
   18f04:	bl	0x200f4 ; symbol stub for: _objc_retain
   18f08:	mov	x24, x0
   18f0c:	add	x2, sp, #0x30
   18f10:	add	x3, sp, #0xb0
   18f14:	mov	w4, #0x10
   18f18:	bl	0x20980
   18f1c:	cbz	x0, 0x18fc4
   18f20:	mov	x25, x0
   18f24:	mov	x23, #0x0
   18f28:	ldr	x8, [sp, #0x40]
   18f2c:	ldr	x20, [x8]
   18f30:	mov	x19, #0x0
   18f34:	ldr	x8, [sp, #0x40]
   18f38:	ldr	x8, [x8]
   18f3c:	cmp	x8, x20
   18f40:	b.eq	0x18f4c
   18f44:	mov	x0, x24
   18f48:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   18f4c:	ldr	x8, [sp, #0x38]
   18f50:	ldr	x26, [x8, x19, lsl #3]
   18f54:	mov	x0, x26
   18f58:	bl	0x22300
   18f5c:	mov	x29, x29
   18f60:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   18f64:	mov	x27, x0
   18f68:	mov	x2, x22
   18f6c:	bl	0x21000
   18f70:	mov	x28, x0
   18f74:	mov	x0, x27
   18f78:	bl	0x200e8 ; symbol stub for: _objc_release
   18f7c:	cbz	w28, 0x18f98
   18f80:	mov	x0, x26
   18f84:	bl	0x200f4 ; symbol stub for: _objc_retain
   18f88:	mov	x26, x0
   18f8c:	mov	x0, x23
   18f90:	bl	0x200e8 ; symbol stub for: _objc_release
   18f94:	mov	x23, x26
   18f98:	add	x19, x19, #0x1
   18f9c:	cmp	x25, x19
   18fa0:	b.ne	0x18f34
   18fa4:	add	x2, sp, #0x30
   18fa8:	add	x3, sp, #0xb0
   18fac:	mov	x0, x24
   18fb0:	mov	w4, #0x10
   18fb4:	bl	0x20980
   18fb8:	mov	x25, x0
   18fbc:	cbnz	x0, 0x18f30
   18fc0:	b	0x18fc8
   18fc4:	mov	x23, #0x0

; ===== sub_18fc8 =====
   18fc8:	mov	x0, x24
   18fcc:	bl	0x200e8 ; symbol stub for: _objc_release
   18fd0:	ldr	x0, [x21, #0xf8]
   18fd4:	mov	x2, x22
   18fd8:	bl	0x208a0
   18fdc:	eor	w8, w0, #0x1
   18fe0:	tbnz	w8, #0x0, 0x190c0
   18fe4:	cbnz	x23, 0x190c0
   18fe8:	adrp	x8, 29 ; 0x35000
   18fec:	ldr	x0, [x8, #0xb88] ; Objc class ref: bad class ref
   18ff0:	bl	0x20028 ; symbol stub for: _objc_alloc
   18ff4:	adrp	x8, 30 ; 0x36000
   18ff8:	ldr	x2, [x8, #0x580]
   18ffc:	ldr	x3, [sp, #0x10]
   19000:	mov	w4, #0x2
   19004:	mov	x5, #0x0
   19008:	bl	0x20f00
   1900c:	mov	x24, x0
   19010:	ldr	x20, [sp, #0x20]
   19014:	ldr	x25, [x20, #0x8] ; "Headphones connected"
   19018:	mov	x2, x25
   1901c:	bl	0x21a40
   19020:	mov	x0, x24
   19024:	mov	x2, x25
   19028:	bl	0x21a20
   1902c:	ldr	x2, [x20, #0x10]
   19030:	mov	x0, x24
   19034:	bl	0x21a60
   19038:	mov	x0, x24
   1903c:	bl	0x20c80
   19040:	mov	x2, x0
   19044:	mov	x0, x24
   19048:	bl	0x21b60
   1904c:	mov	x0, x24
   19050:	bl	0x20c80
   19054:	mov	x2, x0
   19058:	mov	x0, x24
   1905c:	bl	0x21b20
   19060:	mov	x0, x24
   19064:	ldr	x1, [sp, #0x8]
   19068:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1906c:	ldr	x19, [sp, #0x28]
   19070:	tbz	w0, #0x0, 0x19080
   19074:	ldr	d0, [x20, #0x18]
   19078:	mov	x0, x24
   1907c:	bl	0x202e0
   19080:	mov	x0, x24
   19084:	mov	x2, x22
   19088:	bl	0x21e40
   1908c:	mov	w8, #0x7000
   19090:	movk	w8, #0x746, lsl #16
   19094:	orr	x3, x19, x8
   19098:	ldr	x0, [sp, #0x18]
   1909c:	mov	x2, x24
   190a0:	bl	0x203a0
   190a4:	adrp	x8, 29 ; 0x36000
   190a8:	ldr	x0, [x8, #0x390]
   190ac:	mov	x2, x24
   190b0:	bl	0x203c0
   190b4:	mov	x0, x24
   190b8:	bl	0x200e8 ; symbol stub for: _objc_release
   190bc:	b	0x190f0
   190c0:	cmp	x23, #0x0
   190c4:	csel	w8, wzr, w8, eq
   190c8:	cmp	w8, #0x1
   190cc:	ldr	x19, [sp, #0x28]
   190d0:	b.ne	0x190f0
   190d4:	ldr	x0, [sp, #0x18]
   190d8:	mov	x2, x23
   190dc:	bl	0x21740
   190e0:	adrp	x8, 29 ; 0x36000
   190e4:	ldr	x0, [x8, #0x390]
   190e8:	mov	x2, x23
   190ec:	bl	0x21760

; ===== sub_190f0 =====
   190f0:	mov	x0, x23
   190f4:	bl	0x200e8 ; symbol stub for: _objc_release
   190f8:	mov	x0, x22
   190fc:	bl	0x200e8 ; symbol stub for: _objc_release
   19100:	add	x19, x19, #0x1
   19104:	cmp	x19, #0xf
   19108:	b.ne	0x18ec0
   1910c:	ldr	x0, [sp, #0x18]
   19110:	bl	0x200e8 ; symbol stub for: _objc_release
   19114:	ldur	x8, [x29, #-0x60]
   19118:	adrp	x9, 25 ; 0x32000
   1911c:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   19120:	ldr	x9, [x9]
   19124:	cmp	x9, x8
   19128:	b.ne	0x1914c
   1912c:	add	sp, sp, #0x1c0
   19130:	ldp	x29, x30, [sp, #0x50]
   19134:	ldp	x20, x19, [sp, #0x40]
   19138:	ldp	x22, x21, [sp, #0x30]
   1913c:	ldp	x24, x23, [sp, #0x20]
   19140:	ldp	x26, x25, [sp, #0x10]
   19144:	ldp	x28, x27, [sp], #0x60
   19148:	ret
   1914c:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_19150 =====
   19150:	stp	x28, x27, [sp, #-0x60]!
   19154:	stp	x26, x25, [sp, #0x10]
   19158:	stp	x24, x23, [sp, #0x20]
   1915c:	stp	x22, x21, [sp, #0x30]
   19160:	stp	x20, x19, [sp, #0x40]
   19164:	stp	x29, x30, [sp, #0x50]
   19168:	add	x29, sp, #0x50
   1916c:	sub	sp, sp, #0x1c0
   19170:	adrp	x8, 25 ; 0x32000
   19174:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   19178:	ldr	x8, [x8]
   1917c:	stur	x8, [x29, #-0x60]
   19180:	movi.16b	v0, #0x0
   19184:	stp	q0, q0, [sp, #0x70]
   19188:	stp	q0, q0, [sp, #0x90]
   1918c:	adrp	x0, 25 ; 0x32000
   19190:	add	x0, x0, #0x960
   19194:	add	x2, sp, #0x70
   19198:	sub	x3, x29, #0xe0
   1919c:	mov	w4, #0x10
   191a0:	bl	0x20980
   191a4:	str	x0, [sp, #0x20]
   191a8:	cbz	x0, 0x19330
   191ac:	ldr	x8, [sp, #0x80]
   191b0:	adrp	x19, 29 ; 0x36000
   191b4:	adrp	x20, 25 ; 0x32000
   191b8:	add	x20, x20, #0x990
   191bc:	ldr	x22, [x8]
   191c0:	adrp	x23, 25 ; 0x32000
   191c4:	add	x23, x23, #0x978
   191c8:	adrp	x26, 29 ; 0x36000
   191cc:	adrp	x27, 28 ; 0x35000
   191d0:	adrp	x21, 24 ; 0x31000
   191d4:	add	x21, x21, #0xae8 ; "statusbar.%@%@"
   191d8:	str	x22, [sp, #0x18]
   191dc:	mov	x24, #0x0
   191e0:	ldr	x8, [sp, #0x80]
   191e4:	ldr	x8, [x8]
   191e8:	cmp	x8, x22
   191ec:	b.eq	0x191fc
   191f0:	adrp	x0, 25 ; 0x32000
   191f4:	add	x0, x0, #0x960
   191f8:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   191fc:	ldr	x8, [sp, #0x78]
   19200:	str	x24, [sp, #0x28]
   19204:	ldr	x28, [x8, x24, lsl #3]
   19208:	movi.16b	v0, #0x0
   1920c:	stp	q0, q0, [sp, #0x30]
   19210:	stp	q0, q0, [sp, #0x50]
   19214:	ldrb	w8, [x19, #0x82]
   19218:	cmp	w8, #0x0
   1921c:	csel	x0, x23, x20, ne
   19220:	bl	0x200f4 ; symbol stub for: _objc_retain
   19224:	mov	x22, x0
   19228:	add	x2, sp, #0x30
   1922c:	add	x3, sp, #0xb0
   19230:	mov	w4, #0x10
   19234:	bl	0x20980
   19238:	cbz	x0, 0x192d0
   1923c:	mov	x23, x0
   19240:	ldr	x8, [sp, #0x40]
   19244:	ldr	x19, [x8]
   19248:	mov	x20, #0x0
   1924c:	ldr	x8, [sp, #0x40]
   19250:	ldr	x8, [x8]
   19254:	cmp	x8, x19
   19258:	b.eq	0x19264
   1925c:	mov	x0, x22
   19260:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   19264:	ldr	x8, [sp, #0x38]
   19268:	ldr	x8, [x8, x20, lsl #3]
   1926c:	ldr	x24, [x26, #0xf8]
   19270:	ldr	x0, [x27, #0xa38]
   19274:	stp	x28, x8, [sp]
   19278:	mov	x2, x21
   1927c:	bl	0x22100
   19280:	mov	x29, x29
   19284:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   19288:	mov	x25, x0
   1928c:	mov	x0, x24
   19290:	mov	x2, x25
   19294:	bl	0x208a0
   19298:	mov	x24, x0
   1929c:	mov	x0, x25
   192a0:	bl	0x200e8 ; symbol stub for: _objc_release
   192a4:	tbnz	w24, #0x0, 0x19324
   192a8:	add	x20, x20, #0x1
   192ac:	cmp	x23, x20
   192b0:	b.ne	0x1924c
   192b4:	add	x2, sp, #0x30
   192b8:	add	x3, sp, #0xb0
   192bc:	mov	x0, x22
   192c0:	mov	w4, #0x10
   192c4:	bl	0x20980
   192c8:	mov	x23, x0
   192cc:	cbnz	x0, 0x19248
   192d0:	mov	x0, x22
   192d4:	bl	0x200e8 ; symbol stub for: _objc_release
   192d8:	ldp	x8, x24, [sp, #0x20]
   192dc:	add	x24, x24, #0x1
   192e0:	cmp	x24, x8
   192e4:	adrp	x19, 29 ; 0x36000
   192e8:	adrp	x20, 25 ; 0x32000
   192ec:	add	x20, x20, #0x990
   192f0:	ldr	x22, [sp, #0x18]
   192f4:	adrp	x23, 25 ; 0x32000
   192f8:	add	x23, x23, #0x978
   192fc:	b.ne	0x191e0
   19300:	add	x2, sp, #0x70
   19304:	sub	x3, x29, #0xe0
   19308:	adrp	x0, 25 ; 0x32000
   1930c:	add	x0, x0, #0x960
   19310:	mov	w4, #0x10
   19314:	bl	0x20980
   19318:	str	x0, [sp, #0x20]
   1931c:	cbnz	x0, 0x191dc
   19320:	b	0x19330
   19324:	mov	x0, x22
   19328:	bl	0x200e8 ; symbol stub for: _objc_release
   1932c:	mov	w0, #0x1

; ===== sub_19330 =====
   19330:	ldur	x8, [x29, #-0x60]
   19334:	adrp	x9, 25 ; 0x32000
   19338:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1933c:	ldr	x9, [x9]
   19340:	cmp	x9, x8
   19344:	b.ne	0x19368
   19348:	add	sp, sp, #0x1c0
   1934c:	ldp	x29, x30, [sp, #0x50]
   19350:	ldp	x20, x19, [sp, #0x40]
   19354:	ldp	x22, x21, [sp, #0x30]
   19358:	ldp	x24, x23, [sp, #0x20]
   1935c:	ldp	x26, x25, [sp, #0x10]
   19360:	ldp	x28, x27, [sp], #0x60
   19364:	ret
   19368:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_1936c =====
   1936c:	stp	x22, x21, [sp, #-0x30]!
   19370:	stp	x20, x19, [sp, #0x10]
   19374:	stp	x29, x30, [sp, #0x20]
   19378:	add	x29, sp, #0x20
   1937c:	mov	x20, x0
   19380:	mov	x0, x1
   19384:	bl	0x200f4 ; symbol stub for: _objc_retain
   19388:	mov	x19, x0
   1938c:	adrp	x21, 29 ; 0x36000
   19390:	ldr	x0, [x21, #0xf8]
   19394:	mov	x2, x20
   19398:	bl	0x208a0
   1939c:	tbz	w0, #0x0, 0x193a8
   193a0:	mov	w20, #0x1
   193a4:	b	0x193b8
   193a8:	ldr	x0, [x21, #0xf8]
   193ac:	mov	x2, x19
   193b0:	bl	0x208a0
   193b4:	mov	x20, x0

; ===== sub_193b8 =====
   193b8:	mov	x0, x19
   193bc:	bl	0x200e8 ; symbol stub for: _objc_release
   193c0:	mov	x0, x20
   193c4:	ldp	x29, x30, [sp, #0x20]
   193c8:	ldp	x20, x19, [sp, #0x10]
   193cc:	ldp	x22, x21, [sp], #0x30
   193d0:	ret
   193d4:	stp	x29, x30, [sp, #-0x10]!
   193d8:	mov	x29, sp
   193dc:	bl	0x14c98
   193e0:	adrp	x8, 29 ; 0x36000
   193e4:	ldrb	w9, [x8, #0x532]
   193e8:	cmp	w9, w0
   193ec:	b.ne	0x193f8
   193f0:	ldp	x29, x30, [sp], #0x10
   193f4:	ret
   193f8:	adrp	x9, 21 ; 0x2e000
   193fc:	add	x9, x9, #0xfc8 ; "power.disconnected"
   19400:	strb	w0, [x8, #0x532]
   19404:	adrp	x8, 21 ; 0x2e000
   19408:	add	x8, x8, #0xfa8 ; "power.connected"
   1940c:	cmp	w0, #0x0
   19410:	csel	x0, x8, x9, ne
   19414:	ldp	x29, x30, [sp], #0x10
   19418:	b	0x4324
   1941c:	stp	x22, x21, [sp, #-0x30]!
   19420:	stp	x20, x19, [sp, #0x10]
   19424:	stp	x29, x30, [sp, #0x20]
   19428:	add	x29, sp, #0x20
   1942c:	adrp	x8, 28 ; 0x35000
   19430:	ldr	x0, [x8, #0xb28] ; Objc class ref: bad class ref
   19434:	bl	0x21f20
   19438:	mov	x29, x29
   1943c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   19440:	mov	x20, x0
   19444:	bl	0x209e0
   19448:	mov	x29, x29
   1944c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   19450:	mov	x21, x0
   19454:	bl	0x14ce4
   19458:	mov	x19, x0
   1945c:	mov	x0, x21
   19460:	bl	0x200e8 ; symbol stub for: _objc_release
   19464:	mov	x0, x20
   19468:	bl	0x200e8 ; symbol stub for: _objc_release
   1946c:	adrp	x8, 29 ; 0x36000
   19470:	ldrb	w9, [x8, #0x533]
   19474:	cmp	w9, w19
   19478:	b.ne	0x1948c
   1947c:	ldp	x29, x30, [sp, #0x20]
   19480:	ldp	x20, x19, [sp, #0x10]
   19484:	ldp	x22, x21, [sp], #0x30
   19488:	ret
   1948c:	adrp	x9, 22 ; 0x2f000
   19490:	add	x9, x9, #0x8 ; "headphones.out"
   19494:	strb	w19, [x8, #0x533]
   19498:	adrp	x8, 21 ; 0x2e000
   1949c:	add	x8, x8, #0xfe8 ; "headphones.in"
   194a0:	cmp	w19, #0x0
   194a4:	csel	x0, x8, x9, ne
   194a8:	ldp	x29, x30, [sp, #0x20]
   194ac:	ldp	x20, x19, [sp, #0x10]
   194b0:	ldp	x22, x21, [sp], #0x30
   194b4:	b	0x4324

; ===== sub_194b8 =====
   194b8:	sub	sp, sp, #0x70
   194bc:	stp	x24, x23, [sp, #0x30]
   194c0:	stp	x22, x21, [sp, #0x40]
   194c4:	stp	x20, x19, [sp, #0x50]
   194c8:	stp	x29, x30, [sp, #0x60]
   194cc:	add	x29, sp, #0x60
   194d0:	mov	x20, x3
   194d4:	mov	x21, x1
   194d8:	mov	x22, x0
   194dc:	mov	x0, x2
   194e0:	bl	0x200f4 ; symbol stub for: _objc_retain
   194e4:	mov	x19, x0
   194e8:	mov	x0, x20
   194ec:	bl	0x200f4 ; symbol stub for: _objc_retain
   194f0:	mov	x20, x0
   194f4:	ldr	x8, [x21]
   194f8:	cbz	w22, 0x195b0
   194fc:	cbnz	x8, 0x195e8
   19500:	adrp	x8, 28 ; 0x35000
   19504:	ldr	x0, [x8, #0xb58] ; Objc class ref: bad class ref
   19508:	bl	0x20ac0
   1950c:	mov	x29, x29
   19510:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   19514:	mov	x22, x0
   19518:	adrp	x8, 28 ; 0x35000
   1951c:	ldr	x0, [x8, #0xb60] ; Objc class ref: bad class ref
   19520:	bl	0x212c0
   19524:	mov	x29, x29
   19528:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1952c:	mov	x23, x0
   19530:	adrp	x8, 25 ; 0x32000
   19534:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   19538:	str	x8, [sp, #0x8]
   1953c:	adrp	x8, 9 ; 0x22000
   19540:	ldr	d0, [x8, #0x8f8]
   19544:	str	d0, [sp, #0x10]
   19548:	adrp	x8, 0 ; 0x19000
   1954c:	add	x8, x8, #0xfbc
   19550:	adrp	x9, 20 ; 0x2d000
   19554:	add	x9, x9, #0xb50
   19558:	stp	x8, x9, [sp, #0x18]
   1955c:	mov	x0, x20
   19560:	bl	0x200f4 ; symbol stub for: _objc_retain
   19564:	str	x0, [sp, #0x28]
   19568:	add	x5, sp, #0x8
   1956c:	mov	x0, x22
   19570:	mov	x2, x19
   19574:	mov	x3, #0x0
   19578:	mov	x4, x23
   1957c:	bl	0x203e0
   19580:	mov	x29, x29
   19584:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   19588:	ldr	x8, [x21]
   1958c:	str	x0, [x21]
   19590:	mov	x0, x8
   19594:	bl	0x200e8 ; symbol stub for: _objc_release
   19598:	mov	x0, x23
   1959c:	bl	0x200e8 ; symbol stub for: _objc_release
   195a0:	mov	x0, x22
   195a4:	bl	0x200e8 ; symbol stub for: _objc_release
   195a8:	ldr	x0, [sp, #0x28]
   195ac:	b	0x195e4
   195b0:	cbz	x8, 0x195e8
   195b4:	adrp	x8, 28 ; 0x35000
   195b8:	ldr	x0, [x8, #0xb58] ; Objc class ref: bad class ref
   195bc:	bl	0x20ac0
   195c0:	mov	x29, x29
   195c4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   195c8:	mov	x22, x0
   195cc:	ldr	x2, [x21]
   195d0:	bl	0x217a0
   195d4:	mov	x0, x22
   195d8:	bl	0x200e8 ; symbol stub for: _objc_release
   195dc:	ldr	x0, [x21]
   195e0:	str	xzr, [x21]

; ===== sub_195e4 =====
   195e4:	bl	0x200e8 ; symbol stub for: _objc_release
   195e8:	mov	x0, x20
   195ec:	bl	0x200e8 ; symbol stub for: _objc_release
   195f0:	mov	x0, x19
   195f4:	bl	0x200e8 ; symbol stub for: _objc_release
   195f8:	ldp	x29, x30, [sp, #0x60]
   195fc:	ldp	x20, x19, [sp, #0x50]
   19600:	ldp	x22, x21, [sp, #0x40]
   19604:	ldp	x24, x23, [sp, #0x30]
   19608:	add	sp, sp, #0x70
   1960c:	ret
   19610:	sub	sp, sp, #0x40
   19614:	stp	x22, x21, [sp, #0x10]
   19618:	stp	x20, x19, [sp, #0x20]
   1961c:	stp	x29, x30, [sp, #0x30]
   19620:	add	x29, sp, #0x30
   19624:	add	x0, sp, #0xf
   19628:	add	x1, sp, #0xe
   1962c:	bl	0x14bc4
   19630:	mov	x29, x29
   19634:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   19638:	mov	x19, x0
   1963c:	ldrb	w1, [sp, #0xf]
   19640:	adrp	x0, 29 ; 0x36000
   19644:	add	x0, x0, #0x534
   19648:	adrp	x2, 22 ; 0x2f000
   1964c:	add	x2, x2, #0x28 ; "wifi.on"
   19650:	adrp	x3, 22 ; 0x2f000
   19654:	add	x3, x3, #0x48 ; "wifi.off"
   19658:	bl	0x19714
   1965c:	ldrb	w1, [sp, #0xe]
   19660:	adrp	x0, 29 ; 0x36000
   19664:	add	x0, x0, #0x535
   19668:	adrp	x2, 22 ; 0x2f000
   1966c:	add	x2, x2, #0x68 ; "wifi.joined"
   19670:	adrp	x3, 22 ; 0x2f000
   19674:	add	x3, x3, #0x88 ; "wifi.left"
   19678:	bl	0x19714
   1967c:	adrp	x8, 29 ; 0x36000
   19680:	ldr	x2, [x8, #0x410]
   19684:	cmp	x19, x2
   19688:	b.eq	0x196fc
   1968c:	mov	x0, x19
   19690:	bl	0x21000
   19694:	tbnz	w0, #0x0, 0x196fc
   19698:	adrp	x21, 29 ; 0x36000
   1969c:	add	x21, x21, #0x410
   196a0:	ldr	x0, [x21]
   196a4:	bl	0x200f4 ; symbol stub for: _objc_retain
   196a8:	mov	x20, x0
   196ac:	mov	x0, x21
   196b0:	mov	x1, x19
   196b4:	bl	0x20148 ; symbol stub for: _objc_storeStrong
   196b8:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
   196bc:	adrp	x8, 29 ; 0x36000
   196c0:	ldr	d1, [x8, #0x538]
   196c4:	fsub	d0, d0, d1
   196c8:	fmov	d1, #1.00000000
   196cc:	fcmp	d0, d1
   196d0:	b.mi	0x196f4
   196d4:	adrp	x0, 22 ; 0x2f000
   196d8:	add	x0, x0, #0x248 ; "wifi.left:"
   196dc:	mov	x1, x20
   196e0:	bl	0x197b0
   196e4:	adrp	x0, 22 ; 0x2f000
   196e8:	add	x0, x0, #0x228 ; "wifi.joined:"
   196ec:	mov	x1, x19
   196f0:	bl	0x197b0
   196f4:	mov	x0, x20
   196f8:	bl	0x200e8 ; symbol stub for: _objc_release
   196fc:	mov	x0, x19
   19700:	ldp	x29, x30, [sp, #0x30]
   19704:	ldp	x20, x19, [sp, #0x20]
   19708:	ldp	x22, x21, [sp, #0x10]
   1970c:	add	sp, sp, #0x40
   19710:	b	0x200e8 ; symbol stub for: _objc_release

; ===== sub_19714 =====
   19714:	stp	x22, x21, [sp, #-0x30]!
   19718:	stp	x20, x19, [sp, #0x10]
   1971c:	stp	x29, x30, [sp, #0x20]
   19720:	add	x29, sp, #0x20
   19724:	mov	x21, x3
   19728:	mov	x20, x1
   1972c:	mov	x22, x0
   19730:	mov	x0, x2
   19734:	bl	0x200f4 ; symbol stub for: _objc_retain
   19738:	mov	x19, x0
   1973c:	mov	x0, x21
   19740:	bl	0x200f4 ; symbol stub for: _objc_retain
   19744:	mov	x21, x0
   19748:	ldrb	w8, [x22]
   1974c:	cmp	w8, w20
   19750:	b.eq	0x19794
   19754:	strb	w20, [x22]
   19758:	mov	x0, x19
   1975c:	bl	0x19fd8
   19760:	tbnz	w0, #0x1f, 0x19788
   19764:	mov	x22, x0
   19768:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
   1976c:	adrp	x8, 29 ; 0x36000
   19770:	add	x8, x8, #0x538
   19774:	ldr	d1, [x8, w22, uxtw #3]
   19778:	fsub	d0, d0, d1
   1977c:	fmov	d1, #1.00000000
   19780:	fcmp	d0, d1
   19784:	b.mi	0x19794
   19788:	cmp	w20, #0x0
   1978c:	csel	x0, x19, x21, ne
   19790:	bl	0x4324
   19794:	mov	x0, x21
   19798:	bl	0x200e8 ; symbol stub for: _objc_release
   1979c:	mov	x0, x19
   197a0:	ldp	x29, x30, [sp, #0x20]
   197a4:	ldp	x20, x19, [sp, #0x10]
   197a8:	ldp	x22, x21, [sp], #0x30
   197ac:	b	0x200e8 ; symbol stub for: _objc_release

; ===== sub_197b0 =====
   197b0:	sub	sp, sp, #0x140
   197b4:	stp	d9, d8, [sp, #0xd0]
   197b8:	stp	x28, x27, [sp, #0xe0]
   197bc:	stp	x26, x25, [sp, #0xf0]
   197c0:	stp	x24, x23, [sp, #0x100]
   197c4:	stp	x22, x21, [sp, #0x110]
   197c8:	stp	x20, x19, [sp, #0x120]
   197cc:	stp	x29, x30, [sp, #0x130]
   197d0:	add	x29, sp, #0x130
   197d4:	mov	x20, x1
   197d8:	adrp	x8, 25 ; 0x32000
   197dc:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   197e0:	ldr	x8, [x8]
   197e4:	stur	x8, [x29, #-0x68]
   197e8:	bl	0x200f4 ; symbol stub for: _objc_retain
   197ec:	mov	x19, x0
   197f0:	mov	x0, x20
   197f4:	bl	0x200f4 ; symbol stub for: _objc_retain
   197f8:	mov	x20, x0
   197fc:	bl	0x21160
   19800:	cbz	x0, 0x199fc
   19804:	adrp	x2, 22 ; 0x2f000
   19808:	add	x2, x2, #0x268 ; "bt.connected:"
   1980c:	mov	x0, x19
   19810:	bl	0x21000
   19814:	tbnz	w0, #0x0, 0x19840
   19818:	adrp	x2, 22 ; 0x2f000
   1981c:	add	x2, x2, #0x288 ; "bt.disconnected:"
   19820:	mov	x0, x19
   19824:	bl	0x21000
   19828:	tbnz	w0, #0x0, 0x19840
   1982c:	adrp	x2, 24 ; 0x31000
   19830:	add	x2, x2, #0x788 ; "notification.app:"
   19834:	mov	x0, x19
   19838:	bl	0x21000
   1983c:	cbz	w0, 0x1991c
   19840:	adrp	x23, 29 ; 0x36000
   19844:	ldr	x8, [x23, #0x570]
   19848:	cbnz	x8, 0x19870
   1984c:	adrp	x8, 28 ; 0x35000
   19850:	ldr	x0, [x8, #0xa68] ; Objc class ref: bad class ref
   19854:	bl	0x20b60
   19858:	mov	x29, x29
   1985c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   19860:	ldr	x8, [x23, #0x570]
   19864:	str	x0, [x23, #0x570]
   19868:	mov	x0, x8
   1986c:	bl	0x200e8 ; symbol stub for: _objc_release
   19870:	mov	x0, x20
   19874:	bl	0x21260
   19878:	mov	x29, x29
   1987c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   19880:	mov	x22, x0
   19884:	mov	x0, x19
   19888:	mov	x2, x22
   1988c:	bl	0x220a0
   19890:	mov	x29, x29
   19894:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   19898:	mov	x21, x0
   1989c:	mov	x0, x22
   198a0:	bl	0x200e8 ; symbol stub for: _objc_release
   198a4:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
   198a8:	mov.16b	v8, v0
   198ac:	ldr	x0, [x23, #0x570]
   198b0:	mov	x2, x21
   198b4:	bl	0x214e0
   198b8:	mov	x29, x29
   198bc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   198c0:	mov	x22, x0
   198c4:	bl	0x20be0
   198c8:	fsub	d9, d8, d0
   198cc:	mov	x0, x22
   198d0:	bl	0x200e8 ; symbol stub for: _objc_release
   198d4:	fmov	d0, #3.00000000
   198d8:	fcmp	d9, d0
   198dc:	b.mi	0x199f4
   198e0:	adrp	x8, 28 ; 0x35000
   198e4:	ldr	x0, [x8, #0xa70] ; Objc class ref: bad class ref
   198e8:	mov.16b	v0, v8
   198ec:	bl	0x213e0
   198f0:	mov	x29, x29
   198f4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   198f8:	mov	x22, x0
   198fc:	ldr	x0, [x23, #0x570]
   19900:	mov	x2, x22
   19904:	mov	x3, x21
   19908:	bl	0x21c00
   1990c:	mov	x0, x22
   19910:	bl	0x200e8 ; symbol stub for: _objc_release
   19914:	mov	x0, x21
   19918:	bl	0x200e8 ; symbol stub for: _objc_release
   1991c:	movi.16b	v0, #0x0
   19920:	stp	q0, q0, [sp, #0x20]
   19924:	stp	q0, q0, [sp]
   19928:	adrp	x8, 29 ; 0x36000
   1992c:	ldr	x0, [x8, #0xf8]
   19930:	bl	0x20940
   19934:	mov	x21, x0
   19938:	mov	x2, sp
   1993c:	add	x3, sp, #0x48
   19940:	mov	w4, #0x10
   19944:	bl	0x20980
   19948:	cbz	x0, 0x199f4
   1994c:	mov	x22, x0
   19950:	ldr	x8, [sp, #0x10]
   19954:	ldr	x26, [x8]
   19958:	mov	x27, #0x0
   1995c:	ldr	x8, [sp, #0x10]
   19960:	ldr	x8, [x8]
   19964:	cmp	x8, x26
   19968:	b.eq	0x19974
   1996c:	mov	x0, x21
   19970:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   19974:	ldr	x8, [sp, #0x8]
   19978:	ldr	x23, [x8, x27, lsl #3]
   1997c:	mov	x0, x23
   19980:	mov	x2, x19
   19984:	bl	0x20d80
   19988:	cbz	w0, 0x199cc
   1998c:	mov	x0, x19
   19990:	bl	0x21160
   19994:	mov	x2, x0
   19998:	mov	x0, x23
   1999c:	bl	0x22140
   199a0:	mov	x29, x29
   199a4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   199a8:	mov	x24, x0
   199ac:	mov	x2, x20
   199b0:	bl	0x206c0
   199b4:	mov	x25, x0
   199b8:	mov	x0, x24
   199bc:	bl	0x200e8 ; symbol stub for: _objc_release
   199c0:	cbnz	x25, 0x199cc
   199c4:	mov	x0, x23
   199c8:	bl	0x4324
   199cc:	add	x27, x27, #0x1
   199d0:	cmp	x22, x27
   199d4:	b.ne	0x1995c
   199d8:	mov	x2, sp
   199dc:	add	x3, sp, #0x48
   199e0:	mov	x0, x21
   199e4:	mov	w4, #0x10
   199e8:	bl	0x20980
   199ec:	mov	x22, x0
   199f0:	cbnz	x0, 0x19958
   199f4:	mov	x0, x21
   199f8:	bl	0x200e8 ; symbol stub for: _objc_release
   199fc:	mov	x0, x20
   19a00:	bl	0x200e8 ; symbol stub for: _objc_release
   19a04:	mov	x0, x19
   19a08:	bl	0x200e8 ; symbol stub for: _objc_release
   19a0c:	ldur	x8, [x29, #-0x68]
   19a10:	adrp	x9, 25 ; 0x32000
   19a14:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   19a18:	ldr	x9, [x9]
   19a1c:	cmp	x9, x8
   19a20:	b.ne	0x19a48
   19a24:	ldp	x29, x30, [sp, #0x130]
   19a28:	ldp	x20, x19, [sp, #0x120]
   19a2c:	ldp	x22, x21, [sp, #0x110]
   19a30:	ldp	x24, x23, [sp, #0x100]
   19a34:	ldp	x26, x25, [sp, #0xf0]
   19a38:	ldp	x28, x27, [sp, #0xe0]
   19a3c:	ldp	d9, d8, [sp, #0xd0]
   19a40:	add	sp, sp, #0x140
   19a44:	ret
   19a48:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_19a4c =====
   19a4c:	stp	x24, x23, [sp, #-0x40]!
   19a50:	stp	x22, x21, [sp, #0x10]
   19a54:	stp	x20, x19, [sp, #0x20]
   19a58:	stp	x29, x30, [sp, #0x30]
   19a5c:	add	x29, sp, #0x30
   19a60:	mov	x20, x3
   19a64:	mov	x21, x1
   19a68:	mov	x22, x0
   19a6c:	mov	x0, x2
   19a70:	bl	0x200f4 ; symbol stub for: _objc_retain
   19a74:	mov	x19, x0
   19a78:	mov	x0, x20
   19a7c:	bl	0x200f4 ; symbol stub for: _objc_retain
   19a80:	mov	x20, x0
   19a84:	ldr	x8, [x21]
   19a88:	cbz	w22, 0x19afc
   19a8c:	cbnz	x8, 0x19b38
   19a90:	adrp	x8, 28 ; 0x35000
   19a94:	ldr	x0, [x8, #0xb58] ; Objc class ref: bad class ref
   19a98:	bl	0x20ac0
   19a9c:	mov	x29, x29
   19aa0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   19aa4:	mov	x22, x0
   19aa8:	adrp	x8, 28 ; 0x35000
   19aac:	ldr	x0, [x8, #0xb60] ; Objc class ref: bad class ref
   19ab0:	bl	0x212c0
   19ab4:	mov	x29, x29
   19ab8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   19abc:	mov	x23, x0
   19ac0:	mov	x0, x22
   19ac4:	mov	x2, x19
   19ac8:	mov	x3, #0x0
   19acc:	mov	x4, x23
   19ad0:	mov	x5, x20
   19ad4:	bl	0x203e0
   19ad8:	mov	x29, x29
   19adc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   19ae0:	ldr	x8, [x21]
   19ae4:	str	x0, [x21]
   19ae8:	mov	x0, x8
   19aec:	bl	0x200e8 ; symbol stub for: _objc_release
   19af0:	mov	x0, x23
   19af4:	bl	0x200e8 ; symbol stub for: _objc_release
   19af8:	b	0x19b30
   19afc:	cbz	x8, 0x19b38
   19b00:	adrp	x8, 28 ; 0x35000
   19b04:	ldr	x0, [x8, #0xb58] ; Objc class ref: bad class ref
   19b08:	bl	0x20ac0
   19b0c:	mov	x29, x29
   19b10:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   19b14:	mov	x22, x0
   19b18:	ldr	x2, [x21]
   19b1c:	bl	0x217a0
   19b20:	mov	x0, x22
   19b24:	bl	0x200e8 ; symbol stub for: _objc_release
   19b28:	ldr	x22, [x21]
   19b2c:	str	xzr, [x21]

; ===== sub_19b30 =====
   19b30:	mov	x0, x22
   19b34:	bl	0x200e8 ; symbol stub for: _objc_release
   19b38:	mov	x0, x20
   19b3c:	bl	0x200e8 ; symbol stub for: _objc_release
   19b40:	mov	x0, x19
   19b44:	ldp	x29, x30, [sp, #0x30]
   19b48:	ldp	x20, x19, [sp, #0x20]
   19b4c:	ldp	x22, x21, [sp, #0x10]
   19b50:	ldp	x24, x23, [sp], #0x40
   19b54:	b	0x200e8 ; symbol stub for: _objc_release
   19b58:	stp	x20, x19, [sp, #-0x20]!
   19b5c:	stp	x29, x30, [sp, #0x10]
   19b60:	add	x29, sp, #0x10
   19b64:	mov	x0, x1
   19b68:	bl	0x19b98
   19b6c:	mov	x29, x29
   19b70:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   19b74:	mov	x19, x0
   19b78:	adrp	x0, 22 ; 0x2f000
   19b7c:	add	x0, x0, #0x268 ; "bt.connected:"
   19b80:	mov	x1, x19
   19b84:	bl	0x197b0
   19b88:	mov	x0, x19
   19b8c:	ldp	x29, x30, [sp, #0x10]
   19b90:	ldp	x20, x19, [sp], #0x20
   19b94:	b	0x200e8 ; symbol stub for: _objc_release

; ===== sub_19b98 =====
   19b98:	stp	x22, x21, [sp, #-0x30]!
   19b9c:	stp	x20, x19, [sp, #0x10]
   19ba0:	stp	x29, x30, [sp, #0x20]
   19ba4:	add	x29, sp, #0x20
   19ba8:	bl	0x214a0
   19bac:	mov	x29, x29
   19bb0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   19bb4:	mov	x19, x0
   19bb8:	adrp	x8, 28 ; 0x35000
   19bbc:	ldr	x20, [x8, #0x498]
   19bc0:	mov	x1, x20
   19bc4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   19bc8:	tbz	w0, #0x0, 0x19bdc
   19bcc:	mov	x0, x19
   19bd0:	mov	x2, x20
   19bd4:	bl	0x215e0
   19bd8:	b	0x19be0
   19bdc:	mov	x0, #0x0

; ===== sub_19be0 =====
   19be0:	adrp	x8, 28 ; 0x35000
   19be4:	ldr	x20, [x8, #0xa38] ; Objc class ref: bad class ref
   19be8:	bl	0x200f4 ; symbol stub for: _objc_retain
   19bec:	mov	x21, x0
   19bf0:	mov	x0, x20
   19bf4:	bl	0x200b8 ; symbol stub for: _objc_opt_class
   19bf8:	mov	x1, x0
   19bfc:	mov	x0, x21
   19c00:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
   19c04:	tst	w0, #0x1
   19c08:	csel	x20, x21, xzr, ne
   19c0c:	mov	x0, x20
   19c10:	bl	0x2010c ; symbol stub for: _objc_retainAutoreleaseReturnValue
   19c14:	mov	x0, x21
   19c18:	bl	0x200e8 ; symbol stub for: _objc_release
   19c1c:	mov	x0, x19
   19c20:	bl	0x200e8 ; symbol stub for: _objc_release
   19c24:	mov	x0, x20
   19c28:	ldp	x29, x30, [sp, #0x20]
   19c2c:	ldp	x20, x19, [sp, #0x10]
   19c30:	ldp	x22, x21, [sp], #0x30
   19c34:	ret
   19c38:	stp	x20, x19, [sp, #-0x20]!
   19c3c:	stp	x29, x30, [sp, #0x10]
   19c40:	add	x29, sp, #0x10
   19c44:	mov	x0, x1
   19c48:	bl	0x19b98
   19c4c:	mov	x29, x29
   19c50:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   19c54:	mov	x19, x0
   19c58:	adrp	x0, 22 ; 0x2f000
   19c5c:	add	x0, x0, #0x288 ; "bt.disconnected:"
   19c60:	mov	x1, x19
   19c64:	bl	0x197b0
   19c68:	mov	x0, x19
   19c6c:	ldp	x29, x30, [sp, #0x10]
   19c70:	ldp	x20, x19, [sp], #0x20
   19c74:	b	0x200e8 ; symbol stub for: _objc_release
   19c78:	b	0x19c7c

; ===== sub_19c7c =====
   19c7c:	sub	sp, sp, #0x140
   19c80:	stp	x28, x27, [sp, #0xe0]
   19c84:	stp	x26, x25, [sp, #0xf0]
   19c88:	stp	x24, x23, [sp, #0x100]
   19c8c:	stp	x22, x21, [sp, #0x110]
   19c90:	stp	x20, x19, [sp, #0x120]
   19c94:	stp	x29, x30, [sp, #0x130]
   19c98:	add	x29, sp, #0x130
   19c9c:	adrp	x8, 25 ; 0x32000
   19ca0:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   19ca4:	ldr	x8, [x8]
   19ca8:	stur	x8, [x29, #-0x60]
   19cac:	bl	0xf4d8
   19cb0:	tbnz	w0, #0x1f, 0x19e20
   19cb4:	mov	x21, x0
   19cb8:	adrp	x8, 29 ; 0x36000
   19cbc:	ldr	w22, [x8, #0x98]
   19cc0:	cmp	w0, w22
   19cc4:	b.eq	0x19e20
   19cc8:	str	w21, [x8, #0x98]
   19ccc:	tbnz	w22, #0x1f, 0x19e20
   19cd0:	movi.16b	v0, #0x0
   19cd4:	stp	q0, q0, [sp, #0x30]
   19cd8:	stp	q0, q0, [sp, #0x10]
   19cdc:	adrp	x8, 29 ; 0x36000
   19ce0:	ldr	x0, [x8, #0xf8]
   19ce4:	bl	0x20940
   19ce8:	add	x2, sp, #0x10
   19cec:	add	x3, sp, #0x50
   19cf0:	str	x0, [sp, #0x8]
   19cf4:	mov	w4, #0x10
   19cf8:	bl	0x20980
   19cfc:	cbz	x0, 0x19e18
   19d00:	mov	x23, x0
   19d04:	ldr	x8, [sp, #0x20]
   19d08:	ldr	x19, [x8]
   19d0c:	mov	x20, #0x0
   19d10:	ldr	x8, [sp, #0x20]
   19d14:	ldr	x8, [x8]
   19d18:	cmp	x8, x19
   19d1c:	b.eq	0x19d28
   19d20:	ldr	x0, [sp, #0x8]
   19d24:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   19d28:	ldr	x8, [sp, #0x18]
   19d2c:	ldr	x24, [x8, x20, lsl #3]
   19d30:	mov	x0, x24
   19d34:	adrp	x2, 24 ; 0x31000
   19d38:	add	x2, x2, #0x668 ; "battery.above:"
   19d3c:	bl	0x20d80
   19d40:	mov	x26, x0
   19d44:	mov	x0, x24
   19d48:	adrp	x2, 24 ; 0x31000
   19d4c:	add	x2, x2, #0x688 ; "battery.below:"
   19d50:	bl	0x20d80
   19d54:	mov	x25, x0
   19d58:	tbnz	w26, #0x0, 0x19d60
   19d5c:	cbz	w25, 0x19df0
   19d60:	cmp	w26, #0x0
   19d64:	adrp	x8, 24 ; 0x31000
   19d68:	add	x8, x8, #0x668 ; "battery.above:"
   19d6c:	adrp	x9, 24 ; 0x31000
   19d70:	add	x9, x9, #0x688 ; "battery.below:"
   19d74:	csel	x0, x8, x9, ne
   19d78:	bl	0x21160
   19d7c:	mov	x2, x0
   19d80:	mov	x0, x24
   19d84:	bl	0x22140
   19d88:	mov	x29, x29
   19d8c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   19d90:	mov	x28, x0
   19d94:	bl	0x20f60
   19d98:	mov	x27, x0
   19d9c:	mov	x0, x28
   19da0:	bl	0x200e8 ; symbol stub for: _objc_release
   19da4:	tbz	w26, #0x0, 0x19dc8
   19da8:	cmp	w27, #0x63
   19dac:	mov	w8, #0x63
   19db0:	csel	w8, w27, w8, lt
   19db4:	cmp	w22, w8
   19db8:	ccmp	w21, w8, #0x4, le
   19dbc:	b.gt	0x19de8
   19dc0:	add	w8, w8, #0x1
   19dc4:	b	0x19dd4
   19dc8:	cmp	w27, #0x1
   19dcc:	csinc	w8, w27, wzr, gt
   19dd0:	sub	w8, w8, #0x1

; ===== sub_19dd4 =====
   19dd4:	cmp	w22, w8
   19dd8:	ccmp	w21, w8, #0x0, gt
   19ddc:	csel	w8, wzr, w25, gt
   19de0:	cmp	w8, #0x1
   19de4:	b.ne	0x19df0
   19de8:	mov	x0, x24
   19dec:	bl	0x4324
   19df0:	add	x20, x20, #0x1
   19df4:	cmp	x23, x20
   19df8:	b.ne	0x19d10
   19dfc:	add	x2, sp, #0x10
   19e00:	add	x3, sp, #0x50
   19e04:	ldr	x0, [sp, #0x8]
   19e08:	mov	w4, #0x10
   19e0c:	bl	0x20980
   19e10:	mov	x23, x0
   19e14:	cbnz	x0, 0x19d0c
   19e18:	ldr	x0, [sp, #0x8]
   19e1c:	bl	0x200e8 ; symbol stub for: _objc_release
   19e20:	ldur	x8, [x29, #-0x60]
   19e24:	adrp	x9, 25 ; 0x32000
   19e28:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   19e2c:	ldr	x9, [x9]
   19e30:	cmp	x9, x8
   19e34:	b.ne	0x19e58
   19e38:	ldp	x29, x30, [sp, #0x130]
   19e3c:	ldp	x20, x19, [sp, #0x120]
   19e40:	ldp	x22, x21, [sp, #0x110]
   19e44:	ldp	x24, x23, [sp, #0x100]
   19e48:	ldp	x26, x25, [sp, #0xf0]
   19e4c:	ldp	x28, x27, [sp, #0xe0]
   19e50:	add	sp, sp, #0x140
   19e54:	ret
   19e58:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
   19e5c:	b	0x19c7c
   19e60:	stp	x20, x19, [sp, #-0x20]!
   19e64:	stp	x29, x30, [sp, #0x10]
   19e68:	add	x29, sp, #0x10
   19e6c:	adrp	x0, 10 ; 0x23000
   19e70:	add	x0, x0, #0xdfd ; literal pool for: "BluetoothManager"
   19e74:	bl	0x105fc
   19e78:	mov	x29, x29
   19e7c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   19e80:	mov	x19, x0
   19e84:	adrp	x8, 27 ; 0x34000
   19e88:	ldr	x1, [x8, #0xe68]
   19e8c:	bl	0x5b7c
   19e90:	mov	x20, x0
   19e94:	mov	x0, x19
   19e98:	bl	0x200e8 ; symbol stub for: _objc_release
   19e9c:	adrp	x0, 29 ; 0x36000
   19ea0:	add	x0, x0, #0x569
   19ea4:	adrp	x2, 22 ; 0x2f000
   19ea8:	add	x2, x2, #0xa8 ; "bluetooth.on"
   19eac:	adrp	x3, 22 ; 0x2f000
   19eb0:	add	x3, x3, #0xc8 ; "bluetooth.off"
   19eb4:	mov	x1, x20
   19eb8:	ldp	x29, x30, [sp, #0x10]
   19ebc:	ldp	x20, x19, [sp], #0x20
   19ec0:	b	0x19714
   19ec4:	stp	x20, x19, [sp, #-0x20]!
   19ec8:	stp	x29, x30, [sp, #0x10]
   19ecc:	add	x29, sp, #0x10
   19ed0:	adrp	x8, 28 ; 0x35000
   19ed4:	ldr	x0, [x8, #0xb20] ; Objc class ref: bad class ref
   19ed8:	bl	0x216c0
   19edc:	mov	x29, x29
   19ee0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   19ee4:	mov	x19, x0
   19ee8:	bl	0x21040
   19eec:	mov	x1, x0
   19ef0:	adrp	x0, 29 ; 0x36000
   19ef4:	add	x0, x0, #0x56a
   19ef8:	adrp	x2, 22 ; 0x2f000
   19efc:	add	x2, x2, #0xe8 ; "lowpower.on"
   19f00:	adrp	x3, 22 ; 0x2f000
   19f04:	add	x3, x3, #0x108 ; "lowpower.off"
   19f08:	bl	0x19714
   19f0c:	mov	x0, x19
   19f10:	ldp	x29, x30, [sp, #0x10]
   19f14:	ldp	x20, x19, [sp], #0x20
   19f18:	b	0x200e8 ; symbol stub for: _objc_release
   19f1c:	sub	sp, sp, #0x20
   19f20:	stp	x29, x30, [sp, #0x10]
   19f24:	add	x29, sp, #0x10
   19f28:	mov	x0, x1
   19f2c:	str	xzr, [sp, #0x8]
   19f30:	add	x1, sp, #0x8
   19f34:	bl	0x1ffec ; symbol stub for: _notify_get_state
   19f38:	ldr	x8, [sp, #0x8]
   19f3c:	cmp	x8, #0x0
   19f40:	cset	w1, ne
   19f44:	adrp	x0, 29 ; 0x36000
   19f48:	add	x0, x0, #0x56b
   19f4c:	adrp	x2, 22 ; 0x2f000
   19f50:	add	x2, x2, #0x128 ; "device.locked"
   19f54:	adrp	x3, 22 ; 0x2f000
   19f58:	add	x3, x3, #0x148 ; "device.unlocked"
   19f5c:	bl	0x19714
   19f60:	ldp	x29, x30, [sp, #0x10]
   19f64:	add	sp, sp, #0x20
   19f68:	ret
   19f6c:	sub	sp, sp, #0x20
   19f70:	stp	x29, x30, [sp, #0x10]
   19f74:	add	x29, sp, #0x10
   19f78:	mov	x0, x1
   19f7c:	str	xzr, [sp, #0x8]
   19f80:	add	x1, sp, #0x8
   19f84:	bl	0x1ffec ; symbol stub for: _notify_get_state
   19f88:	ldr	x8, [sp, #0x8]
   19f8c:	cmp	x8, #0x0
   19f90:	cset	w1, ne
   19f94:	adrp	x0, 29 ; 0x36000
   19f98:	add	x0, x0, #0x56c
   19f9c:	adrp	x2, 22 ; 0x2f000
   19fa0:	add	x2, x2, #0x188 ; "display.off"
   19fa4:	adrp	x3, 22 ; 0x2f000
   19fa8:	add	x3, x3, #0x168 ; "display.on"
   19fac:	bl	0x19714
   19fb0:	ldp	x29, x30, [sp, #0x10]
   19fb4:	add	sp, sp, #0x20
   19fb8:	ret
   19fbc:	ldr	x0, [x0, #0x20]
   19fc0:	ldr	x1, [x0, #0x10]
   19fc4:	br	x1
   19fc8:	ldr	x1, [x1, #0x20]
   19fcc:	add	x0, x0, #0x20
   19fd0:	mov	w2, #0x7
   19fd4:	b	0x1fe3c ; symbol stub for: __Block_object_assign

; ===== sub_19fd8 =====
   19fd8:	stp	x20, x19, [sp, #-0x20]!
   19fdc:	stp	x29, x30, [sp, #0x10]
   19fe0:	add	x29, sp, #0x10
   19fe4:	bl	0x200f4 ; symbol stub for: _objc_retain
   19fe8:	mov	x19, x0
   19fec:	adrp	x2, 24 ; 0x31000
   19ff0:	add	x2, x2, #0x6e8 ; "wifi."
   19ff4:	bl	0x20d80
   19ff8:	tbz	w0, #0x0, 0x1a004
   19ffc:	mov	w20, #0x0
   1a000:	b	0x1a090
   1a004:	adrp	x2, 23 ; 0x31000
   1a008:	add	x2, x2, #0x708 ; "bluetooth."
   1a00c:	mov	x0, x19
   1a010:	bl	0x20d80
   1a014:	tbz	w0, #0x0, 0x1a020
   1a018:	mov	w20, #0x1
   1a01c:	b	0x1a090
   1a020:	adrp	x2, 23 ; 0x31000
   1a024:	add	x2, x2, #0x728 ; "lowpower."
   1a028:	mov	x0, x19
   1a02c:	bl	0x20d80
   1a030:	tbz	w0, #0x0, 0x1a03c
   1a034:	mov	w20, #0x2
   1a038:	b	0x1a090
   1a03c:	adrp	x2, 23 ; 0x31000
   1a040:	add	x2, x2, #0x748 ; "device."
   1a044:	mov	x0, x19
   1a048:	bl	0x20d80
   1a04c:	tbz	w0, #0x0, 0x1a058
   1a050:	mov	w20, #0x3
   1a054:	b	0x1a090
   1a058:	adrp	x2, 23 ; 0x31000
   1a05c:	add	x2, x2, #0x768 ; "display."
   1a060:	mov	x0, x19
   1a064:	bl	0x20d80
   1a068:	tbz	w0, #0x0, 0x1a074
   1a06c:	mov	w20, #0x4
   1a070:	b	0x1a090
   1a074:	adrp	x2, 23 ; 0x31000
   1a078:	add	x2, x2, #0x588 ; "music."
   1a07c:	mov	x0, x19
   1a080:	bl	0x20d80
   1a084:	cmp	w0, #0x0
   1a088:	mov	w8, #0x5
   1a08c:	csinv	w20, w8, wzr, ne

; ===== sub_1a090 =====
   1a090:	mov	x0, x19
   1a094:	bl	0x200e8 ; symbol stub for: _objc_release
   1a098:	mov	x0, x20
   1a09c:	ldp	x29, x30, [sp, #0x10]
   1a0a0:	ldp	x20, x19, [sp], #0x20
   1a0a4:	ret

; ===== sub_1a0a8 =====
   1a0a8:	sub	sp, sp, #0x120
   1a0ac:	stp	x28, x27, [sp, #0xd0]
   1a0b0:	stp	x24, x23, [sp, #0xe0]
   1a0b4:	stp	x22, x21, [sp, #0xf0]
   1a0b8:	stp	x20, x19, [sp, #0x100]
   1a0bc:	stp	x29, x30, [sp, #0x110]
   1a0c0:	add	x29, sp, #0x110
   1a0c4:	mov	x20, x1
   1a0c8:	adrp	x8, 24 ; 0x32000
   1a0cc:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1a0d0:	ldr	x8, [x8]
   1a0d4:	stur	x8, [x29, #-0x48]
   1a0d8:	bl	0x200f4 ; symbol stub for: _objc_retain
   1a0dc:	mov	x19, x0
   1a0e0:	mov	x1, x20
   1a0e4:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
   1a0e8:	tbz	w0, #0x0, 0x1a0f8
   1a0ec:	mov	x0, x19
   1a0f0:	bl	0x1a1d4
   1a0f4:	b	0x1a194
   1a0f8:	movi.16b	v0, #0x0
   1a0fc:	stp	q0, q0, [sp, #0x20]
   1a100:	stp	q0, q0, [sp]
   1a104:	mov	x0, x19
   1a108:	bl	0x22180
   1a10c:	mov	x29, x29
   1a110:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1a114:	mov	x21, x0
   1a118:	mov	x2, sp
   1a11c:	add	x3, sp, #0x48
   1a120:	mov	w4, #0x10
   1a124:	bl	0x20980
   1a128:	cbz	x0, 0x1a18c
   1a12c:	mov	x22, x0
   1a130:	ldr	x8, [sp, #0x10]
   1a134:	ldr	x23, [x8]
   1a138:	mov	x24, #0x0
   1a13c:	ldr	x8, [sp, #0x10]
   1a140:	ldr	x8, [x8]
   1a144:	cmp	x8, x23
   1a148:	b.eq	0x1a154
   1a14c:	mov	x0, x21
   1a150:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   1a154:	ldr	x8, [sp, #0x8]
   1a158:	ldr	x0, [x8, x24, lsl #3]
   1a15c:	mov	x1, x20
   1a160:	bl	0x1a0a8
   1a164:	add	x24, x24, #0x1
   1a168:	cmp	x22, x24
   1a16c:	b.ne	0x1a13c
   1a170:	mov	x2, sp
   1a174:	add	x3, sp, #0x48
   1a178:	mov	x0, x21
   1a17c:	mov	w4, #0x10
   1a180:	bl	0x20980
   1a184:	mov	x22, x0
   1a188:	cbnz	x0, 0x1a138
   1a18c:	mov	x0, x21
   1a190:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_1a194 =====
   1a194:	mov	x0, x19
   1a198:	bl	0x200e8 ; symbol stub for: _objc_release
   1a19c:	ldur	x8, [x29, #-0x48]
   1a1a0:	adrp	x9, 24 ; 0x32000
   1a1a4:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1a1a8:	ldr	x9, [x9]
   1a1ac:	cmp	x9, x8
   1a1b0:	b.ne	0x1a1d0
   1a1b4:	ldp	x29, x30, [sp, #0x110]
   1a1b8:	ldp	x20, x19, [sp, #0x100]
   1a1bc:	ldp	x22, x21, [sp, #0xf0]
   1a1c0:	ldp	x24, x23, [sp, #0xe0]
   1a1c4:	ldp	x28, x27, [sp, #0xd0]
   1a1c8:	add	sp, sp, #0x120
   1a1cc:	ret
   1a1d0:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_1a1d4 =====
   1a1d4:	sub	sp, sp, #0x120
   1a1d8:	stp	x26, x25, [sp, #0xd0]
   1a1dc:	stp	x24, x23, [sp, #0xe0]
   1a1e0:	stp	x22, x21, [sp, #0xf0]
   1a1e4:	stp	x20, x19, [sp, #0x100]
   1a1e8:	stp	x29, x30, [sp, #0x110]
   1a1ec:	add	x29, sp, #0x110
   1a1f0:	adrp	x8, 24 ; 0x32000
   1a1f4:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1a1f8:	ldr	x8, [x8]
   1a1fc:	stur	x8, [x29, #-0x48]
   1a200:	bl	0x200f4 ; symbol stub for: _objc_retain
   1a204:	mov	x19, x0
   1a208:	movi.16b	v0, #0x0
   1a20c:	stp	q0, q0, [sp]
   1a210:	stp	q0, q0, [sp, #0x20]
   1a214:	bl	0x20d20
   1a218:	mov	x29, x29
   1a21c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1a220:	mov	x20, x0
   1a224:	mov	x2, sp
   1a228:	add	x3, sp, #0x48
   1a22c:	mov	w4, #0x10
   1a230:	bl	0x20980
   1a234:	adrp	x23, 27 ; 0x35000
   1a238:	cbz	x0, 0x1a2ac
   1a23c:	mov	x21, x0
   1a240:	ldr	x8, [sp, #0x10]
   1a244:	ldr	x24, [x8]
   1a248:	mov	x25, #0x0
   1a24c:	ldr	x8, [sp, #0x10]
   1a250:	ldr	x8, [x8]
   1a254:	cmp	x8, x24
   1a258:	b.eq	0x1a264
   1a25c:	mov	x0, x20
   1a260:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   1a264:	ldr	x8, [sp, #0x8]
   1a268:	ldr	x22, [x8, x25, lsl #3]
   1a26c:	ldr	x0, [x23, #0xb70]
   1a270:	bl	0x200b8 ; symbol stub for: _objc_opt_class
   1a274:	mov	x1, x0
   1a278:	mov	x0, x22
   1a27c:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
   1a280:	tbnz	w0, #0x0, 0x1a2cc
   1a284:	add	x25, x25, #0x1
   1a288:	cmp	x21, x25
   1a28c:	b.ne	0x1a24c
   1a290:	mov	x2, sp
   1a294:	add	x3, sp, #0x48
   1a298:	mov	x0, x20
   1a29c:	mov	w4, #0x10
   1a2a0:	bl	0x20980
   1a2a4:	mov	x21, x0
   1a2a8:	cbnz	x0, 0x1a248
   1a2ac:	mov	x0, x20
   1a2b0:	bl	0x200e8 ; symbol stub for: _objc_release
   1a2b4:	ldr	x0, [x23, #0xb70]
   1a2b8:	bl	0x200d0 ; symbol stub for: _objc_opt_new
   1a2bc:	mov	x20, x0
   1a2c0:	mov	x0, x19
   1a2c4:	mov	x2, x20
   1a2c8:	bl	0x20380
   1a2cc:	mov	x0, x20
   1a2d0:	bl	0x200e8 ; symbol stub for: _objc_release
   1a2d4:	mov	x0, x19
   1a2d8:	bl	0x200e8 ; symbol stub for: _objc_release
   1a2dc:	ldur	x8, [x29, #-0x48]
   1a2e0:	adrp	x9, 24 ; 0x32000
   1a2e4:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1a2e8:	ldr	x9, [x9]
   1a2ec:	cmp	x9, x8
   1a2f0:	b.ne	0x1a310
   1a2f4:	ldp	x29, x30, [sp, #0x110]
   1a2f8:	ldp	x20, x19, [sp, #0x100]
   1a2fc:	ldp	x22, x21, [sp, #0xf0]
   1a300:	ldp	x24, x23, [sp, #0xe0]
   1a304:	ldp	x26, x25, [sp, #0xd0]
   1a308:	add	sp, sp, #0x120
   1a30c:	ret
   1a310:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_1a314 =====
   1a314:	sub	sp, sp, #0x120
   1a318:	stp	x28, x27, [sp, #0xd0]
   1a31c:	stp	x24, x23, [sp, #0xe0]
   1a320:	stp	x22, x21, [sp, #0xf0]
   1a324:	stp	x20, x19, [sp, #0x100]
   1a328:	stp	x29, x30, [sp, #0x110]
   1a32c:	add	x29, sp, #0x110
   1a330:	mov	x20, x1
   1a334:	adrp	x8, 24 ; 0x32000
   1a338:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1a33c:	ldr	x8, [x8]
   1a340:	stur	x8, [x29, #-0x48]
   1a344:	bl	0x200f4 ; symbol stub for: _objc_retain
   1a348:	mov	x19, x0
   1a34c:	mov	x1, x20
   1a350:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
   1a354:	tbz	w0, #0x0, 0x1a364
   1a358:	mov	x0, x19
   1a35c:	bl	0x1a440
   1a360:	b	0x1a400
   1a364:	movi.16b	v0, #0x0
   1a368:	stp	q0, q0, [sp, #0x20]
   1a36c:	stp	q0, q0, [sp]
   1a370:	mov	x0, x19
   1a374:	bl	0x22180
   1a378:	mov	x29, x29
   1a37c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1a380:	mov	x21, x0
   1a384:	mov	x2, sp
   1a388:	add	x3, sp, #0x48
   1a38c:	mov	w4, #0x10
   1a390:	bl	0x20980
   1a394:	cbz	x0, 0x1a3f8
   1a398:	mov	x22, x0
   1a39c:	ldr	x8, [sp, #0x10]
   1a3a0:	ldr	x23, [x8]
   1a3a4:	mov	x24, #0x0
   1a3a8:	ldr	x8, [sp, #0x10]
   1a3ac:	ldr	x8, [x8]
   1a3b0:	cmp	x8, x23
   1a3b4:	b.eq	0x1a3c0
   1a3b8:	mov	x0, x21
   1a3bc:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   1a3c0:	ldr	x8, [sp, #0x8]
   1a3c4:	ldr	x0, [x8, x24, lsl #3]
   1a3c8:	mov	x1, x20
   1a3cc:	bl	0x1a314
   1a3d0:	add	x24, x24, #0x1
   1a3d4:	cmp	x22, x24
   1a3d8:	b.ne	0x1a3a8
   1a3dc:	mov	x2, sp
   1a3e0:	add	x3, sp, #0x48
   1a3e4:	mov	x0, x21
   1a3e8:	mov	w4, #0x10
   1a3ec:	bl	0x20980
   1a3f0:	mov	x22, x0
   1a3f4:	cbnz	x0, 0x1a3a4
   1a3f8:	mov	x0, x21
   1a3fc:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_1a400 =====
   1a400:	mov	x0, x19
   1a404:	bl	0x200e8 ; symbol stub for: _objc_release
   1a408:	ldur	x8, [x29, #-0x48]
   1a40c:	adrp	x9, 24 ; 0x32000
   1a410:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1a414:	ldr	x9, [x9]
   1a418:	cmp	x9, x8
   1a41c:	b.ne	0x1a43c
   1a420:	ldp	x29, x30, [sp, #0x110]
   1a424:	ldp	x20, x19, [sp, #0x100]
   1a428:	ldp	x22, x21, [sp, #0xf0]
   1a42c:	ldp	x24, x23, [sp, #0xe0]
   1a430:	ldp	x28, x27, [sp, #0xd0]
   1a434:	add	sp, sp, #0x120
   1a438:	ret
   1a43c:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_1a440 =====
   1a440:	sub	sp, sp, #0x160
   1a444:	stp	x28, x27, [sp, #0x100]
   1a448:	stp	x26, x25, [sp, #0x110]
   1a44c:	stp	x24, x23, [sp, #0x120]
   1a450:	stp	x22, x21, [sp, #0x130]
   1a454:	stp	x20, x19, [sp, #0x140]
   1a458:	stp	x29, x30, [sp, #0x150]
   1a45c:	add	x29, sp, #0x150
   1a460:	adrp	x8, 24 ; 0x32000
   1a464:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1a468:	ldr	x8, [x8]
   1a46c:	stur	x8, [x29, #-0x60]
   1a470:	bl	0x200f4 ; symbol stub for: _objc_retain
   1a474:	mov	x19, x0
   1a478:	adrp	x8, 28 ; 0x36000
   1a47c:	ldr	x1, [x8, #0xa8]
   1a480:	bl	0x2007c ; symbol stub for: _objc_getAssociatedObject
   1a484:	mov	x29, x29
   1a488:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1a48c:	mov	x20, x0
   1a490:	bl	0x200e8 ; symbol stub for: _objc_release
   1a494:	cbnz	x20, 0x1a674
   1a498:	adrp	x8, 27 ; 0x35000
   1a49c:	ldr	x0, [x8, #0xa00] ; Objc class ref: bad class ref
   1a4a0:	bl	0x21ee0
   1a4a4:	mov	x29, x29
   1a4a8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1a4ac:	mov	x20, x0
   1a4b0:	adrp	x8, 27 ; 0x35000
   1a4b4:	ldr	x0, [x8, #0xa08] ; Objc class ref: bad class ref
   1a4b8:	bl	0x20028 ; symbol stub for: _objc_alloc
   1a4bc:	adrp	x8, 26 ; 0x34000
   1a4c0:	ldr	x24, [x8, #0xf78]
   1a4c4:	mov	x2, x20
   1a4c8:	mov	x3, x24
   1a4cc:	bl	0x20ee0
   1a4d0:	mov	x25, x0
   1a4d4:	adrp	x21, 27 ; 0x35000
   1a4d8:	ldr	x0, [x21, #0xb78] ; Objc class ref: bad class ref
   1a4dc:	bl	0x20028 ; symbol stub for: _objc_alloc
   1a4e0:	mov	x2, x20
   1a4e4:	mov	x3, x24
   1a4e8:	bl	0x20ee0
   1a4ec:	mov	x22, x0
   1a4f0:	mov	w2, #0x4
   1a4f4:	bl	0x21a00
   1a4f8:	mov	x0, x22
   1a4fc:	mov	w2, #0x2
   1a500:	bl	0x21be0
   1a504:	ldr	x0, [x21, #0xb78]
   1a508:	bl	0x20028 ; symbol stub for: _objc_alloc
   1a50c:	mov	x2, x20
   1a510:	mov	x3, x24
   1a514:	bl	0x20ee0
   1a518:	mov	x23, x0
   1a51c:	mov	w2, #0x8
   1a520:	bl	0x21a00
   1a524:	mov	x0, x23
   1a528:	mov	w2, #0x2
   1a52c:	bl	0x21be0
   1a530:	adrp	x8, 27 ; 0x35000
   1a534:	ldr	x0, [x8, #0xa10] ; Objc class ref: bad class ref
   1a538:	bl	0x20028 ; symbol stub for: _objc_alloc
   1a53c:	mov	x2, x20
   1a540:	mov	x3, x24
   1a544:	bl	0x20ee0
   1a548:	mov	x24, x0
   1a54c:	mov	w2, #0x2
   1a550:	bl	0x21bc0
   1a554:	movi.16b	v0, #0x0
   1a558:	stp	q0, q0, [sp, #0x30]
   1a55c:	stp	q0, q0, [sp, #0x10]
   1a560:	str	x25, [sp, #0x8]
   1a564:	stp	x25, x22, [sp, #0x50]
   1a568:	stp	x23, x24, [sp, #0x60]
   1a56c:	adrp	x8, 27 ; 0x35000
   1a570:	ldr	x0, [x8, #0xa48] ; Objc class ref: bad class ref
   1a574:	add	x2, sp, #0x50
   1a578:	mov	w3, #0x4
   1a57c:	bl	0x20580
   1a580:	mov	x29, x29
   1a584:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1a588:	mov	x25, x0
   1a58c:	add	x2, sp, #0x10
   1a590:	add	x3, sp, #0x70
   1a594:	mov	w4, #0x10
   1a598:	bl	0x20980
   1a59c:	cbz	x0, 0x1a628
   1a5a0:	mov	x26, x0
   1a5a4:	ldr	x8, [sp, #0x20]
   1a5a8:	ldr	x28, [x8]
   1a5ac:	mov	x21, #0x0
   1a5b0:	ldr	x8, [sp, #0x20]
   1a5b4:	ldr	x8, [x8]
   1a5b8:	cmp	x8, x28
   1a5bc:	b.eq	0x1a5c8
   1a5c0:	mov	x0, x25
   1a5c4:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   1a5c8:	ldr	x8, [sp, #0x18]
   1a5cc:	ldr	x27, [x8, x21, lsl #3]
   1a5d0:	mov	x0, x27
   1a5d4:	mov	x2, x20
   1a5d8:	bl	0x219c0
   1a5dc:	mov	x0, x27
   1a5e0:	mov	w2, #0x0
   1a5e4:	bl	0x21960
   1a5e8:	mov	x0, x27
   1a5ec:	mov	w2, #0x0
   1a5f0:	bl	0x219a0
   1a5f4:	mov	x0, x19
   1a5f8:	mov	x2, x27
   1a5fc:	bl	0x20380
   1a600:	add	x21, x21, #0x1
   1a604:	cmp	x26, x21
   1a608:	b.ne	0x1a5b0
   1a60c:	add	x2, sp, #0x10
   1a610:	add	x3, sp, #0x70
   1a614:	mov	x0, x25
   1a618:	mov	w4, #0x10
   1a61c:	bl	0x20980
   1a620:	mov	x26, x0
   1a624:	cbnz	x0, 0x1a5ac
   1a628:	mov	x0, x25
   1a62c:	bl	0x200e8 ; symbol stub for: _objc_release
   1a630:	adrp	x8, 28 ; 0x36000
   1a634:	ldr	x1, [x8, #0xa8]
   1a638:	adrp	x2, 24 ; 0x32000
   1a63c:	ldr	x2, [x2, #0xd38] ; literal pool symbol address: ___kCFBooleanTrue
   1a640:	mov	x0, x19
   1a644:	mov	w3, #0x1
   1a648:	bl	0x20130 ; symbol stub for: _objc_setAssociatedObject
   1a64c:	mov	x0, x24
   1a650:	bl	0x200e8 ; symbol stub for: _objc_release
   1a654:	mov	x0, x23
   1a658:	bl	0x200e8 ; symbol stub for: _objc_release
   1a65c:	mov	x0, x22
   1a660:	bl	0x200e8 ; symbol stub for: _objc_release
   1a664:	ldr	x0, [sp, #0x8]
   1a668:	bl	0x200e8 ; symbol stub for: _objc_release
   1a66c:	mov	x0, x20
   1a670:	bl	0x200e8 ; symbol stub for: _objc_release
   1a674:	mov	x0, x19
   1a678:	bl	0x200e8 ; symbol stub for: _objc_release
   1a67c:	ldur	x8, [x29, #-0x60]
   1a680:	adrp	x9, 24 ; 0x32000
   1a684:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1a688:	ldr	x9, [x9]
   1a68c:	cmp	x9, x8
   1a690:	b.ne	0x1a6b4
   1a694:	ldp	x29, x30, [sp, #0x150]
   1a698:	ldp	x20, x19, [sp, #0x140]
   1a69c:	ldp	x22, x21, [sp, #0x130]
   1a6a0:	ldp	x24, x23, [sp, #0x120]
   1a6a4:	ldp	x26, x25, [sp, #0x110]
   1a6a8:	ldp	x28, x27, [sp, #0x100]
   1a6ac:	add	sp, sp, #0x160
   1a6b0:	ret
   1a6b4:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_1a6b8 =====
   1a6b8:	stp	d9, d8, [sp, #-0x70]!
   1a6bc:	stp	x28, x27, [sp, #0x10]
   1a6c0:	stp	x26, x25, [sp, #0x20]
   1a6c4:	stp	x24, x23, [sp, #0x30]
   1a6c8:	stp	x22, x21, [sp, #0x40]
   1a6cc:	stp	x20, x19, [sp, #0x50]
   1a6d0:	stp	x29, x30, [sp, #0x60]
   1a6d4:	add	x29, sp, #0x60
   1a6d8:	sub	sp, sp, #0x1a0
   1a6dc:	adrp	x8, 24 ; 0x32000
   1a6e0:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1a6e4:	ldr	x8, [x8]
   1a6e8:	stur	x8, [x29, #-0x70]
   1a6ec:	adrp	x0, 28 ; 0x36000
   1a6f0:	add	x0, x0, #0x130
   1a6f4:	bl	0x20094 ; symbol stub for: _objc_loadWeakRetained
   1a6f8:	mov	x26, x0
   1a6fc:	bl	0x22440
   1a700:	mov	x29, x29
   1a704:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1a708:	mov	x19, x0
   1a70c:	adrp	x0, 23 ; 0x31000
   1a710:	add	x0, x0, #0x848 ; "lsclock."
   1a714:	bl	0x18b50
   1a718:	str	x19, [sp, #0x8]
   1a71c:	cmp	x19, #0x0
   1a720:	csel	w20, wzr, w0, eq
   1a724:	movi.16b	v0, #0x0
   1a728:	stp	q0, q0, [sp, #0x50]
   1a72c:	stp	q0, q0, [sp, #0x70]
   1a730:	adrp	x8, 28 ; 0x36000
   1a734:	ldr	x0, [x8, #0x3b8]
   1a738:	bl	0x200f4 ; symbol stub for: _objc_retain
   1a73c:	mov	x19, x0
   1a740:	add	x2, sp, #0x50
   1a744:	sub	x3, x29, #0xf0
   1a748:	mov	w4, #0x10
   1a74c:	bl	0x20980
   1a750:	cbz	x0, 0x1a7d0
   1a754:	mov	x21, x0
   1a758:	ldr	x8, [sp, #0x60]
   1a75c:	ldr	x24, [x8]
   1a760:	mov	x25, #0x0
   1a764:	ldr	x8, [sp, #0x60]
   1a768:	ldr	x8, [x8]
   1a76c:	cmp	x8, x24
   1a770:	b.eq	0x1a77c
   1a774:	mov	x0, x19
   1a778:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   1a77c:	ldr	x8, [sp, #0x58]
   1a780:	ldr	x22, [x8, x25, lsl #3]
   1a784:	mov	x0, x22
   1a788:	bl	0x22400
   1a78c:	mov	x29, x29
   1a790:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1a794:	mov	x23, x0
   1a798:	mov	x2, x22
   1a79c:	bl	0x21740
   1a7a0:	mov	x0, x23
   1a7a4:	bl	0x200e8 ; symbol stub for: _objc_release
   1a7a8:	add	x25, x25, #0x1
   1a7ac:	cmp	x21, x25
   1a7b0:	b.ne	0x1a764
   1a7b4:	add	x2, sp, #0x50
   1a7b8:	sub	x3, x29, #0xf0
   1a7bc:	mov	x0, x19
   1a7c0:	mov	w4, #0x10
   1a7c4:	bl	0x20980
   1a7c8:	mov	x21, x0
   1a7cc:	cbnz	x0, 0x1a760
   1a7d0:	mov	x0, x19
   1a7d4:	bl	0x200e8 ; symbol stub for: _objc_release
   1a7d8:	adrp	x8, 28 ; 0x36000
   1a7dc:	ldr	x0, [x8, #0x3b8]
   1a7e0:	bl	0x21720
   1a7e4:	cbz	w20, 0x1aa60
   1a7e8:	adrp	x8, 28 ; 0x36000
   1a7ec:	ldr	x8, [x8, #0x3b8]
   1a7f0:	cbnz	x8, 0x1a81c
   1a7f4:	adrp	x8, 27 ; 0x35000
   1a7f8:	ldr	x0, [x8, #0xa40] ; Objc class ref: bad class ref
   1a7fc:	bl	0x20560
   1a800:	mov	x29, x29
   1a804:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1a808:	adrp	x9, 28 ; 0x36000
   1a80c:	ldr	x8, [x9, #0x3b8]
   1a810:	str	x0, [x9, #0x3b8]
   1a814:	mov	x0, x8
   1a818:	bl	0x200e8 ; symbol stub for: _objc_release
   1a81c:	adrp	x23, 28 ; 0x36000
   1a820:	ldr	x8, [x23, #0x590]
   1a824:	cbnz	x8, 0x1a844
   1a828:	adrp	x8, 27 ; 0x35000
   1a82c:	ldr	x0, [x8, #0xb90] ; Objc class ref: bad class ref
   1a830:	bl	0x200d0 ; symbol stub for: _objc_opt_new
   1a834:	ldr	x8, [x23, #0x590]
   1a838:	str	x0, [x23, #0x590]
   1a83c:	mov	x0, x8
   1a840:	bl	0x200e8 ; symbol stub for: _objc_release
   1a844:	movi.16b	v0, #0x0
   1a848:	stp	q0, q0, [sp, #0x30]
   1a84c:	stp	q0, q0, [sp, #0x10]
   1a850:	adrp	x0, 24 ; 0x32000
   1a854:	add	x0, x0, #0x930
   1a858:	add	x2, sp, #0x10
   1a85c:	add	x3, sp, #0x90
   1a860:	mov	w4, #0x10
   1a864:	bl	0x20980
   1a868:	cbz	x0, 0x1aa60
   1a86c:	mov	x21, x0
   1a870:	str	x26, [sp]
   1a874:	mov	x24, #0x0
   1a878:	mov	x26, #0x0
   1a87c:	ldr	x8, [sp, #0x20]
   1a880:	ldr	x25, [x8]
   1a884:	adrp	x19, 28 ; 0x36000
   1a888:	adrp	x8, 8 ; 0x22000
   1a88c:	ldr	d8, [x8, #0x968]
   1a890:	mov	x20, #0x0
   1a894:	adrp	x8, 26 ; 0x34000
   1a898:	ldr	x28, [x8, #0xf78]
   1a89c:	ldr	x8, [sp, #0x20]
   1a8a0:	ldr	x8, [x8]
   1a8a4:	cmp	x8, x25
   1a8a8:	b.eq	0x1a8b8
   1a8ac:	adrp	x0, 24 ; 0x32000
   1a8b0:	add	x0, x0, #0x930
   1a8b4:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   1a8b8:	ldr	x8, [sp, #0x18]
   1a8bc:	ldr	x27, [x8, x20, lsl #3]
   1a8c0:	ldr	x0, [x19, #0xf8]
   1a8c4:	mov	x2, x27
   1a8c8:	bl	0x208a0
   1a8cc:	cbz	w0, 0x1aa20
   1a8d0:	mov	x0, x27
   1a8d4:	adrp	x2, 23 ; 0x31000
   1a8d8:	add	x2, x2, #0x868 ; "lsclock.hold"
   1a8dc:	bl	0x21000
   1a8e0:	cbz	w0, 0x1a924
   1a8e4:	adrp	x8, 27 ; 0x35000
   1a8e8:	ldr	x0, [x8, #0xa20] ; Objc class ref: bad class ref
   1a8ec:	bl	0x20028 ; symbol stub for: _objc_alloc
   1a8f0:	ldr	x2, [x23, #0x590]
   1a8f4:	mov	x3, x28
   1a8f8:	bl	0x20ee0
   1a8fc:	mov	x22, x0
   1a900:	mov	x0, x26
   1a904:	bl	0x200e8 ; symbol stub for: _objc_release
   1a908:	mov	x0, x22
   1a90c:	mov.16b	v0, v8
   1a910:	bl	0x21b80
   1a914:	mov	x0, x22
   1a918:	bl	0x200f4 ; symbol stub for: _objc_retain
   1a91c:	mov	x26, x0
   1a920:	b	0x1a974
   1a924:	mov	x0, x27
   1a928:	adrp	x2, 23 ; 0x31000
   1a92c:	add	x2, x2, #0x888 ; "lsclock.doubletap"
   1a930:	bl	0x21000
   1a934:	cbz	w0, 0x1a97c
   1a938:	adrp	x8, 27 ; 0x35000
   1a93c:	ldr	x0, [x8, #0xa10] ; Objc class ref: bad class ref
   1a940:	bl	0x20028 ; symbol stub for: _objc_alloc
   1a944:	ldr	x2, [x23, #0x590]
   1a948:	mov	x3, x28
   1a94c:	bl	0x20ee0
   1a950:	mov	x22, x0
   1a954:	mov	x0, x24
   1a958:	bl	0x200e8 ; symbol stub for: _objc_release
   1a95c:	mov	x0, x22
   1a960:	mov	w2, #0x2
   1a964:	bl	0x21bc0
   1a968:	mov	x0, x22
   1a96c:	bl	0x200f4 ; symbol stub for: _objc_retain
   1a970:	mov	x24, x0

; ===== sub_1a974 =====
   1a974:	mov	x22, x0
   1a978:	b	0x1a9d8
   1a97c:	adrp	x8, 27 ; 0x35000
   1a980:	ldr	x0, [x8, #0xb78] ; Objc class ref: bad class ref
   1a984:	bl	0x20028 ; symbol stub for: _objc_alloc
   1a988:	ldr	x2, [x23, #0x590]
   1a98c:	mov	x3, x28
   1a990:	bl	0x20ee0
   1a994:	mov	x22, x0
   1a998:	mov	x0, x27
   1a99c:	adrp	x2, 23 ; 0x31000
   1a9a0:	add	x2, x2, #0x168 ; "left"
   1a9a4:	bl	0x20da0
   1a9a8:	tbz	w0, #0x0, 0x1a9b4
   1a9ac:	mov	w2, #0x2
   1a9b0:	b	0x1a9d0
   1a9b4:	mov	x0, x27
   1a9b8:	adrp	x2, 23 ; 0x31000
   1a9bc:	add	x2, x2, #0x188 ; "right"
   1a9c0:	bl	0x20da0
   1a9c4:	cmp	w0, #0x0
   1a9c8:	mov	w8, #0x8
   1a9cc:	csinc	x2, x8, xzr, eq

; ===== sub_1a9d0 =====
   1a9d0:	mov	x0, x22
   1a9d4:	bl	0x21a00

; ===== sub_1a9d8 =====
   1a9d8:	mov	x0, x22
   1a9dc:	adrp	x1, 10 ; 0x24000
   1a9e0:	add	x1, x1, #0xff5 ; literal pool for: "TGClockTrigger"
   1a9e4:	mov	x2, x27
   1a9e8:	mov	w3, #0x3
   1a9ec:	bl	0x20130 ; symbol stub for: _objc_setAssociatedObject
   1a9f0:	ldr	x2, [x23, #0x590]
   1a9f4:	mov	x0, x22
   1a9f8:	bl	0x219c0
   1a9fc:	ldr	x0, [sp, #0x8]
   1aa00:	mov	x2, x22
   1aa04:	bl	0x20380
   1aa08:	adrp	x8, 28 ; 0x36000
   1aa0c:	ldr	x0, [x8, #0x3b8]
   1aa10:	mov	x2, x22
   1aa14:	bl	0x203c0
   1aa18:	mov	x0, x22
   1aa1c:	bl	0x200e8 ; symbol stub for: _objc_release
   1aa20:	add	x20, x20, #0x1
   1aa24:	cmp	x21, x20
   1aa28:	b.ne	0x1a89c
   1aa2c:	add	x2, sp, #0x10
   1aa30:	add	x3, sp, #0x90
   1aa34:	adrp	x0, 24 ; 0x32000
   1aa38:	add	x0, x0, #0x930
   1aa3c:	mov	w4, #0x10
   1aa40:	bl	0x20980
   1aa44:	mov	x21, x0
   1aa48:	cbnz	x0, 0x1a890
   1aa4c:	mov	x0, x24
   1aa50:	bl	0x200e8 ; symbol stub for: _objc_release
   1aa54:	mov	x0, x26
   1aa58:	bl	0x200e8 ; symbol stub for: _objc_release
   1aa5c:	ldr	x26, [sp]
   1aa60:	ldr	x0, [sp, #0x8]
   1aa64:	bl	0x200e8 ; symbol stub for: _objc_release
   1aa68:	mov	x0, x26
   1aa6c:	bl	0x200e8 ; symbol stub for: _objc_release
   1aa70:	ldur	x8, [x29, #-0x70]
   1aa74:	adrp	x9, 24 ; 0x32000
   1aa78:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1aa7c:	ldr	x9, [x9]
   1aa80:	cmp	x9, x8
   1aa84:	b.ne	0x1aaac
   1aa88:	add	sp, sp, #0x1a0
   1aa8c:	ldp	x29, x30, [sp, #0x60]
   1aa90:	ldp	x20, x19, [sp, #0x50]
   1aa94:	ldp	x22, x21, [sp, #0x40]
   1aa98:	ldp	x24, x23, [sp, #0x30]
   1aa9c:	ldp	x26, x25, [sp, #0x20]
   1aaa0:	ldp	x28, x27, [sp, #0x10]
   1aaa4:	ldp	d9, d8, [sp], #0x70
   1aaa8:	ret
   1aaac:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_1aab0 =====
   1aab0:	stp	d15, d14, [sp, #-0xa0]!
   1aab4:	stp	d13, d12, [sp, #0x10]
   1aab8:	stp	d11, d10, [sp, #0x20]
   1aabc:	stp	d9, d8, [sp, #0x30]
   1aac0:	stp	x28, x27, [sp, #0x40]
   1aac4:	stp	x26, x25, [sp, #0x50]
   1aac8:	stp	x24, x23, [sp, #0x60]
   1aacc:	stp	x22, x21, [sp, #0x70]
   1aad0:	stp	x20, x19, [sp, #0x80]
   1aad4:	stp	x29, x30, [sp, #0x90]
   1aad8:	add	x29, sp, #0x90
   1aadc:	sub	sp, sp, #0x1c0
   1aae0:	adrp	x8, 24 ; 0x32000
   1aae4:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1aae8:	ldr	x8, [x8]
   1aaec:	stur	x8, [x29, #-0xa0]
   1aaf0:	adrp	x25, 28 ; 0x36000
   1aaf4:	ldr	x0, [x25, #0x3d0]
   1aaf8:	bl	0x20fa0
   1aafc:	ldr	x0, [x25, #0x3d0]
   1ab00:	str	xzr, [x25, #0x3d0]
   1ab04:	bl	0x200e8 ; symbol stub for: _objc_release
   1ab08:	adrp	x19, 28 ; 0x36000
   1ab0c:	ldr	x0, [x19, #0xf8]
   1ab10:	adrp	x2, 23 ; 0x31000
   1ab14:	add	x2, x2, #0x908 ; "time.sunrise"
   1ab18:	bl	0x208a0
   1ab1c:	mov	x20, x0
   1ab20:	ldr	x0, [x19, #0xf8]
   1ab24:	adrp	x2, 23 ; 0x31000
   1ab28:	add	x2, x2, #0x928 ; "time.sunset"
   1ab2c:	bl	0x208a0
   1ab30:	mov	x22, x0
   1ab34:	adrp	x24, 28 ; 0x36000
   1ab38:	ldr	x8, [x24, #0x3d8]
   1ab3c:	tbnz	w20, #0x0, 0x1abc0
   1ab40:	tbnz	w22, #0x0, 0x1abc0
   1ab44:	cbz	x8, 0x1b46c
   1ab48:	adrp	x8, 27 ; 0x35000
   1ab4c:	ldr	x0, [x8, #0xb58] ; Objc class ref: bad class ref
   1ab50:	bl	0x20ac0
   1ab54:	mov	x29, x29
   1ab58:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1ab5c:	mov	x19, x0
   1ab60:	ldr	x2, [x24, #0x3d8]
   1ab64:	bl	0x217a0
   1ab68:	mov	x0, x19
   1ab6c:	bl	0x200e8 ; symbol stub for: _objc_release
   1ab70:	ldr	x0, [x24, #0x3d8]
   1ab74:	str	xzr, [x24, #0x3d8]
   1ab78:	ldur	x8, [x29, #-0xa0]
   1ab7c:	adrp	x9, 24 ; 0x32000
   1ab80:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1ab84:	ldr	x9, [x9]
   1ab88:	cmp	x9, x8
   1ab8c:	b.ne	0x1b4b4
   1ab90:	add	sp, sp, #0x1c0
   1ab94:	ldp	x29, x30, [sp, #0x90]
   1ab98:	ldp	x20, x19, [sp, #0x80]
   1ab9c:	ldp	x22, x21, [sp, #0x70]
   1aba0:	ldp	x24, x23, [sp, #0x60]
   1aba4:	ldp	x26, x25, [sp, #0x50]
   1aba8:	ldp	x28, x27, [sp, #0x40]
   1abac:	ldp	d9, d8, [sp, #0x30]
   1abb0:	ldp	d11, d10, [sp, #0x20]
   1abb4:	ldp	d13, d12, [sp, #0x10]
   1abb8:	ldp	d15, d14, [sp], #0xa0
   1abbc:	b	0x200e8 ; symbol stub for: _objc_release
   1abc0:	cbnz	x8, 0x1ac44
   1abc4:	adrp	x8, 27 ; 0x35000
   1abc8:	ldr	x0, [x8, #0xb58] ; Objc class ref: bad class ref
   1abcc:	bl	0x20ac0
   1abd0:	mov	x29, x29
   1abd4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1abd8:	mov	x19, x0
   1abdc:	adrp	x8, 24 ; 0x32000
   1abe0:	ldr	x8, [x8, #0xd50] ; literal pool symbol address: _UIApplicationSignificantTimeChangeNotification
   1abe4:	ldr	x21, [x8]
   1abe8:	adrp	x8, 27 ; 0x35000
   1abec:	ldr	x0, [x8, #0xb60] ; Objc class ref: bad class ref
   1abf0:	bl	0x212c0
   1abf4:	mov	x29, x29
   1abf8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1abfc:	mov	x23, x0
   1ac00:	adrp	x5, 19 ; 0x2d000
   1ac04:	add	x5, x5, #0xd60
   1ac08:	mov	x0, x19
   1ac0c:	mov	x2, x21
   1ac10:	mov	x3, #0x0
   1ac14:	mov	x4, x23
   1ac18:	bl	0x203e0
   1ac1c:	mov	x29, x29
   1ac20:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1ac24:	ldr	x8, [x24, #0x3d8]
   1ac28:	str	x0, [x24, #0x3d8]
   1ac2c:	mov	x0, x8
   1ac30:	bl	0x200e8 ; symbol stub for: _objc_release
   1ac34:	mov	x0, x23
   1ac38:	bl	0x200e8 ; symbol stub for: _objc_release
   1ac3c:	mov	x0, x19
   1ac40:	bl	0x200e8 ; symbol stub for: _objc_release
   1ac44:	adrp	x24, 28 ; 0x36000
   1ac48:	ldr	x0, [x24, #0x598]
   1ac4c:	cbnz	x0, 0x1ae34
   1ac50:	adrp	x19, 27 ; 0x35000
   1ac54:	ldr	x0, [x19, #0xa40] ; Objc class ref: bad class ref
   1ac58:	bl	0x20560
   1ac5c:	mov	x29, x29
   1ac60:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1ac64:	ldr	x8, [x24, #0x598]
   1ac68:	str	x0, [x24, #0x598]
   1ac6c:	mov	x0, x8
   1ac70:	bl	0x200e8 ; symbol stub for: _objc_release
   1ac74:	ldr	x0, [x19, #0xa40]
   1ac78:	bl	0x20560
   1ac7c:	mov	x29, x29
   1ac80:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1ac84:	adrp	x9, 28 ; 0x36000
   1ac88:	ldr	x8, [x9, #0x5a0]
   1ac8c:	str	x0, [x9, #0x5a0]
   1ac90:	mov	x0, x8
   1ac94:	bl	0x200e8 ; symbol stub for: _objc_release
   1ac98:	movi.16b	v0, #0x0
   1ac9c:	stp	q0, q0, [sp, #0x110]
   1aca0:	stp	q0, q0, [sp, #0xf0]
   1aca4:	adrp	x0, 24 ; 0x32000
   1aca8:	add	x0, x0, #0x948
   1acac:	add	x2, sp, #0xf0
   1acb0:	add	x3, sp, #0x130
   1acb4:	mov	w4, #0x10
   1acb8:	bl	0x20980
   1acbc:	cbz	x0, 0x1adec
   1acc0:	mov	x21, x0
   1acc4:	ldr	x8, [sp, #0x100]
   1acc8:	ldr	x23, [x8]
   1accc:	mov	x19, #0x0
   1acd0:	adrp	x8, 26 ; 0x34000
   1acd4:	ldr	x24, [x8, #0xfb8]
   1acd8:	ldr	x8, [sp, #0x100]
   1acdc:	ldr	x8, [x8]
   1ace0:	cmp	x8, x23
   1ace4:	b.eq	0x1acf4
   1ace8:	adrp	x0, 24 ; 0x32000
   1acec:	add	x0, x0, #0x948
   1acf0:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   1acf4:	ldr	x8, [sp, #0xf8]
   1acf8:	ldr	x26, [x8, x19, lsl #3]
   1acfc:	adrp	x0, 23 ; 0x31000
   1ad00:	add	x0, x0, #0x9c8 ; "/System/Library/LocationBundles/"
   1ad04:	mov	x2, x26
   1ad08:	bl	0x220a0
   1ad0c:	mov	x29, x29
   1ad10:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1ad14:	mov	x25, x0
   1ad18:	adrp	x8, 27 ; 0x35000
   1ad1c:	ldr	x0, [x8, #0xa78] ; Objc class ref: bad class ref
   1ad20:	bl	0x20b00
   1ad24:	mov	x29, x29
   1ad28:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1ad2c:	mov	x27, x0
   1ad30:	mov	x2, x25
   1ad34:	bl	0x20c40
   1ad38:	mov	x28, x0
   1ad3c:	mov	x0, x27
   1ad40:	bl	0x200e8 ; symbol stub for: _objc_release
   1ad44:	cbz	w28, 0x1adb8
   1ad48:	adrp	x8, 27 ; 0x35000
   1ad4c:	ldr	x0, [x8, #0xba0] ; Objc class ref: bad class ref
   1ad50:	bl	0x20028 ; symbol stub for: _objc_alloc
   1ad54:	mov	x27, x0
   1ad58:	mov	x1, x24
   1ad5c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1ad60:	tbz	w0, #0x0, 0x1adb0
   1ad64:	mov	x0, x27
   1ad68:	mov	x1, x24
   1ad6c:	mov	x2, x25
   1ad70:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   1ad74:	mov	x29, x29
   1ad78:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1ad7c:	mov	x28, x0
   1ad80:	mov	x0, x27
   1ad84:	bl	0x200e8 ; symbol stub for: _objc_release
   1ad88:	cbz	x28, 0x1adb8
   1ad8c:	adrp	x8, 28 ; 0x36000
   1ad90:	ldr	x0, [x8, #0x598]
   1ad94:	mov	x2, x28
   1ad98:	bl	0x203c0
   1ad9c:	adrp	x8, 28 ; 0x36000
   1ada0:	ldr	x0, [x8, #0x5a0]
   1ada4:	mov	x2, x26
   1ada8:	bl	0x203c0
   1adac:	mov	x27, x28
   1adb0:	mov	x0, x27
   1adb4:	bl	0x200e8 ; symbol stub for: _objc_release
   1adb8:	mov	x0, x25
   1adbc:	bl	0x200e8 ; symbol stub for: _objc_release
   1adc0:	add	x19, x19, #0x1
   1adc4:	cmp	x21, x19
   1adc8:	b.ne	0x1acd8
   1adcc:	add	x2, sp, #0xf0
   1add0:	add	x3, sp, #0x130
   1add4:	adrp	x0, 24 ; 0x32000
   1add8:	add	x0, x0, #0x948
   1addc:	mov	w4, #0x10
   1ade0:	bl	0x20980
   1ade4:	mov	x21, x0
   1ade8:	cbnz	x0, 0x1accc
   1adec:	adrp	x8, 27 ; 0x35000
   1adf0:	ldr	x0, [x8, #0xba0] ; Objc class ref: bad class ref
   1adf4:	bl	0x200d0 ; symbol stub for: _objc_opt_new
   1adf8:	mov	x19, x0
   1adfc:	adrp	x24, 28 ; 0x36000
   1ae00:	cbz	x0, 0x1ae24
   1ae04:	ldr	x0, [x24, #0x598]
   1ae08:	mov	x2, x19
   1ae0c:	bl	0x203c0
   1ae10:	adrp	x8, 28 ; 0x36000
   1ae14:	ldr	x0, [x8, #0x5a0]
   1ae18:	adrp	x2, 23 ; 0x31000
   1ae1c:	add	x2, x2, #0x9e8 ; "SpringBoard"
   1ae20:	bl	0x203c0
   1ae24:	mov	x0, x19
   1ae28:	bl	0x200e8 ; symbol stub for: _objc_release
   1ae2c:	ldr	x0, [x24, #0x598]
   1ae30:	adrp	x25, 28 ; 0x36000
   1ae34:	bl	0x20960
   1ae38:	cbz	x0, 0x1ae88
   1ae3c:	mov	x19, #0x0
   1ae40:	ldr	x0, [x24, #0x598]
   1ae44:	mov	x2, x19
   1ae48:	bl	0x214c0
   1ae4c:	mov	x29, x29
   1ae50:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1ae54:	mov	x21, x0
   1ae58:	bl	0x211e0
   1ae5c:	mov	x29, x29
   1ae60:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1ae64:	mov	x23, x0
   1ae68:	mov	x0, x21
   1ae6c:	bl	0x200e8 ; symbol stub for: _objc_release
   1ae70:	cbnz	x23, 0x1ae8c
   1ae74:	add	x19, x19, #0x1
   1ae78:	ldr	x0, [x24, #0x598]
   1ae7c:	bl	0x20960
   1ae80:	cmp	x19, x0
   1ae84:	b.lo	0x1ae40
   1ae88:	mov	x23, #0x0
   1ae8c:	adrp	x8, 27 ; 0x35000
   1ae90:	ldr	x0, [x8, #0xae0] ; Objc class ref: bad class ref
   1ae94:	bl	0x20a20
   1ae98:	mov	x29, x29
   1ae9c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1aea0:	str	x0, [sp, #0x60]
   1aea4:	cbz	x23, 0x1b3e4
   1aea8:	str	xzr, [sp, #0x58]
   1aeac:	str	xzr, [sp, #0x20]
   1aeb0:	adrp	x8, 8 ; 0x22000
   1aeb4:	ldr	d0, [x8, #0x998]
   1aeb8:	str	d0, [sp, #0x8]
   1aebc:	mov	w9, #-0x1
   1aec0:	fmov	d1, #-1.00000000
   1aec4:	adrp	x8, 8 ; 0x22000
   1aec8:	ldr	d0, [x8, #0x9a0]
   1aecc:	str	d0, [sp, #0x88]
   1aed0:	adrp	x8, 8 ; 0x22000
   1aed4:	ldr	d0, [x8, #0x9a8]
   1aed8:	str	d0, [sp, #0x80]
   1aedc:	adrp	x8, 8 ; 0x22000
   1aee0:	ldr	d0, [x8, #0x9b0]
   1aee4:	str	d0, [sp, #0xb0]
   1aee8:	adrp	x8, 8 ; 0x22000
   1aeec:	ldr	d0, [x8, #0x9b8]
   1aef0:	str	d0, [sp, #0xa8]
   1aef4:	adrp	x8, 8 ; 0x22000
   1aef8:	ldr	d0, [x8, #0x9c0]
   1aefc:	str	d0, [sp, #0x78]
   1af00:	adrp	x8, 8 ; 0x22000
   1af04:	ldr	d0, [x8, #0x9c8]
   1af08:	str	d0, [sp, #0x70]
   1af0c:	adrp	x8, 8 ; 0x22000
   1af10:	ldr	d0, [x8, #0x9d0]
   1af14:	str	d0, [sp, #0x68]
   1af18:	adrp	x8, 8 ; 0x22000
   1af1c:	ldr	d0, [x8, #0x9d8]
   1af20:	str	d0, [sp, #0xa0]
   1af24:	adrp	x8, 8 ; 0x22000
   1af28:	ldr	d8, [x8, #0x9e0]
   1af2c:	adrp	x8, 8 ; 0x22000
   1af30:	ldr	d9, [x8, #0x9e8]
   1af34:	adrp	x8, 8 ; 0x22000
   1af38:	ldr	d0, [x8, #0x9f0]
   1af3c:	str	d0, [sp, #0x50]
   1af40:	adrp	x8, 8 ; 0x22000
   1af44:	ldr	d0, [x8, #0x9f8]
   1af48:	str	d0, [sp, #0x48]
   1af4c:	adrp	x8, 8 ; 0x22000
   1af50:	ldr	d0, [x8, #0xa00]
   1af54:	str	d0, [sp, #0x40]
   1af58:	adrp	x8, 8 ; 0x22000
   1af5c:	ldr	d0, [x8, #0xa08]
   1af60:	str	d0, [sp, #0x38]
   1af64:	adrp	x8, 8 ; 0x22000
   1af68:	ldr	d0, [x8, #0xa10]
   1af6c:	str	d0, [sp, #0x30]
   1af70:	adrp	x8, 8 ; 0x22000
   1af74:	ldr	d0, [x8, #0xa18]
   1af78:	str	d0, [sp, #0x28]
   1af7c:	adrp	x8, 24 ; 0x32000
   1af80:	ldr	x8, [x8, #0xd10] ; literal pool symbol address: _NSCalendarIdentifierGregorian
   1af84:	ldr	x27, [x8]
   1af88:	str	w9, [sp, #0x1c]
   1af8c:	ldr	d0, [sp, #0x8]
   1af90:	str	d1, [sp, #0x10]
   1af94:	fmul	d0, d1, d0
   1af98:	ldr	x0, [sp, #0x60]
   1af9c:	bl	0x20a40
   1afa0:	mov	x29, x29
   1afa4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1afa8:	mov	x28, x0
   1afac:	mov	w8, #0x1
   1afb0:	mov	x26, x8
   1afb4:	tst	w8, #0x1
   1afb8:	csel	w8, w20, w22, ne
   1afbc:	cmp	w8, #0x1
   1afc0:	b.ne	0x1b2d8
   1afc4:	mov	x0, x23
   1afc8:	bl	0x20920
   1afcc:	str	d0, [sp, #0xb8]
   1afd0:	mov	x0, x23
   1afd4:	bl	0x20920
   1afd8:	mov.16b	v11, v1
   1afdc:	adrp	x8, 27 ; 0x35000
   1afe0:	ldr	x19, [x8, #0xb30] ; Objc class ref: bad class ref
   1afe4:	mov	x0, x28
   1afe8:	bl	0x200f4 ; symbol stub for: _objc_retain
   1afec:	mov	x24, x0
   1aff0:	mov	x0, x19
   1aff4:	bl	0x20028 ; symbol stub for: _objc_alloc
   1aff8:	mov	x2, x27
   1affc:	bl	0x20e60
   1b000:	mov	x19, x0
   1b004:	adrp	x8, 26 ; 0x35000
   1b008:	ldr	x0, [x8, #0xba8] ; Objc class ref: bad class ref
   1b00c:	mov	x2, #0x0
   1b010:	bl	0x22240
   1b014:	mov	x29, x29
   1b018:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1b01c:	mov	x21, x0
   1b020:	mov	x0, x19
   1b024:	mov	x2, x21
   1b028:	bl	0x21da0
   1b02c:	mov	x0, x21
   1b030:	bl	0x200e8 ; symbol stub for: _objc_release
   1b034:	mov	x0, x19
   1b038:	mov	w2, #0x1c
   1b03c:	mov	x3, x24
   1b040:	bl	0x207a0
   1b044:	mov	x29, x29
   1b048:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1b04c:	mov	x21, x0
   1b050:	mov	x0, x24
   1b054:	bl	0x200e8 ; symbol stub for: _objc_release
   1b058:	mov	x0, x19
   1b05c:	mov	x2, x21
   1b060:	bl	0x20aa0
   1b064:	mov	x29, x29
   1b068:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1b06c:	mov	x25, x0
   1b070:	mov	x0, x19
   1b074:	mov	w2, #0x10
   1b078:	mov	w3, #0x4
   1b07c:	mov	x4, x25
   1b080:	bl	0x21580
   1b084:	ucvtf	d0, x0
   1b088:	fmov	d1, #15.00000000
   1b08c:	fdiv	d3, d11, d1
   1b090:	tst	w26, #0x1
   1b094:	fmov	d1, #18.00000000
   1b098:	fmov	d2, #6.00000000
   1b09c:	fcsel	d1, d2, d1, ne
   1b0a0:	fsub	d1, d1, d3
   1b0a4:	fmov	d2, #24.00000000
   1b0a8:	fdiv	d1, d1, d2
   1b0ac:	fadd	d2, d1, d0
   1b0b0:	ldp	d1, d0, [sp, #0x80]
   1b0b4:	stp	d2, d3, [sp, #0x90]
   1b0b8:	fmadd	d11, d2, d1, d0
   1b0bc:	ldp	d10, d14, [sp, #0xa8]
   1b0c0:	fmul	d0, d11, d14
   1b0c4:	fdiv	d0, d0, d10
   1b0c8:	bl	0x201e4 ; symbol stub for: _sin
   1b0cc:	ldr	d1, [sp, #0x78]
   1b0d0:	fmadd	d12, d0, d1, d11
   1b0d4:	fadd	d0, d11, d11
   1b0d8:	fmul	d0, d0, d14
   1b0dc:	fdiv	d0, d0, d10
   1b0e0:	bl	0x201e4 ; symbol stub for: _sin
   1b0e4:	ldp	d1, d2, [sp, #0x68]
   1b0e8:	fmadd	d0, d0, d2, d12
   1b0ec:	fadd	d0, d0, d1
   1b0f0:	ldr	d11, [sp, #0xa0]
   1b0f4:	mov.16b	v1, v11
   1b0f8:	bl	0x1ff68 ; symbol stub for: _fmod
   1b0fc:	fadd	d1, d0, d11
   1b100:	fcmp	d0, #0.0
   1b104:	fcsel	d15, d1, d0, mi
   1b108:	fmul	d0, d15, d14
   1b10c:	fdiv	d11, d0, d10
   1b110:	mov.16b	v0, v11
   1b114:	bl	0x201e4 ; symbol stub for: _sin
   1b118:	fmul	d12, d0, d8
   1b11c:	mov.16b	v0, v12
   1b120:	bl	0x1fec0 ; symbol stub for: _asin
   1b124:	bl	0x1fef0 ; symbol stub for: _cos
   1b128:	mov.16b	v13, v0
   1b12c:	ldr	d0, [sp, #0xb8]
   1b130:	fmul	d0, d0, d14
   1b134:	fdiv	d0, d0, d10
   1b138:	bl	0x1fe60 ; symbol stub for: ___sincos_stret
   1b13c:	mov	x24, #0x0
   1b140:	fmsub	d0, d12, d0, d9
   1b144:	fmul	d1, d1, d13
   1b148:	fdiv	d10, d0, d1
   1b14c:	fabs	d0, d10
   1b150:	fmov	d1, #1.00000000
   1b154:	fcmp	d0, d1
   1b158:	b.gt	0x1b23c
   1b15c:	mov.16b	v0, v11
   1b160:	bl	0x20208 ; symbol stub for: _tan
   1b164:	ldr	d1, [sp, #0x50]
   1b168:	fmul	d0, d0, d1
   1b16c:	bl	0x1fecc ; symbol stub for: _atan
   1b170:	ldp	d14, d13, [sp, #0xa8]
   1b174:	fmul	d0, d0, d14
   1b178:	fdiv	d0, d0, d13
   1b17c:	mov.16b	v12, v9
   1b180:	mov.16b	v9, v8
   1b184:	ldr	d8, [sp, #0xa0]
   1b188:	mov.16b	v1, v8
   1b18c:	bl	0x1ff68 ; symbol stub for: _fmod
   1b190:	fadd	d1, d0, d8
   1b194:	fcmp	d0, #0.0
   1b198:	fcsel	d0, d1, d0, mi
   1b19c:	ldp	d4, d3, [sp, #0x40]
   1b1a0:	fdiv	d1, d15, d3
   1b1a4:	frintm	d1, d1
   1b1a8:	fdiv	d2, d0, d3
   1b1ac:	frintm	d2, d2
   1b1b0:	fmul	d2, d2, d4
   1b1b4:	fmadd	d1, d1, d3, d2
   1b1b8:	fadd	d0, d0, d1
   1b1bc:	fmov	d15, #15.00000000
   1b1c0:	fdiv	d11, d0, d15
   1b1c4:	mov.16b	v0, v10
   1b1c8:	bl	0x1fea8 ; symbol stub for: _acos
   1b1cc:	fmul	d0, d0, d14
   1b1d0:	fdiv	d0, d0, d13
   1b1d4:	fsub	d1, d8, d0
   1b1d8:	mov.16b	v8, v9
   1b1dc:	mov.16b	v9, v12
   1b1e0:	tst	w26, #0x1
   1b1e4:	fcsel	d0, d1, d0, ne
   1b1e8:	fdiv	d0, d0, d15
   1b1ec:	fadd	d0, d0, d11
   1b1f0:	ldp	d1, d3, [sp, #0x30]
   1b1f4:	ldr	d2, [sp, #0x90]
   1b1f8:	fmadd	d0, d2, d3, d0
   1b1fc:	fadd	d0, d0, d1
   1b200:	ldr	d1, [sp, #0x98]
   1b204:	fsub	d0, d0, d1
   1b208:	fmov	d1, #24.00000000
   1b20c:	bl	0x1ff68 ; symbol stub for: _fmod
   1b210:	fmov	d1, #24.00000000
   1b214:	fadd	d1, d0, d1
   1b218:	fcmp	d0, #0.0
   1b21c:	fcsel	d0, d1, d0, mi
   1b220:	ldr	d1, [sp, #0x28]
   1b224:	fmul	d0, d0, d1
   1b228:	mov	x0, x25
   1b22c:	bl	0x20a40
   1b230:	mov	x29, x29
   1b234:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1b238:	mov	x24, x0
   1b23c:	mov	x0, x25
   1b240:	bl	0x200e8 ; symbol stub for: _objc_release
   1b244:	mov	x0, x21
   1b248:	bl	0x200e8 ; symbol stub for: _objc_release
   1b24c:	mov	x0, x19
   1b250:	bl	0x200e8 ; symbol stub for: _objc_release
   1b254:	cbz	x24, 0x1b2d0
   1b258:	mov	x0, x24
   1b25c:	ldr	x2, [sp, #0x60]
   1b260:	bl	0x22200
   1b264:	fmov	d1, #5.00000000
   1b268:	fcmp	d0, d1
   1b26c:	b.mi	0x1b2d0
   1b270:	ldr	x21, [sp, #0x58]
   1b274:	cbz	x21, 0x1b28c
   1b278:	mov	x0, x24
   1b27c:	mov	x2, x21
   1b280:	bl	0x20760
   1b284:	cmn	x0, #0x1
   1b288:	b.ne	0x1b2d0
   1b28c:	mov	x0, x24
   1b290:	bl	0x200f4 ; symbol stub for: _objc_retain
   1b294:	mov	x19, x0
   1b298:	mov	x0, x21
   1b29c:	bl	0x200e8 ; symbol stub for: _objc_release
   1b2a0:	tst	w26, #0x1
   1b2a4:	adrp	x8, 22 ; 0x31000
   1b2a8:	add	x8, x8, #0x908 ; "time.sunrise"
   1b2ac:	adrp	x9, 22 ; 0x31000
   1b2b0:	add	x9, x9, #0x928 ; "time.sunset"
   1b2b4:	csel	x0, x8, x9, ne
   1b2b8:	bl	0x200f4 ; symbol stub for: _objc_retain
   1b2bc:	mov	x21, x0
   1b2c0:	ldr	x0, [sp, #0x20]
   1b2c4:	bl	0x200e8 ; symbol stub for: _objc_release
   1b2c8:	str	x21, [sp, #0x20]
   1b2cc:	str	x19, [sp, #0x58]
   1b2d0:	mov	x0, x24
   1b2d4:	bl	0x200e8 ; symbol stub for: _objc_release
   1b2d8:	mov	w8, #0x0
   1b2dc:	tbnz	w26, #0x0, 0x1afb0
   1b2e0:	mov	x0, x28
   1b2e4:	bl	0x200e8 ; symbol stub for: _objc_release
   1b2e8:	ldr	d1, [sp, #0x10]
   1b2ec:	fmov	d0, #1.00000000
   1b2f0:	fadd	d1, d1, d0
   1b2f4:	ldr	w9, [sp, #0x1c]
   1b2f8:	add	w9, w9, #0x1
   1b2fc:	cmp	w9, #0x3
   1b300:	b.ne	0x1af88
   1b304:	adrp	x8, 26 ; 0x35000
   1b308:	ldr	x0, [x8, #0xb50] ; Objc class ref: bad class ref
   1b30c:	ldr	x22, [sp, #0x58]
   1b310:	cbz	x22, 0x1b418
   1b314:	bl	0x20028 ; symbol stub for: _objc_alloc
   1b318:	mov	x19, x0
   1b31c:	adrp	x8, 23 ; 0x32000
   1b320:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1b324:	str	x8, [sp, #0xc0]
   1b328:	adrp	x8, 7 ; 0x22000
   1b32c:	ldr	d0, [x8, #0x8f8]
   1b330:	str	d0, [sp, #0xc8]
   1b334:	adrp	x8, 0 ; 0x1b000
   1b338:	add	x8, x8, #0x4c4
   1b33c:	adrp	x9, 18 ; 0x2d000
   1b340:	add	x9, x9, #0xe00
   1b344:	stp	x8, x9, [sp, #0xd0]
   1b348:	mov	x0, x22
   1b34c:	bl	0x200f4 ; symbol stub for: _objc_retain
   1b350:	mov	x20, x0
   1b354:	str	x0, [sp, #0xe0]
   1b358:	ldr	x21, [sp, #0x20]
   1b35c:	mov	x0, x21
   1b360:	bl	0x200f4 ; symbol stub for: _objc_retain
   1b364:	str	x0, [sp, #0xe8]
   1b368:	fmov	d0, xzr
   1b36c:	add	x4, sp, #0xc0
   1b370:	mov	x0, x19
   1b374:	mov	x2, x20
   1b378:	mov	w3, #0x0
   1b37c:	bl	0x20e80
   1b380:	adrp	x20, 27 ; 0x36000
   1b384:	ldr	x8, [x20, #0x3d0]
   1b388:	str	x0, [x20, #0x3d0]
   1b38c:	mov	x0, x8
   1b390:	bl	0x200e8 ; symbol stub for: _objc_release
   1b394:	ldr	x0, [x20, #0x3d0]
   1b398:	fmov	d0, #30.00000000
   1b39c:	bl	0x21dc0
   1b3a0:	adrp	x8, 26 ; 0x35000
   1b3a4:	ldr	x0, [x8, #0xb48] ; Objc class ref: bad class ref
   1b3a8:	bl	0x212e0
   1b3ac:	mov	x29, x29
   1b3b0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1b3b4:	mov	x19, x0
   1b3b8:	ldr	x2, [x20, #0x3d0]
   1b3bc:	adrp	x8, 23 ; 0x32000
   1b3c0:	ldr	x8, [x8, #0xd18] ; literal pool symbol address: _NSRunLoopCommonModes
   1b3c4:	ldr	x3, [x8]
   1b3c8:	bl	0x20420
   1b3cc:	mov	x0, x19
   1b3d0:	bl	0x200e8 ; symbol stub for: _objc_release
   1b3d4:	ldr	x0, [sp, #0xe8]
   1b3d8:	bl	0x200e8 ; symbol stub for: _objc_release
   1b3dc:	ldr	x0, [sp, #0xe0]
   1b3e0:	b	0x1b448
   1b3e4:	adrp	x8, 26 ; 0x35000
   1b3e8:	ldr	x0, [x8, #0xb50] ; Objc class ref: bad class ref
   1b3ec:	adrp	x3, 18 ; 0x2d000
   1b3f0:	add	x3, x3, #0xda0
   1b3f4:	adrp	x8, 7 ; 0x22000
   1b3f8:	ldr	d0, [x8, #0xa20]
   1b3fc:	mov	w2, #0x0
   1b400:	bl	0x21880
   1b404:	mov	x29, x29
   1b408:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1b40c:	ldr	x22, [x25, #0x3d0]
   1b410:	str	x0, [x25, #0x3d0]
   1b414:	b	0x1b454
   1b418:	adrp	x3, 18 ; 0x2d000
   1b41c:	add	x3, x3, #0xdc0
   1b420:	ldr	d0, [sp, #0x8]
   1b424:	mov	w2, #0x0
   1b428:	bl	0x21880
   1b42c:	mov	x29, x29
   1b430:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1b434:	mov	x8, x0
   1b438:	adrp	x9, 27 ; 0x36000
   1b43c:	ldr	x0, [x9, #0x3d0]
   1b440:	str	x8, [x9, #0x3d0]
   1b444:	ldr	x21, [sp, #0x20]

; ===== sub_1b448 =====
   1b448:	bl	0x200e8 ; symbol stub for: _objc_release
   1b44c:	mov	x0, x21
   1b450:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_1b454 =====
   1b454:	mov	x0, x22
   1b458:	bl	0x200e8 ; symbol stub for: _objc_release
   1b45c:	ldr	x0, [sp, #0x60]
   1b460:	bl	0x200e8 ; symbol stub for: _objc_release
   1b464:	mov	x0, x23
   1b468:	bl	0x200e8 ; symbol stub for: _objc_release
   1b46c:	ldur	x8, [x29, #-0xa0]
   1b470:	adrp	x9, 23 ; 0x32000
   1b474:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1b478:	ldr	x9, [x9]
   1b47c:	cmp	x9, x8
   1b480:	b.ne	0x1b4b4
   1b484:	add	sp, sp, #0x1c0
   1b488:	ldp	x29, x30, [sp, #0x90]
   1b48c:	ldp	x20, x19, [sp, #0x80]
   1b490:	ldp	x22, x21, [sp, #0x70]
   1b494:	ldp	x24, x23, [sp, #0x60]
   1b498:	ldp	x26, x25, [sp, #0x50]
   1b49c:	ldp	x28, x27, [sp, #0x40]
   1b4a0:	ldp	d9, d8, [sp, #0x30]
   1b4a4:	ldp	d11, d10, [sp, #0x20]
   1b4a8:	ldp	d13, d12, [sp, #0x10]
   1b4ac:	ldp	d15, d14, [sp], #0xa0
   1b4b0:	ret
   1b4b4:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
   1b4b8:	b	0x1aab0
   1b4bc:	b	0x1aab0
   1b4c0:	b	0x1aab0
   1b4c4:	stp	x20, x19, [sp, #-0x20]!
   1b4c8:	stp	x29, x30, [sp, #0x10]
   1b4cc:	add	x29, sp, #0x10
   1b4d0:	mov	x19, x0
   1b4d4:	ldr	x0, [x0, #0x20]
   1b4d8:	bl	0x22220
   1b4dc:	adrp	x8, 7 ; 0x22000
   1b4e0:	ldr	d1, [x8, #0x940]
   1b4e4:	fcmp	d0, d1
   1b4e8:	b.le	0x1b4f4
   1b4ec:	ldr	x0, [x19, #0x28]
   1b4f0:	bl	0x4324
   1b4f4:	mov	x1, #0x2200
   1b4f8:	movk	x1, #0x33e2, lsl #16
   1b4fc:	movk	x1, #0xe, lsl #32
   1b500:	mov	x0, #0x0
   1b504:	bl	0x1ff38 ; symbol stub for: _dispatch_time
   1b508:	adrp	x1, 23 ; 0x32000
   1b50c:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
   1b510:	adrp	x2, 18 ; 0x2d000
   1b514:	add	x2, x2, #0xde0
   1b518:	ldp	x29, x30, [sp, #0x10]
   1b51c:	ldp	x20, x19, [sp], #0x20
   1b520:	b	0x1fefc ; symbol stub for: _dispatch_after
   1b524:	b	0x1aab0
   1b528:	b	0x1b52c

; ===== sub_1b52c =====
   1b52c:	sub	sp, sp, #0x50
   1b530:	stp	x24, x23, [sp, #0x10]
   1b534:	stp	x22, x21, [sp, #0x20]
   1b538:	stp	x20, x19, [sp, #0x30]
   1b53c:	stp	x29, x30, [sp, #0x40]
   1b540:	add	x29, sp, #0x40
   1b544:	mov	w8, #0x1
   1b548:	str	x8, [sp, #0x8]
   1b54c:	adrp	x8, 27 ; 0x36000
   1b550:	ldr	w0, [x8, #0xb0]
   1b554:	cmn	w0, #0x1
   1b558:	b.eq	0x1b574
   1b55c:	add	x1, sp, #0x8
   1b560:	bl	0x1ffec ; symbol stub for: _notify_get_state
   1b564:	ldr	x8, [sp, #0x8]
   1b568:	cmp	x8, #0x0
   1b56c:	cset	w8, eq
   1b570:	b	0x1b578
   1b574:	mov	w8, #0x0

; ===== sub_1b578 =====
   1b578:	adrp	x9, 27 ; 0x36000
   1b57c:	ldrb	w9, [x9, #0x5a8]
   1b580:	and	w8, w9, w8
   1b584:	and	w19, w8, #0x1
   1b588:	adrp	x22, 27 ; 0x36000
   1b58c:	ldrb	w8, [x22, #0x5a9]
   1b590:	cmp	w8, w19
   1b594:	b.eq	0x1b664
   1b598:	adrp	x8, 26 ; 0x35000
   1b59c:	ldr	x0, [x8, #0xa60] ; Objc class ref: bad class ref
   1b5a0:	bl	0x21f00
   1b5a4:	mov	x29, x29
   1b5a8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1b5ac:	mov	x21, x0
   1b5b0:	adrp	x8, 25 ; 0x34000
   1b5b4:	ldr	x20, [x8, #0xfc8]
   1b5b8:	mov	x1, x20
   1b5bc:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1b5c0:	tbz	w0, #0x0, 0x1b5d4
   1b5c4:	mov	x0, x21
   1b5c8:	mov	x2, x20
   1b5cc:	bl	0x215e0
   1b5d0:	b	0x1b5d8
   1b5d4:	mov	x0, #0x0

; ===== sub_1b5d8 =====
   1b5d8:	bl	0x200f4 ; symbol stub for: _objc_retain
   1b5dc:	mov	x20, x0
   1b5e0:	mov	x0, x21
   1b5e4:	bl	0x200e8 ; symbol stub for: _objc_release
   1b5e8:	adrp	x8, 25 ; 0x34000
   1b5ec:	ldr	x21, [x8, #0xfc0]
   1b5f0:	mov	x0, x20
   1b5f4:	mov	x1, x21
   1b5f8:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1b5fc:	tbz	w0, #0x0, 0x1b65c
   1b600:	adrp	x23, 27 ; 0x36000
   1b604:	ldr	x2, [x23, #0x3f0]
   1b608:	cbnz	x2, 0x1b62c
   1b60c:	adrp	x8, 26 ; 0x35000
   1b610:	ldr	x0, [x8, #0xbb0] ; Objc class ref: bad class ref
   1b614:	bl	0x200d0 ; symbol stub for: _objc_opt_new
   1b618:	ldr	x8, [x23, #0x3f0]
   1b61c:	str	x0, [x23, #0x3f0]
   1b620:	mov	x0, x8
   1b624:	bl	0x200e8 ; symbol stub for: _objc_release
   1b628:	ldr	x2, [x23, #0x3f0]
   1b62c:	mov	x0, x20
   1b630:	mov	x1, x21
   1b634:	mov	x3, x19
   1b638:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   1b63c:	strb	w19, [x22, #0x5a9]
   1b640:	tbnz	w19, #0x0, 0x1b65c
   1b644:	adrp	x8, 27 ; 0x36000
   1b648:	strb	wzr, [x8, #0x5aa]
   1b64c:	adrp	x8, 27 ; 0x36000
   1b650:	ldr	x9, [x8, #0x5b0]
   1b654:	add	x9, x9, #0x1
   1b658:	str	x9, [x8, #0x5b0]
   1b65c:	mov	x0, x20
   1b660:	bl	0x200e8 ; symbol stub for: _objc_release
   1b664:	ldp	x29, x30, [sp, #0x40]
   1b668:	ldp	x20, x19, [sp, #0x30]
   1b66c:	ldp	x22, x21, [sp, #0x20]
   1b670:	ldp	x24, x23, [sp, #0x10]
   1b674:	add	sp, sp, #0x50
   1b678:	ret
   1b67c:	ldr	x0, [x0, #0x20]
   1b680:	b	0x4324

; ===== sub_1b684 =====
   1b684:	sub	sp, sp, #0x60
   1b688:	stp	x22, x21, [sp, #0x30]
   1b68c:	stp	x20, x19, [sp, #0x40]
   1b690:	stp	x29, x30, [sp, #0x50]
   1b694:	add	x29, sp, #0x50
   1b698:	mov	x19, x0
   1b69c:	mov	x0, x1
   1b6a0:	bl	0x200f4 ; symbol stub for: _objc_retain
   1b6a4:	mov	x20, x0
   1b6a8:	adrp	x0, 22 ; 0x31000
   1b6ac:	add	x0, x0, #0xb68 ; "com.johndie.triggr/api/"
   1b6b0:	mov	x2, x19
   1b6b4:	bl	0x220a0
   1b6b8:	mov	x29, x29
   1b6bc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1b6c0:	mov	x21, x0
   1b6c4:	bl	0x20100 ; symbol stub for: _objc_retainAutorelease
   1b6c8:	bl	0x20280
   1b6cc:	mov	x22, x0
   1b6d0:	adrp	x8, 23 ; 0x32000
   1b6d4:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1b6d8:	str	x8, [sp]
   1b6dc:	adrp	x8, 7 ; 0x22000
   1b6e0:	ldr	d0, [x8, #0x8f8]
   1b6e4:	str	d0, [sp, #0x8]
   1b6e8:	adrp	x8, 0 ; 0x1b000
   1b6ec:	add	x8, x8, #0x8c8
   1b6f0:	adrp	x9, 18 ; 0x2d000
   1b6f4:	add	x9, x9, #0xe80
   1b6f8:	stp	x8, x9, [sp, #0x10]
   1b6fc:	mov	x0, x20
   1b700:	bl	0x200f4 ; symbol stub for: _objc_retain
   1b704:	mov	x19, x0
   1b708:	str	x0, [sp, #0x20]
   1b70c:	adrp	x2, 23 ; 0x32000
   1b710:	ldr	x2, [x2, #0xde8] ; literal pool symbol address: __dispatch_main_q
   1b714:	sub	x1, x29, #0x24
   1b718:	mov	x3, sp
   1b71c:	mov	x0, x22
   1b720:	bl	0x20010 ; symbol stub for: _notify_register_dispatch
   1b724:	mov	x20, x0
   1b728:	mov	x0, x21
   1b72c:	bl	0x200e8 ; symbol stub for: _objc_release
   1b730:	cbnz	w20, 0x1b76c
   1b734:	adrp	x8, 27 ; 0x36000
   1b738:	ldr	x20, [x8, #0x360]
   1b73c:	adrp	x8, 26 ; 0x35000
   1b740:	ldr	x0, [x8, #0xa70] ; Objc class ref: bad class ref
   1b744:	ldur	w2, [x29, #-0x24]
   1b748:	bl	0x21400
   1b74c:	mov	x29, x29
   1b750:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1b754:	mov	x21, x0
   1b758:	mov	x0, x20
   1b75c:	mov	x2, x21
   1b760:	bl	0x203c0
   1b764:	mov	x0, x21
   1b768:	bl	0x200e8 ; symbol stub for: _objc_release
   1b76c:	ldr	x0, [sp, #0x20]
   1b770:	bl	0x200e8 ; symbol stub for: _objc_release
   1b774:	mov	x0, x19
   1b778:	bl	0x200e8 ; symbol stub for: _objc_release
   1b77c:	ldp	x29, x30, [sp, #0x50]
   1b780:	ldp	x20, x19, [sp, #0x40]
   1b784:	ldp	x22, x21, [sp, #0x30]
   1b788:	add	sp, sp, #0x60
   1b78c:	ret
   1b790:	sub	sp, sp, #0x30
   1b794:	stp	x20, x19, [sp, #0x10]
   1b798:	stp	x29, x30, [sp, #0x20]
   1b79c:	add	x29, sp, #0x20
   1b7a0:	mov	x19, x0
   1b7a4:	adrp	x8, 23 ; 0x32000
   1b7a8:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1b7ac:	ldr	x8, [x8]
   1b7b0:	str	x8, [sp, #0x8]
   1b7b4:	ldr	x0, [x0, #0x20]
   1b7b8:	bl	0xcd54
   1b7bc:	cbz	w0, 0x1b7f4
   1b7c0:	ldr	x8, [x19, #0x20]
   1b7c4:	str	x8, [sp]
   1b7c8:	adrp	x8, 26 ; 0x35000
   1b7cc:	ldr	x0, [x8, #0xa48] ; Objc class ref: bad class ref
   1b7d0:	mov	x2, sp
   1b7d4:	mov	w3, #0x1
   1b7d8:	bl	0x20580
   1b7dc:	mov	x29, x29
   1b7e0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1b7e4:	mov	x19, x0
   1b7e8:	bl	0x7ec4
   1b7ec:	mov	x0, x19
   1b7f0:	bl	0x200e8 ; symbol stub for: _objc_release
   1b7f4:	ldr	x8, [sp, #0x8]
   1b7f8:	adrp	x9, 23 ; 0x32000
   1b7fc:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1b800:	ldr	x9, [x9]
   1b804:	cmp	x9, x8
   1b808:	b.ne	0x1b81c
   1b80c:	ldp	x29, x30, [sp, #0x20]
   1b810:	ldp	x20, x19, [sp, #0x10]
   1b814:	add	sp, sp, #0x30
   1b818:	ret
   1b81c:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
   1b820:	ldr	x0, [x0, #0x20]
   1b824:	b	0x4324
   1b828:	sub	sp, sp, #0x30
   1b82c:	stp	x20, x19, [sp, #0x10]
   1b830:	stp	x29, x30, [sp, #0x20]
   1b834:	add	x29, sp, #0x20
   1b838:	adrp	x8, 23 ; 0x32000
   1b83c:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1b840:	ldr	x8, [x8]
   1b844:	str	x8, [sp, #0x8]
   1b848:	ldr	x2, [x0, #0x20]
   1b84c:	adrp	x0, 20 ; 0x2f000
   1b850:	add	x0, x0, #0x3c8 ; "menu:"
   1b854:	bl	0x220a0
   1b858:	mov	x29, x29
   1b85c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1b860:	mov	x19, x0
   1b864:	str	x0, [sp]
   1b868:	adrp	x8, 26 ; 0x35000
   1b86c:	ldr	x0, [x8, #0xa48] ; Objc class ref: bad class ref
   1b870:	mov	x2, sp
   1b874:	mov	w3, #0x1
   1b878:	bl	0x20580
   1b87c:	mov	x29, x29
   1b880:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1b884:	mov	x20, x0
   1b888:	bl	0x7ec4
   1b88c:	mov	x0, x20
   1b890:	bl	0x200e8 ; symbol stub for: _objc_release
   1b894:	mov	x0, x19
   1b898:	bl	0x200e8 ; symbol stub for: _objc_release
   1b89c:	ldr	x8, [sp, #0x8]
   1b8a0:	adrp	x9, 23 ; 0x32000
   1b8a4:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1b8a8:	ldr	x9, [x9]
   1b8ac:	cmp	x9, x8
   1b8b0:	b.ne	0x1b8c4
   1b8b4:	ldp	x29, x30, [sp, #0x20]
   1b8b8:	ldp	x20, x19, [sp, #0x10]
   1b8bc:	add	sp, sp, #0x30
   1b8c0:	ret
   1b8c4:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
   1b8c8:	ldr	x0, [x0, #0x20]
   1b8cc:	ldr	x1, [x0, #0x10]
   1b8d0:	br	x1
   1b8d4:	stp	x20, x19, [sp, #-0x20]!
   1b8d8:	stp	x29, x30, [sp, #0x10]
   1b8dc:	add	x29, sp, #0x10
   1b8e0:	adrp	x0, 11 ; 0x26000
   1b8e4:	add	x0, x0, #0x6e4 ; literal pool for: "/usr/lib/libMobileGestalt.dylib"
   1b8e8:	mov	w1, #0x1
   1b8ec:	bl	0x1ff44 ; symbol stub for: _dlopen
   1b8f0:	cbz	x0, 0x1b91c
   1b8f4:	adrp	x1, 11 ; 0x26000
   1b8f8:	add	x1, x1, #0x704 ; literal pool for: "MGCopyAnswer"
   1b8fc:	bl	0x1ff50 ; symbol stub for: _dlsym
   1b900:	cbz	x0, 0x1b91c
   1b904:	mov	x8, x0
   1b908:	adrp	x0, 22 ; 0x31000
   1b90c:	add	x0, x0, #0xc68 ; "HomeButtonType"
   1b910:	blr	x8
   1b914:	mov	x19, x0
   1b918:	b	0x1b920
   1b91c:	mov	x19, #0x0

; ===== sub_1b920 =====
   1b920:	adrp	x8, 26 ; 0x35000
   1b924:	ldr	x0, [x8, #0xa70] ; Objc class ref: bad class ref
   1b928:	bl	0x200b8 ; symbol stub for: _objc_opt_class
   1b92c:	mov	x1, x0
   1b930:	mov	x0, x19
   1b934:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
   1b938:	tbz	w0, #0x0, 0x1b958
   1b93c:	mov	x0, x19
   1b940:	bl	0x20f60
   1b944:	cmp	w0, #0x2
   1b948:	cset	w8, ne
   1b94c:	adrp	x9, 27 ; 0x36000
   1b950:	strb	w8, [x9, #0x5d0]
   1b954:	b	0x1b994
   1b958:	adrp	x8, 26 ; 0x35000
   1b95c:	ldr	x0, [x8, #0xbc8] ; Objc class ref: bad class ref
   1b960:	bl	0x200d0 ; symbol stub for: _objc_opt_new
   1b964:	mov	x20, x0
   1b968:	mov	w2, #0x1
   1b96c:	mov	x3, #0x0
   1b970:	bl	0x20680
   1b974:	mov	x0, x20
   1b978:	bl	0x205e0
   1b97c:	cmp	x0, #0x2
   1b980:	cset	w8, ne
   1b984:	adrp	x9, 27 ; 0x36000
   1b988:	strb	w8, [x9, #0x5d0]
   1b98c:	mov	x0, x20
   1b990:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_1b994 =====
   1b994:	mov	x0, x19
   1b998:	ldp	x29, x30, [sp, #0x10]
   1b99c:	ldp	x20, x19, [sp], #0x20
   1b9a0:	b	0x200e8 ; symbol stub for: _objc_release
   1b9a4:	stp	x20, x19, [sp, #-0x20]!
   1b9a8:	stp	x29, x30, [sp, #0x10]
   1b9ac:	add	x29, sp, #0x10
   1b9b0:	adrp	x19, 27 ; 0x36000
   1b9b4:	ldr	x0, [x19, #0x350]
   1b9b8:	mov	w2, #0x1
   1b9bc:	bl	0x21ac0
   1b9c0:	ldr	x0, [x19, #0x350]
   1b9c4:	str	xzr, [x19, #0x350]
   1b9c8:	ldp	x29, x30, [sp, #0x10]
   1b9cc:	ldp	x20, x19, [sp], #0x20
   1b9d0:	b	0x200e8 ; symbol stub for: _objc_release
   1b9d4:	stp	x20, x19, [sp, #-0x20]!
   1b9d8:	stp	x29, x30, [sp, #0x10]
   1b9dc:	add	x29, sp, #0x10
   1b9e0:	mov	x19, x0
   1b9e4:	adrp	x20, 27 ; 0x36000
   1b9e8:	ldr	x0, [x20, #0x350]
   1b9ec:	mov	w2, #0x1
   1b9f0:	bl	0x21ac0
   1b9f4:	ldr	x0, [x20, #0x350]
   1b9f8:	str	xzr, [x20, #0x350]
   1b9fc:	bl	0x200e8 ; symbol stub for: _objc_release
   1ba00:	ldr	x0, [x19, #0x20]
   1ba04:	ldr	x1, [x0, #0x10]
   1ba08:	ldp	x29, x30, [sp, #0x10]
   1ba0c:	ldp	x20, x19, [sp], #0x20
   1ba10:	br	x1

; ===== sub_1ba14 =====
   1ba14:	sub	sp, sp, #0x190
   1ba18:	stp	d9, d8, [sp, #0x120]
   1ba1c:	stp	x28, x27, [sp, #0x130]
   1ba20:	stp	x26, x25, [sp, #0x140]
   1ba24:	stp	x24, x23, [sp, #0x150]
   1ba28:	stp	x22, x21, [sp, #0x160]
   1ba2c:	stp	x20, x19, [sp, #0x170]
   1ba30:	stp	x29, x30, [sp, #0x180]
   1ba34:	add	x29, sp, #0x180
   1ba38:	mov	x20, x1
   1ba3c:	adrp	x8, 23 ; 0x32000
   1ba40:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1ba44:	ldr	x8, [x8]
   1ba48:	stur	x8, [x29, #-0x70]
   1ba4c:	bl	0x200f4 ; symbol stub for: _objc_retain
   1ba50:	mov	x19, x0
   1ba54:	bl	0x20960
   1ba58:	cmp	x20, x0
   1ba5c:	b.hs	0x1bf60
   1ba60:	adrp	x22, 20 ; 0x2f000
   1ba64:	add	x22, x22, #0x5e8 ; "if:"
   1ba68:	adrp	x27, 26 ; 0x35000
   1ba6c:	adrp	x28, 20 ; 0x2f000
   1ba70:	add	x28, x28, #0x608 ; "else"
   1ba74:	adrp	x8, 7 ; 0x22000
   1ba78:	ldr	d9, [x8, #0x8f8]
   1ba7c:	adrp	x23, 27 ; 0x36000
   1ba80:	add	x23, x23, #0x538
   1ba84:	mov	x0, x19
   1ba88:	mov	x2, x20
   1ba8c:	bl	0x214c0
   1ba90:	mov	x29, x29
   1ba94:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1ba98:	mov	x21, x0
   1ba9c:	mov	x2, x22
   1baa0:	bl	0x20d80
   1baa4:	cbz	w0, 0x1bb18
   1baa8:	mov	x0, x22
   1baac:	bl	0x21160
   1bab0:	mov	x2, x0
   1bab4:	mov	x0, x21
   1bab8:	bl	0x22140
   1babc:	mov	x29, x29
   1bac0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1bac4:	mov	x24, x0
   1bac8:	str	x0, [sp, #0x88]
   1bacc:	ldr	x0, [x27, #0xa48]
   1bad0:	add	x2, sp, #0x88
   1bad4:	mov	w3, #0x1
   1bad8:	bl	0x20580
   1badc:	mov	x29, x29
   1bae0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1bae4:	mov	x25, x0
   1bae8:	mov	x1, #0x0
   1baec:	bl	0xc4b0
   1baf0:	mov	x26, x0
   1baf4:	mov	x0, x25
   1baf8:	bl	0x200e8 ; symbol stub for: _objc_release
   1bafc:	mov	x0, x24
   1bb00:	bl	0x200e8 ; symbol stub for: _objc_release
   1bb04:	tbnz	w26, #0x0, 0x1bb3c
   1bb08:	mov	x0, x19
   1bb0c:	mov	x1, x20
   1bb10:	mov	w2, #0x1
   1bb14:	b	0x1bb34
   1bb18:	mov	x0, x21
   1bb1c:	mov	x2, x28
   1bb20:	bl	0x21000
   1bb24:	cbz	w0, 0x1bb5c
   1bb28:	mov	x0, x19
   1bb2c:	mov	x1, x20
   1bb30:	mov	w2, #0x0

; ===== sub_1bb34 =====
   1bb34:	bl	0x1c01c
   1bb38:	mov	x20, x0

; ===== sub_1bb3c =====
   1bb3c:	mov	x0, x21
   1bb40:	bl	0x200e8 ; symbol stub for: _objc_release
   1bb44:	add	x20, x20, #0x1
   1bb48:	mov	x0, x19
   1bb4c:	bl	0x20960
   1bb50:	cmp	x20, x0
   1bb54:	b.lo	0x1ba84
   1bb58:	b	0x1bf60
   1bb5c:	mov	x0, x21
   1bb60:	adrp	x2, 20 ; 0x2f000
   1bb64:	add	x2, x2, #0x628 ; "endif"
   1bb68:	bl	0x21000
   1bb6c:	tbnz	w0, #0x0, 0x1bb3c
   1bb70:	mov	x0, x21
   1bb74:	adrp	x2, 20 ; 0x2f000
   1bb78:	add	x2, x2, #0x5c8 ; "pause:"
   1bb7c:	bl	0x20d80
   1bb80:	tbnz	w0, #0x0, 0x1bea0
   1bb84:	mov	x0, x21
   1bb88:	bl	0x200f4 ; symbol stub for: _objc_retain
   1bb8c:	mov	x26, x0
   1bb90:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
   1bb94:	mov.16b	v8, v0
   1bb98:	mov	x0, x26
   1bb9c:	adrp	x2, 20 ; 0x2f000
   1bba0:	add	x2, x2, #0x5a8
   1bba4:	bl	0x21700
   1bba8:	mov	x8, #0x7fffffffffffffff
   1bbac:	cmp	x0, x8
   1bbb0:	b.ne	0x1bbc0
   1bbb4:	mov	x25, #0x0
   1bbb8:	mov	x22, #0x0
   1bbbc:	b	0x1bbf4
   1bbc0:	mov	x24, x0
   1bbc4:	mov	x0, x26
   1bbc8:	mov	x2, x24
   1bbcc:	bl	0x22160
   1bbd0:	mov	x29, x29
   1bbd4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1bbd8:	mov	x22, x0
   1bbdc:	add	x2, x24, #0x1
   1bbe0:	mov	x0, x26
   1bbe4:	bl	0x22140
   1bbe8:	mov	x29, x29
   1bbec:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1bbf0:	mov	x25, x0

; ===== sub_1bbf4 =====
   1bbf4:	mov	x0, x22
   1bbf8:	adrp	x2, 21 ; 0x30000
   1bbfc:	add	x2, x2, #0x508 ; "toggle"
   1bc00:	bl	0x21000
   1bc04:	str	x22, [sp, #0x8]
   1bc08:	tbnz	w0, #0x0, 0x1bc34
   1bc0c:	mov	x0, x22
   1bc10:	adrp	x2, 21 ; 0x30000
   1bc14:	add	x2, x2, #0x528 ; "on"
   1bc18:	bl	0x21000
   1bc1c:	tbnz	w0, #0x0, 0x1bc34
   1bc20:	mov	x0, x22
   1bc24:	adrp	x2, 21 ; 0x30000
   1bc28:	add	x2, x2, #0x548 ; "off"
   1bc2c:	bl	0x21000
   1bc30:	cbz	w0, 0x1bcac
   1bc34:	mov	x0, x25
   1bc38:	adrp	x2, 21 ; 0x30000
   1bc3c:	add	x2, x2, #0x588 ; "wifi"
   1bc40:	bl	0x21000
   1bc44:	adrp	x28, 23 ; 0x32000
   1bc48:	add	x28, x28, #0x9c0
   1bc4c:	tbnz	w0, #0x0, 0x1bcf0
   1bc50:	mov	x0, x25
   1bc54:	adrp	x2, 21 ; 0x30000
   1bc58:	add	x2, x2, #0x5a8 ; "bluetooth"
   1bc5c:	bl	0x21000
   1bc60:	adrp	x28, 23 ; 0x32000
   1bc64:	add	x28, x28, #0x9d8
   1bc68:	tbnz	w0, #0x0, 0x1bcf0
   1bc6c:	mov	x0, x25
   1bc70:	adrp	x2, 21 ; 0x30000
   1bc74:	add	x2, x2, #0x628 ; "airplane"
   1bc78:	bl	0x21000
   1bc7c:	adrp	x28, 23 ; 0x32000
   1bc80:	add	x28, x28, #0x9f0
   1bc84:	tbnz	w0, #0x0, 0x1bcf0
   1bc88:	mov	x0, x25
   1bc8c:	adrp	x2, 21 ; 0x30000
   1bc90:	add	x2, x2, #0x5e8 ; "lowpower"
   1bc94:	bl	0x21000
   1bc98:	cmp	w0, #0x0
   1bc9c:	adrp	x8, 23 ; 0x32000
   1bca0:	add	x8, x8, #0xa08
   1bca4:	csel	x28, x8, xzr, ne
   1bca8:	b	0x1bcf0
   1bcac:	mov	x0, x26
   1bcb0:	adrp	x2, 20 ; 0x2f000
   1bcb4:	add	x2, x2, #0xe08 ; "system.lock"
   1bcb8:	bl	0x21000
   1bcbc:	tbnz	w0, #0x0, 0x1bce8
   1bcc0:	mov	x0, x26
   1bcc4:	adrp	x2, 20 ; 0x2f000
   1bcc8:	add	x2, x2, #0xc48 ; "system.home"
   1bccc:	bl	0x21000
   1bcd0:	tbnz	w0, #0x0, 0x1bce8
   1bcd4:	mov	x0, x26
   1bcd8:	adrp	x2, 21 ; 0x30000
   1bcdc:	add	x2, x2, #0x428 ; "system.unlock"
   1bce0:	bl	0x21000
   1bce4:	tbz	w0, #0x0, 0x1bdec
   1bce8:	adrp	x28, 23 ; 0x32000
   1bcec:	add	x28, x28, #0xa20

; ===== sub_1bcf0 =====
   1bcf0:	movi.16b	v0, #0x0
   1bcf4:	stp	q0, q0, [sp, #0x60]
   1bcf8:	stp	q0, q0, [sp, #0x40]
   1bcfc:	add	x2, sp, #0x40
   1bd00:	add	x3, sp, #0x90
   1bd04:	mov	x0, x28
   1bd08:	mov	w4, #0x10
   1bd0c:	bl	0x20980
   1bd10:	cbz	x0, 0x1bd74
   1bd14:	mov	x24, x0
   1bd18:	ldr	x8, [sp, #0x50]
   1bd1c:	ldr	x22, [x8]
   1bd20:	mov	x27, #0x0
   1bd24:	ldr	x8, [sp, #0x50]
   1bd28:	ldr	x8, [x8]
   1bd2c:	cmp	x8, x22
   1bd30:	b.eq	0x1bd3c
   1bd34:	mov	x0, x28
   1bd38:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   1bd3c:	ldr	x8, [sp, #0x48]
   1bd40:	ldr	x0, [x8, x27, lsl #3]
   1bd44:	bl	0x20f60
   1bd48:	str	d8, [x23, w0, sxtw #3]
   1bd4c:	add	x27, x27, #0x1
   1bd50:	cmp	x24, x27
   1bd54:	b.ne	0x1bd24
   1bd58:	add	x2, sp, #0x40
   1bd5c:	add	x3, sp, #0x90
   1bd60:	mov	x0, x28
   1bd64:	mov	w4, #0x10
   1bd68:	bl	0x20980
   1bd6c:	mov	x24, x0
   1bd70:	cbnz	x0, 0x1bd20
   1bd74:	mov	x0, x25
   1bd78:	bl	0x200e8 ; symbol stub for: _objc_release
   1bd7c:	ldr	x0, [sp, #0x8]
   1bd80:	bl	0x200e8 ; symbol stub for: _objc_release
   1bd84:	mov	x0, x26
   1bd88:	bl	0x200e8 ; symbol stub for: _objc_release
   1bd8c:	mov	x0, x26
   1bd90:	bl	0x200f4 ; symbol stub for: _objc_retain
   1bd94:	adrp	x8, 23 ; 0x32000
   1bd98:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1bd9c:	str	x8, [sp, #0x90]
   1bda0:	str	d9, [sp, #0x98]
   1bda4:	adrp	x8, 1 ; 0x1c000
   1bda8:	add	x9, x8, #0x180
   1bdac:	adrp	x8, 17 ; 0x2c000
   1bdb0:	add	x8, x8, #0xb0
   1bdb4:	stp	x9, x8, [sp, #0xa0]
   1bdb8:	str	x0, [sp, #0xb0]
   1bdbc:	add	x1, sp, #0x90
   1bdc0:	adrp	x0, 23 ; 0x32000
   1bdc4:	ldr	x0, [x0, #0xde8] ; literal pool symbol address: __dispatch_main_q
   1bdc8:	bl	0x1ff08 ; symbol stub for: _dispatch_async
   1bdcc:	ldr	x0, [sp, #0xb0]
   1bdd0:	bl	0x200e8 ; symbol stub for: _objc_release
   1bdd4:	adrp	x22, 20 ; 0x2f000
   1bdd8:	add	x22, x22, #0x5e8 ; "if:"
   1bddc:	adrp	x27, 26 ; 0x35000
   1bde0:	adrp	x28, 20 ; 0x2f000
   1bde4:	add	x28, x28, #0x608 ; "else"
   1bde8:	b	0x1bb3c
   1bdec:	mov	x0, x26
   1bdf0:	adrp	x2, 20 ; 0x2f000
   1bdf4:	add	x2, x2, #0xce8 ; "system.sleep"
   1bdf8:	bl	0x21000
   1bdfc:	tbnz	w0, #0x0, 0x1be3c
   1be00:	mov	x0, x26
   1be04:	adrp	x2, 20 ; 0x2f000
   1be08:	add	x2, x2, #0xa08 ; "system.respring"
   1be0c:	bl	0x21000
   1be10:	tbnz	w0, #0x0, 0x1be3c
   1be14:	mov	x0, x26
   1be18:	adrp	x2, 20 ; 0x2f000
   1be1c:	add	x2, x2, #0xd48 ; "system.safemode"
   1be20:	bl	0x21000
   1be24:	tbnz	w0, #0x0, 0x1be3c
   1be28:	mov	x0, x26
   1be2c:	adrp	x2, 21 ; 0x30000
   1be30:	add	x2, x2, #0x448 ; "system.locktoggle"
   1be34:	bl	0x21000
   1be38:	tbz	w0, #0x0, 0x1be48
   1be3c:	adrp	x28, 23 ; 0x32000
   1be40:	add	x28, x28, #0xa38
   1be44:	b	0x1bcf0
   1be48:	mov	x0, x26
   1be4c:	adrp	x2, 22 ; 0x31000
   1be50:	add	x2, x2, #0xd48 ; "media."
   1be54:	bl	0x20d80
   1be58:	adrp	x28, 23 ; 0x32000
   1be5c:	add	x28, x28, #0xa50
   1be60:	tbnz	w0, #0x0, 0x1bcf0
   1be64:	mov	x0, x26
   1be68:	adrp	x2, 20 ; 0x2f000
   1be6c:	add	x2, x2, #0x428 ; "shell:"
   1be70:	bl	0x20d80
   1be74:	tbnz	w0, #0x0, 0x1be8c
   1be78:	mov	x0, x26
   1be7c:	adrp	x2, 20 ; 0x2f000
   1be80:	add	x2, x2, #0x3e8 ; "shortcut:"
   1be84:	bl	0x20d80
   1be88:	cbz	w0, 0x1be98
   1be8c:	adrp	x28, 23 ; 0x32000
   1be90:	add	x28, x28, #0xa68
   1be94:	b	0x1bcf0
   1be98:	mov	x28, #0x0
   1be9c:	b	0x1bcf0
   1bea0:	adrp	x0, 20 ; 0x2f000
   1bea4:	add	x0, x0, #0x5c8 ; "pause:"
   1bea8:	bl	0x21160
   1beac:	mov	x2, x0
   1beb0:	mov	x0, x21
   1beb4:	bl	0x22140
   1beb8:	mov	x29, x29
   1bebc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1bec0:	mov	x22, x0
   1bec4:	bl	0x20be0
   1bec8:	mov.16b	v8, v0
   1becc:	mov	x0, x22
   1bed0:	bl	0x200e8 ; symbol stub for: _objc_release
   1bed4:	adrp	x8, 7 ; 0x22000
   1bed8:	ldr	d0, [x8, #0xa28]
   1bedc:	fcmp	d8, d0
   1bee0:	fcsel	d0, d0, d8, mi
   1bee4:	fmov	d1, #30.00000000
   1bee8:	fminnm	d0, d0, d1
   1beec:	add	x22, x20, #0x1
   1bef0:	adrp	x8, 7 ; 0x22000
   1bef4:	ldr	d1, [x8, #0x900]
   1bef8:	fmul	d0, d0, d1
   1befc:	fcvtzs	x1, d0
   1bf00:	mov	x0, #0x0
   1bf04:	bl	0x1ff38 ; symbol stub for: _dispatch_time
   1bf08:	mov	x20, x0
   1bf0c:	adrp	x8, 23 ; 0x32000
   1bf10:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1bf14:	str	x8, [sp, #0x10]
   1bf18:	str	d9, [sp, #0x18]
   1bf1c:	adrp	x8, 1 ; 0x1c000
   1bf20:	add	x8, x8, #0x174
   1bf24:	adrp	x9, 17 ; 0x2c000
   1bf28:	add	x9, x9, #0x340
   1bf2c:	stp	x8, x9, [sp, #0x20]
   1bf30:	mov	x0, x19
   1bf34:	bl	0x200f4 ; symbol stub for: _objc_retain
   1bf38:	stp	x0, x22, [sp, #0x30]
   1bf3c:	adrp	x1, 23 ; 0x32000
   1bf40:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
   1bf44:	add	x2, sp, #0x10
   1bf48:	mov	x0, x20
   1bf4c:	bl	0x1fefc ; symbol stub for: _dispatch_after
   1bf50:	ldr	x0, [sp, #0x30]
   1bf54:	bl	0x200e8 ; symbol stub for: _objc_release
   1bf58:	mov	x0, x21
   1bf5c:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_1bf60 =====
   1bf60:	mov	x0, x19
   1bf64:	bl	0x200e8 ; symbol stub for: _objc_release
   1bf68:	ldur	x8, [x29, #-0x70]
   1bf6c:	adrp	x9, 23 ; 0x32000
   1bf70:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1bf74:	ldr	x9, [x9]
   1bf78:	cmp	x9, x8
   1bf7c:	b.ne	0x1bfa4
   1bf80:	ldp	x29, x30, [sp, #0x180]
   1bf84:	ldp	x20, x19, [sp, #0x170]
   1bf88:	ldp	x22, x21, [sp, #0x160]
   1bf8c:	ldp	x24, x23, [sp, #0x150]
   1bf90:	ldp	x26, x25, [sp, #0x140]
   1bf94:	ldp	x28, x27, [sp, #0x130]
   1bf98:	ldp	d9, d8, [sp, #0x120]
   1bf9c:	add	sp, sp, #0x190
   1bfa0:	ret
   1bfa4:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
   1bfa8:	sub	sp, sp, #0x40
   1bfac:	stp	x29, x30, [sp, #0x30]
   1bfb0:	add	x29, sp, #0x30
   1bfb4:	adrp	x8, 23 ; 0x32000
   1bfb8:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1bfbc:	str	x8, [sp, #0x8]
   1bfc0:	adrp	x8, 7 ; 0x22000
   1bfc4:	ldr	d0, [x8, #0x8f8]
   1bfc8:	adrp	x8, 1 ; 0x1c000
   1bfcc:	add	x8, x8, #0x10
   1bfd0:	str	d0, [sp, #0x10]
   1bfd4:	adrp	x9, 17 ; 0x2c000
   1bfd8:	add	x9, x9, #0xb0
   1bfdc:	stp	x8, x9, [sp, #0x18]
   1bfe0:	ldr	x0, [x0, #0x20]
   1bfe4:	bl	0x200f4 ; symbol stub for: _objc_retain
   1bfe8:	str	x0, [sp, #0x28]
   1bfec:	adrp	x0, 23 ; 0x32000
   1bff0:	ldr	x0, [x0, #0xde8] ; literal pool symbol address: __dispatch_main_q
   1bff4:	add	x1, sp, #0x8
   1bff8:	bl	0x1ff08 ; symbol stub for: _dispatch_async
   1bffc:	ldr	x0, [sp, #0x28]
   1c000:	bl	0x200e8 ; symbol stub for: _objc_release
   1c004:	ldp	x29, x30, [sp, #0x30]
   1c008:	add	sp, sp, #0x40
   1c00c:	ret
   1c010:	ldr	x0, [x0, #0x20]
   1c014:	mov	x1, #0x0
   1c018:	b	0x1ba14

; ===== sub_1c01c =====
   1c01c:	stp	x28, x27, [sp, #-0x60]!
   1c020:	stp	x26, x25, [sp, #0x10]
   1c024:	stp	x24, x23, [sp, #0x20]
   1c028:	stp	x22, x21, [sp, #0x30]
   1c02c:	stp	x20, x19, [sp, #0x40]
   1c030:	stp	x29, x30, [sp, #0x50]
   1c034:	add	x29, sp, #0x50
   1c038:	mov	x20, x2
   1c03c:	mov	x22, x1
   1c040:	bl	0x200f4 ; symbol stub for: _objc_retain
   1c044:	mov	x19, x0
   1c048:	adrp	x21, 19 ; 0x2f000
   1c04c:	add	x21, x21, #0x5e8 ; "if:"
   1c050:	adrp	x23, 19 ; 0x2f000
   1c054:	add	x23, x23, #0x628 ; "endif"
   1c058:	adrp	x24, 19 ; 0x2f000
   1c05c:	add	x24, x24, #0x608 ; "else"
   1c060:	add	x22, x22, #0x1
   1c064:	mov	x0, x19
   1c068:	bl	0x20960
   1c06c:	cmp	x22, x0
   1c070:	b.hs	0x1c130
   1c074:	mov	x27, #0x0
   1c078:	cmp	x27, #0x0
   1c07c:	csel	w28, wzr, w20, ne
   1c080:	mov	x25, x22
   1c084:	mov	x0, x19
   1c088:	mov	x2, x25
   1c08c:	bl	0x214c0
   1c090:	mov	x29, x29
   1c094:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c098:	mov	x26, x0
   1c09c:	mov	x2, x21
   1c0a0:	bl	0x20d80
   1c0a4:	tbnz	w0, #0x0, 0x1c0dc
   1c0a8:	mov	x0, x26
   1c0ac:	mov	x2, x23
   1c0b0:	bl	0x21000
   1c0b4:	cbnz	w0, 0x1c0e4
   1c0b8:	cbnz	w28, 0x1c110
   1c0bc:	mov	x0, x26
   1c0c0:	bl	0x200e8 ; symbol stub for: _objc_release
   1c0c4:	add	x25, x25, #0x1
   1c0c8:	mov	x0, x19
   1c0cc:	bl	0x20960
   1c0d0:	cmp	x25, x0
   1c0d4:	b.lo	0x1c084
   1c0d8:	b	0x1c130
   1c0dc:	mov	w8, #0x1
   1c0e0:	b	0x1c0ec
   1c0e4:	cbz	x27, 0x1c164
   1c0e8:	mov	x8, #-0x1

; ===== sub_1c0ec =====
   1c0ec:	add	x27, x27, x8
   1c0f0:	mov	x0, x26
   1c0f4:	bl	0x200e8 ; symbol stub for: _objc_release
   1c0f8:	add	x22, x25, #0x1
   1c0fc:	mov	x0, x19
   1c100:	bl	0x20960
   1c104:	cmp	x22, x0
   1c108:	b.lo	0x1c078
   1c10c:	b	0x1c130
   1c110:	mov	x0, x26
   1c114:	mov	x2, x24
   1c118:	bl	0x21000
   1c11c:	mov	x25, x0
   1c120:	mov	x0, x26
   1c124:	bl	0x200e8 ; symbol stub for: _objc_release
   1c128:	tbz	w25, #0x0, 0x1c060
   1c12c:	b	0x1c13c

; ===== sub_1c130 =====
   1c130:	mov	x0, x19
   1c134:	bl	0x20960
   1c138:	mov	x22, x0

; ===== sub_1c13c =====
   1c13c:	mov	x0, x19
   1c140:	bl	0x200e8 ; symbol stub for: _objc_release
   1c144:	mov	x0, x22
   1c148:	ldp	x29, x30, [sp, #0x50]
   1c14c:	ldp	x20, x19, [sp, #0x40]
   1c150:	ldp	x22, x21, [sp, #0x30]
   1c154:	ldp	x24, x23, [sp, #0x20]
   1c158:	ldp	x26, x25, [sp, #0x10]
   1c15c:	ldp	x28, x27, [sp], #0x60
   1c160:	ret
   1c164:	mov	x0, x26
   1c168:	bl	0x200e8 ; symbol stub for: _objc_release
   1c16c:	mov	x22, x25
   1c170:	b	0x1c13c
   1c174:	ldp	x8, x1, [x0, #0x20]
   1c178:	mov	x0, x8
   1c17c:	b	0x1ba14
   1c180:	sub	sp, sp, #0x80
   1c184:	stp	x24, x23, [sp, #0x40]
   1c188:	stp	x22, x21, [sp, #0x50]
   1c18c:	stp	x20, x19, [sp, #0x60]
   1c190:	stp	x29, x30, [sp, #0x70]
   1c194:	add	x29, sp, #0x70
   1c198:	mov	x20, x0
   1c19c:	bl	0xdfc8
   1c1a0:	mov	x29, x29
   1c1a4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c1a8:	mov	x21, x0
   1c1ac:	ldr	x2, [x20, #0x20]
   1c1b0:	bl	0x214e0
   1c1b4:	mov	x29, x29
   1c1b8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c1bc:	mov	x22, x0
   1c1c0:	cbz	x0, 0x1c1d4
   1c1c4:	mov	x0, x22
   1c1c8:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   1c1cc:	mov	x19, x0
   1c1d0:	b	0x1c1f8
   1c1d4:	ldr	x0, [x20, #0x20]
   1c1d8:	bl	0xdff8
   1c1dc:	mov	x29, x29
   1c1e0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c1e4:	mov	x23, x0
   1c1e8:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   1c1ec:	mov	x19, x0
   1c1f0:	mov	x0, x23
   1c1f4:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_1c1f8 =====
   1c1f8:	mov	x0, x22
   1c1fc:	bl	0x200e8 ; symbol stub for: _objc_release
   1c200:	mov	x0, x21
   1c204:	bl	0x200e8 ; symbol stub for: _objc_release
   1c208:	cbz	x19, 0x1c220
   1c20c:	ldr	x8, [x19, #0x10]
   1c210:	mov	x0, x19
   1c214:	mov	w1, #0x0
   1c218:	blr	x8
   1c21c:	b	0x1c33c
   1c220:	ldr	x0, [x20, #0x20]
   1c224:	adrp	x2, 19 ; 0x2f000
   1c228:	add	x2, x2, #0x3e8 ; "shortcut:"
   1c22c:	bl	0x20d80
   1c230:	ldr	x21, [x20, #0x20]
   1c234:	cbz	w0, 0x1c2dc
   1c238:	adrp	x0, 19 ; 0x2f000
   1c23c:	add	x0, x0, #0x3e8 ; "shortcut:"
   1c240:	bl	0x21160
   1c244:	mov	x2, x0
   1c248:	mov	x0, x21
   1c24c:	bl	0x22140
   1c250:	mov	x29, x29
   1c254:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c258:	bl	0x200f4 ; symbol stub for: _objc_retain
   1c25c:	mov	x20, x0
   1c260:	adrp	x8, 26 ; 0x36000
   1c264:	ldrb	w8, [x8, #0x83]
   1c268:	tbz	w8, #0x0, 0x1c324
   1c26c:	mov	w0, #0x19
   1c270:	mov	x1, #0x0
   1c274:	bl	0x1ff14 ; symbol stub for: _dispatch_get_global_queue
   1c278:	mov	x29, x29
   1c27c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c280:	mov	x21, x0
   1c284:	adrp	x8, 22 ; 0x32000
   1c288:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1c28c:	str	x8, [sp, #0x8]
   1c290:	adrp	x8, 6 ; 0x22000
   1c294:	ldr	d0, [x8, #0x8f8]
   1c298:	str	d0, [sp, #0x10]
   1c29c:	adrp	x8, 0 ; 0x1c000
   1c2a0:	add	x8, x8, #0xc1c
   1c2a4:	adrp	x9, 16 ; 0x2c000
   1c2a8:	add	x9, x9, #0xb0
   1c2ac:	stp	x8, x9, [sp, #0x18]
   1c2b0:	mov	x0, x20
   1c2b4:	bl	0x200f4 ; symbol stub for: _objc_retain
   1c2b8:	str	x0, [sp, #0x28]
   1c2bc:	add	x1, sp, #0x8
   1c2c0:	mov	x0, x21
   1c2c4:	bl	0x1ff08 ; symbol stub for: _dispatch_async
   1c2c8:	mov	x0, x21
   1c2cc:	bl	0x200e8 ; symbol stub for: _objc_release
   1c2d0:	ldr	x0, [sp, #0x28]
   1c2d4:	bl	0x200e8 ; symbol stub for: _objc_release
   1c2d8:	b	0x1c32c
   1c2dc:	adrp	x2, 19 ; 0x2f000
   1c2e0:	add	x2, x2, #0x408 ; "url:"
   1c2e4:	mov	x0, x21
   1c2e8:	bl	0x20d80
   1c2ec:	ldr	x21, [x20, #0x20]
   1c2f0:	cbz	w0, 0x1c35c
   1c2f4:	adrp	x0, 19 ; 0x2f000
   1c2f8:	add	x0, x0, #0x408 ; "url:"
   1c2fc:	bl	0x21160
   1c300:	mov	x2, x0
   1c304:	mov	x0, x21
   1c308:	bl	0x22140
   1c30c:	mov	x29, x29
   1c310:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c314:	mov	x20, x0
   1c318:	mov	x1, #0x0
   1c31c:	bl	0xba78
   1c320:	b	0x1c334
   1c324:	mov	x0, x20
   1c328:	bl	0x4104

; ===== sub_1c32c =====
   1c32c:	mov	x0, x20

; ===== sub_1c330 =====
   1c330:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_1c334 =====
   1c334:	mov	x0, x20
   1c338:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_1c33c =====
   1c33c:	mov	x0, x19
   1c340:	bl	0x200e8 ; symbol stub for: _objc_release
   1c344:	ldp	x29, x30, [sp, #0x70]
   1c348:	ldp	x20, x19, [sp, #0x60]
   1c34c:	ldp	x22, x21, [sp, #0x50]
   1c350:	ldp	x24, x23, [sp, #0x40]
   1c354:	add	sp, sp, #0x80
   1c358:	ret
   1c35c:	adrp	x2, 19 ; 0x2f000
   1c360:	add	x2, x2, #0x428 ; "shell:"
   1c364:	mov	x0, x21
   1c368:	bl	0x20d80
   1c36c:	ldr	x21, [x20, #0x20]
   1c370:	cbz	w0, 0x1c408
   1c374:	adrp	x0, 19 ; 0x2f000
   1c378:	add	x0, x0, #0x428 ; "shell:"
   1c37c:	bl	0x21160
   1c380:	mov	x2, x0
   1c384:	mov	x0, x21
   1c388:	bl	0x22140
   1c38c:	mov	x29, x29
   1c390:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c394:	mov	x20, x0
   1c398:	mov	w0, #0x11
   1c39c:	mov	x1, #0x0
   1c3a0:	bl	0x1ff14 ; symbol stub for: _dispatch_get_global_queue
   1c3a4:	mov	x29, x29
   1c3a8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c3ac:	mov	x21, x0
   1c3b0:	adrp	x8, 22 ; 0x32000
   1c3b4:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1c3b8:	str	x8, [sp, #0x8]
   1c3bc:	adrp	x8, 6 ; 0x22000
   1c3c0:	ldr	d0, [x8, #0x8f8]
   1c3c4:	adrp	x8, 1 ; 0x1d000
   1c3c8:	add	x8, x8, #0x13c
   1c3cc:	str	d0, [sp, #0x10]
   1c3d0:	adrp	x9, 16 ; 0x2c000
   1c3d4:	add	x9, x9, #0xb0
   1c3d8:	stp	x8, x9, [sp, #0x18]
   1c3dc:	str	x20, [sp, #0x28]
   1c3e0:	mov	x0, x20
   1c3e4:	bl	0x200f4 ; symbol stub for: _objc_retain
   1c3e8:	mov	x20, x0
   1c3ec:	add	x1, sp, #0x8
   1c3f0:	mov	x0, x21
   1c3f4:	bl	0x1ff08 ; symbol stub for: _dispatch_async
   1c3f8:	mov	x0, x21
   1c3fc:	bl	0x200e8 ; symbol stub for: _objc_release
   1c400:	ldr	x0, [sp, #0x28]
   1c404:	b	0x1c330
   1c408:	adrp	x2, 19 ; 0x2f000
   1c40c:	add	x2, x2, #0x468 ; "ext:"
   1c410:	mov	x0, x21
   1c414:	bl	0x20d80
   1c418:	mov	x8, x0
   1c41c:	ldr	x0, [x20, #0x20]
   1c420:	cbz	w8, 0x1c580
   1c424:	bl	0x200f4 ; symbol stub for: _objc_retain
   1c428:	mov	x20, x0
   1c42c:	bl	0xde6c
   1c430:	mov	x29, x29
   1c434:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c438:	mov	x21, x0
   1c43c:	mov	x2, #0x0
   1c440:	bl	0x214c0
   1c444:	mov	x29, x29
   1c448:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c44c:	mov	x23, x0
   1c450:	bl	0xdab0
   1c454:	mov	x29, x29
   1c458:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c45c:	mov	x24, x0
   1c460:	adrp	x2, 19 ; 0x2f000
   1c464:	add	x2, x2, #0x488 ; "Program"
   1c468:	bl	0x214e0
   1c46c:	mov	x29, x29
   1c470:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c474:	mov	x22, x0
   1c478:	mov	x0, x24
   1c47c:	bl	0x200e8 ; symbol stub for: _objc_release
   1c480:	mov	x0, x23
   1c484:	bl	0x200e8 ; symbol stub for: _objc_release
   1c488:	cbz	x22, 0x1c570
   1c48c:	adrp	x8, 25 ; 0x35000
   1c490:	ldr	x0, [x8, #0xa78] ; Objc class ref: bad class ref
   1c494:	bl	0x20b00
   1c498:	mov	x29, x29
   1c49c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c4a0:	mov	x23, x0
   1c4a4:	mov	x2, x22
   1c4a8:	bl	0x210a0
   1c4ac:	mov	x24, x0
   1c4b0:	mov	x0, x23
   1c4b4:	bl	0x200e8 ; symbol stub for: _objc_release
   1c4b8:	cbz	w24, 0x1c570
   1c4bc:	mov	x0, x21
   1c4c0:	mov	w2, #0x1
   1c4c4:	bl	0x214c0
   1c4c8:	mov	x29, x29
   1c4cc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c4d0:	mov	x23, x0
   1c4d4:	mov	w0, #0x11
   1c4d8:	mov	x1, #0x0
   1c4dc:	bl	0x1ff14 ; symbol stub for: _dispatch_get_global_queue
   1c4e0:	mov	x29, x29
   1c4e4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c4e8:	mov	x24, x0
   1c4ec:	adrp	x8, 22 ; 0x32000
   1c4f0:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1c4f4:	str	x8, [sp, #0x8]
   1c4f8:	adrp	x8, 6 ; 0x22000
   1c4fc:	ldr	d0, [x8, #0x8f8]
   1c500:	str	d0, [sp, #0x10]
   1c504:	adrp	x8, 1 ; 0x1d000
   1c508:	add	x8, x8, #0x4bc
   1c50c:	adrp	x9, 18 ; 0x2e000
   1c510:	add	x9, x9, #0x908
   1c514:	stp	x8, x9, [sp, #0x18]
   1c518:	mov	x0, x22
   1c51c:	bl	0x200f4 ; symbol stub for: _objc_retain
   1c520:	stp	x0, x23, [sp, #0x28]
   1c524:	mov	x0, x20
   1c528:	bl	0x200f4 ; symbol stub for: _objc_retain
   1c52c:	str	x0, [sp, #0x38]
   1c530:	mov	x0, x23
   1c534:	bl	0x200f4 ; symbol stub for: _objc_retain
   1c538:	mov	x23, x0
   1c53c:	add	x1, sp, #0x8
   1c540:	mov	x0, x24
   1c544:	bl	0x1ff08 ; symbol stub for: _dispatch_async
   1c548:	mov	x0, x24
   1c54c:	bl	0x200e8 ; symbol stub for: _objc_release
   1c550:	ldr	x0, [sp, #0x38]
   1c554:	bl	0x200e8 ; symbol stub for: _objc_release
   1c558:	ldr	x0, [sp, #0x30]
   1c55c:	bl	0x200e8 ; symbol stub for: _objc_release
   1c560:	ldr	x0, [sp, #0x28]
   1c564:	bl	0x200e8 ; symbol stub for: _objc_release
   1c568:	mov	x0, x23
   1c56c:	bl	0x200e8 ; symbol stub for: _objc_release
   1c570:	mov	x0, x22
   1c574:	bl	0x200e8 ; symbol stub for: _objc_release
   1c578:	mov	x0, x21
   1c57c:	b	0x1c330
   1c580:	adrp	x2, 19 ; 0x2f000
   1c584:	add	x2, x2, #0x2c8 ; "app:"
   1c588:	bl	0x20d80
   1c58c:	ldr	x21, [x20, #0x20]
   1c590:	cbz	w0, 0x1c5c4
   1c594:	adrp	x0, 19 ; 0x2f000
   1c598:	add	x0, x0, #0x2c8 ; "app:"
   1c59c:	bl	0x21160
   1c5a0:	mov	x2, x0
   1c5a4:	mov	x0, x21
   1c5a8:	bl	0x22140
   1c5ac:	mov	x29, x29
   1c5b0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c5b4:	mov	x20, x0
   1c5b8:	mov	w1, #0x0
   1c5bc:	bl	0xbb6c
   1c5c0:	b	0x1c334
   1c5c4:	adrp	x2, 19 ; 0x2f000
   1c5c8:	add	x2, x2, #0x3c8 ; "menu:"
   1c5cc:	mov	x0, x21
   1c5d0:	bl	0x20d80
   1c5d4:	ldr	x21, [x20, #0x20]
   1c5d8:	cbz	w0, 0x1c608
   1c5dc:	adrp	x0, 19 ; 0x2f000
   1c5e0:	add	x0, x0, #0x3c8 ; "menu:"
   1c5e4:	bl	0x21160
   1c5e8:	mov	x2, x0
   1c5ec:	mov	x0, x21
   1c5f0:	bl	0x22140
   1c5f4:	mov	x29, x29
   1c5f8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c5fc:	mov	x20, x0
   1c600:	bl	0x1c724
   1c604:	b	0x1c334
   1c608:	adrp	x2, 19 ; 0x2f000
   1c60c:	add	x2, x2, #0x368 ; "snapper3."
   1c610:	mov	x0, x21
   1c614:	bl	0x20d80
   1c618:	mov	x8, x0
   1c61c:	ldr	x0, [x20, #0x20]
   1c620:	cbz	w8, 0x1c630
   1c624:	mov	w1, #0x0
   1c628:	bl	0xd108
   1c62c:	b	0x1c33c
   1c630:	adrp	x2, 19 ; 0x2f000
   1c634:	add	x2, x2, #0x388 ; "copylog."
   1c638:	bl	0x20d80
   1c63c:	mov	x8, x0
   1c640:	ldr	x0, [x20, #0x20]
   1c644:	cbz	w8, 0x1c654
   1c648:	mov	w1, #0x0
   1c64c:	bl	0xd27c
   1c650:	b	0x1c33c
   1c654:	adrp	x2, 19 ; 0x2f000
   1c658:	add	x2, x2, #0x3a8 ; "activator:"
   1c65c:	bl	0x20d80
   1c660:	mov	x8, x0
   1c664:	ldr	x0, [x20, #0x20]
   1c668:	cbz	w8, 0x1c678
   1c66c:	mov	w1, #0x0
   1c670:	bl	0xd3b8
   1c674:	b	0x1c33c
   1c678:	adrp	x2, 19 ; 0x2f000
   1c67c:	add	x2, x2, #0x448 ; "lib:"
   1c680:	bl	0x20d80
   1c684:	cbz	w0, 0x1c714
   1c688:	adrp	x8, 26 ; 0x36000
   1c68c:	ldr	x24, [x8, #0x148]
   1c690:	cbz	x24, 0x1c33c
   1c694:	ldr	x20, [x20, #0x20]
   1c698:	adrp	x0, 19 ; 0x2f000
   1c69c:	add	x0, x0, #0x448 ; "lib:"
   1c6a0:	bl	0x21160
   1c6a4:	mov	x2, x0
   1c6a8:	mov	x0, x20
   1c6ac:	bl	0x22140
   1c6b0:	mov	x29, x29
   1c6b4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c6b8:	mov	x20, x0
   1c6bc:	adrp	x8, 26 ; 0x36000
   1c6c0:	ldr	x21, [x8, #0x300]
   1c6c4:	bl	0xc264
   1c6c8:	mov	x29, x29
   1c6cc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c6d0:	mov	x22, x0
   1c6d4:	bl	0xc1ac
   1c6d8:	mov	x29, x29
   1c6dc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c6e0:	mov	x23, x0
   1c6e4:	adrp	x2, 19 ; 0x2f000
   1c6e8:	add	x2, x2, #0x308 ; "lock"
   1c6ec:	bl	0x21000
   1c6f0:	mov	x3, x0
   1c6f4:	mov	x0, x20
   1c6f8:	mov	x1, x21
   1c6fc:	mov	x2, x22
   1c700:	blr	x24
   1c704:	mov	x0, x23
   1c708:	bl	0x200e8 ; symbol stub for: _objc_release
   1c70c:	mov	x0, x22
   1c710:	b	0x1c330
   1c714:	ldr	x0, [x20, #0x20]
   1c718:	mov	w1, #0x0
   1c71c:	bl	0xd7b0
   1c720:	b	0x1c33c

; ===== sub_1c724 =====
   1c724:	stp	d9, d8, [sp, #-0x70]!
   1c728:	stp	x28, x27, [sp, #0x10]
   1c72c:	stp	x26, x25, [sp, #0x20]
   1c730:	stp	x24, x23, [sp, #0x30]
   1c734:	stp	x22, x21, [sp, #0x40]
   1c738:	stp	x20, x19, [sp, #0x50]
   1c73c:	stp	x29, x30, [sp, #0x60]
   1c740:	add	x29, sp, #0x60
   1c744:	sub	sp, sp, #0x1e0
   1c748:	add	x19, sp, #0x80
   1c74c:	adrp	x8, 22 ; 0x32000
   1c750:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1c754:	ldr	x8, [x8]
   1c758:	stur	x8, [x29, #-0x78]
   1c75c:	bl	0x200f4 ; symbol stub for: _objc_retain
   1c760:	mov	x20, x0
   1c764:	adrp	x8, 25 ; 0x35000
   1c768:	ldr	x0, [x8, #0xa40] ; Objc class ref: bad class ref
   1c76c:	bl	0x20560
   1c770:	mov	x29, x29
   1c774:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c778:	stp	x20, x0, [sp]
   1c77c:	movi.16b	v0, #0x0
   1c780:	stp	q0, q0, [sp, #0x80]
   1c784:	stp	q0, q0, [x19, #0x20]
   1c788:	adrp	x8, 26 ; 0x36000
   1c78c:	ldr	x21, [x8, #0x308]
   1c790:	adrp	x0, 21 ; 0x31000
   1c794:	add	x0, x0, #0xb48 ; "menu/"
   1c798:	mov	x2, x20
   1c79c:	bl	0x220a0
   1c7a0:	mov	x29, x29
   1c7a4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c7a8:	mov	x22, x0
   1c7ac:	mov	x0, x21
   1c7b0:	mov	x2, x22
   1c7b4:	bl	0x214e0
   1c7b8:	mov	x29, x29
   1c7bc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c7c0:	mov	x21, x0
   1c7c4:	mov	x0, x22
   1c7c8:	bl	0x200e8 ; symbol stub for: _objc_release
   1c7cc:	add	x2, sp, #0x80
   1c7d0:	sub	x3, x29, #0xf8
   1c7d4:	mov	x0, x21
   1c7d8:	mov	w4, #0x10
   1c7dc:	bl	0x20980
   1c7e0:	cbz	x0, 0x1c8e8
   1c7e4:	mov	x23, x0
   1c7e8:	ldr	x8, [sp, #0x90]
   1c7ec:	adrp	x22, 19 ; 0x2f000
   1c7f0:	add	x22, x22, #0x5c8 ; "pause:"
   1c7f4:	ldr	x20, [x8]
   1c7f8:	adrp	x24, 19 ; 0x2f000
   1c7fc:	add	x24, x24, #0x5e8 ; "if:"
   1c800:	adrp	x25, 19 ; 0x2f000
   1c804:	add	x25, x25, #0x608 ; "else"
   1c808:	adrp	x26, 19 ; 0x2f000
   1c80c:	add	x26, x26, #0x628 ; "endif"
   1c810:	mov	x27, #0x0
   1c814:	ldr	x8, [sp, #0x90]
   1c818:	ldr	x8, [x8]
   1c81c:	cmp	x8, x20
   1c820:	b.eq	0x1c82c
   1c824:	mov	x0, x21
   1c828:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   1c82c:	ldr	x8, [sp, #0x88]
   1c830:	ldr	x0, [x8, x27, lsl #3]
   1c834:	bl	0x200f4 ; symbol stub for: _objc_retain
   1c838:	mov	x28, x0
   1c83c:	mov	x2, x22
   1c840:	bl	0x20d80
   1c844:	tbnz	w0, #0x0, 0x1c868
   1c848:	mov	x0, x28
   1c84c:	mov	x2, x24
   1c850:	bl	0x20d80
   1c854:	tbnz	w0, #0x0, 0x1c868
   1c858:	mov	x0, x28
   1c85c:	mov	x2, x25
   1c860:	bl	0x21000
   1c864:	cbz	w0, 0x1c880
   1c868:	mov	x0, x28
   1c86c:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_1c870 =====
   1c870:	add	x27, x27, #0x1
   1c874:	cmp	x23, x27
   1c878:	b.ne	0x1c814
   1c87c:	b	0x1c8cc
   1c880:	mov	x0, x28
   1c884:	mov	x2, x26
   1c888:	bl	0x21000
   1c88c:	mov	x19, x0
   1c890:	mov	x0, x28
   1c894:	bl	0x200e8 ; symbol stub for: _objc_release
   1c898:	tbnz	w19, #0x0, 0x1c870
   1c89c:	mov	x0, x28
   1c8a0:	adrp	x2, 19 ; 0x2f000
   1c8a4:	add	x2, x2, #0x3c8 ; "menu:"
   1c8a8:	bl	0x20d80
   1c8ac:	tbnz	w0, #0x0, 0x1c870
   1c8b0:	mov	x0, x28
   1c8b4:	bl	0xcd54
   1c8b8:	cbz	w0, 0x1c870
   1c8bc:	ldr	x0, [sp, #0x8]
   1c8c0:	mov	x2, x28
   1c8c4:	bl	0x203c0
   1c8c8:	b	0x1c870

; ===== sub_1c8cc =====
   1c8cc:	add	x2, sp, #0x80
   1c8d0:	sub	x3, x29, #0xf8
   1c8d4:	mov	x0, x21
   1c8d8:	mov	w4, #0x10
   1c8dc:	bl	0x20980
   1c8e0:	mov	x23, x0
   1c8e4:	cbnz	x0, 0x1c810
   1c8e8:	mov	x0, x21
   1c8ec:	bl	0x200e8 ; symbol stub for: _objc_release
   1c8f0:	ldr	x0, [sp, #0x8]
   1c8f4:	bl	0x20960
   1c8f8:	cbz	x0, 0x1cbcc
   1c8fc:	adrp	x19, 26 ; 0x36000
   1c900:	ldr	x0, [x19, #0x350]
   1c904:	mov	w2, #0x1
   1c908:	bl	0x21ac0
   1c90c:	ldr	x0, [x19, #0x350]
   1c910:	str	xzr, [x19, #0x350]
   1c914:	bl	0x200e8 ; symbol stub for: _objc_release
   1c918:	mov	w0, #0x1
   1c91c:	bl	0xf0c8
   1c920:	mov	x29, x29
   1c924:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c928:	ldr	x8, [x19, #0x350]
   1c92c:	str	x0, [x19, #0x350]
   1c930:	mov	x0, x8
   1c934:	bl	0x200e8 ; symbol stub for: _objc_release
   1c938:	ldr	x0, [x19, #0x350]
   1c93c:	cbz	x0, 0x1cbcc
   1c940:	mov	w2, #0x0
   1c944:	bl	0x21ac0
   1c948:	adrp	x8, 25 ; 0x35000
   1c94c:	ldr	x19, [x8, #0xbd0] ; Objc class ref: bad class ref
   1c950:	adrp	x8, 26 ; 0x36000
   1c954:	ldr	x0, [x8, #0x328]
   1c958:	ldr	x2, [sp]
   1c95c:	bl	0x214e0
   1c960:	mov	x29, x29
   1c964:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c968:	mov	x22, x0
   1c96c:	mov	x0, x19
   1c970:	mov	x2, x22
   1c974:	mov	x3, #0x0
   1c978:	mov	x4, #0x0
   1c97c:	bl	0x20440
   1c980:	mov	x29, x29
   1c984:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1c988:	mov	x20, x0
   1c98c:	mov	x0, x22
   1c990:	bl	0x200e8 ; symbol stub for: _objc_release
   1c994:	movi.16b	v0, #0x0
   1c998:	stp	q0, q0, [sp, #0x60]
   1c99c:	stp	q0, q0, [sp, #0x40]
   1c9a0:	ldr	x0, [sp, #0x8]
   1c9a4:	bl	0x200f4 ; symbol stub for: _objc_retain
   1c9a8:	add	x2, sp, #0x40
   1c9ac:	add	x3, sp, #0xc8
   1c9b0:	str	x0, [sp, #0x10]
   1c9b4:	mov	w4, #0x10
   1c9b8:	bl	0x20980
   1c9bc:	cbz	x0, 0x1caa0
   1c9c0:	mov	x23, x0
   1c9c4:	ldr	x8, [sp, #0x50]
   1c9c8:	ldr	x27, [x8]
   1c9cc:	adrp	x28, 22 ; 0x32000
   1c9d0:	ldr	x28, [x28, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1c9d4:	adrp	x8, 6 ; 0x22000
   1c9d8:	ldr	d8, [x8, #0x8f8]
   1c9dc:	adrp	x26, 1 ; 0x1d000
   1c9e0:	add	x26, x26, #0x5cc
   1c9e4:	adrp	x21, 18 ; 0x2e000
   1c9e8:	add	x21, x21, #0x938
   1c9ec:	mov	x22, #0x0
   1c9f0:	ldr	x8, [sp, #0x50]
   1c9f4:	ldr	x8, [x8]
   1c9f8:	cmp	x8, x27
   1c9fc:	b.eq	0x1ca08
   1ca00:	ldr	x0, [sp, #0x10]
   1ca04:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   1ca08:	ldr	x8, [sp, #0x48]
   1ca0c:	ldr	x19, [x8, x22, lsl #3]
   1ca10:	adrp	x8, 25 ; 0x35000
   1ca14:	ldr	x24, [x8, #0xbd8] ; Objc class ref: bad class ref
   1ca18:	mov	x0, x19
   1ca1c:	bl	0x1515c
   1ca20:	mov	x29, x29
   1ca24:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1ca28:	mov	x25, x0
   1ca2c:	str	x28, [sp, #0x18]
   1ca30:	str	d8, [sp, #0x20]
   1ca34:	stp	x26, x21, [sp, #0x28]
   1ca38:	str	x19, [sp, #0x38]
   1ca3c:	add	x4, sp, #0x18
   1ca40:	mov	x0, x24
   1ca44:	mov	x2, x25
   1ca48:	mov	x3, #0x0
   1ca4c:	bl	0x20300
   1ca50:	mov	x29, x29
   1ca54:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1ca58:	mov	x19, x0
   1ca5c:	mov	x0, x20
   1ca60:	mov	x2, x19
   1ca64:	bl	0x20360
   1ca68:	mov	x0, x19
   1ca6c:	bl	0x200e8 ; symbol stub for: _objc_release
   1ca70:	mov	x0, x25
   1ca74:	bl	0x200e8 ; symbol stub for: _objc_release
   1ca78:	add	x22, x22, #0x1
   1ca7c:	cmp	x23, x22
   1ca80:	b.ne	0x1c9f0
   1ca84:	add	x2, sp, #0x40
   1ca88:	add	x3, sp, #0xc8
   1ca8c:	ldr	x0, [sp, #0x10]
   1ca90:	mov	w4, #0x10
   1ca94:	bl	0x20980
   1ca98:	mov	x23, x0
   1ca9c:	cbnz	x0, 0x1c9ec
   1caa0:	ldr	x0, [sp, #0x10]
   1caa4:	bl	0x200e8 ; symbol stub for: _objc_release
   1caa8:	adrp	x8, 25 ; 0x35000
   1caac:	ldr	x0, [x8, #0xbd8] ; Objc class ref: bad class ref
   1cab0:	adrp	x2, 21 ; 0x31000
   1cab4:	add	x2, x2, #0xca8 ; "Cancel"
   1cab8:	adrp	x4, 18 ; 0x2e000
   1cabc:	add	x4, x4, #0x968
   1cac0:	mov	w3, #0x1
   1cac4:	bl	0x20300
   1cac8:	mov	x29, x29
   1cacc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1cad0:	mov	x19, x0
   1cad4:	mov	x21, x20
   1cad8:	mov	x0, x20
   1cadc:	mov	x2, x19
   1cae0:	bl	0x20360
   1cae4:	mov	x0, x19
   1cae8:	bl	0x200e8 ; symbol stub for: _objc_release
   1caec:	adrp	x20, 26 ; 0x36000
   1caf0:	ldr	x0, [x20, #0x350]
   1caf4:	bl	0x217e0
   1caf8:	mov	x29, x29
   1cafc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1cb00:	mov	x19, x0
   1cb04:	bl	0x22400
   1cb08:	mov	x29, x29
   1cb0c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1cb10:	mov	x22, x0
   1cb14:	mov	x0, x19
   1cb18:	bl	0x200e8 ; symbol stub for: _objc_release
   1cb1c:	mov	x0, x21
   1cb20:	bl	0x21640
   1cb24:	mov	x29, x29
   1cb28:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1cb2c:	mov	x19, x0
   1cb30:	mov	x2, x22
   1cb34:	bl	0x21cc0
   1cb38:	mov	x0, x19
   1cb3c:	bl	0x200e8 ; symbol stub for: _objc_release
   1cb40:	mov	x0, x22
   1cb44:	bl	0x20620
   1cb48:	bl	0x1fdd0 ; symbol stub for: _CGRectGetMidX
   1cb4c:	mov.16b	v8, v0
   1cb50:	mov	x0, x22
   1cb54:	bl	0x20620
   1cb58:	bl	0x1fddc ; symbol stub for: _CGRectGetMidY
   1cb5c:	mov.16b	v9, v0
   1cb60:	mov	x0, x21
   1cb64:	bl	0x21640
   1cb68:	mov	x29, x29
   1cb6c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1cb70:	mov	x19, x0
   1cb74:	fmov	d2, #1.00000000
   1cb78:	fmov	d3, #1.00000000
   1cb7c:	mov.16b	v0, v8
   1cb80:	mov.16b	v1, v9
   1cb84:	bl	0x21ca0
   1cb88:	mov	x0, x19
   1cb8c:	bl	0x200e8 ; symbol stub for: _objc_release
   1cb90:	ldr	x0, [x20, #0x350]
   1cb94:	bl	0x217e0
   1cb98:	mov	x29, x29
   1cb9c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1cba0:	mov	x19, x0
   1cba4:	mov	x2, x21
   1cba8:	mov	w3, #0x1
   1cbac:	mov	x4, #0x0
   1cbb0:	bl	0x216a0
   1cbb4:	mov	x0, x19
   1cbb8:	bl	0x200e8 ; symbol stub for: _objc_release
   1cbbc:	mov	x0, x22
   1cbc0:	bl	0x200e8 ; symbol stub for: _objc_release
   1cbc4:	mov	x0, x21
   1cbc8:	bl	0x200e8 ; symbol stub for: _objc_release
   1cbcc:	ldr	x0, [sp, #0x8]
   1cbd0:	bl	0x200e8 ; symbol stub for: _objc_release
   1cbd4:	ldr	x0, [sp]
   1cbd8:	bl	0x200e8 ; symbol stub for: _objc_release
   1cbdc:	ldur	x8, [x29, #-0x78]
   1cbe0:	adrp	x9, 22 ; 0x32000
   1cbe4:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1cbe8:	ldr	x9, [x9]
   1cbec:	cmp	x9, x8
   1cbf0:	b.ne	0x1cc18
   1cbf4:	add	sp, sp, #0x1e0
   1cbf8:	ldp	x29, x30, [sp, #0x60]
   1cbfc:	ldp	x20, x19, [sp, #0x50]
   1cc00:	ldp	x22, x21, [sp, #0x40]
   1cc04:	ldp	x24, x23, [sp, #0x30]
   1cc08:	ldp	x26, x25, [sp, #0x20]
   1cc0c:	ldp	x28, x27, [sp, #0x10]
   1cc10:	ldp	d9, d8, [sp], #0x70
   1cc14:	ret
   1cc18:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
   1cc1c:	sub	sp, sp, #0x1a0
   1cc20:	stp	x28, x27, [sp, #0x140]
   1cc24:	stp	x26, x25, [sp, #0x150]
   1cc28:	stp	x24, x23, [sp, #0x160]
   1cc2c:	stp	x22, x21, [sp, #0x170]
   1cc30:	stp	x20, x19, [sp, #0x180]
   1cc34:	stp	x29, x30, [sp, #0x190]
   1cc38:	add	x29, sp, #0x190
   1cc3c:	mov	x19, x0
   1cc40:	adrp	x8, 22 ; 0x32000
   1cc44:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1cc48:	ldr	x8, [x8]
   1cc4c:	stur	x8, [x29, #-0x60]
   1cc50:	adrp	x0, 10 ; 0x26000
   1cc54:	add	x0, x0, #0x7b8 ; literal pool for: "VCVoiceShortcutClient"
   1cc58:	bl	0x20088 ; symbol stub for: _objc_getClass
   1cc5c:	mov	x21, x0
   1cc60:	cbnz	x0, 0x1cc84
   1cc64:	adrp	x0, 10 ; 0x26000
   1cc68:	add	x0, x0, #0x7ce ; literal pool for: "/System/Library/PrivateFrameworks/VoiceShortcutClient.framework/VoiceShortcutClient"
   1cc6c:	mov	w1, #0x1
   1cc70:	bl	0x1ff44 ; symbol stub for: _dlopen
   1cc74:	adrp	x0, 10 ; 0x26000
   1cc78:	add	x0, x0, #0x7b8 ; literal pool for: "VCVoiceShortcutClient"
   1cc7c:	bl	0x20088 ; symbol stub for: _objc_getClass
   1cc80:	mov	x21, x0
   1cc84:	adrp	x0, 10 ; 0x26000
   1cc88:	add	x0, x0, #0x822 ; literal pool for: "WFAccessibilityWorkflowRunnerClient"
   1cc8c:	bl	0x20088 ; symbol stub for: _objc_getClass
   1cc90:	mov	x20, x0
   1cc94:	adrp	x8, 24 ; 0x34000
   1cc98:	ldr	x22, [x8, #0xfe0]
   1cc9c:	mov	x0, x21
   1cca0:	mov	x1, x22
   1cca4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1cca8:	tbz	w0, #0x0, 0x1ccbc
   1ccac:	mov	x0, x21
   1ccb0:	mov	x2, x22
   1ccb4:	bl	0x215e0
   1ccb8:	b	0x1ccc0
   1ccbc:	mov	x0, #0x0

; ===== sub_1ccc0 =====
   1ccc0:	bl	0x200f4 ; symbol stub for: _objc_retain
   1ccc4:	mov	x21, x0
   1ccc8:	adrp	x8, 24 ; 0x34000
   1cccc:	ldr	x22, [x8, #0xfe8]
   1ccd0:	mov	x1, x22
   1ccd4:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1ccd8:	tbz	w0, #0x0, 0x1cec4
   1ccdc:	adrp	x8, 24 ; 0x34000
   1cce0:	ldr	x2, [x8, #0xff0]
   1cce4:	mov	x0, x20
   1cce8:	bl	0x20f40
   1ccec:	cbz	w0, 0x1cec4
   1ccf0:	stp	x21, x20, [sp, #0x8]
   1ccf4:	str	xzr, [sp, #0xa8]
   1ccf8:	add	x2, sp, #0xa8
   1ccfc:	mov	x0, x21
   1cd00:	mov	x1, x22
   1cd04:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   1cd08:	mov	x29, x29
   1cd0c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1cd10:	str	x0, [sp, #0x20]
   1cd14:	ldr	x0, [sp, #0xa8]
   1cd18:	bl	0x200f4 ; symbol stub for: _objc_retain
   1cd1c:	str	x0, [sp]
   1cd20:	adrp	x8, 24 ; 0x34000
   1cd24:	ldr	x8, [x8, #0xff8]
   1cd28:	str	x8, [sp, #0x18]
   1cd2c:	mov	w20, #0x1
   1cd30:	adrp	x24, 25 ; 0x35000
   1cd34:	movi.16b	v0, #0x0
   1cd38:	stp	q0, q0, [sp, #0x80]
   1cd3c:	stp	q0, q0, [sp, #0x60]
   1cd40:	adrp	x8, 25 ; 0x35000
   1cd44:	ldr	x0, [x8, #0xa48] ; Objc class ref: bad class ref
   1cd48:	bl	0x200b8 ; symbol stub for: _objc_opt_class
   1cd4c:	mov	x1, x0
   1cd50:	ldr	x21, [sp, #0x20]
   1cd54:	mov	x0, x21
   1cd58:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
   1cd5c:	tst	w0, #0x1
   1cd60:	adrp	x8, 22 ; 0x32000
   1cd64:	ldr	x8, [x8, #0xd28] ; literal pool symbol address: ___NSArray0__struct
   1cd68:	csel	x0, x21, x8, ne
   1cd6c:	bl	0x200f4 ; symbol stub for: _objc_retain
   1cd70:	mov	x25, x0
   1cd74:	add	x2, sp, #0x60
   1cd78:	add	x3, sp, #0xb0
   1cd7c:	mov	w4, #0x10
   1cd80:	bl	0x20980
   1cd84:	mov	x26, x0
   1cd88:	cbz	x0, 0x1ce90
   1cd8c:	ldr	x8, [sp, #0x70]
   1cd90:	ldr	x21, [x8]
   1cd94:	mov	x22, #0x0
   1cd98:	adrp	x8, 25 ; 0x35000
   1cd9c:	ldr	x27, [x8, #0x498]
   1cda0:	ldr	x8, [sp, #0x70]
   1cda4:	ldr	x8, [x8]
   1cda8:	cmp	x8, x21
   1cdac:	b.eq	0x1cdb8
   1cdb0:	mov	x0, x25
   1cdb4:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   1cdb8:	ldr	x8, [sp, #0x68]
   1cdbc:	ldr	x28, [x8, x22, lsl #3]
   1cdc0:	mov	x0, x28
   1cdc4:	mov	x1, x27
   1cdc8:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1cdcc:	tbz	w0, #0x0, 0x1cde0
   1cdd0:	mov	x0, x28
   1cdd4:	mov	x2, x27
   1cdd8:	bl	0x215e0
   1cddc:	b	0x1cde4
   1cde0:	mov	x0, #0x0

; ===== sub_1cde4 =====
   1cde4:	bl	0x200f4 ; symbol stub for: _objc_retain
   1cde8:	mov	x23, x0
   1cdec:	ldr	x0, [x24, #0xa38]
   1cdf0:	bl	0x200b8 ; symbol stub for: _objc_opt_class
   1cdf4:	mov	x1, x0
   1cdf8:	mov	x0, x23
   1cdfc:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
   1ce00:	tbz	w0, #0x0, 0x1ce24
   1ce04:	ldr	x2, [x19, #0x20]
   1ce08:	mov	x0, x23
   1ce0c:	tbz	w20, #0x0, 0x1ce1c
   1ce10:	bl	0x21000
   1ce14:	tbnz	w0, #0x0, 0x1ce58
   1ce18:	b	0x1ce24
   1ce1c:	bl	0x206c0
   1ce20:	cbz	x0, 0x1ce58

; ===== sub_1ce24 =====
   1ce24:	mov	x0, x23
   1ce28:	bl	0x200e8 ; symbol stub for: _objc_release
   1ce2c:	add	x22, x22, #0x1
   1ce30:	cmp	x26, x22
   1ce34:	b.ne	0x1cda0
   1ce38:	add	x2, sp, #0x60
   1ce3c:	add	x3, sp, #0xb0
   1ce40:	mov	x0, x25
   1ce44:	mov	w4, #0x10
   1ce48:	bl	0x20980
   1ce4c:	mov	x26, x0
   1ce50:	cbnz	x0, 0x1cd94
   1ce54:	b	0x1ce90
   1ce58:	mov	x0, x28
   1ce5c:	ldr	x21, [sp, #0x18]
   1ce60:	mov	x1, x21
   1ce64:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1ce68:	tbz	w0, #0x0, 0x1ce7c
   1ce6c:	mov	x0, x28
   1ce70:	mov	x2, x21
   1ce74:	bl	0x215e0
   1ce78:	b	0x1ce80
   1ce7c:	mov	x0, #0x0

; ===== sub_1ce80 =====
   1ce80:	bl	0x200f4 ; symbol stub for: _objc_retain
   1ce84:	mov	x26, x0
   1ce88:	mov	x0, x23
   1ce8c:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_1ce90 =====
   1ce90:	mov	x0, x25
   1ce94:	bl	0x200e8 ; symbol stub for: _objc_release
   1ce98:	cmp	x26, #0x0
   1ce9c:	cset	w8, eq
   1cea0:	and	w8, w20, w8
   1cea4:	mov	w20, #0x0
   1cea8:	tbnz	w8, #0x0, 0x1cd34
   1ceac:	ldr	x0, [sp, #0x20]
   1ceb0:	bl	0x200e8 ; symbol stub for: _objc_release
   1ceb4:	ldr	x0, [sp]
   1ceb8:	bl	0x200e8 ; symbol stub for: _objc_release
   1cebc:	ldp	x21, x20, [sp, #0x8]
   1cec0:	b	0x1cec8
   1cec4:	mov	x26, #0x0

; ===== sub_1cec8 =====
   1cec8:	adrp	x8, 22 ; 0x32000
   1cecc:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1ced0:	str	x8, [sp, #0x28]
   1ced4:	adrp	x8, 6 ; 0x22000
   1ced8:	ldr	d0, [x8, #0x8f8]
   1cedc:	str	d0, [sp, #0x30]
   1cee0:	adrp	x8, 0 ; 0x1c000
   1cee4:	add	x8, x8, #0xf7c
   1cee8:	adrp	x9, 18 ; 0x2e000
   1ceec:	add	x9, x9, #0x8b0
   1cef0:	stp	x8, x9, [sp, #0x38]
   1cef4:	str	x26, [sp, #0x48]
   1cef8:	ldr	x0, [x19, #0x20]
   1cefc:	bl	0x200f4 ; symbol stub for: _objc_retain
   1cf00:	stp	x0, x20, [sp, #0x50]
   1cf04:	mov	x0, x26
   1cf08:	bl	0x200f4 ; symbol stub for: _objc_retain
   1cf0c:	mov	x19, x0
   1cf10:	adrp	x0, 22 ; 0x32000
   1cf14:	ldr	x0, [x0, #0xde8] ; literal pool symbol address: __dispatch_main_q
   1cf18:	add	x1, sp, #0x28
   1cf1c:	bl	0x1ff08 ; symbol stub for: _dispatch_async
   1cf20:	ldr	x0, [sp, #0x50]
   1cf24:	bl	0x200e8 ; symbol stub for: _objc_release
   1cf28:	ldr	x0, [sp, #0x48]
   1cf2c:	bl	0x200e8 ; symbol stub for: _objc_release
   1cf30:	mov	x0, x19
   1cf34:	bl	0x200e8 ; symbol stub for: _objc_release
   1cf38:	mov	x0, x21
   1cf3c:	bl	0x200e8 ; symbol stub for: _objc_release
   1cf40:	ldur	x8, [x29, #-0x60]
   1cf44:	adrp	x9, 22 ; 0x32000
   1cf48:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1cf4c:	ldr	x9, [x9]
   1cf50:	cmp	x9, x8
   1cf54:	b.ne	0x1cf78
   1cf58:	ldp	x29, x30, [sp, #0x190]
   1cf5c:	ldp	x20, x19, [sp, #0x180]
   1cf60:	ldp	x22, x21, [sp, #0x170]
   1cf64:	ldp	x24, x23, [sp, #0x160]
   1cf68:	ldp	x26, x25, [sp, #0x150]
   1cf6c:	ldp	x28, x27, [sp, #0x140]
   1cf70:	add	sp, sp, #0x1a0
   1cf74:	ret
   1cf78:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
   1cf7c:	stp	x24, x23, [sp, #-0x40]!
   1cf80:	stp	x22, x21, [sp, #0x10]
   1cf84:	stp	x20, x19, [sp, #0x20]
   1cf88:	stp	x29, x30, [sp, #0x30]
   1cf8c:	add	x29, sp, #0x30
   1cf90:	mov	x20, x0
   1cf94:	ldr	x19, [x0, #0x20]
   1cf98:	adrp	x8, 25 ; 0x35000
   1cf9c:	ldr	x0, [x8, #0xa38] ; Objc class ref: bad class ref
   1cfa0:	bl	0x200b8 ; symbol stub for: _objc_opt_class
   1cfa4:	mov	x1, x0
   1cfa8:	mov	x0, x19
   1cfac:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
   1cfb0:	tbz	w0, #0x0, 0x1d104
   1cfb4:	adrp	x8, 25 ; 0x35000
   1cfb8:	ldr	x0, [x8, #0xbe0] ; Objc class ref: bad class ref
   1cfbc:	bl	0x200d0 ; symbol stub for: _objc_opt_new
   1cfc0:	mov	x19, x0
   1cfc4:	ldr	x2, [x20, #0x28]
   1cfc8:	bl	0x21ba0
   1cfcc:	ldr	x0, [x20, #0x30]
   1cfd0:	bl	0x20028 ; symbol stub for: _objc_alloc
   1cfd4:	mov	x21, x0
   1cfd8:	adrp	x8, 24 ; 0x34000
   1cfdc:	ldr	x1, [x8, #0xff0]
   1cfe0:	ldr	x2, [x20, #0x20]
   1cfe4:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   1cfe8:	mov	x29, x29
   1cfec:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1cff0:	mov	x22, x0
   1cff4:	mov	x0, x19
   1cff8:	mov	x2, x22
   1cffc:	bl	0x21c60
   1d000:	mov	x0, x22
   1d004:	bl	0x200e8 ; symbol stub for: _objc_release
   1d008:	mov	x0, x21
   1d00c:	bl	0x200e8 ; symbol stub for: _objc_release
   1d010:	mov	x0, x19
   1d014:	bl	0x21800
   1d018:	mov	x29, x29
   1d01c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1d020:	mov	x22, x0
   1d024:	adrp	x8, 24 ; 0x35000
   1d028:	ldr	x21, [x8, #0x630]
   1d02c:	mov	x1, x21
   1d030:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1d034:	mov	x23, x0
   1d038:	mov	x0, x22
   1d03c:	bl	0x200e8 ; symbol stub for: _objc_release
   1d040:	tbz	w23, #0x0, 0x1d06c
   1d044:	mov	x0, x19
   1d048:	bl	0x21800
   1d04c:	mov	x29, x29
   1d050:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1d054:	mov	x22, x0
   1d058:	mov	x2, x21
   1d05c:	mov	x3, x19
   1d060:	bl	0x21600
   1d064:	mov	x0, x22
   1d068:	bl	0x200e8 ; symbol stub for: _objc_release
   1d06c:	mov	x0, x19
   1d070:	bl	0x21800
   1d074:	mov	x29, x29
   1d078:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1d07c:	mov	x22, x0
   1d080:	adrp	x8, 24 ; 0x35000
   1d084:	ldr	x21, [x8]
   1d088:	mov	x1, x21
   1d08c:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1d090:	mov	x23, x0
   1d094:	mov	x0, x22
   1d098:	bl	0x200e8 ; symbol stub for: _objc_release
   1d09c:	tbz	w23, #0x0, 0x1d11c
   1d0a0:	adrp	x20, 25 ; 0x36000
   1d0a4:	ldr	x0, [x20, #0xf0]
   1d0a8:	cbnz	x0, 0x1d0d4
   1d0ac:	adrp	x8, 24 ; 0x35000
   1d0b0:	ldr	x0, [x8, #0xa28] ; Objc class ref: bad class ref
   1d0b4:	bl	0x218e0
   1d0b8:	mov	x29, x29
   1d0bc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1d0c0:	ldr	x8, [x20, #0xf0]
   1d0c4:	str	x0, [x20, #0xf0]
   1d0c8:	mov	x0, x8
   1d0cc:	bl	0x200e8 ; symbol stub for: _objc_release
   1d0d0:	ldr	x0, [x20, #0xf0]
   1d0d4:	mov	x2, x19
   1d0d8:	bl	0x203c0
   1d0dc:	mov	x0, x19
   1d0e0:	bl	0x21800
   1d0e4:	mov	x29, x29
   1d0e8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1d0ec:	mov	x20, x0
   1d0f0:	mov	x2, x21
   1d0f4:	bl	0x215e0
   1d0f8:	mov	x0, x20
   1d0fc:	bl	0x200e8 ; symbol stub for: _objc_release
   1d100:	b	0x1d124
   1d104:	ldr	x0, [x20, #0x28]
   1d108:	ldp	x29, x30, [sp, #0x30]
   1d10c:	ldp	x20, x19, [sp, #0x20]
   1d110:	ldp	x22, x21, [sp, #0x10]
   1d114:	ldp	x24, x23, [sp], #0x40
   1d118:	b	0x4104
   1d11c:	ldr	x0, [x20, #0x28]
   1d120:	bl	0x4104

; ===== sub_1d124 =====
   1d124:	mov	x0, x19
   1d128:	ldp	x29, x30, [sp, #0x30]
   1d12c:	ldp	x20, x19, [sp, #0x20]
   1d130:	ldp	x22, x21, [sp, #0x10]
   1d134:	ldp	x24, x23, [sp], #0x40
   1d138:	b	0x200e8 ; symbol stub for: _objc_release
   1d13c:	sub	sp, sp, #0x50
   1d140:	stp	x20, x19, [sp, #0x30]
   1d144:	stp	x29, x30, [sp, #0x40]
   1d148:	add	x29, sp, #0x40
   1d14c:	mov	x19, x0
   1d150:	adrp	x8, 21 ; 0x32000
   1d154:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1d158:	ldr	x8, [x8]
   1d15c:	adrp	x9, 9 ; 0x26000
   1d160:	add	x9, x9, #0x849 ; literal pool for: "sh"
   1d164:	stur	x8, [x29, #-0x18]
   1d168:	adrp	x8, 9 ; 0x26000
   1d16c:	add	x8, x8, #0x84c ; literal pool for: "-c"
   1d170:	stp	x9, x8, [sp, #0x8]
   1d174:	ldr	x0, [x0, #0x20]
   1d178:	bl	0x20100 ; symbol stub for: _objc_retainAutorelease
   1d17c:	bl	0x20280
   1d180:	stp	x0, xzr, [sp, #0x18]
   1d184:	str	wzr, [sp, #0x4]
   1d188:	add	x0, sp, #0x8
   1d18c:	add	x1, sp, #0x4
   1d190:	bl	0x1d204
   1d194:	cbz	w0, 0x1d1c4
   1d198:	ldr	x2, [x19, #0x20]
   1d19c:	adrp	x0, 18 ; 0x2f000
   1d1a0:	add	x0, x0, #0x428 ; "shell:"
   1d1a4:	bl	0x220a0
   1d1a8:	mov	x29, x29
   1d1ac:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1d1b0:	mov	x19, x0
   1d1b4:	bl	0x1d390
   1d1b8:	mov	x0, x19
   1d1bc:	bl	0x200e8 ; symbol stub for: _objc_release
   1d1c0:	b	0x1d1d8
   1d1c4:	str	wzr, [sp]
   1d1c8:	ldr	w0, [sp, #0x4]
   1d1cc:	mov	x1, sp
   1d1d0:	mov	w2, #0x0
   1d1d4:	bl	0x2022c ; symbol stub for: _waitpid

; ===== sub_1d1d8 =====
   1d1d8:	ldur	x8, [x29, #-0x18]
   1d1dc:	adrp	x9, 21 ; 0x32000
   1d1e0:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1d1e4:	ldr	x9, [x9]
   1d1e8:	cmp	x9, x8
   1d1ec:	b.ne	0x1d200
   1d1f0:	ldp	x29, x30, [sp, #0x40]
   1d1f4:	ldp	x20, x19, [sp, #0x30]
   1d1f8:	add	sp, sp, #0x50
   1d1fc:	ret
   1d200:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_1d204 =====
   1d204:	stp	x24, x23, [sp, #-0x40]!
   1d208:	stp	x22, x21, [sp, #0x10]
   1d20c:	stp	x20, x19, [sp, #0x20]
   1d210:	stp	x29, x30, [sp, #0x30]
   1d214:	add	x29, sp, #0x30
   1d218:	sub	sp, sp, #0x440
   1d21c:	adrp	x8, 21 ; 0x32000
   1d220:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1d224:	ldr	x8, [x8]
   1d228:	stur	x8, [x29, #-0x38]
   1d22c:	adrp	x23, 25 ; 0x36000
   1d230:	ldrb	w8, [x23, #0x5e0]
   1d234:	tbz	w8, #0x0, 0x1d240
   1d238:	mov	w21, #0x1
   1d23c:	b	0x1d358
   1d240:	mov	x20, x1
   1d244:	mov	x19, x0
   1d248:	sub	x22, x29, #0x60
   1d24c:	add	x0, sp, #0x8
   1d250:	bl	0x201c0 ; symbol stub for: _posix_spawn_file_actions_init
   1d254:	adrp	x21, 9 ; 0x26000
   1d258:	add	x21, x21, #0x84f ; literal pool for: "/dev/null"
   1d25c:	add	x0, sp, #0x8
   1d260:	mov	w1, #0x0
   1d264:	mov	x2, x21
   1d268:	mov	w3, #0x0
   1d26c:	mov	w4, #0x0
   1d270:	bl	0x201a8 ; symbol stub for: _posix_spawn_file_actions_addopen
   1d274:	add	x0, sp, #0x8
   1d278:	mov	w1, #0x1
   1d27c:	mov	x2, x21
   1d280:	mov	w3, #0x1
   1d284:	mov	w4, #0x0
   1d288:	bl	0x201a8 ; symbol stub for: _posix_spawn_file_actions_addopen
   1d28c:	add	x0, sp, #0x8
   1d290:	mov	w1, #0x2
   1d294:	mov	x2, x21
   1d298:	mov	w3, #0x1
   1d29c:	mov	w4, #0x0
   1d2a0:	bl	0x201a8 ; symbol stub for: _posix_spawn_file_actions_addopen
   1d2a4:	adrp	x8, 17 ; 0x2e000
   1d2a8:	add	x8, x8, #0x8e0
   1d2ac:	ldp	q0, q1, [x8]
   1d2b0:	stp	q0, q1, [x22]
   1d2b4:	ldr	x8, [x8, #0x20]
   1d2b8:	stur	x8, [x29, #-0x40]
   1d2bc:	adrp	x0, 20 ; 0x31000
   1d2c0:	add	x0, x0, #0xe08 ; "/var/jb"
   1d2c4:	adrp	x2, 20 ; 0x31000
   1d2c8:	add	x2, x2, #0xd68 ; "/bin/sh"
   1d2cc:	bl	0x220a0
   1d2d0:	mov	x29, x29
   1d2d4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1d2d8:	mov	x21, x0
   1d2dc:	bl	0x20100 ; symbol stub for: _objc_retainAutorelease
   1d2e0:	bl	0x20c60
   1d2e4:	mov	x22, x0
   1d2e8:	mov	x0, x21
   1d2ec:	bl	0x200e8 ; symbol stub for: _objc_release
   1d2f0:	add	x2, sp, #0x8
   1d2f4:	sub	x5, x29, #0x60
   1d2f8:	mov	x0, x20
   1d2fc:	mov	x1, x22
   1d300:	mov	x3, #0x0
   1d304:	mov	x4, x19
   1d308:	bl	0x2019c ; symbol stub for: _posix_spawn
   1d30c:	mov	x21, x0
   1d310:	cbz	w0, 0x1d350
   1d314:	add	x1, sp, #0x10
   1d318:	mov	x0, x22
   1d31c:	bl	0x201cc ; symbol stub for: _realpath$DARWIN_EXTSN
   1d320:	cbz	x0, 0x1d350
   1d324:	add	x1, sp, #0x10
   1d328:	add	x2, sp, #0x8
   1d32c:	sub	x5, x29, #0x60
   1d330:	mov	x0, x20
   1d334:	mov	x3, #0x0
   1d338:	mov	x4, x19
   1d33c:	bl	0x2019c ; symbol stub for: _posix_spawn
   1d340:	mov	x21, x0
   1d344:	cmp	w0, #0x1
   1d348:	b.ne	0x1d350
   1d34c:	strb	w21, [x23, #0x5e0]
   1d350:	add	x0, sp, #0x8
   1d354:	bl	0x201b4 ; symbol stub for: _posix_spawn_file_actions_destroy

; ===== sub_1d358 =====
   1d358:	ldur	x8, [x29, #-0x38]
   1d35c:	adrp	x9, 21 ; 0x32000
   1d360:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1d364:	ldr	x9, [x9]
   1d368:	cmp	x9, x8
   1d36c:	b.ne	0x1d38c
   1d370:	mov	x0, x21
   1d374:	add	sp, sp, #0x440
   1d378:	ldp	x29, x30, [sp, #0x30]
   1d37c:	ldp	x20, x19, [sp, #0x20]
   1d380:	ldp	x22, x21, [sp, #0x10]
   1d384:	ldp	x24, x23, [sp], #0x40
   1d388:	ret
   1d38c:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_1d390 =====
   1d390:	sub	sp, sp, #0x70
   1d394:	stp	d9, d8, [sp, #0x30]
   1d398:	stp	x22, x21, [sp, #0x40]
   1d39c:	stp	x20, x19, [sp, #0x50]
   1d3a0:	stp	x29, x30, [sp, #0x60]
   1d3a4:	add	x29, sp, #0x60
   1d3a8:	adrp	x8, 21 ; 0x32000
   1d3ac:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1d3b0:	ldr	x8, [x8]
   1d3b4:	str	x8, [sp, #0x28]
   1d3b8:	adrp	x8, 24 ; 0x35000
   1d3bc:	ldr	x19, [x8, #0xa38] ; Objc class ref: bad class ref
   1d3c0:	bl	0x200f4 ; symbol stub for: _objc_retain
   1d3c4:	mov	x20, x0
   1d3c8:	bl	0x1fd34 ; symbol stub for: _CFAbsoluteTimeGetCurrent
   1d3cc:	mov.16b	v8, v0
   1d3d0:	bl	0x1feb4 ; symbol stub for: _arc4random
   1d3d4:	str	x0, [sp, #0x8]
   1d3d8:	str	d8, [sp]
   1d3dc:	adrp	x2, 20 ; 0x31000
   1d3e0:	add	x2, x2, #0xda8 ; "%.6f-%u.plist"
   1d3e4:	mov	x0, x19
   1d3e8:	bl	0x22100
   1d3ec:	mov	x29, x29
   1d3f0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1d3f4:	mov	x21, x0
   1d3f8:	adrp	x0, 20 ; 0x31000
   1d3fc:	add	x0, x0, #0xd88 ; "/var/tmp/com.johndie.triggr-run"
   1d400:	mov	x2, x21
   1d404:	bl	0x22060
   1d408:	mov	x29, x29
   1d40c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1d410:	mov	x19, x0
   1d414:	mov	x0, x21
   1d418:	bl	0x200e8 ; symbol stub for: _objc_release
   1d41c:	adrp	x8, 20 ; 0x31000
   1d420:	add	x8, x8, #0xdc8 ; "Action"
   1d424:	stp	x8, x20, [sp, #0x18]
   1d428:	adrp	x8, 24 ; 0x35000
   1d42c:	ldr	x0, [x8, #0xaf8] ; Objc class ref: bad class ref
   1d430:	add	x2, sp, #0x20
   1d434:	add	x3, sp, #0x18
   1d438:	mov	w4, #0x1
   1d43c:	bl	0x20ba0
   1d440:	mov	x29, x29
   1d444:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1d448:	mov	x21, x0
   1d44c:	mov	x0, x20
   1d450:	bl	0x200e8 ; symbol stub for: _objc_release
   1d454:	mov	x0, x21
   1d458:	mov	x2, x19
   1d45c:	mov	w3, #0x1
   1d460:	bl	0x224a0
   1d464:	mov	x20, x0
   1d468:	mov	x0, x21
   1d46c:	bl	0x200e8 ; symbol stub for: _objc_release
   1d470:	cbz	w20, 0x1d480
   1d474:	adrp	x0, 9 ; 0x26000
   1d478:	add	x0, x0, #0x937 ; literal pool for: "com.johndie.triggr/run-request"
   1d47c:	bl	0x1fff8 ; symbol stub for: _notify_post
   1d480:	mov	x0, x19
   1d484:	bl	0x200e8 ; symbol stub for: _objc_release
   1d488:	ldr	x8, [sp, #0x28]
   1d48c:	adrp	x9, 21 ; 0x32000
   1d490:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1d494:	ldr	x9, [x9]
   1d498:	cmp	x9, x8
   1d49c:	b.ne	0x1d4b8
   1d4a0:	ldp	x29, x30, [sp, #0x60]
   1d4a4:	ldp	x20, x19, [sp, #0x50]
   1d4a8:	ldp	x22, x21, [sp, #0x40]
   1d4ac:	ldp	d9, d8, [sp, #0x30]
   1d4b0:	add	sp, sp, #0x70
   1d4b4:	ret
   1d4b8:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
   1d4bc:	sub	sp, sp, #0x50
   1d4c0:	stp	x20, x19, [sp, #0x30]
   1d4c4:	stp	x29, x30, [sp, #0x40]
   1d4c8:	add	x29, sp, #0x40
   1d4cc:	mov	x19, x0
   1d4d0:	adrp	x8, 21 ; 0x32000
   1d4d4:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1d4d8:	ldr	x8, [x8]
   1d4dc:	stur	x8, [x29, #-0x18]
   1d4e0:	adrp	x8, 9 ; 0x26000
   1d4e4:	add	x8, x8, #0x849 ; literal pool for: "sh"
   1d4e8:	str	x8, [sp, #0x8]
   1d4ec:	ldr	x0, [x0, #0x20]
   1d4f0:	bl	0x20100 ; symbol stub for: _objc_retainAutorelease
   1d4f4:	bl	0x20280
   1d4f8:	str	x0, [sp, #0x10]
   1d4fc:	ldr	x0, [x19, #0x28]
   1d500:	bl	0x20100 ; symbol stub for: _objc_retainAutorelease
   1d504:	bl	0x20280
   1d508:	stp	x0, xzr, [sp, #0x18]
   1d50c:	str	wzr, [sp, #0x4]
   1d510:	add	x0, sp, #0x8
   1d514:	add	x1, sp, #0x4
   1d518:	bl	0x1d204
   1d51c:	cbz	w0, 0x1d52c
   1d520:	ldr	x0, [x19, #0x30]
   1d524:	bl	0x1d390
   1d528:	b	0x1d540
   1d52c:	str	wzr, [sp]
   1d530:	ldr	w0, [sp, #0x4]
   1d534:	mov	x1, sp
   1d538:	mov	w2, #0x0
   1d53c:	bl	0x2022c ; symbol stub for: _waitpid

; ===== sub_1d540 =====
   1d540:	ldur	x8, [x29, #-0x18]
   1d544:	adrp	x9, 21 ; 0x32000
   1d548:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1d54c:	ldr	x9, [x9]
   1d550:	cmp	x9, x8
   1d554:	b.ne	0x1d568
   1d558:	ldp	x29, x30, [sp, #0x40]
   1d55c:	ldp	x20, x19, [sp, #0x30]
   1d560:	add	sp, sp, #0x50
   1d564:	ret
   1d568:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
   1d56c:	stp	x20, x19, [sp, #-0x20]!
   1d570:	stp	x29, x30, [sp, #0x10]
   1d574:	add	x29, sp, #0x10
   1d578:	mov	x19, x1
   1d57c:	ldr	x0, [x1, #0x20]
   1d580:	bl	0x200f4 ; symbol stub for: _objc_retain
   1d584:	ldr	x0, [x19, #0x28]
   1d588:	bl	0x200f4 ; symbol stub for: _objc_retain
   1d58c:	ldr	x0, [x19, #0x30]
   1d590:	ldp	x29, x30, [sp, #0x10]
   1d594:	ldp	x20, x19, [sp], #0x20
   1d598:	b	0x200f4 ; symbol stub for: _objc_retain
   1d59c:	stp	x20, x19, [sp, #-0x20]!
   1d5a0:	stp	x29, x30, [sp, #0x10]
   1d5a4:	add	x29, sp, #0x10
   1d5a8:	mov	x19, x0
   1d5ac:	ldr	x0, [x0, #0x30]
   1d5b0:	bl	0x200e8 ; symbol stub for: _objc_release
   1d5b4:	ldr	x0, [x19, #0x28]
   1d5b8:	bl	0x200e8 ; symbol stub for: _objc_release
   1d5bc:	ldr	x0, [x19, #0x20]
   1d5c0:	ldp	x29, x30, [sp, #0x10]
   1d5c4:	ldp	x20, x19, [sp], #0x20
   1d5c8:	b	0x200e8 ; symbol stub for: _objc_release
   1d5cc:	sub	sp, sp, #0x30
   1d5d0:	stp	x20, x19, [sp, #0x10]
   1d5d4:	stp	x29, x30, [sp, #0x20]
   1d5d8:	add	x29, sp, #0x20
   1d5dc:	mov	x19, x0
   1d5e0:	adrp	x8, 21 ; 0x32000
   1d5e4:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1d5e8:	ldr	x8, [x8]
   1d5ec:	str	x8, [sp, #0x8]
   1d5f0:	adrp	x20, 25 ; 0x36000
   1d5f4:	ldr	x0, [x20, #0x350]
   1d5f8:	mov	w2, #0x1
   1d5fc:	bl	0x21ac0
   1d600:	ldr	x0, [x20, #0x350]
   1d604:	str	xzr, [x20, #0x350]
   1d608:	bl	0x200e8 ; symbol stub for: _objc_release
   1d60c:	ldr	x8, [x19, #0x20]
   1d610:	str	x8, [sp]
   1d614:	adrp	x8, 24 ; 0x35000
   1d618:	ldr	x0, [x8, #0xa48] ; Objc class ref: bad class ref
   1d61c:	mov	x2, sp
   1d620:	mov	w3, #0x1
   1d624:	bl	0x20580
   1d628:	mov	x29, x29
   1d62c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1d630:	mov	x19, x0
   1d634:	bl	0x7ec4
   1d638:	mov	x0, x19
   1d63c:	bl	0x200e8 ; symbol stub for: _objc_release
   1d640:	ldr	x8, [sp, #0x8]
   1d644:	adrp	x9, 21 ; 0x32000
   1d648:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1d64c:	ldr	x9, [x9]
   1d650:	cmp	x9, x8
   1d654:	b.ne	0x1d668
   1d658:	ldp	x29, x30, [sp, #0x20]
   1d65c:	ldp	x20, x19, [sp, #0x10]
   1d660:	add	sp, sp, #0x30
   1d664:	ret
   1d668:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
   1d66c:	stp	x20, x19, [sp, #-0x20]!
   1d670:	stp	x29, x30, [sp, #0x10]
   1d674:	add	x29, sp, #0x10
   1d678:	adrp	x19, 25 ; 0x36000
   1d67c:	ldr	x0, [x19, #0x350]
   1d680:	mov	w2, #0x1
   1d684:	bl	0x21ac0
   1d688:	ldr	x0, [x19, #0x350]
   1d68c:	str	xzr, [x19, #0x350]
   1d690:	ldp	x29, x30, [sp, #0x10]
   1d694:	ldp	x20, x19, [sp], #0x20
   1d698:	b	0x200e8 ; symbol stub for: _objc_release
   1d69c:	sub	sp, sp, #0x80
   1d6a0:	stp	x22, x21, [sp, #0x50]
   1d6a4:	stp	x20, x19, [sp, #0x60]
   1d6a8:	stp	x29, x30, [sp, #0x70]
   1d6ac:	add	x29, sp, #0x70
   1d6b0:	adrp	x8, 23 ; 0x34000
   1d6b4:	ldr	x19, [x8, #0xbf8]
   1d6b8:	adrp	x8, 21 ; 0x32000
   1d6bc:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1d6c0:	str	x8, [sp, #0x18]
   1d6c4:	adrp	x8, 5 ; 0x22000
   1d6c8:	ldr	d0, [x8, #0x8f8]
   1d6cc:	str	d0, [sp, #0x20]
   1d6d0:	adrp	x8, 0 ; 0x1d000
   1d6d4:	add	x8, x8, #0x748
   1d6d8:	adrp	x9, 17 ; 0x2e000
   1d6dc:	add	x9, x9, #0x988
   1d6e0:	stp	x8, x9, [sp, #0x28]
   1d6e4:	ldr	x8, [x0, #0x30]
   1d6e8:	str	x8, [sp, #0x48]
   1d6ec:	ldr	q0, [x0, #0x20]
   1d6f0:	str	q0, [sp]
   1d6f4:	fmov	x0, d0
   1d6f8:	bl	0x200f4 ; symbol stub for: _objc_retain
   1d6fc:	mov	x20, x0
   1d700:	ldr	q0, [sp]
   1d704:	stur	q0, [sp, #0x38]
   1d708:	add	x0, sp, #0x18
   1d70c:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   1d710:	mov	x21, x0
   1d714:	mov	x0, x20
   1d718:	mov	x1, x19
   1d71c:	mov	x2, x21
   1d720:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   1d724:	mov	x0, x21
   1d728:	bl	0x200e8 ; symbol stub for: _objc_release
   1d72c:	ldr	x0, [sp, #0x38]
   1d730:	bl	0x200e8 ; symbol stub for: _objc_release
   1d734:	ldp	x29, x30, [sp, #0x70]
   1d738:	ldp	x20, x19, [sp, #0x60]
   1d73c:	ldp	x22, x21, [sp, #0x50]
   1d740:	add	sp, sp, #0x80
   1d744:	ret
   1d748:	sub	sp, sp, #0x70
   1d74c:	stp	x20, x19, [sp, #0x50]
   1d750:	stp	x29, x30, [sp, #0x60]
   1d754:	add	x29, sp, #0x60
   1d758:	mov	x19, x0
   1d75c:	mov	x0, x1
   1d760:	bl	0x200f4 ; symbol stub for: _objc_retain
   1d764:	mov	x20, x0
   1d768:	adrp	x8, 21 ; 0x32000
   1d76c:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1d770:	str	x8, [sp, #0x10]
   1d774:	adrp	x8, 5 ; 0x22000
   1d778:	ldr	d0, [x8, #0x8f8]
   1d77c:	str	d0, [sp, #0x18]
   1d780:	adrp	x8, 0 ; 0x1d000
   1d784:	add	x8, x8, #0x7fc
   1d788:	adrp	x9, 15 ; 0x2c000
   1d78c:	add	x9, x9, #0x570
   1d790:	stp	x8, x9, [sp, #0x20]
   1d794:	ldr	x8, [x19, #0x30]
   1d798:	str	x0, [sp, #0x30]
   1d79c:	str	x8, [sp, #0x48]
   1d7a0:	ldr	q0, [x19, #0x20]
   1d7a4:	str	q0, [sp]
   1d7a8:	fmov	x0, d0
   1d7ac:	bl	0x200f4 ; symbol stub for: _objc_retain
   1d7b0:	ldr	q0, [sp]
   1d7b4:	stur	q0, [sp, #0x38]
   1d7b8:	mov	x0, x20
   1d7bc:	bl	0x200f4 ; symbol stub for: _objc_retain
   1d7c0:	mov	x19, x0
   1d7c4:	adrp	x0, 21 ; 0x32000
   1d7c8:	ldr	x0, [x0, #0xde8] ; literal pool symbol address: __dispatch_main_q
   1d7cc:	add	x1, sp, #0x10
   1d7d0:	bl	0x1ff08 ; symbol stub for: _dispatch_async
   1d7d4:	ldr	x0, [sp, #0x38]
   1d7d8:	bl	0x200e8 ; symbol stub for: _objc_release
   1d7dc:	ldr	x0, [sp, #0x30]
   1d7e0:	bl	0x200e8 ; symbol stub for: _objc_release
   1d7e4:	mov	x0, x19
   1d7e8:	bl	0x200e8 ; symbol stub for: _objc_release
   1d7ec:	ldp	x29, x30, [sp, #0x60]
   1d7f0:	ldp	x20, x19, [sp, #0x50]
   1d7f4:	add	sp, sp, #0x70
   1d7f8:	ret
   1d7fc:	sub	sp, sp, #0x160
   1d800:	stp	x28, x27, [sp, #0x100]
   1d804:	stp	x26, x25, [sp, #0x110]
   1d808:	stp	x24, x23, [sp, #0x120]
   1d80c:	stp	x22, x21, [sp, #0x130]
   1d810:	stp	x20, x19, [sp, #0x140]
   1d814:	stp	x29, x30, [sp, #0x150]
   1d818:	add	x29, sp, #0x150
   1d81c:	mov	x20, x0
   1d820:	adrp	x8, 21 ; 0x32000
   1d824:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1d828:	ldr	x8, [x8]
   1d82c:	stur	x8, [x29, #-0x60]
   1d830:	adrp	x8, 24 ; 0x35000
   1d834:	ldr	x0, [x8, #0xb18] ; Objc class ref: bad class ref
   1d838:	bl	0x21560
   1d83c:	mov	x29, x29
   1d840:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1d844:	mov	x19, x0
   1d848:	movi.16b	v0, #0x0
   1d84c:	stp	q0, q0, [sp, #0x30]
   1d850:	stp	q0, q0, [sp, #0x50]
   1d854:	str	x20, [sp]
   1d858:	ldr	x0, [x20, #0x20]
   1d85c:	bl	0x200f4 ; symbol stub for: _objc_retain
   1d860:	mov	x21, x0
   1d864:	add	x2, sp, #0x30
   1d868:	add	x3, sp, #0x70
   1d86c:	mov	w4, #0x10
   1d870:	bl	0x20980
   1d874:	cbz	x0, 0x1d958
   1d878:	mov	x22, x0
   1d87c:	ldr	x8, [sp, #0x40]
   1d880:	ldr	x27, [x8]
   1d884:	adrp	x20, 23 ; 0x34000
   1d888:	mov	x28, #0x0
   1d88c:	adrp	x8, 23 ; 0x34000
   1d890:	ldr	x23, [x8, #0xc08]
   1d894:	ldr	x24, [x20, #0xc00]
   1d898:	ldr	x8, [sp, #0x40]
   1d89c:	ldr	x8, [x8]
   1d8a0:	cmp	x8, x27
   1d8a4:	b.eq	0x1d8b0
   1d8a8:	mov	x0, x21
   1d8ac:	bl	0x20070 ; symbol stub for: _objc_enumerationMutation
   1d8b0:	ldr	x8, [sp, #0x38]
   1d8b4:	ldr	x26, [x8, x28, lsl #3]
   1d8b8:	mov	x0, x26
   1d8bc:	mov	x1, x23
   1d8c0:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1d8c4:	tbz	w0, #0x0, 0x1d8dc
   1d8c8:	mov	x0, x26
   1d8cc:	mov	x1, x23
   1d8d0:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   1d8d4:	mov	x25, x0
   1d8d8:	b	0x1d8e0
   1d8dc:	mov	w25, #0x0

; ===== sub_1d8e0 =====
   1d8e0:	mov	x0, x26
   1d8e4:	mov	x1, x24
   1d8e8:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1d8ec:	tbz	w0, #0x0, 0x1d900
   1d8f0:	mov	x0, x26
   1d8f4:	mov	x2, x24
   1d8f8:	bl	0x215e0
   1d8fc:	b	0x1d904
   1d900:	mov	x0, #0x0

; ===== sub_1d904 =====
   1d904:	bl	0x200f4 ; symbol stub for: _objc_retain
   1d908:	mov	x26, x0
   1d90c:	tbnz	w25, #0x0, 0x1d928
   1d910:	mov	x0, x26
   1d914:	bl	0x21160
   1d918:	cbz	x0, 0x1d928
   1d91c:	mov	x0, x19
   1d920:	mov	x2, x26
   1d924:	bl	0x203c0
   1d928:	mov	x0, x26
   1d92c:	bl	0x200e8 ; symbol stub for: _objc_release
   1d930:	add	x28, x28, #0x1
   1d934:	cmp	x22, x28
   1d938:	b.ne	0x1d898
   1d93c:	add	x2, sp, #0x30
   1d940:	add	x3, sp, #0x70
   1d944:	mov	x0, x21
   1d948:	mov	w4, #0x10
   1d94c:	bl	0x20980
   1d950:	mov	x22, x0
   1d954:	cbnz	x0, 0x1d888
   1d958:	mov	x0, x21
   1d95c:	bl	0x200e8 ; symbol stub for: _objc_release
   1d960:	mov	x0, x19
   1d964:	bl	0x20960
   1d968:	ldr	x20, [sp]
   1d96c:	cbnz	x0, 0x1d9e4
   1d970:	ldr	x8, [x20, #0x30]
   1d974:	ldr	x8, [x8, #0x8]
   1d978:	ldr	w9, [x8, #0x18]
   1d97c:	add	w10, w9, #0x1
   1d980:	str	w10, [x8, #0x18]
   1d984:	cmp	w9, #0x4
   1d988:	b.gt	0x1d9e4
   1d98c:	mov	x0, #0x0
   1d990:	mov	w1, #0x6500
   1d994:	movk	w1, #0x1dcd, lsl #16
   1d998:	bl	0x1ff38 ; symbol stub for: _dispatch_time
   1d99c:	adrp	x8, 21 ; 0x32000
   1d9a0:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1d9a4:	str	x8, [sp, #0x8]
   1d9a8:	adrp	x8, 5 ; 0x22000
   1d9ac:	ldr	d0, [x8, #0x8f8]
   1d9b0:	str	d0, [sp, #0x10]
   1d9b4:	adrp	x8, 0 ; 0x1d000
   1d9b8:	add	x8, x8, #0xa9c
   1d9bc:	adrp	x9, 15 ; 0x2c000
   1d9c0:	add	x9, x9, #0x4e0
   1d9c4:	stp	x8, x9, [sp, #0x18]
   1d9c8:	ldr	x8, [x20, #0x38]
   1d9cc:	str	x8, [sp, #0x28]
   1d9d0:	adrp	x1, 21 ; 0x32000
   1d9d4:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
   1d9d8:	add	x2, sp, #0x8
   1d9dc:	bl	0x1fefc ; symbol stub for: _dispatch_after
   1d9e0:	b	0x1da58
   1d9e4:	ldr	x8, [x20, #0x38]
   1d9e8:	ldr	x8, [x8, #0x8]
   1d9ec:	ldr	x0, [x8, #0x28]
   1d9f0:	str	xzr, [x8, #0x28]
   1d9f4:	bl	0x200e8 ; symbol stub for: _objc_release
   1d9f8:	mov	x0, x19
   1d9fc:	bl	0x20560
   1da00:	mov	x29, x29
   1da04:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1da08:	mov	x20, x0
   1da0c:	adrp	x0, 20 ; 0x31000
   1da10:	add	x0, x0, #0xe08 ; "/var/jb"
   1da14:	adrp	x2, 20 ; 0x31000
   1da18:	add	x2, x2, #0xde8 ; "/var/mobile/Library/Preferences/com.johndie.triggr.airplay.plist"
   1da1c:	bl	0x220a0
   1da20:	mov	x29, x29
   1da24:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1da28:	mov	x21, x0
   1da2c:	mov	x0, x20
   1da30:	mov	x2, x21
   1da34:	mov	w3, #0x1
   1da38:	bl	0x224a0
   1da3c:	mov	x0, x21
   1da40:	bl	0x200e8 ; symbol stub for: _objc_release
   1da44:	mov	x0, x20
   1da48:	bl	0x200e8 ; symbol stub for: _objc_release
   1da4c:	adrp	x0, 9 ; 0x26000
   1da50:	add	x0, x0, #0x956 ; literal pool for: "com.johndie.triggr/airplay-list-ready"
   1da54:	bl	0x1fff8 ; symbol stub for: _notify_post

; ===== sub_1da58 =====
   1da58:	mov	x0, x19
   1da5c:	bl	0x200e8 ; symbol stub for: _objc_release
   1da60:	ldur	x8, [x29, #-0x60]
   1da64:	adrp	x9, 21 ; 0x32000
   1da68:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1da6c:	ldr	x9, [x9]
   1da70:	cmp	x9, x8
   1da74:	b.ne	0x1da98
   1da78:	ldp	x29, x30, [sp, #0x150]
   1da7c:	ldp	x20, x19, [sp, #0x140]
   1da80:	ldp	x22, x21, [sp, #0x130]
   1da84:	ldp	x24, x23, [sp, #0x120]
   1da88:	ldp	x26, x25, [sp, #0x110]
   1da8c:	ldp	x28, x27, [sp, #0x100]
   1da90:	add	sp, sp, #0x160
   1da94:	ret
   1da98:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
   1da9c:	ldr	x8, [x0, #0x20]
   1daa0:	ldr	x8, [x8, #0x8]
   1daa4:	ldr	x0, [x8, #0x28]
   1daa8:	cbz	x0, 0x1dab4
   1daac:	ldr	x1, [x0, #0x10]
   1dab0:	br	x1
   1dab4:	ret
   1dab8:	stp	x20, x19, [sp, #-0x20]!
   1dabc:	stp	x29, x30, [sp, #0x10]
   1dac0:	add	x29, sp, #0x10
   1dac4:	mov	x19, x1
   1dac8:	mov	x20, x0
   1dacc:	ldr	x0, [x1, #0x20]
   1dad0:	bl	0x200f4 ; symbol stub for: _objc_retain
   1dad4:	ldr	x1, [x19, #0x28]
   1dad8:	add	x0, x20, #0x28
   1dadc:	mov	w2, #0x8
   1dae0:	bl	0x1fe3c ; symbol stub for: __Block_object_assign
   1dae4:	ldr	x1, [x19, #0x30]
   1dae8:	add	x0, x20, #0x30
   1daec:	mov	w2, #0x8
   1daf0:	ldp	x29, x30, [sp, #0x10]
   1daf4:	ldp	x20, x19, [sp], #0x20
   1daf8:	b	0x1fe3c ; symbol stub for: __Block_object_assign
   1dafc:	stp	x20, x19, [sp, #-0x20]!
   1db00:	stp	x29, x30, [sp, #0x10]
   1db04:	add	x29, sp, #0x10
   1db08:	mov	x19, x0
   1db0c:	ldr	x0, [x0, #0x30]
   1db10:	mov	w1, #0x8
   1db14:	bl	0x1fe48 ; symbol stub for: __Block_object_dispose
   1db18:	ldr	x0, [x19, #0x28]
   1db1c:	mov	w1, #0x8
   1db20:	bl	0x1fe48 ; symbol stub for: __Block_object_dispose
   1db24:	ldr	x0, [x19, #0x20]
   1db28:	ldp	x29, x30, [sp, #0x10]
   1db2c:	ldp	x20, x19, [sp], #0x20
   1db30:	b	0x200e8 ; symbol stub for: _objc_release
   1db34:	ldr	x9, [x0, #0x28]
   1db38:	adrp	x8, 25 ; 0x36000
   1db3c:	ldr	x10, [x8, #0x108]
   1db40:	adrp	x8, 25 ; 0x36000
   1db44:	ldrb	w11, [x8, #0x110]
   1db48:	cmp	x9, x10
   1db4c:	ccmp	w11, #0x0, #0x4, eq
   1db50:	b.eq	0x1db70
   1db54:	strb	wzr, [x8, #0x110]
   1db58:	adrp	x8, 25 ; 0x36000
   1db5c:	ldrb	w8, [x8, #0x82]
   1db60:	cmp	w8, #0x1
   1db64:	b.ne	0x1db70
   1db68:	ldr	x0, [x0, #0x20]
   1db6c:	b	0x4324
   1db70:	ret
   1db74:	adrp	x8, 25 ; 0x36000
   1db78:	ldrb	w9, [x8, #0x600]
   1db7c:	cmp	w9, #0x1
   1db80:	b.ne	0x1dba8
   1db84:	ldr	x9, [x0, #0x20]
   1db88:	adrp	x10, 25 ; 0x36000
   1db8c:	ldr	x10, [x10, #0x608]
   1db90:	cmp	x9, x10
   1db94:	b.ne	0x1dba8
   1db98:	strb	wzr, [x8, #0x600]
   1db9c:	adrp	x0, 20 ; 0x31000
   1dba0:	add	x0, x0, #0xe88 ; "home.double"
   1dba4:	b	0x4324
   1dba8:	ret
   1dbac:	adrp	x8, 25 ; 0x36000
   1dbb0:	ldr	x2, [x8, #0x170]
   1dbb4:	ldp	x8, x1, [x0, #0x20]
   1dbb8:	mov	x0, x8
   1dbbc:	br	x2
   1dbc0:	stp	x20, x19, [sp, #-0x20]!
   1dbc4:	stp	x29, x30, [sp, #0x10]
   1dbc8:	add	x29, sp, #0x10
   1dbcc:	adrp	x8, 25 ; 0x36000
   1dbd0:	ldrb	w9, [x8, #0x600]
   1dbd4:	cmp	w9, #0x1
   1dbd8:	b.ne	0x1dc08
   1dbdc:	mov	x19, x0
   1dbe0:	ldr	x9, [x0, #0x28] ; "Low Power Mode off"
   1dbe4:	adrp	x10, 25 ; 0x36000
   1dbe8:	ldr	x10, [x10, #0x608]
   1dbec:	cmp	x9, x10
   1dbf0:	b.ne	0x1dc08
   1dbf4:	strb	wzr, [x8, #0x600]
   1dbf8:	adrp	x0, 20 ; 0x31000
   1dbfc:	add	x0, x0, #0xe88 ; "home.double"
   1dc00:	bl	0x4324
   1dc04:	tbz	w0, #0x0, 0x1dc14
   1dc08:	ldp	x29, x30, [sp, #0x10]
   1dc0c:	ldp	x20, x19, [sp], #0x20
   1dc10:	ret
   1dc14:	ldr	x0, [x19, #0x20]
   1dc18:	ldr	x1, [x0, #0x10]
   1dc1c:	ldp	x29, x30, [sp, #0x10]
   1dc20:	ldp	x20, x19, [sp], #0x20
   1dc24:	br	x1

; ===== sub_1dc28 =====
   1dc28:	sub	sp, sp, #0x90
   1dc2c:	stp	x26, x25, [sp, #0x40]
   1dc30:	stp	x24, x23, [sp, #0x50]
   1dc34:	stp	x22, x21, [sp, #0x60]
   1dc38:	stp	x20, x19, [sp, #0x70]
   1dc3c:	stp	x29, x30, [sp, #0x80]
   1dc40:	add	x29, sp, #0x80
   1dc44:	mov	x21, x0
   1dc48:	adrp	x8, 20 ; 0x31000
   1dc4c:	add	x8, x8, #0xf08 ; "volume.down"
   1dc50:	adrp	x9, 20 ; 0x31000
   1dc54:	add	x9, x9, #0xee8 ; "volume.up"
   1dc58:	cmp	w0, #0x0
   1dc5c:	csel	x0, x9, x8, eq
   1dc60:	adrp	x8, 20 ; 0x31000
   1dc64:	add	x8, x8, #0xf48 ; "volume.downhold"
   1dc68:	adrp	x9, 20 ; 0x31000
   1dc6c:	add	x9, x9, #0xf28 ; "volume.uphold"
   1dc70:	csel	x20, x9, x8, eq
   1dc74:	bl	0x200f4 ; symbol stub for: _objc_retain
   1dc78:	mov	x19, x0
   1dc7c:	mov	x0, x20
   1dc80:	bl	0x200f4 ; symbol stub for: _objc_retain
   1dc84:	mov	x20, x0
   1dc88:	mov	w8, w21
   1dc8c:	adrp	x9, 25 ; 0x36000
   1dc90:	add	x9, x9, #0x628
   1dc94:	add	x24, x9, x8, lsl #5
   1dc98:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
   1dc9c:	ldr	x8, [x24, #0x18]
   1dca0:	add	x8, x8, #0x1
   1dca4:	mov	w9, #0x1
   1dca8:	strb	w9, [x24]
   1dcac:	stur	wzr, [x24, #0x1]
   1dcb0:	str	wzr, [x24, #0x4]
   1dcb4:	str	d0, [x24, #0x8]
   1dcb8:	stp	xzr, x8, [x24, #0x10]
   1dcbc:	adrp	x8, 25 ; 0x36000
   1dcc0:	ldr	w8, [x8, #0x668]
   1dcc4:	cbz	w8, 0x1dd04
   1dcc8:	adrp	x8, 25 ; 0x36000
   1dccc:	ldrb	w8, [x8, #0x680]
   1dcd0:	tbz	w8, #0x0, 0x1dd04
   1dcd4:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
   1dcd8:	adrp	x8, 25 ; 0x36000
   1dcdc:	ldr	d1, [x8, #0x688]
   1dce0:	fsub	d0, d0, d1
   1dce4:	fmov	d1, #2.00000000
   1dce8:	fcmp	d0, d1
   1dcec:	b.pl	0x1dd04
   1dcf0:	mov	w21, #0x0
   1dcf4:	mov	w8, #0x1
   1dcf8:	strb	w8, [x24, #0x12]
   1dcfc:	strb	wzr, [x24, #0x10]
   1dd00:	b	0x1df30
   1dd04:	adrp	x8, 25 ; 0x36000
   1dd08:	ldrb	w8, [x8, #0x66c]
   1dd0c:	cmp	w8, #0x1
   1dd10:	b.ne	0x1dd2c
   1dd14:	strb	w8, [x24, #0x12]
   1dd18:	adrp	x8, 25 ; 0x36000
   1dd1c:	ldrb	w8, [x8, #0x81]
   1dd20:	eor	w21, w8, #0x1
   1dd24:	strb	w21, [x24, #0x10]
   1dd28:	b	0x1df30
   1dd2c:	adrp	x25, 25 ; 0x36000
   1dd30:	ldr	w8, [x25, #0xb4]
   1dd34:	eor	w26, w21, #0x1
   1dd38:	cmp	w8, w26
   1dd3c:	b.ne	0x1dde4
   1dd40:	ldr	d0, [x24, #0x8]
   1dd44:	adrp	x8, 25 ; 0x36000
   1dd48:	ldr	d1, [x8, #0x670]
   1dd4c:	fsub	d0, d0, d1
   1dd50:	adrp	x8, 5 ; 0x22000
   1dd54:	ldr	d1, [x8, #0x968]
   1dd58:	fcmp	d0, d1
   1dd5c:	b.pl	0x1dde4
   1dd60:	mov	x0, x20
   1dd64:	bl	0xbd74
   1dd68:	mov	x29, x29
   1dd6c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1dd70:	mov	x22, x0
   1dd74:	bl	0x200e8 ; symbol stub for: _objc_release
   1dd78:	cbnz	x22, 0x1dde4
   1dd7c:	adrp	x8, 20 ; 0x31000
   1dd80:	add	x8, x8, #0xf68 ; "volume.updown"
   1dd84:	adrp	x9, 20 ; 0x31000
   1dd88:	add	x9, x9, #0xf88 ; "volume.downup"
   1dd8c:	cmp	w21, #0x0
   1dd90:	csel	x0, x9, x8, eq
   1dd94:	bl	0x200f4 ; symbol stub for: _objc_retain
   1dd98:	mov	x22, x0
   1dd9c:	bl	0xbd74
   1dda0:	mov	x29, x29
   1dda4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1dda8:	mov	x23, x0
   1ddac:	bl	0x200e8 ; symbol stub for: _objc_release
   1ddb0:	cbz	x23, 0x1dddc
   1ddb4:	mov	w8, #-0x1
   1ddb8:	str	w8, [x25, #0xb4]
   1ddbc:	adrp	x8, 25 ; 0x36000
   1ddc0:	ldr	x9, [x8, #0x678]
   1ddc4:	add	x9, x9, #0x1
   1ddc8:	str	x9, [x8, #0x678]
   1ddcc:	mov	w8, #0x1
   1ddd0:	strb	w8, [x24, #0x13]
   1ddd4:	mov	x0, x22
   1ddd8:	bl	0x4324
   1dddc:	mov	x0, x22
   1dde0:	bl	0x200e8 ; symbol stub for: _objc_release
   1dde4:	mov	x0, x20
   1dde8:	bl	0xbd74
   1ddec:	mov	x29, x29
   1ddf0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1ddf4:	mov	x22, x0
   1ddf8:	bl	0x200e8 ; symbol stub for: _objc_release
   1ddfc:	cbz	x22, 0x1de74
   1de00:	ldr	x23, [x24, #0x18]
   1de04:	mov	x0, #0x0
   1de08:	mov	w1, #0x6500
   1de0c:	movk	w1, #0x1dcd, lsl #16
   1de10:	bl	0x1ff38 ; symbol stub for: _dispatch_time
   1de14:	mov	x22, x0
   1de18:	adrp	x8, 21 ; 0x32000
   1de1c:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1de20:	str	x8, [sp, #0x8]
   1de24:	adrp	x8, 5 ; 0x22000
   1de28:	ldr	d0, [x8, #0x8f8]
   1de2c:	str	d0, [sp, #0x10]
   1de30:	adrp	x8, 1 ; 0x1e000
   1de34:	add	x8, x8, #0x204
   1de38:	adrp	x9, 17 ; 0x2e000
   1de3c:	add	x9, x9, #0xa38
   1de40:	stp	x8, x9, [sp, #0x18]
   1de44:	str	w21, [sp, #0x38]
   1de48:	str	x23, [sp, #0x30]
   1de4c:	mov	x0, x20
   1de50:	bl	0x200f4 ; symbol stub for: _objc_retain
   1de54:	str	x0, [sp, #0x28]
   1de58:	adrp	x1, 21 ; 0x32000
   1de5c:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
   1de60:	add	x2, sp, #0x8
   1de64:	mov	x0, x22
   1de68:	bl	0x1fefc ; symbol stub for: _dispatch_after
   1de6c:	ldr	x0, [sp, #0x28]
   1de70:	bl	0x200e8 ; symbol stub for: _objc_release
   1de74:	adrp	x8, 25 ; 0x36000
   1de78:	ldrb	w8, [x8, #0x81]
   1de7c:	tbz	w8, #0x0, 0x1dea4
   1de80:	mov	x0, x19
   1de84:	bl	0xbd74
   1de88:	mov	x29, x29
   1de8c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1de90:	cmp	x0, #0x0
   1de94:	cset	w8, eq
   1de98:	strb	w8, [x24, #0x10]
   1de9c:	bl	0x200e8 ; symbol stub for: _objc_release
   1dea0:	b	0x1deac
   1dea4:	mov	w8, #0x1
   1dea8:	strb	w8, [x24, #0x10]

; ===== sub_1deac =====
   1deac:	ldrb	w8, [x24, #0x13]
   1deb0:	tbnz	w8, #0x0, 0x1df2c
   1deb4:	mov	x0, x19
   1deb8:	bl	0xbd74
   1debc:	mov	x29, x29
   1dec0:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1dec4:	cbz	x0, 0x1df2c
   1dec8:	mov	x22, x0
   1decc:	mov	x0, x20
   1ded0:	bl	0xbd74
   1ded4:	mov	x29, x29
   1ded8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1dedc:	cbnz	x0, 0x1df20
   1dee0:	adrp	x8, 20 ; 0x31000
   1dee4:	add	x8, x8, #0xf88 ; "volume.downup"
   1dee8:	adrp	x9, 20 ; 0x31000
   1deec:	add	x9, x9, #0xf68 ; "volume.updown"
   1def0:	cmp	w21, #0x0
   1def4:	csel	x0, x9, x8, eq
   1def8:	bl	0xbd74
   1defc:	mov	x29, x29
   1df00:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1df04:	cbnz	x0, 0x1df20
   1df08:	adrp	x0, 20 ; 0x31000
   1df0c:	add	x0, x0, #0xfa8 ; "volume.both"
   1df10:	bl	0xbd74
   1df14:	mov	x29, x29
   1df18:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1df1c:	cbz	x0, 0x1df60
   1df20:	bl	0x200e8 ; symbol stub for: _objc_release
   1df24:	mov	x0, x22
   1df28:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_1df2c =====
   1df2c:	ldrb	w21, [x24, #0x10]

; ===== sub_1df30 =====
   1df30:	mov	x0, x20
   1df34:	bl	0x200e8 ; symbol stub for: _objc_release
   1df38:	mov	x0, x19
   1df3c:	bl	0x200e8 ; symbol stub for: _objc_release
   1df40:	and	w0, w21, #0x1
   1df44:	ldp	x29, x30, [sp, #0x80]
   1df48:	ldp	x20, x19, [sp, #0x70]
   1df4c:	ldp	x22, x21, [sp, #0x60]
   1df50:	ldp	x24, x23, [sp, #0x50]
   1df54:	ldp	x26, x25, [sp, #0x40]
   1df58:	add	sp, sp, #0x90
   1df5c:	ret
   1df60:	adrp	x0, 20 ; 0x31000
   1df64:	add	x0, x0, #0xfc8 ; "volume.bothhold"
   1df68:	bl	0xbd74
   1df6c:	mov	x29, x29
   1df70:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1df74:	mov	x21, x0
   1df78:	bl	0x200e8 ; symbol stub for: _objc_release
   1df7c:	mov	x0, x22
   1df80:	bl	0x200e8 ; symbol stub for: _objc_release
   1df84:	cbnz	x21, 0x1df2c
   1df88:	ldr	w8, [x25, #0xb4]
   1df8c:	cmp	w8, w26
   1df90:	b.ne	0x1df98
   1df94:	bl	0x1e24c
   1df98:	mov	w8, #0x1
   1df9c:	strb	w8, [x24, #0x14]
   1dfa0:	mov	x0, x19
   1dfa4:	bl	0x4324
   1dfa8:	b	0x1df2c

; ===== sub_1dfac =====
   1dfac:	sub	sp, sp, #0x90
   1dfb0:	stp	d9, d8, [sp, #0x30]
   1dfb4:	stp	x26, x25, [sp, #0x40]
   1dfb8:	stp	x24, x23, [sp, #0x50]
   1dfbc:	stp	x22, x21, [sp, #0x60]
   1dfc0:	stp	x20, x19, [sp, #0x70]
   1dfc4:	stp	x29, x30, [sp, #0x80]
   1dfc8:	add	x29, sp, #0x80
   1dfcc:	mov	x20, x0
   1dfd0:	adrp	x8, 20 ; 0x31000
   1dfd4:	add	x8, x8, #0xf08 ; "volume.down"
   1dfd8:	adrp	x9, 20 ; 0x31000
   1dfdc:	add	x9, x9, #0xee8 ; "volume.up"
   1dfe0:	cmp	w0, #0x0
   1dfe4:	csel	x0, x9, x8, eq
   1dfe8:	bl	0x200f4 ; symbol stub for: _objc_retain
   1dfec:	mov	x19, x0
   1dff0:	mov	w8, w20
   1dff4:	adrp	x9, 25 ; 0x36000
   1dff8:	add	x9, x9, #0x628
   1dffc:	add	x23, x9, x8, lsl #5
   1e000:	strb	wzr, [x23]
   1e004:	ldrb	w8, [x23, #0x13]
   1e008:	tbnz	w8, #0x0, 0x1e1d4
   1e00c:	ldrb	w8, [x23, #0x14]
   1e010:	cmp	w8, #0x1
   1e014:	b.eq	0x1e1d4
   1e018:	ldrb	w8, [x23, #0x11]
   1e01c:	tbnz	w8, #0x0, 0x1e028
   1e020:	ldrb	w8, [x23, #0x12]
   1e024:	tbz	w8, #0x0, 0x1e034
   1e028:	mov	w26, #0x0
   1e02c:	mov	w25, #0x0
   1e030:	b	0x1e04c
   1e034:	ldrb	w8, [x23, #0x10]
   1e038:	adrp	x9, 24 ; 0x36000
   1e03c:	ldrb	w9, [x9, #0x81]
   1e040:	and	w8, w8, w9
   1e044:	eor	w25, w8, #0x1
   1e048:	mov	w26, #0x1

; ===== sub_1e04c =====
   1e04c:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
   1e050:	mov.16b	v8, v0
   1e054:	adrp	x24, 24 ; 0x36000
   1e058:	ldr	w8, [x24, #0xb4]
   1e05c:	eor	w9, w8, w20
   1e060:	cmp	w9, #0x1
   1e064:	b.ne	0x1e0f8
   1e068:	adrp	x8, 19 ; 0x31000
   1e06c:	add	x8, x8, #0xf68 ; "volume.updown"
   1e070:	adrp	x9, 19 ; 0x31000
   1e074:	add	x9, x9, #0xf88 ; "volume.downup"
   1e078:	cmp	w20, #0x0
   1e07c:	csel	x0, x9, x8, eq
   1e080:	bl	0x200f4 ; symbol stub for: _objc_retain
   1e084:	mov	x21, x0
   1e088:	cbz	w26, 0x1e108
   1e08c:	ldr	d0, [x23, #0x8]
   1e090:	adrp	x8, 24 ; 0x36000
   1e094:	ldr	d1, [x8, #0x670]
   1e098:	fsub	d0, d0, d1
   1e09c:	adrp	x8, 4 ; 0x22000
   1e0a0:	ldr	d1, [x8, #0x968]
   1e0a4:	fcmp	d0, d1
   1e0a8:	b.pl	0x1e108
   1e0ac:	mov	x0, x21
   1e0b0:	bl	0xbd74
   1e0b4:	mov	x29, x29
   1e0b8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1e0bc:	mov	x22, x0
   1e0c0:	bl	0x200e8 ; symbol stub for: _objc_release
   1e0c4:	cbz	x22, 0x1e108
   1e0c8:	mov	w8, #-0x1
   1e0cc:	str	w8, [x24, #0xb4]
   1e0d0:	adrp	x8, 24 ; 0x36000
   1e0d4:	ldr	x9, [x8, #0x678]
   1e0d8:	add	x9, x9, #0x1
   1e0dc:	str	x9, [x8, #0x678]
   1e0e0:	mov	x0, x21
   1e0e4:	bl	0x4324
   1e0e8:	ldrb	w20, [x23, #0x10]
   1e0ec:	mov	x0, x21
   1e0f0:	bl	0x200e8 ; symbol stub for: _objc_release
   1e0f4:	b	0x1e1d8
   1e0f8:	cmp	w8, w20
   1e0fc:	b.ne	0x1e114
   1e100:	bl	0x1e24c
   1e104:	b	0x1e114
   1e108:	bl	0x1e24c
   1e10c:	mov	x0, x21
   1e110:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_1e114 =====
   1e114:	tbz	w26, #0x0, 0x1e1d4
   1e118:	and	w22, w25, #0x1
   1e11c:	adrp	x8, 19 ; 0x31000
   1e120:	add	x8, x8, #0xf88 ; "volume.downup"
   1e124:	adrp	x9, 19 ; 0x31000
   1e128:	add	x9, x9, #0xf68 ; "volume.updown"
   1e12c:	cmp	w20, #0x0
   1e130:	csel	x0, x9, x8, eq
   1e134:	bl	0xbd74
   1e138:	mov	x29, x29
   1e13c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1e140:	mov	x21, x0
   1e144:	bl	0x200e8 ; symbol stub for: _objc_release
   1e148:	cbz	x21, 0x1e1c8
   1e14c:	str	w20, [x24, #0xb4]
   1e150:	adrp	x8, 24 ; 0x36000
   1e154:	str	d8, [x8, #0x670]
   1e158:	adrp	x8, 24 ; 0x36000
   1e15c:	strb	w22, [x8, #0x690]
   1e160:	adrp	x8, 24 ; 0x36000
   1e164:	ldr	x9, [x8, #0x678]
   1e168:	add	x21, x9, #0x1
   1e16c:	str	x21, [x8, #0x678]
   1e170:	mov	x0, #0x0
   1e174:	mov	w1, #0x8400
   1e178:	movk	w1, #0x17d7, lsl #16
   1e17c:	bl	0x1ff38 ; symbol stub for: _dispatch_time
   1e180:	adrp	x8, 20 ; 0x32000
   1e184:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1e188:	str	x8, [sp]
   1e18c:	adrp	x8, 4 ; 0x22000
   1e190:	ldr	d0, [x8, #0x938]
   1e194:	str	d0, [sp, #0x8]
   1e198:	adrp	x8, 0 ; 0x1e000
   1e19c:	add	x8, x8, #0x2a0
   1e1a0:	adrp	x9, 16 ; 0x2e000
   1e1a4:	add	x9, x9, #0xa68
   1e1a8:	stp	x8, x9, [sp, #0x10]
   1e1ac:	str	x21, [sp, #0x20]
   1e1b0:	str	w20, [sp, #0x28]
   1e1b4:	adrp	x1, 20 ; 0x32000
   1e1b8:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
   1e1bc:	mov	x2, sp
   1e1c0:	bl	0x1fefc ; symbol stub for: _dispatch_after
   1e1c4:	b	0x1e1d4
   1e1c8:	cbz	w22, 0x1e1d4
   1e1cc:	mov	x0, x19
   1e1d0:	bl	0x4324

; ===== sub_1e1d4 =====
   1e1d4:	ldrb	w20, [x23, #0x10]

; ===== sub_1e1d8 =====
   1e1d8:	mov	x0, x19
   1e1dc:	bl	0x200e8 ; symbol stub for: _objc_release
   1e1e0:	and	w0, w20, #0x1
   1e1e4:	ldp	x29, x30, [sp, #0x80]
   1e1e8:	ldp	x20, x19, [sp, #0x70]
   1e1ec:	ldp	x22, x21, [sp, #0x60]
   1e1f0:	ldp	x24, x23, [sp, #0x50]
   1e1f4:	ldp	x26, x25, [sp, #0x40]
   1e1f8:	ldp	d9, d8, [sp, #0x30]
   1e1fc:	add	sp, sp, #0x90
   1e200:	ret
   1e204:	ldrsw	x8, [x0, #0x30]
   1e208:	adrp	x9, 24 ; 0x36000
   1e20c:	add	x9, x9, #0x628
   1e210:	add	x8, x9, x8, lsl #5
   1e214:	ldrb	w9, [x8]
   1e218:	cmp	w9, #0x1
   1e21c:	b.ne	0x1e238
   1e220:	ldr	x9, [x8, #0x18]
   1e224:	ldr	x10, [x0, #0x28] ; "Low Power Mode off"
   1e228:	cmp	x9, x10
   1e22c:	b.ne	0x1e238
   1e230:	ldrb	w9, [x8, #0x12]
   1e234:	tbz	w9, #0x0, 0x1e23c
   1e238:	ret
   1e23c:	mov	w9, #0x1
   1e240:	strb	w9, [x8, #0x11]
   1e244:	ldr	x0, [x0, #0x20]
   1e248:	b	0x4324

; ===== sub_1e24c =====
   1e24c:	adrp	x9, 24 ; 0x36000
   1e250:	ldr	w8, [x9, #0xb4]
   1e254:	tbnz	w8, #0x1f, 0x1e29c
   1e258:	adrp	x10, 24 ; 0x36000
   1e25c:	ldrb	w10, [x10, #0x690]
   1e260:	mov	w11, #-0x1
   1e264:	str	w11, [x9, #0xb4]
   1e268:	adrp	x9, 24 ; 0x36000
   1e26c:	ldr	x11, [x9, #0x678]
   1e270:	add	x11, x11, #0x1
   1e274:	str	x11, [x9, #0x678]
   1e278:	cmp	w10, #0x1
   1e27c:	b.ne	0x1e29c
   1e280:	adrp	x9, 19 ; 0x31000
   1e284:	add	x9, x9, #0xf08 ; "volume.down"
   1e288:	adrp	x10, 19 ; 0x31000
   1e28c:	add	x10, x10, #0xee8 ; "volume.up"
   1e290:	cmp	w8, #0x0
   1e294:	csel	x0, x10, x9, eq
   1e298:	b	0x4324
   1e29c:	ret
   1e2a0:	ldr	x8, [x0, #0x20]
   1e2a4:	adrp	x9, 24 ; 0x36000
   1e2a8:	ldr	x9, [x9, #0x678]
   1e2ac:	cmp	x8, x9
   1e2b0:	b.ne	0x1e2e4
   1e2b4:	adrp	x8, 24 ; 0x36000
   1e2b8:	ldr	w8, [x8, #0xb4]
   1e2bc:	ldr	w9, [x0, #0x28]
   1e2c0:	cmp	w8, w9
   1e2c4:	b.ne	0x1e2e4
   1e2c8:	mov	w9, #0x1
   1e2cc:	sub	w8, w9, w8
   1e2d0:	ubfiz	x8, x8, #5, #32
   1e2d4:	adrp	x9, 24 ; 0x36000
   1e2d8:	add	x9, x9, #0x628
   1e2dc:	ldrb	w8, [x9, x8]
   1e2e0:	tbz	w8, #0x0, 0x1e2e8
   1e2e4:	ret
   1e2e8:	b	0x1e24c
   1e2ec:	adrp	x8, 24 ; 0x36000
   1e2f0:	ldr	x3, [x8, #0x1a8]
   1e2f4:	ldp	x8, x1, [x0, #0x28]
   1e2f8:	ldr	x2, [x0, #0x20]
   1e2fc:	mov	x0, x8
   1e300:	br	x3

; ===== sub_1e304 =====
   1e304:	sub	sp, sp, #0xe0
   1e308:	stp	d9, d8, [sp, #0xa0]
   1e30c:	stp	x22, x21, [sp, #0xb0]
   1e310:	stp	x20, x19, [sp, #0xc0]
   1e314:	stp	x29, x30, [sp, #0xd0]
   1e318:	add	x29, sp, #0xd0
   1e31c:	mov	x20, x0
   1e320:	mov	x0, x1
   1e324:	bl	0x200f4 ; symbol stub for: _objc_retain
   1e328:	mov	x19, x0
   1e32c:	adrp	x8, 24 ; 0x36000
   1e330:	ldrb	w8, [x8, #0x6a8]
   1e334:	adrp	x22, 24 ; 0x36000
   1e338:	cmp	w8, #0x1
   1e33c:	b.ne	0x1e35c
   1e340:	bl	0x1e514
   1e344:	cbz	w0, 0x1e35c
   1e348:	ldrb	w8, [x22, #0xc8]
   1e34c:	tbz	w8, #0x0, 0x1e35c
   1e350:	adrp	x8, 24 ; 0x36000
   1e354:	ldrb	w8, [x8, #0x81]
   1e358:	tbnz	w8, #0x0, 0x1e4d4
   1e35c:	bl	0x1e514
   1e360:	mov	w21, #0x0
   1e364:	cbz	w0, 0x1e4d8
   1e368:	ldrb	w8, [x22, #0xc8]
   1e36c:	tbz	w8, #0x0, 0x1e4d8
   1e370:	adrp	x8, 24 ; 0x36000
   1e374:	ldrb	w8, [x8, #0x81]
   1e378:	tbnz	w8, #0x0, 0x1e394
   1e37c:	ldr	x8, [x19, #0x10]
   1e380:	mov	x0, x19
   1e384:	blr	x8
   1e388:	mov	x0, x19
   1e38c:	bl	0x200e8 ; symbol stub for: _objc_release
   1e390:	mov	x19, #0x0
   1e394:	mov	x0, x19
   1e398:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   1e39c:	adrp	x9, 24 ; 0x36000
   1e3a0:	add	x9, x9, #0x368
   1e3a4:	ldr	x8, [x9, x20, lsl #3]
   1e3a8:	str	x0, [x9, x20, lsl #3]
   1e3ac:	mov	x0, x8
   1e3b0:	bl	0x200e8 ; symbol stub for: _objc_release
   1e3b4:	adrp	x8, 24 ; 0x36000
   1e3b8:	ldr	x9, [x8, #0x6c0]
   1e3bc:	add	x20, x9, #0x1
   1e3c0:	str	x20, [x8, #0x6c0]
   1e3c4:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
   1e3c8:	mov.16b	v8, v0
   1e3cc:	sub	x21, x29, #0x60
   1e3d0:	stp	xzr, x21, [x29, #-0x60]
   1e3d4:	adrp	x8, 4 ; 0x22000
   1e3d8:	ldr	d0, [x8, #0x950]
   1e3dc:	stur	d0, [x29, #-0x50]
   1e3e0:	adrp	x8, -15 ; 0xf000
   1e3e4:	add	x8, x8, #0x7b0
   1e3e8:	adrp	x9, -15 ; 0xf000
   1e3ec:	add	x9, x9, #0x7d8
   1e3f0:	stp	x8, x9, [x29, #-0x48]
   1e3f4:	adrp	x22, 20 ; 0x32000
   1e3f8:	ldr	x22, [x22, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1e3fc:	stur	xzr, [x29, #-0x38]
   1e400:	str	x22, [sp, #0x48]
   1e404:	adrp	x8, 4 ; 0x22000
   1e408:	ldr	d9, [x8, #0x8f8]
   1e40c:	adrp	x8, 0 ; 0x1e000
   1e410:	add	x8, x8, #0x65c
   1e414:	str	d9, [sp, #0x50]
   1e418:	adrp	x9, 14 ; 0x2c000
   1e41c:	add	x9, x9, #0x4e0
   1e420:	stp	x8, x9, [sp, #0x58]
   1e424:	str	x21, [sp, #0x68]
   1e428:	add	x0, sp, #0x48
   1e42c:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   1e430:	str	x22, [sp, #0x8]
   1e434:	str	d9, [sp, #0x10]
   1e438:	adrp	x8, 0 ; 0x1e000
   1e43c:	add	x8, x8, #0x6d0
   1e440:	adrp	x9, 16 ; 0x2e000
   1e444:	add	x9, x9, #0xae8
   1e448:	stp	x8, x9, [sp, #0x18]
   1e44c:	stp	x21, x20, [sp, #0x30]
   1e450:	bl	0x200f4 ; symbol stub for: _objc_retain
   1e454:	mov	x20, x0
   1e458:	str	x0, [sp, #0x28]
   1e45c:	str	d8, [sp, #0x40]
   1e460:	add	x0, sp, #0x8
   1e464:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   1e468:	ldur	x9, [x29, #-0x58]
   1e46c:	ldr	x8, [x9, #0x28]
   1e470:	str	x0, [x9, #0x28]
   1e474:	mov	x0, x8
   1e478:	bl	0x200e8 ; symbol stub for: _objc_release
   1e47c:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
   1e480:	adrp	x8, 24 ; 0x36000
   1e484:	ldr	d1, [x8, #0xc0]
   1e488:	fsub	d0, d0, d1
   1e48c:	adrp	x8, 4 ; 0x22000
   1e490:	ldr	d1, [x8, #0x968]
   1e494:	fcmp	d0, d1
   1e498:	mov	x0, x20
   1e49c:	b.lt	0x1e4a8
   1e4a0:	ldur	x8, [x29, #-0x58]
   1e4a4:	ldr	x0, [x8, #0x28]
   1e4a8:	ldr	x8, [x0, #0x10]
   1e4ac:	blr	x8
   1e4b0:	ldr	x0, [sp, #0x28]
   1e4b4:	bl	0x200e8 ; symbol stub for: _objc_release
   1e4b8:	mov	x0, x20
   1e4bc:	bl	0x200e8 ; symbol stub for: _objc_release
   1e4c0:	sub	x0, x29, #0x60
   1e4c4:	mov	w1, #0x8
   1e4c8:	bl	0x1fe48 ; symbol stub for: __Block_object_dispose
   1e4cc:	ldur	x0, [x29, #-0x38]
   1e4d0:	bl	0x200e8 ; symbol stub for: _objc_release
   1e4d4:	mov	w21, #0x1
   1e4d8:	mov	x0, x19
   1e4dc:	bl	0x200e8 ; symbol stub for: _objc_release
   1e4e0:	mov	x0, x21
   1e4e4:	ldp	x29, x30, [sp, #0xd0]
   1e4e8:	ldp	x20, x19, [sp, #0xc0]
   1e4ec:	ldp	x22, x21, [sp, #0xb0]
   1e4f0:	ldp	d9, d8, [sp, #0xa0]
   1e4f4:	add	sp, sp, #0xe0
   1e4f8:	ret
   1e4fc:	mov	x19, x0
   1e500:	sub	x0, x29, #0x60
   1e504:	mov	w1, #0x8
   1e508:	bl	0x1fe48 ; symbol stub for: __Block_object_dispose
   1e50c:	mov	x0, x19
   1e510:	bl	0x1fe54 ; symbol stub for: __Unwind_Resume

; ===== sub_1e514 =====
   1e514:	stp	x20, x19, [sp, #-0x20]!
   1e518:	stp	x29, x30, [sp, #0x10]
   1e51c:	add	x29, sp, #0x10
   1e520:	adrp	x19, 24 ; 0x36000
   1e524:	ldr	x0, [x19, #0xf8]
   1e528:	adrp	x2, 19 ; 0x31000
   1e52c:	add	x2, x2, #0xfe8 ; "lock.single"
   1e530:	bl	0x208a0
   1e534:	tbnz	w0, #0x0, 0x1e54c
   1e538:	ldr	x0, [x19, #0xf8]
   1e53c:	adrp	x2, 20 ; 0x32000
   1e540:	add	x2, x2, #0x8 ; "lock.double"
   1e544:	bl	0x208a0
   1e548:	tbz	w0, #0x0, 0x1e55c
   1e54c:	mov	w0, #0x1
   1e550:	ldp	x29, x30, [sp, #0x10]
   1e554:	ldp	x20, x19, [sp], #0x20
   1e558:	ret
   1e55c:	ldr	x0, [x19, #0xf8]
   1e560:	adrp	x2, 20 ; 0x32000
   1e564:	add	x2, x2, #0x28 ; "lock.triple"
   1e568:	ldp	x29, x30, [sp, #0x10]
   1e56c:	ldp	x20, x19, [sp], #0x20
   1e570:	b	0x208a0
   1e574:	adrp	x8, 24 ; 0x36000
   1e578:	ldr	x3, [x8, #0x1a8]
   1e57c:	ldp	x8, x1, [x0, #0x28]
   1e580:	ldr	x2, [x0, #0x20]
   1e584:	mov	x0, x8
   1e588:	br	x3
   1e58c:	stp	x22, x21, [sp, #-0x30]!
   1e590:	stp	x20, x19, [sp, #0x10]
   1e594:	stp	x29, x30, [sp, #0x20]
   1e598:	add	x29, sp, #0x20
   1e59c:	ldr	x8, [x0, #0x28]
   1e5a0:	adrp	x9, 24 ; 0x36000
   1e5a4:	ldr	x9, [x9, #0x698]
   1e5a8:	cmp	x8, x9
   1e5ac:	b.ne	0x1e64c
   1e5b0:	adrp	x9, 24 ; 0x36000
   1e5b4:	ldr	x8, [x9, #0x6b8]
   1e5b8:	str	xzr, [x9, #0x6b8]
   1e5bc:	adrp	x9, 24 ; 0x36000
   1e5c0:	ldrb	w21, [x9, #0x691]
   1e5c4:	strb	wzr, [x9, #0x691]
   1e5c8:	cmp	x8, #0x3
   1e5cc:	b.hi	0x1e64c
   1e5d0:	mov	x19, x0
   1e5d4:	cmp	x8, #0x1
   1e5d8:	b.ne	0x1e5f0
   1e5dc:	ldrb	w8, [x19, #0x30]
   1e5e0:	tbnz	w8, #0x0, 0x1e64c
   1e5e4:	adrp	x0, 19 ; 0x31000
   1e5e8:	add	x0, x0, #0xfe8 ; "lock.single"
   1e5ec:	b	0x1e608
   1e5f0:	adrp	x9, 20 ; 0x32000
   1e5f4:	add	x9, x9, #0x28 ; "lock.triple"
   1e5f8:	adrp	x10, 20 ; 0x32000
   1e5fc:	add	x10, x10, #0x8 ; "lock.double"
   1e600:	cmp	x8, #0x2
   1e604:	csel	x0, x10, x9, eq

; ===== sub_1e608 =====
   1e608:	bl	0x4324
   1e60c:	mov	x20, x0
   1e610:	tbnz	w0, #0x0, 0x1e624
   1e614:	eor	w8, w21, #0x1
   1e618:	tbnz	w8, #0x0, 0x1e624
   1e61c:	fmov	s0, #1.00000000
   1e620:	bl	0x13178
   1e624:	tbnz	w20, #0x0, 0x1e64c
   1e628:	ldrb	w8, [x19, #0x31]
   1e62c:	cmp	w8, #0x1
   1e630:	b.ne	0x1e64c
   1e634:	ldr	x0, [x19, #0x20]
   1e638:	ldr	x1, [x0, #0x10]
   1e63c:	ldp	x29, x30, [sp, #0x20]
   1e640:	ldp	x20, x19, [sp, #0x10]
   1e644:	ldp	x22, x21, [sp], #0x30
   1e648:	br	x1
   1e64c:	ldp	x29, x30, [sp, #0x20]
   1e650:	ldp	x20, x19, [sp, #0x10]
   1e654:	ldp	x22, x21, [sp], #0x30
   1e658:	ret
   1e65c:	stp	x20, x19, [sp, #-0x20]!
   1e660:	stp	x29, x30, [sp, #0x10]
   1e664:	add	x29, sp, #0x10
   1e668:	mov	x19, x0
   1e66c:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
   1e670:	adrp	x8, 24 ; 0x36000
   1e674:	ldr	d1, [x8, #0xc0]
   1e678:	fsub	d0, d1, d0
   1e67c:	adrp	x8, 4 ; 0x22000
   1e680:	ldr	d1, [x8, #0x968]
   1e684:	fadd	d0, d0, d1
   1e688:	adrp	x8, 4 ; 0x22000
   1e68c:	ldr	d1, [x8, #0x9c8]
   1e690:	fcmp	d0, d1
   1e694:	fcsel	d0, d1, d0, mi
   1e698:	adrp	x8, 4 ; 0x22000
   1e69c:	ldr	d1, [x8, #0x900]
   1e6a0:	fmul	d0, d0, d1
   1e6a4:	fcvtzs	x1, d0
   1e6a8:	mov	x0, #0x0
   1e6ac:	bl	0x1ff38 ; symbol stub for: _dispatch_time
   1e6b0:	ldr	x8, [x19, #0x20]
   1e6b4:	ldr	x8, [x8, #0x8]
   1e6b8:	ldr	x2, [x8, #0x28]
   1e6bc:	adrp	x1, 20 ; 0x32000
   1e6c0:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
   1e6c4:	ldp	x29, x30, [sp, #0x10]
   1e6c8:	ldp	x20, x19, [sp], #0x20
   1e6cc:	b	0x1fefc ; symbol stub for: _dispatch_after
   1e6d0:	sub	sp, sp, #0xb0
   1e6d4:	stp	d11, d10, [sp, #0x30]
   1e6d8:	stp	d9, d8, [sp, #0x40]
   1e6dc:	stp	x28, x27, [sp, #0x50]
   1e6e0:	stp	x26, x25, [sp, #0x60]
   1e6e4:	stp	x24, x23, [sp, #0x70]
   1e6e8:	stp	x22, x21, [sp, #0x80]
   1e6ec:	stp	x20, x19, [sp, #0x90]
   1e6f0:	stp	x29, x30, [sp, #0xa0]
   1e6f4:	add	x29, sp, #0xa0
   1e6f8:	mov	x19, x0
   1e6fc:	ldr	x8, [x0, #0x30]
   1e700:	adrp	x9, 24 ; 0x36000
   1e704:	ldr	x9, [x9, #0x6c0]
   1e708:	cmp	x8, x9
   1e70c:	b.ne	0x1e760
   1e710:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
   1e714:	adrp	x8, 24 ; 0x36000
   1e718:	ldr	d1, [x8, #0xc0]
   1e71c:	fsub	d0, d0, d1
   1e720:	adrp	x8, 4 ; 0x22000
   1e724:	ldr	d1, [x8, #0x968]
   1e728:	fcmp	d0, d1
   1e72c:	b.pl	0x1e798
   1e730:	ldr	x0, [x19, #0x20]
   1e734:	ldr	x1, [x0, #0x10]
   1e738:	ldp	x29, x30, [sp, #0xa0]
   1e73c:	ldp	x20, x19, [sp, #0x90]
   1e740:	ldp	x22, x21, [sp, #0x80]
   1e744:	ldp	x24, x23, [sp, #0x70]
   1e748:	ldp	x26, x25, [sp, #0x60]
   1e74c:	ldp	x28, x27, [sp, #0x50]
   1e750:	ldp	d9, d8, [sp, #0x40]
   1e754:	ldp	d11, d10, [sp, #0x30]
   1e758:	add	sp, sp, #0xb0
   1e75c:	br	x1
   1e760:	ldr	x8, [x19, #0x28]
   1e764:	ldr	x8, [x8, #0x8]
   1e768:	ldr	x0, [x8, #0x28]
   1e76c:	str	xzr, [x8, #0x28]
   1e770:	ldp	x29, x30, [sp, #0xa0]
   1e774:	ldp	x20, x19, [sp, #0x90]
   1e778:	ldp	x22, x21, [sp, #0x80]
   1e77c:	ldp	x24, x23, [sp, #0x70]
   1e780:	ldp	x26, x25, [sp, #0x60]
   1e784:	ldp	x28, x27, [sp, #0x50]
   1e788:	ldp	d9, d8, [sp, #0x40]
   1e78c:	ldp	d11, d10, [sp, #0x30]
   1e790:	add	sp, sp, #0xb0
   1e794:	b	0x200e8 ; symbol stub for: _objc_release
   1e798:	adrp	x8, 24 ; 0x36000
   1e79c:	ldr	x23, [x8, #0x6a0]
   1e7a0:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
   1e7a4:	adrp	x24, 24 ; 0x36000
   1e7a8:	add	x24, x24, #0x368
   1e7ac:	cbz	x23, 0x1e8b4
   1e7b0:	ldr	d1, [x19, #0x38]
   1e7b4:	fsub	d8, d0, d1
   1e7b8:	cmp	x23, #0x3
   1e7bc:	mov	w8, #0x3
   1e7c0:	csel	x8, x23, x8, lo
   1e7c4:	adrp	x9, 23 ; 0x35000
   1e7c8:	ldr	x25, [x9, #0x8]
   1e7cc:	lsl	x26, x8, #3
   1e7d0:	adrp	x27, 23 ; 0x35000
   1e7d4:	add	x27, x27, #0x10
   1e7d8:	adrp	x28, 23 ; 0x35000
   1e7dc:	add	x28, x28, #0x18
   1e7e0:	adrp	x21, 24 ; 0x36000
   1e7e4:	add	x21, x21, #0x388
   1e7e8:	adrp	x8, 4 ; 0x22000
   1e7ec:	ldr	d9, [x8, #0x930]
   1e7f0:	adrp	x8, 4 ; 0x22000
   1e7f4:	ldr	d10, [x8, #0x8f8]

; ===== sub_1e7f8 =====
   1e7f8:	ldr	x8, [x24, x26]
   1e7fc:	cbz	x8, 0x1e898
   1e800:	cmp	x26, #0x10
   1e804:	csel	x8, x27, x28, eq
   1e808:	ldr	x8, [x8]
   1e80c:	cmp	x26, #0x8
   1e810:	csel	x20, x25, x8, eq
   1e814:	mov	x0, x21
   1e818:	bl	0x20094 ; symbol stub for: _objc_loadWeakRetained
   1e81c:	mov	x22, x0
   1e820:	fcmp	d8, d9
   1e824:	b.le	0x1e880
   1e828:	mov	x0, x22
   1e82c:	mov	x1, x20
   1e830:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1e834:	tbz	w0, #0x0, 0x1e880
   1e838:	adrp	x8, 20 ; 0x32000
   1e83c:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1e840:	str	x8, [sp]
   1e844:	str	d10, [sp, #0x8]
   1e848:	adrp	x8, 0 ; 0x1e000
   1e84c:	add	x9, x8, #0x980
   1e850:	adrp	x8, 14 ; 0x2c000
   1e854:	add	x8, x8, #0x340
   1e858:	stp	x9, x8, [sp, #0x10]
   1e85c:	mov	x0, x22
   1e860:	bl	0x200f4 ; symbol stub for: _objc_retain
   1e864:	stp	x0, x20, [sp, #0x20]
   1e868:	mov	x0, sp
   1e86c:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   1e870:	mov	x20, x0
   1e874:	ldr	x0, [sp, #0x20]
   1e878:	bl	0x200e8 ; symbol stub for: _objc_release
   1e87c:	b	0x1e88c
   1e880:	ldr	x0, [x24, x26]
   1e884:	bl	0x20124 ; symbol stub for: _objc_retainBlock
   1e888:	mov	x20, x0

; ===== sub_1e88c =====
   1e88c:	mov	x0, x22
   1e890:	bl	0x200e8 ; symbol stub for: _objc_release
   1e894:	b	0x1e89c
   1e898:	mov	x20, #0x0

; ===== sub_1e89c =====
   1e89c:	cmp	x20, #0x0
   1e8a0:	cset	w22, ne
   1e8a4:	subs	x26, x26, #0x8
   1e8a8:	b.eq	0x1e8bc
   1e8ac:	cbnz	x20, 0x1e8bc
   1e8b0:	b	0x1e7f8
   1e8b4:	mov	x20, #0x0
   1e8b8:	mov	w22, #0x0
   1e8bc:	mov	x21, #0x0
   1e8c0:	ldr	x0, [x24, x21]
   1e8c4:	str	xzr, [x24, x21]
   1e8c8:	bl	0x200e8 ; symbol stub for: _objc_release
   1e8cc:	add	x21, x21, #0x8
   1e8d0:	cmp	x21, #0x20
   1e8d4:	b.ne	0x1e8c0
   1e8d8:	ldr	x8, [x19, #0x28]
   1e8dc:	ldr	x8, [x8, #0x8]
   1e8e0:	ldr	x0, [x8, #0x28]
   1e8e4:	str	xzr, [x8, #0x28]
   1e8e8:	bl	0x200e8 ; symbol stub for: _objc_release
   1e8ec:	adrp	x8, 24 ; 0x36000
   1e8f0:	mov	w9, #0x1
   1e8f4:	strb	w9, [x8, #0x6a8]
   1e8f8:	cmp	x23, #0x3
   1e8fc:	b.ls	0x1e908
   1e900:	tbnz	w22, #0x0, 0x1e944
   1e904:	b	0x1e950
   1e908:	adrp	x8, 20 ; 0x32000
   1e90c:	add	x8, x8, #0x28 ; "lock.triple"
   1e910:	adrp	x9, 20 ; 0x32000
   1e914:	add	x9, x9, #0x8 ; "lock.double"
   1e918:	cmp	x23, #0x2
   1e91c:	csel	x8, x9, x8, eq
   1e920:	adrp	x9, 19 ; 0x31000
   1e924:	add	x9, x9, #0xfe8 ; "lock.single"
   1e928:	cmp	x23, #0x1
   1e92c:	csel	x0, x9, x8, eq
   1e930:	bl	0x4324
   1e934:	eor	w8, w0, #0x1
   1e938:	and	w8, w8, w22
   1e93c:	cmp	w8, #0x1
   1e940:	b.ne	0x1e950
   1e944:	ldr	x8, [x20, #0x10]
   1e948:	mov	x0, x20
   1e94c:	blr	x8

; ===== sub_1e950 =====
   1e950:	mov	x0, x20
   1e954:	bl	0x200e8 ; symbol stub for: _objc_release
   1e958:	ldp	x29, x30, [sp, #0xa0]
   1e95c:	ldp	x20, x19, [sp, #0x90]
   1e960:	ldp	x22, x21, [sp, #0x80]
   1e964:	ldp	x24, x23, [sp, #0x70]
   1e968:	ldp	x26, x25, [sp, #0x60]
   1e96c:	ldp	x28, x27, [sp, #0x50]
   1e970:	ldp	d9, d8, [sp, #0x40]
   1e974:	ldp	d11, d10, [sp, #0x30]
   1e978:	add	sp, sp, #0xb0
   1e97c:	ret
   1e980:	ldp	x8, x1, [x0, #0x20]
   1e984:	mov	x0, x8
   1e988:	b	0x200a0 ; symbol stub for: _objc_msgSend
   1e98c:	stp	x20, x19, [sp, #-0x20]!
   1e990:	stp	x29, x30, [sp, #0x10]
   1e994:	add	x29, sp, #0x10
   1e998:	mov	x19, x1
   1e99c:	mov	x20, x0
   1e9a0:	ldr	x1, [x1, #0x20]
   1e9a4:	add	x0, x0, #0x20
   1e9a8:	mov	w2, #0x7
   1e9ac:	bl	0x1fe3c ; symbol stub for: __Block_object_assign
   1e9b0:	ldr	x1, [x19, #0x28]
   1e9b4:	add	x0, x20, #0x28
   1e9b8:	mov	w2, #0x8
   1e9bc:	ldp	x29, x30, [sp, #0x10]
   1e9c0:	ldp	x20, x19, [sp], #0x20
   1e9c4:	b	0x1fe3c ; symbol stub for: __Block_object_assign
   1e9c8:	stp	x20, x19, [sp, #-0x20]!
   1e9cc:	stp	x29, x30, [sp, #0x10]
   1e9d0:	add	x29, sp, #0x10
   1e9d4:	mov	x19, x0
   1e9d8:	ldr	x0, [x0, #0x28]
   1e9dc:	mov	w1, #0x8
   1e9e0:	bl	0x1fe48 ; symbol stub for: __Block_object_dispose
   1e9e4:	ldr	x0, [x19, #0x20]
   1e9e8:	ldp	x29, x30, [sp, #0x10]
   1e9ec:	ldp	x20, x19, [sp], #0x20
   1e9f0:	b	0x200e8 ; symbol stub for: _objc_release
   1e9f4:	adrp	x8, 24 ; 0x36000
   1e9f8:	ldr	x3, [x8, #0x1b0]
   1e9fc:	ldp	x8, x1, [x0, #0x28]
   1ea00:	ldr	x2, [x0, #0x20]
   1ea04:	mov	x0, x8
   1ea08:	br	x3
   1ea0c:	adrp	x8, 24 ; 0x36000
   1ea10:	ldr	x3, [x8, #0x1b8]
   1ea14:	ldp	x8, x1, [x0, #0x28]
   1ea18:	ldr	x2, [x0, #0x20]
   1ea1c:	mov	x0, x8
   1ea20:	br	x3

; ===== sub_1ea24 =====
   1ea24:	sub	sp, sp, #0x80
   1ea28:	stp	d9, d8, [sp, #0x30]
   1ea2c:	stp	x24, x23, [sp, #0x40]
   1ea30:	stp	x22, x21, [sp, #0x50]
   1ea34:	stp	x20, x19, [sp, #0x60]
   1ea38:	stp	x29, x30, [sp, #0x70]
   1ea3c:	add	x29, sp, #0x70
   1ea40:	mov	x19, x0
   1ea44:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
   1ea48:	mov.16b	v8, v0
   1ea4c:	adrp	x8, 24 ; 0x36000
   1ea50:	ldr	x10, [x8, #0xd0]
   1ea54:	adrp	x9, 24 ; 0x36000
   1ea58:	cmp	x19, x10
   1ea5c:	b.ne	0x1ea84
   1ea60:	ldr	d0, [x9, #0x6d8]
   1ea64:	fsub	d0, d8, d0
   1ea68:	adrp	x10, 4 ; 0x22000
   1ea6c:	ldr	d1, [x10, #0x968]
   1ea70:	fcmp	d0, d1
   1ea74:	b.pl	0x1ea84
   1ea78:	adrp	x8, 24 ; 0x36000
   1ea7c:	ldrb	w20, [x8, #0x6e0]
   1ea80:	b	0x1ec30
   1ea84:	str	x19, [x8, #0xd0]
   1ea88:	str	d8, [x9, #0x6d8]
   1ea8c:	adrp	x22, 24 ; 0x36000
   1ea90:	ldr	x8, [x22, #0xd8]
   1ea94:	cmn	x8, #0x1
   1ea98:	ccmp	x8, x19, #0x4, ne
   1ea9c:	adrp	x23, 24 ; 0x36000
   1eaa0:	b.eq	0x1eb14
   1eaa4:	ldr	d0, [x23, #0x6e8]
   1eaa8:	fsub	d0, d8, d0
   1eaac:	adrp	x8, 4 ; 0x22000
   1eab0:	ldr	d1, [x8, #0x928]
   1eab4:	fcmp	d0, d1
   1eab8:	b.pl	0x1eb14
   1eabc:	adrp	x0, 20 ; 0x32000
   1eac0:	add	x0, x0, #0x68 ; "mute.twice"
   1eac4:	bl	0xbd74
   1eac8:	mov	x29, x29
   1eacc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1ead0:	mov	x20, x0
   1ead4:	bl	0x200e8 ; symbol stub for: _objc_release
   1ead8:	cbz	x20, 0x1eb14
   1eadc:	adrp	x8, 24 ; 0x36000
   1eae0:	mov	x9, #-0x1
   1eae4:	str	x9, [x22, #0xd8]
   1eae8:	adrp	x9, 24 ; 0x36000
   1eaec:	ldr	x10, [x9, #0x6f8]
   1eaf0:	add	x10, x10, #0x1
   1eaf4:	str	x10, [x9, #0x6f8]
   1eaf8:	ldrb	w20, [x8, #0x6f0]
   1eafc:	adrp	x0, 20 ; 0x32000
   1eb00:	ldr	x0, [x0, #0xde8] ; literal pool symbol address: __dispatch_main_q
   1eb04:	adrp	x1, 16 ; 0x2e000
   1eb08:	add	x1, x1, #0xb18
   1eb0c:	bl	0x1ff08 ; symbol stub for: _dispatch_async
   1eb10:	b	0x1ec24
   1eb14:	adrp	x0, 20 ; 0x32000
   1eb18:	add	x0, x0, #0x68 ; "mute.twice"
   1eb1c:	bl	0xbd74
   1eb20:	mov	x29, x29
   1eb24:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1eb28:	mov	x20, x0
   1eb2c:	bl	0x200e8 ; symbol stub for: _objc_release
   1eb30:	cbz	x20, 0x1eb68
   1eb34:	adrp	x8, 17 ; 0x2f000
   1eb38:	add	x8, x8, #0x208 ; "mute.ring"
   1eb3c:	adrp	x9, 17 ; 0x2f000
   1eb40:	add	x9, x9, #0x1e8 ; "mute.silent"
   1eb44:	cmp	x19, #0x0
   1eb48:	csel	x0, x9, x8, eq
   1eb4c:	bl	0xbd74
   1eb50:	mov	x29, x29
   1eb54:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1eb58:	mov	x21, x0
   1eb5c:	cbz	x0, 0x1eb80
   1eb60:	mov	w20, #0x1
   1eb64:	b	0x1eba0
   1eb68:	mov	x8, #-0x1
   1eb6c:	str	x8, [x22, #0xd8]
   1eb70:	mov	x0, x19
   1eb74:	bl	0x1ec98
   1eb78:	mov	x20, x0
   1eb7c:	b	0x1ec24
   1eb80:	adrp	x0, 20 ; 0x32000
   1eb84:	add	x0, x0, #0x88 ; "mute.toggle"
   1eb88:	bl	0xbd74
   1eb8c:	mov	x29, x29
   1eb90:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1eb94:	cmp	x0, #0x0
   1eb98:	cset	w20, ne
   1eb9c:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_1eba0 =====
   1eba0:	mov	x0, x21
   1eba4:	bl	0x200e8 ; symbol stub for: _objc_release
   1eba8:	str	x19, [x22, #0xd8]
   1ebac:	str	d8, [x23, #0x6e8]
   1ebb0:	adrp	x8, 24 ; 0x36000
   1ebb4:	ldrb	w8, [x8, #0x81]
   1ebb8:	and	w8, w20, w8
   1ebbc:	adrp	x9, 24 ; 0x36000
   1ebc0:	strb	w8, [x9, #0x6f0]
   1ebc4:	adrp	x8, 24 ; 0x36000
   1ebc8:	ldr	x9, [x8, #0x6f8]
   1ebcc:	add	x21, x9, #0x1
   1ebd0:	str	x21, [x8, #0x6f8]
   1ebd4:	mov	x0, #0x0
   1ebd8:	mov	w1, #0x800
   1ebdc:	movk	w1, #0x2faf, lsl #16
   1ebe0:	bl	0x1ff38 ; symbol stub for: _dispatch_time
   1ebe4:	adrp	x8, 20 ; 0x32000
   1ebe8:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1ebec:	str	x8, [sp]
   1ebf0:	adrp	x8, 4 ; 0x22000
   1ebf4:	ldr	d0, [x8, #0x938]
   1ebf8:	str	d0, [sp, #0x8]
   1ebfc:	adrp	x8, 0 ; 0x1e000
   1ec00:	add	x8, x8, #0xc5c
   1ec04:	adrp	x9, 16 ; 0x2e000
   1ec08:	add	x9, x9, #0xb38
   1ec0c:	stp	x8, x9, [sp, #0x10]
   1ec10:	stp	x21, x19, [sp, #0x20]
   1ec14:	adrp	x1, 20 ; 0x32000
   1ec18:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
   1ec1c:	mov	x2, sp
   1ec20:	bl	0x1fefc ; symbol stub for: _dispatch_after

; ===== sub_1ec24 =====
   1ec24:	and	w8, w20, #0x1
   1ec28:	adrp	x9, 24 ; 0x36000
   1ec2c:	strb	w8, [x9, #0x6e0]

; ===== sub_1ec30 =====
   1ec30:	and	w0, w20, #0x1
   1ec34:	ldp	x29, x30, [sp, #0x70]
   1ec38:	ldp	x20, x19, [sp, #0x60]
   1ec3c:	ldp	x22, x21, [sp, #0x50]
   1ec40:	ldp	x24, x23, [sp, #0x40]
   1ec44:	ldp	d9, d8, [sp, #0x30]
   1ec48:	add	sp, sp, #0x80
   1ec4c:	ret
   1ec50:	adrp	x0, 20 ; 0x32000
   1ec54:	add	x0, x0, #0x68 ; "mute.twice"
   1ec58:	b	0x4324
   1ec5c:	ldr	x8, [x0, #0x20]
   1ec60:	adrp	x9, 24 ; 0x36000
   1ec64:	ldr	x9, [x9, #0x6f8]
   1ec68:	cmp	x8, x9
   1ec6c:	b.ne	0x1ec94
   1ec70:	adrp	x9, 24 ; 0x36000
   1ec74:	ldr	x8, [x9, #0xd8]
   1ec78:	ldr	x10, [x0, #0x28]
   1ec7c:	cmp	x8, x10
   1ec80:	b.ne	0x1ec94
   1ec84:	mov	x10, #-0x1
   1ec88:	str	x10, [x9, #0xd8]
   1ec8c:	mov	x0, x8
   1ec90:	b	0x1ec98
   1ec94:	ret

; ===== sub_1ec98 =====
   1ec98:	stp	x29, x30, [sp, #-0x10]!
   1ec9c:	mov	x29, sp
   1eca0:	adrp	x8, 17 ; 0x2f000
   1eca4:	add	x8, x8, #0x208 ; "mute.ring"
   1eca8:	adrp	x9, 17 ; 0x2f000
   1ecac:	add	x9, x9, #0x1e8 ; "mute.silent"
   1ecb0:	cmp	x0, #0x0
   1ecb4:	csel	x0, x9, x8, eq
   1ecb8:	bl	0x4324
   1ecbc:	tbz	w0, #0x0, 0x1eccc
   1ecc0:	mov	w0, #0x1
   1ecc4:	ldp	x29, x30, [sp], #0x10
   1ecc8:	ret
   1eccc:	adrp	x0, 20 ; 0x32000
   1ecd0:	add	x0, x0, #0x88 ; "mute.toggle"
   1ecd4:	ldp	x29, x30, [sp], #0x10
   1ecd8:	b	0x4324

; ===== sub_1ecdc =====
   1ecdc:	stp	d11, d10, [sp, #-0x60]!
   1ece0:	stp	d9, d8, [sp, #0x10]
   1ece4:	stp	x24, x23, [sp, #0x20]
   1ece8:	stp	x22, x21, [sp, #0x30]
   1ecec:	stp	x20, x19, [sp, #0x40]
   1ecf0:	stp	x29, x30, [sp, #0x50]
   1ecf4:	add	x29, sp, #0x50
   1ecf8:	mov.16b	v9, v1
   1ecfc:	mov.16b	v8, v0
   1ed00:	adrp	x8, 23 ; 0x35000
   1ed04:	ldr	x0, [x8, #0xa88] ; Objc class ref: bad class ref
   1ed08:	bl	0x21300
   1ed0c:	mov	x29, x29
   1ed10:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1ed14:	mov	x19, x0
   1ed18:	bl	0x20620
   1ed1c:	mov.16b	v10, v2
   1ed20:	mov.16b	v11, v3
   1ed24:	mov	x0, x19
   1ed28:	bl	0x200e8 ; symbol stub for: _objc_release
   1ed2c:	fcmp	d10, d11
   1ed30:	b.gt	0x1ed58
   1ed34:	adrp	x8, 4 ; 0x22000
   1ed38:	ldr	d0, [x8, #0xa30]
   1ed3c:	fmul	d0, d11, d0
   1ed40:	adrp	x8, 4 ; 0x22000
   1ed44:	ldr	d1, [x8, #0xa38]
   1ed48:	fmul	d1, d11, d1
   1ed4c:	fcmp	d9, d0
   1ed50:	fccmp	d9, d1, #0x0, pl
   1ed54:	b.le	0x1ed60
   1ed58:	mov	x20, #0x0
   1ed5c:	b	0x1ee80
   1ed60:	mov	x8, #-0x3fbf000000000000
   1ed64:	fmov	d0, x8
   1ed68:	fadd	d0, d10, d0
   1ed6c:	adrp	x8, 19 ; 0x31000
   1ed70:	add	x8, x8, #0x188 ; "right"
   1ed74:	fcmp	d8, d0
   1ed78:	csel	x8, x8, xzr, ge
   1ed7c:	adrp	x9, 19 ; 0x31000
   1ed80:	add	x9, x9, #0x168 ; "left"
   1ed84:	mov	x10, #0x4041000000000000
   1ed88:	fmov	d0, x10
   1ed8c:	fcmp	d8, d0
   1ed90:	csel	x0, x8, x9, hi
   1ed94:	bl	0x200f4 ; symbol stub for: _objc_retain
   1ed98:	mov	x19, x0
   1ed9c:	cbz	x0, 0x1ee74
   1eda0:	adrp	x23, 24 ; 0x36000
   1eda4:	ldr	x22, [x23, #0xf8]
   1eda8:	adrp	x2, 20 ; 0x32000
   1edac:	add	x2, x2, #0xe8 ; "up"
   1edb0:	mov	x0, x19
   1edb4:	bl	0x220a0
   1edb8:	mov	x29, x29
   1edbc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1edc0:	mov	x20, x0
   1edc4:	adrp	x0, 20 ; 0x32000
   1edc8:	add	x0, x0, #0x128 ; "edge."
   1edcc:	mov	x2, x20
   1edd0:	bl	0x220a0
   1edd4:	mov	x29, x29
   1edd8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1eddc:	mov	x21, x0
   1ede0:	mov	x0, x22
   1ede4:	mov	x2, x21
   1ede8:	bl	0x208a0
   1edec:	mov	x22, x19
   1edf0:	tbnz	w0, #0x0, 0x1ee54
   1edf4:	ldr	x22, [x23, #0xf8]
   1edf8:	adrp	x2, 20 ; 0x32000
   1edfc:	add	x2, x2, #0x108 ; "down"
   1ee00:	mov	x0, x19
   1ee04:	bl	0x220a0
   1ee08:	mov	x29, x29
   1ee0c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1ee10:	mov	x23, x0
   1ee14:	adrp	x0, 20 ; 0x32000
   1ee18:	add	x0, x0, #0x128 ; "edge."
   1ee1c:	mov	x2, x23
   1ee20:	bl	0x220a0
   1ee24:	mov	x29, x29
   1ee28:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1ee2c:	mov	x24, x0
   1ee30:	mov	x0, x22
   1ee34:	mov	x2, x24
   1ee38:	bl	0x208a0
   1ee3c:	cmp	w0, #0x0
   1ee40:	csel	x22, x19, xzr, ne
   1ee44:	mov	x0, x24
   1ee48:	bl	0x200e8 ; symbol stub for: _objc_release
   1ee4c:	mov	x0, x23
   1ee50:	bl	0x200e8 ; symbol stub for: _objc_release
   1ee54:	mov	x0, x21
   1ee58:	bl	0x200e8 ; symbol stub for: _objc_release
   1ee5c:	mov	x0, x20
   1ee60:	bl	0x200e8 ; symbol stub for: _objc_release
   1ee64:	mov	x0, x22
   1ee68:	bl	0x200f4 ; symbol stub for: _objc_retain
   1ee6c:	mov	x20, x0
   1ee70:	b	0x1ee78
   1ee74:	mov	x20, #0x0

; ===== sub_1ee78 =====
   1ee78:	mov	x0, x19
   1ee7c:	bl	0x200e8 ; symbol stub for: _objc_release

; ===== sub_1ee80 =====
   1ee80:	mov	x0, x20
   1ee84:	ldp	x29, x30, [sp, #0x50]
   1ee88:	ldp	x20, x19, [sp, #0x40]
   1ee8c:	ldp	x22, x21, [sp, #0x30]
   1ee90:	ldp	x24, x23, [sp, #0x20]
   1ee94:	ldp	d9, d8, [sp, #0x10]
   1ee98:	ldp	d11, d10, [sp], #0x60
   1ee9c:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue
   1eea0:	ldr	x0, [x0, #0x20]
   1eea4:	b	0x4324
   1eea8:	ldr	x0, [x0, #0x20]
   1eeac:	b	0x4324
   1eeb0:	adrp	x8, 24 ; 0x36000
   1eeb4:	ldr	w8, [x8, #0x668]
   1eeb8:	ldr	w9, [x0, #0x30]
   1eebc:	cmp	w8, w9
   1eec0:	b.ne	0x1eef4
   1eec4:	ldr	x8, [x0, #0x28]
   1eec8:	adrp	x9, 24 ; 0x36000
   1eecc:	ldr	x9, [x9, #0x738]
   1eed0:	cmp	x8, x9
   1eed4:	b.ne	0x1eef4
   1eed8:	adrp	x8, 24 ; 0x36000
   1eedc:	mov	w9, #0x1
   1eee0:	strb	w9, [x8, #0x731]
   1eee4:	adrp	x8, 24 ; 0x36000
   1eee8:	strb	wzr, [x8, #0x730]
   1eeec:	ldr	x0, [x0, #0x20]
   1eef0:	b	0x4324
   1eef4:	ret
   1eef8:	adrp	x8, 24 ; 0x36000
   1eefc:	ldrb	w8, [x8, #0x66c]
   1ef00:	cmp	w8, #0x1
   1ef04:	b.ne	0x1ef34
   1ef08:	ldr	x8, [x0, #0x20]
   1ef0c:	adrp	x9, 24 ; 0x36000
   1ef10:	ldr	x9, [x9, #0x748]
   1ef14:	cmp	x8, x9
   1ef18:	b.ne	0x1ef34
   1ef1c:	adrp	x8, 24 ; 0x36000
   1ef20:	mov	w9, #0x1
   1ef24:	strb	w9, [x8, #0x740]
   1ef28:	adrp	x0, 19 ; 0x31000
   1ef2c:	add	x0, x0, #0xfc8 ; "volume.bothhold"
   1ef30:	b	0x4324
   1ef34:	ret

; ===== sub_1ef38 =====
   1ef38:	stp	d9, d8, [sp, #-0x40]!
   1ef3c:	stp	x22, x21, [sp, #0x10]
   1ef40:	stp	x20, x19, [sp, #0x20]
   1ef44:	stp	x29, x30, [sp, #0x30]
   1ef48:	add	x29, sp, #0x30
   1ef4c:	bl	0x200f4 ; symbol stub for: _objc_retain
   1ef50:	mov	x20, x0
   1ef54:	bl	0x204c0
   1ef58:	mov	x29, x29
   1ef5c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1ef60:	mov	x21, x0
   1ef64:	bl	0x20540
   1ef68:	mov	x29, x29
   1ef6c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1ef70:	mov	x19, x0
   1ef74:	mov	x0, x21
   1ef78:	bl	0x200e8 ; symbol stub for: _objc_release
   1ef7c:	mov	x0, x20
   1ef80:	bl	0x22340
   1ef84:	mov	x21, x0
   1ef88:	mov	x0, x20
   1ef8c:	bl	0x200e8 ; symbol stub for: _objc_release
   1ef90:	cbnz	x21, 0x1f020
   1ef94:	bl	0x19150
   1ef98:	cbz	w0, 0x1f020
   1ef9c:	mov	x0, x19
   1efa0:	bl	0x21620
   1efa4:	cmp	x0, #0x3
   1efa8:	b.ne	0x1f020
   1efac:	mov	x0, x19
   1efb0:	bl	0x22440
   1efb4:	mov	x29, x29
   1efb8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1efbc:	mov	x20, x0
   1efc0:	mov	x0, x19
   1efc4:	mov	x2, x20
   1efc8:	bl	0x21200
   1efcc:	mov.16b	v8, v0
   1efd0:	mov	x0, x19
   1efd4:	bl	0x22440
   1efd8:	mov	x29, x29
   1efdc:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1efe0:	mov	x21, x0
   1efe4:	bl	0x20620
   1efe8:	fmov	d0, #0.50000000
   1efec:	fmul	d0, d2, d0
   1eff0:	fcmp	d8, d0
   1eff4:	mov	w8, #0x2
   1eff8:	csinc	x8, x8, xzr, pl
   1effc:	fcmp	d2, #0.0
   1f000:	fmov	d0, xzr
   1f004:	fccmp	d8, d0, #0x8, hi
   1f008:	csel	x0, xzr, x8, mi
   1f00c:	bl	0x8348
   1f010:	mov	x0, x21
   1f014:	bl	0x200e8 ; symbol stub for: _objc_release
   1f018:	mov	x0, x20
   1f01c:	bl	0x200e8 ; symbol stub for: _objc_release
   1f020:	mov	x0, x19
   1f024:	ldp	x29, x30, [sp, #0x30]
   1f028:	ldp	x20, x19, [sp, #0x20]
   1f02c:	ldp	x22, x21, [sp, #0x10]
   1f030:	ldp	d9, d8, [sp], #0x40
   1f034:	b	0x200e8 ; symbol stub for: _objc_release
   1f038:	b	0x18c64
   1f03c:	b	0x18c64
   1f040:	ldr	x8, [x0, #0x20]
   1f044:	adrp	x9, 23 ; 0x36000
   1f048:	ldr	x9, [x9, #0x760]
   1f04c:	cmp	x8, x9
   1f050:	b.ne	0x1f060
   1f054:	adrp	x0, 19 ; 0x32000
   1f058:	add	x0, x0, #0x228 ; "headset.single"
   1f05c:	b	0x4324
   1f060:	ret

; ===== sub_1f064 =====
   1f064:	adrp	x8, 23 ; 0x36000
   1f068:	ldr	x8, [x8, #0x770]
   1f06c:	cmn	x8, #0x1
   1f070:	b.ne	0x1f098

; ===== sub_1f074 =====
   1f074:	adrp	x8, 23 ; 0x36000
   1f078:	ldr	x2, [x8, #0x768]
   1f07c:	cbz	x2, 0x1f094
   1f080:	adrp	x0, 19 ; 0x32000
   1f084:	ldr	x0, [x0, #0xde8] ; literal pool symbol address: __dispatch_main_q
   1f088:	adrp	x1, 15 ; 0x2e000
   1f08c:	add	x1, x1, #0xbd8
   1f090:	br	x2
   1f094:	ret
   1f098:	stp	x29, x30, [sp, #-0x10]!
   1f09c:	mov	x29, sp
   1f0a0:	bl	0x1fd08
   1f0a4:	ldp	x29, x30, [sp], #0x10
   1f0a8:	b	0x1f074
   1f0ac:	stp	x29, x30, [sp, #-0x10]!
   1f0b0:	mov	x29, sp
   1f0b4:	adrp	x0, 7 ; 0x26000
   1f0b8:	add	x0, x0, #0xc71 ; literal pool for: "/System/Library/PrivateFrameworks/MediaRemote.framework/MediaRemote"
   1f0bc:	mov	w1, #0x1
   1f0c0:	bl	0x1ff44 ; symbol stub for: _dlopen
   1f0c4:	cbz	x0, 0x1f0d4
   1f0c8:	adrp	x1, 7 ; 0x26000
   1f0cc:	add	x1, x1, #0xcb5 ; literal pool for: "MRMediaRemoteGetNowPlayingInfo"
   1f0d0:	bl	0x1ff50 ; symbol stub for: _dlsym
   1f0d4:	adrp	x8, 23 ; 0x36000
   1f0d8:	str	x0, [x8, #0x768]
   1f0dc:	ldp	x29, x30, [sp], #0x10
   1f0e0:	ret
   1f0e4:	sub	sp, sp, #0x40
   1f0e8:	stp	x22, x21, [sp, #0x10]
   1f0ec:	stp	x20, x19, [sp, #0x20]
   1f0f0:	stp	x29, x30, [sp, #0x30]
   1f0f4:	add	x29, sp, #0x30
   1f0f8:	mov	x0, x1
   1f0fc:	bl	0x200f4 ; symbol stub for: _objc_retain
   1f100:	mov	x21, x0
   1f104:	adrp	x2, 19 ; 0x32000
   1f108:	add	x2, x2, #0x268 ; "kMRMediaRemoteNowPlayingInfoTitle"
   1f10c:	bl	0x214e0
   1f110:	mov	x29, x29
   1f114:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1f118:	mov	x19, x0
   1f11c:	adrp	x2, 19 ; 0x32000
   1f120:	add	x2, x2, #0x288 ; "kMRMediaRemoteNowPlayingInfoArtist"
   1f124:	mov	x0, x21
   1f128:	bl	0x214e0
   1f12c:	mov	x29, x29
   1f130:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1f134:	mov	x20, x0
   1f138:	mov	x0, x21
   1f13c:	bl	0x200e8 ; symbol stub for: _objc_release
   1f140:	adrp	x21, 22 ; 0x35000
   1f144:	ldr	x0, [x21, #0xa38] ; Objc class ref: bad class ref
   1f148:	bl	0x200b8 ; symbol stub for: _objc_opt_class
   1f14c:	mov	x1, x0
   1f150:	mov	x0, x19
   1f154:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
   1f158:	tbz	w0, #0x0, 0x1f234
   1f15c:	mov	x0, x19
   1f160:	bl	0x21160
   1f164:	cbz	x0, 0x1f234
   1f168:	ldr	x21, [x21, #0xa38]
   1f16c:	mov	x0, x21
   1f170:	bl	0x200b8 ; symbol stub for: _objc_opt_class
   1f174:	mov	x1, x0
   1f178:	mov	x0, x20
   1f17c:	bl	0x200c4 ; symbol stub for: _objc_opt_isKindOfClass
   1f180:	adrp	x8, 16 ; 0x2f000
   1f184:	add	x8, x8, #0xae8
   1f188:	tst	w0, #0x1
   1f18c:	csel	x8, x20, x8, ne
   1f190:	stp	x8, x19, [sp]
   1f194:	adrp	x2, 19 ; 0x32000
   1f198:	add	x2, x2, #0x2a8 ; "%@ %@"
   1f19c:	mov	x0, x21
   1f1a0:	bl	0x22100
   1f1a4:	mov	x29, x29
   1f1a8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1f1ac:	mov	x21, x0
   1f1b0:	adrp	x8, 23 ; 0x36000
   1f1b4:	ldr	x2, [x8, #0x3e8]
   1f1b8:	bl	0x21000
   1f1bc:	tbnz	w0, #0x0, 0x1f22c
   1f1c0:	adrp	x0, 23 ; 0x36000
   1f1c4:	add	x0, x0, #0x3e8
   1f1c8:	mov	x1, x21
   1f1cc:	bl	0x20148 ; symbol stub for: _objc_storeStrong
   1f1d0:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
   1f1d4:	adrp	x8, 23 ; 0x36000
   1f1d8:	ldr	d1, [x8, #0x150]
   1f1dc:	fsub	d0, d0, d1
   1f1e0:	fmov	d1, #15.00000000
   1f1e4:	fcmp	d0, d1
   1f1e8:	b.mi	0x1f22c
   1f1ec:	adrp	x0, 19 ; 0x32000
   1f1f0:	add	x0, x0, #0x2c8 ; "music.changed"
   1f1f4:	bl	0x19fd8
   1f1f8:	tbnz	w0, #0x1f, 0x1f220
   1f1fc:	mov	x22, x0
   1f200:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
   1f204:	adrp	x8, 23 ; 0x36000
   1f208:	add	x8, x8, #0x538
   1f20c:	ldr	d1, [x8, w22, uxtw #3]
   1f210:	fsub	d0, d0, d1
   1f214:	fmov	d1, #1.00000000
   1f218:	fcmp	d0, d1
   1f21c:	b.mi	0x1f22c
   1f220:	adrp	x0, 19 ; 0x32000
   1f224:	add	x0, x0, #0x2c8 ; "music.changed"
   1f228:	bl	0x4324
   1f22c:	mov	x0, x21
   1f230:	bl	0x200e8 ; symbol stub for: _objc_release
   1f234:	mov	x0, x20
   1f238:	bl	0x200e8 ; symbol stub for: _objc_release
   1f23c:	mov	x0, x19
   1f240:	ldp	x29, x30, [sp, #0x30]
   1f244:	ldp	x20, x19, [sp, #0x20]
   1f248:	ldp	x22, x21, [sp, #0x10]
   1f24c:	add	sp, sp, #0x40
   1f250:	b	0x200e8 ; symbol stub for: _objc_release

; ===== sub_1f254 =====
   1f254:	sub	sp, sp, #0x60
   1f258:	stp	d9, d8, [sp, #0x30]
   1f25c:	stp	x20, x19, [sp, #0x40]
   1f260:	stp	x29, x30, [sp, #0x50]
   1f264:	add	x29, sp, #0x50
   1f268:	adrp	x8, 23 ; 0x36000
   1f26c:	ldrb	w9, [x8, #0x5a9]
   1f270:	adrp	x8, 23 ; 0x36000
   1f274:	ldrb	w10, [x8, #0x5aa]
   1f278:	cmp	w9, #0x1
   1f27c:	ccmp	w10, w0, #0x4, eq
   1f280:	b.ne	0x1f298

; ===== sub_1f284 =====
   1f284:	ldp	x29, x30, [sp, #0x50]
   1f288:	ldp	x20, x19, [sp, #0x40]
   1f28c:	ldp	d9, d8, [sp, #0x30]
   1f290:	add	sp, sp, #0x60
   1f294:	ret
   1f298:	mov	x19, x0
   1f29c:	strb	w0, [x8, #0x5aa]
   1f2a0:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
   1f2a4:	mov.16b	v8, v0
   1f2a8:	adrp	x8, 23 ; 0x36000
   1f2ac:	ldr	x0, [x8, #0xf8]
   1f2b0:	adrp	x2, 19 ; 0x32000
   1f2b4:	add	x2, x2, #0x2e8 ; "proximity.wave"
   1f2b8:	bl	0x208a0
   1f2bc:	cbz	w19, 0x1f330
   1f2c0:	adrp	x8, 23 ; 0x36000
   1f2c4:	str	d8, [x8, #0x778]
   1f2c8:	adrp	x8, 23 ; 0x36000
   1f2cc:	ldr	x9, [x8, #0x5b0]
   1f2d0:	add	x19, x9, #0x1
   1f2d4:	str	x19, [x8, #0x5b0]
   1f2d8:	tbz	w0, #0x0, 0x1f368
   1f2dc:	mov	x0, #0x0
   1f2e0:	mov	w1, #0x6500
   1f2e4:	movk	w1, #0x1dcd, lsl #16
   1f2e8:	bl	0x1ff38 ; symbol stub for: _dispatch_time
   1f2ec:	adrp	x8, 19 ; 0x32000
   1f2f0:	ldr	x8, [x8, #0xdb8] ; literal pool symbol address: __NSConcreteStackBlock
   1f2f4:	str	x8, [sp, #0x8]
   1f2f8:	adrp	x8, 3 ; 0x22000
   1f2fc:	ldr	d0, [x8, #0x938]
   1f300:	adrp	x8, 0 ; 0x1f000
   1f304:	add	x8, x8, #0x384
   1f308:	str	d0, [sp, #0x10]
   1f30c:	adrp	x9, 13 ; 0x2c000
   1f310:	add	x9, x9, #0x4c0
   1f314:	stp	x8, x9, [sp, #0x18]
   1f318:	str	x19, [sp, #0x28]
   1f31c:	adrp	x1, 19 ; 0x32000
   1f320:	ldr	x1, [x1, #0xde8] ; literal pool symbol address: __dispatch_main_q
   1f324:	add	x2, sp, #0x8
   1f328:	bl	0x1fefc ; symbol stub for: _dispatch_after
   1f32c:	b	0x1f284
   1f330:	cbz	w0, 0x1f284
   1f334:	adrp	x8, 23 ; 0x36000
   1f338:	ldr	d0, [x8, #0x778]
   1f33c:	fsub	d0, d8, d0
   1f340:	fmov	d1, #0.50000000
   1f344:	fcmp	d0, d1
   1f348:	b.pl	0x1f284
   1f34c:	adrp	x8, 23 ; 0x36000
   1f350:	ldr	x9, [x8, #0x5b0]
   1f354:	add	x9, x9, #0x1
   1f358:	str	x9, [x8, #0x5b0]
   1f35c:	adrp	x0, 19 ; 0x32000
   1f360:	add	x0, x0, #0x2e8 ; "proximity.wave"
   1f364:	b	0x1f370
   1f368:	adrp	x0, 19 ; 0x32000
   1f36c:	add	x0, x0, #0x308 ; "proximity.cover"

; ===== sub_1f370 =====
   1f370:	ldp	x29, x30, [sp, #0x50]
   1f374:	ldp	x20, x19, [sp, #0x40]
   1f378:	ldp	d9, d8, [sp, #0x30]
   1f37c:	add	sp, sp, #0x60
   1f380:	b	0x4324
   1f384:	ldr	x8, [x0, #0x20]
   1f388:	adrp	x9, 23 ; 0x36000
   1f38c:	ldr	x9, [x9, #0x5b0]
   1f390:	cmp	x8, x9
   1f394:	b.ne	0x1f3b0
   1f398:	adrp	x8, 23 ; 0x36000
   1f39c:	ldrb	w8, [x8, #0x5aa]
   1f3a0:	tbz	w8, #0x0, 0x1f3b0
   1f3a4:	adrp	x0, 19 ; 0x32000
   1f3a8:	add	x0, x0, #0x308 ; "proximity.cover"
   1f3ac:	b	0x4324
   1f3b0:	ret

; ===== sub_1f3b4 =====
   1f3b4:	sub	sp, sp, #0x20
   1f3b8:	stp	x29, x30, [sp, #0x10]
   1f3bc:	add	x29, sp, #0x10
   1f3c0:	mov	w8, #0x1a4
   1f3c4:	str	x8, [sp]
   1f3c8:	adrp	x0, 7 ; 0x26000
   1f3cc:	add	x0, x0, #0xd39 ; literal pool for: "/var/tmp/com.johndie.triggr.actionbutton"
   1f3d0:	mov	w1, #0x201
   1f3d4:	bl	0x20190 ; symbol stub for: _open
   1f3d8:	tbnz	w0, #0x1f, 0x1f3e8
   1f3dc:	ldp	x29, x30, [sp, #0x10]
   1f3e0:	add	sp, sp, #0x20
   1f3e4:	b	0x1fee4 ; symbol stub for: _close
   1f3e8:	ldp	x29, x30, [sp, #0x10]
   1f3ec:	add	sp, sp, #0x20
   1f3f0:	ret

; ===== sub_1f3f4 =====
   1f3f4:	stp	x20, x19, [sp, #-0x20]!
   1f3f8:	stp	x29, x30, [sp, #0x10]
   1f3fc:	add	x29, sp, #0x10
   1f400:	mov	x20, x1
   1f404:	bl	0x200f4 ; symbol stub for: _objc_retain
   1f408:	mov	x19, x0
   1f40c:	bl	0x2016c ; symbol stub for: _object_getClass
   1f410:	mov	x1, x20
   1f414:	bl	0x1fed8 ; symbol stub for: _class_getInstanceVariable
   1f418:	cbz	x0, 0x1f438
   1f41c:	mov	x1, x0
   1f420:	mov	x0, x19
   1f424:	bl	0x20178 ; symbol stub for: _object_getIvar
   1f428:	mov	x29, x29
   1f42c:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1f430:	mov	x20, x0
   1f434:	b	0x1f43c
   1f438:	mov	x20, #0x0

; ===== sub_1f43c =====
   1f43c:	mov	x0, x19
   1f440:	bl	0x200e8 ; symbol stub for: _objc_release
   1f444:	mov	x0, x20
   1f448:	ldp	x29, x30, [sp, #0x10]
   1f44c:	ldp	x20, x19, [sp], #0x20
   1f450:	b	0x20040 ; symbol stub for: _objc_autoreleaseReturnValue

; ===== sub_1f454 =====
   1f454:	stp	x24, x23, [sp, #-0x40]!
   1f458:	stp	x22, x21, [sp, #0x10]
   1f45c:	stp	x20, x19, [sp, #0x20]
   1f460:	stp	x29, x30, [sp, #0x30]
   1f464:	add	x29, sp, #0x30
   1f468:	bl	0x200f4 ; symbol stub for: _objc_retain
   1f46c:	mov	x19, x0
   1f470:	adrp	x0, 19 ; 0x32000
   1f474:	add	x0, x0, #0x3a8 ; "_performActionForEvent:interactionTime:"
   1f478:	bl	0x1fe24 ; symbol stub for: _NSSelectorFromString
   1f47c:	mov	x20, x0
   1f480:	mov	x0, x19
   1f484:	mov	x1, x20
   1f488:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1f48c:	tbz	w0, #0x0, 0x1f4ac
   1f490:	bl	0x1ffc8 ; symbol stub for: _mach_absolute_time
   1f494:	mov	x3, x0
   1f498:	mov	x0, x19
   1f49c:	mov	x1, x20
   1f4a0:	mov	w2, #0x3
   1f4a4:	bl	0x200a0 ; symbol stub for: _objc_msgSend
   1f4a8:	b	0x1f53c
   1f4ac:	mov	x8, #0x0
   1f4b0:	adrp	x9, 22 ; 0x35000
   1f4b4:	ldr	x20, [x9, #0x3a8]
   1f4b8:	mov	w9, #0x1
   1f4bc:	adrp	x23, 15 ; 0x2e000
   1f4c0:	add	x23, x23, #0xbf8
   1f4c4:	mov	x24, x9
   1f4c8:	ldr	x21, [x23, x8, lsl #3]
   1f4cc:	mov	x0, x19
   1f4d0:	bl	0x2016c ; symbol stub for: _object_getClass
   1f4d4:	mov	x1, x21
   1f4d8:	bl	0x1fed8 ; symbol stub for: _class_getInstanceVariable
   1f4dc:	cbz	x0, 0x1f530
   1f4e0:	mov	x21, x0
   1f4e4:	mov	x0, x19
   1f4e8:	mov	x1, x21
   1f4ec:	bl	0x20178 ; symbol stub for: _object_getIvar
   1f4f0:	mov	x29, x29
   1f4f4:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1f4f8:	cbz	x0, 0x1f530
   1f4fc:	mov	x22, x0
   1f500:	mov	x1, x20
   1f504:	bl	0x200dc ; symbol stub for: _objc_opt_respondsToSelector
   1f508:	tbz	w0, #0x0, 0x1f518
   1f50c:	mov	x0, x22
   1f510:	mov	x2, x20
   1f514:	bl	0x215e0
   1f518:	mov	x0, x19
   1f51c:	mov	x1, x21
   1f520:	mov	x2, #0x0
   1f524:	bl	0x20184 ; symbol stub for: _object_setIvar
   1f528:	mov	x0, x22
   1f52c:	bl	0x200e8 ; symbol stub for: _objc_release
   1f530:	mov	w9, #0x0
   1f534:	mov	w8, #0x1
   1f538:	tbnz	w24, #0x0, 0x1f4c4

; ===== sub_1f53c =====
   1f53c:	mov	x0, x19
   1f540:	ldp	x29, x30, [sp, #0x30]
   1f544:	ldp	x20, x19, [sp, #0x20]
   1f548:	ldp	x22, x21, [sp, #0x10]
   1f54c:	ldp	x24, x23, [sp], #0x40
   1f550:	b	0x200e8 ; symbol stub for: _objc_release
   1f554:	adrp	x8, 23 ; 0x36000
   1f558:	ldr	x9, [x8, #0x788]
   1f55c:	cmp	x9, #0x1
   1f560:	b.ne	0x1f580
   1f564:	str	xzr, [x8, #0x788]
   1f568:	ldrb	w8, [x0, #0x20]
   1f56c:	cmp	w8, #0x1
   1f570:	b.ne	0x1f580
   1f574:	adrp	x0, 19 ; 0x32000
   1f578:	add	x0, x0, #0x368 ; "action.press"
   1f57c:	b	0x4324
   1f580:	ret
   1f584:	stp	x20, x19, [sp, #-0x20]!
   1f588:	stp	x29, x30, [sp, #0x10]
   1f58c:	add	x29, sp, #0x10
   1f590:	ldr	x0, [x0, #0x20]
   1f594:	bl	0x2016c ; symbol stub for: _object_getClass
   1f598:	adrp	x1, 7 ; 0x26000
   1f59c:	add	x1, x1, #0xe02 ; literal pool for: "_inhibitActions"
   1f5a0:	bl	0x1fed8 ; symbol stub for: _class_getInstanceVariable
   1f5a4:	cbz	x0, 0x1f5e0
   1f5a8:	mov	x19, x0
   1f5ac:	bl	0x1ffbc ; symbol stub for: _ivar_getTypeEncoding
   1f5b0:	cbz	x0, 0x1f5e0
   1f5b4:	ldrb	w8, [x0]
   1f5b8:	cmp	w8, #0x63
   1f5bc:	b.eq	0x1f5c8
   1f5c0:	cmp	w8, #0x42
   1f5c4:	b.ne	0x1f5e0
   1f5c8:	ldrb	w8, [x0, #0x1]
   1f5cc:	cbnz	w8, 0x1f5e0
   1f5d0:	mov	x0, x19
   1f5d4:	bl	0x1ffb0 ; symbol stub for: _ivar_getOffset
   1f5d8:	adrp	x8, 23 ; 0x36000
   1f5dc:	str	x0, [x8, #0xe8]
   1f5e0:	ldp	x29, x30, [sp, #0x10]
   1f5e4:	ldp	x20, x19, [sp], #0x20
   1f5e8:	ret

; ===== sub_1f5ec =====
   1f5ec:	stp	d9, d8, [sp, #-0x30]!
   1f5f0:	stp	x20, x19, [sp, #0x10]
   1f5f4:	stp	x29, x30, [sp, #0x20]
   1f5f8:	add	x29, sp, #0x20
   1f5fc:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
   1f600:	mov.16b	v8, v0
   1f604:	adrp	x19, 23 ; 0x36000
   1f608:	ldr	d0, [x19, #0x798]
   1f60c:	fsub	d0, d8, d0
   1f610:	adrp	x8, 3 ; 0x22000
   1f614:	ldr	d1, [x8, #0x968]
   1f618:	fcmp	d0, d1
   1f61c:	b.mi	0x1f63c
   1f620:	adrp	x0, 19 ; 0x32000
   1f624:	add	x0, x0, #0x3c8 ; "homebar.doubletap"
   1f628:	bl	0x4324
   1f62c:	cbz	w0, 0x1f640
   1f630:	str	d8, [x19, #0x798]
   1f634:	adrp	x8, 23 ; 0x36000
   1f638:	str	xzr, [x8, #0x7a0]
   1f63c:	mov	w0, #0x1
   1f640:	ldp	x29, x30, [sp, #0x20]
   1f644:	ldp	x20, x19, [sp, #0x10]
   1f648:	ldp	d9, d8, [sp], #0x30
   1f64c:	ret

; ===== sub_1f650 =====
   1f650:	stp	x29, x30, [sp, #-0x10]!
   1f654:	mov	x29, sp
   1f658:	adrp	x8, 23 ; 0x36000
   1f65c:	ldr	x0, [x8, #0xf8]
   1f660:	adrp	x2, 19 ; 0x32000
   1f664:	add	x2, x2, #0x3c8 ; "homebar.doubletap"
   1f668:	bl	0x208a0
   1f66c:	cbz	w0, 0x1f6a0
   1f670:	bl	0x1fd28 ; symbol stub for: _CACurrentMediaTime
   1f674:	adrp	x8, 23 ; 0x36000
   1f678:	ldr	d1, [x8, #0x7a0]
   1f67c:	fsub	d1, d0, d1
   1f680:	adrp	x9, 3 ; 0x22000
   1f684:	ldr	d2, [x9, #0x968]
   1f688:	fcmp	d1, d2
   1f68c:	b.pl	0x1f69c
   1f690:	str	xzr, [x8, #0x7a0]
   1f694:	ldp	x29, x30, [sp], #0x10
   1f698:	b	0x1f5ec
   1f69c:	str	d0, [x8, #0x7a0]
   1f6a0:	mov	w0, #0x0
   1f6a4:	ldp	x29, x30, [sp], #0x10
   1f6a8:	ret

; ===== sub_1f6ac =====
   1f6ac:	stp	x20, x19, [sp, #-0x20]!
   1f6b0:	stp	x29, x30, [sp, #0x10]
   1f6b4:	add	x29, sp, #0x10
   1f6b8:	bl	0x200f4 ; symbol stub for: _objc_retain
   1f6bc:	mov	x19, x0
   1f6c0:	bl	0x22440
   1f6c4:	mov	x29, x29
   1f6c8:	bl	0x20118 ; symbol stub for: _objc_retainAutoreleasedReturnValue
   1f6cc:	mov	x20, x0
   1f6d0:	bl	0x200e8 ; symbol stub for: _objc_release
   1f6d4:	cbz	x20, 0x1f6fc
   1f6d8:	adrp	x0, 23 ; 0x36000
   1f6dc:	add	x0, x0, #0x130
   1f6e0:	mov	x1, x19
   1f6e4:	bl	0x20154 ; symbol stub for: _objc_storeWeak
   1f6e8:	adrp	x0, 18 ; 0x31000
   1f6ec:	add	x0, x0, #0x848 ; "lsclock."
   1f6f0:	bl	0x18b50
   1f6f4:	cbz	w0, 0x1f6fc
   1f6f8:	bl	0x1a6b8
   1f6fc:	mov	x0, x19
   1f700:	ldp	x29, x30, [sp, #0x10]
   1f704:	ldp	x20, x19, [sp], #0x20
   1f708:	b	0x200e8 ; symbol stub for: _objc_release

; ===== sub_1f70c =====
   1f70c:	adrp	x0, 23 ; 0x36000
   1f710:	add	x0, x0, #0x5d8
   1f714:	adrp	x1, 15 ; 0x2e000
   1f718:	add	x1, x1, #0x820
   1f71c:	b	0x1ff20 ; symbol stub for: _dispatch_once

; ===== sub_1f720 =====
   1f720:	adrp	x0, 23 ; 0x36000
   1f724:	add	x0, x0, #0x5d8
   1f728:	adrp	x1, 15 ; 0x2e000
   1f72c:	add	x1, x1, #0x820
   1f730:	b	0x1ff20 ; symbol stub for: _dispatch_once
   1f734:	stp	x22, x21, [sp, #-0x30]!
   1f738:	stp	x20, x19, [sp, #0x10]
   1f73c:	stp	x29, x30, [sp, #0x20]
   1f740:	mov	x19, x2
   1f744:	mov	x20, x1
   1f748:	mov	x21, x0
   1f74c:	adrp	x22, 23 ; 0x36000
   1f750:	add	x22, x22, #0x7a8
   1f754:	adrp	x2, 0 ; 0x1f000
   1f758:	add	x2, x2, #0x7fc
   1f75c:	add	x0, x22, #0x10
   1f760:	mov	x1, #0x0
   1f764:	bl	0x1ff2c ; symbol stub for: _dispatch_once_f
   1f768:	ldr	w8, [x22]
   1f76c:	cmp	w21, w8
   1f770:	b.ge	0x1f788
   1f774:	mov	w0, #0x1
   1f778:	ldp	x29, x30, [sp, #0x20]
   1f77c:	ldp	x20, x19, [sp, #0x10]
   1f780:	ldp	x22, x21, [sp], #0x30
   1f784:	ret
   1f788:	b.le	0x1f7a0
   1f78c:	mov	w0, #0x0
   1f790:	ldp	x29, x30, [sp, #0x20]
   1f794:	ldp	x20, x19, [sp, #0x10]
   1f798:	ldp	x22, x21, [sp], #0x30
   1f79c:	ret
   1f7a0:	adrp	x8, 23 ; 0x36000
   1f7a4:	ldr	w8, [x8, #0x7ac]
   1f7a8:	cmp	w20, w8
   1f7ac:	b.ge	0x1f7c4
   1f7b0:	mov	w0, #0x1
   1f7b4:	ldp	x29, x30, [sp, #0x20]
   1f7b8:	ldp	x20, x19, [sp, #0x10]
   1f7bc:	ldp	x22, x21, [sp], #0x30
   1f7c0:	ret
   1f7c4:	b.le	0x1f7dc
   1f7c8:	mov	w0, #0x0
   1f7cc:	ldp	x29, x30, [sp, #0x20]
   1f7d0:	ldp	x20, x19, [sp, #0x10]
   1f7d4:	ldp	x22, x21, [sp], #0x30
   1f7d8:	ret
   1f7dc:	adrp	x8, 23 ; 0x36000
   1f7e0:	ldr	w8, [x8, #0x7b0]
   1f7e4:	cmp	w19, w8
   1f7e8:	cset	w0, le
   1f7ec:	ldp	x29, x30, [sp, #0x20]
   1f7f0:	ldp	x20, x19, [sp, #0x10]
   1f7f4:	ldp	x22, x21, [sp], #0x30
   1f7f8:	ret
   1f7fc:	mov	w0, #0x1
   1f800:	b	0x1f95c

; ===== sub_1f804 =====
   1f804:	sub	sp, sp, #0x50
   1f808:	stp	x24, x23, [sp, #0x10]
   1f80c:	stp	x22, x21, [sp, #0x20]
   1f810:	stp	x20, x19, [sp, #0x30]
   1f814:	stp	x29, x30, [sp, #0x40]
   1f818:	mov	x19, x3
   1f81c:	mov	x20, x2
   1f820:	mov	x21, x1
   1f824:	mov	x22, x0
   1f828:	adrp	x8, 19 ; 0x32000
   1f82c:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1f830:	ldr	x8, [x8]
   1f834:	str	x8, [sp, #0x8]
   1f838:	adrp	x23, 23 ; 0x36000
   1f83c:	add	x23, x23, #0x7c0
   1f840:	adrp	x2, 0 ; 0x1f000
   1f844:	add	x2, x2, #0x954
   1f848:	mov	x0, x23
   1f84c:	mov	x1, #0x0
   1f850:	bl	0x1ff2c ; symbol stub for: _dispatch_once_f
   1f854:	ldr	x8, [x23, #0x8]
   1f858:	cbz	x8, 0x1f894
   1f85c:	lsl	w8, w21, #16
   1f860:	bfi	w8, w20, #8, #8
   1f864:	bfxil	w8, w19, #0, #8
   1f868:	stp	w22, w8, [sp]
   1f86c:	mov	x1, sp
   1f870:	mov	w0, #0x1
   1f874:	bl	0x1fe78 ; symbol stub for: __availability_version_check
   1f878:	ldr	x8, [sp, #0x8]
   1f87c:	adrp	x9, 19 ; 0x32000
   1f880:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1f884:	ldr	x9, [x9]
   1f888:	cmp	x9, x8
   1f88c:	b.eq	0x1f8fc
   1f890:	b	0x1f950
   1f894:	adrp	x22, 23 ; 0x36000
   1f898:	add	x22, x22, #0x7a8
   1f89c:	adrp	x2, 0 ; 0x1f000
   1f8a0:	add	x2, x2, #0x7fc
   1f8a4:	add	x0, x22, #0x10
   1f8a8:	mov	x1, #0x0
   1f8ac:	bl	0x1ff2c ; symbol stub for: _dispatch_once_f
   1f8b0:	ldr	w8, [x22]
   1f8b4:	cmp	w21, w8
   1f8b8:	b.ge	0x1f8dc
   1f8bc:	mov	w0, #0x1
   1f8c0:	ldr	x8, [sp, #0x8]
   1f8c4:	adrp	x9, 19 ; 0x32000
   1f8c8:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1f8cc:	ldr	x9, [x9]
   1f8d0:	cmp	x9, x8
   1f8d4:	b.eq	0x1f8fc
   1f8d8:	b	0x1f950
   1f8dc:	b.le	0x1f914
   1f8e0:	mov	w0, #0x0
   1f8e4:	ldr	x8, [sp, #0x8]
   1f8e8:	adrp	x9, 19 ; 0x32000
   1f8ec:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1f8f0:	ldr	x9, [x9]
   1f8f4:	cmp	x9, x8
   1f8f8:	b.ne	0x1f950
   1f8fc:	ldp	x29, x30, [sp, #0x40]
   1f900:	ldp	x20, x19, [sp, #0x30]
   1f904:	ldp	x22, x21, [sp, #0x20]
   1f908:	ldp	x24, x23, [sp, #0x10]
   1f90c:	add	sp, sp, #0x50
   1f910:	ret
   1f914:	adrp	x8, 23 ; 0x36000
   1f918:	ldr	w8, [x8, #0x7ac]
   1f91c:	cmp	w20, w8
   1f920:	b.lt	0x1f8bc
   1f924:	b.gt	0x1f8e0
   1f928:	adrp	x8, 23 ; 0x36000
   1f92c:	ldr	w8, [x8, #0x7b0]
   1f930:	cmp	w19, w8
   1f934:	cset	w0, le
   1f938:	ldr	x8, [sp, #0x8]
   1f93c:	adrp	x9, 19 ; 0x32000
   1f940:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1f944:	ldr	x9, [x9]
   1f948:	cmp	x9, x8
   1f94c:	b.eq	0x1f8fc

; ===== sub_1f950 =====
   1f950:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail
   1f954:	mov	w0, #0x0
   1f958:	b	0x1f95c

; ===== sub_1f95c =====
   1f95c:	sub	sp, sp, #0xc0
   1f960:	stp	x28, x27, [sp, #0x60]
   1f964:	stp	x26, x25, [sp, #0x70]
   1f968:	stp	x24, x23, [sp, #0x80]
   1f96c:	stp	x22, x21, [sp, #0x90]
   1f970:	stp	x20, x19, [sp, #0xa0]
   1f974:	stp	x29, x30, [sp, #0xb0]
   1f978:	adrp	x8, 19 ; 0x32000
   1f97c:	ldr	x8, [x8, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1f980:	ldr	x8, [x8]
   1f984:	str	x8, [sp, #0x58]
   1f988:	adrp	x9, 23 ; 0x36000
   1f98c:	ldr	x8, [x9, #0x7c8]
   1f990:	tbnz	w0, #0x0, 0x1f998
   1f994:	cbnz	x8, 0x1fc38
   1f998:	adrp	x10, 19 ; 0x32000
   1f99c:	ldr	x10, [x10, #0xde0] ; literal pool symbol address: __availability_version_check
   1f9a0:	cbz	x10, 0x1f9ac
   1f9a4:	str	x10, [x9, #0x7c8]
   1f9a8:	mov	x8, x10
   1f9ac:	tbnz	w0, #0x0, 0x1f9b4
   1f9b0:	cbnz	x8, 0x1fc38
   1f9b4:	adrp	x1, 7 ; 0x26000
   1f9b8:	add	x1, x1, #0xe26 ; literal pool for: "kCFAllocatorNull"
   1f9bc:	mov	x0, #-0x2
   1f9c0:	bl	0x1ff50 ; symbol stub for: _dlsym
   1f9c4:	cbz	x0, 0x1fc38
   1f9c8:	ldr	x20, [x0]
   1f9cc:	adrp	x1, 7 ; 0x26000
   1f9d0:	add	x1, x1, #0xe37 ; literal pool for: "CFDataCreateWithBytesNoCopy"
   1f9d4:	mov	x0, #-0x2
   1f9d8:	bl	0x1ff50 ; symbol stub for: _dlsym
   1f9dc:	cbz	x0, 0x1fc38
   1f9e0:	mov	x27, x0
   1f9e4:	adrp	x1, 7 ; 0x26000
   1f9e8:	add	x1, x1, #0xe53 ; literal pool for: "CFPropertyListCreateWithData"
   1f9ec:	mov	x0, #-0x2
   1f9f0:	bl	0x1ff50 ; symbol stub for: _dlsym
   1f9f4:	mov	x28, x0
   1f9f8:	adrp	x1, 7 ; 0x26000
   1f9fc:	add	x1, x1, #0xe70 ; literal pool for: "CFPropertyListCreateFromXMLData"
   1fa00:	mov	x0, #-0x2
   1fa04:	bl	0x1ff50 ; symbol stub for: _dlsym
   1fa08:	orr	x8, x28, x0
   1fa0c:	cbz	x8, 0x1fc38
   1fa10:	mov	x21, x0
   1fa14:	adrp	x1, 7 ; 0x26000
   1fa18:	add	x1, x1, #0xe90 ; literal pool for: "CFStringCreateWithCStringNoCopy"
   1fa1c:	mov	x0, #-0x2
   1fa20:	bl	0x1ff50 ; symbol stub for: _dlsym
   1fa24:	cbz	x0, 0x1fc38
   1fa28:	mov	x25, x0
   1fa2c:	adrp	x1, 7 ; 0x26000
   1fa30:	add	x1, x1, #0xeb0 ; literal pool for: "CFDictionaryGetValue"
   1fa34:	mov	x0, #-0x2
   1fa38:	bl	0x1ff50 ; symbol stub for: _dlsym
   1fa3c:	cbz	x0, 0x1fc38
   1fa40:	mov	x24, x0
   1fa44:	adrp	x1, 7 ; 0x26000
   1fa48:	add	x1, x1, #0xec5 ; literal pool for: "CFGetTypeID"
   1fa4c:	mov	x0, #-0x2
   1fa50:	bl	0x1ff50 ; symbol stub for: _dlsym
   1fa54:	cbz	x0, 0x1fc38
   1fa58:	mov	x23, x0
   1fa5c:	adrp	x1, 7 ; 0x26000
   1fa60:	add	x1, x1, #0xed1 ; literal pool for: "CFStringGetTypeID"
   1fa64:	mov	x0, #-0x2
   1fa68:	bl	0x1ff50 ; symbol stub for: _dlsym
   1fa6c:	cbz	x0, 0x1fc38
   1fa70:	mov	x26, x0
   1fa74:	adrp	x1, 7 ; 0x26000
   1fa78:	add	x1, x1, #0xee3 ; literal pool for: "CFStringGetCString"
   1fa7c:	mov	x0, #-0x2
   1fa80:	bl	0x1ff50 ; symbol stub for: _dlsym
   1fa84:	str	x0, [sp, #0x30]
   1fa88:	cbz	x0, 0x1fc38
   1fa8c:	adrp	x1, 7 ; 0x26000
   1fa90:	add	x1, x1, #0xef6 ; literal pool for: "CFRelease"
   1fa94:	mov	x0, #-0x2
   1fa98:	bl	0x1ff50 ; symbol stub for: _dlsym
   1fa9c:	cbz	x0, 0x1fc38
   1faa0:	mov	x19, x0
   1faa4:	adrp	x0, 7 ; 0x26000
   1faa8:	add	x0, x0, #0xf00 ; literal pool for: "/System/Library/CoreServices/SystemVersion.plist"
   1faac:	adrp	x1, 7 ; 0x26000
   1fab0:	add	x1, x1, #0xf31 ; literal pool for: "r"
   1fab4:	bl	0x1ff74 ; symbol stub for: _fopen
   1fab8:	cbz	x0, 0x1fc38
   1fabc:	mov	x22, x0
   1fac0:	str	x19, [sp, #0x28]
   1fac4:	mov	x1, #0x0
   1fac8:	mov	w2, #0x2
   1facc:	bl	0x1ff98 ; symbol stub for: _fseek
   1fad0:	mov	x0, x22
   1fad4:	bl	0x1ffa4 ; symbol stub for: _ftell
   1fad8:	tbnz	x0, #0x3f, 0x1fb50
   1fadc:	mov	x19, x0
   1fae0:	mov	x0, x22
   1fae4:	bl	0x201d8 ; symbol stub for: _rewind
   1fae8:	mov	x0, x19
   1faec:	bl	0x1ffd4 ; symbol stub for: _malloc
   1faf0:	cbz	x0, 0x1fc2c
   1faf4:	stp	x22, x0, [sp, #0x18]
   1faf8:	mov	w1, #0x1
   1fafc:	mov	x2, x19
   1fb00:	mov	x3, x22
   1fb04:	bl	0x1ff80 ; symbol stub for: _fread
   1fb08:	cmp	x0, x19
   1fb0c:	b.ne	0x1fb58
   1fb10:	mov	x0, #0x0
   1fb14:	ldr	x1, [sp, #0x20]
   1fb18:	mov	x2, x19
   1fb1c:	mov	x3, x20
   1fb20:	blr	x27
   1fb24:	cbz	x0, 0x1fb58
   1fb28:	mov	x27, x0
   1fb2c:	ldr	x22, [sp, #0x18]
   1fb30:	mov	x0, #0x0
   1fb34:	mov	x1, x27
   1fb38:	mov	x2, #0x0
   1fb3c:	mov	x3, #0x0
   1fb40:	cbz	x28, 0x1fb60
   1fb44:	mov	x4, #0x0
   1fb48:	blr	x28
   1fb4c:	b	0x1fb64
   1fb50:	mov	x0, #0x0
   1fb54:	b	0x1fc2c
   1fb58:	ldp	x22, x0, [sp, #0x18]
   1fb5c:	b	0x1fc2c
   1fb60:	blr	x21

; ===== sub_1fb64 =====
   1fb64:	mov	x21, x0
   1fb68:	cbz	x0, 0x1fc1c
   1fb6c:	adrp	x1, 7 ; 0x26000
   1fb70:	add	x1, x1, #0xf33 ; literal pool for: "ProductVersion"
   1fb74:	mov	x0, #0x0
   1fb78:	mov	w2, #0x600
   1fb7c:	mov	x3, x20
   1fb80:	blr	x25
   1fb84:	cbz	x0, 0x1fc0c
   1fb88:	mov	x20, x0
   1fb8c:	mov	x0, x21
   1fb90:	mov	x1, x20
   1fb94:	blr	x24
   1fb98:	mov	x19, x0
   1fb9c:	mov	x0, x20
   1fba0:	ldr	x8, [sp, #0x28]
   1fba4:	blr	x8
   1fba8:	cbz	x19, 0x1fc0c
   1fbac:	mov	x0, x19
   1fbb0:	blr	x23
   1fbb4:	mov	x20, x0
   1fbb8:	blr	x26
   1fbbc:	cmp	x20, x0
   1fbc0:	b.ne	0x1fc0c
   1fbc4:	add	x1, sp, #0x38
   1fbc8:	mov	x0, x19
   1fbcc:	mov	w2, #0x20
   1fbd0:	mov	w3, #0x100
   1fbd4:	movk	w3, #0x800, lsl #16
   1fbd8:	ldr	x8, [sp, #0x30]
   1fbdc:	blr	x8
   1fbe0:	cbz	w0, 0x1fc0c
   1fbe4:	adrp	x8, 23 ; 0x36000
   1fbe8:	add	x8, x8, #0x7a8
   1fbec:	add	x10, x8, #0x8
   1fbf0:	add	x9, x8, #0x4
   1fbf4:	stp	x9, x10, [sp, #0x8]
   1fbf8:	str	x8, [sp]
   1fbfc:	adrp	x1, 7 ; 0x26000
   1fc00:	add	x1, x1, #0xf42 ; literal pool for: "%d.%d.%d"
   1fc04:	add	x0, sp, #0x38
   1fc08:	bl	0x201f0 ; symbol stub for: _sscanf
   1fc0c:	mov	x0, x21
   1fc10:	ldr	x8, [sp, #0x28]
   1fc14:	blr	x8
   1fc18:	ldr	x22, [sp, #0x18]
   1fc1c:	mov	x0, x27
   1fc20:	ldr	x8, [sp, #0x28]
   1fc24:	blr	x8
   1fc28:	ldr	x0, [sp, #0x20]

; ===== sub_1fc2c =====
   1fc2c:	bl	0x1ff8c ; symbol stub for: _free
   1fc30:	mov	x0, x22
   1fc34:	bl	0x1ff5c ; symbol stub for: _fclose
   1fc38:	ldr	x8, [sp, #0x58]
   1fc3c:	adrp	x9, 19 ; 0x32000
   1fc40:	ldr	x9, [x9, #0xdd8] ; literal pool symbol address: ___stack_chk_guard
   1fc44:	ldr	x9, [x9]
   1fc48:	cmp	x9, x8
   1fc4c:	b.ne	0x1fc70
   1fc50:	ldp	x29, x30, [sp, #0xb0]
   1fc54:	ldp	x20, x19, [sp, #0xa0]
   1fc58:	ldp	x22, x21, [sp, #0x90]
   1fc5c:	ldp	x24, x23, [sp, #0x80]
   1fc60:	ldp	x26, x25, [sp, #0x70]
   1fc64:	ldp	x28, x27, [sp, #0x60]
   1fc68:	add	sp, sp, #0xc0
   1fc6c:	ret
   1fc70:	bl	0x1fe6c ; symbol stub for: ___stack_chk_fail

; ===== sub_1fc74 =====
   1fc74:	b	0x1f720

; ===== sub_1fc78 =====
   1fc78:	stp	x29, x30, [sp, #-0x10]!
   1fc7c:	mov	x29, sp
   1fc80:	bl	0x1f70c
   1fc84:	ldp	x29, x30, [sp], #0x10
   1fc88:	ret

; ===== sub_1fc8c =====
   1fc8c:	b	0x1f720

; ===== sub_1fc90 =====
   1fc90:	stp	x29, x30, [sp, #-0x10]!
   1fc94:	mov	x29, sp
   1fc98:	bl	0x1f70c
   1fc9c:	ldp	x29, x30, [sp], #0x10
   1fca0:	ret

; ===== sub_1fca4 =====
   1fca4:	stp	x29, x30, [sp, #-0x10]!
   1fca8:	mov	x29, sp
   1fcac:	bl	0x1f70c
   1fcb0:	ldp	x29, x30, [sp], #0x10
   1fcb4:	ret

; ===== sub_1fcb8 =====
   1fcb8:	adrp	x0, 23 ; 0x36000
   1fcbc:	add	x0, x0, #0x480
   1fcc0:	adrp	x1, 13 ; 0x2c000
   1fcc4:	add	x1, x1, #0x400
   1fcc8:	b	0x1ff20 ; symbol stub for: _dispatch_once

; ===== sub_1fccc =====
   1fccc:	adrp	x0, 23 ; 0x36000
   1fcd0:	add	x0, x0, #0x490
   1fcd4:	adrp	x1, 13 ; 0x2c000
   1fcd8:	add	x1, x1, #0x440
   1fcdc:	b	0x1ff20 ; symbol stub for: _dispatch_once

; ===== sub_1fce0 =====
   1fce0:	adrp	x0, 23 ; 0x36000
   1fce4:	add	x0, x0, #0x4c0
   1fce8:	adrp	x1, 13 ; 0x2c000
   1fcec:	add	x1, x1, #0x5a0
   1fcf0:	b	0x1ff20 ; symbol stub for: _dispatch_once

; ===== sub_1fcf4 =====
   1fcf4:	adrp	x0, 23 ; 0x36000
   1fcf8:	add	x0, x0, #0x4e0
   1fcfc:	adrp	x1, 13 ; 0x2c000
   1fd00:	add	x1, x1, #0xda0
   1fd04:	b	0x1ff20 ; symbol stub for: _dispatch_once

; ===== sub_1fd08 =====
   1fd08:	adrp	x0, 23 ; 0x36000
   1fd0c:	add	x0, x0, #0x770
   1fd10:	adrp	x1, 15 ; 0x2e000
   1fd14:	add	x1, x1, #0xb98
   1fd18:	b	0x1ff20 ; symbol stub for: _dispatch_once
