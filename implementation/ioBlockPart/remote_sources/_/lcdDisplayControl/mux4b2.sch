<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="IA(0)" />
        <signal name="IB(0)" />
        <signal name="IA(1)" />
        <signal name="IB(1)" />
        <signal name="IA(2)" />
        <signal name="IB(2)" />
        <signal name="IA(3)" />
        <signal name="IB(3)" />
        <signal name="Sel" />
        <signal name="O(0)" />
        <signal name="O(1)" />
        <signal name="O(2)" />
        <signal name="O(3)" />
        <signal name="IA(3:0)" />
        <signal name="IB(3:0)" />
        <signal name="O(3:0)" />
        <port polarity="Input" name="Sel" />
        <port polarity="Input" name="IA(3:0)" />
        <port polarity="Input" name="IB(3:0)" />
        <port polarity="Output" name="O(3:0)" />
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <block symbolname="m2_1" name="XLXI_1">
            <blockpin signalname="IA(0)" name="D0" />
            <blockpin signalname="IB(0)" name="D1" />
            <blockpin signalname="Sel" name="S0" />
            <blockpin signalname="O(0)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_2">
            <blockpin signalname="IA(1)" name="D0" />
            <blockpin signalname="IB(1)" name="D1" />
            <blockpin signalname="Sel" name="S0" />
            <blockpin signalname="O(1)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_3">
            <blockpin signalname="IA(2)" name="D0" />
            <blockpin signalname="IB(2)" name="D1" />
            <blockpin signalname="Sel" name="S0" />
            <blockpin signalname="O(2)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_4">
            <blockpin signalname="IA(3)" name="D0" />
            <blockpin signalname="IB(3)" name="D1" />
            <blockpin signalname="Sel" name="S0" />
            <blockpin signalname="O(3)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1040" y="320" name="XLXI_1" orien="R0" />
        <instance x="1040" y="560" name="XLXI_2" orien="R0" />
        <instance x="1040" y="800" name="XLXI_3" orien="R0" />
        <instance x="1040" y="1040" name="XLXI_4" orien="R0" />
        <branch name="IA(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="960" y="160" type="branch" />
            <wire x2="1040" y1="160" y2="160" x1="960" />
        </branch>
        <branch name="IB(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="960" y="224" type="branch" />
            <wire x2="1040" y1="224" y2="224" x1="960" />
        </branch>
        <branch name="IA(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="960" y="400" type="branch" />
            <wire x2="1040" y1="400" y2="400" x1="960" />
        </branch>
        <branch name="IB(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="960" y="464" type="branch" />
            <wire x2="1040" y1="464" y2="464" x1="960" />
        </branch>
        <branch name="IA(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="960" y="640" type="branch" />
            <wire x2="1040" y1="640" y2="640" x1="960" />
        </branch>
        <branch name="IB(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="960" y="704" type="branch" />
            <wire x2="1040" y1="704" y2="704" x1="960" />
        </branch>
        <branch name="IA(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="960" y="880" type="branch" />
            <wire x2="1040" y1="880" y2="880" x1="960" />
        </branch>
        <branch name="IB(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="960" y="944" type="branch" />
            <wire x2="1040" y1="944" y2="944" x1="960" />
        </branch>
        <branch name="O(0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1440" y="192" type="branch" />
            <wire x2="1440" y1="192" y2="192" x1="1360" />
        </branch>
        <branch name="O(1)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1440" y="432" type="branch" />
            <wire x2="1440" y1="432" y2="432" x1="1360" />
        </branch>
        <branch name="O(2)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1440" y="672" type="branch" />
            <wire x2="1440" y1="672" y2="672" x1="1360" />
        </branch>
        <branch name="O(3)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1440" y="912" type="branch" />
            <wire x2="1440" y1="912" y2="912" x1="1360" />
        </branch>
        <branch name="IA(3:0)">
            <wire x2="640" y1="160" y2="160" x1="480" />
        </branch>
        <branch name="IB(3:0)">
            <wire x2="640" y1="320" y2="320" x1="480" />
        </branch>
        <iomarker fontsize="28" x="480" y="160" name="IA(3:0)" orien="R180" />
        <iomarker fontsize="28" x="480" y="320" name="IB(3:0)" orien="R180" />
        <branch name="O(3:0)">
            <wire x2="1920" y1="240" y2="240" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="1920" y="240" name="O(3:0)" orien="R0" />
        <branch name="Sel">
            <wire x2="1008" y1="1008" y2="1008" x1="880" />
            <wire x2="1040" y1="1008" y2="1008" x1="1008" />
            <wire x2="1040" y1="288" y2="288" x1="1008" />
            <wire x2="1008" y1="288" y2="528" x1="1008" />
            <wire x2="1040" y1="528" y2="528" x1="1008" />
            <wire x2="1008" y1="528" y2="768" x1="1008" />
            <wire x2="1040" y1="768" y2="768" x1="1008" />
            <wire x2="1008" y1="768" y2="1008" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="880" y="1008" name="Sel" orien="R180" />
    </sheet>
</drawing>