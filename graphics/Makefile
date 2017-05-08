.SECONDARY:

INDENT ?= 0

.log/+/%:
	@printf "%$(INDENT)s";echo "\033[34m\033[1m[+] $(subst .log/+/,,$@)";
	@$(eval INDENT=$(shell echo $(INDENT)+3 | bc))

.log/-/%:
	@$(eval INDENT=$(shell echo $(INDENT)-3 | bc))
	@printf "%$(INDENT)s";echo " \033[32m\033[1m\\ $(subst .log/-/,,$@)"

.log/%:
	@printf "%$(INDENT)s";echo ">> $(subst .log/,,$@)"

.log/fileerr/%:
	@printf "%$(INDENT)s";echo "\033[31m\033[1m>> MISSING : $(subst .log/fileerr/,,$@)\033[0m"

.source/%.png:\
		.log/fileerr/.source/%.png
	@exit 1

.make/%:
	@INDENT=$(INDENT) make -s $(subst .make/,,$@)

all:\
		.log/+/all\
		concrete\
		.log/-/all
	@true

clean:\
		.log/+/clean\
		.log/-/clean
	@rm -Rf .tmp
	@rm -Rf concrete

concrete:\
		.log/+/concrete\
		concrete/red\
		concrete/orange\
		concrete/yellow\
		concrete/green\
		concrete/cyan\
		concrete/blue\
		concrete/purple\
		concrete/magenta\
		concrete/white\
		concrete/black\
		concrete/fire-left\
		concrete/fire-right\
		concrete/storage-left\
		concrete/storage-right\
		concrete/radiation-left\
		concrete/radiation-right\
		concrete/safety-left\
		concrete/safety-right\
		concrete/defective-left\
		concrete/defective-right\
		concrete/traffic-left\
		concrete/traffic-right\
		concrete/hazard-left\
		concrete/hazard-right\
		.log/-/concrete

concrete/%:\
		.log/+/concrete/<<%>>\
		concrete/%/icon.png\
		concrete/%/concrete1.png\
		concrete/%/concrete2.png\
		concrete/%/concrete4.png\
		concrete/%/concrete-o.png\
		concrete/%/concrete-u.png\
		concrete/%/concrete-side.png\
		concrete/%/concrete-inner-corner.png\
		concrete/%/concrete-outer-corner.png\
		.log/-/concrete/<<%>>
	@true

concrete/%.png:\
		.log/+/concrete/<<%>>.png\
		.tmp/concrete/%.png\
		.repl/%.png\
		.log/-/concrete/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert .source/concrete/model/$(notdir $(word 2,$^)) $(word 2,$^) .source/concrete/mask-global/$(notdir $(word 2,$^)) -composite $@

.repl/red/%.png:\
		.log/+/.repl/red/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/red/<<%>>.png
	@true

.tmp/concrete/red/%.png:\
		.log/+/.tmp/concrete/red/<<%>>.png\
		.source/concrete/model/%.png\
		.log/-/.tmp/concrete/red/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) -fill "rgb(255,0,0)" -colorize 15,15,15,0 -level "0%,100%,0.8" $@

.repl/orange/%.png:\
		.log/+/.repl/orange/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/orange/<<%>>.png
	@true

.tmp/concrete/orange/%.png:\
		.log/+/.tmp/concrete/orange/<<%>>.png\
		.source/concrete/model/%.png\
		.log/-/.tmp/concrete/orange/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) -fill "rgb(255,127,0)" -colorize 15,15,15,0 -level "0%,100%,0.8" $@

.repl/yellow/%.png:\
		.log/+/.repl/yellow/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/yellow/<<%>>.png
	@true

.tmp/concrete/yellow/%.png:\
		.log/+/.tmp/concrete/yellow/<<%>>.png\
		.source/concrete/model/%.png\
		.log/-/.tmp/concrete/yellow/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) -fill "rgb(255,255,0)" -colorize 15,15,15,0 -level "0%,100%,0.8" $@

.repl/green/%.png:\
		.log/+/.repl/green/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/green/<<%>>.png
	@true

.tmp/concrete/green/%.png:\
		.log/+/.tmp/concrete/green/<<%>>.png\
		.source/concrete/model/%.png\
		.log/-/.tmp/concrete/green/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) -fill "rgb(0,255,0)" -colorize 15,15,15,0 -level "0%,100%,0.8" $@ 

.repl/cyan/%.png:\
		.log/+/.repl/cyan/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/cyan/<<%>>.png
	@true

