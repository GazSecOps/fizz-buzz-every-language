.PHONY: all

NUMBERS = $(shell seq 1 100)

all: $(NUMBERS)

1:
	@echo 1

2:
	@echo 2

define fizzbuzz_rule
$1:
	@echo $$(shell python3 -c "print('FizzBuzz' if $1%%15==0 else 'Fizz' if $1%%3==0 else 'Buzz' if $1%%5==0 else $1)")
endef

$(foreach i,$(filter-out 1 2,$(NUMBERS)),$(eval $(call fizzbuzz_rule,$i)))
