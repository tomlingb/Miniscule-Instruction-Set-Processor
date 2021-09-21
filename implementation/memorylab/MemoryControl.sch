<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="addra(9:0)" />
        <signal name="dina(15:0)" />
        <signal name="wea(0:0)" />
        <signal name="clk" />
        <signal name="ALUSrc" />
        <signal name="MemtoReg" />
        <signal name="RegDst" />
        <signal name="RegWrite" />
        <signal name="MemRead" />
        <signal name="MemWrite" />
        <signal name="Branch" />
        <signal name="douta(15:0)" />
        <signal name="douta(5:0)" />
        <signal name="XLXN_21" />
        <port polarity="Input" name="addra(9:0)" />
        <port polarity="Input" name="dina(15:0)" />
        <port polarity="Input" name="wea(0:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="ALUSrc" />
        <port polarity="Output" name="MemtoReg" />
        <port polarity="Output" name="RegDst" />
        <port polarity="Output" name="RegWrite" />
        <port polarity="Output" name="MemRead" />
        <port polarity="Output" name="MemWrite" />
        <port polarity="Output" name="Branch" />
        <blockdef name="blockmemory16kx1">
            <timestamp>2020-1-28T15:15:28</timestamp>
            <rect width="512" x="32" y="32" height="1344" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="MIPS_control_unit">
            <timestamp>2020-1-31T1:10:5</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
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
        <block symbolname="blockmemory16kx1" name="XLXI_1">
            <blockpin signalname="addra(9:0)" name="addra(9:0)" />
            <blockpin signalname="dina(15:0)" name="dina(15:0)" />
            <blockpin signalname="wea(0:0)" name="wea(0:0)" />
            <blockpin signalname="clk" name="clka" />
            <blockpin signalname="douta(15:0)" name="douta(15:0)" />
        </block>
        <block symbolname="MIPS_control_unit" name="XLXI_2">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="XLXN_21" name="Reset" />
            <blockpin signalname="douta(5:0)" name="Opcode(5:0)" />
            <blockpin signalname="ALUSrc" name="ALUSrc" />
            <blockpin signalname="MemtoReg" name="MemtoReg" />
            <blockpin signalname="RegDst" name="RegDst" />
            <blockpin signalname="RegWrite" name="RegWrite" />
            <blockpin signalname="MemRead" name="MemRead" />
            <blockpin signalname="MemWrite" name="MemWrite" />
            <blockpin signalname="Branch" name="Branch" />
        </block>
        <block symbolname="gnd" name="XLXI_3">
            <blockpin signalname="XLXN_21" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="544" y="480" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2128" y="1056" name="XLXI_2" orien="R0">
        </instance>
        <branch name="addra(9:0)">
            <wire x2="544" y1="560" y2="560" x1="512" />
        </branch>
        <iomarker fontsize="28" x="512" y="560" name="addra(9:0)" orien="R180" />
        <branch name="dina(15:0)">
            <wire x2="544" y1="592" y2="592" x1="512" />
        </branch>
        <iomarker fontsize="28" x="512" y="592" name="dina(15:0)" orien="R180" />
        <branch name="wea(0:0)">
            <wire x2="544" y1="688" y2="688" x1="512" />
        </branch>
        <iomarker fontsize="28" x="512" y="688" name="wea(0:0)" orien="R180" />
        <branch name="clk">
            <wire x2="496" y1="752" y2="752" x1="448" />
            <wire x2="528" y1="752" y2="752" x1="496" />
            <wire x2="544" y1="752" y2="752" x1="528" />
            <wire x2="496" y1="736" y2="752" x1="496" />
            <wire x2="528" y1="736" y2="736" x1="496" />
            <wire x2="512" y1="368" y2="464" x1="512" />
            <wire x2="528" y1="464" y2="464" x1="512" />
            <wire x2="528" y1="464" y2="736" x1="528" />
            <wire x2="2048" y1="368" y2="368" x1="512" />
            <wire x2="2048" y1="368" y2="416" x1="2048" />
            <wire x2="2048" y1="416" y2="640" x1="2048" />
            <wire x2="2128" y1="640" y2="640" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="448" y="752" name="clk" orien="R180" />
        <branch name="ALUSrc">
            <wire x2="2544" y1="640" y2="640" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="640" name="ALUSrc" orien="R0" />
        <branch name="MemtoReg">
            <wire x2="2544" y1="704" y2="704" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="704" name="MemtoReg" orien="R0" />
        <branch name="RegDst">
            <wire x2="2544" y1="768" y2="768" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="768" name="RegDst" orien="R0" />
        <branch name="RegWrite">
            <wire x2="2544" y1="832" y2="832" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="832" name="RegWrite" orien="R0" />
        <branch name="MemRead">
            <wire x2="2544" y1="896" y2="896" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="896" name="MemRead" orien="R0" />
        <branch name="MemWrite">
            <wire x2="2544" y1="960" y2="960" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="960" name="MemWrite" orien="R0" />
        <branch name="Branch">
            <wire x2="2544" y1="1024" y2="1024" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1024" name="Branch" orien="R0" />
        <branch name="douta(15:0)">
            <wire x2="1488" y1="560" y2="560" x1="1120" />
            <wire x2="1488" y1="560" y2="640" x1="1488" />
            <wire x2="1488" y1="640" y2="672" x1="1488" />
        </branch>
        <bustap x2="1584" y1="640" y2="640" x1="1488" />
        <branch name="douta(5:0)">
            <wire x2="1856" y1="640" y2="640" x1="1584" />
            <wire x2="1856" y1="640" y2="1024" x1="1856" />
            <wire x2="2128" y1="1024" y2="1024" x1="1856" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="2128" y1="832" y2="832" x1="2048" />
            <wire x2="2048" y1="832" y2="864" x1="2048" />
        </branch>
        <instance x="1984" y="992" name="XLXI_3" orien="R0" />
    </sheet>
</drawing>