.tmp/concrete/cyan/%.png:\
		.log/+/.tmp/concrete/cyan/<<%>>.png\
		.source/concrete/model/%.png\
		.log/-/.tmp/concrete/cyan/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) -fill "rgb(0,255,255)" -colorize 15,15,15,0 -level "0%,100%,0.8" $@

.repl/blue/%.png:\
		.log/+/.repl/blue/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/blue/<<%>>.png
	@true

.tmp/concrete/blue/%.png:\
		.log/+/.tmp/concrete/blue/<<%>>.png\
		.source/concrete/model/%.png\
		.log/-/.tmp/concrete/blue/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) -fill "rgb(0,0,255)" -colorize 15,15,15,0 -level "0%,100%,0.8" $@

.repl/purple/%.png:\
		.log/+/.repl/purple/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/purple/<<%>>.png
	@true

.tmp/concrete/purple/%.png:\
		.log/+/.tmp/concrete/purple/<<%>>.png\
		.source/concrete/model/%.png\
		.log/-/.tmp/concrete/purple/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) -fill "rgb(127,0,255)" -colorize 15,15,15,0 -level "0%,100%,0.8" $@

.repl/magenta/%.png:\
		.log/+/.repl/magenta/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/magenta/<<%>>.png
	@true

.tmp/concrete/magenta/%.png:\
		.log/+/.tmp/concrete/magenta/<<%>>.png\
		.source/concrete/model/%.png\
		.log/-/.tmp/concrete/magenta/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) -fill "rgb(255,0,255)" -colorize 15,15,15,0 -level "0%,100%,0.8" $@

.repl/white/%.png:\
		.log/+/.repl/white/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/white/<<%>>.png
	@true

.tmp/concrete/white/%.png:\
		.log/+/.tmp/concrete/white/<<%>>.png\
		.source/concrete/model/%.png\
		.log/-/.tmp/concrete/white/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) -fill "rgb(255,127,0)" -level "0%,70%,1.2" $@

.repl/black/%.png:\
		.log/+/.repl/black/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/black/<<%>>.png
	@true

.tmp/concrete/black/%.png:\
		.log/+/.tmp/concrete/black/<<%>>.png\
		.source/concrete/model/%.png\
		.log/-/.tmp/concrete/black/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) -fill "rgb(0,0,0)" -level "0%,100%,0.4" $@

.repl/green-marking/%.png:\
		.log/+/.repl/green-marking/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/green-marking/<<%>>.png
	@true

.tmp/concrete/green-marking/%.png:\
		.log/+/.tmp/concrete/green-marking/<<%>>.png\
		.source/concrete/model/%.png\
		.log/-/.tmp/concrete/green-marking/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) -fill "rgb(0,255,0)" -colorize 15,15,15,0 -level "0%,100%,0.8" $@

.repl/blue-marking/%.png:\
		.log/+/.repl/blue-marking/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/blue-marking/<<%>>.png
	@true

.tmp/concrete/blue-marking/%.png:\
		.log/+/.tmp/concrete/blue-marking/<<%>>.png\
		.source/concrete/model/%.png\
		.log/-/.tmp/concrete/blue-marking/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) -fill "rgb(0,0,255)" -colorize 15,15,15,0 -level "0%,100%,0.8" $@

.repl/orange-marking/%.png:\
		.log/+/.repl/orange-marking/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/orange-marking/<<%>>.png
	@true

.tmp/concrete/orange-marking/%.png:\
		.log/+/.tmp/concrete/orange-marking/<<%>>.png\
		.source/concrete/model/%.png\
		.log/-/.tmp/concrete/orange-marking/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) -fill "rgb(255,127,0)" -colorize 32,32,32,0 -level "0%,100%,0.8" $@

.repl/red-marking/%.png:\
		.log/+/.repl/red-marking/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/red-marking/<<%>>.png
	@true

.tmp/concrete/red-marking/%.png:\
		.log/+/.tmp/concrete/red-marking/<<%>>.png\
		.source/concrete/model/%.png\
		.log/-/.tmp/concrete/red-marking/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) -fill "rgb(255,0,0)" -colorize 32,32,32,0 -level "0%,100%,0.75" $@

.repl/magenta-marking/%.png:\
		.log/+/.repl/magenta-marking/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/magenta-marking/<<%>>.png
	@true

.tmp/concrete/magenta-marking/%.png:\
		.log/+/.tmp/concrete/magenta-marking/<<%>>.png\
		.source/concrete/model/%.png\
		.log/-/.tmp/concrete/magenta-marking/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) -fill "rgb(255,0,255)" -colorize 24,24,24,0 -level "0%,100%,0.8" $@

