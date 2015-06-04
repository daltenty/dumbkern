.code16
.text
	.globl _start;
_start:	
_video: movb $0x00, %ah # set video mode
	movb $0x03, %al # 80x25, 16 text mode
	int $0x10
	movb $0x05, %ah
	movb $0x00, %al
	int $0x10
	movb $0x02, %ah
	movb $0x00, %bh
	movb $0x00, %dh
	movb $0x00, %dl
	int $0x10
	movb $0x0E, %ah
	movb $0x4B, %al
	int $0x10
	jmp _spin		
_serial:
	movb $0x00, %ah # setup serial port
	movb $0xF3, %al # 8/N/1
	movw $0x00, %dx
	int $0x14
	movb $0x01, %ah
	movb $0x4B, %al
	movw $0x00, %dx
	int $0x14
	hlt
_spin:  jmp _spin

_bootlabel:
	. = _start + 510
	.byte 0x55
	.byte 0xaa


