<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="led0" />
        <signal name="led1" />
        <signal name="led2" />
        <signal name="led3" />
        <signal name="switch(0)" />
        <signal name="switch(1)" />
        <signal name="switch(2)" />
        <signal name="switch(3)" />
        <signal name="switch(3:0)" />
        <signal name="V" />
        <signal name="led7" />
        <port polarity="Output" name="led0" />
        <port polarity="Output" name="led1" />
        <port polarity="Output" name="led2" />
        <port polarity="Output" name="led3" />
        <port polarity="Input" name="switch(3:0)" />
        <port polarity="Output" name="led7" />
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
        <block symbolname="buf" name="XLXI_1">
            <blockpin signalname="switch(0)" name="I" />
            <blockpin signalname="led0" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_2">
            <blockpin signalname="switch(1)" name="I" />
            <blockpin signalname="led1" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_3">
            <blockpin signalname="switch(2)" name="I" />
            <blockpin signalname="led2" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="switch(3)" name="I" />
            <blockpin signalname="led3" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_5">
            <blockpin signalname="V" name="P" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="V" name="I" />
            <blockpin signalname="led7" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1568" y="976" name="XLXI_1" orien="R0" />
        <instance x="1568" y="1088" name="XLXI_2" orien="R0" />
        <instance x="1568" y="1200" name="XLXI_3" orien="R0" />
        <instance x="1568" y="1312" name="XLXI_4" orien="R0" />
        <branch name="led0">
            <wire x2="1824" y1="944" y2="944" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="1824" y="944" name="led0" orien="R0" />
        <branch name="led1">
            <wire x2="1824" y1="1056" y2="1056" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="1824" y="1056" name="led1" orien="R0" />
        <branch name="led2">
            <wire x2="1824" y1="1168" y2="1168" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="1824" y="1168" name="led2" orien="R0" />
        <branch name="led3">
            <wire x2="1824" y1="1280" y2="1280" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="1824" y="1280" name="led3" orien="R0" />
        <branch name="switch(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="944" type="branch" />
            <wire x2="1536" y1="944" y2="944" x1="1520" />
            <wire x2="1568" y1="944" y2="944" x1="1536" />
        </branch>
        <branch name="switch(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1056" type="branch" />
            <wire x2="1568" y1="1056" y2="1056" x1="1520" />
        </branch>
        <branch name="switch(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1168" type="branch" />
            <wire x2="1568" y1="1168" y2="1168" x1="1520" />
        </branch>
        <branch name="switch(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1280" type="branch" />
            <wire x2="1568" y1="1280" y2="1280" x1="1520" />
        </branch>
        <branch name="switch(3:0)">
            <wire x2="768" y1="832" y2="832" x1="672" />
        </branch>
        <iomarker fontsize="28" x="672" y="832" name="switch(3:0)" orien="R180" />
        <instance x="528" y="1072" name="XLXI_5" orien="R0" />
        <branch name="V">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1088" type="branch" />
            <wire x2="592" y1="1072" y2="1088" x1="592" />
            <wire x2="640" y1="1088" y2="1088" x1="592" />
        </branch>
        <instance x="1568" y="1424" name="XLXI_6" orien="R0" />
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1392" type="branch" />
            <wire x2="1568" y1="1392" y2="1392" x1="1520" />
        </branch>
        <branch name="led7">
            <wire x2="1824" y1="1392" y2="1392" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="1824" y="1392" name="led7" orien="R0" />
    </sheet>
</drawing>