.repl/yellow-marking/%.png:\
		.log/+/.repl/yellow-marking/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/yellow-marking/<<%>>.png
	@true

.tmp/concrete/yellow-marking/%.png:\
		.log/+/.tmp/concrete/yellow-marking/<<%>>.png\
		.source/concrete/model/%.png\
		.log/-/.tmp/concrete/yellow-marking/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) -fill "rgb(255,220,0)" -colorize 24,24,24,0 -level "30%,100%,1.6" $@

.repl/white-marking/%.png:\
		.log/+/.repl/white-marking/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/white-marking/<<%>>.png
	@true

.tmp/concrete/white-marking/%.png:\
		.log/+/.tmp/concrete/white-marking/<<%>>.png\
		.source/concrete/model/%.png\
		.log/-/.tmp/concrete/white-marking/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) -fill "rgb(255,127,0)" -level "0%,70%,0.9" $@

.repl/black-marking/%.png:\
		.log/+/.repl/black-marking/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/black-marking/<<%>>.png
	@true

.tmp/concrete/black-marking/%.png:\
		.log/+/.tmp/concrete/black-marking/<<%>>.png\
		.source/concrete/model/%.png\
		.log/-/.tmp/concrete/black-marking/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) -fill "rgb(0,0,0)" -level "0%,100%,0.55" $@

.repl/fire-left/%.png:\
		.log/+/.repl/fire-left/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/fire-left/<<%>>.png
	@true

.tmp/concrete/fire-left/%.png:\
		.log/+/.tmp/concrete/fire-left/<<%>>.png\
		.tmp/concrete/red-marking/%.png\
		.tmp/concrete/white-marking/%.png\
		.source/concrete/mask-left/%.png\
		.log/-/.tmp/concrete/fire-left/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) $(word 3,$^) $(word 4,$^) -composite $@

.repl/fire-right/%.png:\
		.log/+/.repl/fire-right/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/fire-right/<<%>>.png
	@true

.tmp/concrete/fire-right/%.png:\
		.log/+/.tmp/concrete/fire-right/<<%>>.png\
		.tmp/concrete/red-marking/%.png\
		.tmp/concrete/white-marking/%.png\
		.source/concrete/mask-right/%.png\
		.log/-/.tmp/concrete/fire-right/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) $(word 3,$^) $(word 4,$^) -composite $@

.repl/storage-left/%.png:\
		.log/+/.repl/storage-left/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/storage-left/<<%>>.png
	@true

.tmp/concrete/storage-left/%.png:\
		.log/+/.tmp/concrete/storage-left/<<%>>.png\
		.tmp/concrete/black-marking/%.png\
		.tmp/concrete/white-marking/%.png\
		.source/concrete/mask-left/%.png\
		.log/-/.tmp/concrete/storage-left/<<%>>.png 
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) $(word 3,$^) $(word 4,$^) -composite $@

.repl/storage-right/%.png:\
		.log/+/.repl/storage-right/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/storage-right/<<%>>.png
	@true

.tmp/concrete/storage-right/%.png:\
		.log/+/.tmp/concrete/storage-right/<<%>>.png\
		.tmp/concrete/black-marking/%.png\
		.tmp/concrete/white-marking/%.png\
		.source/concrete/mask-right/%.png\
		.log/-/.tmp/concrete/storage-right/<<%>>.png 
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) $(word 3,$^) $(word 4,$^) -composite $@

.repl/radiation-left/%.png:\
		.log/+/.repl/radiation-left/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/radiation-left/<<%>>.png
	@true

.tmp/concrete/radiation-left/%.png:\
		.log/+/.tmp/concrete/radiation-left/<<%>>.png\
		.tmp/concrete/magenta-marking/%.png\
		.tmp/concrete/yellow-marking/%.png\
		.source/concrete/mask-left/%.png\
		.log/-/.tmp/concrete/radiation-left/<<%>>.png 
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) $(word 3,$^) $(word 4,$^) -composite $@

.repl/radiation-right/%.png:\
		.log/+/.repl/radiation-right/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/radiation-right/<<%>>.png
	@true

.tmp/concrete/radiation-right/%.png:\
		.log/+/.tmp/concrete/radiation-right/<<%>>.png\
		.tmp/concrete/magenta-marking/%.png\
		.tmp/concrete/yellow-marking/%.png\
		.source/concrete/mask-right/%.png\
		.log/-/.tmp/concrete/radiation-right/<<%>>.png 
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) $(word 3,$^) $(word 4,$^) -composite $@

