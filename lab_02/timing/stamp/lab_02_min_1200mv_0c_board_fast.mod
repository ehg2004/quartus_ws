/*
 Copyright (C) 2018  Intel Corporation. All rights reserved.
 Your use of Intel Corporation's design tools, logic functions 
 and other software and tools, and its AMPP partner logic 
 functions, and any output files from any of the foregoing 
 (including device programming or simulation files), and any 
 associated documentation or information are expressly subject 
 to the terms and conditions of the Intel Program License 
 Subscription Agreement, the Intel Quartus Prime License Agreement,
 the Intel FPGA IP License Agreement, or other applicable license
 agreement, including, without limitation, that your use is for
 the sole purpose of programming logic devices manufactured by
 Intel and sold by Intel or its authorized distributors.  Please
 refer to the applicable agreement for further details.
*/
MODEL
/*MODEL HEADER*/
/*
 This file contains Fast Corner delays for the design using part EP4CGX15BF14C6
 with speed grade M, core voltage 1.2V, and temperature 0 Celsius

*/
MODEL_VERSION "1.0";
DESIGN "lab_02";
DATE "09/21/2023 21:14:39";
PROGRAM "Quartus Prime";



INPUT pin_name1;
OUTPUT pin_name2;
OUTPUT pin_name3;
OUTPUT pin_name4;
OUTPUT pin_name5;

/*Arc definitions start here*/
pos_inst__pin_name2__delay:		DELAY (POSEDGE) inst pin_name2 ;
pos_inst__pin_name2__delay:		DELAY (POSEDGE) inst pin_name2 ;
pos_inst3__pin_name3__delay:		DELAY (POSEDGE) inst3 pin_name3 ;
pos_inst3__pin_name3__delay:		DELAY (POSEDGE) inst3 pin_name3 ;
pos_inst4__pin_name4__delay:		DELAY (POSEDGE) inst4 pin_name4 ;
pos_inst4__pin_name4__delay:		DELAY (POSEDGE) inst4 pin_name4 ;
pos_inst4__pin_name5__delay:		DELAY (POSEDGE) inst4 pin_name5 ;

ENDMODEL
