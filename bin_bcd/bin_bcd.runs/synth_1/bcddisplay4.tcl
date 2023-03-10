# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/test/bin_bcd/bin_bcd.cache/wt [current_project]
set_property parent.project_path D:/test/bin_bcd/bin_bcd.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  D:/test/BBIN_to_BCD_8_bit/BBIN_to_BCD_8_bit.srcs/sources_1/new/add3.v
  D:/test/BBIN_to_BCD_8_bit/BBIN_to_BCD_8_bit.srcs/sources_1/new/binary_to_BCD.v
  D:/test/BBIN_to_BCD_8_bit/BBIN_to_BCD_8_bit.srcs/sources_1/new/decoder2to4.v
  D:/test/BBIN_to_BCD_8_bit/BBIN_to_BCD_8_bit.srcs/sources_1/new/bcd7seg.v
  D:/test/BBIN_to_BCD_8_bit/BBIN_to_BCD_8_bit.srcs/sources_1/new/slowclock.v
  D:/test/BBIN_to_BCD_8_bit/BBIN_to_BCD_8_bit.srcs/sources_1/new/my_counter.v
  D:/test/BBIN_to_BCD_8_bit/BBIN_to_BCD_8_bit.srcs/sources_1/new/mux4to1.v
  D:/test/BBIN_to_BCD_8_bit/BBIN_to_BCD_8_bit.srcs/sources_1/new/bcddisplay4.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/test/bin_bcd/bin_bcd.srcs/constrs_1/new/hyyt.xdc
set_property used_in_implementation false [get_files D:/test/bin_bcd/bin_bcd.srcs/constrs_1/new/hyyt.xdc]


synth_design -top bcddisplay4 -part xc7a35tcpg236-1


write_checkpoint -force -noxdef bcddisplay4.dcp

catch { report_utilization -file bcddisplay4_utilization_synth.rpt -pb bcddisplay4_utilization_synth.pb }
