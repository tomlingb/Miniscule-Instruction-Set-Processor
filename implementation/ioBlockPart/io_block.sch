<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="G" />
        <signal name="switch(3:0)" />
        <signal name="V" />
        <signal name="switch(0)" />
        <signal name="switch(1)" />
        <signal name="switch(2)" />
        <signal name="switch(3)" />
        <signal name="led0" />
        <signal name="led1" />
        <signal name="led2" />
        <signal name="led3" />
        <signal name="sf_oe" />
        <signal name="sf_we" />
        <signal name="XLXN_108(15:0)" />
        <port polarity="Input" name="switch(3:0)" />
        <port polarity="Output" name="V" />
        <port polarity="Output" name="led0" />
        <port polarity="Output" name="led1" />
        <port polarity="Output" name="led2" />
        <port polarity="Output" name="led3" />
        <port polarity="Output" name="sf_oe" />
        <port polarity="Output" name="sf_we" />
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="gnd" name="XLXI_2">
            <blockpin signalname="G" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_7">
            <blockpin signalname="V" name="P" />
        </block>
        <block symbolname="buf" name="XLXI_3">
            <blockpin signalname="switch(0)" name="I" />
            <blockpin signalname="led0" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="switch(1)" name="I" />
            <blockpin signalname="led1" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="switch(2)" name="I" />
            <blockpin signalname="led2" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="switch(3)" name="I" />
            <blockpin signalname="led3" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_8">
            <blockpin signalname="V" name="I" />
            <blockpin signalname="sf_oe" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_9">
            <blockpin signalname="V" name="I" />
            <blockpin signalname="sf_we" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="256" y="1168" name="XLXI_2" orien="R0" />
        <branch name="G">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="400" y="1024" type="branch" />
            <wire x2="320" y1="1024" y2="1040" x1="320" />
            <wire x2="400" y1="1024" y2="1024" x1="320" />
        </branch>
        <branch name="switch(3:0)">
            <wire x2="400" y1="960" y2="960" x1="240" />
        </branch>
        <iomarker fontsize="28" x="240" y="960" name="switch(3:0)" orien="R180" />
        <instance x="192" y="1344" name="XLXI_7" orien="R0" />
        <branch name="V">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="336" y="1360" type="branch" />
            <wire x2="256" y1="1344" y2="1360" x1="256" />
            <wire x2="336" y1="1360" y2="1360" x1="256" />
        </branch>
        <instance x="576" y="992" name="XLXI_3" orien="R0" />
        <instance x="576" y="1072" name="XLXI_4" orien="R0" />
        <instance x="576" y="1152" name="XLXI_5" orien="R0" />
        <instance x="576" y="1232" name="XLXI_6" orien="R0" />
        <branch name="switch(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="496" y="960" type="branch" />
            <wire x2="576" y1="960" y2="960" x1="496" />
        </branch>
        <branch name="switch(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="496" y="1040" type="branch" />
            <wire x2="576" y1="1040" y2="1040" x1="496" />
        </branch>
        <branch name="switch(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="496" y="1120" type="branch" />
            <wire x2="576" y1="1120" y2="1120" x1="496" />
        </branch>
        <branch name="switch(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="496" y="1200" type="branch" />
            <wire x2="576" y1="1200" y2="1200" x1="496" />
        </branch>
        <branch name="led0">
            <wire x2="896" y1="960" y2="960" x1="800" />
        </branch>
        <branch name="led1">
            <wire x2="896" y1="1040" y2="1040" x1="800" />
        </branch>
        <branch name="led2">
            <wire x2="896" y1="1120" y2="1120" x1="800" />
        </branch>
        <branch name="led3">
            <wire x2="896" y1="1200" y2="1200" x1="800" />
        </branch>
        <instance x="576" y="1392" name="XLXI_8" orien="R0" />
        <instance x="576" y="1472" name="XLXI_9" orien="R0" />
        <branch name="sf_oe">
            <wire x2="896" y1="1360" y2="1360" x1="800" />
        </branch>
        <branch name="sf_we">
            <wire x2="896" y1="1440" y2="1440" x1="800" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="496" y="1360" type="branch" />
            <wire x2="576" y1="1360" y2="1360" x1="496" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="496" y="1440" type="branch" />
            <wire x2="576" y1="1440" y2="1440" x1="496" />
        </branch>
        <iomarker fontsize="28" x="896" y="960" name="led0" orien="R0" />
        <iomarker fontsize="28" x="896" y="1040" name="led1" orien="R0" />
        <iomarker fontsize="28" x="896" y="1120" name="led2" orien="R0" />
        <iomarker fontsize="28" x="896" y="1200" name="led3" orien="R0" />
        <iomarker fontsize="28" x="896" y="1360" name="sf_oe" orien="R0" />
        <iomarker fontsize="28" x="896" y="1440" name="sf_we" orien="R0" />
    </sheet>
</drawing>