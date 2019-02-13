
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name raytracing -dir "/home/test/FPGA/raytracing/planAhead_run_2" -part xc5vfx130tff1738-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/test/FPGA/raytracing/top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/test/FPGA/raytracing} {ipcore_dir} }
add_files [list {ipcore_dir/frame_buffer.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/isqrt_LUT.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/inv_LUT.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "board.ucf" [current_fileset -constrset]
add_files [list {board.ucf}] -fileset [get_property constrset [current_run]]
link_design
