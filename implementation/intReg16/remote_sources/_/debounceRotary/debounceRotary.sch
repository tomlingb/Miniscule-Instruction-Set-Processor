<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="CLK" />
        <signal name="RESET" />
        <signal name="XLXN_8" />
        <signal name="A" />
        <signal name="XLXN_17" />
        <signal name="rot_event" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_29" />
        <signal name="XLXN_43" />
        <signal name="rot_left" />
        <signal name="XLXN_47" />
        <signal name="B" />
        <signal name="rot_event_delay" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="A" />
        <port polarity="Output" name="rot_event" />
        <port polarity="Output" name="rot_left" />
        <port polarity="Input" name="B" />
        <port polarity="Output" name="rot_event_delay" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="fdc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
        </blockdef>
        <blockdef name="fdce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_13">
            <blockpin signalname="XLXN_1" name="I0" />
            <blockpin signalname="XLXN_17" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_14">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="XLXN_3" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="fdc" name="XLXI_21">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="XLXN_4" name="D" />
            <blockpin signalname="XLXN_17" name="Q" />
        </block>
        <block symbolname="and2b1" name="XLXI_26">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_17" name="I1" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
        <block symbolname="fdc" name="XLXI_22">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="XLXN_17" name="D" />
            <blockpin signalname="XLXN_8" name="Q" />
        </block>
        <block symbolname="fdc" name="XLXI_23">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="XLXN_47" name="D" />
            <blockpin signalname="rot_event" name="Q" />
        </block>
        <block symbolname="and2" name="XLXI_45">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="XLXN_29" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_46">
            <blockpin signalname="XLXN_23" name="I0" />
            <blockpin signalname="XLXN_43" name="I1" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_47">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="XLXN_29" name="I1" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_48">
            <blockpin signalname="XLXN_25" name="I0" />
            <blockpin signalname="XLXN_24" name="I1" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="fdc" name="XLXI_49">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="XLXN_26" name="D" />
            <blockpin signalname="XLXN_43" name="Q" />
        </block>
        <block symbolname="fdce" name="XLXI_25">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_47" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="XLXN_43" name="D" />
            <blockpin signalname="rot_left" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_69">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="fdc" name="XLXI_70">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="rot_event" name="D" />
            <blockpin signalname="rot_event_delay" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="400" y="368" name="XLXI_9" orien="R0" />
        <instance x="720" y="336" name="XLXI_13" orien="R0" />
        <instance x="400" y="528" name="XLXI_14" orien="R0" />
        <instance x="1040" y="368" name="XLXI_10" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="720" y1="272" y2="272" x1="656" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1040" y1="240" y2="240" x1="976" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="848" y1="432" y2="432" x1="656" />
            <wire x2="848" y1="304" y2="432" x1="848" />
            <wire x2="1040" y1="304" y2="304" x1="848" />
        </branch>
        <instance x="1360" y="528" name="XLXI_21" orien="R0" />
        <instance x="2320" y="400" name="XLXI_26" orien="R0" />
        <instance x="1840" y="672" name="XLXI_22" orien="R0" />
        <instance x="2640" y="560" name="XLXI_23" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1360" y1="272" y2="272" x1="1296" />
        </branch>
        <branch name="CLK">
            <wire x2="1360" y1="400" y2="400" x1="1280" />
        </branch>
        <branch name="RESET">
            <wire x2="1360" y1="496" y2="496" x1="1280" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2272" y1="416" y2="416" x1="2224" />
            <wire x2="2272" y1="336" y2="416" x1="2272" />
            <wire x2="2320" y1="336" y2="336" x1="2272" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1760" y="544" type="branch" />
            <wire x2="1840" y1="544" y2="544" x1="1760" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1760" y="640" type="branch" />
            <wire x2="1840" y1="640" y2="640" x1="1760" />
        </branch>
        <branch name="A">
            <wire x2="320" y1="240" y2="240" x1="240" />
            <wire x2="320" y1="240" y2="400" x1="320" />
            <wire x2="320" y1="400" y2="560" x1="320" />
            <wire x2="400" y1="400" y2="400" x1="320" />
            <wire x2="400" y1="240" y2="240" x1="320" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="640" y1="128" y2="208" x1="640" />
            <wire x2="720" y1="208" y2="208" x1="640" />
            <wire x2="1760" y1="128" y2="128" x1="640" />
            <wire x2="1760" y1="128" y2="272" x1="1760" />
            <wire x2="2320" y1="272" y2="272" x1="1760" />
            <wire x2="1760" y1="272" y2="416" x1="1760" />
            <wire x2="1840" y1="416" y2="416" x1="1760" />
            <wire x2="1760" y1="272" y2="272" x1="1744" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2560" y="432" type="branch" />
            <wire x2="2640" y1="432" y2="432" x1="2560" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2560" y="528" type="branch" />
            <wire x2="2640" y1="528" y2="528" x1="2560" />
        </branch>
        <branch name="rot_event">
            <wire x2="2400" y1="608" y2="1424" x1="2400" />
            <wire x2="2640" y1="1424" y2="1424" x1="2400" />
            <wire x2="3056" y1="608" y2="608" x1="2400" />
            <wire x2="3056" y1="304" y2="304" x1="3024" />
            <wire x2="3120" y1="304" y2="304" x1="3056" />
            <wire x2="3056" y1="304" y2="608" x1="3056" />
        </branch>
        <instance x="400" y="1008" name="XLXI_45" orien="R0" />
        <instance x="720" y="976" name="XLXI_46" orien="R0" />
        <instance x="400" y="1168" name="XLXI_47" orien="R0" />
        <instance x="1040" y="1008" name="XLXI_48" orien="R0" />
        <branch name="XLXN_23">
            <wire x2="720" y1="912" y2="912" x1="656" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1040" y1="880" y2="880" x1="976" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="848" y1="1072" y2="1072" x1="656" />
            <wire x2="848" y1="944" y2="1072" x1="848" />
            <wire x2="1040" y1="944" y2="944" x1="848" />
        </branch>
        <instance x="1360" y="1168" name="XLXI_49" orien="R0" />
        <branch name="XLXN_26">
            <wire x2="1360" y1="912" y2="912" x1="1296" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1280" y="1040" type="branch" />
            <wire x2="1360" y1="1040" y2="1040" x1="1280" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1280" y="1136" type="branch" />
            <wire x2="1360" y1="1136" y2="1136" x1="1280" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="320" y1="784" y2="880" x1="320" />
            <wire x2="400" y1="880" y2="880" x1="320" />
            <wire x2="320" y1="880" y2="1040" x1="320" />
            <wire x2="400" y1="1040" y2="1040" x1="320" />
        </branch>
        <instance x="2640" y="1168" name="XLXI_25" orien="R0" />
        <branch name="XLXN_43">
            <wire x2="1760" y1="768" y2="768" x1="640" />
            <wire x2="1760" y1="768" y2="912" x1="1760" />
            <wire x2="2640" y1="912" y2="912" x1="1760" />
            <wire x2="640" y1="768" y2="848" x1="640" />
            <wire x2="720" y1="848" y2="848" x1="640" />
            <wire x2="1760" y1="912" y2="912" x1="1744" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2560" y="1040" type="branch" />
            <wire x2="2640" y1="1040" y2="1040" x1="2560" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2560" y="1136" type="branch" />
            <wire x2="2640" y1="1136" y2="1136" x1="2560" />
        </branch>
        <branch name="rot_left">
            <wire x2="3120" y1="912" y2="912" x1="3024" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="2608" y1="304" y2="304" x1="2576" />
            <wire x2="2608" y1="304" y2="976" x1="2608" />
            <wire x2="2640" y1="976" y2="976" x1="2608" />
            <wire x2="2640" y1="304" y2="304" x1="2608" />
        </branch>
        <instance x="288" y="560" name="XLXI_69" orien="R90" />
        <branch name="B">
            <wire x2="384" y1="304" y2="304" x1="240" />
            <wire x2="400" y1="304" y2="304" x1="384" />
            <wire x2="384" y1="304" y2="464" x1="384" />
            <wire x2="400" y1="464" y2="464" x1="384" />
            <wire x2="384" y1="464" y2="944" x1="384" />
            <wire x2="400" y1="944" y2="944" x1="384" />
            <wire x2="384" y1="944" y2="1104" x1="384" />
            <wire x2="400" y1="1104" y2="1104" x1="384" />
        </branch>
        <iomarker fontsize="28" x="3120" y="304" name="rot_event" orien="R0" />
        <iomarker fontsize="28" x="3120" y="912" name="rot_left" orien="R0" />
        <iomarker fontsize="28" x="1280" y="400" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="1280" y="496" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="240" y="240" name="A" orien="R180" />
        <iomarker fontsize="28" x="240" y="304" name="B" orien="R180" />
        <instance x="2640" y="1680" name="XLXI_70" orien="R0" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2560" y="1552" type="branch" />
            <wire x2="2640" y1="1552" y2="1552" x1="2560" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2560" y="1648" type="branch" />
            <wire x2="2640" y1="1648" y2="1648" x1="2560" />
        </branch>
        <branch name="rot_event_delay">
            <wire x2="3120" y1="1424" y2="1424" x1="3024" />
        </branch>
        <iomarker fontsize="28" x="3120" y="1424" name="rot_event_delay" orien="R0" />
    </sheet>
</drawing>