.repl/safety-left/%.png:\
		.log/+/.repl/safety-left/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/safety-left/<<%>>.png
	@true

.tmp/concrete/safety-left/%.png:\
		.log/+/.tmp/concrete/safety-left/<<%>>.png\
		.tmp/concrete/green-marking/%.png\
		.tmp/concrete/white-marking/%.png\
		.source/concrete/mask-left/%.png\
		.log/-/.tmp/concrete/safety-left/<<%>>.png 
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) $(word 3,$^) $(word 4,$^) -composite $@

.repl/safety-right/%.png:\
		.log/+/.repl/safety-right/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/safety-right/<<%>>.png
	@true

.tmp/concrete/safety-right/%.png:\
		.log/+/.tmp/concrete/safety-right/<<%>>.png\
		.tmp/concrete/green-marking/%.png\
		.tmp/concrete/white-marking/%.png\
		.source/concrete/mask-right/%.png\
		.log/-/.tmp/concrete/safety-right/<<%>>.png 
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) $(word 3,$^) $(word 4,$^) -composite $@

.repl/defective-left/%.png:\
		.log/+/.repl/defective-left/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/defective-left/<<%>>.png
	@true

.tmp/concrete/defective-left/%.png:\
		.log/+/.tmp/concrete/defective-left/<<%>>.png\
		.tmp/concrete/blue-marking/%.png\
		.tmp/concrete/white-marking/%.png\
		.source/concrete/mask-left/%.png\
		.log/-/.tmp/concrete/defective-left/<<%>>.png 
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) $(word 3,$^) $(word 4,$^) -composite $@

.repl/defective-right/%.png:\
		.log/+/.repl/defective-right/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/defective-right/<<%>>.png
	@true

.tmp/concrete/defective-right/%.png:\
		.log/+/.tmp/concrete/defective-right/<<%>>.png\
		.tmp/concrete/blue-marking/%.png\
		.tmp/concrete/white-marking/%.png\
		.source/concrete/mask-right/%.png\
		.log/-/.tmp/concrete/defective-right/<<%>>.png 
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) $(word 3,$^) $(word 4,$^) -composite $@

.repl/traffic-left/%.png:\
		.log/+/.repl/traffic-left/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/traffic-left/<<%>>.png
	@true

.tmp/concrete/traffic-left/%.png:\
		.log/+/.tmp/concrete/traffic-left/<<%>>.png\
		.tmp/concrete/orange-marking/%.png\
		.tmp/concrete/white-marking/%.png\
		.source/concrete/mask-left/%.png\
		.log/-/.tmp/concrete/traffic-left/<<%>>.png 
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) $(word 3,$^) $(word 4,$^) -composite $@

.repl/traffic-right/%.png:\
		.log/+/.repl/traffic-right/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/traffic-right/<<%>>.png
	@true

.tmp/concrete/traffic-right/%.png:\
		.log/+/.tmp/concrete/traffic-right/<<%>>.png\
		.tmp/concrete/orange-marking/%.png\
		.tmp/concrete/white-marking/%.png\
		.source/concrete/mask-right/%.png\
		.log/-/.tmp/concrete/traffic-right/<<%>>.png 
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) $(word 3,$^) $(word 4,$^) -composite $@

.repl/hazard-left/%.png:\
		.log/+/.repl/hazard-left/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/hazard-left/<<%>>.png
	@true

.tmp/concrete/hazard-left/%.png:\
		.log/+/.tmp/concrete/hazard-left/<<%>>.png\
		.tmp/concrete/yellow-marking/%.png\
		.tmp/concrete/black-marking/%.png\
		.source/concrete/mask-left/%.png\
		.log/-/.tmp/concrete/hazard-left/<<%>>.png 
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) $(word 3,$^) $(word 4,$^) -composite $@

.repl/hazard-right/%.png:\
		.log/+/.repl/hazard-right/<<%>>.png\
		.source/concrete/model/%.png\
		.source/concrete/mask-global/%.png\
		.log/-/.repl/hazard-right/<<%>>.png
	@true

.tmp/concrete/hazard-right/%.png:\
		.log/+/.tmp/concrete/hazard-right/<<%>>.png\
		.tmp/concrete/yellow-marking/%.png\
		.tmp/concrete/black-marking/%.png\
		.source/concrete/mask-right/%.png\
		.log/-/.tmp/concrete/hazard-right/<<%>>.png 
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) $(word 3,$^) $(word 4,$^) -composite $@
