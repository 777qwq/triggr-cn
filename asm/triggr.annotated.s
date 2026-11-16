/tmp/v21a/x/var/jb/usr/bin/triggr:
(__TEXT,__text) section
_main:

; ===== sub_100004000 =====
100004000:	sub	sp, sp, #0x160
100004004:	stp	x28, x27, [sp, #0x100]
100004008:	stp	x26, x25, [sp, #0x110]
10000400c:	stp	x24, x23, [sp, #0x120]
100004010:	stp	x22, x21, [sp, #0x130]
100004014:	stp	x20, x19, [sp, #0x140]
100004018:	stp	x29, x30, [sp, #0x150]
10000401c:	add	x29, sp, #0x150
100004020:	mov	x22, x1
100004024:	mov	x21, x0
100004028:	adrp	x8, 5 ; 0x100009000
10000402c:	ldr	x8, [x8, #0x8c0] ; literal pool symbol address: ___stack_chk_guard
100004030:	ldr	x8, [x8]
100004034:	stur	x8, [x29, #-0x60]
100004038:	bl	0x1000048cc ; symbol stub for: _objc_autoreleasePoolPush
10000403c:	mov	x19, x0
100004040:	cmp	w21, #0x1
100004044:	b.gt	0x100004070
100004048:	adrp	x8, 5 ; 0x100009000
10000404c:	ldr	x8, [x8, #0x8c8] ; literal pool symbol address: ___stderrp
100004050:	ldr	x3, [x8]
100004054:	adrp	x0, 0 ; 0x100004000
100004058:	add	x0, x0, #0xbb8 ; literal pool for: "usage: triggr run <action>        run a built-in action (see: triggr list)\n       triggr trigger <trigger>   run what's assigned to a trigger\n       triggr menu <name>         show one of your menus\n       triggr list                list actions and triggers\n"
10000405c:	mov	w1, #0x103
100004060:	mov	w2, #0x1
100004064:	bl	0x1000048a8 ; symbol stub for: _fwrite
100004068:	mov	w22, #0x40
10000406c:	b	0x100004504
100004070:	adrp	x25, 8 ; 0x10000c000
100004074:	ldr	x0, [x25, #0x58] ; Objc class ref: bad class ref
100004078:	ldr	x2, [x22, #0x8]
10000407c:	bl	0x100004aa0
100004080:	mov	x29, x29
100004084:	bl	0x10000492c ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004088:	mov	x20, x0
10000408c:	adrp	x2, 5 ; 0x100009000
100004090:	add	x2, x2, #0x440 ; "list"
100004094:	bl	0x100004a20
100004098:	cbz	w0, 0x1000040dc
10000409c:	adrp	x0, 3 ; 0x100007000
1000040a0:	add	x0, x0, #0x36e ; literal pool for: "Actions (triggr run <action>):"
1000040a4:	bl	0x100004944 ; symbol stub for: _puts
1000040a8:	adrp	x0, 4 ; 0x100008000
1000040ac:	add	x0, x0, #0x7b0
1000040b0:	mov	w1, #0xf
1000040b4:	bl	0x10000454c
1000040b8:	adrp	x0, 3 ; 0x100007000
1000040bc:	add	x0, x0, #0x38d ; literal pool for: "\nTriggers (triggr trigger <trigger>; runs only if assigned):"
1000040c0:	bl	0x100004944 ; symbol stub for: _puts
1000040c4:	adrp	x0, 5 ; 0x100009000
1000040c8:	add	x0, x0, #0x140
1000040cc:	mov	w1, #0x18
1000040d0:	bl	0x10000454c
1000040d4:	mov	w22, #0x0
1000040d8:	b	0x1000044fc
1000040dc:	cmp	w21, #0x2
1000040e0:	b.ne	0x10000410c
1000040e4:	adrp	x8, 5 ; 0x100009000
1000040e8:	ldr	x8, [x8, #0x8c8] ; literal pool symbol address: ___stderrp
1000040ec:	ldr	x3, [x8]
1000040f0:	adrp	x0, 0 ; 0x100004000
1000040f4:	add	x0, x0, #0xbb8 ; literal pool for: "usage: triggr run <action>        run a built-in action (see: triggr list)\n       triggr trigger <trigger>   run what's assigned to a trigger\n       triggr menu <name>         show one of your menus\n       triggr list                list actions and triggers\n"
1000040f8:	mov	w1, #0x103
1000040fc:	mov	w2, #0x1
100004100:	bl	0x1000048a8 ; symbol stub for: _fwrite
100004104:	mov	w22, #0x40
100004108:	b	0x1000044fc
10000410c:	ldr	x0, [x25, #0x58]
100004110:	ldr	x2, [x22, #0x10]
100004114:	bl	0x100004aa0
100004118:	mov	x29, x29
10000411c:	bl	0x10000492c ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004120:	mov	x21, x0
100004124:	adrp	x0, 5 ; 0x100009000
100004128:	add	x0, x0, #0x460 ; "AllowAPI"
10000412c:	bl	0x1000045f0
100004130:	mov	x29, x29
100004134:	bl	0x10000492c ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004138:	mov	x23, x0
10000413c:	bl	0x100004980
100004140:	mov	x24, x0
100004144:	mov	x0, x23
100004148:	bl	0x100004908 ; symbol stub for: _objc_release
10000414c:	tbz	w24, #0x0, 0x100004204
100004150:	adrp	x2, 5 ; 0x100009000
100004154:	add	x2, x2, #0x480 ; "run"
100004158:	mov	x0, x20
10000415c:	bl	0x100004a20
100004160:	cbz	w0, 0x10000422c
100004164:	stp	x20, x19, [sp, #0x18]
100004168:	mov	x27, #0x0
10000416c:	mov	w26, #0x0
100004170:	adrp	x28, 4 ; 0x100008000
100004174:	add	x28, x28, #0x7b0
100004178:	add	x8, x28, x27, lsl #5
10000417c:	ldr	w20, [x8, #0x10]
100004180:	cmp	w20, #0x1
100004184:	b.lt	0x1000041c8
100004188:	ldr	x19, [x8, #0x8]
10000418c:	ldr	x0, [x25, #0x58]
100004190:	ldr	x2, [x19], #0x10
100004194:	bl	0x100004aa0
100004198:	mov	x29, x29
10000419c:	bl	0x10000492c ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000041a0:	mov	x23, x0
1000041a4:	mov	x0, x21
1000041a8:	mov	x2, x23
1000041ac:	bl	0x100004a20
1000041b0:	mov	x24, x0
1000041b4:	mov	x0, x23
1000041b8:	bl	0x100004908 ; symbol stub for: _objc_release
1000041bc:	orr	w26, w24, w26
1000041c0:	subs	x20, x20, #0x1
1000041c4:	b.ne	0x10000418c
1000041c8:	add	x27, x27, #0x1
1000041cc:	cmp	x27, #0xf
1000041d0:	b.ne	0x100004178
1000041d4:	tbz	w26, #0x0, 0x10000427c
1000041d8:	adrp	x0, 5 ; 0x100009000
1000041dc:	add	x0, x0, #0x4a0 ; "run/"
1000041e0:	mov	x2, x21
1000041e4:	bl	0x100004a80
1000041e8:	mov	x29, x29
1000041ec:	bl	0x10000492c ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000041f0:	mov	x23, x0
1000041f4:	bl	0x100004620
1000041f8:	mov	x22, x0
1000041fc:	mov	x0, x23
100004200:	b	0x1000044ec
100004204:	adrp	x8, 5 ; 0x100009000
100004208:	ldr	x8, [x8, #0x8c8] ; literal pool symbol address: ___stderrp
10000420c:	ldr	x3, [x8]
100004210:	adrp	x0, 0 ; 0x100004000
100004214:	add	x0, x0, #0xace ; literal pool for: "triggr: turn on Settings \342\206\222 Triggr \342\206\222 Allow API first.\n"
100004218:	mov	w22, #0x1
10000421c:	mov	w1, #0x39
100004220:	mov	w2, #0x1
100004224:	bl	0x1000048a8 ; symbol stub for: _fwrite
100004228:	b	0x1000044f4
10000422c:	adrp	x2, 5 ; 0x100009000
100004230:	add	x2, x2, #0x4c0 ; "trigger"
100004234:	mov	x0, x20
100004238:	bl	0x100004a20
10000423c:	cbz	w0, 0x1000042a4
100004240:	mov	x0, x21
100004244:	bl	0x1000046a0
100004248:	tbz	w0, #0x0, 0x100004428
10000424c:	adrp	x0, 5 ; 0x100009000
100004250:	add	x0, x0, #0x4e0 ; "trigger/"
100004254:	mov	x2, x21
100004258:	bl	0x100004a80
10000425c:	mov	x29, x29
100004260:	bl	0x10000492c ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004264:	mov	x23, x0
100004268:	bl	0x100004620
10000426c:	mov	x22, x0
100004270:	mov	x0, x23
100004274:	bl	0x100004908 ; symbol stub for: _objc_release
100004278:	b	0x1000044f4
10000427c:	adrp	x8, 5 ; 0x100009000
100004280:	ldr	x8, [x8, #0x8c8] ; literal pool symbol address: ___stderrp
100004284:	ldr	x0, [x8]
100004288:	ldr	x8, [x22, #0x10]
10000428c:	str	x8, [sp]
100004290:	adrp	x1, 0 ; 0x100004000
100004294:	add	x1, x1, #0xb0c ; literal pool for: "triggr: unknown action '%s' (see: triggr list)\n"
100004298:	bl	0x10000489c ; symbol stub for: _fprintf
10000429c:	mov	w22, #0x1
1000042a0:	b	0x1000044f0
1000042a4:	adrp	x2, 5 ; 0x100009000
1000042a8:	add	x2, x2, #0x500 ; "menu"
1000042ac:	mov	x0, x20
1000042b0:	bl	0x100004a20
1000042b4:	cbz	w0, 0x100004450
1000042b8:	stp	x20, x19, [sp, #0x18]
1000042bc:	adrp	x0, 5 ; 0x100009000
1000042c0:	add	x0, x0, #0x520 ; "Menus"
1000042c4:	bl	0x1000045f0
1000042c8:	mov	x29, x29
1000042cc:	bl	0x10000492c ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000042d0:	mov	x23, x0
1000042d4:	movi.16b	v0, #0x0
1000042d8:	stp	q0, q0, [sp, #0x30]
1000042dc:	stp	q0, q0, [sp, #0x50]
1000042e0:	adrp	x8, 8 ; 0x10000c000
1000042e4:	ldr	x0, [x8, #0x60] ; Objc class ref: bad class ref
1000042e8:	bl	0x1000048f0 ; symbol stub for: _objc_opt_class
1000042ec:	mov	x1, x0
1000042f0:	mov	x0, x23
1000042f4:	bl	0x1000048fc ; symbol stub for: _objc_opt_isKindOfClass
1000042f8:	adrp	x8, 5 ; 0x100009000
1000042fc:	ldr	x8, [x8, #0x8a8] ; literal pool symbol address: ___NSArray0__struct
100004300:	tst	w0, #0x1
100004304:	str	x23, [sp, #0x10]
100004308:	csel	x0, x23, x8, ne
10000430c:	bl	0x100004914 ; symbol stub for: _objc_retain
100004310:	add	x2, sp, #0x30
100004314:	add	x3, sp, #0x70
100004318:	str	x0, [sp, #0x28]
10000431c:	mov	w4, #0x10
100004320:	bl	0x1000049c0
100004324:	cbz	x0, 0x1000043f8
100004328:	mov	x19, x0
10000432c:	ldr	x8, [sp, #0x40]
100004330:	ldr	x23, [x8]
100004334:	adrp	x26, 8 ; 0x10000c000
100004338:	mov	x24, #0x0
10000433c:	ldr	x8, [sp, #0x40]
100004340:	ldr	x8, [x8]
100004344:	cmp	x8, x23
100004348:	b.eq	0x100004354
10000434c:	ldr	x0, [sp, #0x28]
100004350:	bl	0x1000048e4 ; symbol stub for: _objc_enumerationMutation
100004354:	ldr	x8, [sp, #0x38]
100004358:	ldr	x27, [x8, x24, lsl #3]
10000435c:	ldr	x0, [x26, #0x68]
100004360:	bl	0x1000048f0 ; symbol stub for: _objc_opt_class
100004364:	mov	x1, x0
100004368:	mov	x0, x27
10000436c:	bl	0x1000048fc ; symbol stub for: _objc_opt_isKindOfClass
100004370:	tbz	w0, #0x0, 0x1000043d0
100004374:	mov	x0, x27
100004378:	adrp	x2, 5 ; 0x100009000
10000437c:	add	x2, x2, #0x540 ; "name"
100004380:	bl	0x100004a60
100004384:	mov	x29, x29
100004388:	bl	0x10000492c ; symbol stub for: _objc_retainAutoreleasedReturnValue
10000438c:	mov	x28, x0
100004390:	bl	0x1000049e0
100004394:	mov	x29, x29
100004398:	bl	0x10000492c ; symbol stub for: _objc_retainAutoreleasedReturnValue
10000439c:	mov	x20, x26
1000043a0:	mov	x26, x23
1000043a4:	mov	x23, x0
1000043a8:	mov	x2, x21
1000043ac:	bl	0x1000049a0
1000043b0:	mov	x25, x0
1000043b4:	mov	x0, x23
1000043b8:	mov	x23, x26
1000043bc:	mov	x26, x20
1000043c0:	bl	0x100004908 ; symbol stub for: _objc_release
1000043c4:	mov	x0, x28
1000043c8:	bl	0x100004908 ; symbol stub for: _objc_release
1000043cc:	cbz	x25, 0x100004478
1000043d0:	add	x24, x24, #0x1
1000043d4:	cmp	x19, x24
1000043d8:	b.ne	0x10000433c
1000043dc:	add	x2, sp, #0x30
1000043e0:	add	x3, sp, #0x70
1000043e4:	ldr	x0, [sp, #0x28]
1000043e8:	mov	w4, #0x10
1000043ec:	bl	0x1000049c0
1000043f0:	mov	x19, x0
1000043f4:	cbnz	x0, 0x100004338
1000043f8:	ldr	x0, [sp, #0x28]
1000043fc:	bl	0x100004908 ; symbol stub for: _objc_release
100004400:	adrp	x8, 5 ; 0x100009000
100004404:	ldr	x8, [x8, #0x8c8] ; literal pool symbol address: ___stderrp
100004408:	ldr	x0, [x8]
10000440c:	ldr	x8, [x22, #0x10]
100004410:	str	x8, [sp]
100004414:	adrp	x1, 0 ; 0x100004000
100004418:	add	x1, x1, #0xb9c ; literal pool for: "triggr: no menu named '%s'\n"
10000441c:	bl	0x10000489c ; symbol stub for: _fprintf
100004420:	mov	w22, #0x1
100004424:	b	0x1000044e8
100004428:	adrp	x8, 5 ; 0x100009000
10000442c:	ldr	x8, [x8, #0x8c8] ; literal pool symbol address: ___stderrp
100004430:	ldr	x0, [x8]
100004434:	ldr	x8, [x22, #0x10]
100004438:	str	x8, [sp]
10000443c:	adrp	x1, 0 ; 0x100004000
100004440:	add	x1, x1, #0xb49 ; literal pool for: "triggr: unknown trigger '%s' (see: triggr list)\n"
100004444:	bl	0x10000489c ; symbol stub for: _fprintf
100004448:	mov	w22, #0x1
10000444c:	b	0x1000044f4
100004450:	adrp	x8, 5 ; 0x100009000
100004454:	ldr	x8, [x8, #0x8c8] ; literal pool symbol address: ___stderrp
100004458:	ldr	x3, [x8]
10000445c:	adrp	x0, 0 ; 0x100004000
100004460:	add	x0, x0, #0xbb8 ; literal pool for: "usage: triggr run <action>        run a built-in action (see: triggr list)\n       triggr trigger <trigger>   run what's assigned to a trigger\n       triggr menu <name>         show one of your menus\n       triggr list                list actions and triggers\n"
100004464:	mov	w1, #0x103
100004468:	mov	w2, #0x1
10000446c:	bl	0x1000048a8 ; symbol stub for: _fwrite
100004470:	mov	w22, #0x40
100004474:	b	0x1000044f4
100004478:	adrp	x2, 5 ; 0x100009000
10000447c:	add	x2, x2, #0x580 ; "id"
100004480:	mov	x0, x27
100004484:	bl	0x100004a60
100004488:	mov	x29, x29
10000448c:	bl	0x10000492c ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004490:	mov	x23, x0
100004494:	bl	0x1000049e0
100004498:	mov	x29, x29
10000449c:	bl	0x10000492c ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000044a0:	mov	x25, x0
1000044a4:	adrp	x0, 5 ; 0x100009000
1000044a8:	add	x0, x0, #0x560 ; "menu/"
1000044ac:	mov	x2, x25
1000044b0:	bl	0x100004a80
1000044b4:	mov	x29, x29
1000044b8:	bl	0x10000492c ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000044bc:	mov	x26, x0
1000044c0:	bl	0x100004620
1000044c4:	mov	x22, x0
1000044c8:	mov	x0, x26
1000044cc:	bl	0x100004908 ; symbol stub for: _objc_release
1000044d0:	mov	x0, x25
1000044d4:	bl	0x100004908 ; symbol stub for: _objc_release
1000044d8:	mov	x0, x23
1000044dc:	bl	0x100004908 ; symbol stub for: _objc_release
1000044e0:	ldr	x0, [sp, #0x28]
1000044e4:	bl	0x100004908 ; symbol stub for: _objc_release

; ===== sub_1000044e8 =====
1000044e8:	ldr	x0, [sp, #0x10]

; ===== sub_1000044ec =====
1000044ec:	bl	0x100004908 ; symbol stub for: _objc_release

; ===== sub_1000044f0 =====
1000044f0:	ldp	x20, x19, [sp, #0x18]

; ===== sub_1000044f4 =====
1000044f4:	mov	x0, x21
1000044f8:	bl	0x100004908 ; symbol stub for: _objc_release

; ===== sub_1000044fc =====
1000044fc:	mov	x0, x20
100004500:	bl	0x100004908 ; symbol stub for: _objc_release

; ===== sub_100004504 =====
100004504:	mov	x0, x19
100004508:	bl	0x1000048c0 ; symbol stub for: _objc_autoreleasePoolPop
10000450c:	ldur	x8, [x29, #-0x60]
100004510:	adrp	x9, 5 ; 0x100009000
100004514:	ldr	x9, [x9, #0x8c0] ; literal pool symbol address: ___stack_chk_guard
100004518:	ldr	x9, [x9]
10000451c:	cmp	x9, x8
100004520:	b.ne	0x100004548
100004524:	mov	x0, x22
100004528:	ldp	x29, x30, [sp, #0x150]
10000452c:	ldp	x20, x19, [sp, #0x140]
100004530:	ldp	x22, x21, [sp, #0x130]
100004534:	ldp	x24, x23, [sp, #0x120]
100004538:	ldp	x26, x25, [sp, #0x110]
10000453c:	ldp	x28, x27, [sp, #0x100]
100004540:	add	sp, sp, #0x160
100004544:	ret
100004548:	bl	0x100004890 ; symbol stub for: ___stack_chk_fail

; ===== sub_10000454c =====
10000454c:	sub	sp, sp, #0x60
100004550:	stp	x26, x25, [sp, #0x10]
100004554:	stp	x24, x23, [sp, #0x20]
100004558:	stp	x22, x21, [sp, #0x30]
10000455c:	stp	x20, x19, [sp, #0x40]
100004560:	stp	x29, x30, [sp, #0x50]
100004564:	add	x29, sp, #0x50
100004568:	mov	x19, x0
10000456c:	mov	x21, #0x0
100004570:	mov	w22, w1
100004574:	adrp	x20, 0 ; 0x100004000
100004578:	add	x20, x20, #0xcbc ; literal pool for: "  %-22s %s\n"
10000457c:	add	x23, x19, x21, lsl #5
100004580:	ldr	x0, [x23]
100004584:	bl	0x100004944 ; symbol stub for: _puts
100004588:	ldr	w8, [x23, #0x10]
10000458c:	cmp	w8, #0x1
100004590:	b.lt	0x1000045c8
100004594:	mov	x24, #0x0
100004598:	mov	x25, #0x0
10000459c:	ldr	x8, [x23, #0x8]
1000045a0:	add	x8, x8, x24
1000045a4:	ldp	x9, x8, [x8]
1000045a8:	stp	x9, x8, [sp]
1000045ac:	mov	x0, x20
1000045b0:	bl	0x100004938 ; symbol stub for: _printf
1000045b4:	add	x25, x25, #0x1
1000045b8:	ldrsw	x8, [x23, #0x10]
1000045bc:	add	x24, x24, #0x10
1000045c0:	cmp	x25, x8
1000045c4:	b.lt	0x10000459c
1000045c8:	add	x21, x21, #0x1
1000045cc:	cmp	x21, x22
1000045d0:	b.ne	0x10000457c
1000045d4:	ldp	x29, x30, [sp, #0x50]
1000045d8:	ldp	x20, x19, [sp, #0x40]
1000045dc:	ldp	x22, x21, [sp, #0x30]
1000045e0:	ldp	x24, x23, [sp, #0x20]
1000045e4:	ldp	x26, x25, [sp, #0x10]
1000045e8:	add	sp, sp, #0x60
1000045ec:	ret

; ===== sub_1000045f0 =====
1000045f0:	stp	x29, x30, [sp, #-0x10]!
1000045f4:	mov	x29, sp
1000045f8:	adrp	x8, 5 ; 0x100009000
1000045fc:	ldr	x8, [x8, #0x8b0] ; literal pool symbol address: _kCFPreferencesAnyHost
100004600:	ldr	x3, [x8]
100004604:	adrp	x1, 5 ; 0x100009000
100004608:	add	x1, x1, #0x5a0 ; "com.johndie.triggr"
10000460c:	adrp	x2, 5 ; 0x100009000
100004610:	add	x2, x2, #0x5c0 ; "mobile"
100004614:	bl	0x100004884 ; symbol stub for: _CFPreferencesCopyValue
100004618:	ldp	x29, x30, [sp], #0x10
10000461c:	b	0x1000048d8 ; symbol stub for: _objc_autoreleaseReturnValue

; ===== sub_100004620 =====
100004620:	sub	sp, sp, #0x30
100004624:	stp	x20, x19, [sp, #0x10]
100004628:	stp	x29, x30, [sp, #0x20]
10000462c:	add	x29, sp, #0x20
100004630:	mov	x2, x0
100004634:	adrp	x0, 5 ; 0x100009000
100004638:	add	x0, x0, #0x5e0 ; "com.johndie.triggr/api/"
10000463c:	bl	0x100004a80
100004640:	mov	x29, x29
100004644:	bl	0x10000492c ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004648:	mov	x20, x0
10000464c:	bl	0x100004920 ; symbol stub for: _objc_retainAutorelease
100004650:	bl	0x100004960
100004654:	bl	0x1000048b4 ; symbol stub for: _notify_post
100004658:	mov	x19, x0
10000465c:	mov	x0, x20
100004660:	bl	0x100004908 ; symbol stub for: _objc_release
100004664:	cbz	w19, 0x10000468c
100004668:	adrp	x8, 5 ; 0x100009000
10000466c:	ldr	x8, [x8, #0x8c8] ; literal pool symbol address: ___stderrp
100004670:	ldr	x0, [x8]
100004674:	str	x19, [sp]
100004678:	adrp	x1, 3 ; 0x100007000
10000467c:	add	x1, x1, #0x285 ; literal pool for: "triggr: couldn't send (notify status %u)\n"
100004680:	bl	0x10000489c ; symbol stub for: _fprintf
100004684:	mov	w0, #0x1
100004688:	b	0x100004690
10000468c:	mov	w0, #0x0

; ===== sub_100004690 =====
100004690:	ldp	x29, x30, [sp, #0x20]
100004694:	ldp	x20, x19, [sp, #0x10]
100004698:	add	sp, sp, #0x30
10000469c:	ret

; ===== sub_1000046a0 =====
1000046a0:	sub	sp, sp, #0x130
1000046a4:	stp	x28, x27, [sp, #0xd0]
1000046a8:	stp	x26, x25, [sp, #0xe0]
1000046ac:	stp	x24, x23, [sp, #0xf0]
1000046b0:	stp	x22, x21, [sp, #0x100]
1000046b4:	stp	x20, x19, [sp, #0x110]
1000046b8:	stp	x29, x30, [sp, #0x120]
1000046bc:	add	x29, sp, #0x120
1000046c0:	adrp	x8, 5 ; 0x100009000
1000046c4:	ldr	x8, [x8, #0x8c0] ; literal pool symbol address: ___stack_chk_guard
1000046c8:	ldr	x8, [x8]
1000046cc:	stur	x8, [x29, #-0x58]
1000046d0:	bl	0x100004914 ; symbol stub for: _objc_retain
1000046d4:	bl	0x100004914 ; symbol stub for: _objc_retain
1000046d8:	mov	x19, x0
1000046dc:	movi.16b	v0, #0x0
1000046e0:	stp	q0, q0, [sp]
1000046e4:	stp	q0, q0, [sp, #0x20]
1000046e8:	adrp	x0, 5 ; 0x100009000
1000046ec:	add	x0, x0, #0x830
1000046f0:	mov	x2, sp
1000046f4:	add	x3, sp, #0x48
1000046f8:	mov	w4, #0x10
1000046fc:	bl	0x1000049c0
100004700:	cbz	x0, 0x100004790
100004704:	mov	x21, x0
100004708:	ldr	x8, [sp, #0x10]
10000470c:	ldr	x24, [x8]
100004710:	adrp	x20, 5 ; 0x100009000
100004714:	add	x20, x20, #0x830
100004718:	mov	x25, #0x0
10000471c:	ldr	x8, [sp, #0x10]
100004720:	ldr	x8, [x8]
100004724:	cmp	x8, x24
100004728:	b.eq	0x100004734
10000472c:	mov	x0, x20
100004730:	bl	0x1000048e4 ; symbol stub for: _objc_enumerationMutation
100004734:	ldr	x8, [sp, #0x8]
100004738:	ldr	x22, [x8, x25, lsl #3]
10000473c:	mov	x0, x19
100004740:	mov	x2, x22
100004744:	bl	0x100004a00
100004748:	cbz	w0, 0x100004768
10000474c:	mov	x0, x19
100004750:	bl	0x100004a40
100004754:	mov	x23, x0
100004758:	mov	x0, x22
10000475c:	bl	0x100004a40
100004760:	cmp	x23, x0
100004764:	b.hi	0x100004830
100004768:	add	x25, x25, #0x1
10000476c:	cmp	x21, x25
100004770:	b.ne	0x10000471c
100004774:	mov	x2, sp
100004778:	add	x3, sp, #0x48
10000477c:	mov	x0, x20
100004780:	mov	w4, #0x10
100004784:	bl	0x1000049c0
100004788:	mov	x21, x0
10000478c:	cbnz	x0, 0x100004718
100004790:	mov	x0, x19
100004794:	bl	0x100004908 ; symbol stub for: _objc_release
100004798:	adrp	x2, 5 ; 0x100009000
10000479c:	add	x2, x2, #0x600 ; "lib."
1000047a0:	mov	x0, x19
1000047a4:	bl	0x100004a00
1000047a8:	cbz	w0, 0x1000047bc
1000047ac:	mov	x0, x19
1000047b0:	bl	0x100004a40
1000047b4:	cmp	x0, #0x4
1000047b8:	b.hi	0x100004838
1000047bc:	mov	x22, #0x0
1000047c0:	adrp	x23, 5 ; 0x100009000
1000047c4:	add	x23, x23, #0x140
1000047c8:	adrp	x24, 8 ; 0x10000c000
1000047cc:	add	x8, x23, x22, lsl #5
1000047d0:	ldr	w25, [x8, #0x10]
1000047d4:	cmp	w25, #0x1
1000047d8:	b.lt	0x10000481c
1000047dc:	ldr	x26, [x8, #0x8]
1000047e0:	ldr	x0, [x24, #0x58]
1000047e4:	ldr	x2, [x26], #0x10
1000047e8:	bl	0x100004aa0
1000047ec:	mov	x29, x29
1000047f0:	bl	0x10000492c ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000047f4:	mov	x20, x0
1000047f8:	mov	x0, x19
1000047fc:	mov	x2, x20
100004800:	bl	0x100004a20
100004804:	mov	x21, x0
100004808:	mov	x0, x20
10000480c:	bl	0x100004908 ; symbol stub for: _objc_release
100004810:	tbnz	w21, #0x0, 0x100004838
100004814:	subs	x25, x25, #0x1
100004818:	b.ne	0x1000047e0
10000481c:	add	x22, x22, #0x1
100004820:	cmp	x22, #0x18
100004824:	b.ne	0x1000047cc
100004828:	mov	w20, #0x0
10000482c:	b	0x10000483c
100004830:	mov	x0, x19
100004834:	bl	0x100004908 ; symbol stub for: _objc_release
100004838:	mov	w20, #0x1

; ===== sub_10000483c =====
10000483c:	mov	x0, x19
100004840:	bl	0x100004908 ; symbol stub for: _objc_release
100004844:	ldur	x8, [x29, #-0x58]
100004848:	adrp	x9, 5 ; 0x100009000
10000484c:	ldr	x9, [x9, #0x8c0] ; literal pool symbol address: ___stack_chk_guard
100004850:	ldr	x9, [x9]
100004854:	cmp	x9, x8
100004858:	b.ne	0x100004880
10000485c:	mov	x0, x20
100004860:	ldp	x29, x30, [sp, #0x120]
100004864:	ldp	x20, x19, [sp, #0x110]
100004868:	ldp	x22, x21, [sp, #0x100]
10000486c:	ldp	x24, x23, [sp, #0xf0]
100004870:	ldp	x26, x25, [sp, #0xe0]
100004874:	ldp	x28, x27, [sp, #0xd0]
100004878:	add	sp, sp, #0x130
10000487c:	ret
100004880:	bl	0x100004890 ; symbol stub for: ___stack_chk_fail
