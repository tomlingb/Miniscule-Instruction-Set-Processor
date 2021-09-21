<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Acc(15:0)" />
        <signal name="CLK" />
        <signal name="lcd_rw" />
        <signal name="sf_ce" />
        <signal name="lcd_rs" />
        <signal name="lcd_E" />
        <signal name="lcd_D(3:0)" />
        <signal name="led7" />
        <signal name="sf_oe" />
        <signal name="sf_we" />
        <signal name="writeOutput" />
        <signal name="RESET" />
        <signal name="G" />
        <signal name="V" />
        <port polarity="Input" name="Acc(15:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="lcd_rw" />
        <port polarity="Output" name="sf_ce" />
        <port polarity="Output" name="lcd_rs" />
        <port polarity="Output" name="lcd_E" />
        <port polarity="Output" name="lcd_D(3:0)" />
        <port polarity="Output" name="led7" />
        <port polarity="Output" name="sf_oe" />
        <port polarity="Output" name="sf_we" />
        <port polarity="Input" name="writeOutput" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="G" />
        <port polarity="Input" name="V" />
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="lcd_driver">
            <timestamp>2020-2-10T18:48:14</timestamp>
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
        <block symbolname="lcd_driver" name="XLXI_6">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="G" name="CLEAR" />
            <blockpin signalname="writeOutput" name="Write" />
            <blockpin signalname="Acc(15:0)" name="D(15:0)" />
            <blockpin signalname="sf_ce" name="sf_ce" />
            <blockpin signalname="lcd_rw" name="lcd_rw" />
            <blockpin signalname="lcd_rs" name="lcd_rs" />
            <blockpin signalname="lcd_D(3:0)" name="lcd_D(3:0)" />
            <blockpin signalname="lcd_E" name="lcd_E" />
            <blockpin signalname="led7" name="lcdReady" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="V" name="I" />
            <blockpin signalname="sf_oe" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_8">
            <blockpin signalname="V" name="I" />
            <blockpin signalname="sf_we" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="848" y="576" name="XLXI_6" orien="R0">
        </instance>
        <branch name="Acc(15:0)">
            <wire x2="848" y1="480" y2="480" x1="752" />
        </branch>
        <iomarker fontsize="28" x="752" y="480" name="Acc(15:0)" orien="R180" />
        <branch name="CLK">
            <wire x2="848" y1="224" y2="224" x1="816" />
        </branch>
        <iomarker fontsize="28" x="816" y="224" name="CLK" orien="R180" />
        <branch name="lcd_rw">
            <wire x2="1264" y1="288" y2="288" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1264" y="288" name="lcd_rw" orien="R0" />
        <branch name="sf_ce">
            <wire x2="1264" y1="224" y2="224" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1264" y="224" name="sf_ce" orien="R0" />
        <branch name="lcd_rs">
            <wire x2="1264" y1="352" y2="352" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1264" y="352" name="lcd_rs" orien="R0" />
        <branch name="lcd_E">
            <wire x2="1264" y1="416" y2="416" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1264" y="416" name="lcd_E" orien="R0" />
        <branch name="lcd_D(3:0)">
            <wire x2="1264" y1="480" y2="480" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1264" y="480" name="lcd_D(3:0)" orien="R0" />
        <branch name="led7">
            <wire x2="1264" y1="544" y2="544" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1264" y="544" name="led7" orien="R0" />
        <instance x="928" y="800" name="XLXI_7" orien="R0" />
        <instance x="928" y="896" name="XLXI_8" orien="R0" />
        <branch name="sf_oe">
            <wire x2="1184" y1="768" y2="768" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1184" y="768" name="sf_oe" orien="R0" />
        <branch name="sf_we">
            <wire x2="1184" y1="864" y2="864" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1184" y="864" name="sf_we" orien="R0" />
        <branch name="writeOutput">
            <wire x2="848" y1="416" y2="416" x1="816" />
        </branch>
        <iomarker fontsize="28" x="816" y="416" name="writeOutput" orien="R180" />
        <branch name="RESET">
            <wire x2="848" y1="288" y2="288" x1="816" />
        </branch>
        <iomarker fontsize="28" x="816" y="288" name="RESET" orien="R180" />
        <branch name="G">
            <wire x2="848" y1="352" y2="352" x1="816" />
        </branch>
        <iomarker fontsize="28" x="816" y="352" name="G" orien="R180" />
        <branch name="V">
            <wire x2="528" y1="752" y2="752" x1="448" />
        </branch>
        <iomarker fontsize="28" x="448" y="752" name="V" orien="R180" />
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="896" y="768" type="branch" />
            <wire x2="928" y1="768" y2="768" x1="896" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="896" y="864" type="branch" />
            <wire x2="928" y1="864" y2="864" x1="896" />
        </branch>
    </sheet>
</drawing>