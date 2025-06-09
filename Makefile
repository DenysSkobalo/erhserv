ERLC = erlc
SRC  = $(wildcard *.erl)

all: run

run: compile
	@erl -noshell -s main start

compile: clean
	@$(ERLC) $(SRC)

clean:
	@rm -f *.beam
