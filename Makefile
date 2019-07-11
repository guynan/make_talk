
CC = 			pdflatex
SRC = 			test.tex
#SRC = 			talk.tex
OUT_DIR =		tmp
CFLAGS = 		-output-directory $(OUT_DIR)
FILE_REDIR = 	/dev/null
FNAME = 		out.pdf


all: $(OUT_DIR)
	@ $(CC) $(CFLAGS) $(SRC) > $(FILE_REDIR)
	@ mv $(OUT_DIR)/*.pdf ./$(FNAME)

clean:
	@ $(RM) -r $(OUT_DIR)/

$(OUT_DIR): 
	@ mkdir -p $(OUT_DIR)/

