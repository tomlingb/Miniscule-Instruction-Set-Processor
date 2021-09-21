<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="sf_ce" />
        <signal name="lcd_rw" />
        <signal name="lcd_E" />
        <signal name="CLK" />
        <signal name="lcd_rs" />
        <signal name="lcd_D(3:0)" />
        <signal name="RESET" />
        <signal name="G" />
        <signal name="switch(3:0)" />
        <signal name="switch(0)" />
        <signal name="switch(1)" />
        <signal name="switch(2)" />
        <signal name="switch(3)" />
        <signal name="led0" />
        <signal name="led1" />
        <signal name="led2" />
        <signal name="led3" />
        <signal name="V" />
        <signal name="sf_oe" />
        <signal name="sf_we" />
        <signal name="V,G,G,G,G,V,G,G,G,G,V,G,led3,led2,led1,led0" />
        <signal name="writeOutput" />
        <signal name="led7" />
        <port polarity="Output" name="sf_ce" />
        <port polarity="Output" name="lcd_rw" />
        <port polarity="Output" name="lcd_E" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="lcd_rs" />
        <port polarity="Output" name="lcd_D(3:0)" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="switch(3:0)" />
        <port polarity="Output" name="led0" />
        <port polarity="Output" name="led1" />
        <port polarity="Output" name="led2" />
        <port polarity="Output" name="led3" />
        <port polarity="Output" name="V" />
        <port polarity="Output" name="sf_oe" />
        <port polarity="Output" name="sf_we" />
        <port polarity="Input" name="writeOutput" />
        <port polarity="Output" name="led7" />
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
        <blockdef name="lcd_driver">
            <timestamp>2013-9-25T16:18:48</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="gnd" name="XLXI_2">
            <blockpin signalname="G" name="G" />
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
        <block symbolname="vcc" name="XLXI_7">
            <blockpin signalname="V" name="P" />
        </block>
        <block symbolname="buf" name="XLXI_8">
            <blockpin signalname="V" name="I" />
            <blockpin signalname="sf_oe" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_9">
            <blockpin signalname="V" name="I" />
            <blockpin signalname="sf_we" name="O" />
        </block>
        <block symbolname="lcd_driver" name="XLXI_13">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="G" name="CLEAR" />
            <blockpin signalname="writeOutput" name="Write" />
            <blockpin signalname="V,G,G,G,G,V,G,G,G,G,V,G,led3,led2,led1,led0" name="D(15:0)" />
            <blockpin signalname="sf_ce" name="sf_ce" />
            <blockpin signalname="lcd_rw" name="lcd_rw" />
            <blockpin signalname="lcd_rs" name="lcd_rs" />
            <blockpin signalname="lcd_D(3:0)" name="lcd_D(3:0)" />
            <blockpin signalname="lcd_E" name="lcd_E" />
            <blockpin signalname="led7" name="lcdReady" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="sf_ce">
            <wire x2="1216" y1="592" y2="592" x1="1200" />
            <wire x2="1280" y1="592" y2="592" x1="1216" />
        </branch>
        <branch name="lcd_rw">
            <wire x2="1216" y1="656" y2="656" x1="1200" />
            <wire x2="1280" y1="656" y2="656" x1="1216" />
        </branch>
        <branch name="lcd_E">
            <wire x2="1216" y1="784" y2="784" x1="1200" />
            <wire x2="1280" y1="784" y2="784" x1="1216" />
        </branch>
        <branch name="CLK">
            <wire x2="816" y1="592" y2="592" x1="720" />
        </branch>
        <branch name="lcd_rs">
            <wire x2="1216" y1="720" y2="720" x1="1200" />
            <wire x2="1280" y1="720" y2="720" x1="1216" />
        </branch>
        <branch name="lcd_D(3:0)">
            <wire x2="1216" y1="848" y2="848" x1="1200" />
            <wire x2="1280" y1="848" y2="848" x1="1216" />
        </branch>
        <branch name="RESET">
            <wire x2="816" y1="656" y2="656" x1="720" />
        </branch>
        <iomarker fontsize="28" x="1280" y="592" name="sf_ce" orien="R0" />
        <iomarker fontsize="28" x="1280" y="656" name="lcd_rw" orien="R0" />
        <iomarker fontsize="28" x="1280" y="720" name="lcd_rs" orien="R0" />
        <iomarker fontsize="28" x="1280" y="784" name="lcd_E" orien="R0" />
        <iomarker fontsize="28" x="1280" y="848" name="lcd_D(3:0)" orien="R0" />
        <iomarker fontsize="28" x="720" y="592" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="720" y="656" name="RESET" orien="R180" />
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
        <instance x="640" y="1072" name="XLXI_3" orien="R0" />
        <instance x="640" y="1152" name="XLXI_4" orien="R0" />
        <instance x="640" y="1232" name="XLXI_5" orien="R0" />
        <instance x="640" y="1312" name="XLXI_6" orien="R0" />
        <branch name="switch(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="560" y="1040" type="branch" />
            <wire x2="640" y1="1040" y2="1040" x1="560" />
        </branch>
        <branch name="switch(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="560" y="1120" type="branch" />
            <wire x2="640" y1="1120" y2="1120" x1="560" />
        </branch>
        <branch name="switch(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="560" y="1200" type="branch" />
            <wire x2="640" y1="1200" y2="1200" x1="560" />
        </branch>
        <branch name="switch(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="560" y="1280" type="branch" />
            <wire x2="640" y1="1280" y2="1280" x1="560" />
        </branch>
        <branch name="led0">
            <wire x2="960" y1="1040" y2="1040" x1="864" />
        </branch>
        <branch name="led1">
            <wire x2="960" y1="1120" y2="1120" x1="864" />
        </branch>
        <branch name="led2">
            <wire x2="960" y1="1200" y2="1200" x1="864" />
        </branch>
        <branch name="led3">
            <wire x2="960" y1="1280" y2="1280" x1="864" />
        </branch>
        <iomarker fontsize="28" x="960" y="1040" name="led0" orien="R0" />
        <iomarker fontsize="28" x="960" y="1120" name="led1" orien="R0" />
        <iomarker fontsize="28" x="960" y="1200" name="led2" orien="R0" />
        <iomarker fontsize="28" x="960" y="1280" name="led3" orien="R0" />
        <instance x="256" y="464" name="XLXI_7" orien="R0" />
        <branch name="V">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="400" y="480" type="branch" />
            <wire x2="320" y1="464" y2="480" x1="320" />
            <wire x2="400" y1="480" y2="480" x1="320" />
        </branch>
        <instance x="640" y="1472" name="XLXI_8" orien="R0" />
        <instance x="640" y="1552" name="XLXI_9" orien="R0" />
        <branch name="sf_oe">
            <wire x2="960" y1="1440" y2="1440" x1="864" />
        </branch>
        <branch name="sf_we">
            <wire x2="960" y1="1520" y2="1520" x1="864" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="560" y="1440" type="branch" />
            <wire x2="640" y1="1440" y2="1440" x1="560" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="560" y="1520" type="branch" />
            <wire x2="640" y1="1520" y2="1520" x1="560" />
        </branch>
        <iomarker fontsize="28" x="960" y="1440" name="sf_oe" orien="R0" />
        <iomarker fontsize="28" x="960" y="1520" name="sf_we" orien="R0" />
        <branch name="V,G,G,G,G,V,G,G,G,G,V,G,led3,led2,led1,led0">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="720" y="848" type="branch" />
            <wire x2="816" y1="848" y2="848" x1="720" />
        </branch>
        <branch name="writeOutput">
            <wire x2="816" y1="784" y2="784" x1="720" />
        </branch>
        <iomarker fontsize="28" x="720" y="784" name="writeOutput" orien="R180" />
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="720" type="branch" />
            <wire x2="816" y1="720" y2="720" x1="720" />
        </branch>
        <branch name="led7">
            <wire x2="1216" y1="912" y2="912" x1="1200" />
            <wire x2="1280" y1="912" y2="912" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1280" y="912" name="led7" orien="R0" />
        <instance x="816" y="944" name="XLXI_13" orien="R0">
        </instance>
    </sheet>
</drawing>