// this is generated by C++
	mov	x2, 0 // i=0
	mov	x0, 0
	.p2align 3,,7
	//for (int i = 0; i < n; i++)
	// sum += a[i];
.L3:
	// x4 = a
	ldr	x3, [x4, x2, lsl 3] // x3 = read(x4 + x2*8)
	add	x2, x2, 1 	//i++
	add	x0, x0, x3 // sum = sum + a[i]
	cmp	w1, w2     // while w2 < w1
	bhi	.L3
	ret


	// assume x4 points to start of array, w1 = length
	
1:

	ldr	x3, [x4], #8 // x3 = read(x4) and increment
	add	x0, x0, x3 // sum = sum + a[i]
	subs	w1, w1, #1 // count down and compare against 0
	bgt	1b
