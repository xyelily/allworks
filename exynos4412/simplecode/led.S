.text				//表示代码段
.global_start			//定义一个全局变量_start
_start:				//标号

	ldr r0,=0x110002E0	//把GPM4COM地址赋值给r0
	ldr r1,=0x1111		//高置GPM4_(0~3)为输出模式
	str r1,[r0]		//写入r0里面，也就是写到GPM4COM地址
	
	ldr r0,=0x110002E4	//GMP4DAT的地址是0x110002E4
	mov r1,#0xa		//设置数据寄存器低4位为低电平
	str r1,[r0]		//写入GPM4DAT地址，点亮所有LED
loop:
	b loop
