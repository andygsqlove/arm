	
andy.bin: led1.o
	arm-linux-ld -Ttext 0x40000000 -o led.elf $^
	arm-linux-objcopy -O binary led.elf andy.bin
	arm-linux-objdump -D led.elf > led.dis
	
%.o : %.c
	arm-linux-gcc -o $@ $< -c -nostdlib
%.o : %.S
	arm-linux-gcc -o $@ $< -c -nostdlib
	
clean:
	rm *.o *.celf *.bin *.dis -f
