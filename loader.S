.code16
.org 0x7c00

START:
	movb $0x00, %ah # setup serial port
	movb $0xF3, %al # 8/N/1
	movw $0x00, %dx
