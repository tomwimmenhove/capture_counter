#!/bin/bash

cat << _EOF_
#ifndef CDCE925_REGS_H
#define CDCE925_REGS_H

/* Generated by makecdce925_regs_h.sh */

static const uint8_t cdce925_regs[] = {
_EOF_
	
sed -e "s/^Byte//g;s/
	REG=`echo $A |  awk '{ print $1 }'`
	BITS=`echo $A |  awk '{ print $3 }'`
	DEC="$((2#$BITS))"
	HEX=`printf '0x%02x\n' $DEC`

	echo -ne "$HEX, "
done)


cat << _EOF_
};
#endif /* CDCE925_REGS_H */
_EOF_
