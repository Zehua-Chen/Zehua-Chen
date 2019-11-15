all: $(BIN)/$(PDF)

$(BIN)/:
	mkdir $(BIN)

$(BIN)/$(PDF): $(SRCS) $(BIN)/
	$(LATEX) -output-directory=$(BIN) $<

.PHONY: open
open:
	open $(BIN)/$(PDF)

.clean: clean
clean:
	rm -rf $(BIN)/