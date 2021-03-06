# This script sets up the system environment variables for the subject computer
# This enables the subject computer to commmunicate with the Forensics Workstatin
# Author: Kanishk Sharan

usage_prompt () { 
	echo "usage: $0 <forensics workstation IP> [log port] [filename port] [file transfer port]"
	echo "Simple script to set variables for communication to forensics workstation"
	exit 1
}

# did you specify a file?
if [ $# -lt 1 ] ; then
   usage_prompt
fi

export RHOST=$1

if [ $# -gt 1 ] ; then
   export RPORT=$2
else
   export RPORT=4444
fi
if [ $# -gt 2 ] ; then
   export RFPORT=$3
else
   export RFPORT=5555
fi
if [ $# -gt 3 ] ; then 
   export RFTPORT=$4
else
   export RFTPORT=5556
fi


