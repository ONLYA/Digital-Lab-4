#!/bin/sh -f
xv_path="/opt/Xilinx/Vivado/2015.2"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim mouse_test_func_impl -key {Post-Implementation:sim_1:Functional:mouse_test} -tclbatch mouse_test.tcl -view /home/s1645821/git/assessment2/Digital-Lab-4/Processor/mouse_test_func_impl.wcfg -log simulate.log
