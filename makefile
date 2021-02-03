
ASM = rma
AFLAGS =
LINK = rlink
LFLAGS =

ALIB = -l=/dd/lib/alib.l
NLIB = -l=/dd/lib/nlib.l

SLIB = -l=/dd/lib/sys.l
RDIR = rels

OBJS = $(RDIR)/sysgo.r $(RDIR)/data.r $(RDIR)/text.r $(RDIR)/command.r \
       $(RDIR)/screen.r $(RDIR)/util.r \
       $(RDIR)/regdump.r
 
sysgo: $(OBJS)
     $(LINK) $(OBJS) $(LFLAGS) $(ALIB) $(SLIB) -o=/dd/sysgo

$(RDIR)/sysgo.r: sysgo.a
     $(ASM) sysgo.a $(AFLAGS) -o=$(RDIR)/sysgo.r

$(RDIR)/data.r: data.a
     $(ASM) data.a $(AFLAGS) -o=$(RDIR)/data.r

$(RDIR)/text.r: text.a
     $(ASM) text.a $(AFLAGS) -o=$(RDIR)/text.r

$(RDIR)/command.r: command.a
     $(ASM) command.a $(AFLAGS) -o=$(RDIR)/command.r

$(RDIR)/screen.r: screen.a
     $(ASM) screen.a $(AFLAGS) -o=$(RDIR)/screen.r

$(RDIR)/util.r: util.a
     $(ASM) util.a $(AFLAGS) -o=$(RDIR)/util.r

$(RDIR)/regdump.r: regdump.a
     $(ASM) regdump.a $(AFLAGS) -o=$(RDIR)/regdump.r


