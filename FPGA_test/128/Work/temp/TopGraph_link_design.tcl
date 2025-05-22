set_param project.enableUnifiedAIEFlow true
add_files .//home/luanxinya/SVD/FPGA_test/128/./Work/temp/TopGraph_aie_full_netlist.aiexn
add_files .//home/luanxinya/SVD/FPGA_test/128/./Work/temp/TopGraph_aie_constraints_for_placer.aiecst
add_files .//home/luanxinya/SVD/FPGA_test/128/./Work/temp/TopGraph_aie_routed.aiesol
link_design -part xcvc1902-vsva2197-2MP-e-S
