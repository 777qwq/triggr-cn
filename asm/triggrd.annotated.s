/tmp/v21a/x/var/jb/usr/libexec/triggrd:
(__TEXT,__text) section
_main:

; ===== sub_100004000 =====
100004000:	sub	sp, sp, #0x50
100004004:	stp	x22, x21, [sp, #0x20]
100004008:	stp	x20, x19, [sp, #0x30]
10000400c:	stp	x29, x30, [sp, #0x40]
100004010:	add	x29, sp, #0x40
100004014:	bl	0x100004f04 ; symbol stub for: _objc_autoreleasePoolPush
100004018:	adrp	x8, 8 ; 0x10000c000
10000401c:	ldr	x0, [x8, #0xf8] ; Objc class ref: bad class ref
100004020:	bl	0x1000050e0
100004024:	mov	x29, x29
100004028:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
10000402c:	mov	x19, x0
100004030:	adrp	x8, 4 ; 0x100008000
100004034:	ldr	x8, [x8, #0x340] ; literal pool symbol address: _NSFilePosixPermissions
100004038:	ldr	x9, [x8]
10000403c:	adrp	x8, 4 ; 0x100008000
100004040:	add	x8, x8, #0x2b0
100004044:	stp	x9, x8, [sp, #0x10]
100004048:	adrp	x8, 8 ; 0x10000c000
10000404c:	ldr	x0, [x8, #0x100] ; Objc class ref: bad class ref
100004050:	add	x2, sp, #0x18
100004054:	add	x3, sp, #0x10
100004058:	mov	w4, #0x1
10000405c:	bl	0x100005120
100004060:	mov	x29, x29
100004064:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004068:	mov	x20, x0
10000406c:	adrp	x21, 4 ; 0x100008000
100004070:	add	x21, x21, #0xe8 ; "/var/tmp/com.johndie.triggr-run"
100004074:	mov	x0, x19
100004078:	mov	x2, x21
10000407c:	mov	w3, #0x1
100004080:	mov	x4, x20
100004084:	mov	x5, #0x0
100004088:	bl	0x1000050c0
10000408c:	mov	x0, x20
100004090:	bl	0x100004f40 ; symbol stub for: _objc_release
100004094:	mov	x0, x19
100004098:	bl	0x100004f40 ; symbol stub for: _objc_release
10000409c:	mov	x0, x21
1000040a0:	bl	0x100005180
1000040a4:	mov	w1, #0x1c0
1000040a8:	bl	0x100004eb0 ; symbol stub for: _chmod
1000040ac:	adrp	x0, 1 ; 0x100005000
1000040b0:	add	x0, x0, #0x3b2 ; literal pool for: "com.johndie.triggr/run-request"
1000040b4:	adrp	x2, 4 ; 0x100008000
1000040b8:	ldr	x2, [x2, #0x390] ; literal pool symbol address: __dispatch_main_q
1000040bc:	adrp	x3, 4 ; 0x100008000
1000040c0:	add	x3, x3, #0x20
1000040c4:	add	x1, sp, #0xc
1000040c8:	bl	0x100004ef8 ; symbol stub for: _notify_register_dispatch
1000040cc:	bl	0x1000040d8
1000040d0:	bl	0x100004ee0 ; symbol stub for: _dispatch_main
1000040d4:	b	0x1000040d8

; ===== sub_1000040d8 =====
1000040d8:	sub	sp, sp, #0x180
1000040dc:	stp	d9, d8, [sp, #0x110]
1000040e0:	stp	x28, x27, [sp, #0x120]
1000040e4:	stp	x26, x25, [sp, #0x130]
1000040e8:	stp	x24, x23, [sp, #0x140]
1000040ec:	stp	x22, x21, [sp, #0x150]
1000040f0:	stp	x20, x19, [sp, #0x160]
1000040f4:	stp	x29, x30, [sp, #0x170]
1000040f8:	add	x29, sp, #0x170
1000040fc:	adrp	x8, 4 ; 0x100008000
100004100:	ldr	x8, [x8, #0x388] ; literal pool symbol address: ___stack_chk_guard
100004104:	ldr	x8, [x8]
100004108:	stur	x8, [x29, #-0x70]
10000410c:	adrp	x8, 8 ; 0x10000c000
100004110:	ldr	x0, [x8, #0xf8] ; Objc class ref: bad class ref
100004114:	bl	0x1000050e0
100004118:	mov	x29, x29
10000411c:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004120:	mov	x19, x0
100004124:	adrp	x2, 4 ; 0x100008000
100004128:	add	x2, x2, #0xe8 ; "/var/tmp/com.johndie.triggr-run"
10000412c:	mov	x3, #0x0
100004130:	bl	0x100005060
100004134:	mov	x29, x29
100004138:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
10000413c:	mov	x20, x0
100004140:	adrp	x8, 8 ; 0x10000c000
100004144:	ldr	x2, [x8]
100004148:	bl	0x1000052c0
10000414c:	mov	x29, x29
100004150:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004154:	mov	x21, x0
100004158:	mov	x0, x20
10000415c:	bl	0x100004f40 ; symbol stub for: _objc_release
100004160:	mov	x0, x21
100004164:	bl	0x100005080
100004168:	cbz	x0, 0x10000438c
10000416c:	bl	0x1000043dc
100004170:	mov	x29, x29
100004174:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004178:	mov	x26, x0
10000417c:	movi.16b	v0, #0x0
100004180:	stp	q0, q0, [sp, #0x40]
100004184:	stp	q0, q0, [sp, #0x60]
100004188:	str	x21, [sp, #0x8]
10000418c:	mov	x0, x21
100004190:	bl	0x100004f4c ; symbol stub for: _objc_retain
100004194:	mov	x22, x0
100004198:	add	x2, sp, #0x40
10000419c:	add	x3, sp, #0x80
1000041a0:	mov	w4, #0x10
1000041a4:	bl	0x1000050a0
1000041a8:	str	x0, [sp, #0x10]
1000041ac:	cbz	x0, 0x100004378
1000041b0:	ldr	x8, [sp, #0x50]
1000041b4:	ldr	x21, [x8]
1000041b8:	adrp	x25, 4 ; 0x100008000
1000041bc:	add	x25, x25, #0xe8 ; "/var/tmp/com.johndie.triggr-run"
1000041c0:	adrp	x24, 8 ; 0x10000c000
1000041c4:	adrp	x8, 1 ; 0x100005000
1000041c8:	ldr	d8, [x8, #0x380]
1000041cc:	mov	x23, #0x0
1000041d0:	ldr	x8, [sp, #0x50]
1000041d4:	ldr	x8, [x8]
1000041d8:	cmp	x8, x21
1000041dc:	b.eq	0x1000041e8
1000041e0:	mov	x0, x22
1000041e4:	bl	0x100004f1c ; symbol stub for: _objc_enumerationMutation
1000041e8:	ldr	x8, [sp, #0x48]
1000041ec:	ldr	x2, [x8, x23, lsl #3]
1000041f0:	mov	x0, x25
1000041f4:	bl	0x1000052e0
1000041f8:	mov	x29, x29
1000041fc:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004200:	mov	x20, x0
100004204:	ldr	x0, [x24, #0x100]
100004208:	mov	x2, x20
10000420c:	bl	0x100005100
100004210:	mov	x29, x29
100004214:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004218:	mov	x27, x0
10000421c:	mov	x0, x19
100004220:	mov	x2, x20
100004224:	mov	x3, #0x0
100004228:	bl	0x100005260
10000422c:	mov	x0, x27
100004230:	adrp	x2, 4 ; 0x100008000
100004234:	add	x2, x2, #0x108 ; "Action"
100004238:	bl	0x100005220
10000423c:	mov	x29, x29
100004240:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004244:	mov	x28, x0
100004248:	adrp	x8, 8 ; 0x10000c000
10000424c:	ldr	x0, [x8, #0x108] ; Objc class ref: bad class ref
100004250:	bl	0x100004f28 ; symbol stub for: _objc_opt_class
100004254:	mov	x1, x0
100004258:	mov	x0, x28
10000425c:	bl	0x100004f34 ; symbol stub for: _objc_opt_isKindOfClass
100004260:	tbz	w0, #0x0, 0x100004334
100004264:	mov	x0, x28
100004268:	adrp	x2, 4 ; 0x100008000
10000426c:	add	x2, x2, #0x128 ; "shell:"
100004270:	bl	0x1000051a0
100004274:	tbnz	w0, #0x0, 0x10000428c
100004278:	mov	x0, x28
10000427c:	adrp	x2, 4 ; 0x100008000
100004280:	add	x2, x2, #0x148 ; "ext:"
100004284:	bl	0x1000051a0
100004288:	cbz	w0, 0x100004334
10000428c:	mov	x0, x26
100004290:	mov	x2, x28
100004294:	bl	0x100005020
100004298:	cbz	w0, 0x1000042a8
10000429c:	mov	x0, x28
1000042a0:	bl	0x1000044e4
1000042a4:	b	0x100004334
1000042a8:	mov	x0, #0x0
1000042ac:	mov	w1, #0x6500
1000042b0:	movk	w1, #0x1dcd, lsl #16
1000042b4:	bl	0x100004eec ; symbol stub for: _dispatch_time
1000042b8:	mov	x24, x21
1000042bc:	mov	x21, x19
1000042c0:	mov	x19, x25
1000042c4:	mov	x25, x22
1000042c8:	mov	x22, x26
1000042cc:	mov	x26, x0
1000042d0:	adrp	x8, 4 ; 0x100008000
1000042d4:	ldr	x8, [x8, #0x378] ; literal pool symbol address: __NSConcreteStackBlock
1000042d8:	str	x8, [sp, #0x18]
1000042dc:	str	d8, [sp, #0x20]
1000042e0:	adrp	x8, 0 ; 0x100004000
1000042e4:	add	x9, x8, #0xae0
1000042e8:	adrp	x8, 4 ; 0x100008000
1000042ec:	add	x8, x8, #0x40
1000042f0:	stp	x9, x8, [sp, #0x28]
1000042f4:	mov	x0, x28
1000042f8:	bl	0x100004f4c ; symbol stub for: _objc_retain
1000042fc:	str	x0, [sp, #0x38]
100004300:	add	x2, sp, #0x18
100004304:	mov	x0, x26
100004308:	mov	x26, x22
10000430c:	mov	x22, x25
100004310:	mov	x25, x19
100004314:	mov	x19, x21
100004318:	mov	x21, x24
10000431c:	adrp	x24, 8 ; 0x10000c000
100004320:	adrp	x1, 4 ; 0x100008000
100004324:	ldr	x1, [x1, #0x390] ; literal pool symbol address: __dispatch_main_q
100004328:	bl	0x100004ebc ; symbol stub for: _dispatch_after
10000432c:	ldr	x0, [sp, #0x38]
100004330:	bl	0x100004f40 ; symbol stub for: _objc_release

; ===== sub_100004334 =====
100004334:	mov	x0, x28
100004338:	bl	0x100004f40 ; symbol stub for: _objc_release
10000433c:	mov	x0, x27
100004340:	bl	0x100004f40 ; symbol stub for: _objc_release
100004344:	mov	x0, x20
100004348:	bl	0x100004f40 ; symbol stub for: _objc_release
10000434c:	add	x23, x23, #0x1
100004350:	ldr	x8, [sp, #0x10]
100004354:	cmp	x8, x23
100004358:	b.ne	0x1000041d0
10000435c:	add	x2, sp, #0x40
100004360:	add	x3, sp, #0x80
100004364:	mov	x0, x22
100004368:	mov	w4, #0x10
10000436c:	bl	0x1000050a0
100004370:	str	x0, [sp, #0x10]
100004374:	cbnz	x0, 0x1000041cc
100004378:	mov	x0, x22
10000437c:	bl	0x100004f40 ; symbol stub for: _objc_release
100004380:	mov	x0, x26
100004384:	bl	0x100004f40 ; symbol stub for: _objc_release
100004388:	ldr	x21, [sp, #0x8]
10000438c:	mov	x0, x21
100004390:	bl	0x100004f40 ; symbol stub for: _objc_release
100004394:	mov	x0, x19
100004398:	bl	0x100004f40 ; symbol stub for: _objc_release
10000439c:	ldur	x8, [x29, #-0x70]
1000043a0:	adrp	x9, 4 ; 0x100008000
1000043a4:	ldr	x9, [x9, #0x388] ; literal pool symbol address: ___stack_chk_guard
1000043a8:	ldr	x9, [x9]
1000043ac:	cmp	x9, x8
1000043b0:	b.ne	0x1000043d8
1000043b4:	ldp	x29, x30, [sp, #0x170]
1000043b8:	ldp	x20, x19, [sp, #0x160]
1000043bc:	ldp	x22, x21, [sp, #0x150]
1000043c0:	ldp	x24, x23, [sp, #0x140]
1000043c4:	ldp	x26, x25, [sp, #0x130]
1000043c8:	ldp	x28, x27, [sp, #0x120]
1000043cc:	ldp	d9, d8, [sp, #0x110]
1000043d0:	add	sp, sp, #0x180
1000043d4:	ret
1000043d8:	bl	0x100004ea4 ; symbol stub for: ___stack_chk_fail

; ===== sub_1000043dc =====
1000043dc:	sub	sp, sp, #0x60
1000043e0:	stp	x22, x21, [sp, #0x30]
1000043e4:	stp	x20, x19, [sp, #0x40]
1000043e8:	stp	x29, x30, [sp, #0x50]
1000043ec:	add	x29, sp, #0x50
1000043f0:	adrp	x19, 4 ; 0x100008000
1000043f4:	add	x19, x19, #0x168 ; "com.johndie.triggr"
1000043f8:	mov	x0, x19
1000043fc:	bl	0x100004e80 ; symbol stub for: _CFPreferencesAppSynchronize
100004400:	adrp	x8, 4 ; 0x100008000
100004404:	ldr	x8, [x8, #0x370] ; literal pool symbol address: _kCFPreferencesCurrentUser
100004408:	ldr	x20, [x8]
10000440c:	adrp	x8, 4 ; 0x100008000
100004410:	ldr	x8, [x8, #0x368] ; literal pool symbol address: _kCFPreferencesAnyHost
100004414:	ldr	x21, [x8]
100004418:	mov	x0, x19
10000441c:	mov	x1, x20
100004420:	mov	x2, x21
100004424:	bl	0x100004e8c ; symbol stub for: _CFPreferencesCopyKeyList
100004428:	mov	x19, x0
10000442c:	bl	0x100005080
100004430:	cbz	x0, 0x100004454
100004434:	adrp	x1, 4 ; 0x100008000
100004438:	add	x1, x1, #0x168 ; "com.johndie.triggr"
10000443c:	mov	x0, x19
100004440:	mov	x2, x20
100004444:	mov	x3, x21
100004448:	bl	0x100004e98 ; symbol stub for: _CFPreferencesCopyMultiple
10000444c:	mov	x20, x0
100004450:	b	0x10000445c
100004454:	adrp	x20, 4 ; 0x100008000
100004458:	ldr	x20, [x20, #0x360] ; literal pool symbol address: ___NSDictionary0__struct

; ===== sub_10000445c =====
10000445c:	adrp	x8, 8 ; 0x10000c000
100004460:	ldr	x0, [x8, #0x110] ; Objc class ref: bad class ref
100004464:	bl	0x100005280
100004468:	mov	x29, x29
10000446c:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004470:	adrp	x8, 4 ; 0x100008000
100004474:	ldr	x8, [x8, #0x378] ; literal pool symbol address: __NSConcreteStackBlock
100004478:	str	x8, [sp, #0x8]
10000447c:	adrp	x8, 1 ; 0x100005000
100004480:	ldr	d0, [x8, #0x380]
100004484:	str	d0, [sp, #0x10]
100004488:	adrp	x8, 0 ; 0x100004000
10000448c:	add	x8, x8, #0xb50
100004490:	adrp	x9, 4 ; 0x100008000
100004494:	add	x9, x9, #0x70
100004498:	stp	x8, x9, [sp, #0x18]
10000449c:	bl	0x100004f4c ; symbol stub for: _objc_retain
1000044a0:	mov	x21, x0
1000044a4:	str	x0, [sp, #0x28]
1000044a8:	add	x2, sp, #0x8
1000044ac:	mov	x0, x20
1000044b0:	bl	0x100005140
1000044b4:	ldr	x0, [sp, #0x28]
1000044b8:	bl	0x100004f40 ; symbol stub for: _objc_release
1000044bc:	mov	x0, x20
1000044c0:	bl	0x100004f40 ; symbol stub for: _objc_release
1000044c4:	mov	x0, x19
1000044c8:	bl	0x100004f40 ; symbol stub for: _objc_release
1000044cc:	mov	x0, x21
1000044d0:	ldp	x29, x30, [sp, #0x50]
1000044d4:	ldp	x20, x19, [sp, #0x40]
1000044d8:	ldp	x22, x21, [sp, #0x30]
1000044dc:	add	sp, sp, #0x60
1000044e0:	b	0x100004f10 ; symbol stub for: _objc_autoreleaseReturnValue

; ===== sub_1000044e4 =====
1000044e4:	sub	sp, sp, #0x150
1000044e8:	stp	x28, x27, [sp, #0xf0]
1000044ec:	stp	x26, x25, [sp, #0x100]
1000044f0:	stp	x24, x23, [sp, #0x110]
1000044f4:	stp	x22, x21, [sp, #0x120]
1000044f8:	stp	x20, x19, [sp, #0x130]
1000044fc:	stp	x29, x30, [sp, #0x140]
100004500:	add	x29, sp, #0x140
100004504:	adrp	x8, 4 ; 0x100008000
100004508:	ldr	x8, [x8, #0x388] ; literal pool symbol address: ___stack_chk_guard
10000450c:	ldr	x8, [x8]
100004510:	stur	x8, [x29, #-0x60]
100004514:	bl	0x100004f4c ; symbol stub for: _objc_retain
100004518:	mov	x19, x0
10000451c:	adrp	x2, 4 ; 0x100008000
100004520:	add	x2, x2, #0x128 ; "shell:"
100004524:	bl	0x1000051a0
100004528:	cbz	w0, 0x100004584
10000452c:	adrp	x8, 1 ; 0x100005000
100004530:	add	x8, x8, #0x422 ; literal pool for: "sh"
100004534:	adrp	x9, 1 ; 0x100005000
100004538:	add	x9, x9, #0x425 ; literal pool for: "-c"
10000453c:	stp	x8, x9, [sp, #0x60]
100004540:	adrp	x0, 4 ; 0x100008000
100004544:	add	x0, x0, #0x128 ; "shell:"
100004548:	bl	0x1000051c0
10000454c:	mov	x2, x0
100004550:	mov	x0, x19
100004554:	bl	0x100005340
100004558:	mov	x29, x29
10000455c:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004560:	mov	x20, x0
100004564:	bl	0x100004f58 ; symbol stub for: _objc_retainAutorelease
100004568:	bl	0x100004fc0
10000456c:	stp	x0, xzr, [sp, #0x70]
100004570:	mov	x0, x20
100004574:	bl	0x100004f40 ; symbol stub for: _objc_release
100004578:	add	x0, sp, #0x60
10000457c:	bl	0x100004cdc
100004580:	b	0x100004a84
100004584:	adrp	x2, 4 ; 0x100008000
100004588:	add	x2, x2, #0x148 ; "ext:"
10000458c:	mov	x0, x19
100004590:	bl	0x1000051a0
100004594:	cbz	w0, 0x100004a84
100004598:	mov	x0, x19
10000459c:	bl	0x100004f4c ; symbol stub for: _objc_retain
1000045a0:	mov	x21, x0
1000045a4:	adrp	x2, 4 ; 0x100008000
1000045a8:	add	x2, x2, #0x148 ; "ext:"
1000045ac:	bl	0x1000051a0
1000045b0:	adrp	x25, 8 ; 0x10000c000
1000045b4:	cbz	w0, 0x10000467c
1000045b8:	adrp	x0, 4 ; 0x100008000
1000045bc:	add	x0, x0, #0x148 ; "ext:"
1000045c0:	bl	0x1000051c0
1000045c4:	mov	x2, x0
1000045c8:	mov	x0, x21
1000045cc:	bl	0x100005340
1000045d0:	mov	x29, x29
1000045d4:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000045d8:	mov	x22, x0
1000045dc:	adrp	x2, 4 ; 0x100008000
1000045e0:	add	x2, x2, #0x208
1000045e4:	bl	0x100005240
1000045e8:	mov	x27, #0x0
1000045ec:	cbz	x0, 0x100004688
1000045f0:	mov	x23, x0
1000045f4:	mov	x8, #0x7fffffffffffffff
1000045f8:	cmp	x0, x8
1000045fc:	b.eq	0x100004688
100004600:	add	x20, x23, #0x1
100004604:	mov	x0, x22
100004608:	bl	0x1000051c0
10000460c:	cmp	x20, x0
100004610:	b.hs	0x100004684
100004614:	mov	x0, x22
100004618:	mov	x2, x23
10000461c:	bl	0x100005360
100004620:	mov	x29, x29
100004624:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004628:	mov	x23, x0
10000462c:	str	x0, [sp, #0x60]
100004630:	mov	x0, x22
100004634:	mov	x2, x20
100004638:	bl	0x100005340
10000463c:	mov	x29, x29
100004640:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004644:	mov	x24, x0
100004648:	str	x0, [sp, #0x68]
10000464c:	ldr	x0, [x25, #0x118]
100004650:	add	x2, sp, #0x60
100004654:	mov	w3, #0x2
100004658:	bl	0x100005000
10000465c:	mov	x29, x29
100004660:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004664:	mov	x27, x0
100004668:	mov	x0, x24
10000466c:	bl	0x100004f40 ; symbol stub for: _objc_release
100004670:	mov	x0, x23
100004674:	bl	0x100004f40 ; symbol stub for: _objc_release
100004678:	b	0x100004688
10000467c:	mov	x27, #0x0
100004680:	b	0x100004690
100004684:	mov	x27, #0x0

; ===== sub_100004688 =====
100004688:	mov	x0, x22
10000468c:	bl	0x100004f40 ; symbol stub for: _objc_release

; ===== sub_100004690 =====
100004690:	mov	x0, x21
100004694:	bl	0x100004f40 ; symbol stub for: _objc_release
100004698:	mov	x0, x27
10000469c:	mov	x2, #0x0
1000046a0:	bl	0x100005200
1000046a4:	mov	x29, x29
1000046a8:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000046ac:	bl	0x100004f4c ; symbol stub for: _objc_retain
1000046b0:	mov	x21, x0
1000046b4:	movi.16b	v0, #0x0
1000046b8:	stp	q0, q0, [sp, #0x10]
1000046bc:	stp	q0, q0, [sp, #0x30]
1000046c0:	adrp	x0, 4 ; 0x100008000
1000046c4:	add	x0, x0, #0x1e8 ; "/var/jb"
1000046c8:	adrp	x22, 4 ; 0x100008000
1000046cc:	add	x22, x22, #0x288 ; "/Library/Triggr/Extensions"
1000046d0:	mov	x2, x22
1000046d4:	bl	0x100005320
1000046d8:	mov	x29, x29
1000046dc:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000046e0:	mov	x24, x0
1000046e4:	stp	x0, x22, [sp, #0x50]
1000046e8:	ldr	x0, [x25, #0x118]
1000046ec:	add	x2, sp, #0x50
1000046f0:	mov	w3, #0x2
1000046f4:	bl	0x100005000
1000046f8:	mov	x29, x29
1000046fc:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004700:	mov	x23, x0
100004704:	mov	x0, x24
100004708:	bl	0x100004f40 ; symbol stub for: _objc_release
10000470c:	add	x2, sp, #0x10
100004710:	add	x3, sp, #0x60
100004714:	mov	x0, x23
100004718:	mov	w4, #0x10
10000471c:	bl	0x1000050a0
100004720:	mov	x22, x0
100004724:	cbz	x0, 0x1000047cc
100004728:	str	x21, [sp, #0x8]
10000472c:	mov	x21, x27
100004730:	ldr	x8, [sp, #0x20]
100004734:	ldr	x27, [x8]
100004738:	adrp	x28, 8 ; 0x10000c000
10000473c:	mov	x20, #0x0
100004740:	ldr	x8, [sp, #0x20]
100004744:	ldr	x8, [x8]
100004748:	cmp	x8, x27
10000474c:	b.eq	0x100004758
100004750:	mov	x0, x23
100004754:	bl	0x100004f1c ; symbol stub for: _objc_enumerationMutation
100004758:	ldr	x8, [sp, #0x18]
10000475c:	ldr	x24, [x8, x20, lsl #3]
100004760:	ldr	x0, [x28, #0xf8]
100004764:	bl	0x1000050e0
100004768:	mov	x29, x29
10000476c:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004770:	mov	x25, x0
100004774:	mov	x2, x24
100004778:	bl	0x100005160
10000477c:	mov	x26, x0
100004780:	mov	x0, x25
100004784:	bl	0x100004f40 ; symbol stub for: _objc_release
100004788:	tbnz	w26, #0x0, 0x1000047b8
10000478c:	add	x20, x20, #0x1
100004790:	cmp	x22, x20
100004794:	b.ne	0x100004740
100004798:	add	x2, sp, #0x10
10000479c:	add	x3, sp, #0x60
1000047a0:	mov	x0, x23
1000047a4:	mov	w4, #0x10
1000047a8:	bl	0x1000050a0
1000047ac:	mov	x22, x0
1000047b0:	cbnz	x0, 0x10000473c
1000047b4:	b	0x1000047c4
1000047b8:	mov	x0, x24
1000047bc:	bl	0x100004f4c ; symbol stub for: _objc_retain
1000047c0:	mov	x22, x0

; ===== sub_1000047c4 =====
1000047c4:	mov	x27, x21
1000047c8:	ldr	x21, [sp, #0x8]
1000047cc:	mov	x0, x23
1000047d0:	bl	0x100004f40 ; symbol stub for: _objc_release
1000047d4:	mov	x0, x21
1000047d8:	bl	0x1000051c0
1000047dc:	cbz	x0, 0x1000049e0
1000047e0:	adrp	x2, 4 ; 0x100008000
1000047e4:	add	x2, x2, #0x188
1000047e8:	mov	x0, x21
1000047ec:	bl	0x100005040
1000047f0:	tbnz	w0, #0x0, 0x1000049e0
1000047f4:	mov	x0, x22
1000047f8:	bl	0x1000051c0
1000047fc:	cbz	x0, 0x1000049e0
100004800:	adrp	x8, 8 ; 0x10000c000
100004804:	ldr	x23, [x8, #0x100] ; Objc class ref: bad class ref
100004808:	mov	x0, x22
10000480c:	mov	x2, x21
100004810:	bl	0x1000052e0
100004814:	mov	x29, x29
100004818:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
10000481c:	mov	x24, x0
100004820:	adrp	x2, 4 ; 0x100008000
100004824:	add	x2, x2, #0x228 ; "plist"
100004828:	bl	0x100005300
10000482c:	mov	x29, x29
100004830:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004834:	mov	x25, x0
100004838:	mov	x0, x23
10000483c:	mov	x2, x25
100004840:	bl	0x100005100
100004844:	mov	x29, x29
100004848:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
10000484c:	mov	x26, x0
100004850:	bl	0x1000051e0
100004854:	mov	x23, x0
100004858:	mov	x0, x26
10000485c:	bl	0x100004f40 ; symbol stub for: _objc_release
100004860:	mov	x0, x25
100004864:	bl	0x100004f40 ; symbol stub for: _objc_release
100004868:	mov	x0, x24
10000486c:	bl	0x100004f40 ; symbol stub for: _objc_release
100004870:	adrp	x2, 4 ; 0x100008000
100004874:	add	x2, x2, #0x248 ; "Title"
100004878:	mov	x0, x23
10000487c:	bl	0x100005220
100004880:	mov	x29, x29
100004884:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004888:	mov	x24, x0
10000488c:	adrp	x20, 8 ; 0x10000c000
100004890:	ldr	x0, [x20, #0x108] ; Objc class ref: bad class ref
100004894:	bl	0x100004f28 ; symbol stub for: _objc_opt_class
100004898:	mov	x1, x0
10000489c:	mov	x0, x24
1000048a0:	bl	0x100004f34 ; symbol stub for: _objc_opt_isKindOfClass
1000048a4:	tbz	w0, #0x0, 0x100004ac4
1000048a8:	adrp	x2, 4 ; 0x100008000
1000048ac:	add	x2, x2, #0x1a8 ; "Program"
1000048b0:	mov	x0, x23
1000048b4:	bl	0x100005220
1000048b8:	mov	x29, x29
1000048bc:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
1000048c0:	mov	x25, x0
1000048c4:	ldr	x0, [x20, #0x108]
1000048c8:	bl	0x100004f28 ; symbol stub for: _objc_opt_class
1000048cc:	mov	x1, x0
1000048d0:	mov	x0, x25
1000048d4:	bl	0x100004f34 ; symbol stub for: _objc_opt_isKindOfClass
1000048d8:	mov	x26, x0
1000048dc:	mov	x0, x25
1000048e0:	bl	0x100004f40 ; symbol stub for: _objc_release
1000048e4:	mov	x0, x24
1000048e8:	bl	0x100004f40 ; symbol stub for: _objc_release
1000048ec:	tbz	w26, #0x0, 0x100004acc
1000048f0:	str	x27, [sp, #0x8]
1000048f4:	movi.16b	v0, #0x0
1000048f8:	stp	q0, q0, [sp, #0x30]
1000048fc:	stp	q0, q0, [sp, #0x10]
100004900:	adrp	x0, 4 ; 0x100008000
100004904:	add	x0, x0, #0x2d8
100004908:	add	x2, sp, #0x10
10000490c:	add	x3, sp, #0x60
100004910:	mov	w4, #0x10
100004914:	bl	0x1000050a0
100004918:	cbz	x0, 0x1000049cc
10000491c:	mov	x25, x0
100004920:	ldr	x8, [sp, #0x20]
100004924:	ldr	x28, [x8]
100004928:	adrp	x24, 4 ; 0x100008000
10000492c:	add	x24, x24, #0x2d8
100004930:	mov	x20, #0x0
100004934:	ldr	x8, [sp, #0x20]
100004938:	ldr	x8, [x8]
10000493c:	cmp	x8, x28
100004940:	b.eq	0x10000494c
100004944:	mov	x0, x24
100004948:	bl	0x100004f1c ; symbol stub for: _objc_enumerationMutation
10000494c:	ldr	x8, [sp, #0x18]
100004950:	ldr	x26, [x8, x20, lsl #3]
100004954:	mov	x0, x23
100004958:	mov	x2, x26
10000495c:	bl	0x100005220
100004960:	mov	x29, x29
100004964:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004968:	mov	x27, x0
10000496c:	bl	0x100004f40 ; symbol stub for: _objc_release
100004970:	cbz	x27, 0x1000049a4
100004974:	mov	x0, x23
100004978:	mov	x2, x26
10000497c:	bl	0x100005220
100004980:	mov	x29, x29
100004984:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004988:	mov	x27, x0
10000498c:	mov	x0, x23
100004990:	mov	x2, x27
100004994:	mov	x3, x26
100004998:	bl	0x1000052a0
10000499c:	mov	x0, x27
1000049a0:	bl	0x100004f40 ; symbol stub for: _objc_release
1000049a4:	add	x20, x20, #0x1
1000049a8:	cmp	x25, x20
1000049ac:	b.ne	0x100004934
1000049b0:	add	x2, sp, #0x10
1000049b4:	add	x3, sp, #0x60
1000049b8:	mov	x0, x24
1000049bc:	mov	w4, #0x10
1000049c0:	bl	0x1000050a0
1000049c4:	mov	x25, x0
1000049c8:	cbnz	x0, 0x100004930
1000049cc:	mov	x0, x23
1000049d0:	bl	0x100004f4c ; symbol stub for: _objc_retain
1000049d4:	mov	x24, x0
1000049d8:	ldr	x27, [sp, #0x8]
1000049dc:	b	0x100004ad0
1000049e0:	mov	x24, #0x0

; ===== sub_1000049e4 =====
1000049e4:	mov	x0, x22
1000049e8:	bl	0x100004f40 ; symbol stub for: _objc_release
1000049ec:	mov	x0, x21
1000049f0:	bl	0x100004f40 ; symbol stub for: _objc_release
1000049f4:	adrp	x2, 4 ; 0x100008000
1000049f8:	add	x2, x2, #0x1a8 ; "Program"
1000049fc:	mov	x0, x24
100004a00:	bl	0x100005220
100004a04:	mov	x29, x29
100004a08:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004a0c:	mov	x22, x0
100004a10:	mov	x0, x24
100004a14:	bl	0x100004f40 ; symbol stub for: _objc_release
100004a18:	mov	x0, x21
100004a1c:	bl	0x100004f40 ; symbol stub for: _objc_release
100004a20:	cbz	x22, 0x100004a7c
100004a24:	adrp	x8, 1 ; 0x100005000
100004a28:	add	x8, x8, #0x422 ; literal pool for: "sh"
100004a2c:	str	x8, [sp, #0x60]
100004a30:	mov	x0, x22
100004a34:	bl	0x100004f58 ; symbol stub for: _objc_retainAutorelease
100004a38:	bl	0x100004fc0
100004a3c:	str	x0, [sp, #0x68]
100004a40:	mov	x0, x27
100004a44:	mov	w2, #0x1
100004a48:	bl	0x100005200
100004a4c:	mov	x29, x29
100004a50:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004a54:	mov	x21, x0
100004a58:	bl	0x100004f58 ; symbol stub for: _objc_retainAutorelease
100004a5c:	bl	0x100004fc0
100004a60:	stp	x0, xzr, [sp, #0x70]
100004a64:	mov	x0, x21
100004a68:	bl	0x100004f40 ; symbol stub for: _objc_release
100004a6c:	add	x0, sp, #0x60
100004a70:	bl	0x100004cdc
100004a74:	mov	x0, x22
100004a78:	bl	0x100004f40 ; symbol stub for: _objc_release
100004a7c:	mov	x0, x27
100004a80:	bl	0x100004f40 ; symbol stub for: _objc_release

; ===== sub_100004a84 =====
100004a84:	mov	x0, x19
100004a88:	bl	0x100004f40 ; symbol stub for: _objc_release
100004a8c:	ldur	x8, [x29, #-0x60]
100004a90:	adrp	x9, 4 ; 0x100008000
100004a94:	ldr	x9, [x9, #0x388] ; literal pool symbol address: ___stack_chk_guard
100004a98:	ldr	x9, [x9]
100004a9c:	cmp	x9, x8
100004aa0:	b.ne	0x100004adc
100004aa4:	ldp	x29, x30, [sp, #0x140]
100004aa8:	ldp	x20, x19, [sp, #0x130]
100004aac:	ldp	x22, x21, [sp, #0x120]
100004ab0:	ldp	x24, x23, [sp, #0x110]
100004ab4:	ldp	x26, x25, [sp, #0x100]
100004ab8:	ldp	x28, x27, [sp, #0xf0]
100004abc:	add	sp, sp, #0x150
100004ac0:	ret
100004ac4:	mov	x0, x24
100004ac8:	bl	0x100004f40 ; symbol stub for: _objc_release
100004acc:	mov	x24, #0x0

; ===== sub_100004ad0 =====
100004ad0:	mov	x0, x23
100004ad4:	bl	0x100004f40 ; symbol stub for: _objc_release
100004ad8:	b	0x1000049e4
100004adc:	bl	0x100004ea4 ; symbol stub for: ___stack_chk_fail
100004ae0:	stp	x22, x21, [sp, #-0x30]!
100004ae4:	stp	x20, x19, [sp, #0x10]
100004ae8:	stp	x29, x30, [sp, #0x20]
100004aec:	add	x29, sp, #0x20
100004af0:	mov	x19, x0
100004af4:	bl	0x1000043dc
100004af8:	mov	x29, x29
100004afc:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004b00:	mov	x20, x0
100004b04:	ldr	x2, [x19, #0x20]
100004b08:	bl	0x100005020
100004b0c:	mov	x21, x0
100004b10:	mov	x0, x20
100004b14:	bl	0x100004f40 ; symbol stub for: _objc_release
100004b18:	cbz	w21, 0x100004b30
100004b1c:	ldr	x0, [x19, #0x20]
100004b20:	ldp	x29, x30, [sp, #0x20]
100004b24:	ldp	x20, x19, [sp, #0x10]
100004b28:	ldp	x22, x21, [sp], #0x30
100004b2c:	b	0x1000044e4
100004b30:	ldp	x29, x30, [sp, #0x20]
100004b34:	ldp	x20, x19, [sp, #0x10]
100004b38:	ldp	x22, x21, [sp], #0x30
100004b3c:	ret
100004b40:	ldr	x0, [x1, #0x20]
100004b44:	b	0x100004f4c ; symbol stub for: _objc_retain
100004b48:	ldr	x0, [x0, #0x20]
100004b4c:	b	0x100004f40 ; symbol stub for: _objc_release
100004b50:	sub	sp, sp, #0x130
100004b54:	stp	x28, x27, [sp, #0xd0]
100004b58:	stp	x26, x25, [sp, #0xe0]
100004b5c:	stp	x24, x23, [sp, #0xf0]
100004b60:	stp	x22, x21, [sp, #0x100]
100004b64:	stp	x20, x19, [sp, #0x110]
100004b68:	stp	x29, x30, [sp, #0x120]
100004b6c:	add	x29, sp, #0x120
100004b70:	mov	x21, x1
100004b74:	mov	x20, x0
100004b78:	adrp	x8, 4 ; 0x100008000
100004b7c:	ldr	x8, [x8, #0x388] ; literal pool symbol address: ___stack_chk_guard
100004b80:	ldr	x8, [x8]
100004b84:	stur	x8, [x29, #-0x58]
100004b88:	mov	x0, x2
100004b8c:	bl	0x100004f4c ; symbol stub for: _objc_retain
100004b90:	mov	x19, x0
100004b94:	adrp	x2, 4 ; 0x100008000
100004b98:	add	x2, x2, #0x188
100004b9c:	mov	x0, x21
100004ba0:	bl	0x100005040
100004ba4:	cbz	w0, 0x100004c98
100004ba8:	movi.16b	v0, #0x0
100004bac:	stp	q0, q0, [sp, #0x20]
100004bb0:	stp	q0, q0, [sp]
100004bb4:	adrp	x21, 8 ; 0x10000c000
100004bb8:	ldr	x0, [x21, #0x118] ; Objc class ref: bad class ref
100004bbc:	bl	0x100004f28 ; symbol stub for: _objc_opt_class
100004bc0:	mov	x1, x0
100004bc4:	mov	x0, x19
100004bc8:	bl	0x100004f34 ; symbol stub for: _objc_opt_isKindOfClass
100004bcc:	tbz	w0, #0x0, 0x100004bdc
100004bd0:	mov	x0, x19
100004bd4:	bl	0x100004f4c ; symbol stub for: _objc_retain
100004bd8:	b	0x100004bf8
100004bdc:	str	x19, [sp, #0x40]
100004be0:	ldr	x0, [x21, #0x118]
100004be4:	add	x2, sp, #0x40
100004be8:	mov	w3, #0x1
100004bec:	bl	0x100005000
100004bf0:	mov	x29, x29
100004bf4:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue

; ===== sub_100004bf8 =====
100004bf8:	mov	x21, x0
100004bfc:	mov	x2, sp
100004c00:	add	x3, sp, #0x48
100004c04:	mov	w4, #0x10
100004c08:	bl	0x1000050a0
100004c0c:	cbz	x0, 0x100004c90
100004c10:	mov	x22, x0
100004c14:	ldr	x8, [sp, #0x10]
100004c18:	ldr	x24, [x8]
100004c1c:	adrp	x25, 8 ; 0x10000c000
100004c20:	mov	x26, #0x0
100004c24:	ldr	x8, [sp, #0x10]
100004c28:	ldr	x8, [x8]
100004c2c:	cmp	x8, x24
100004c30:	b.eq	0x100004c3c
100004c34:	mov	x0, x21
100004c38:	bl	0x100004f1c ; symbol stub for: _objc_enumerationMutation
100004c3c:	ldr	x8, [sp, #0x8]
100004c40:	ldr	x23, [x8, x26, lsl #3]
100004c44:	ldr	x0, [x25, #0x108]
100004c48:	bl	0x100004f28 ; symbol stub for: _objc_opt_class
100004c4c:	mov	x1, x0
100004c50:	mov	x0, x23
100004c54:	bl	0x100004f34 ; symbol stub for: _objc_opt_isKindOfClass
100004c58:	tbz	w0, #0x0, 0x100004c68
100004c5c:	ldr	x0, [x20, #0x20]
100004c60:	mov	x2, x23
100004c64:	bl	0x100004fe0
100004c68:	add	x26, x26, #0x1
100004c6c:	cmp	x22, x26
100004c70:	b.ne	0x100004c24
100004c74:	mov	x2, sp
100004c78:	add	x3, sp, #0x48
100004c7c:	mov	x0, x21
100004c80:	mov	w4, #0x10
100004c84:	bl	0x1000050a0
100004c88:	mov	x22, x0
100004c8c:	cbnz	x0, 0x100004c20
100004c90:	mov	x0, x21
100004c94:	bl	0x100004f40 ; symbol stub for: _objc_release
100004c98:	mov	x0, x19
100004c9c:	bl	0x100004f40 ; symbol stub for: _objc_release
100004ca0:	ldur	x8, [x29, #-0x58]
100004ca4:	adrp	x9, 4 ; 0x100008000
100004ca8:	ldr	x9, [x9, #0x388] ; literal pool symbol address: ___stack_chk_guard
100004cac:	ldr	x9, [x9]
100004cb0:	cmp	x9, x8
100004cb4:	b.ne	0x100004cd8
100004cb8:	ldp	x29, x30, [sp, #0x120]
100004cbc:	ldp	x20, x19, [sp, #0x110]
100004cc0:	ldp	x22, x21, [sp, #0x100]
100004cc4:	ldp	x24, x23, [sp, #0xf0]
100004cc8:	ldp	x26, x25, [sp, #0xe0]
100004ccc:	ldp	x28, x27, [sp, #0xd0]
100004cd0:	add	sp, sp, #0x130
100004cd4:	ret
100004cd8:	bl	0x100004ea4 ; symbol stub for: ___stack_chk_fail

; ===== sub_100004cdc =====
100004cdc:	sub	sp, sp, #0x80
100004ce0:	stp	x20, x19, [sp, #0x60]
100004ce4:	stp	x29, x30, [sp, #0x70]
100004ce8:	add	x29, sp, #0x70
100004cec:	mov	x19, x0
100004cf0:	adrp	x8, 4 ; 0x100008000
100004cf4:	ldr	x8, [x8, #0x388] ; literal pool symbol address: ___stack_chk_guard
100004cf8:	ldr	x8, [x8]
100004cfc:	stur	x8, [x29, #-0x18]
100004d00:	adrp	x8, 4 ; 0x100008000
100004d04:	add	x8, x8, #0xa0
100004d08:	ldp	q0, q1, [x8]
100004d0c:	stp	q0, q1, [sp, #0x30]
100004d10:	ldr	x8, [x8, #0x20]
100004d14:	str	x8, [sp, #0x50]
100004d18:	add	x0, sp, #0x28
100004d1c:	bl	0x100004f94 ; symbol stub for: _posix_spawn_file_actions_init
100004d20:	adrp	x20, 1 ; 0x100005000
100004d24:	add	x20, x20, #0x4d1 ; literal pool for: "/dev/null"
100004d28:	add	x0, sp, #0x28
100004d2c:	mov	w1, #0x0
100004d30:	mov	x2, x20
100004d34:	mov	w3, #0x0
100004d38:	mov	w4, #0x0
100004d3c:	bl	0x100004f7c ; symbol stub for: _posix_spawn_file_actions_addopen
100004d40:	add	x0, sp, #0x28
100004d44:	mov	w1, #0x1
100004d48:	mov	x2, x20
100004d4c:	mov	w3, #0x1
100004d50:	mov	w4, #0x0
100004d54:	bl	0x100004f7c ; symbol stub for: _posix_spawn_file_actions_addopen
100004d58:	add	x0, sp, #0x28
100004d5c:	mov	w1, #0x2
100004d60:	mov	x2, x20
100004d64:	mov	w3, #0x1
100004d68:	mov	w4, #0x0
100004d6c:	bl	0x100004f7c ; symbol stub for: _posix_spawn_file_actions_addopen
100004d70:	str	wzr, [sp, #0x24]
100004d74:	adrp	x0, 4 ; 0x100008000
100004d78:	add	x0, x0, #0x1e8 ; "/var/jb"
100004d7c:	adrp	x2, 4 ; 0x100008000
100004d80:	add	x2, x2, #0x1c8 ; "/bin/sh"
100004d84:	bl	0x100005320
100004d88:	mov	x29, x29
100004d8c:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004d90:	mov	x20, x0
100004d94:	bl	0x100004f58 ; symbol stub for: _objc_retainAutorelease
100004d98:	bl	0x100005180
100004d9c:	mov	x1, x0
100004da0:	add	x0, sp, #0x24
100004da4:	add	x2, sp, #0x28
100004da8:	add	x5, sp, #0x30
100004dac:	mov	x3, #0x0
100004db0:	mov	x4, x19
100004db4:	bl	0x100004f70 ; symbol stub for: _posix_spawn
100004db8:	mov	x19, x0
100004dbc:	mov	x0, x20
100004dc0:	bl	0x100004f40 ; symbol stub for: _objc_release
100004dc4:	cbnz	w19, 0x100004e24
100004dc8:	mov	w0, #0x11
100004dcc:	mov	x1, #0x0
100004dd0:	bl	0x100004ed4 ; symbol stub for: _dispatch_get_global_queue
100004dd4:	mov	x29, x29
100004dd8:	bl	0x100004f64 ; symbol stub for: _objc_retainAutoreleasedReturnValue
100004ddc:	mov	x19, x0
100004de0:	adrp	x8, 4 ; 0x100008000
100004de4:	ldr	x8, [x8, #0x378] ; literal pool symbol address: __NSConcreteStackBlock
100004de8:	str	x8, [sp]
100004dec:	adrp	x8, 1 ; 0x100005000
100004df0:	ldr	d0, [x8, #0x388]
100004df4:	str	d0, [sp, #0x8]
100004df8:	adrp	x8, 0 ; 0x100004000
100004dfc:	add	x8, x8, #0xe58
100004e00:	adrp	x9, 4 ; 0x100008000
100004e04:	add	x9, x9, #0xc8
100004e08:	stp	x8, x9, [sp, #0x10]
100004e0c:	ldr	w8, [sp, #0x24]
100004e10:	str	w8, [sp, #0x20]
100004e14:	mov	x1, sp
100004e18:	bl	0x100004ec8 ; symbol stub for: _dispatch_async
100004e1c:	mov	x0, x19
100004e20:	bl	0x100004f40 ; symbol stub for: _objc_release
100004e24:	add	x0, sp, #0x28
100004e28:	bl	0x100004f88 ; symbol stub for: _posix_spawn_file_actions_destroy
100004e2c:	ldur	x8, [x29, #-0x18]
100004e30:	adrp	x9, 4 ; 0x100008000
100004e34:	ldr	x9, [x9, #0x388] ; literal pool symbol address: ___stack_chk_guard
100004e38:	ldr	x9, [x9]
100004e3c:	cmp	x9, x8
100004e40:	b.ne	0x100004e54
100004e44:	ldp	x29, x30, [sp, #0x70]
100004e48:	ldp	x20, x19, [sp, #0x60]
100004e4c:	add	sp, sp, #0x80
100004e50:	ret
100004e54:	bl	0x100004ea4 ; symbol stub for: ___stack_chk_fail
100004e58:	sub	sp, sp, #0x20
100004e5c:	stp	x29, x30, [sp, #0x10]
100004e60:	add	x29, sp, #0x10
100004e64:	ldr	w0, [x0, #0x20]
100004e68:	sub	x1, x29, #0x4
100004e6c:	mov	w2, #0x0
100004e70:	bl	0x100004fa0 ; symbol stub for: _waitpid
100004e74:	ldp	x29, x30, [sp, #0x10]
100004e78:	add	sp, sp, #0x20
100004e7c:	ret
