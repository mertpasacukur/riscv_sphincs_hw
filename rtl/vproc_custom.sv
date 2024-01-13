// Created by mpcukur to represent the signals added for custom instruction

package vproc_custom;

import vproc_config::*;

parameter int unsigned ROT_AMOUNT_BIT = $clog2(VREG_W/8) + 3; // required bits to represent vector rotation amount

typedef struct packed
{
    logic[ROT_AMOUNT_BIT-1:0] temp_rotation_amount;             // rotation amount in bytes = Rotation Element Amount x Element Width in bytes 
    logic[ROT_AMOUNT_BIT-1:0] rotation_amount;             // rotation amount in bytes = Rotation Element Amount x Element Width in bytes 
    logic[$clog2(VREG_W)-1:0] vector_length;               // vector length in bytes        
} custom_instr_signals;

endpackage
