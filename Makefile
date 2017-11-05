####################################################
# Students' Makefile for the CS:APP Architecture Lab
####################################################

# Default team name and version number
TEAM = bovik
VERSION = 1

# Where are the different parts of the lab should be copied to when they
# are handed in.
HANDINDIR-PARTA = ../handin
HANDINDIR-PARTB = ../handin
HANDINDIR-PARTC = ../handin

sim:
	(cd sim; make)

# Use this rule to hand in Part A ("make handin-parta")
handin-parta:
	cp sim/misc/sub.ys $(HANDINDIR-PARTA)/$(TEAM)-$(VERSION)-sub.ys
	cp sim/misc/rxor.ys $(HANDINDIR-PARTA)/$(TEAM)-$(VERSION)-rxor.ys
	cp sim/misc/scopy.ys $(HANDINDIR-PARTA)/$(TEAM)-$(VERSION)-scopy.ys

# Use this rule to handin Part B ("make handin-partb")
handin-partb:
	cp sim/seq/seq-full.hcl $(HANDINDIR-PARTB)/$(TEAM)-$(VERSION)-seq-full.hcl

# Use this rule to handin Part C ("make handin-partc")
handin-partc:
	cp sim/pipe/ncopy.ys $(HANDINDIR-PARTC)/$(TEAM)-$(VERSION)-ncopy.ys
	cp sim/pipe/pipe-full.hcl $(HANDINDIR-PARTC)/$(TEAM)-$(VERSION)-pipe-full.hcl

clean:
	rm -f *~ *.o



