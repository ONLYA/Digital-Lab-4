`timescale 1ns / 1ps

// connects the mouse to the data bus

module MouseBusInterface(
    //Standard Inputs
    input RESET,
    input CLK,
    //IO - Mouse side
    inout CLK_MOUSE,
    inout DATA_MOUSE,
    // bus 
    input [7:0] BUS_DATA,       // data to be written or read form bus
    input [7:0] BUS_ADDR,       // address if bus
    input BUS_WE,               // 1 = we can write
    input INTERRUPT_ACK,        // acknowledgment of interrupt being serviced
    // outpus
    output INTERRUPT            // interrupt when the mouse is moved
    );
    
    // Mouse Outputs
    wire [7:0]  X_COORDINATE,
                Y_COORDINATE,
                Z_VALUE;
                
    wire [5:0] STATUS;
                        
    // -- Mouse Wrapper --
    wire interrupt;
    MouseWrapper mouse(
        //Standard Inputs
        .RESET(RESET),
        .CLK(CLK),
        //IO - Mouse side
        .CLK_MOUSE(CLK_MOUSE),
        .DATA_MOUSE(DATA_MOUSE),
        // outpus
        .status(STATUS),
        .x_coordinate(X_COORDINATE),
        .y_coordinate(Y_COORDINATE),
        .z_value(Z_VALUE),
        .interrupt(interrupt)    
        );        
    //--------------------
    
    // -- ILA --
    ila_1 ila(
        .clk(CLK),//clk
        .probe0(RESET),//1
        .probe1(CLK),//1
        .probe2(interrupt),//1
        .probe3(STATUS[3:0]),//4
        .probe4(X_COORDINATE), //8
        .probe5(Y_COORDINATE) //8
    );
    // ---------
    
    // parameters for the bus
    parameter base_address = 8'hA0; // address of ram starts at A0
    parameter address_width_in_bytes = 3;    // we only get 2 bytes of data -> 16 bits
    
    reg mouse_WE;                   // 
    
    //mouse_memoryory
    reg [7:0] mouse_memory [address_width_in_bytes - 1:0];
    /*
        - mouse_memoryORY - 
        | [xxxx,xxxx]--> [7:0] (0)
        | [xxxx,xxxx]          (1)
        | [xxxx,xxxx]          (2)
        |--------------> [(2**address_width_in_bytes)-1 : 0]
    */
    //  Initialise  the  memory  for  data  preloading,  initialising  variables,  and  declaring  constants
    initial $readmemh("mouse.txt", mouse_memory); // Hex
    
    reg saved_interrupt;
    
    //Only place data on the bus if the processor is NOT writing, and it is addressing this memory
    assign BUS_DATA = (mouse_WE) ? Out : 8'hZZ;
    
    wire [7:0] buffered_bus_data ;
    assign buffered_bus_data = BUS_DATA;
    
    reg [7:0] Out;
    
    // deal with addressing the RAM address
    always@(posedge CLK) 
    begin
    
        if (RESET == 1'b1) begin
            saved_interrupt_current <= 1'b0;
        end
    
        mouse_memory[0] <= {2'd0,STATUS}; // extend the status bit to fill 8 bits
        mouse_memory[1] <= X_COORDINATE;
        mouse_memory[2] <= Y_COORDINATE;
        // cant add Z_VALUE since there is no space on the bus to :-(
        
        // check if ram address is pointing at us
        if((BUS_ADDR >= base_address) & (BUS_ADDR < base_address + address_width_in_bytes)) begin
            if(BUS_WE == 1'b1) begin
                // we need only worry about the last two bits of our memory address since these are the ones changing
                // A0 -> 1010,0000 & A2 -> 1010,0010 ---= hence only care about last 2 bits
                
                // we load into the mouse memory what the bus data has.
                mouse_memory[BUS_ADDR[2:0]] <= buffered_bus_data;
                // set mouse_WE to 0 so we dont write to it
                mouse_WE <= 1'b0;
            end else begin
                // write to the data bus
                mouse_WE <= 1'b1;
            end
        end else begin
            mouse_WE <= 1'b0;
            end
        // out is either used when we need to write to ram or not used. 
        Out <= mouse_memory[BUS_ADDR[2:0]];     
        saved_interrupt_current <= saved_interrupt_next;  
    end
    
    reg saved_interrupt_current, saved_interrupt_next;
    
    always@(*) begin
        saved_interrupt_next = saved_interrupt_current;
    
        if (interrupt == 1'b1) begin
            saved_interrupt_next = 1'b1;
        end else if (interrupt == 1'b0) begin
            saved_interrupt_next = 1'b0;
        end else if (RESET == 1'b1) begin
            saved_interrupt_next = 1'b0;
        end
    end
    
//    // use to remeber there was an interrupt
//    always@(posedge CLK) begin
//        if (interrupt == 1'b1) begin
//            saved_interrupt <= 1'b1;
//        end else if (interrupt == 1'b0) begin
//            saved_interrupt <= 1'b0;
//        end else if (RESET == 1'b1) begin
//            saved_interrupt <= 1'b0;
//        end
//    end
    
    assign INTERRUPT    = interrupt;
    
endmodule
