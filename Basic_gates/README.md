About this project

- This project contains basic gate modules compiled and run using icarus verilog
- The modules are tested using a testbench containing different bit combinations
- For compiling use 
        iverilog -g2012 -Wall -o <projectname> <modulename>
- To run use 
        vvp <projectname>.vvp
- To view the waveform using GTKWave use 
        gtkwave <filename>.vcd
