#!/bin/bash -f
# Vivado (TM) v2016.3 (64-bit)
#
# Filename    : top.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Thu Nov 24 21:00:08 +0800 2016
# IP Build 1681267 on Mon Oct 10 21:28:31 MDT 2016 
#
# usage: top.sh [-help]
# usage: top.sh [-lib_map_path]
# usage: top.sh [-noclean_files]
# usage: top.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'top.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
# ********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xil_defaultlib xbip_utils_v3_0_7 c_reg_fd_v12_0_3 xbip_dsp48_wrapper_v3_0_4 xbip_pipe_v3_0_3 xbip_dsp48_addsub_v3_0_3 xbip_addsub_v3_0_3 c_addsub_v12_0_10 c_gate_bit_v12_0_3 xbip_counter_v3_0_3 c_counter_binary_v12_0_10)

# Simulation root library directory
sim_lib_dir="vcs"

# Script info
echo -e "top.sh - Script generated by export_simulation (Vivado v2016.3 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  # Compile design files
  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/ipshared/7bd1/xup_xor2.srcs/sources_1/new/xup_xor2.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/src/full_adder_1_bit_xup_xor2_0_0/sim/full_adder_1_bit_xup_xor2_0_0.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/ipshared/35a3/xup_nand2.srcs/sources_1/new/xup_nand2.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/src/full_adder_1_bit_xup_nand2_0_0/sim/full_adder_1_bit_xup_nand2_0_0.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/src/full_adder_1_bit_xup_nand2_1_0/sim/full_adder_1_bit_xup_nand2_1_0.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/src/full_adder_1_bit_xup_nand2_2_0/sim/full_adder_1_bit_xup_nand2_2_0.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/ipshared/e3e7/xup_inv.srcs/sources_1/new/xup_inv.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/src/full_adder_1_bit_xup_inv_0_0/sim/full_adder_1_bit_xup_inv_0_0.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/ipshared/fb55/xup_xnor2.srcs/sources_1/new/xup_xnor2.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/src/full_adder_1_bit_xup_xnor2_0_0/sim/full_adder_1_bit_xup_xnor2_0_0.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/ipshared/49fc/src/full_adder_1_bit.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/sim/full_adder_4_bit_full_adder_1_bit_0_0.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_1/sim/full_adder_4_bit_full_adder_1_bit_0_1.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_2/sim/full_adder_4_bit_full_adder_1_bit_0_2.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_3/sim/full_adder_4_bit_full_adder_1_bit_0_3.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/ipshared/a5f8/src/full_adder_4_bit.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/sim/complement_full_adder_4_bit_0_0.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/ipshared/e147/xlconstant.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_xlconstant_1_0/sim/complement_xlconstant_1_0.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_xup_xor2_0_0/sim/complement_xup_xor2_0_0.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_xup_xor2_1_0/sim/complement_xup_xor2_1_0.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_xup_xor2_2_0/sim/complement_xup_xor2_2_0.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_xup_xor2_3_0/sim/complement_xup_xor2_3_0.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/ipshared/360c/src/complement.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/sim/calculator_complement_0_0.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_1_0/sim/calculator_complement_1_0.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_2_0/sim/calculator_complement_2_0.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_full_adder_4_bit_0_0/sim/calculator_full_adder_4_bit_0_0.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/src/calculator_xlconstant_0_0/sim/calculator_xlconstant_0_0.v" \
    "$ref_dir/../../../bd/top/ipshared/961e/src/calculator.v" \
    "$ref_dir/../../../bd/top/ip/top_calculator_0_0_1/sim/top_calculator_0_0.v" \
    "$ref_dir/../../../bd/top/ipshared/625c/xup_4_to_1_mux_vector.srcs/sources_1/new/xup_4_to_1_mux_vector.v" \
    "$ref_dir/../../../bd/top/ip/top_xup_4_to_1_mux_vector_0_0_1/sim/top_xup_4_to_1_mux_vector_0_0.v" \
    "$ref_dir/../../../bd/top/ipshared/2e37/xlconcat.v" \
    "$ref_dir/../../../bd/top/ip/top_xlconcat_0_0/sim/top_xlconcat_0_0.v" \
    "$ref_dir/../../../bd/top/ip/top_xlconstant_0_0/sim/top_xlconstant_0_0.v" \
    "$ref_dir/../../../bd/top/ip/top_xlconcat_1_0/sim/top_xlconcat_1_0.v" \
    "$ref_dir/../../../bd/top/ip/top_xlconcat_2_0/sim/top_xlconcat_2_0.v" \
    "$ref_dir/../../../bd/top/ip/top_xlconstant_1_1/sim/top_xlconstant_1_1.v" \
    "$ref_dir/../../../bd/top/ip/top_xlconcat_0_1/sim/top_xlconcat_0_1.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xbip_utils_v3_0_7 $vhdlan_opts \
    "$ref_dir/../../../../adder.srcs/sources_1/bd/top/ipshared/6fc3/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work c_reg_fd_v12_0_3 $vhdlan_opts \
    "$ref_dir/../../../../adder.srcs/sources_1/bd/top/ipshared/e1e2/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_dsp48_wrapper_v3_0_4 $vhdlan_opts \
    "$ref_dir/../../../../adder.srcs/sources_1/bd/top/ipshared/1e87/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_pipe_v3_0_3 $vhdlan_opts \
    "$ref_dir/../../../../adder.srcs/sources_1/bd/top/ipshared/7db8/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_dsp48_addsub_v3_0_3 $vhdlan_opts \
    "$ref_dir/../../../../adder.srcs/sources_1/bd/top/ipshared/c9c4/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_addsub_v3_0_3 $vhdlan_opts \
    "$ref_dir/../../../../adder.srcs/sources_1/bd/top/ipshared/2957/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work c_addsub_v12_0_10 $vhdlan_opts \
    "$ref_dir/../../../../adder.srcs/sources_1/bd/top/ipshared/a394/hdl/c_addsub_v12_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work c_gate_bit_v12_0_3 $vhdlan_opts \
    "$ref_dir/../../../../adder.srcs/sources_1/bd/top/ipshared/b6ab/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_counter_v3_0_3 $vhdlan_opts \
    "$ref_dir/../../../../adder.srcs/sources_1/bd/top/ipshared/de69/hdl/xbip_counter_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work c_counter_binary_v12_0_10 $vhdlan_opts \
    "$ref_dir/../../../../adder.srcs/sources_1/bd/top/ipshared/d6cf/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/top/ip/top_c_counter_binary_0_0/sim/top_c_counter_binary_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    "$ref_dir/../../../bd/top/ipshared/4c27/xup_clk_divider.srcs/sources_1/new/xup_clk_divider.v" \
    "$ref_dir/../../../bd/top/ip/top_xup_clk_divider_0_0_1/sim/top_xup_clk_divider_0_0.v" \
    "$ref_dir/../../../bd/top/hdl/top.v" \
    "$ref_dir/../../../bd/top/ip/top_two_four_decoder_0_0/ipshared/c49f/xlslice.v" \
    "$ref_dir/../../../bd/top/ip/top_two_four_decoder_0_0/src/two_four_decoder_xlslice_0_0/sim/two_four_decoder_xlslice_0_0.v" \
    "$ref_dir/../../../bd/top/ip/top_two_four_decoder_0_0/src/two_four_decoder_xlslice_1_0/sim/two_four_decoder_xlslice_1_0.v" \
    "$ref_dir/../../../bd/top/ip/top_two_four_decoder_0_0/src/two_four_decoder_xup_inv_0_0/sim/two_four_decoder_xup_inv_0_0.v" \
    "$ref_dir/../../../bd/top/ip/top_two_four_decoder_0_0/src/two_four_decoder_xup_inv_1_0/sim/two_four_decoder_xup_inv_1_0.v" \
    "$ref_dir/../../../bd/top/ip/top_two_four_decoder_0_0/ipshared/778c/xup_and2.srcs/sources_1/new/xup_and2.v" \
    "$ref_dir/../../../bd/top/ip/top_two_four_decoder_0_0/src/two_four_decoder_xup_and2_0_0/sim/two_four_decoder_xup_and2_0_0.v" \
    "$ref_dir/../../../bd/top/ip/top_two_four_decoder_0_0/src/two_four_decoder_xup_and2_1_0/sim/two_four_decoder_xup_and2_1_0.v" \
    "$ref_dir/../../../bd/top/ip/top_two_four_decoder_0_0/src/two_four_decoder_xup_and2_0_1/sim/two_four_decoder_xup_and2_0_1.v" \
    "$ref_dir/../../../bd/top/ip/top_two_four_decoder_0_0/src/two_four_decoder_xup_and2_0_2/sim/two_four_decoder_xup_and2_0_2.v" \
    "$ref_dir/../../../bd/top/ipshared/0d3e/src/two_four_decoder.v" \
    "$ref_dir/../../../bd/top/ip/top_two_four_decoder_0_0/sim/top_two_four_decoder_0_0.v" \
    "$ref_dir/../../../bd/top/ip/top_xup_inv_0_0/sim/top_xup_inv_0_0.v" \
    "$ref_dir/../../../bd/top/ip/top_xup_inv_1_0/sim/top_xup_inv_1_0.v" \
    "$ref_dir/../../../bd/top/ip/top_xup_inv_2_0/sim/top_xup_inv_2_0.v" \
    "$ref_dir/../../../bd/top/ip/top_xup_inv_3_0/sim/top_xup_inv_3_0.v" \
  2>&1 | tee -a vlogan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.top xil_defaultlib.glbl -o top_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./top_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./top.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  lib_map_path=""
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key top_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc top_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: top.sh [-help]\n\
Usage: top.sh [-lib_map_path]\n\
Usage: top.sh [-reset_run]\n\
Usage: top.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2