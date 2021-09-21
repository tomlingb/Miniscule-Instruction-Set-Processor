<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(15:0)" />
        <signal name="lcd_rw" />
        <signal name="sf_ce" />
        <signal name="lcd_rs" />
        <signal name="lcd_E" />
        <signal name="lcd_D(3:0)" />
        <signal name="led7" />
        <signal name="sf_oe" />
        <signal name="sf_we" />
        <signal name="CLK" />
        <signal name="writeOutput" />
        <signal name="RESET" />
        <signal name="led4" />
        <signal name="switch(3:0)" />
        <signal name="switch(0)" />
        <signal name="switch(1)" />
        <signal name="switch(2)" />
        <signal name="switch(3)" />
        <signal name="V" />
        <signal name="G" />
        <port polarity="Output" name="lcd_rw" />
        <port polarity="Output" name="sf_ce" />
        <port polarity="Output" name="lcd_rs" />
        <port polarity="Output" name="lcd_E" />
        <port polarity="Output" name="lcd_D(3:0)" />
        <port polarity="Output" name="led7" />
        <port polarity="Output" name="sf_oe" />
        <port polarity="Output" name="sf_we" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="writeOutput" />
        <port polarity="Input" name="RESET" />
        <port polarity="Output" name="led4" />
        <port polarity="Input" name="switch(3:0)" />
        <blockdef name="SwitchtoAcc">
            <timestamp>2020-2-12T21:18:41</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-384" height="448" />
        </blockdef>
        <blockdef name="AccToLCD">
            <timestamp>2020-2-12T21:6:27</timestamp>
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-512" height="768" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="AccToLCD" name="XLXI_3">
            <blockpin signalname="XLXN_1(15:0)" name="Acc(15:0)" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="writeOutput" name="writeOutput" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="lcd_rw" name="lcd_rw" />
            <blockpin signalname="sf_ce" name="sf_ce" />
            <blockpin signalname="lcd_rs" name="lcd_rs" />
            <blockpin signalname="lcd_E" name="lcd_E" />
            <blockpin signalname="lcd_D(3:0)" name="lcd_D(3:0)" />
            <blockpin signalname="led7" name="led7" />
            <blockpin signalname="sf_oe" name="sf_oe" />
            <blockpin signalname="sf_we" name="sf_we" />
            <blockpin signalname="G" name="G" />
            <blockpin signalname="V" name="V" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="switch(3)" name="I" />
            <blockpin signalname="led4" name="O" />
        </block>
        <block symbolname="SwitchtoAcc" name="XLXI_7">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="switch(0)" name="switch0" />
            <blockpin signalname="switch(1)" name="switch1" />
            <blockpin signalname="switch(2)" name="switch2" />
            <blockpin signalname="switch(3)" name="switch3" />
            <blockpin signalname="G" name="G" />
            <blockpin signalname="XLXN_1(15:0)" name="Data(15:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_8">
            <blockpin signalname="G" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_9">
            <blockpin signalname="V" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_1(15:0)">
            <wire x2="1072" y1="1088" y2="1088" x1="1040" />
        </branch>
        <branch name="lcd_rw">
            <wire x2="1488" y1="1088" y2="1088" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1488" y="1088" name="lcd_rw" orien="R0" />
        <branch name="sf_ce">
            <wire x2="1488" y1="1152" y2="1152" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1488" y="1152" name="sf_ce" orien="R0" />
        <branch name="lcd_rs">
            <wire x2="1488" y1="1216" y2="1216" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1488" y="1216" name="lcd_rs" orien="R0" />
        <branch name="lcd_E">
            <wire x2="1488" y1="1280" y2="1280" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1488" y="1280" name="lcd_E" orien="R0" />
        <branch name="lcd_D(3:0)">
            <wire x2="1488" y1="1344" y2="1344" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1488" y="1344" name="lcd_D(3:0)" orien="R0" />
        <branch name="led7">
            <wire x2="1488" y1="1408" y2="1408" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1488" y="1408" name="led7" orien="R0" />
        <branch name="sf_oe">
            <wire x2="1488" y1="1472" y2="1472" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1488" y="1472" name="sf_oe" orien="R0" />
        <branch name="sf_we">
            <wire x2="1488" y1="1536" y2="1536" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1488" y="1536" name="sf_we" orien="R0" />
        <branch name="CLK">
            <wire x2="288" y1="608" y2="608" x1="176" />
        </branch>
        <iomarker fontsize="28" x="176" y="608" name="CLK" orien="R180" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="832" type="branch" />
            <wire x2="656" y1="832" y2="832" x1="624" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1536" type="branch" />
            <wire x2="1072" y1="1536" y2="1536" x1="1024" />
        </branch>
        <instance x="1072" y="1568" name="XLXI_3" orien="R0">
        </instance>
        <branch name="writeOutput">
            <wire x2="1072" y1="1600" y2="1600" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1600" name="writeOutput" orien="R180" />
        <branch name="RESET">
            <wire x2="1072" y1="1664" y2="1664" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1664" name="RESET" orien="R180" />
        <instance x="688" y="1392" name="XLXI_4" orien="R0" />
        <branch name="led4">
            <wire x2="944" y1="1360" y2="1360" x1="912" />
        </branch>
        <iomarker fontsize="28" x="944" y="1360" name="led4" orien="R0" />
        <branch name="switch(3:0)">
            <wire x2="352" y1="1088" y2="1088" x1="304" />
        </branch>
        <iomarker fontsize="28" x="304" y="1088" name="switch(3:0)" orien="R180" />
        <branch name="switch(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="896" type="branch" />
            <wire x2="656" y1="896" y2="896" x1="624" />
        </branch>
        <branch name="switch(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="960" type="branch" />
            <wire x2="656" y1="960" y2="960" x1="624" />
        </branch>
        <branch name="switch(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="1024" type="branch" />
            <wire x2="656" y1="1024" y2="1024" x1="624" />
        </branch>
        <branch name="switch(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="1088" type="branch" />
            <wire x2="656" y1="1088" y2="1088" x1="624" />
        </branch>
        <branch name="switch(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="1360" type="branch" />
            <wire x2="688" y1="1360" y2="1360" x1="624" />
        </branch>
        <instance x="656" y="1120" name="XLXI_7" orien="R0">
        </instance>
        <instance x="128" y="1792" name="XLXI_8" orien="R0" />
        <instance x="128" y="1520" name="XLXI_9" orien="R0" />
        <branch name="V">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="256" y="1536" type="branch" />
            <wire x2="192" y1="1520" y2="1536" x1="192" />
            <wire x2="256" y1="1536" y2="1536" x1="192" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="256" y="1648" type="branch" />
            <wire x2="192" y1="1648" y2="1664" x1="192" />
            <wire x2="256" y1="1648" y2="1648" x1="192" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1728" type="branch" />
            <wire x2="1040" y1="1728" y2="1728" x1="1024" />
            <wire x2="1072" y1="1728" y2="1728" x1="1040" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1792" type="branch" />
            <wire x2="1072" y1="1792" y2="1792" x1="1024" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="1152" type="branch" />
            <wire x2="656" y1="1152" y2="1152" x1="592" />
        </branch>
    </sheet>
</drawing>