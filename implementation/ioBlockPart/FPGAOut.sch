<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="led7" />
        <signal name="G" />
        <signal name="writeOutput" />
        <signal name="RESET" />
        <signal name="lcd_D(3:0)" />
        <signal name="lcd_rs" />
        <signal name="CLK" />
        <signal name="lcd_E" />
        <signal name="lcd_rw" />
        <signal name="sf_ce" />
        <signal name="FPGAOut(15:0)" />
        <port polarity="Output" name="led7" />
        <port polarity="Input" name="writeOutput" />
        <port polarity="Input" name="RESET" />
        <port polarity="Output" name="lcd_D(3:0)" />
        <port polarity="Output" name="lcd_rs" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="lcd_E" />
        <port polarity="Output" name="lcd_rw" />
        <port polarity="Output" name="sf_ce" />
        <port polarity="Input" name="FPGAOut(15:0)" />
        <blockdef name="lcd_driver">
            <timestamp>2013-12-20T1:41:44</timestamp>
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="lcd_driver" name="XLXI_13">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="G" name="CLEAR" />
            <blockpin signalname="writeOutput" name="Write" />
            <blockpin signalname="FPGAOut(15:0)" name="D(15:0)" />
            <blockpin signalname="sf_ce" name="sf_ce" />
            <blockpin signalname="lcd_rw" name="lcd_rw" />
            <blockpin signalname="lcd_rs" name="lcd_rs" />
            <blockpin signalname="lcd_D(3:0)" name="lcd_D(3:0)" />
            <blockpin signalname="lcd_E" name="lcd_E" />
            <blockpin signalname="led7" name="lcdReady" />
        </block>
        <block symbolname="gnd" name="XLXI_14">
            <blockpin signalname="G" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1184" y="1200" name="XLXI_13" orien="R0">
        </instance>
        <branch name="led7">
            <wire x2="1584" y1="1168" y2="1168" x1="1568" />
            <wire x2="1632" y1="1168" y2="1168" x1="1584" />
            <wire x2="1648" y1="1168" y2="1168" x1="1632" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="976" type="branch" />
            <wire x2="1104" y1="976" y2="976" x1="1088" />
            <wire x2="1184" y1="976" y2="976" x1="1104" />
        </branch>
        <branch name="writeOutput">
            <wire x2="1104" y1="1040" y2="1040" x1="1088" />
            <wire x2="1184" y1="1040" y2="1040" x1="1104" />
        </branch>
        <branch name="RESET">
            <wire x2="1104" y1="912" y2="912" x1="1088" />
            <wire x2="1184" y1="912" y2="912" x1="1104" />
        </branch>
        <branch name="lcd_D(3:0)">
            <wire x2="1584" y1="1104" y2="1104" x1="1568" />
            <wire x2="1632" y1="1104" y2="1104" x1="1584" />
            <wire x2="1648" y1="1104" y2="1104" x1="1632" />
        </branch>
        <branch name="lcd_rs">
            <wire x2="1584" y1="976" y2="976" x1="1568" />
            <wire x2="1632" y1="976" y2="976" x1="1584" />
            <wire x2="1648" y1="976" y2="976" x1="1632" />
        </branch>
        <branch name="CLK">
            <wire x2="1104" y1="848" y2="848" x1="1088" />
            <wire x2="1184" y1="848" y2="848" x1="1104" />
        </branch>
        <branch name="lcd_E">
            <wire x2="1584" y1="1040" y2="1040" x1="1568" />
            <wire x2="1632" y1="1040" y2="1040" x1="1584" />
            <wire x2="1648" y1="1040" y2="1040" x1="1632" />
        </branch>
        <branch name="lcd_rw">
            <wire x2="1584" y1="912" y2="912" x1="1568" />
            <wire x2="1632" y1="912" y2="912" x1="1584" />
            <wire x2="1648" y1="912" y2="912" x1="1632" />
        </branch>
        <branch name="sf_ce">
            <wire x2="1584" y1="848" y2="848" x1="1568" />
            <wire x2="1632" y1="848" y2="848" x1="1584" />
            <wire x2="1648" y1="848" y2="848" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1648" y="1168" name="led7" orien="R0" />
        <iomarker fontsize="28" x="1088" y="1040" name="writeOutput" orien="R180" />
        <iomarker fontsize="28" x="1088" y="912" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="1088" y="848" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="1648" y="1104" name="lcd_D(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1648" y="1040" name="lcd_E" orien="R0" />
        <iomarker fontsize="28" x="1648" y="976" name="lcd_rs" orien="R0" />
        <iomarker fontsize="28" x="1648" y="912" name="lcd_rw" orien="R0" />
        <iomarker fontsize="28" x="1648" y="848" name="sf_ce" orien="R0" />
        <branch name="FPGAOut(15:0)">
            <wire x2="1184" y1="1104" y2="1104" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1152" y="1104" name="FPGAOut(15:0)" orien="R180" />
        <instance x="336" y="1424" name="XLXI_14" orien="R0" />
        <branch name="G">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="1280" type="branch" />
            <wire x2="432" y1="1280" y2="1280" x1="400" />
            <wire x2="400" y1="1280" y2="1296" x1="400" />
        </branch>
    </sheet>
</drawing>