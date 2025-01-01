program_counter: program_counter.v test_program_counter.v
	iverilog -t vvp test_program_counter.v

.PHONY: clean
clean:
	rm a.out
