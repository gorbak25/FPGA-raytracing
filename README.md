# FPGA-raytracing

Fully pipelined FPGA raytracer.  

Tested on ML510 dev board running at 150 MHZ.  
Currently supports raytracing of spheres and planes  
Traces up to 4 reflections in the scene.  
Supports many point lights and a single ambient light source.  
Configuration and interaction via UART interface.  
  
Current device utilization:   
Slice Registers: 34951 of 81920 - 42%  
Slice LUTs:      38791 of 81920 - 47%  
Occupied Slices: 13810 of 20480 - 67%  
BRAM:            230   of 298   - 77%  
DSP48E:          310   of 320   - 96%  

