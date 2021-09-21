<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_3(15:0)" />
        <signal name="XLXN_4(15:0)" />
        <signal name="XLXN_12(15:0)" />
        <signal name="Memout(15:0)" />
        <signal name="ALUSrcB(1:0)" />
        <signal name="SIGNExt" />
        <signal name="IROut(7:0)" />
        <signal name="SP(15:0)" />
        <signal name="IR15" />
        <signal name="BranchCycle" />
        <signal name="BranchCond(1:0)" />
        <signal name="DOBRANCH" />
        <signal name="ALUOp(2:0)" />
        <signal name="ALUDirectOut(15:0)" />
        <signal name="Zero" />
        <signal name="CLK" />
        <signal name="XLXN_43" />
        <signal name="ovfl" />
        <signal name="XLXN_48(1:0)" />
        <signal name="PC(15:0)" />
        <signal name="ACC(15:0)" />
        <signal name="XLXN_54(15:0)" />
        <signal name="XLXN_57(15:0)" />
        <signal name="PCSrc(1:0)" />
        <signal name="PCout(15:0)" />
        <signal name="ALUOut(15:0)" />
        <signal name="XLXN_70(15:0)" />
        <signal name="XLXN_71(15:0)" />
        <signal name="ALUSrcA(1:0)" />
        <port polarity="Input" name="Memout(15:0)" />
        <port polarity="Input" name="ALUSrcB(1:0)" />
        <port polarity="Input" name="SIGNExt" />
        <port polarity="Input" name="IROut(7:0)" />
        <port polarity="Input" name="SP(15:0)" />
        <port polarity="Input" name="IR15" />
        <port polarity="Input" name="BranchCycle" />
        <port polarity="Input" name="BranchCond(1:0)" />
        <port polarity="Output" name="DOBRANCH" />
        <port polarity="Input" name="ALUOp(2:0)" />
        <port polarity="Output" name="ALUDirectOut(15:0)" />
        <port polarity="Output" name="Zero" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="ovfl" />
        <port polarity="Input" name="PC(15:0)" />
        <port polarity="Input" name="ACC(15:0)" />
        <port polarity="Input" name="PCSrc(1:0)" />
        <port polarity="Output" name="PCout(15:0)" />
        <port polarity="Output" name="ALUOut(15:0)" />
        <port polarity="Input" name="ALUSrcA(1:0)" />
        <blockdef name="alu16b">
            <timestamp>2020-2-8T21:40:39</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Mux_4x2">
            <timestamp>2020-2-8T22:57:56</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
        <blockdef name="BLU">
            <timestamp>2020-2-8T21:43:52</timestamp>
            <rect width="304" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="Register16">
            <timestamp>2020-2-12T20:45:54</timestamp>
            <rect width="64" x="0" y="276" height="24" />
            <line x2="0" y1="288" y2="288" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="256" x="64" y="-192" height="512" />
        </blockdef>
        <blockdef name="Left_Shift_1b">
            <timestamp>2020-2-8T22:53:47</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-64" height="128" />
        </blockdef>
        <blockdef name="ALUSrcASelector">
            <timestamp>2020-2-8T23:54:26</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="Extender">
            <timestamp>2020-2-9T20:5:27</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <block symbolname="alu16b" name="ALU">
            <blockpin signalname="XLXN_70(15:0)" name="a(15:0)" />
            <blockpin signalname="XLXN_71(15:0)" name="b(15:0)" />
            <blockpin signalname="ALUOp(2:0)" name="op(2:0)" />
            <blockpin signalname="Zero" name="zero" />
            <blockpin signalname="ovfl" name="ovfl" />
            <blockpin signalname="ALUDirectOut(15:0)" name="r(15:0)" />
        </block>
        <block symbolname="BLU" name="BranchSelector">
            <blockpin signalname="BranchCycle" name="BranchCycle" />
            <blockpin signalname="ACC(15:0)" name="Acc(15:0)" />
            <blockpin signalname="BranchCond(1:0)" name="BranchCond(1:0)" />
            <blockpin signalname="DOBRANCH" name="DoBranch" />
        </block>
        <block symbolname="constant" name="XLXI_13">
            <attr value="2" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_4(15:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_18">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="Mux_4x2" name="ALUSrcAMux">
            <blockpin signalname="PC(15:0)" name="A(15:0)" />
            <blockpin signalname="SP(15:0)" name="B(15:0)" />
            <blockpin signalname="ACC(15:0)" name="C(15:0)" />
            <blockpin signalname="XLXN_54(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_48(1:0)" name="S(1:0)" />
            <blockpin signalname="XLXN_70(15:0)" name="o(15:0)" />
        </block>
        <block symbolname="Mux_4x2" name="PCSrcMux">
            <blockpin signalname="ACC(15:0)" name="A(15:0)" />
            <blockpin signalname="ALUDirectOut(15:0)" name="B(15:0)" />
            <blockpin signalname="ALUOut(15:0)" name="C(15:0)" />
            <blockpin signalname="XLXN_57(15:0)" name="D(15:0)" />
            <blockpin signalname="PCSrc(1:0)" name="S(1:0)" />
            <blockpin signalname="PCout(15:0)" name="o(15:0)" />
        </block>
        <block symbolname="Register16" name="ALUOutReg">
            <blockpin name="reset" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_43" name="RegWrite" />
            <blockpin signalname="ALUDirectOut(15:0)" name="d(15:0)" />
            <blockpin name="initialdata(15:0)" />
            <blockpin signalname="ALUOut(15:0)" name="r(15:0)" />
        </block>
        <block symbolname="Left_Shift_1b" name="ls1b">
            <blockpin signalname="XLXN_12(15:0)" name="immediate(15:0)" />
            <blockpin signalname="XLXN_3(15:0)" name="o(15:0)" />
        </block>
        <block symbolname="Mux_4x2" name="ALUSrcBMux">
            <blockpin signalname="XLXN_12(15:0)" name="A(15:0)" />
            <blockpin signalname="XLXN_3(15:0)" name="B(15:0)" />
            <blockpin signalname="XLXN_4(15:0)" name="C(15:0)" />
            <blockpin signalname="Memout(15:0)" name="D(15:0)" />
            <blockpin signalname="ALUSrcB(1:0)" name="S(1:0)" />
            <blockpin signalname="XLXN_71(15:0)" name="o(15:0)" />
        </block>
        <block symbolname="ALUSrcASelector" name="XLXI_20">
            <blockpin signalname="IR15" name="IR15" />
            <blockpin signalname="ALUSrcA(1:0)" name="ALUSrcA(1:0)" />
            <blockpin signalname="XLXN_48(1:0)" name="r(1:0)" />
        </block>
        <block symbolname="Extender" name="EXT">
            <blockpin signalname="SIGNExt" name="t" />
            <blockpin signalname="IROut(7:0)" name="Immediate(7:0)" />
            <blockpin signalname="XLXN_12(15:0)" name="o(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1760" y="1312" name="ALU" orien="R0">
        </instance>
        <instance x="1232" y="656" name="BranchSelector" orien="R0">
        </instance>
        <branch name="XLXN_3(15:0)">
            <wire x2="896" y1="1360" y2="1424" x1="896" />
            <wire x2="1232" y1="1424" y2="1424" x1="896" />
            <wire x2="944" y1="1360" y2="1360" x1="896" />
            <wire x2="944" y1="1360" y2="1536" x1="944" />
            <wire x2="944" y1="1536" y2="1536" x1="912" />
            <wire x2="1248" y1="1376" y2="1376" x1="1232" />
            <wire x2="1232" y1="1376" y2="1424" x1="1232" />
        </branch>
        <branch name="XLXN_4(15:0)">
            <wire x2="928" y1="1184" y2="1184" x1="640" />
            <wire x2="928" y1="1184" y2="1440" x1="928" />
            <wire x2="1248" y1="1440" y2="1440" x1="928" />
        </branch>
        <branch name="XLXN_12(15:0)">
            <wire x2="464" y1="1392" y2="1392" x1="448" />
            <wire x2="448" y1="1392" y2="1440" x1="448" />
            <wire x2="496" y1="1440" y2="1440" x1="448" />
            <wire x2="496" y1="1440" y2="1616" x1="496" />
            <wire x2="480" y1="1328" y2="1328" x1="464" />
            <wire x2="832" y1="1328" y2="1328" x1="480" />
            <wire x2="480" y1="1328" y2="1424" x1="480" />
            <wire x2="512" y1="1424" y2="1424" x1="480" />
            <wire x2="512" y1="1424" y2="1472" x1="512" />
            <wire x2="528" y1="1472" y2="1472" x1="512" />
            <wire x2="464" y1="1328" y2="1392" x1="464" />
            <wire x2="496" y1="1616" y2="1616" x1="464" />
            <wire x2="832" y1="1312" y2="1328" x1="832" />
            <wire x2="1248" y1="1312" y2="1312" x1="832" />
        </branch>
        <instance x="496" y="1152" name="XLXI_13" orien="R0">
        </instance>
        <branch name="Memout(15:0)">
            <wire x2="1248" y1="1504" y2="1504" x1="1168" />
        </branch>
        <iomarker fontsize="28" x="1168" y="1504" name="Memout(15:0)" orien="R180" />
        <branch name="ALUSrcB(1:0)">
            <wire x2="1248" y1="1568" y2="1568" x1="1168" />
        </branch>
        <iomarker fontsize="28" x="1168" y="1568" name="ALUSrcB(1:0)" orien="R180" />
        <branch name="SIGNExt">
            <wire x2="64" y1="1264" y2="1264" x1="32" />
            <wire x2="64" y1="1264" y2="1328" x1="64" />
            <wire x2="32" y1="1264" y2="1616" x1="32" />
            <wire x2="80" y1="1616" y2="1616" x1="32" />
            <wire x2="48" y1="1008" y2="1328" x1="48" />
            <wire x2="64" y1="1328" y2="1328" x1="48" />
            <wire x2="224" y1="1008" y2="1008" x1="48" />
        </branch>
        <iomarker fontsize="28" x="224" y="1008" name="SIGNExt" orien="R0" />
        <branch name="IROut(7:0)">
            <wire x2="16" y1="1072" y2="1392" x1="16" />
            <wire x2="64" y1="1392" y2="1392" x1="16" />
            <wire x2="64" y1="1392" y2="1552" x1="64" />
            <wire x2="80" y1="1552" y2="1552" x1="64" />
            <wire x2="224" y1="1072" y2="1072" x1="16" />
        </branch>
        <iomarker fontsize="28" x="224" y="1072" name="IROut(7:0)" orien="R0" />
        <branch name="SP(15:0)">
            <wire x2="1296" y1="976" y2="976" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="400" y="880" name="ALUSrcA(1:0)" orien="R180" />
        <iomarker fontsize="28" x="384" y="944" name="IR15" orien="R180" />
        <branch name="IR15">
            <wire x2="608" y1="944" y2="944" x1="384" />
        </branch>
        <branch name="BranchCycle">
            <wire x2="1232" y1="496" y2="496" x1="1072" />
        </branch>
        <branch name="BranchCond(1:0)">
            <wire x2="1232" y1="624" y2="624" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="1072" y="496" name="BranchCycle" orien="R180" />
        <iomarker fontsize="28" x="1072" y="624" name="BranchCond(1:0)" orien="R180" />
        <branch name="DOBRANCH">
            <wire x2="1696" y1="496" y2="496" x1="1664" />
        </branch>
        <iomarker fontsize="28" x="1696" y="496" name="DOBRANCH" orien="R0" />
        <branch name="ALUOp(2:0)">
            <wire x2="1760" y1="1280" y2="1280" x1="1744" />
            <wire x2="1744" y1="1280" y2="1360" x1="1744" />
            <wire x2="1760" y1="1360" y2="1360" x1="1744" />
        </branch>
        <iomarker fontsize="28" x="1760" y="1360" name="ALUOp(2:0)" orien="R0" />
        <branch name="ALUDirectOut(15:0)">
            <wire x2="2048" y1="624" y2="1088" x1="2048" />
            <wire x2="2256" y1="1088" y2="1088" x1="2048" />
            <wire x2="2256" y1="1088" y2="1280" x1="2256" />
            <wire x2="2256" y1="1280" y2="1360" x1="2256" />
            <wire x2="2256" y1="1360" y2="1408" x1="2256" />
            <wire x2="2368" y1="1408" y2="1408" x1="2256" />
            <wire x2="2912" y1="624" y2="624" x1="2048" />
            <wire x2="2256" y1="1280" y2="1280" x1="2144" />
            <wire x2="2256" y1="1360" y2="1360" x1="2240" />
            <wire x2="2240" y1="1360" y2="1568" x1="2240" />
            <wire x2="2256" y1="1568" y2="1568" x1="2240" />
            <wire x2="2912" y1="608" y2="624" x1="2912" />
            <wire x2="2992" y1="608" y2="608" x1="2912" />
        </branch>
        <branch name="Zero">
            <wire x2="2160" y1="1152" y2="1152" x1="2144" />
            <wire x2="2160" y1="1072" y2="1152" x1="2160" />
        </branch>
        <branch name="CLK">
            <wire x2="2352" y1="1104" y2="1152" x1="2352" />
            <wire x2="2368" y1="1152" y2="1152" x1="2352" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="2416" y1="976" y2="976" x1="2288" />
            <wire x2="2288" y1="976" y2="1216" x1="2288" />
            <wire x2="2368" y1="1216" y2="1216" x1="2288" />
            <wire x2="2416" y1="912" y2="912" x1="2336" />
            <wire x2="2416" y1="912" y2="976" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1072" name="Zero" orien="R270" />
        <branch name="ovfl">
            <wire x2="2176" y1="1216" y2="1216" x1="2144" />
            <wire x2="2224" y1="1216" y2="1216" x1="2176" />
            <wire x2="2224" y1="1072" y2="1216" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1072" name="ovfl" orien="R270" />
        <instance x="2192" y="880" name="XLXI_18" orien="R0">
        </instance>
        <instance x="1296" y="1200" name="ALUSrcAMux" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1200" y="976" name="SP(15:0)" orien="R180" />
        <branch name="XLXN_48(1:0)">
            <wire x2="1216" y1="880" y2="880" x1="992" />
            <wire x2="1216" y1="880" y2="1168" x1="1216" />
            <wire x2="1296" y1="1168" y2="1168" x1="1216" />
        </branch>
        <branch name="PC(15:0)">
            <wire x2="1248" y1="816" y2="912" x1="1248" />
            <wire x2="1296" y1="912" y2="912" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1248" y="816" name="PC(15:0)" orien="R270" />
        <branch name="ACC(15:0)">
            <wire x2="656" y1="256" y2="256" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="256" name="ACC(15:0)" orien="R180" />
        <branch name="ACC(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="560" type="branch" />
            <wire x2="1232" y1="560" y2="560" x1="1168" />
        </branch>
        <branch name="ACC(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="1040" type="branch" />
            <wire x2="1296" y1="1040" y2="1040" x1="1184" />
        </branch>
        <branch name="XLXN_54(15:0)">
            <wire x2="1296" y1="1104" y2="1104" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="624" y="304" name="PCSrc(1:0)" orien="R180" />
        <branch name="PCSrc(1:0)">
            <wire x2="704" y1="304" y2="304" x1="624" />
        </branch>
        <branch name="PCout(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3424" y="544" type="branch" />
            <wire x2="3408" y1="864" y2="864" x1="3376" />
            <wire x2="3424" y1="544" y2="544" x1="3408" />
            <wire x2="3408" y1="544" y2="864" x1="3408" />
        </branch>
        <branch name="PCout(15:0)">
            <wire x2="2656" y1="240" y2="240" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="2656" y="240" name="PCout(15:0)" orien="R0" />
        <instance x="2368" y="1312" name="ALUOutReg" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2352" y="1104" name="CLK" orien="R270" />
        <instance x="528" y="1504" name="ls1b" orien="R0">
        </instance>
        <instance x="1248" y="1600" name="ALUSrcBMux" orien="R0">
        </instance>
        <branch name="XLXN_70(15:0)">
            <wire x2="1712" y1="1232" y2="1232" x1="1680" />
            <wire x2="1712" y1="1152" y2="1232" x1="1712" />
            <wire x2="1760" y1="1152" y2="1152" x1="1712" />
        </branch>
        <branch name="XLXN_71(15:0)">
            <wire x2="1728" y1="1632" y2="1632" x1="1632" />
            <wire x2="1728" y1="1216" y2="1632" x1="1728" />
            <wire x2="1760" y1="1216" y2="1216" x1="1728" />
        </branch>
        <branch name="PCSrc(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2944" y="800" type="branch" />
            <wire x2="2960" y1="800" y2="800" x1="2944" />
            <wire x2="2992" y1="800" y2="800" x1="2960" />
        </branch>
        <branch name="ALUOut(15:0)">
            <wire x2="2768" y1="1344" y2="1344" x1="2752" />
            <wire x2="2832" y1="1344" y2="1344" x1="2768" />
            <wire x2="2864" y1="1344" y2="1344" x1="2832" />
            <wire x2="2832" y1="1344" y2="1360" x1="2832" />
            <wire x2="2960" y1="1360" y2="1360" x1="2832" />
            <wire x2="2864" y1="672" y2="1344" x1="2864" />
            <wire x2="2992" y1="672" y2="672" x1="2864" />
            <wire x2="2960" y1="1344" y2="1360" x1="2960" />
        </branch>
        <branch name="ACC(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="544" type="branch" />
            <wire x2="2928" y1="544" y2="544" x1="2912" />
            <wire x2="2992" y1="544" y2="544" x1="2928" />
        </branch>
        <instance x="2992" y="832" name="PCSrcMux" orien="R0">
        </instance>
        <branch name="XLXN_57(15:0)">
            <wire x2="2992" y1="736" y2="736" x1="2944" />
        </branch>
        <iomarker fontsize="28" x="2960" y="1344" name="ALUOut(15:0)" orien="R270" />
        <iomarker fontsize="28" x="2256" y="1568" name="ALUDirectOut(15:0)" orien="R0" />
        <instance x="608" y="1040" name="XLXI_20" orien="R0">
        </instance>
        <branch name="ALUSrcA(1:0)">
            <wire x2="528" y1="880" y2="880" x1="400" />
            <wire x2="528" y1="880" y2="1072" x1="528" />
            <wire x2="608" y1="1072" y2="1072" x1="528" />
        </branch>
        <instance x="80" y="1584" name="EXT" orien="R0">
        </instance>
    </sheet>
</drawing>