🚦 Traffic Light Controller – Finite State Machine (FSM)

A Traffic Light Controller implemented using a Finite State Machine (FSM).
This project simulates how traffic signals operate at an intersection by transitioning between different states (Red, Yellow, Green) based on a timing sequence.

📌 Overview

Traffic signals are controlled using a state-based system where each light corresponds to a state. The controller transitions between states after predefined time intervals to ensure smooth traffic flow.

This project demonstrates:

FSM design principles

State transitions

Timing control logic

Embedded / digital system design concepts

⚙️ Features

🚦 Simulates a 3-light traffic signal system

🔁 Automatic state transitions

⏱️ Configurable timing for each light

🧠 Implemented using a Finite State Machine

🧪 Easy to test and modify

🧠 FSM States
State	Light Active	Duration
S0	Green	Configurable
S1	Yellow	Configurable
S2	Red	Configurable
State Transition Diagram
        +--------+
        | GREEN  |
        +--------+
            |
            v
        +--------+
        | YELLOW |
        +--------+
            |
            v
        +--------+
        |  RED   |
        +--------+
            |
            v
          GREEN

The controller cycles through these states continuously.


▶️ How It Works

The system starts in the Green state.

After the green timer expires, the state transitions to Yellow.

After the yellow timer expires, the state transitions to Red.

After the red timer expires, the cycle restarts with Green.

This loop continues indefinitely.

🔧 Example Pseudocode
state = GREEN

loop:
    if state == GREEN:
        turn_on_green()
        wait(GREEN_TIME)
        state = YELLOW

    else if state == YELLOW:
        turn_on_yellow()
        wait(YELLOW_TIME)
        state = RED

    else if state == RED:
        turn_on_red()
        wait(RED_TIME)
        state = GREEN
🧪 Simulation

Run the simulation/testbench to observe the state transitions and verify timing behavior.

Example outputs may include:

Time 0s   : GREEN
Time 10s  : YELLOW
Time 12s  : RED
Time 22s  : GREEN

📚 Applications

Smart traffic management

Embedded systems learning

FPGA/Verilog/VHDL design practice

Digital logic coursework

🚀 Possible Improvements

🚗 Vehicle sensor integration

🚶 Pedestrian crossing button

⏳ Adaptive timing based on traffic

🚦 Multi-intersection coordination

