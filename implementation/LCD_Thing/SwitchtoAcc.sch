<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="switch0" />
        <signal name="switch1" />
        <signal name="switch2" />
        <signal name="switch3" />
        <signal name="imm0" />
        <signal name="imm1" />
        <signal name="imm2" />
        <signal name="imm3" />
        <signal name="G" />
        <signal name="G,G,G,G,G,G,G,G,G,G,G,G,imm3,imm2,imm1,imm0" />
        <signal name="Data(15:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="switch0" />
        <port polarity="Input" name="switch1" />
        <port polarity="Input" name="switch2" />
        <port polarity="Input" name="switch3" />
        <port polarity="Input" name="G" />
        <port polarity="Output" name="Data(15:0)" />
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="buf16">
            <timestamp>2020-2-10T18:26:49</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="buf" name="XLXI_3">
            <blockpin signalname="switch0" name="I" />
            <blockpin signalname="imm0" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="switch1" name="I" />
            <blockpin signalname="imm1" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="switch2" name="I" />
            <blockpin signalname="imm2" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="switch3" name="I" />
            <blockpin signalname="imm3" name="O" />
        </block>
        <block symbolname="buf16" name="bufferthing">
            <blockpin signalname="G,G,G,G,G,G,G,G,G,G,G,G,imm3,imm2,imm1,imm0" name="I(15:0)" />
            <blockpin signalname="Data(15:0)" name="O(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="896" y="800" name="XLXI_3" orien="R0" />
        <instance x="896" y="896" name="XLXI_4" orien="R0" />
        <instance x="896" y="992" name="XLXI_5" orien="R0" />
        <instance x="896" y="1088" name="XLXI_6" orien="R0" />
        <branch name="switch0">
            <wire x2="896" y1="768" y2="768" x1="864" />
        </branch>
        <branch name="switch1">
            <wire x2="896" y1="864" y2="864" x1="864" />
        </branch>
        <branch name="switch2">
            <wire x2="896" y1="960" y2="960" x1="864" />
        </branch>
        <branch name="switch3">
            <wire x2="896" y1="1056" y2="1056" x1="864" />
        </branch>
        <branch name="imm0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="768" type="branch" />
            <wire x2="1168" y1="768" y2="768" x1="1120" />
        </branch>
        <branch name="imm1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="864" type="branch" />
            <wire x2="1168" y1="864" y2="864" x1="1120" />
        </branch>
        <branch name="imm2">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="960" type="branch" />
            <wire x2="1168" y1="960" y2="960" x1="1120" />
        </branch>
        <branch name="imm3">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="1056" type="branch" />
            <wire x2="1168" y1="1056" y2="1056" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="864" y="768" name="switch0" orien="R180" />
        <iomarker fontsize="28" x="864" y="864" name="switch1" orien="R180" />
        <iomarker fontsize="28" x="864" y="960" name="switch2" orien="R180" />
        <iomarker fontsize="28" x="864" y="1056" name="switch3" orien="R180" />
        <branch name="CLK">
            <wire x2="480" y1="256" y2="256" x1="416" />
        </branch>
        <iomarker fontsize="28" x="416" y="256" name="CLK" orien="R180" />
        <branch name="G">
            <wire x2="304" y1="720" y2="720" x1="240" />
        </branch>
        <branch name="G,G,G,G,G,G,G,G,G,G,G,G,imm3,imm2,imm1,imm0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="896" y="1200" type="branch" />
            <wire x2="1024" y1="1200" y2="1200" x1="896" />
        </branch>
        <instance x="1024" y="1232" name="bufferthing" orien="R0">
        </instance>
        <branch name="Data(15:0)">
            <wire x2="1552" y1="1200" y2="1200" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1552" y="1200" name="Data(15:0)" orien="R0" />
        <iomarker fontsize="28" x="240" y="720" name="G" orien="R180" />
    </sheet>
</drawing>