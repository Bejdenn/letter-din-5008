TEXMFHOME := $(shell kpsewhich -var-value TEXMFHOME)
INSTALL_DIR = $(TEXMFHOME)/tex/latex/letter-din-5008

.PHONY: install
install: letter-din-5008.sty
	@if [ ! -d "$(INSTALL_DIR)" ]; then \
		echo "Creating directory $(INSTALL_DIR)"; \
		mkdir -p $(INSTALL_DIR); \
	fi
	@if ! cmp -s letter-din-5008.sty $(INSTALL_DIR)/letter-din-5008.sty; then \
		echo "Installing letter-din-5008.sty to $(INSTALL_DIR)"; \
		cp letter-din-5008.sty $(INSTALL_DIR)/letter-din-5008.sty; \
	else \
		echo "letter-din-5008.sty is already up to date in $(INSTALL_DIR)"; \
	fi

