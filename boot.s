.global _start

.equ SRAM_BASE,  0x20000000
.equ SRAM_END,   0x20005000
.equ RCC_BASE,   0x40021000
.equ GPIOA_BASE, 0x40010800

.equ RCC_CTLR,      0x00
.equ RCC_APB2PCENR, 0x18

.equ GPIO_CFGLR, 0x00
.equ GPIO_CFGHR, 0x04
.equ GPIO_OUTDR, 0x0C

_start:
	j reset

reset:
	la sp, (SRAM_END - 4)

loop:
	jal loop
