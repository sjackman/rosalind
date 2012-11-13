all: dna.out rna.out revc.out prot.out prtm.out mrna.out hamm.out subs.out

.PHONY: all

.DELETE_ON_ERROR:
.SECONDARY:

%: %.hs
	ghc $<

%.out: %.in %
	./$* <$< >$@
