/tmp/v21a/x/var/jb/Applications/TriggrApp.app/TriggrApp:
(__TEXT,__text) section

; ===== sub_100004000 =====
100004000:	sub	sp, sp, #0x190
100004004:	stp	x28, x27, [sp, #0x130]
100004008:	stp	x26, x25, [sp, #0x140]
10000400c:	stp	x24, x23, [sp, #0x150]
100004010:	stp	x22, x21, [sp, #0x160]
100004014:	stp	x20, x19, [sp, #0x170]
100004018:	stp	x29, x30, [sp, #0x180]
10000401c:	add	x29, sp, #0x180
100004020:	mov	x28, x0
100004024:	adrp	x8, 4 ; 0x100008000
100004028:	ldr	x8, [x8, #0x138] ; literal pool symbol address: ___stack_chk_guard
10000402c:	ldr	x8, [x8]
100004030:	stur	x8, [x29, #-0x60]
100004034:	adrp	x8, 8 ; 0x10000c000
100004038:	ldr	x0, [x8, #0x768] ; Objc class ref: bad class ref
10000403c:	bl	0x10000469c ; symbol stub for: _objc_alloc
100004040:	mov	x19, x0
100004044:	adrp	x8, 8 ; 0x10000c000
100004048:	ldr	x0, [x8, #0x770] ; Objc class ref: bad class ref
10000404c:	bl	0x100004900
100004050:	mov	x29, x29
100004054:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004058:	mov	x20, x0
10000405c:	bl	0x100004780
100004060:	mov	x0, x19
100004064:	bl	0x100004860
100004068:	mov	x19, x0
10000406c:	mov	x0, x28
100004070:	mov	x2, x19
100004074:	bl	0x100004ae0
100004078:	mov	x0, x19
10000407c:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004080:	mov	x0, x20
100004084:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004088:	adrp	x8, 8 ; 0x10000c000
10000408c:	ldr	x20, [x8, #0x778] ; Objc class ref: bad class ref
100004090:	movi.16b	v0, #0x0
100004094:	stp	q0, q0, [sp, #0x50]
100004098:	stp	q0, q0, [sp, #0x70]
10000409c:	adrp	x0, 4 ; 0x100008000
1000040a0:	add	x0, x0, #0x80 ; "/var/jb"
1000040a4:	adrp	x19, 4 ; 0x100008000
1000040a8:	add	x19, x19, #0x60 ; "/Library/PreferenceBundles/Triggr.bundle"
1000040ac:	mov	x2, x19
1000040b0:	bl	0x100004b00
1000040b4:	mov	x29, x29
1000040b8:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000040bc:	mov	x22, x0
1000040c0:	stp	x0, x19, [sp, #0x90]
1000040c4:	adrp	x8, 8 ; 0x10000c000
1000040c8:	ldr	x0, [x8, #0x790] ; Objc class ref: bad class ref
1000040cc:	add	x2, sp, #0x90
1000040d0:	mov	w3, #0x2
1000040d4:	bl	0x100004760
1000040d8:	mov	x29, x29
1000040dc:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000040e0:	mov	x21, x0
1000040e4:	mov	x0, x22
1000040e8:	bl	0x1000046e4 ; symbol stub for: _objc_release
1000040ec:	add	x2, sp, #0x50
1000040f0:	add	x3, sp, #0xa0
1000040f4:	mov	x0, x21
1000040f8:	mov	w4, #0x10
1000040fc:	bl	0x100004800
100004100:	mov	x19, x0
100004104:	cbz	x0, 0x10000419c
100004108:	ldr	x8, [sp, #0x60]
10000410c:	ldr	x25, [x8]
100004110:	adrp	x26, 8 ; 0x10000c000
100004114:	mov	x27, #0x0
100004118:	ldr	x8, [sp, #0x60]
10000411c:	ldr	x8, [x8]
100004120:	cmp	x8, x25
100004124:	b.eq	0x100004130
100004128:	mov	x0, x21
10000412c:	bl	0x1000046c0 ; symbol stub for: _objc_enumerationMutation
100004130:	ldr	x8, [sp, #0x58]
100004134:	ldr	x22, [x8, x27, lsl #3]
100004138:	ldr	x0, [x26, #0x798]
10000413c:	bl	0x100004820
100004140:	mov	x29, x29
100004144:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004148:	mov	x23, x0
10000414c:	mov	x2, x22
100004150:	bl	0x100004840
100004154:	mov	x24, x0
100004158:	mov	x0, x23
10000415c:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004160:	tbnz	w24, #0x0, 0x100004190
100004164:	add	x27, x27, #0x1
100004168:	cmp	x19, x27
10000416c:	b.ne	0x100004118
100004170:	add	x2, sp, #0x50
100004174:	add	x3, sp, #0xa0
100004178:	mov	x0, x21
10000417c:	mov	w4, #0x10
100004180:	bl	0x100004800
100004184:	mov	x19, x0
100004188:	cbnz	x0, 0x100004114
10000418c:	b	0x10000419c
100004190:	mov	x0, x22
100004194:	bl	0x1000046f0 ; symbol stub for: _objc_retain
100004198:	mov	x19, x0

; ===== sub_10000419c =====
10000419c:	mov	x0, x21
1000041a0:	bl	0x1000046e4 ; symbol stub for: _objc_release
1000041a4:	mov	x0, x20
1000041a8:	mov	x2, x19
1000041ac:	bl	0x1000047a0
1000041b0:	mov	x29, x29
1000041b4:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000041b8:	mov	x22, x0
1000041bc:	mov	x0, x19
1000041c0:	bl	0x1000046e4 ; symbol stub for: _objc_release
1000041c4:	mov	x0, x22
1000041c8:	bl	0x1000048e0
1000041cc:	cbz	w0, 0x1000041e8
1000041d0:	adrp	x0, 4 ; 0x100008000
1000041d4:	add	x0, x0, #0x0 ; "TGRootListController"
1000041d8:	bl	0x10000466c ; symbol stub for: _NSClassFromString
1000041dc:	bl	0x1000046d8 ; symbol stub for: _objc_opt_new
1000041e0:	mov	x21, x0
1000041e4:	cbnz	x0, 0x1000044b4
1000041e8:	adrp	x8, 8 ; 0x10000c000
1000041ec:	ldr	x0, [x8, #0x7a0] ; Objc class ref: bad class ref
1000041f0:	bl	0x1000046d8 ; symbol stub for: _objc_opt_new
1000041f4:	mov	x21, x0
1000041f8:	adrp	x23, 8 ; 0x10000c000
1000041fc:	ldr	x0, [x23, #0x7a8] ; Objc class ref: bad class ref
100004200:	bl	0x100004b20
100004204:	mov	x29, x29
100004208:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
10000420c:	mov	x19, x0
100004210:	mov	x0, x21
100004214:	bl	0x100004b60
100004218:	mov	x29, x29
10000421c:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004220:	mov	x20, x0
100004224:	mov	x2, x19
100004228:	bl	0x1000049a0
10000422c:	mov	x0, x20
100004230:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004234:	mov	x0, x19
100004238:	bl	0x1000046e4 ; symbol stub for: _objc_release
10000423c:	adrp	x8, 8 ; 0x10000c000
100004240:	ldr	x0, [x8, #0x7b0] ; Objc class ref: bad class ref
100004244:	bl	0x1000046d8 ; symbol stub for: _objc_opt_new
100004248:	str	x22, [sp, #0x48]
10000424c:	mov	x22, x0
100004250:	adrp	x2, 4 ; 0x100008000
100004254:	add	x2, x2, #0x20 ; "Triggr's settings couldn't be loaded. Reinstall Triggr from your package manager."
100004258:	bl	0x100004a40
10000425c:	mov	x0, x22
100004260:	mov	x2, #0x0
100004264:	bl	0x1000049e0
100004268:	mov	x0, x22
10000426c:	mov	w2, #0x1
100004270:	bl	0x100004a60
100004274:	ldr	x0, [x23, #0x7a8]
100004278:	bl	0x100004980
10000427c:	mov	x29, x29
100004280:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004284:	mov	x19, x0
100004288:	mov	x0, x22
10000428c:	mov	x2, x19
100004290:	bl	0x100004a80
100004294:	mov	x0, x19
100004298:	bl	0x1000046e4 ; symbol stub for: _objc_release
10000429c:	mov	x0, x22
1000042a0:	mov	w2, #0x0
1000042a4:	bl	0x100004ac0
1000042a8:	mov	x0, x21
1000042ac:	bl	0x100004b60
1000042b0:	mov	x29, x29
1000042b4:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000042b8:	mov	x19, x0
1000042bc:	mov	x2, x22
1000042c0:	bl	0x100004740
1000042c4:	mov	x0, x19
1000042c8:	bl	0x1000046e4 ; symbol stub for: _objc_release
1000042cc:	adrp	x8, 8 ; 0x10000c000
1000042d0:	ldr	x8, [x8, #0x7b8] ; Objc class ref: bad class ref
1000042d4:	str	x8, [sp, #0x10]
1000042d8:	mov	x0, x22
1000042dc:	bl	0x1000047c0
1000042e0:	mov	x29, x29
1000042e4:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000042e8:	mov	x19, x0
1000042ec:	str	x0, [sp, #0x38]
1000042f0:	mov	x0, x21
1000042f4:	bl	0x100004b60
1000042f8:	mov	x29, x29
1000042fc:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004300:	str	x0, [sp, #0x40]
100004304:	bl	0x1000047c0
100004308:	mov	x29, x29
10000430c:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004310:	mov	x2, x0
100004314:	str	x0, [sp, #0x30]
100004318:	mov	x0, x19
10000431c:	bl	0x1000047e0
100004320:	mov	x29, x29
100004324:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004328:	str	x0, [sp, #0x28]
10000432c:	str	x0, [sp, #0xa0]
100004330:	mov	x0, x22
100004334:	bl	0x1000048c0
100004338:	mov	x29, x29
10000433c:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004340:	mov	x19, x0
100004344:	str	x0, [sp, #0x18]
100004348:	mov	x0, x21
10000434c:	bl	0x100004b60
100004350:	mov	x29, x29
100004354:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004358:	str	x0, [sp, #0x20]
10000435c:	bl	0x1000048a0
100004360:	mov	x29, x29
100004364:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004368:	str	x0, [sp, #0x8]
10000436c:	bl	0x1000048c0
100004370:	mov	x29, x29
100004374:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004378:	mov	x2, x0
10000437c:	str	x0, [sp]
100004380:	mov	x0, x19
100004384:	bl	0x1000047e0
100004388:	mov	x29, x29
10000438c:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004390:	mov	x23, x0
100004394:	str	x0, [sp, #0xa8]
100004398:	mov	x0, x22
10000439c:	bl	0x100004b40
1000043a0:	mov	x29, x29
1000043a4:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000043a8:	mov	x24, x0
1000043ac:	mov	x0, x21
1000043b0:	bl	0x100004b60
1000043b4:	mov	x29, x29
1000043b8:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000043bc:	mov	x25, x0
1000043c0:	bl	0x1000048a0
1000043c4:	mov	x29, x29
1000043c8:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000043cc:	mov	x26, x0
1000043d0:	bl	0x100004b40
1000043d4:	mov	x29, x29
1000043d8:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000043dc:	mov	x27, x0
1000043e0:	mov	x0, x24
1000043e4:	mov	x2, x27
1000043e8:	bl	0x1000047e0
1000043ec:	mov	x29, x29
1000043f0:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000043f4:	mov	x19, x28
1000043f8:	mov	x28, x0
1000043fc:	str	x0, [sp, #0xb0]
100004400:	adrp	x8, 8 ; 0x10000c000
100004404:	ldr	x0, [x8, #0x790] ; Objc class ref: bad class ref
100004408:	add	x2, sp, #0xa0
10000440c:	mov	w3, #0x3
100004410:	bl	0x100004760
100004414:	mov	x29, x29
100004418:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
10000441c:	mov	x20, x0
100004420:	ldr	x0, [sp, #0x10]
100004424:	mov	x2, x20
100004428:	bl	0x100004720
10000442c:	mov	x0, x20
100004430:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004434:	mov	x0, x28
100004438:	mov	x28, x19
10000443c:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004440:	mov	x0, x27
100004444:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004448:	mov	x0, x26
10000444c:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004450:	mov	x0, x25
100004454:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004458:	mov	x0, x24
10000445c:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004460:	mov	x0, x23
100004464:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004468:	ldr	x0, [sp]
10000446c:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004470:	ldr	x0, [sp, #0x8]
100004474:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004478:	ldr	x0, [sp, #0x20]
10000447c:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004480:	ldr	x0, [sp, #0x18]
100004484:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004488:	ldr	x0, [sp, #0x28]
10000448c:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004490:	ldr	x0, [sp, #0x30]
100004494:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004498:	ldr	x0, [sp, #0x40]
10000449c:	bl	0x1000046e4 ; symbol stub for: _objc_release
1000044a0:	ldr	x0, [sp, #0x38]
1000044a4:	bl	0x1000046e4 ; symbol stub for: _objc_release
1000044a8:	mov	x0, x22
1000044ac:	ldr	x22, [sp, #0x48]
1000044b0:	bl	0x1000046e4 ; symbol stub for: _objc_release
1000044b4:	adrp	x2, 4 ; 0x100008000
1000044b8:	add	x2, x2, #0x40 ; "Triggr"
1000044bc:	mov	x0, x21
1000044c0:	bl	0x100004aa0
1000044c4:	adrp	x8, 8 ; 0x10000c000
1000044c8:	ldr	x0, [x8, #0x780] ; Objc class ref: bad class ref
1000044cc:	bl	0x10000469c ; symbol stub for: _objc_alloc
1000044d0:	mov	x2, x21
1000044d4:	bl	0x100004880
1000044d8:	mov	x19, x0
1000044dc:	bl	0x100004940
1000044e0:	mov	x29, x29
1000044e4:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000044e8:	mov	x20, x0
1000044ec:	mov	w2, #0x1
1000044f0:	bl	0x100004a00
1000044f4:	mov	x0, x20
1000044f8:	bl	0x1000046e4 ; symbol stub for: _objc_release
1000044fc:	mov	x0, x21
100004500:	bl	0x100004960
100004504:	mov	x29, x29
100004508:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
10000450c:	mov	x20, x0
100004510:	mov	w2, #0x1
100004514:	bl	0x1000049c0
100004518:	mov	x0, x20
10000451c:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004520:	mov	x0, x28
100004524:	bl	0x100004b80
100004528:	mov	x29, x29
10000452c:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004530:	mov	x20, x0
100004534:	mov	x2, x19
100004538:	bl	0x100004a20
10000453c:	mov	x0, x20
100004540:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004544:	mov	x0, x28
100004548:	bl	0x100004b80
10000454c:	mov	x29, x29
100004550:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004554:	mov	x20, x0
100004558:	bl	0x100004920
10000455c:	mov	x0, x20
100004560:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004564:	mov	x0, x19
100004568:	bl	0x1000046e4 ; symbol stub for: _objc_release
10000456c:	mov	x0, x22
100004570:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004574:	mov	x0, x21
100004578:	bl	0x1000046e4 ; symbol stub for: _objc_release
10000457c:	ldur	x8, [x29, #-0x60]
100004580:	adrp	x9, 4 ; 0x100008000
100004584:	ldr	x9, [x9, #0x138] ; literal pool symbol address: ___stack_chk_guard
100004588:	ldr	x9, [x9]
10000458c:	cmp	x9, x8
100004590:	b.ne	0x1000045b8
100004594:	mov	w0, #0x1
100004598:	ldp	x29, x30, [sp, #0x180]
10000459c:	ldp	x20, x19, [sp, #0x170]
1000045a0:	ldp	x22, x21, [sp, #0x160]
1000045a4:	ldp	x24, x23, [sp, #0x150]
1000045a8:	ldp	x26, x25, [sp, #0x140]
1000045ac:	ldp	x28, x27, [sp, #0x130]
1000045b0:	add	sp, sp, #0x190
1000045b4:	ret
1000045b8:	bl	0x100004690 ; symbol stub for: ___stack_chk_fail
1000045bc:	adrp	x8, 8 ; 0x10000c000
1000045c0:	ldrsw	x8, [x8, #0x7c0]
1000045c4:	ldr	x0, [x0, x8]
1000045c8:	ret
1000045cc:	mov	x1, x2
1000045d0:	adrp	x8, 8 ; 0x10000c000
1000045d4:	ldrsw	x8, [x8, #0x7c0]
1000045d8:	add	x0, x0, x8
1000045dc:	b	0x100004708 ; symbol stub for: _objc_storeStrong
1000045e0:	adrp	x8, 8 ; 0x10000c000
1000045e4:	ldrsw	x8, [x8, #0x7c0]
1000045e8:	add	x0, x0, x8
1000045ec:	mov	x1, #0x0
1000045f0:	b	0x100004708 ; symbol stub for: _objc_storeStrong
_main:
1000045f4:	stp	x22, x21, [sp, #-0x30]!
1000045f8:	stp	x20, x19, [sp, #0x10]
1000045fc:	stp	x29, x30, [sp, #0x20]
100004600:	add	x29, sp, #0x20
100004604:	mov	x19, x1
100004608:	mov	x20, x0
10000460c:	bl	0x1000046b4 ; symbol stub for: _objc_autoreleasePoolPush
100004610:	mov	x21, x0
100004614:	adrp	x8, 8 ; 0x10000c000
100004618:	ldr	x0, [x8, #0x788] ; Objc class ref: bad class ref
10000461c:	bl	0x1000046cc ; symbol stub for: _objc_opt_class
100004620:	bl	0x100004678 ; symbol stub for: _NSStringFromClass
100004624:	mov	x29, x29
100004628:	bl	0x1000046fc ; symbol stub for: _objc_retainAutoreleasedReturnValue
10000462c:	mov	x22, x0
100004630:	mov	x0, x20
100004634:	mov	x1, x19
100004638:	mov	x2, #0x0
10000463c:	mov	x3, x22
100004640:	bl	0x100004684 ; symbol stub for: _UIApplicationMain
100004644:	mov	x19, x0
100004648:	mov	x0, x22
10000464c:	bl	0x1000046e4 ; symbol stub for: _objc_release
100004650:	mov	x0, x21
100004654:	bl	0x1000046a8 ; symbol stub for: _objc_autoreleasePoolPop
100004658:	mov	x0, x19
10000465c:	ldp	x29, x30, [sp, #0x20]
100004660:	ldp	x20, x19, [sp, #0x10]
100004664:	ldp	x22, x21, [sp], #0x30
100004668:	ret
