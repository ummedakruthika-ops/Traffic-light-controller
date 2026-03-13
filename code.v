module traffic_light_controller (
    input clk,          // clock input
    input reset,        // active-high reset
    output reg [2:0] lights // {Red, Yellow, Green}
);

    // State encoding
    typedef enum reg [1:0] {
        GREEN  = 2'b00,
        YELLOW = 2'b01,
        RED    = 2'b10
    } state_t;

    state_t current_state, next_state;
    reg [3:0] timer; // simple counter for timing

    // Sequential logic: state transition
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            current_state <= GREEN;
            timer <= 0;
        end else begin
            current_state <= next_state;
            timer <= timer + 1;
        end
    end

    // Combinational logic: next state and outputs
    always @(*) begin
        case (current_state)
            GREEN: begin
                lights = 3'b001; // Green ON
                if (timer == 4'd9) // stay green for 10 cycles
                    next_state = YELLOW;
                else
                    next_state = GREEN;
            end

            YELLOW: begin
                lights = 3'b010; // Yellow ON
                if (timer == 4'd3) // stay yellow for 4 cycles
                    next_state = RED;
                else
                    next_state = YELLOW;
            end

            RED: begin
                lights = 3'b100; // Red ON
                if (timer == 4'd12) // stay red for 13 cycles
                    next_state = GREEN;
                else
                    next_state = RED;
            end

            default: begin
                lights = 3'b001; // default to Green
                next_state = GREEN;
            end
        endcase
    end

endmodule
