#!/bin/ksh


# generated at: Fri Oct 11 18:26:56 2024
# 
unset CDS_W3264_LIBPATH
unset W3264_USER_PATH
unset W3264_USER_LIBPATH
unset OS_ID
unset REL_VERSION

LOGDIR="/nethome/ccarpenter38/ECE6130_Updated/ECE6130_LAB/Cadence/logs_ccarpenter38/logs0/"
OUTPUTLOG="/nethome/ccarpenter38/ECE6130_Updated/ECE6130_LAB/Cadence/logs_ccarpenter38/logs0/distributedPlot.fnxSession5.log"
export CDSHOME="/tools/software/cadence/ic/latest"

env >$LOGDIR/distributedPlot.fnxSession5.env.log 2>/dev/null
BLDVER="`$CDSHOME/bin/srrversion -build 2>/dev/null `"

#
if [ -z "$DISPLAY" ]; then
    export DISPLAY=130.207.232.27:10.0
fi

#

if [ "$BLDVER" =  "" ]; then
    echo "[`date`] Error: target machine (`hostname`) cannot run ViVA. Probably wrong system.">$LOGDIR/distributedPlot.fnxSession5.err
    sync $LOGDIR/distributedPlot.fnxSession5.err
    exit 1
fi
#
$CDSHOME/bin/srrversion -sysinfo >>$LOGDIR/distributedPlot.fnxSession5.env.log 2>/dev/null
$CDSHOME/bin/srrversion -envinfo >>$LOGDIR/distributedPlot.fnxSession5.env.log 2>/dev/null
#
# Check for X11 connectivity....
ERR="`srrversion -x11`"
if [ "$ERR" != "OK" ]; then
    echo "[`date`] Error: $ERR.">$LOGDIR/distributedPlot.fnxSession5.err
    exit 1
fi
# 
# 
export CDN_VIVA_SERVICE_LINGER_TIME=60
export CDN_VIVA_SERVICE_SEND_JSON_GRPC=1
# 
CMD="$CDSHOME/bin/viva  -brokerAddress ece-linlabsrv01.ece.gatech.edu:33673 -tag cbbe250d65761a4ed7ca650721e134f7 -axlsession fnxSession5 -libCellView ECE4130_Project:inverter:maestro -adeService distribuedPlot -noautostart  -distributedPlot 1 -log /nethome/ccarpenter38/ECE6130_Updated/ECE6130_LAB/Cadence/logs_ccarpenter38/logs0/distributedPlot.0.log -no-ciw -nocdsinit -viva-service 000143E78B008E70EF2803E3E662FC18BC4D77F482089272CC286FA78410926AD02479FE8D1C9F67D0227DAAD247CD36C87766E3A12FFC06BC4D01EA292F5A36DB4400001DB6"


WORK_DIR=/nethome/ccarpenter38/ECE6130_Updated/ECE6130_LAB/Cadence
if [ -d $WORK_DIR ]; then
    cd $WORK_DIR
    $CMD &
    PID=$!
    wait $PID
fi


