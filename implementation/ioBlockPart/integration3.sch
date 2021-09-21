<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="XLXN_6(1:0)" />
        <signal name="XLXN_8(1:0)" />
        <signal name="XLXN_9(2:0)" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12(1:0)" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19(1:0)" />
        <signal name="IROutBranch(15:0)">
        </signal>
        <signal name="IROutBranch(7:0)" />
        <signal name="IROutBranch(15)" />
        <signal name="XLXN_26" />
        <signal name="DataOut(15:0)">
        </signal>
        <signal name="XLXN_32" />
        <signal name="MemoutTest(15:0)">
        </signal>
        <signal name="XLXN_36" />
        <signal name="XLXN_37(1:0)" />
        <signal name="XLXN_42(15:0)" />
        <signal name="XLXN_43(15:0)" />
        <signal name="InTest(15:0)">
        </signal>
        <signal name="XLXN_48" />
        <signal name="FPGAIn(15:0)" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="PCWriteTest">
        </signal>
        <signal name="IRWriteTest">
        </signal>
        <signal name="XLXN_54" />
        <signal name="ACCTest(15:0)">
        </signal>
        <signal name="SPTest(15:0)">
        </signal>
        <signal name="XLXN_59(15:0)" />
        <signal name="FPGAOut(15:0)" />
        <signal name="MemWriteTest" />
        <signal name="reset" />
        <signal name="XLXN_83(15:0)" />
        <signal name="XLXN_84(15:0)" />
        <signal name="XLXN_98" />
        <signal name="MeminTest(15:0)">
        </signal>
        <signal name="ALUDirectOutTest(15:0)">
        </signal>
        <signal name="XLXN_100" />
        <signal name="XLXN_105" />
        <signal name="XLXN_108(15:0)" />
        <signal name="ALUOutTest(15:0)">
        </signal>
        <signal name="PCOutTest(15:0)">
        </signal>
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="FPGAIn(15:0)" />
        <port polarity="Output" name="FPGAOut(15:0)" />
        <port polarity="Output" name="MemWriteTest" />
        <port polarity="Input" name="reset" />
        <blockdef name="integrateStep1">
            <timestamp>2020-2-10T21:35:27</timestamp>
            <rect width="336" x="64" y="-1344" height="1344" />
            <line x2="0" y1="-1312" y2="-1312" x1="64" />
            <line x2="0" y1="-1104" y2="-1104" x1="64" />
            <line x2="0" y1="-896" y2="-896" x1="64" />
            <rect width="64" x="0" y="-700" height="24" />
            <line x2="0" y1="-688" y2="-688" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-284" height="24" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <rect width="64" x="0" y="-76" height="24" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="464" y1="-1312" y2="-1312" x1="400" />
            <line x2="464" y1="-1248" y2="-1248" x1="400" />
            <line x2="464" y1="-1184" y2="-1184" x1="400" />
            <line x2="464" y1="-1120" y2="-1120" x1="400" />
            <line x2="464" y1="-1056" y2="-1056" x1="400" />
            <line x2="464" y1="-992" y2="-992" x1="400" />
            <line x2="464" y1="-928" y2="-928" x1="400" />
            <line x2="464" y1="-864" y2="-864" x1="400" />
            <line x2="464" y1="-800" y2="-800" x1="400" />
            <line x2="464" y1="-736" y2="-736" x1="400" />
            <line x2="464" y1="-672" y2="-672" x1="400" />
            <rect width="64" x="400" y="-620" height="24" />
            <line x2="464" y1="-608" y2="-608" x1="400" />
            <rect width="64" x="400" y="-556" height="24" />
            <line x2="464" y1="-544" y2="-544" x1="400" />
            <rect width="64" x="400" y="-492" height="24" />
            <line x2="464" y1="-480" y2="-480" x1="400" />
            <rect width="64" x="400" y="-428" height="24" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <rect width="64" x="400" y="-364" height="24" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <rect width="64" x="400" y="-300" height="24" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="integrationStep2">
            <timestamp>2020-2-10T18:32:31</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="384" y="20" height="24" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <rect width="64" x="384" y="84" height="24" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <rect width="64" x="0" y="-940" height="24" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <rect width="64" x="0" y="-876" height="24" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <rect width="64" x="0" y="-748" height="24" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-928" y2="-928" x1="384" />
            <line x2="448" y1="-640" y2="-640" x1="384" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <rect width="64" x="384" y="-76" height="24" />
            <line x2="448" y1="-64" y2="-64" x1="384" />
            <rect width="320" x="64" y="-960" height="1088" />
        </blockdef>
        <blockdef name="Mux_2x1">
            <timestamp>2020-2-10T18:45:11</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="Register16">
            <timestamp>2020-2-11T18:19:12</timestamp>
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
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="integrateStep1" name="XLXI_1">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_98" name="DoBranch" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_59(15:0)" name="PCin(15:0)" />
            <blockpin signalname="SPTest(15:0)" name="SPOut(15:0)" />
            <blockpin signalname="ALUOutTest(15:0)" name="ALUOut(15:0)" />
            <blockpin signalname="MeminTest(15:0)" name="din(15:0)" />
            <blockpin signalname="XLXN_32" name="MemOutWrite" />
            <blockpin signalname="MemWriteTest" name="MemWrite" />
            <blockpin signalname="XLXN_50" name="ACCWrite" />
            <blockpin signalname="XLXN_51" name="SPWrite" />
            <blockpin signalname="XLXN_11" name="SignExt" />
            <blockpin signalname="PCWriteTest" name="PCWrite" />
            <blockpin signalname="IRWriteTest" name="IRWrite" />
            <blockpin signalname="XLXN_36" name="SPSrc" />
            <blockpin signalname="XLXN_18" name="BranchCycle" />
            <blockpin signalname="XLXN_26" name="MemData" />
            <blockpin signalname="XLXN_54" name="OutWrite" />
            <blockpin signalname="DataOut(15:0)" name="DataOut(15:0)" />
            <blockpin signalname="IROutBranch(15:0)" name="IROut(15:0)" />
            <blockpin signalname="PCOutTest(15:0)" name="PCOut(15:0)" />
            <blockpin signalname="XLXN_6(1:0)" name="ALUSrcA(1:0)" />
            <blockpin signalname="XLXN_12(1:0)" name="ALUSrcB(1:0)" />
            <blockpin signalname="XLXN_8(1:0)" name="PCSrc(1:0)" />
            <blockpin signalname="XLXN_9(2:0)" name="ALUOp(2:0)" />
            <blockpin signalname="XLXN_37(1:0)" name="ACCSrc(1:0)" />
            <blockpin signalname="XLXN_19(1:0)" name="BranchCond(1:0)" />
            <blockpin name="MemAddr(1:0)" />
        </block>
        <block symbolname="integrationStep2" name="XLXI_4">
            <blockpin signalname="MemoutTest(15:0)" name="Memout(15:0)" />
            <blockpin signalname="XLXN_12(1:0)" name="ALUSrcB(1:0)" />
            <blockpin signalname="XLXN_11" name="SIGNExt" />
            <blockpin signalname="IROutBranch(7:0)" name="IROut(7:0)" />
            <blockpin signalname="SPTest(15:0)" name="SP(15:0)" />
            <blockpin signalname="IROutBranch(15)" name="IR15" />
            <blockpin signalname="XLXN_18" name="BranchCycle" />
            <blockpin signalname="XLXN_19(1:0)" name="BranchCond(1:0)" />
            <blockpin signalname="XLXN_9(2:0)" name="ALUOp(2:0)" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="PCOutTest(15:0)" name="PC(15:0)" />
            <blockpin signalname="ACCTest(15:0)" name="ACC(15:0)" />
            <blockpin signalname="XLXN_8(1:0)" name="PCSrc(1:0)" />
            <blockpin signalname="XLXN_6(1:0)" name="ALUSrcA(1:0)" />
            <blockpin signalname="XLXN_98" name="DOBRANCH" />
            <blockpin signalname="ALUDirectOutTest(15:0)" name="ALUDirectOut(15:0)" />
            <blockpin name="Zero" />
            <blockpin name="ovfl" />
            <blockpin signalname="XLXN_59(15:0)" name="PCout(15:0)" />
            <blockpin signalname="ALUOutTest(15:0)" name="ALUOut(15:0)" />
        </block>
        <block symbolname="Mux_2x1" name="MemDataSrc">
            <blockpin signalname="XLXN_26" name="d" />
            <blockpin signalname="ACCTest(15:0)" name="A(15:0)" />
            <blockpin signalname="XLXN_108(15:0)" name="B(15:0)" />
            <blockpin signalname="MeminTest(15:0)" name="o(15:0)" />
        </block>
        <block symbolname="Register16" name="MemoutReg">
            <blockpin name="reset" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_32" name="RegWrite" />
            <blockpin signalname="DataOut(15:0)" name="d(15:0)" />
            <blockpin name="initialdata(15:0)" />
            <blockpin signalname="MemoutTest(15:0)" name="r(15:0)" />
        </block>
        <block symbolname="Mux_2x1" name="SPSrcMux">
            <blockpin signalname="XLXN_36" name="d" />
            <blockpin signalname="ALUOutTest(15:0)" name="A(15:0)" />
            <blockpin signalname="ALUDirectOutTest(15:0)" name="B(15:0)" />
            <blockpin signalname="XLXN_42(15:0)" name="o(15:0)" />
        </block>
        <block symbolname="Mux_4x2" name="ACCSrcMux">
            <blockpin signalname="ALUDirectOutTest(15:0)" name="A(15:0)" />
            <blockpin signalname="InTest(15:0)" name="B(15:0)" />
            <blockpin signalname="DataOut(15:0)" name="C(15:0)" />
            <blockpin name="D(15:0)" />
            <blockpin signalname="XLXN_37(1:0)" name="S(1:0)" />
            <blockpin signalname="XLXN_43(15:0)" name="o(15:0)" />
        </block>
        <block symbolname="Register16" name="FPGAInReg">
            <blockpin name="reset" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_48" name="RegWrite" />
            <blockpin signalname="FPGAIn(15:0)" name="d(15:0)" />
            <blockpin name="initialdata(15:0)" />
            <blockpin signalname="InTest(15:0)" name="r(15:0)" />
        </block>
        <block symbolname="constant" name="XLXI_17">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_18">
            <attr value="0000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_84(15:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_19">
            <attr value="03FE" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_83(15:0)" name="O" />
        </block>
        <block symbolname="Register16" name="XLXI_28">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_50" name="RegWrite" />
            <blockpin signalname="XLXN_43(15:0)" name="d(15:0)" />
            <blockpin signalname="XLXN_84(15:0)" name="initialdata(15:0)" />
            <blockpin signalname="ACCTest(15:0)" name="r(15:0)" />
        </block>
        <block symbolname="Register16" name="XLXI_30">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_51" name="RegWrite" />
            <blockpin signalname="XLXN_42(15:0)" name="d(15:0)" />
            <blockpin signalname="XLXN_83(15:0)" name="initialdata(15:0)" />
            <blockpin signalname="SPTest(15:0)" name="r(15:0)" />
        </block>
        <block symbolname="Register16" name="TEMP">
            <blockpin signalname="XLXN_105" name="reset" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_100" name="RegWrite" />
            <blockpin signalname="PCOutTest(15:0)" name="d(15:0)" />
            <blockpin name="initialdata(15:0)" />
            <blockpin signalname="XLXN_108(15:0)" name="r(15:0)" />
        </block>
        <block symbolname="constant" name="XLXI_34">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_100" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_35">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_105" name="O" />
        </block>
        <block symbolname="Register16" name="XLXI_31">
            <blockpin name="reset" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_54" name="RegWrite" />
            <blockpin signalname="ACCTest(15:0)" name="d(15:0)" />
            <blockpin name="initialdata(15:0)" />
            <blockpin signalname="FPGAOut(15:0)" name="r(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <branch name="CLK">
            <wire x2="720" y1="304" y2="304" x1="576" />
        </branch>
        <iomarker fontsize="28" x="576" y="304" name="CLK" orien="R180" />
        <instance x="2320" y="1520" name="XLXI_4" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1296" type="branch" />
            <wire x2="2320" y1="1296" y2="1296" x1="2256" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="944" type="branch" />
            <wire x2="528" y1="944" y2="944" x1="512" />
            <wire x2="560" y1="944" y2="944" x1="528" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1664" y1="1040" y2="1040" x1="1024" />
            <wire x2="1664" y1="1040" y2="1104" x1="1664" />
            <wire x2="2304" y1="1104" y2="1104" x1="1664" />
            <wire x2="2320" y1="1104" y2="1104" x1="2304" />
        </branch>
        <branch name="IROutBranch(15:0)">
            <wire x2="1104" y1="1296" y2="1296" x1="1024" />
            <wire x2="1120" y1="1296" y2="1296" x1="1104" />
            <wire x2="1168" y1="1296" y2="1296" x1="1120" />
            <wire x2="1216" y1="1296" y2="1296" x1="1168" />
        </branch>
        <bustap x2="1168" y1="1296" y2="1200" x1="1168" />
        <branch name="IROutBranch(7:0)">
            <wire x2="1168" y1="1120" y2="1200" x1="1168" />
            <wire x2="1744" y1="1120" y2="1120" x1="1168" />
            <wire x2="1744" y1="784" y2="1120" x1="1744" />
            <wire x2="2320" y1="784" y2="784" x1="1744" />
        </branch>
        <bustap x2="1120" y1="1296" y2="1392" x1="1120" />
        <branch name="IROutBranch(15)">
            <wire x2="1120" y1="1392" y2="1472" x1="1120" />
            <wire x2="1792" y1="1472" y2="1472" x1="1120" />
            <wire x2="1792" y1="1472" y2="1552" x1="1792" />
            <wire x2="2320" y1="1552" y2="1552" x1="1792" />
        </branch>
        <instance x="1232" y="2128" name="MemoutReg" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="1968" type="branch" />
            <wire x2="1232" y1="1968" y2="1968" x1="1184" />
        </branch>
        <branch name="MemoutTest(15:0)">
            <wire x2="1728" y1="2160" y2="2160" x1="1616" />
            <wire x2="1968" y1="2160" y2="2160" x1="1728" />
            <wire x2="1728" y1="2160" y2="2240" x1="1728" />
            <wire x2="1776" y1="2240" y2="2240" x1="1728" />
            <wire x2="1968" y1="592" y2="2160" x1="1968" />
            <wire x2="2320" y1="592" y2="592" x1="1968" />
        </branch>
        <instance x="2128" y="2192" name="SPSrcMux" orien="R0">
        </instance>
        <instance x="2128" y="2624" name="ACCSrcMux" orien="R0">
        </instance>
        <branch name="XLXN_36">
            <wire x2="1632" y1="976" y2="976" x1="1024" />
            <wire x2="1632" y1="976" y2="2032" x1="1632" />
            <wire x2="2112" y1="2032" y2="2032" x1="1632" />
            <wire x2="2128" y1="2032" y2="2032" x1="2112" />
        </branch>
        <instance x="512" y="2336" name="FPGAInReg" orien="R0">
        </instance>
        <branch name="XLXN_42(15:0)">
            <wire x2="2528" y1="2032" y2="2032" x1="2512" />
            <wire x2="2528" y1="2032" y2="2288" x1="2528" />
            <wire x2="2880" y1="2288" y2="2288" x1="2528" />
        </branch>
        <branch name="XLXN_43(15:0)">
            <wire x2="2528" y1="2656" y2="2656" x1="2512" />
            <wire x2="2528" y1="2656" y2="2848" x1="2528" />
            <wire x2="2880" y1="2848" y2="2848" x1="2528" />
        </branch>
        <branch name="InTest(15:0)">
            <wire x2="960" y1="2368" y2="2368" x1="896" />
            <wire x2="1504" y1="2368" y2="2368" x1="960" />
            <wire x2="1504" y1="2368" y2="2400" x1="1504" />
            <wire x2="2128" y1="2400" y2="2400" x1="1504" />
            <wire x2="960" y1="2368" y2="2608" x1="960" />
            <wire x2="976" y1="2608" y2="2608" x1="960" />
            <wire x2="1024" y1="2608" y2="2608" x1="976" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="448" y="2176" type="branch" />
            <wire x2="512" y1="2176" y2="2176" x1="448" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="1984" type="branch" />
            <wire x2="2720" y1="1984" y2="1984" x1="2704" />
            <wire x2="2720" y1="1984" y2="2032" x1="2720" />
            <wire x2="2880" y1="2032" y2="2032" x1="2720" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="2368" type="branch" />
            <wire x2="2720" y1="2368" y2="2592" x1="2720" />
            <wire x2="2880" y1="2592" y2="2592" x1="2720" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="496" y1="2256" y2="2256" x1="288" />
            <wire x2="512" y1="2240" y2="2240" x1="496" />
            <wire x2="496" y1="2240" y2="2256" x1="496" />
        </branch>
        <branch name="FPGAIn(15:0)">
            <wire x2="512" y1="2432" y2="2432" x1="464" />
        </branch>
        <iomarker fontsize="28" x="464" y="2432" name="FPGAIn(15:0)" orien="R180" />
        <branch name="PCWriteTest">
            <wire x2="1088" y1="848" y2="848" x1="1024" />
            <wire x2="1104" y1="848" y2="848" x1="1088" />
        </branch>
        <branch name="IRWriteTest">
            <wire x2="1088" y1="912" y2="912" x1="1024" />
            <wire x2="1104" y1="912" y2="912" x1="1088" />
        </branch>
        <branch name="ACCTest(15:0)">
            <wire x2="64" y1="1840" y2="1840" x1="32" />
            <wire x2="32" y1="1840" y2="3136" x1="32" />
            <wire x2="3344" y1="3136" y2="3136" x1="32" />
            <wire x2="2272" y1="528" y2="1424" x1="2272" />
            <wire x2="2320" y1="1424" y2="1424" x1="2272" />
            <wire x2="3504" y1="528" y2="528" x1="2272" />
            <wire x2="3504" y1="528" y2="2352" x1="3504" />
            <wire x2="3056" y1="1568" y2="1568" x1="2976" />
            <wire x2="2976" y1="1568" y2="1744" x1="2976" />
            <wire x2="3328" y1="1744" y2="1744" x1="2976" />
            <wire x2="3328" y1="1744" y2="2352" x1="3328" />
            <wire x2="3328" y1="2352" y2="2560" x1="3328" />
            <wire x2="3424" y1="2560" y2="2560" x1="3328" />
            <wire x2="3328" y1="2560" y2="2752" x1="3328" />
            <wire x2="3328" y1="2752" y2="2784" x1="3328" />
            <wire x2="3344" y1="2752" y2="2752" x1="3328" />
            <wire x2="3344" y1="2752" y2="3136" x1="3344" />
            <wire x2="3504" y1="2352" y2="2352" x1="3328" />
            <wire x2="3328" y1="2784" y2="2784" x1="3264" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3008" y="1472" type="branch" />
            <wire x2="3024" y1="1472" y2="1472" x1="3008" />
            <wire x2="3056" y1="1312" y2="1312" x1="3024" />
            <wire x2="3024" y1="1312" y2="1472" x1="3024" />
        </branch>
        <branch name="FPGAOut(15:0)">
            <wire x2="3472" y1="1504" y2="1504" x1="3440" />
            <wire x2="3472" y1="1504" y2="1664" x1="3472" />
            <wire x2="3488" y1="1664" y2="1664" x1="3472" />
        </branch>
        <iomarker fontsize="28" x="3488" y="1664" name="FPGAOut(15:0)" orien="R0" />
        <branch name="MemWriteTest">
            <wire x2="1104" y1="592" y2="592" x1="1024" />
            <wire x2="1120" y1="592" y2="592" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1120" y="592" name="MemWriteTest" orien="R0" />
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2832" y="2304" type="branch" />
            <wire x2="2848" y1="2304" y2="2304" x1="2832" />
            <wire x2="2848" y1="2304" y2="2352" x1="2848" />
            <wire x2="2880" y1="2352" y2="2352" x1="2848" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="2912" type="branch" />
            <wire x2="2832" y1="2912" y2="2912" x1="2816" />
            <wire x2="2880" y1="2912" y2="2912" x1="2832" />
        </branch>
        <instance x="2672" y="2944" name="XLXI_18" orien="R0">
        </instance>
        <iomarker fontsize="28" x="272" y="528" name="reset" orien="R180" />
        <branch name="reset">
            <wire x2="288" y1="528" y2="528" x1="272" />
            <wire x2="336" y1="528" y2="528" x1="288" />
            <wire x2="544" y1="528" y2="528" x1="336" />
            <wire x2="560" y1="528" y2="528" x1="544" />
        </branch>
        <instance x="2880" y="2752" name="XLXI_28" orien="R0">
        </instance>
        <instance x="2880" y="2192" name="XLXI_30" orien="R0">
        </instance>
        <branch name="XLXN_83(15:0)">
            <wire x2="2864" y1="2448" y2="2448" x1="2768" />
            <wire x2="2864" y1="2448" y2="2480" x1="2864" />
            <wire x2="2880" y1="2480" y2="2480" x1="2864" />
        </branch>
        <branch name="XLXN_84(15:0)">
            <wire x2="2848" y1="2976" y2="2976" x1="2816" />
            <wire x2="2848" y1="2976" y2="3040" x1="2848" />
            <wire x2="2880" y1="3040" y2="3040" x1="2848" />
        </branch>
        <instance x="144" y="2224" name="XLXI_17" orien="R0">
        </instance>
        <branch name="XLXN_26">
            <wire x2="16" y1="448" y2="1776" x1="16" />
            <wire x2="48" y1="1776" y2="1776" x1="16" />
            <wire x2="64" y1="1776" y2="1776" x1="48" />
            <wire x2="1488" y1="448" y2="448" x1="16" />
            <wire x2="1488" y1="448" y2="1104" x1="1488" />
            <wire x2="1488" y1="1104" y2="1104" x1="1024" />
        </branch>
        <instance x="64" y="1936" name="MemDataSrc" orien="R0">
        </instance>
        <branch name="XLXN_19(1:0)">
            <wire x2="1648" y1="1744" y2="1744" x1="1024" />
            <wire x2="2304" y1="1168" y2="1168" x1="1648" />
            <wire x2="2320" y1="1168" y2="1168" x1="2304" />
            <wire x2="1648" y1="1168" y2="1744" x1="1648" />
        </branch>
        <branch name="XLXN_37(1:0)">
            <wire x2="1664" y1="1680" y2="1680" x1="1024" />
            <wire x2="1664" y1="1680" y2="2592" x1="1664" />
            <wire x2="2112" y1="2592" y2="2592" x1="1664" />
            <wire x2="2128" y1="2592" y2="2592" x1="2112" />
        </branch>
        <branch name="XLXN_9(2:0)">
            <wire x2="1664" y1="1616" y2="1616" x1="1024" />
            <wire x2="2304" y1="1232" y2="1232" x1="1664" />
            <wire x2="2320" y1="1232" y2="1232" x1="2304" />
            <wire x2="1664" y1="1232" y2="1616" x1="1664" />
        </branch>
        <branch name="XLXN_8(1:0)">
            <wire x2="1712" y1="1552" y2="1552" x1="1024" />
            <wire x2="2304" y1="1488" y2="1488" x1="1712" />
            <wire x2="2320" y1="1488" y2="1488" x1="2304" />
            <wire x2="1712" y1="1488" y2="1552" x1="1712" />
        </branch>
        <branch name="XLXN_12(1:0)">
            <wire x2="1040" y1="1488" y2="1488" x1="1024" />
            <wire x2="1680" y1="1488" y2="1488" x1="1040" />
            <wire x2="2304" y1="656" y2="656" x1="1680" />
            <wire x2="2320" y1="656" y2="656" x1="2304" />
            <wire x2="1680" y1="656" y2="1488" x1="1680" />
        </branch>
        <branch name="XLXN_6(1:0)">
            <wire x2="1040" y1="1424" y2="1424" x1="1024" />
            <wire x2="1696" y1="1424" y2="1424" x1="1040" />
            <wire x2="1696" y1="1424" y2="1616" x1="1696" />
            <wire x2="2304" y1="1616" y2="1616" x1="1696" />
            <wire x2="2320" y1="1616" y2="1616" x1="2304" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="1072" y1="1168" y2="1168" x1="1024" />
            <wire x2="2816" y1="512" y2="512" x1="1072" />
            <wire x2="2816" y1="512" y2="1376" x1="2816" />
            <wire x2="3040" y1="1376" y2="1376" x1="2816" />
            <wire x2="3056" y1="1376" y2="1376" x1="3040" />
            <wire x2="1072" y1="512" y2="1168" x1="1072" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1664" y1="784" y2="784" x1="1024" />
            <wire x2="2304" y1="720" y2="720" x1="1664" />
            <wire x2="2320" y1="720" y2="720" x1="2304" />
            <wire x2="1664" y1="720" y2="784" x1="1664" />
        </branch>
        <branch name="XLXN_51">
            <wire x2="1056" y1="720" y2="720" x1="1024" />
            <wire x2="2864" y1="496" y2="496" x1="1056" />
            <wire x2="2864" y1="496" y2="2096" x1="2864" />
            <wire x2="2880" y1="2096" y2="2096" x1="2864" />
            <wire x2="1056" y1="496" y2="720" x1="1056" />
        </branch>
        <branch name="XLXN_50">
            <wire x2="1040" y1="656" y2="656" x1="1024" />
            <wire x2="1616" y1="656" y2="656" x1="1040" />
            <wire x2="1616" y1="656" y2="1712" x1="1616" />
            <wire x2="2608" y1="1712" y2="1712" x1="1616" />
            <wire x2="2608" y1="1712" y2="2656" x1="2608" />
            <wire x2="2864" y1="2656" y2="2656" x1="2608" />
            <wire x2="2880" y1="2656" y2="2656" x1="2864" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="1200" y1="528" y2="528" x1="1024" />
            <wire x2="1200" y1="528" y2="2032" x1="1200" />
            <wire x2="1216" y1="2032" y2="2032" x1="1200" />
            <wire x2="1232" y1="2032" y2="2032" x1="1216" />
        </branch>
        <branch name="SPTest(15:0)">
            <wire x2="528" y1="1360" y2="1792" x1="528" />
            <wire x2="528" y1="1792" y2="1904" x1="528" />
            <wire x2="3296" y1="1904" y2="1904" x1="528" />
            <wire x2="3296" y1="1904" y2="2128" x1="3296" />
            <wire x2="3312" y1="2128" y2="2128" x1="3296" />
            <wire x2="3312" y1="2128" y2="2176" x1="3312" />
            <wire x2="3408" y1="2176" y2="2176" x1="3312" />
            <wire x2="3312" y1="2176" y2="2224" x1="3312" />
            <wire x2="560" y1="1360" y2="1360" x1="528" />
            <wire x2="2320" y1="848" y2="848" x1="2192" />
            <wire x2="2192" y1="848" y2="1824" x1="2192" />
            <wire x2="3312" y1="1824" y2="1824" x1="2192" />
            <wire x2="3312" y1="1824" y2="2128" x1="3312" />
            <wire x2="3312" y1="2224" y2="2224" x1="3264" />
        </branch>
        <branch name="XLXN_59(15:0)">
            <wire x2="2800" y1="432" y2="432" x1="496" />
            <wire x2="2800" y1="432" y2="1456" x1="2800" />
            <wire x2="496" y1="432" y2="1152" x1="496" />
            <wire x2="560" y1="1152" y2="1152" x1="496" />
            <wire x2="2784" y1="1456" y2="1456" x1="2768" />
            <wire x2="2800" y1="1456" y2="1456" x1="2784" />
        </branch>
        <branch name="XLXN_98">
            <wire x2="2784" y1="480" y2="480" x1="512" />
            <wire x2="2784" y1="480" y2="592" x1="2784" />
            <wire x2="512" y1="480" y2="736" x1="512" />
            <wire x2="560" y1="736" y2="736" x1="512" />
            <wire x2="2784" y1="592" y2="592" x1="2768" />
        </branch>
        <instance x="560" y="1840" name="XLXI_1" orien="R0">
        </instance>
        <branch name="MeminTest(15:0)">
            <wire x2="480" y1="1776" y2="1776" x1="448" />
            <wire x2="512" y1="1776" y2="1776" x1="480" />
            <wire x2="480" y1="1776" y2="1968" x1="480" />
            <wire x2="640" y1="1968" y2="1968" x1="480" />
            <wire x2="512" y1="1712" y2="1776" x1="512" />
            <wire x2="544" y1="1712" y2="1712" x1="512" />
            <wire x2="544" y1="1712" y2="1776" x1="544" />
            <wire x2="560" y1="1776" y2="1776" x1="544" />
        </branch>
        <branch name="ALUDirectOutTest(15:0)">
            <wire x2="2128" y1="2160" y2="2160" x1="2080" />
            <wire x2="2080" y1="2160" y2="2256" x1="2080" />
            <wire x2="2128" y1="2256" y2="2256" x1="2080" />
            <wire x2="2800" y1="2256" y2="2256" x1="2128" />
            <wire x2="2128" y1="2240" y2="2240" x1="2112" />
            <wire x2="2128" y1="2240" y2="2256" x1="2128" />
            <wire x2="2112" y1="2240" y2="2336" x1="2112" />
            <wire x2="2128" y1="2336" y2="2336" x1="2112" />
            <wire x2="2800" y1="1552" y2="1552" x1="2768" />
            <wire x2="2800" y1="1552" y2="2256" x1="2800" />
            <wire x2="2976" y1="1552" y2="1552" x1="2800" />
            <wire x2="2976" y1="1104" y2="1552" x1="2976" />
            <wire x2="3152" y1="1104" y2="1104" x1="2976" />
        </branch>
        <branch name="DataOut(15:0)">
            <wire x2="1056" y1="1232" y2="1232" x1="1024" />
            <wire x2="1056" y1="1232" y2="2224" x1="1056" />
            <wire x2="1120" y1="2224" y2="2224" x1="1056" />
            <wire x2="1232" y1="2224" y2="2224" x1="1120" />
            <wire x2="1120" y1="2224" y2="2464" x1="1120" />
            <wire x2="1280" y1="2464" y2="2464" x1="1120" />
            <wire x2="2128" y1="2464" y2="2464" x1="1280" />
            <wire x2="1280" y1="2464" y2="2720" x1="1280" />
            <wire x2="1360" y1="2720" y2="2720" x1="1280" />
        </branch>
        <instance x="2624" y="2416" name="XLXI_19" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="48" y="816" type="branch" />
            <wire x2="64" y1="816" y2="816" x1="48" />
            <wire x2="80" y1="800" y2="800" x1="64" />
            <wire x2="64" y1="800" y2="816" x1="64" />
        </branch>
        <instance x="64" y="1392" name="XLXI_34" orien="R0">
        </instance>
        <instance x="64" y="1488" name="XLXI_35" orien="R0">
        </instance>
        <instance x="80" y="960" name="TEMP" orien="R0">
        </instance>
        <branch name="XLXN_100">
            <wire x2="80" y1="864" y2="864" x1="32" />
            <wire x2="32" y1="864" y2="1344" x1="32" />
            <wire x2="224" y1="1344" y2="1344" x1="32" />
            <wire x2="224" y1="1344" y2="1424" x1="224" />
            <wire x2="224" y1="1424" y2="1424" x1="208" />
        </branch>
        <branch name="XLXN_105">
            <wire x2="80" y1="1120" y2="1120" x1="64" />
            <wire x2="64" y1="1120" y2="1312" x1="64" />
            <wire x2="304" y1="1312" y2="1312" x1="64" />
            <wire x2="304" y1="1312" y2="1520" x1="304" />
            <wire x2="304" y1="1520" y2="1520" x1="208" />
        </branch>
        <branch name="XLXN_108(15:0)">
            <wire x2="16" y1="1792" y2="1904" x1="16" />
            <wire x2="64" y1="1904" y2="1904" x1="16" />
            <wire x2="32" y1="1792" y2="1792" x1="16" />
            <wire x2="32" y1="1648" y2="1792" x1="32" />
            <wire x2="544" y1="1648" y2="1648" x1="32" />
            <wire x2="544" y1="992" y2="992" x1="464" />
            <wire x2="544" y1="992" y2="1648" x1="544" />
        </branch>
        <branch name="ALUOutTest(15:0)">
            <wire x2="2832" y1="416" y2="416" x1="480" />
            <wire x2="2832" y1="416" y2="1616" x1="2832" />
            <wire x2="2912" y1="1616" y2="1616" x1="2832" />
            <wire x2="2960" y1="1616" y2="1616" x1="2912" />
            <wire x2="480" y1="416" y2="912" x1="480" />
            <wire x2="480" y1="912" y2="1568" x1="480" />
            <wire x2="560" y1="1568" y2="1568" x1="480" />
            <wire x2="2128" y1="2096" y2="2096" x1="2064" />
            <wire x2="2064" y1="2096" y2="2272" x1="2064" />
            <wire x2="2816" y1="2272" y2="2272" x1="2064" />
            <wire x2="2816" y1="1616" y2="1616" x1="2768" />
            <wire x2="2832" y1="1616" y2="1616" x1="2816" />
            <wire x2="2816" y1="1616" y2="2272" x1="2816" />
            <wire x2="2960" y1="992" y2="1616" x1="2960" />
            <wire x2="3136" y1="992" y2="992" x1="2960" />
        </branch>
        <branch name="PCOutTest(15:0)">
            <wire x2="80" y1="1056" y2="1056" x1="48" />
            <wire x2="48" y1="1056" y2="1328" x1="48" />
            <wire x2="496" y1="1328" y2="1328" x1="48" />
            <wire x2="496" y1="1328" y2="1856" x1="496" />
            <wire x2="1168" y1="1856" y2="1856" x1="496" />
            <wire x2="1088" y1="1360" y2="1360" x1="1024" />
            <wire x2="1088" y1="1360" y2="1456" x1="1088" />
            <wire x2="1184" y1="1456" y2="1456" x1="1088" />
            <wire x2="1168" y1="1344" y2="1856" x1="1168" />
            <wire x2="1264" y1="1344" y2="1344" x1="1168" />
            <wire x2="1264" y1="1344" y2="1360" x1="1264" />
            <wire x2="1328" y1="1360" y2="1360" x1="1264" />
            <wire x2="1264" y1="1360" y2="1456" x1="1264" />
            <wire x2="1760" y1="1456" y2="1456" x1="1264" />
            <wire x2="1184" y1="1360" y2="1456" x1="1184" />
            <wire x2="1264" y1="1360" y2="1360" x1="1184" />
            <wire x2="1760" y1="1360" y2="1456" x1="1760" />
            <wire x2="2320" y1="1360" y2="1360" x1="1760" />
        </branch>
        <instance x="3056" y="1472" name="XLXI_31" orien="R0">
        </instance>
    </sheet>
</drawing>