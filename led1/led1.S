@GPj2_3
.global _start
_start:
	ldr r0, =0xe0200280
	ldr r1, [r0]
	bic r1, r1, #0xff
	orr r1, r1, #0x11
	bic r1, r1, #(0xff<<8)
	orr r1, r1, #(0x11<<8)
	str r1, [r0]
	
loop:
	ldr r0, =0xe0200284
	ldr r1, [r0]
	bic r1, r1, #0xf
	str r1, [r0]
	
	bl delay
	
	ldr r0, =0xe0200284
	ldr r1, [r0]
	orr r1, r1, #0xf
	str r1, [r0]
	
	bl delay
	b loop
delay:
	ldr r0, =0x4000000
temp:
	sub r0, r0, #1
	cmp r0, #0
	bne temp
	mov pc, lr
	
.end
	
	
	
