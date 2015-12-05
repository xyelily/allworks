SECTIONS{
	.=0x02023400;                  //程序应该放的位置：BL2位置
	.text		:{*(.text)}    //代码段
	.rodata ALIGN(4):{*(.rodata*)} //只读数据段
	.data ALIGN（4）：{*(.data*)}  //数据段
	.bss ALIGN(4) :{*(.bss) *(COMMON)}  //bss段
}
