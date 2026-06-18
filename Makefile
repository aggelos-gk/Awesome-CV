.PHONY: examples clean

CC = lualatex
EXAMPLES_DIR = examples
CV_DIR = examples/cv
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

examples: coverletter.pdf cv.pdf

cv.pdf: $(EXAMPLES_DIR)/cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

coverletter.pdf: $(EXAMPLES_DIR)/coverletter.tex
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

clean:
	rm -rf $(EXAMPLES_DIR)/*.pdf
	rm -rf $(EXAMPLES_DIR)/*.aux $(EXAMPLES_DIR)/*.log $(EXAMPLES_DIR)/*.out
	rm -rf $(EXAMPLES_DIR)/*.toc $(EXAMPLES_DIR)/*.lof $(EXAMPLES_DIR)/*.lot
	rm -rf $(EXAMPLES_DIR)/*.fls $(EXAMPLES_DIR)/*.dvi $(EXAMPLES_DIR)/*.fdb_latexmk
	rm -rf $(EXAMPLES_DIR)/*.synctex.gz
