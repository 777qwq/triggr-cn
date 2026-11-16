/tmp/v21a/x/var/jb/usr/lib/libtriggr.dylib:
(__TEXT,__text) section

; ===== sub_4000 =====
    4000:	sub	sp, sp, #0x20
    4004:	stp	x29, x30, [sp, #0x10]
    4008:	add	x29, sp, #0x10
    400c:	adrp	x8, 8 ; 0xc000
    4010:	ldr	x8, [x8, #0x6d8] ; Objc class ref: bad class ref
    4014:	stp	x0, x8, [sp]
    4018:	adrp	x8, 8 ; 0xc000
    401c:	ldr	x1, [x8, #0x4e0]
    4020:	mov	x0, sp
    4024:	bl	0x5370 ; symbol stub for: _objc_msgSendSuper2
    4028:	cbz	x0, 0x4034
    402c:	mov	w8, #0x7
    4030:	str	x8, [x0, #0x28]
    4034:	ldp	x29, x30, [sp, #0x10]
    4038:	add	sp, sp, #0x20
    403c:	ret
    4040:	ldr	x0, [x0, #0x8]
    4044:	ret
    4048:	mov	w3, #0x8
    404c:	b	0x53f4 ; symbol stub for: _objc_setProperty_nonatomic_copy
    4050:	ldr	x0, [x0, #0x10]
    4054:	ret
    4058:	mov	w3, #0x10
    405c:	b	0x53f4 ; symbol stub for: _objc_setProperty_nonatomic_copy
    4060:	ldr	x0, [x0, #0x18]
    4064:	ret
    4068:	mov	w3, #0x18
    406c:	b	0x53f4 ; symbol stub for: _objc_setProperty_nonatomic_copy
    4070:	ldr	x0, [x0, #0x20]
    4074:	ret
    4078:	mov	w3, #0x20
    407c:	b	0x53f4 ; symbol stub for: _objc_setProperty_nonatomic_copy
    4080:	ldr	x0, [x0, #0x28]
    4084:	ret
    4088:	str	x2, [x0, #0x28]
    408c:	ret
    4090:	stp	x20, x19, [sp, #-0x20]!
    4094:	stp	x29, x30, [sp, #0x10]
    4098:	add	x29, sp, #0x10
    409c:	mov	x19, x0
    40a0:	add	x0, x0, #0x20
    40a4:	mov	x1, #0x0
    40a8:	bl	0x5400 ; symbol stub for: _objc_storeStrong
    40ac:	add	x0, x19, #0x18
    40b0:	mov	x1, #0x0
    40b4:	bl	0x5400 ; symbol stub for: _objc_storeStrong
    40b8:	add	x0, x19, #0x10
    40bc:	mov	x1, #0x0
    40c0:	bl	0x5400 ; symbol stub for: _objc_storeStrong
    40c4:	add	x0, x19, #0x8
    40c8:	mov	x1, #0x0
    40cc:	ldp	x29, x30, [sp, #0x10]
    40d0:	ldp	x20, x19, [sp], #0x20
    40d4:	b	0x5400 ; symbol stub for: _objc_storeStrong
    40d8:	sub	sp, sp, #0x20
    40dc:	stp	x29, x30, [sp, #0x10]
    40e0:	add	x29, sp, #0x10
    40e4:	adrp	x8, 8 ; 0xc000
    40e8:	ldr	x8, [x8, #0x6e0] ; Objc class ref: bad class ref
    40ec:	stp	x0, x8, [sp]
    40f0:	adrp	x8, 8 ; 0xc000
    40f4:	ldr	x1, [x8, #0x4e0]
    40f8:	mov	x0, sp
    40fc:	bl	0x5370 ; symbol stub for: _objc_msgSendSuper2
    4100:	cbz	x0, 0x410c
    4104:	mov	w8, #0x7
    4108:	str	x8, [x0, #0x28]
    410c:	ldp	x29, x30, [sp, #0x10]
    4110:	add	sp, sp, #0x20
    4114:	ret
    4118:	ldr	x0, [x0, #0x8]
    411c:	ret
    4120:	mov	w3, #0x8
    4124:	b	0x53f4 ; symbol stub for: _objc_setProperty_nonatomic_copy
    4128:	ldr	x0, [x0, #0x10]
    412c:	ret
    4130:	mov	w3, #0x10
    4134:	b	0x53f4 ; symbol stub for: _objc_setProperty_nonatomic_copy
    4138:	ldr	x0, [x0, #0x18]
    413c:	ret
    4140:	mov	w3, #0x18
    4144:	b	0x53f4 ; symbol stub for: _objc_setProperty_nonatomic_copy
    4148:	ldr	x0, [x0, #0x20]
    414c:	ret
    4150:	mov	w3, #0x20
    4154:	b	0x53f4 ; symbol stub for: _objc_setProperty_nonatomic_copy
    4158:	ldr	x0, [x0, #0x28]
    415c:	ret
    4160:	str	x2, [x0, #0x28]
    4164:	ret
    4168:	stp	x20, x19, [sp, #-0x20]!
    416c:	stp	x29, x30, [sp, #0x10]
    4170:	add	x29, sp, #0x10
    4174:	mov	x19, x0
    4178:	add	x0, x0, #0x20
    417c:	mov	x1, #0x0
    4180:	bl	0x5400 ; symbol stub for: _objc_storeStrong
    4184:	add	x0, x19, #0x18
    4188:	mov	x1, #0x0
    418c:	bl	0x5400 ; symbol stub for: _objc_storeStrong
    4190:	add	x0, x19, #0x10
    4194:	mov	x1, #0x0
    4198:	bl	0x5400 ; symbol stub for: _objc_storeStrong
    419c:	add	x0, x19, #0x8
    41a0:	mov	x1, #0x0
    41a4:	ldp	x29, x30, [sp, #0x10]
    41a8:	ldp	x20, x19, [sp], #0x20
    41ac:	b	0x5400 ; symbol stub for: _objc_storeStrong
    41b0:	ldr	x0, [x0, #0x10]
    41b4:	ret
    41b8:	mov	w3, #0x10
    41bc:	b	0x53f4 ; symbol stub for: _objc_setProperty_nonatomic_copy
    41c0:	ldr	x0, [x0, #0x18]
    41c4:	ret
    41c8:	mov	w3, #0x18
    41cc:	b	0x53f4 ; symbol stub for: _objc_setProperty_nonatomic_copy
    41d0:	ldrb	w0, [x0, #0x8]
    41d4:	ret
    41d8:	strb	w2, [x0, #0x8]
    41dc:	ret
    41e0:	stp	x20, x19, [sp, #-0x20]!
    41e4:	stp	x29, x30, [sp, #0x10]
    41e8:	add	x29, sp, #0x10
    41ec:	mov	x19, x0
    41f0:	add	x0, x0, #0x18
    41f4:	mov	x1, #0x0
    41f8:	bl	0x5400 ; symbol stub for: _objc_storeStrong
    41fc:	add	x0, x19, #0x10
    4200:	mov	x1, #0x0
    4204:	ldp	x29, x30, [sp, #0x10]
    4208:	ldp	x20, x19, [sp], #0x20
    420c:	b	0x5400 ; symbol stub for: _objc_storeStrong
    4210:	adrp	x8, 8 ; 0xc000
    4214:	ldr	x8, [x8, #0x868]
    4218:	cmn	x8, #0x1
    421c:	b.ne	0x422c

; ===== sub_4220 =====
    4220:	adrp	x8, 8 ; 0xc000
    4224:	ldr	x0, [x8, #0x860]
    4228:	b	0x53d0 ; symbol stub for: _objc_retainAutoreleaseReturnValue
    422c:	stp	x29, x30, [sp, #-0x10]!
    4230:	mov	x29, sp
    4234:	bl	0x5278
    4238:	ldp	x29, x30, [sp], #0x10
    423c:	b	0x4220
    4240:	stp	x20, x19, [sp, #-0x20]!
    4244:	stp	x29, x30, [sp, #0x10]
    4248:	add	x29, sp, #0x10
    424c:	adrp	x8, 8 ; 0xc000
    4250:	ldr	x0, [x8, #0x688] ; Objc class ref: bad class ref
    4254:	bl	0x5394 ; symbol stub for: _objc_opt_new
    4258:	adrp	x9, 8 ; 0xc000
    425c:	ldr	x8, [x9, #0x860]
    4260:	str	x0, [x9, #0x860]
    4264:	mov	x0, x8
    4268:	bl	0x53ac ; symbol stub for: _objc_release
    426c:	adrp	x8, 8 ; 0xc000
    4270:	ldr	x0, [x8, #0x690] ; Objc class ref: bad class ref
    4274:	bl	0x56a0
    4278:	mov	x29, x29
    427c:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4280:	mov	x19, x0
    4284:	bl	0x5460
    4288:	mov	x29, x29
    428c:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4290:	mov	x20, x0
    4294:	adrp	x2, 4 ; 0x8000
    4298:	add	x2, x2, #0xc0 ; "com.apple.springboard"
    429c:	bl	0x5600
    42a0:	adrp	x8, 8 ; 0xc000
    42a4:	strb	w0, [x8, #0x870]
    42a8:	mov	x0, x20
    42ac:	bl	0x53ac ; symbol stub for: _objc_release
    42b0:	mov	x0, x19
    42b4:	bl	0x53ac ; symbol stub for: _objc_release
    42b8:	adrp	x19, 8 ; 0xc000
    42bc:	ldr	x0, [x19, #0x698] ; Objc class ref: bad class ref
    42c0:	bl	0x5520
    42c4:	mov	x29, x29
    42c8:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    42cc:	adrp	x9, 8 ; 0xc000
    42d0:	ldr	x8, [x9, #0x878]
    42d4:	str	x0, [x9, #0x878]
    42d8:	mov	x0, x8
    42dc:	bl	0x53ac ; symbol stub for: _objc_release
    42e0:	ldr	x0, [x19, #0x698]
    42e4:	bl	0x5520
    42e8:	mov	x29, x29
    42ec:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    42f0:	adrp	x9, 8 ; 0xc000
    42f4:	ldr	x8, [x9, #0x880]
    42f8:	str	x0, [x9, #0x880]
    42fc:	mov	x0, x8
    4300:	bl	0x53ac ; symbol stub for: _objc_release
    4304:	ldr	x0, [x19, #0x698]
    4308:	bl	0x5520
    430c:	mov	x29, x29
    4310:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4314:	adrp	x9, 8 ; 0xc000
    4318:	ldr	x8, [x9, #0x888]
    431c:	str	x0, [x9, #0x888]
    4320:	mov	x0, x8
    4324:	ldp	x29, x30, [sp, #0x10]
    4328:	ldp	x20, x19, [sp], #0x20
    432c:	b	0x53ac ; symbol stub for: _objc_release
    4330:	sub	sp, sp, #0x60
    4334:	stp	x22, x21, [sp, #0x30]
    4338:	stp	x20, x19, [sp, #0x40]
    433c:	stp	x29, x30, [sp, #0x50]
    4340:	add	x29, sp, #0x50
    4344:	mov	x0, x2
    4348:	bl	0x53b8 ; symbol stub for: _objc_retain
    434c:	mov	x19, x0
    4350:	bl	0x55e0
    4354:	mov	x29, x29
    4358:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    435c:	mov	x20, x0
    4360:	bl	0x440c
    4364:	mov	x21, x0
    4368:	mov	x0, x20
    436c:	bl	0x53ac ; symbol stub for: _objc_release
    4370:	tbz	w21, #0x0, 0x43c4
    4374:	adrp	x8, 4 ; 0x8000
    4378:	ldr	x8, [x8, #0x4a0] ; literal pool symbol address: __NSConcreteStackBlock
    437c:	str	x8, [sp, #0x8]
    4380:	adrp	x8, 1 ; 0x5000
    4384:	ldr	d0, [x8, #0xac8]
    4388:	str	d0, [sp, #0x10]
    438c:	adrp	x8, 0 ; 0x4000
    4390:	add	x8, x8, #0x4c4
    4394:	adrp	x9, 4 ; 0x8000
    4398:	add	x9, x9, #0x40
    439c:	stp	x8, x9, [sp, #0x18]
    43a0:	mov	x0, x19
    43a4:	bl	0x53b8 ; symbol stub for: _objc_retain
    43a8:	str	x0, [sp, #0x28]
    43ac:	adrp	x0, 4 ; 0x8000
    43b0:	ldr	x0, [x0, #0x4c0] ; literal pool symbol address: __dispatch_main_q
    43b4:	add	x1, sp, #0x8
    43b8:	bl	0x52ec ; symbol stub for: _dispatch_async
    43bc:	ldr	x0, [sp, #0x28]
    43c0:	b	0x43ec
    43c4:	mov	x0, x19
    43c8:	bl	0x55e0
    43cc:	mov	x29, x29
    43d0:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    43d4:	mov	x20, x0
    43d8:	str	x0, [sp]
    43dc:	adrp	x0, 4 ; 0x8000
    43e0:	add	x0, x0, #0xe0 ; "[libtriggr] bad trigger identifier %@"
    43e4:	bl	0x5298 ; symbol stub for: _NSLog
    43e8:	mov	x0, x20

; ===== sub_43ec =====
    43ec:	bl	0x53ac ; symbol stub for: _objc_release
    43f0:	mov	x0, x19
    43f4:	bl	0x53ac ; symbol stub for: _objc_release
    43f8:	ldp	x29, x30, [sp, #0x50]
    43fc:	ldp	x20, x19, [sp, #0x40]
    4400:	ldp	x22, x21, [sp, #0x30]
    4404:	add	sp, sp, #0x60
    4408:	ret

; ===== sub_440c =====
    440c:	stp	x22, x21, [sp, #-0x30]!
    4410:	stp	x20, x19, [sp, #0x10]
    4414:	stp	x29, x30, [sp, #0x20]
    4418:	add	x29, sp, #0x20
    441c:	bl	0x53b8 ; symbol stub for: _objc_retain
    4420:	mov	x19, x0
    4424:	adrp	x8, 8 ; 0xc000
    4428:	ldr	x0, [x8, #0x6b0] ; Objc class ref: bad class ref
    442c:	bl	0x537c ; symbol stub for: _objc_opt_class
    4430:	mov	x1, x0
    4434:	mov	x0, x19
    4438:	bl	0x5388 ; symbol stub for: _objc_opt_isKindOfClass
    443c:	tbz	w0, #0x0, 0x44a4
    4440:	mov	x0, x19
    4444:	bl	0x5660
    4448:	cmp	x0, #0x3
    444c:	b.lo	0x44a4
    4450:	adrp	x2, 4 ; 0x8000
    4454:	add	x2, x2, #0x220
    4458:	mov	x0, x19
    445c:	bl	0x5740
    4460:	mov	x20, #0x7fffffffffffffff
    4464:	cmp	x0, x20
    4468:	b.ne	0x44a4
    446c:	adrp	x8, 8 ; 0xc000
    4470:	ldr	x0, [x8, #0x6b8] ; Objc class ref: bad class ref
    4474:	bl	0x58a0
    4478:	mov	x29, x29
    447c:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4480:	mov	x21, x0
    4484:	mov	x0, x19
    4488:	mov	x2, x21
    448c:	bl	0x5720
    4490:	cmp	x0, x20
    4494:	cset	w20, eq
    4498:	mov	x0, x21
    449c:	bl	0x53ac ; symbol stub for: _objc_release
    44a0:	b	0x44a8
    44a4:	mov	w20, #0x0

; ===== sub_44a8 =====
    44a8:	mov	x0, x19
    44ac:	bl	0x53ac ; symbol stub for: _objc_release
    44b0:	mov	x0, x20
    44b4:	ldp	x29, x30, [sp, #0x20]
    44b8:	ldp	x20, x19, [sp, #0x10]
    44bc:	ldp	x22, x21, [sp], #0x30
    44c0:	ret
    44c4:	stp	x24, x23, [sp, #-0x40]!
    44c8:	stp	x22, x21, [sp, #0x10]
    44cc:	stp	x20, x19, [sp, #0x20]
    44d0:	stp	x29, x30, [sp, #0x30]
    44d4:	add	x29, sp, #0x30
    44d8:	mov	x20, x0
    44dc:	ldr	x0, [x0, #0x20]
    44e0:	bl	0x5880
    44e4:	mov	x29, x29
    44e8:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    44ec:	mov	x19, x0
    44f0:	ldr	x0, [x20, #0x20]
    44f4:	bl	0x55a0
    44f8:	mov	x29, x29
    44fc:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4500:	mov	x21, x0
    4504:	ldr	x0, [x20, #0x20]
    4508:	bl	0x5580
    450c:	mov	x29, x29
    4510:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4514:	mov	x22, x0
    4518:	ldr	x0, [x20, #0x20]
    451c:	bl	0x5700
    4520:	mov	x4, x0
    4524:	mov	x0, x19
    4528:	mov	x1, x21
    452c:	mov	x2, x22
    4530:	mov	x3, #0x0
    4534:	bl	0x45ac
    4538:	mov	x29, x29
    453c:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4540:	mov	x23, x0
    4544:	adrp	x8, 8 ; 0xc000
    4548:	ldr	x24, [x8, #0x878]
    454c:	ldr	x0, [x20, #0x20]
    4550:	bl	0x55e0
    4554:	mov	x29, x29
    4558:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    455c:	mov	x20, x0
    4560:	mov	x0, x24
    4564:	mov	x2, x23
    4568:	mov	x3, x20
    456c:	bl	0x57a0
    4570:	mov	x0, x20
    4574:	bl	0x53ac ; symbol stub for: _objc_release
    4578:	mov	x0, x23
    457c:	bl	0x53ac ; symbol stub for: _objc_release
    4580:	mov	x0, x22
    4584:	bl	0x53ac ; symbol stub for: _objc_release
    4588:	mov	x0, x21
    458c:	bl	0x53ac ; symbol stub for: _objc_release
    4590:	mov	x0, x19
    4594:	bl	0x53ac ; symbol stub for: _objc_release
    4598:	ldp	x29, x30, [sp, #0x30]
    459c:	ldp	x20, x19, [sp, #0x20]
    45a0:	ldp	x22, x21, [sp, #0x10]
    45a4:	ldp	x24, x23, [sp], #0x40
    45a8:	b	0x472c

; ===== sub_45ac =====
    45ac:	stp	x26, x25, [sp, #-0x50]!
    45b0:	stp	x24, x23, [sp, #0x10]
    45b4:	stp	x22, x21, [sp, #0x20]
    45b8:	stp	x20, x19, [sp, #0x30]
    45bc:	stp	x29, x30, [sp, #0x40]
    45c0:	add	x29, sp, #0x40
    45c4:	mov	x21, x4
    45c8:	mov	x20, x3
    45cc:	mov	x22, x1
    45d0:	mov	x23, x0
    45d4:	mov	x0, x2
    45d8:	bl	0x53b8 ; symbol stub for: _objc_retain
    45dc:	mov	x19, x0
    45e0:	mov	x0, x20
    45e4:	bl	0x53b8 ; symbol stub for: _objc_retain
    45e8:	mov	x20, x0
    45ec:	adrp	x8, 8 ; 0xc000
    45f0:	ldr	x24, [x8, #0x698] ; Objc class ref: bad class ref
    45f4:	mov	x0, x22
    45f8:	bl	0x53b8 ; symbol stub for: _objc_retain
    45fc:	mov	x25, x0
    4600:	mov	x0, x23
    4604:	bl	0x53b8 ; symbol stub for: _objc_retain
    4608:	mov	x23, x0
    460c:	mov	x0, x24
    4610:	bl	0x5520
    4614:	mov	x29, x29
    4618:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    461c:	mov	x22, x0
    4620:	mov	x0, x23
    4624:	bl	0x5660
    4628:	adrp	x8, 4 ; 0x8000
    462c:	add	x8, x8, #0x240 ; "Untitled"
    4630:	cmp	x0, #0x0
    4634:	csel	x2, x8, x23, eq
    4638:	adrp	x3, 4 ; 0x8000
    463c:	add	x3, x3, #0x260 ; "Title"
    4640:	mov	x0, x22
    4644:	bl	0x57a0
    4648:	mov	x0, x23
    464c:	bl	0x53ac ; symbol stub for: _objc_release
    4650:	mov	x0, x25
    4654:	bl	0x5660
    4658:	adrp	x8, 4 ; 0x8000
    465c:	add	x8, x8, #0x280 ; "Other Tweaks"
    4660:	cmp	x0, #0x0
    4664:	csel	x2, x8, x25, eq
    4668:	adrp	x3, 4 ; 0x8000
    466c:	add	x3, x3, #0x2a0 ; "Group"
    4670:	mov	x0, x22
    4674:	bl	0x57a0
    4678:	mov	x0, x25
    467c:	bl	0x53ac ; symbol stub for: _objc_release
    4680:	mov	x0, x19
    4684:	bl	0x5660
    4688:	cbz	x0, 0x46a0
    468c:	adrp	x3, 4 ; 0x8000
    4690:	add	x3, x3, #0x2c0 ; "Footer"
    4694:	mov	x0, x22
    4698:	mov	x2, x19
    469c:	bl	0x57a0
    46a0:	mov	x0, x20
    46a4:	bl	0x5660
    46a8:	cbz	x0, 0x46c0
    46ac:	adrp	x3, 4 ; 0x8000
    46b0:	add	x3, x3, #0x2e0 ; "Symbol"
    46b4:	mov	x0, x22
    46b8:	mov	x2, x20
    46bc:	bl	0x57a0
    46c0:	adrp	x8, 8 ; 0xc000
    46c4:	ldr	x0, [x8, #0x6c0] ; Objc class ref: bad class ref
    46c8:	cmp	x21, #0x0
    46cc:	mov	w8, #0x7
    46d0:	csel	x2, x8, x21, eq
    46d4:	bl	0x56c0
    46d8:	mov	x29, x29
    46dc:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    46e0:	mov	x21, x0
    46e4:	adrp	x3, 4 ; 0x8000
    46e8:	add	x3, x3, #0x300 ; "Places"
    46ec:	mov	x0, x22
    46f0:	mov	x2, x21
    46f4:	bl	0x57a0
    46f8:	mov	x0, x21
    46fc:	bl	0x53ac ; symbol stub for: _objc_release
    4700:	mov	x0, x20
    4704:	bl	0x53ac ; symbol stub for: _objc_release
    4708:	mov	x0, x19
    470c:	bl	0x53ac ; symbol stub for: _objc_release
    4710:	mov	x0, x22
    4714:	ldp	x29, x30, [sp, #0x40]
    4718:	ldp	x20, x19, [sp, #0x30]
    471c:	ldp	x22, x21, [sp, #0x20]
    4720:	ldp	x24, x23, [sp, #0x10]
    4724:	ldp	x26, x25, [sp], #0x50
    4728:	b	0x5340 ; symbol stub for: _objc_autoreleaseReturnValue

; ===== sub_472c =====
    472c:	adrp	x8, 8 ; 0xc000
    4730:	ldrb	w8, [x8, #0x870]
    4734:	cmp	w8, #0x1
    4738:	b.ne	0x4780
    473c:	adrp	x8, 8 ; 0xc000
    4740:	ldrb	w9, [x8, #0x8a8]
    4744:	tbnz	w9, #0x0, 0x4780
    4748:	stp	x29, x30, [sp, #-0x10]!
    474c:	mov	x29, sp
    4750:	mov	w9, #0x1
    4754:	strb	w9, [x8, #0x8a8]
    4758:	mov	x0, #0x0
    475c:	mov	w1, #0x6500
    4760:	movk	w1, #0x1dcd, lsl #16
    4764:	bl	0x5304 ; symbol stub for: _dispatch_time
    4768:	adrp	x1, 4 ; 0x8000
    476c:	ldr	x1, [x1, #0x4c0] ; literal pool symbol address: __dispatch_main_q
    4770:	adrp	x2, 4 ; 0x8000
    4774:	add	x2, x2, #0xa0
    4778:	ldp	x29, x30, [sp], #0x10
    477c:	b	0x52e0 ; symbol stub for: _dispatch_after
    4780:	ret
    4784:	ldr	x0, [x1, #0x20]
    4788:	b	0x53b8 ; symbol stub for: _objc_retain
    478c:	ldr	x0, [x0, #0x20]
    4790:	b	0x53ac ; symbol stub for: _objc_release
    4794:	sub	sp, sp, #0x70
    4798:	stp	x22, x21, [sp, #0x40]
    479c:	stp	x20, x19, [sp, #0x50]
    47a0:	stp	x29, x30, [sp, #0x60]
    47a4:	add	x29, sp, #0x60
    47a8:	mov	x20, x3
    47ac:	mov	x0, x2
    47b0:	bl	0x53b8 ; symbol stub for: _objc_retain
    47b4:	mov	x19, x0
    47b8:	mov	x0, x20
    47bc:	bl	0x53b8 ; symbol stub for: _objc_retain
    47c0:	mov	x20, x0
    47c4:	mov	x0, x19
    47c8:	bl	0x55e0
    47cc:	mov	x29, x29
    47d0:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    47d4:	mov	x22, x0
    47d8:	bl	0x440c
    47dc:	mov	x21, x0
    47e0:	mov	x0, x22
    47e4:	bl	0x53ac ; symbol stub for: _objc_release
    47e8:	cbz	x20, 0x4864
    47ec:	tbz	w21, #0x0, 0x4864
    47f0:	mov	x0, x20
    47f4:	bl	0x54a0
    47f8:	mov	x21, x0
    47fc:	adrp	x8, 4 ; 0x8000
    4800:	ldr	x8, [x8, #0x4a0] ; literal pool symbol address: __NSConcreteStackBlock
    4804:	str	x8, [sp, #0x10]
    4808:	adrp	x8, 1 ; 0x5000
    480c:	ldr	d0, [x8, #0xac8]
    4810:	str	d0, [sp, #0x18]
    4814:	adrp	x8, 0 ; 0x4000
    4818:	add	x8, x8, #0x8b4
    481c:	adrp	x9, 4 ; 0x8000
    4820:	add	x9, x9, #0x70
    4824:	stp	x8, x9, [sp, #0x20]
    4828:	mov	x0, x19
    482c:	bl	0x53b8 ; symbol stub for: _objc_retain
    4830:	stp	x0, x21, [sp, #0x30]
    4834:	mov	x0, x21
    4838:	bl	0x53b8 ; symbol stub for: _objc_retain
    483c:	mov	x21, x0
    4840:	adrp	x0, 4 ; 0x8000
    4844:	ldr	x0, [x0, #0x4c0] ; literal pool symbol address: __dispatch_main_q
    4848:	add	x1, sp, #0x10
    484c:	bl	0x52ec ; symbol stub for: _dispatch_async
    4850:	ldr	x0, [sp, #0x38]
    4854:	bl	0x53ac ; symbol stub for: _objc_release
    4858:	ldr	x0, [sp, #0x30]
    485c:	bl	0x53ac ; symbol stub for: _objc_release
    4860:	b	0x4888
    4864:	mov	x0, x19
    4868:	bl	0x55e0
    486c:	mov	x29, x29
    4870:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4874:	mov	x21, x0
    4878:	str	x0, [sp]
    487c:	adrp	x0, 4 ; 0x8000
    4880:	add	x0, x0, #0x100 ; "[libtriggr] bad action %@"
    4884:	bl	0x5298 ; symbol stub for: _NSLog

; ===== sub_4888 =====
    4888:	mov	x0, x21
    488c:	bl	0x53ac ; symbol stub for: _objc_release
    4890:	mov	x0, x20
    4894:	bl	0x53ac ; symbol stub for: _objc_release
    4898:	mov	x0, x19
    489c:	bl	0x53ac ; symbol stub for: _objc_release
    48a0:	ldp	x29, x30, [sp, #0x60]
    48a4:	ldp	x20, x19, [sp, #0x50]
    48a8:	ldp	x22, x21, [sp, #0x40]
    48ac:	add	sp, sp, #0x70
    48b0:	ret
    48b4:	stp	x26, x25, [sp, #-0x50]!
    48b8:	stp	x24, x23, [sp, #0x10]
    48bc:	stp	x22, x21, [sp, #0x20]
    48c0:	stp	x20, x19, [sp, #0x30]
    48c4:	stp	x29, x30, [sp, #0x40]
    48c8:	add	x29, sp, #0x40
    48cc:	mov	x19, x0
    48d0:	ldr	x0, [x0, #0x20]
    48d4:	bl	0x5880
    48d8:	mov	x29, x29
    48dc:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    48e0:	mov	x20, x0
    48e4:	ldr	x0, [x19, #0x20]
    48e8:	bl	0x55a0
    48ec:	mov	x29, x29
    48f0:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    48f4:	mov	x21, x0
    48f8:	ldr	x0, [x19, #0x20]
    48fc:	bl	0x5860
    4900:	mov	x29, x29
    4904:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4908:	mov	x22, x0
    490c:	ldr	x0, [x19, #0x20]
    4910:	bl	0x5700
    4914:	mov	x4, x0
    4918:	mov	x0, x20
    491c:	mov	x1, x21
    4920:	mov	x2, #0x0
    4924:	mov	x3, x22
    4928:	bl	0x45ac
    492c:	mov	x29, x29
    4930:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4934:	mov	x23, x0
    4938:	adrp	x8, 8 ; 0xc000
    493c:	ldr	x24, [x8, #0x880]
    4940:	ldr	x0, [x19, #0x20]
    4944:	bl	0x55e0
    4948:	mov	x29, x29
    494c:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4950:	mov	x25, x0
    4954:	mov	x0, x24
    4958:	mov	x2, x23
    495c:	mov	x3, x25
    4960:	bl	0x57a0
    4964:	mov	x0, x25
    4968:	bl	0x53ac ; symbol stub for: _objc_release
    496c:	mov	x0, x23
    4970:	bl	0x53ac ; symbol stub for: _objc_release
    4974:	mov	x0, x22
    4978:	bl	0x53ac ; symbol stub for: _objc_release
    497c:	mov	x0, x21
    4980:	bl	0x53ac ; symbol stub for: _objc_release
    4984:	mov	x0, x20
    4988:	bl	0x53ac ; symbol stub for: _objc_release
    498c:	ldr	x0, [x19, #0x28]
    4990:	bl	0x53e8 ; symbol stub for: _objc_retainBlock
    4994:	mov	x20, x0
    4998:	adrp	x8, 8 ; 0xc000
    499c:	ldr	x21, [x8, #0x888]
    49a0:	ldr	x0, [x19, #0x20]
    49a4:	bl	0x55e0
    49a8:	mov	x29, x29
    49ac:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    49b0:	mov	x19, x0
    49b4:	mov	x0, x21
    49b8:	mov	x2, x20
    49bc:	mov	x3, x19
    49c0:	bl	0x57a0
    49c4:	mov	x0, x19
    49c8:	bl	0x53ac ; symbol stub for: _objc_release
    49cc:	mov	x0, x20
    49d0:	bl	0x53ac ; symbol stub for: _objc_release
    49d4:	ldp	x29, x30, [sp, #0x40]
    49d8:	ldp	x20, x19, [sp, #0x30]
    49dc:	ldp	x22, x21, [sp, #0x20]
    49e0:	ldp	x24, x23, [sp, #0x10]
    49e4:	ldp	x26, x25, [sp], #0x50
    49e8:	b	0x472c
    49ec:	stp	x20, x19, [sp, #-0x20]!
    49f0:	stp	x29, x30, [sp, #0x10]
    49f4:	add	x29, sp, #0x10
    49f8:	mov	x19, x1
    49fc:	mov	x20, x0
    4a00:	ldr	x0, [x1, #0x20]
    4a04:	bl	0x53b8 ; symbol stub for: _objc_retain
    4a08:	ldr	x1, [x19, #0x28]
    4a0c:	add	x0, x20, #0x28
    4a10:	mov	w2, #0x7
    4a14:	ldp	x29, x30, [sp, #0x10]
    4a18:	ldp	x20, x19, [sp], #0x20
    4a1c:	b	0x52b0 ; symbol stub for: __Block_object_assign
    4a20:	stp	x20, x19, [sp, #-0x20]!
    4a24:	stp	x29, x30, [sp, #0x10]
    4a28:	add	x29, sp, #0x10
    4a2c:	mov	x19, x0
    4a30:	ldr	x0, [x0, #0x28]
    4a34:	bl	0x53ac ; symbol stub for: _objc_release
    4a38:	ldr	x0, [x19, #0x20]
    4a3c:	ldp	x29, x30, [sp, #0x10]
    4a40:	ldp	x20, x19, [sp], #0x20
    4a44:	b	0x53ac ; symbol stub for: _objc_release
    4a48:	sub	sp, sp, #0x40
    4a4c:	stp	x22, x21, [sp, #0x10]
    4a50:	stp	x20, x19, [sp, #0x20]
    4a54:	stp	x29, x30, [sp, #0x30]
    4a58:	add	x29, sp, #0x30
    4a5c:	mov	x0, x2
    4a60:	bl	0x53b8 ; symbol stub for: _objc_retain
    4a64:	mov	x19, x0
    4a68:	bl	0x440c
    4a6c:	cbz	w0, 0x4ab4
    4a70:	adrp	x8, 8 ; 0xc000
    4a74:	ldrb	w8, [x8, #0x870]
    4a78:	cmp	w8, #0x1
    4a7c:	b.ne	0x4abc
    4a80:	adrp	x8, 8 ; 0xc000
    4a84:	ldr	x21, [x8, #0x898]
    4a88:	cbz	x21, 0x4b28
    4a8c:	adrp	x0, 4 ; 0x8000
    4a90:	add	x0, x0, #0x120 ; "lib."
    4a94:	mov	x2, x19
    4a98:	bl	0x5800
    4a9c:	mov	x29, x29
    4aa0:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4aa4:	mov	x20, x0
    4aa8:	blr	x21
    4aac:	mov	x21, x0
    4ab0:	b	0x4b20
    4ab4:	mov	w21, #0x0
    4ab8:	b	0x4b28
    4abc:	mov	w8, #-0x1
    4ac0:	str	w8, [sp, #0xc]
    4ac4:	str	xzr, [sp]
    4ac8:	adrp	x0, 4 ; 0x8000
    4acc:	add	x0, x0, #0x140 ; "com.johndie.triggr/ta/"
    4ad0:	mov	x2, x19
    4ad4:	bl	0x5800
    4ad8:	mov	x29, x29
    4adc:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4ae0:	mov	x20, x0
    4ae4:	bl	0x53c4 ; symbol stub for: _objc_retainAutorelease
    4ae8:	bl	0x5420
    4aec:	add	x1, sp, #0xc
    4af0:	bl	0x5334 ; symbol stub for: _notify_register_check
    4af4:	cbz	w0, 0x4b00
    4af8:	mov	w21, #0x0
    4afc:	b	0x4b20
    4b00:	ldr	w0, [sp, #0xc]
    4b04:	mov	x1, sp
    4b08:	bl	0x531c ; symbol stub for: _notify_get_state
    4b0c:	ldr	w0, [sp, #0xc]
    4b10:	bl	0x5310 ; symbol stub for: _notify_cancel
    4b14:	ldr	x8, [sp]
    4b18:	cmp	x8, #0x0
    4b1c:	cset	w21, ne

; ===== sub_4b20 =====
    4b20:	mov	x0, x20
    4b24:	bl	0x53ac ; symbol stub for: _objc_release

; ===== sub_4b28 =====
    4b28:	mov	x0, x19
    4b2c:	bl	0x53ac ; symbol stub for: _objc_release
    4b30:	mov	x0, x21
    4b34:	ldp	x29, x30, [sp, #0x30]
    4b38:	ldp	x20, x19, [sp, #0x20]
    4b3c:	ldp	x22, x21, [sp, #0x10]
    4b40:	add	sp, sp, #0x40
    4b44:	ret
    4b48:	sub	sp, sp, #0x60
    4b4c:	stp	x22, x21, [sp, #0x30]
    4b50:	stp	x20, x19, [sp, #0x40]
    4b54:	stp	x29, x30, [sp, #0x50]
    4b58:	add	x29, sp, #0x50
    4b5c:	mov	x20, x0
    4b60:	mov	x0, x2
    4b64:	bl	0x53b8 ; symbol stub for: _objc_retain
    4b68:	mov	x19, x0
    4b6c:	bl	0x440c
    4b70:	cbz	w0, 0x4c14
    4b74:	adrp	x8, 8 ; 0xc000
    4b78:	ldrb	w8, [x8, #0x870]
    4b7c:	cmp	w8, #0x1
    4b80:	b.ne	0x4bcc
    4b84:	adrp	x0, 4 ; 0x8000
    4b88:	add	x0, x0, #0x120 ; "lib."
    4b8c:	mov	x2, x19
    4b90:	bl	0x5800
    4b94:	mov	x29, x29
    4b98:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4b9c:	mov	x20, x0
    4ba0:	adrp	x8, 8 ; 0xc000
    4ba4:	ldr	x0, [x8, #0x6a0] ; Objc class ref: bad class ref
    4ba8:	bl	0x5620
    4bac:	cbz	w0, 0x4c1c
    4bb0:	adrp	x8, 8 ; 0xc000
    4bb4:	ldr	x8, [x8, #0x890]
    4bb8:	cbz	x8, 0x4c8c
    4bbc:	mov	x0, x20
    4bc0:	blr	x8
    4bc4:	mov	x21, x0
    4bc8:	b	0x4c90
    4bcc:	mov	x0, x20
    4bd0:	mov	x2, x19
    4bd4:	bl	0x5640
    4bd8:	cbz	w0, 0x4c14
    4bdc:	adrp	x0, 4 ; 0x8000
    4be0:	add	x0, x0, #0x160 ; "com.johndie.triggr/t/"
    4be4:	mov	x2, x19
    4be8:	bl	0x5800
    4bec:	mov	x29, x29
    4bf0:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4bf4:	mov	x20, x0
    4bf8:	bl	0x53c4 ; symbol stub for: _objc_retainAutorelease
    4bfc:	bl	0x5420
    4c00:	bl	0x5328 ; symbol stub for: _notify_post
    4c04:	mov	x0, x20
    4c08:	bl	0x53ac ; symbol stub for: _objc_release
    4c0c:	mov	w21, #0x1
    4c10:	b	0x4c98
    4c14:	mov	w21, #0x0
    4c18:	b	0x4c98
    4c1c:	adrp	x8, 8 ; 0xc000
    4c20:	ldr	x8, [x8, #0x898]
    4c24:	cbz	x8, 0x4c8c
    4c28:	mov	x0, x20
    4c2c:	blr	x8
    4c30:	cbz	w0, 0x4c8c
    4c34:	adrp	x8, 4 ; 0x8000
    4c38:	ldr	x8, [x8, #0x4a0] ; literal pool symbol address: __NSConcreteStackBlock
    4c3c:	str	x8, [sp, #0x8]
    4c40:	adrp	x8, 1 ; 0x5000
    4c44:	ldr	d0, [x8, #0xac8]
    4c48:	str	d0, [sp, #0x10]
    4c4c:	adrp	x8, 0 ; 0x4000
    4c50:	add	x8, x8, #0xcb8
    4c54:	adrp	x9, 4 ; 0x8000
    4c58:	add	x9, x9, #0x40
    4c5c:	stp	x8, x9, [sp, #0x18]
    4c60:	mov	x0, x20
    4c64:	bl	0x53b8 ; symbol stub for: _objc_retain
    4c68:	str	x0, [sp, #0x28]
    4c6c:	adrp	x0, 4 ; 0x8000
    4c70:	ldr	x0, [x0, #0x4c0] ; literal pool symbol address: __dispatch_main_q
    4c74:	add	x1, sp, #0x8
    4c78:	bl	0x52ec ; symbol stub for: _dispatch_async
    4c7c:	ldr	x0, [sp, #0x28]
    4c80:	bl	0x53ac ; symbol stub for: _objc_release
    4c84:	mov	w21, #0x1
    4c88:	b	0x4c90
    4c8c:	mov	w21, #0x0

; ===== sub_4c90 =====
    4c90:	mov	x0, x20
    4c94:	bl	0x53ac ; symbol stub for: _objc_release

; ===== sub_4c98 =====
    4c98:	mov	x0, x19
    4c9c:	bl	0x53ac ; symbol stub for: _objc_release
    4ca0:	mov	x0, x21
    4ca4:	ldp	x29, x30, [sp, #0x50]
    4ca8:	ldp	x20, x19, [sp, #0x40]
    4cac:	ldp	x22, x21, [sp, #0x30]
    4cb0:	add	sp, sp, #0x60
    4cb4:	ret
    4cb8:	adrp	x8, 8 ; 0xc000
    4cbc:	ldr	x1, [x8, #0x890]
    4cc0:	cbz	x1, 0x4ccc
    4cc4:	ldr	x0, [x0, #0x20]
    4cc8:	br	x1
    4ccc:	ret
    4cd0:	stp	x24, x23, [sp, #-0x40]!
    4cd4:	stp	x22, x21, [sp, #0x10]
    4cd8:	stp	x20, x19, [sp, #0x20]
    4cdc:	stp	x29, x30, [sp, #0x30]
    4ce0:	add	x29, sp, #0x30
    4ce4:	mov	x0, x2
    4ce8:	bl	0x53b8 ; symbol stub for: _objc_retain
    4cec:	mov	x19, x0
    4cf0:	bl	0x440c
    4cf4:	cbz	w0, 0x4dc0
    4cf8:	adrp	x8, 8 ; 0xc000
    4cfc:	ldr	x20, [x8, #0x690] ; Objc class ref: bad class ref
    4d00:	adrp	x0, 4 ; 0x8000
    4d04:	add	x0, x0, #0x380 ; "/var/jb"
    4d08:	adrp	x2, 4 ; 0x8000
    4d0c:	add	x2, x2, #0x180 ; "/Library/PreferenceBundles/Triggr.bundle"
    4d10:	bl	0x5800
    4d14:	mov	x29, x29
    4d18:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4d1c:	mov	x21, x0
    4d20:	mov	x0, x20
    4d24:	mov	x2, x21
    4d28:	bl	0x5480
    4d2c:	mov	x29, x29
    4d30:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4d34:	mov	x20, x0
    4d38:	mov	x0, x21
    4d3c:	bl	0x53ac ; symbol stub for: _objc_release
    4d40:	mov	x0, x20
    4d44:	bl	0x5680
    4d48:	cbz	w0, 0x4dc8
    4d4c:	adrp	x0, 4 ; 0x8000
    4d50:	add	x0, x0, #0x1a0 ; "TGActionPickerController"
    4d54:	bl	0x528c ; symbol stub for: _NSClassFromString
    4d58:	mov	x21, x0
    4d5c:	adrp	x0, 4 ; 0x8000
    4d60:	add	x0, x0, #0x1c0 ; "tgPickerForTrigger:"
    4d64:	bl	0x52a4 ; symbol stub for: _NSSelectorFromString
    4d68:	mov	x22, x0
    4d6c:	mov	x0, x21
    4d70:	mov	x1, x22
    4d74:	bl	0x53a0 ; symbol stub for: _objc_opt_respondsToSelector
    4d78:	tbz	w0, #0x0, 0x4dc8
    4d7c:	adrp	x0, 4 ; 0x8000
    4d80:	add	x0, x0, #0x120 ; "lib."
    4d84:	mov	x2, x19
    4d88:	bl	0x5800
    4d8c:	mov	x29, x29
    4d90:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4d94:	mov	x23, x0
    4d98:	mov	x0, x21
    4d9c:	mov	x1, x22
    4da0:	mov	x2, x23
    4da4:	bl	0x5364 ; symbol stub for: _objc_msgSend
    4da8:	mov	x29, x29
    4dac:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4db0:	mov	x21, x0
    4db4:	mov	x0, x23
    4db8:	bl	0x53ac ; symbol stub for: _objc_release
    4dbc:	b	0x4dcc
    4dc0:	mov	x21, #0x0
    4dc4:	b	0x4dd4
    4dc8:	mov	x21, #0x0

; ===== sub_4dcc =====
    4dcc:	mov	x0, x20
    4dd0:	bl	0x53ac ; symbol stub for: _objc_release

; ===== sub_4dd4 =====
    4dd4:	mov	x0, x19
    4dd8:	bl	0x53ac ; symbol stub for: _objc_release
    4ddc:	mov	x0, x21
    4de0:	ldp	x29, x30, [sp, #0x30]
    4de4:	ldp	x20, x19, [sp, #0x20]
    4de8:	ldp	x22, x21, [sp, #0x10]
    4dec:	ldp	x24, x23, [sp], #0x40
    4df0:	b	0x5340 ; symbol stub for: _objc_autoreleaseReturnValue
_TGLibSetHost:
    4df4:	stp	x20, x19, [sp, #-0x20]!
    4df8:	stp	x29, x30, [sp, #0x10]
    4dfc:	add	x29, sp, #0x10
    4e00:	mov	x19, x0
    4e04:	adrp	x8, 8 ; 0xc000
    4e08:	ldr	x0, [x8, #0x688] ; Objc class ref: bad class ref
    4e0c:	bl	0x57e0
    4e10:	mov	x29, x29
    4e14:	bl	0x540c ; symbol stub for: _objc_unsafeClaimAutoreleasedReturnValue
    4e18:	ldr	x8, [x19, #0x10]
    4e1c:	ldr	q0, [x19]
    4e20:	adrp	x9, 8 ; 0xc000
    4e24:	add	x9, x9, #0x890
    4e28:	str	q0, [x9]
    4e2c:	str	x8, [x9, #0x10]
    4e30:	adrp	x8, 8 ; 0xc000
    4e34:	ldr	x0, [x8, #0x878]
    4e38:	bl	0x54c0
    4e3c:	cbnz	x0, 0x4e50
    4e40:	adrp	x8, 8 ; 0xc000
    4e44:	ldr	x0, [x8, #0x880]
    4e48:	bl	0x54c0
    4e4c:	cbz	x0, 0x4e5c
    4e50:	ldp	x29, x30, [sp, #0x10]
    4e54:	ldp	x20, x19, [sp], #0x20
    4e58:	b	0x472c
    4e5c:	ldp	x29, x30, [sp, #0x10]
    4e60:	ldp	x20, x19, [sp], #0x20
    4e64:	ret
_TGLibCanRun:
    4e68:	stp	x20, x19, [sp, #-0x20]!
    4e6c:	stp	x29, x30, [sp, #0x10]
    4e70:	add	x29, sp, #0x10
    4e74:	mov	x2, x0
    4e78:	adrp	x8, 8 ; 0xc000
    4e7c:	ldr	x0, [x8, #0x888]
    4e80:	bl	0x56e0
    4e84:	mov	x29, x29
    4e88:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4e8c:	cmp	x0, #0x0
    4e90:	cset	w19, ne
    4e94:	bl	0x53ac ; symbol stub for: _objc_release
    4e98:	mov	x0, x19
    4e9c:	ldp	x29, x30, [sp, #0x10]
    4ea0:	ldp	x20, x19, [sp], #0x20
    4ea4:	ret
_TGLibRun:
    4ea8:	sub	sp, sp, #0x60
    4eac:	stp	x26, x25, [sp, #0x10]
    4eb0:	stp	x24, x23, [sp, #0x20]
    4eb4:	stp	x22, x21, [sp, #0x30]
    4eb8:	stp	x20, x19, [sp, #0x40]
    4ebc:	stp	x29, x30, [sp, #0x50]
    4ec0:	add	x29, sp, #0x50
    4ec4:	mov	x24, x3
    4ec8:	mov	x21, x2
    4ecc:	mov	x20, x1
    4ed0:	bl	0x53b8 ; symbol stub for: _objc_retain
    4ed4:	mov	x19, x0
    4ed8:	mov	x0, x20
    4edc:	bl	0x53b8 ; symbol stub for: _objc_retain
    4ee0:	mov	x20, x0
    4ee4:	mov	x0, x21
    4ee8:	bl	0x53b8 ; symbol stub for: _objc_retain
    4eec:	mov	x21, x0
    4ef0:	adrp	x8, 8 ; 0xc000
    4ef4:	ldr	x0, [x8, #0x888]
    4ef8:	mov	x2, x19
    4efc:	bl	0x56e0
    4f00:	mov	x29, x29
    4f04:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4f08:	mov	x22, x0
    4f0c:	cbz	x0, 0x4f70
    4f10:	adrp	x8, 8 ; 0xc000
    4f14:	ldr	x0, [x8, #0x6a8] ; Objc class ref: bad class ref
    4f18:	bl	0x5394 ; symbol stub for: _objc_opt_new
    4f1c:	mov	x23, x0
    4f20:	adrp	x2, 4 ; 0x8000
    4f24:	add	x2, x2, #0x120 ; "lib."
    4f28:	mov	x0, x20
    4f2c:	bl	0x55c0
    4f30:	tbz	w0, #0x0, 0x4f78
    4f34:	adrp	x0, 4 ; 0x8000
    4f38:	add	x0, x0, #0x120 ; "lib."
    4f3c:	bl	0x5660
    4f40:	mov	x2, x0
    4f44:	mov	x0, x20
    4f48:	bl	0x5840
    4f4c:	mov	x29, x29
    4f50:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    4f54:	mov	x25, x0
    4f58:	mov	x0, x23
    4f5c:	mov	x2, x25
    4f60:	bl	0x57c0
    4f64:	mov	x0, x25
    4f68:	bl	0x53ac ; symbol stub for: _objc_release
    4f6c:	b	0x4f90
    4f70:	mov	w24, #0x0
    4f74:	b	0x4fc4
    4f78:	adrp	x8, 4 ; 0x8000
    4f7c:	add	x8, x8, #0x1e0
    4f80:	cmp	x20, #0x0
    4f84:	csel	x2, x8, x20, eq
    4f88:	mov	x0, x23
    4f8c:	bl	0x57c0

; ===== sub_4f90 =====
    4f90:	mov	x0, x23
    4f94:	mov	x2, x21
    4f98:	bl	0x5760
    4f9c:	mov	x0, x23
    4fa0:	mov	x2, x24
    4fa4:	bl	0x5780
    4fa8:	ldr	x8, [x22, #0x10]
    4fac:	mov	x0, x22
    4fb0:	mov	x1, x23
    4fb4:	blr	x8
    4fb8:	mov	w24, #0x1

; ===== sub_4fbc =====
    4fbc:	mov	x0, x23
    4fc0:	bl	0x53ac ; symbol stub for: _objc_release

; ===== sub_4fc4 =====
    4fc4:	mov	x0, x22
    4fc8:	bl	0x53ac ; symbol stub for: _objc_release
    4fcc:	mov	x0, x21
    4fd0:	bl	0x53ac ; symbol stub for: _objc_release
    4fd4:	mov	x0, x20
    4fd8:	bl	0x53ac ; symbol stub for: _objc_release
    4fdc:	mov	x0, x19
    4fe0:	bl	0x53ac ; symbol stub for: _objc_release
    4fe4:	mov	x0, x24
    4fe8:	ldp	x29, x30, [sp, #0x50]
    4fec:	ldp	x20, x19, [sp, #0x40]
    4ff0:	ldp	x22, x21, [sp, #0x30]
    4ff4:	ldp	x24, x23, [sp, #0x20]
    4ff8:	ldp	x26, x25, [sp, #0x10]
    4ffc:	add	sp, sp, #0x60
    5000:	ret
    5004:	mov	x24, x0
    5008:	cmp	w1, #0x1
    500c:	b.ne	0x5050
    5010:	mov	x0, x24
    5014:	bl	0x534c ; symbol stub for: _objc_begin_catch
    5018:	mov	x29, x29
    501c:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5020:	mov	x24, x0
    5024:	stp	x19, x0, [sp]
    5028:	adrp	x0, 3 ; 0x8000
    502c:	add	x0, x0, #0x200 ; "[libtriggr] action %@ threw %@"
    5030:	bl	0x5298 ; symbol stub for: _NSLog
    5034:	mov	x0, x24
    5038:	bl	0x53ac ; symbol stub for: _objc_release
    503c:	bl	0x5358 ; symbol stub for: _objc_end_catch
    5040:	mov	w24, #0x0
    5044:	b	0x4fbc
    5048:	mov	x24, x0
    504c:	bl	0x5358 ; symbol stub for: _objc_end_catch
    5050:	mov	x0, x24
    5054:	bl	0x52bc ; symbol stub for: __Unwind_Resume
_TGLibTriggers:
    5058:	stp	x20, x19, [sp, #-0x20]!
    505c:	stp	x29, x30, [sp, #0x10]
    5060:	add	x29, sp, #0x10
    5064:	adrp	x8, 7 ; 0xc000
    5068:	ldr	x0, [x8, #0x878]
    506c:	bl	0x5440
    5070:	mov	x29, x29
    5074:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5078:	mov	x19, x0
    507c:	adrp	x8, 3 ; 0x8000
    5080:	ldr	x8, [x8, #0x488] ; literal pool symbol address: ___NSArray0__struct
    5084:	cmp	x0, #0x0
    5088:	csel	x20, x8, x0, eq
    508c:	mov	x0, x20
    5090:	bl	0x53d0 ; symbol stub for: _objc_retainAutoreleaseReturnValue
    5094:	mov	x0, x19
    5098:	bl	0x53ac ; symbol stub for: _objc_release
    509c:	mov	x0, x20
    50a0:	ldp	x29, x30, [sp, #0x10]
    50a4:	ldp	x20, x19, [sp], #0x20
    50a8:	ret
    50ac:	sub	sp, sp, #0x70
    50b0:	stp	x24, x23, [sp, #0x30]
    50b4:	stp	x22, x21, [sp, #0x40]
    50b8:	stp	x20, x19, [sp, #0x50]
    50bc:	stp	x29, x30, [sp, #0x60]
    50c0:	add	x29, sp, #0x60
    50c4:	adrp	x8, 3 ; 0x8000
    50c8:	ldr	x8, [x8, #0x4b8] ; literal pool symbol address: ___stack_chk_guard
    50cc:	ldr	x8, [x8]
    50d0:	str	x8, [sp, #0x28]
    50d4:	adrp	x8, 7 ; 0xc000
    50d8:	strb	wzr, [x8, #0x8a8]
    50dc:	adrp	x8, 3 ; 0x8000
    50e0:	add	x8, x8, #0x320 ; "Triggers"
    50e4:	adrp	x9, 7 ; 0xc000
    50e8:	ldr	x9, [x9, #0x878]
    50ec:	adrp	x10, 3 ; 0x8000
    50f0:	ldr	x10, [x10, #0x490] ; literal pool symbol address: ___NSDictionary0__struct
    50f4:	cmp	x9, #0x0
    50f8:	csel	x9, x10, x9, eq
    50fc:	adrp	x11, 3 ; 0x8000
    5100:	add	x11, x11, #0x340 ; "Actions"
    5104:	stp	x8, x11, [sp, #0x8]
    5108:	adrp	x8, 7 ; 0xc000
    510c:	ldr	x8, [x8, #0x880]
    5110:	cmp	x8, #0x0
    5114:	csel	x8, x10, x8, eq
    5118:	stp	x9, x8, [sp, #0x18]
    511c:	adrp	x8, 7 ; 0xc000
    5120:	ldr	x0, [x8, #0x6c8] ; Objc class ref: bad class ref
    5124:	add	x2, sp, #0x18
    5128:	add	x3, sp, #0x8
    512c:	mov	w4, #0x2
    5130:	bl	0x5540
    5134:	mov	x29, x29
    5138:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    513c:	mov	x19, x0
    5140:	adrp	x8, 7 ; 0xc000
    5144:	ldr	x0, [x8, #0x6d0] ; Objc class ref: bad class ref
    5148:	bl	0x5500
    514c:	mov	x29, x29
    5150:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5154:	mov	x20, x0
    5158:	adrp	x21, 3 ; 0x8000
    515c:	add	x21, x21, #0x380 ; "/var/jb"
    5160:	adrp	x22, 3 ; 0x8000
    5164:	add	x22, x22, #0x360 ; "/var/mobile/Library/Triggr/registry.plist"
    5168:	mov	x0, x21
    516c:	mov	x2, x22
    5170:	bl	0x5800
    5174:	mov	x29, x29
    5178:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    517c:	mov	x23, x0
    5180:	bl	0x5820
    5184:	mov	x29, x29
    5188:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    518c:	mov	x24, x0
    5190:	mov	x0, x20
    5194:	mov	x2, x24
    5198:	mov	w3, #0x1
    519c:	mov	x4, #0x0
    51a0:	mov	x5, #0x0
    51a4:	bl	0x54e0
    51a8:	mov	x0, x24
    51ac:	bl	0x53ac ; symbol stub for: _objc_release
    51b0:	mov	x0, x23
    51b4:	bl	0x53ac ; symbol stub for: _objc_release
    51b8:	mov	x0, x20
    51bc:	bl	0x53ac ; symbol stub for: _objc_release
    51c0:	mov	x0, x21
    51c4:	mov	x2, x22
    51c8:	bl	0x5800
    51cc:	mov	x29, x29
    51d0:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    51d4:	mov	x20, x0
    51d8:	mov	x0, x19
    51dc:	mov	x2, x20
    51e0:	mov	w3, #0x1
    51e4:	bl	0x58c0
    51e8:	mov	x0, x20
    51ec:	bl	0x53ac ; symbol stub for: _objc_release
    51f0:	mov	x0, x21
    51f4:	mov	x2, x22
    51f8:	bl	0x5800
    51fc:	mov	x29, x29
    5200:	bl	0x53dc ; symbol stub for: _objc_retainAutoreleasedReturnValue
    5204:	mov	x20, x0
    5208:	bl	0x53c4 ; symbol stub for: _objc_retainAutorelease
    520c:	bl	0x5560
    5210:	mov	w1, #0x1a4
    5214:	bl	0x52d4 ; symbol stub for: _chmod
    5218:	mov	x0, x20
    521c:	bl	0x53ac ; symbol stub for: _objc_release
    5220:	adrp	x0, 1 ; 0x6000
    5224:	add	x0, x0, #0x155 ; literal pool for: "com.johndie.triggr/registry-changed"
    5228:	bl	0x5328 ; symbol stub for: _notify_post
    522c:	adrp	x8, 7 ; 0xc000
    5230:	ldr	x8, [x8, #0x8a0]
    5234:	cbz	x8, 0x523c
    5238:	blr	x8
    523c:	mov	x0, x19
    5240:	bl	0x53ac ; symbol stub for: _objc_release
    5244:	ldr	x8, [sp, #0x28]
    5248:	adrp	x9, 3 ; 0x8000
    524c:	ldr	x9, [x9, #0x4b8] ; literal pool symbol address: ___stack_chk_guard
    5250:	ldr	x9, [x9]
    5254:	cmp	x9, x8
    5258:	b.ne	0x5274
    525c:	ldp	x29, x30, [sp, #0x60]
    5260:	ldp	x20, x19, [sp, #0x50]
    5264:	ldp	x22, x21, [sp, #0x40]
    5268:	ldp	x24, x23, [sp, #0x30]
    526c:	add	sp, sp, #0x70
    5270:	ret
    5274:	bl	0x52c8 ; symbol stub for: ___stack_chk_fail

; ===== sub_5278 =====
    5278:	adrp	x0, 7 ; 0xc000
    527c:	add	x0, x0, #0x868
    5280:	adrp	x1, 3 ; 0x8000
    5284:	add	x1, x1, #0x20
    5288:	b	0x52f8 ; symbol stub for: _dispatch_once
