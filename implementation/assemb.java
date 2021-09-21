package assember;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Scanner;

/** 

*  

 */ 

  

/** 

* @author Xuanren Zhang 

* 

*/ 

public class assemb { 
	
	static HashMap<String,Integer> map;
	

                /** 

                * @param args 

                */ 

                public static void main(String[] args) { 
                	
                				String input =  
                						
                						"SUM:\r\n" + 
                						"lw 1 #load x \r\n" + 
                						"binz A #stay if x ==0 \r\n" + 
                						"sw -1 #make return value 0 \r\n" + 
                						"lw 0 \r\n" + 
                						"J #return \r\n" + 
                						"A:\r\n" + 
                						"addi -1  \r\n" + 
                						"sw -1 #store x-1 as argument \r\n" + 
                						"spi -2 #prepare sp \r\n" + 
                						"lui SUM \r\n" + 
                						"ori SUM \r\n" + 
                						"Jal #call sum \r\n" + 
                						"spi 2 #move sp back \r\n" + 
                						"lw -3 #load result \r\n" + 
                						"add 1 #acc = x + result \r\n" + 
                						"sw -1 #set return value \r\n" + 
                						"lw 0 \r\n" + 
                						"J #return \r\n" + 
                						"";
                				
                				int index = 0x0000;

                				int i = index;
                				StringBuilder sb = new StringBuilder();
                				
                                Scanner sc = new Scanner(input);

                                map = new HashMap<String, Integer>();
                                while(sc.hasNextLine()) {
                                	String s = sc.nextLine().toLowerCase();
                                	if( s.contains(":")) {
                                		String[] st = s.split("\\s+");
                                		s = st[0];
                                		s = s.substring(0, s.length()-1);
                                		map.put(s, i);
                                	} else {
                                		if(s.matches("li\\s+-?\\d+\\s*(#.*)?$")) {
                                			i+=4;
                                			String[] str =s.split("\\s+");
                                			int q = Integer.parseInt(str[1]);
                                			String string1 = Integer.toBinaryString(q);
                                			String bin = makezero(string1,16);
                                			byte a = (byte)Integer.parseUnsignedInt(makezero(bin.substring(bin.length() -16, bin.length()-8),8),2);
                                			byte b = (byte)Integer.parseUnsignedInt(makezero(bin.substring(bin.length() -8, bin.length()),8),2);
                                			sb.append("lui " + a + "\n");
                                			sb.append("ori " + b + "\n");
                                		} else if(s.matches("la\\s+\\w+\\s*(#.*)?$")) {
                                			i+=4;
                                			String[] str = s.split("\\s+");
                                			
                                			
                                			sb.append("lui " + str[1] + "\n");
                                			sb.append("ori " + str[1] + "\n");
                                		}
                                		else if(s.matches("^j.*")||!s.matches("^.\\s*(#.*)?")) {
                                			i+=2;
                                			sb.append(s+"\n");
                                		}
                                	}
                                	
                                }
                                
                                i = index;
                                sc = new Scanner(sb.toString());
                                ArrayList<String> arr = new ArrayList<String>();
                                while(sc.hasNextLine()) {
                                	String s = sc.nextLine().toLowerCase();
                                	if(s.contains(":") || s.matches("^\\s*(#.*)?$")) 
                                		continue;
                                 
                                	String line = convert(s, i);
                                	arr.add(line);
                                	
                                	System.out.print("0x"+Integer.toHexString(i) + " | 0b"+ line + "\n");
                                	i+= 2;
                                }
                                System.out.println();
                                System.out.println("MEMORY_INITIALIZATION_RADIX=2;\r\n" + 
                                		"MEMORY_INITIALIZATION_VECTOR=");
                                for(int j = 0; j < arr.size(); j++) {
                                	
                                	System.out.print(arr.get(j).substring(0,16));
                                	if(j < arr.size()-1) {
                                		System.out.println(",");
                                	}
                                }
                                System.out.println();
                                System.out.print(";");

                                 

  

                } 

                 

                 

                public static String convert(String s, int address) { 

                                 

                                 

                                 

                                String[] sp = s.split("\\s*#"); 
                                String command = sp[0];
                                String splited[] = sp[0].split("\\s+");
                                
//                                if(splited.length == 1) {
//                                	return "";
//                                }

                                String type = splited[0]; 

                                 

                                int opcode = 0, imm = 0;
                                
                            
                                String location = "";
                                if (splited.length >1 && splited[1].matches("-?\\d+")){
                                	imm = Integer.parseInt(splited[1]);
                                } else if(splited.length >1){
                                	location = splited[splited.length -1];
                                }
                                 
                                
                                
                                boolean doSignExtend = false;

                                switch(type) { 

                                case "addi":
                                	opcode = 0;
                                	break;
                                case "ori":
                                	opcode = 1;
                                	if(!location.equals("")) {
                                		imm = map.get(location)%256;
                                	}
                                	break;
                                case "andi":
                                	opcode = 2;
                                	break;
                                case "lui":
                                	opcode = 3;
                                	if(!location.equals("")) {
                                		imm = map.get(location)/256;
                                	}
                                	break;
                                case "sli":
                                	opcode = 4;
                                	break;
                                case "sri":
                                	opcode = 5;
                                	break;
                                case "srai":
                                	opcode = 6;
                                	break;
                                case "lw":
                                	opcode = 7;
                                	break;
                                case "sw":
                                	opcode = 8;
                                	break;
                                case "add":
                                	opcode = 73;
                                	break;
                                case "sub":
                                	opcode = 74;
                                	break;
                                case "or":
                                	opcode = 75;
                                	break;
                                case "and":
                                	opcode = 76;
                                	break;
                                case "jal":
                                	opcode = 13;
                                	break;
                                case "j":
                                	opcode = 14;
                                	break;
                                case "bin":
                                	opcode = 143;
                                	imm = (map.get(location) - address - 2)/2;
                                	break;
                                case "bifz":
                                	opcode = 144;
                                	imm = (map.get(location) - address - 2)/2;
                                	break;
                                case "binz":
                                	opcode = 145;
                                	imm = (map.get(location) - address - 2)/2;
                                	break;
                                case "bip":
                                	opcode = 146;
                                	imm = (map.get(location) - address - 2)/2;
                                	break;
                                case "in":
                                	opcode = 19;
                                	break;
                                case "out":
                                	opcode = 20;
                                	break;
                                case "spi":
                                	opcode = 21;
                                	break;
                                case "spc":
                                	opcode = 22;
                                	break;
                                case "lwa":
                                	opcode = 23;
                                	break;
                                	
                       
                                

                                } 

                                String res = ""; 

                                 

                                return makezero(Integer.toBinaryString(opcode),8) + makezero(Integer.toBinaryString(imm), 8) + " "+ command; 

                } 

                 

                public static String makezero(String s, int max) { 

                                while(s.length() < max) { 

                                                s = '0'+ s; 

                                } 

                                s = s.substring(s.length()-max);
                                return s; 

                } 

                public static String signextend(String s, int max) { 

                                while(s.length() < max) { 

                                                s = s.substring(0, 1)+ s; 

                                } 
                                s = s.substring(s.length()-max);

                                return s; 

                } 

  

} 

 