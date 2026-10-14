# Incremental Beamer PDF renders, run here or use make -C Lectures.
# Examples:
#   make                     # PDF only
#   make all                 # same as make
#   make pdf                 # same as make
#   make -n                  # preview commands without rendering
#   make -B                  # force renders (e.g. after changing images)
#   make SOURCES=02_SignalsAndSystems.qmd
# Override QUARTO for a particular environment, e.g. QUARTO=/path/to/quarto.
# Missing outputs are rebuilt automatically; asset changes require make -B.

.DEFAULT_GOAL := all

QUARTO ?= quarto
SOURCES ?= $(wildcard *.qmd)
CONFIG := $(wildcard _quarto.yml _quarto.yaml ../_quarto.yml ../_quarto.yaml)
OUTPUTS := $(SOURCES:.qmd=.pdf)

# To add HTML or notebooks:
# 1. Enable html: default and/or ipynb: default under format: in _quarto.yml.
# 2. Append $(SOURCES:.qmd=.html) and/or $(SOURCES:.qmd=.ipynb) to OUTPUTS.
# 3. Add the corresponding rules (recipe lines must start with a TAB):
# %.html: %.qmd Makefile $(CONFIG)
#	$(QUARTO) render "$<" --to html --output "$(@F)"
# %.ipynb: %.qmd Makefile $(CONFIG)
#	$(QUARTO) render "$<" --to ipynb --output "$(@F)"
# Only list outputs that Quarto actually creates, or Make will rebuild forever.

.DELETE_ON_ERROR:

%.pdf: %.qmd Makefile $(CONFIG)
	$(QUARTO) render "$<" --to beamer --output "$(@F)"

.PHONY: all pdf
all: $(OUTPUTS)
pdf: $(SOURCES:.qmd=.pdf)
