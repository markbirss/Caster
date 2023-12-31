// Copyright Modos / Wenting Zhang 2023
//
// This source describes Open Hardware and is licensed under the CERN-OHL-P v2
//
// You may redistribute and modify this documentation and make products using
// it under the terms of the CERN-OHL-P v2 (https:/cern.ch/cern-ohl). This
// documentation is distributed WITHOUT ANY EXPRESS OR IMPLIED WARRANTY,
// INCLUDING OF MERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A
// PARTICULAR PURPOSE. Please see the CERN-OHL-P v2 for applicable conditions
//
// linear_4b_quantizer.v
// LUT for finding the closest quantized output in the linear space
//
`default_nettype none
`timescale 1ns / 1ps
module linear_4b_quantizer (
    input wire [7:0] in,
    output reg [3:0] index,
    output reg [7:0] linear
);

    always @(in) begin
        case (in)
        0: begin index = 0; linear = 0; end
        1: begin index = 1; linear = 1; end
        2: begin index = 2; linear = 3; end
        3: begin index = 2; linear = 3; end
        4: begin index = 2; linear = 3; end
        5: begin index = 2; linear = 3; end
        6: begin index = 3; linear = 7; end
        7: begin index = 3; linear = 7; end
        8: begin index = 3; linear = 7; end
        9: begin index = 3; linear = 7; end
        10: begin index = 3; linear = 7; end
        11: begin index = 4; linear = 13; end
        12: begin index = 4; linear = 13; end
        13: begin index = 4; linear = 13; end
        14: begin index = 4; linear = 13; end
        15: begin index = 4; linear = 13; end
        16: begin index = 4; linear = 13; end
        17: begin index = 4; linear = 13; end
        18: begin index = 4; linear = 13; end
        19: begin index = 5; linear = 22; end
        20: begin index = 5; linear = 22; end
        21: begin index = 5; linear = 22; end
        22: begin index = 5; linear = 22; end
        23: begin index = 5; linear = 22; end
        24: begin index = 5; linear = 22; end
        25: begin index = 5; linear = 22; end
        26: begin index = 5; linear = 22; end
        27: begin index = 5; linear = 22; end
        28: begin index = 5; linear = 22; end
        29: begin index = 6; linear = 33; end
        30: begin index = 6; linear = 33; end
        31: begin index = 6; linear = 33; end
        32: begin index = 6; linear = 33; end
        33: begin index = 6; linear = 33; end
        34: begin index = 6; linear = 33; end
        35: begin index = 6; linear = 33; end
        36: begin index = 6; linear = 33; end
        37: begin index = 6; linear = 33; end
        38: begin index = 6; linear = 33; end
        39: begin index = 6; linear = 33; end
        40: begin index = 6; linear = 33; end
        41: begin index = 7; linear = 47; end
        42: begin index = 7; linear = 47; end
        43: begin index = 7; linear = 47; end
        44: begin index = 7; linear = 47; end
        45: begin index = 7; linear = 47; end
        46: begin index = 7; linear = 47; end
        47: begin index = 7; linear = 47; end
        48: begin index = 7; linear = 47; end
        49: begin index = 7; linear = 47; end
        50: begin index = 7; linear = 47; end
        51: begin index = 7; linear = 47; end
        52: begin index = 7; linear = 47; end
        53: begin index = 7; linear = 47; end
        54: begin index = 7; linear = 47; end
        55: begin index = 7; linear = 47; end
        56: begin index = 8; linear = 63; end
        57: begin index = 8; linear = 63; end
        58: begin index = 8; linear = 63; end
        59: begin index = 8; linear = 63; end
        60: begin index = 8; linear = 63; end
        61: begin index = 8; linear = 63; end
        62: begin index = 8; linear = 63; end
        63: begin index = 8; linear = 63; end
        64: begin index = 8; linear = 63; end
        65: begin index = 8; linear = 63; end
        66: begin index = 8; linear = 63; end
        67: begin index = 8; linear = 63; end
        68: begin index = 8; linear = 63; end
        69: begin index = 8; linear = 63; end
        70: begin index = 8; linear = 63; end
        71: begin index = 8; linear = 63; end
        72: begin index = 8; linear = 63; end
        73: begin index = 8; linear = 63; end
        74: begin index = 9; linear = 82; end
        75: begin index = 9; linear = 82; end
        76: begin index = 9; linear = 82; end
        77: begin index = 9; linear = 82; end
        78: begin index = 9; linear = 82; end
        79: begin index = 9; linear = 82; end
        80: begin index = 9; linear = 82; end
        81: begin index = 9; linear = 82; end
        82: begin index = 9; linear = 82; end
        83: begin index = 9; linear = 82; end
        84: begin index = 9; linear = 82; end
        85: begin index = 9; linear = 82; end
        86: begin index = 9; linear = 82; end
        87: begin index = 9; linear = 82; end
        88: begin index = 9; linear = 82; end
        89: begin index = 9; linear = 82; end
        90: begin index = 9; linear = 82; end
        91: begin index = 9; linear = 82; end
        92: begin index = 9; linear = 82; end
        93: begin index = 9; linear = 82; end
        94: begin index = 10; linear = 104; end
        95: begin index = 10; linear = 104; end
        96: begin index = 10; linear = 104; end
        97: begin index = 10; linear = 104; end
        98: begin index = 10; linear = 104; end
        99: begin index = 10; linear = 104; end
        100: begin index = 10; linear = 104; end
        101: begin index = 10; linear = 104; end
        102: begin index = 10; linear = 104; end
        103: begin index = 10; linear = 104; end
        104: begin index = 10; linear = 104; end
        105: begin index = 10; linear = 104; end
        106: begin index = 10; linear = 104; end
        107: begin index = 10; linear = 104; end
        108: begin index = 10; linear = 104; end
        109: begin index = 10; linear = 104; end
        110: begin index = 10; linear = 104; end
        111: begin index = 10; linear = 104; end
        112: begin index = 10; linear = 104; end
        113: begin index = 10; linear = 104; end
        114: begin index = 10; linear = 104; end
        115: begin index = 10; linear = 104; end
        116: begin index = 10; linear = 104; end
        117: begin index = 11; linear = 128; end
        118: begin index = 11; linear = 128; end
        119: begin index = 11; linear = 128; end
        120: begin index = 11; linear = 128; end
        121: begin index = 11; linear = 128; end
        122: begin index = 11; linear = 128; end
        123: begin index = 11; linear = 128; end
        124: begin index = 11; linear = 128; end
        125: begin index = 11; linear = 128; end
        126: begin index = 11; linear = 128; end
        127: begin index = 11; linear = 128; end
        128: begin index = 11; linear = 128; end
        129: begin index = 11; linear = 128; end
        130: begin index = 11; linear = 128; end
        131: begin index = 11; linear = 128; end
        132: begin index = 11; linear = 128; end
        133: begin index = 11; linear = 128; end
        134: begin index = 11; linear = 128; end
        135: begin index = 11; linear = 128; end
        136: begin index = 11; linear = 128; end
        137: begin index = 11; linear = 128; end
        138: begin index = 11; linear = 128; end
        139: begin index = 11; linear = 128; end
        140: begin index = 11; linear = 128; end
        141: begin index = 11; linear = 128; end
        142: begin index = 11; linear = 128; end
        143: begin index = 12; linear = 156; end
        144: begin index = 12; linear = 156; end
        145: begin index = 12; linear = 156; end
        146: begin index = 12; linear = 156; end
        147: begin index = 12; linear = 156; end
        148: begin index = 12; linear = 156; end
        149: begin index = 12; linear = 156; end
        150: begin index = 12; linear = 156; end
        151: begin index = 12; linear = 156; end
        152: begin index = 12; linear = 156; end
        153: begin index = 12; linear = 156; end
        154: begin index = 12; linear = 156; end
        155: begin index = 12; linear = 156; end
        156: begin index = 12; linear = 156; end
        157: begin index = 12; linear = 156; end
        158: begin index = 12; linear = 156; end
        159: begin index = 12; linear = 156; end
        160: begin index = 12; linear = 156; end
        161: begin index = 12; linear = 156; end
        162: begin index = 12; linear = 156; end
        163: begin index = 12; linear = 156; end
        164: begin index = 12; linear = 156; end
        165: begin index = 12; linear = 156; end
        166: begin index = 12; linear = 156; end
        167: begin index = 12; linear = 156; end
        168: begin index = 12; linear = 156; end
        169: begin index = 12; linear = 156; end
        170: begin index = 12; linear = 156; end
        171: begin index = 12; linear = 156; end
        172: begin index = 13; linear = 186; end
        173: begin index = 13; linear = 186; end
        174: begin index = 13; linear = 186; end
        175: begin index = 13; linear = 186; end
        176: begin index = 13; linear = 186; end
        177: begin index = 13; linear = 186; end
        178: begin index = 13; linear = 186; end
        179: begin index = 13; linear = 186; end
        180: begin index = 13; linear = 186; end
        181: begin index = 13; linear = 186; end
        182: begin index = 13; linear = 186; end
        183: begin index = 13; linear = 186; end
        184: begin index = 13; linear = 186; end
        185: begin index = 13; linear = 186; end
        186: begin index = 13; linear = 186; end
        187: begin index = 13; linear = 186; end
        188: begin index = 13; linear = 186; end
        189: begin index = 13; linear = 186; end
        190: begin index = 13; linear = 186; end
        191: begin index = 13; linear = 186; end
        192: begin index = 13; linear = 186; end
        193: begin index = 13; linear = 186; end
        194: begin index = 13; linear = 186; end
        195: begin index = 13; linear = 186; end
        196: begin index = 13; linear = 186; end
        197: begin index = 13; linear = 186; end
        198: begin index = 13; linear = 186; end
        199: begin index = 13; linear = 186; end
        200: begin index = 13; linear = 186; end
        201: begin index = 13; linear = 186; end
        202: begin index = 13; linear = 186; end
        203: begin index = 14; linear = 219; end
        204: begin index = 14; linear = 219; end
        205: begin index = 14; linear = 219; end
        206: begin index = 14; linear = 219; end
        207: begin index = 14; linear = 219; end
        208: begin index = 14; linear = 219; end
        209: begin index = 14; linear = 219; end
        210: begin index = 14; linear = 219; end
        211: begin index = 14; linear = 219; end
        212: begin index = 14; linear = 219; end
        213: begin index = 14; linear = 219; end
        214: begin index = 14; linear = 219; end
        215: begin index = 14; linear = 219; end
        216: begin index = 14; linear = 219; end
        217: begin index = 14; linear = 219; end
        218: begin index = 14; linear = 219; end
        219: begin index = 14; linear = 219; end
        220: begin index = 14; linear = 219; end
        221: begin index = 14; linear = 219; end
        222: begin index = 14; linear = 219; end
        223: begin index = 14; linear = 219; end
        224: begin index = 14; linear = 219; end
        225: begin index = 14; linear = 219; end
        226: begin index = 14; linear = 219; end
        227: begin index = 14; linear = 219; end
        228: begin index = 14; linear = 219; end
        229: begin index = 14; linear = 219; end
        230: begin index = 14; linear = 219; end
        231: begin index = 14; linear = 219; end
        232: begin index = 14; linear = 219; end
        233: begin index = 14; linear = 219; end
        234: begin index = 14; linear = 219; end
        235: begin index = 14; linear = 219; end
        236: begin index = 14; linear = 219; end
        237: begin index = 14; linear = 219; end
        238: begin index = 15; linear = 255; end
        239: begin index = 15; linear = 255; end
        240: begin index = 15; linear = 255; end
        241: begin index = 15; linear = 255; end
        242: begin index = 15; linear = 255; end
        243: begin index = 15; linear = 255; end
        244: begin index = 15; linear = 255; end
        245: begin index = 15; linear = 255; end
        246: begin index = 15; linear = 255; end
        247: begin index = 15; linear = 255; end
        248: begin index = 15; linear = 255; end
        249: begin index = 15; linear = 255; end
        250: begin index = 15; linear = 255; end
        251: begin index = 15; linear = 255; end
        252: begin index = 15; linear = 255; end
        253: begin index = 15; linear = 255; end
        254: begin index = 15; linear = 255; end
        255: begin index = 15; linear = 255; end
        endcase
    end

endmodule