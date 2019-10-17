all: $(BIN)/$(PDF)

$(BIN)/:
	mkdir $(BIN)

$(BIN)/$(PDF): $(SOURCES) $(BIN)/
	pdflatex -output-directory=$(BIN) $<

.PHONY: open
open:
	open $(BIN)/$(PDF)

.clean: clean
clean:
	rm -rf $(BIN)/