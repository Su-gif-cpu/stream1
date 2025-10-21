set moduleName msgHash_32_64_256_32_64_sha256_wrapper_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 27
set C_modelName {msgHash<32, 64, 256, 32, 64, sha256_wrapper>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ kipadStrm int 512 regular {fifo 0 volatile }  }
	{ kopadStrm int 512 regular {fifo 0 volatile }  }
	{ msgStrm int 32 regular {fifo 0 volatile }  }
	{ lenStrm int 64 regular {fifo 0 volatile }  }
	{ eKipadStrm int 1 regular {fifo 0 volatile }  }
	{ kopad2Strm int 512 regular {fifo 1 volatile }  }
	{ msgHashStrm int 256 regular {fifo 1 volatile }  }
	{ eMsgHashStrm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "kipadStrm", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "kopadStrm", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "msgStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lenStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "eKipadStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kopad2Strm", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "msgHashStrm", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "eMsgHashStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ kipadStrm_dout sc_in sc_lv 512 signal 0 } 
	{ kipadStrm_empty_n sc_in sc_logic 1 signal 0 } 
	{ kipadStrm_read sc_out sc_logic 1 signal 0 } 
	{ kopadStrm_dout sc_in sc_lv 512 signal 1 } 
	{ kopadStrm_empty_n sc_in sc_logic 1 signal 1 } 
	{ kopadStrm_read sc_out sc_logic 1 signal 1 } 
	{ msgStrm_dout sc_in sc_lv 32 signal 2 } 
	{ msgStrm_empty_n sc_in sc_logic 1 signal 2 } 
	{ msgStrm_read sc_out sc_logic 1 signal 2 } 
	{ lenStrm_dout sc_in sc_lv 64 signal 3 } 
	{ lenStrm_empty_n sc_in sc_logic 1 signal 3 } 
	{ lenStrm_read sc_out sc_logic 1 signal 3 } 
	{ eKipadStrm_dout sc_in sc_lv 1 signal 4 } 
	{ eKipadStrm_empty_n sc_in sc_logic 1 signal 4 } 
	{ eKipadStrm_read sc_out sc_logic 1 signal 4 } 
	{ kopad2Strm_din sc_out sc_lv 512 signal 5 } 
	{ kopad2Strm_full_n sc_in sc_logic 1 signal 5 } 
	{ kopad2Strm_write sc_out sc_logic 1 signal 5 } 
	{ msgHashStrm_din sc_out sc_lv 256 signal 6 } 
	{ msgHashStrm_full_n sc_in sc_logic 1 signal 6 } 
	{ msgHashStrm_write sc_out sc_logic 1 signal 6 } 
	{ eMsgHashStrm_din sc_out sc_lv 1 signal 7 } 
	{ eMsgHashStrm_full_n sc_in sc_logic 1 signal 7 } 
	{ eMsgHashStrm_write sc_out sc_logic 1 signal 7 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "kipadStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "kipadStrm", "role": "dout" }} , 
 	{ "name": "kipadStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kipadStrm", "role": "empty_n" }} , 
 	{ "name": "kipadStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kipadStrm", "role": "read" }} , 
 	{ "name": "kopadStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "kopadStrm", "role": "dout" }} , 
 	{ "name": "kopadStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kopadStrm", "role": "empty_n" }} , 
 	{ "name": "kopadStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kopadStrm", "role": "read" }} , 
 	{ "name": "msgStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "msgStrm", "role": "dout" }} , 
 	{ "name": "msgStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgStrm", "role": "empty_n" }} , 
 	{ "name": "msgStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgStrm", "role": "read" }} , 
 	{ "name": "lenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "lenStrm", "role": "dout" }} , 
 	{ "name": "lenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lenStrm", "role": "empty_n" }} , 
 	{ "name": "lenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lenStrm", "role": "read" }} , 
 	{ "name": "eKipadStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eKipadStrm", "role": "dout" }} , 
 	{ "name": "eKipadStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eKipadStrm", "role": "empty_n" }} , 
 	{ "name": "eKipadStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eKipadStrm", "role": "read" }} , 
 	{ "name": "kopad2Strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "kopad2Strm", "role": "din" }} , 
 	{ "name": "kopad2Strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kopad2Strm", "role": "full_n" }} , 
 	{ "name": "kopad2Strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kopad2Strm", "role": "write" }} , 
 	{ "name": "msgHashStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "msgHashStrm", "role": "din" }} , 
 	{ "name": "msgHashStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgHashStrm", "role": "full_n" }} , 
 	{ "name": "msgHashStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgHashStrm", "role": "write" }} , 
 	{ "name": "eMsgHashStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eMsgHashStrm", "role": "din" }} , 
 	{ "name": "eMsgHashStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eMsgHashStrm", "role": "full_n" }} , 
 	{ "name": "eMsgHashStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eMsgHashStrm", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6", "37", "38", "39", "40"],
		"CDFG" : "msgHash_32_64_256_32_64_sha256_wrapper_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "mergeKipad_32_64_256_64_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "mergeKipad_32_64_256_64_U0"},
			{"ID" : "6", "Name" : "hash_U0"}],
		"Port" : [
			{"Name" : "kipadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "mergeKipad_32_64_256_64_U0", "Port" : "kipadStrm"}]},
			{"Name" : "kopadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "mergeKipad_32_64_256_64_U0", "Port" : "kopadStrm"}]},
			{"Name" : "msgStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "mergeKipad_32_64_256_64_U0", "Port" : "msgStrm"}]},
			{"Name" : "lenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "mergeKipad_32_64_256_64_U0", "Port" : "lenStrm"}]},
			{"Name" : "eKipadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "mergeKipad_32_64_256_64_U0", "Port" : "eKipadStrm"}]},
			{"Name" : "kopad2Strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "mergeKipad_32_64_256_64_U0", "Port" : "kopad2Strm"}]},
			{"Name" : "msgHashStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "hash_U0", "Port" : "msgHashStrm"}]},
			{"Name" : "eMsgHashStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "hash_U0", "Port" : "eMsgHashStrm"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mergeKipad_32_64_256_64_U0", "Parent" : "0", "Child" : ["2", "4"],
		"CDFG" : "mergeKipad_32_64_256_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "kipadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "kipadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kopadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "kopadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3_fu_133", "Port" : "msgStrm", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "lenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "lenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eKipadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "eKipadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mergeKipadStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "37", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_162_2_fu_126", "Port" : "mergeKipadStrm", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "4", "SubInstance" : "grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3_fu_133", "Port" : "mergeKipadStrm", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "mergeKipadLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "38", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMergeKipadLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "39", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "eMergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kopad2Strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "kopad2Strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_152_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mergeKipad_32_64_256_64_U0.grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_162_2_fu_126", "Parent" : "1", "Child" : ["3"],
		"CDFG" : "mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_162_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "kipad", "Type" : "None", "Direction" : "I"},
			{"Name" : "mergeKipadStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mergeKipadStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_162_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.mergeKipad_32_64_256_64_U0.grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_162_2_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mergeKipad_32_64_256_64_U0.grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3_fu_133", "Parent" : "1", "Child" : ["5"],
		"CDFG" : "mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "msgStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "msgStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mergeKipadStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mergeKipadStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_171_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.mergeKipad_32_64_256_64_U0.grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3_fu_133.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hash_U0", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "hash",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_hash_U0_U",
		"Port" : [
			{"Name" : "mergeKipadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "37", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sha256_top_32_256_s_fu_32", "Port" : "mergeKopadStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "38", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sha256_top_32_256_s_fu_32", "Port" : "mergeKopadLenStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eMergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "39", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sha256_top_32_256_s_fu_32", "Port" : "eMergeKopadLenStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "msgHashStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sha256_top_32_256_s_fu_32", "Port" : "hshStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eMsgHashStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sha256_top_32_256_s_fu_32", "Port" : "eHshStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32", "Parent" : "6", "Child" : ["8", "13", "16", "22", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36"],
		"CDFG" : "sha256_top_32_256_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "8", "Name" : "preProcessing_U0"}],
		"OutputProcess" : [
			{"ID" : "22", "Name" : "sha256Digest_256_U0"}],
		"Port" : [
			{"Name" : "mergeKopadStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "preProcessing_U0", "Port" : "mergeKipadStrm"}]},
			{"Name" : "mergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "preProcessing_U0", "Port" : "mergeKipadLenStrm"}]},
			{"Name" : "eMergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "preProcessing_U0", "Port" : "eMergeKipadLenStrm"}]},
			{"Name" : "hshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "sha256Digest_256_U0", "Port" : "msgHashStrm"}]},
			{"Name" : "eHshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "sha256Digest_256_U0", "Port" : "eMsgHashStrm"}]}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.preProcessing_U0", "Parent" : "7", "Child" : ["9", "11"],
		"CDFG" : "preProcessing",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mergeKipadStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mergeKipadStrm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_270", "Port" : "mergeKipadStrm", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "11", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_279", "Port" : "mergeKipadStrm", "Inst_start_state" : "5", "Inst_end_state" : "22"}]},
			{"Name" : "mergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "eMergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "26", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "blk_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_270", "Port" : "blk_strm", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "27", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "28", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_SHA256_GENENERATE_MAIN", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "23", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state21"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_270", "Parent" : "8", "Child" : ["10"],
		"CDFG" : "preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "mergeKipadStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mergeKipadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "blk_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_SHA256_GEN_FULL_BLKS", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_270.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_279", "Parent" : "8", "Child" : ["12"],
		"CDFG" : "preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mergeKipadStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mergeKipadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "LOOP_SHA256_GEN_COPY_TAIL_AND_ONE", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_279.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.dup_strm_U0", "Parent" : "7", "Child" : ["14"],
		"CDFG" : "dup_strm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "8",
		"StartFifo" : "start_for_dup_strm_U0_U",
		"Port" : [
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "27", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "nblk_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "28", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "end_nblk_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "nblk_strm1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "29", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "nblk_strm1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "end_nblk_strm1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "30", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "end_nblk_strm1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "nblk_strm2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "31", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "nblk_strm2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "end_nblk_strm2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "32", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "end_nblk_strm2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.dup_strm_U0.grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Parent" : "13", "Child" : ["15"],
		"CDFG" : "dup_strm_Pipeline_VITIS_LOOP_506_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "e", "Type" : "None", "Direction" : "I"},
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nblk_strm1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "nblk_strm1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nblk_strm2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "nblk_strm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_506_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.dup_strm_U0.grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.generateMsgSchedule_U0", "Parent" : "7", "Child" : ["17", "20"],
		"CDFG" : "generateMsgSchedule",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "8",
		"StartFifo" : "start_for_generateMsgSchedule_U0_U",
		"Port" : [
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "26", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "blk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nblk_strm1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "29", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "30", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "w_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "33", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT16_fu_222", "Port" : "w_strm", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "20", "SubInstance" : "grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64_fu_260", "Port" : "w_strm", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_530_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_528_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT16_fu_222", "Parent" : "16", "Child" : ["18", "19"],
		"CDFG" : "generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "w_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "w_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "LOOP_SHA256_PREPARE_WT16", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT16_fu_222.sparsemux_33_4_32_1_1_U61", "Parent" : "17"},
	{"ID" : "19", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT16_fu_222.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64_fu_260", "Parent" : "16", "Child" : ["21"],
		"CDFG" : "generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "W_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "w_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_SHA256_PREPARE_WT64", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64_fu_260.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0", "Parent" : "7", "Child" : ["23"],
		"CDFG" : "sha256Digest_256_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "13",
		"StartFifo" : "start_for_sha256Digest_256_U0_U",
		"Port" : [
			{"Name" : "nblk_strm2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "31", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "32", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "w_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["16"], "DependentChan" : "33", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_272", "Port" : "w_strm", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "msgHashStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "msgHashStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMsgHashStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "eMsgHashStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_SHA256_DIGEST_NBLK", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "LOOP_SHA256_DIGEST_MAIN", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_272", "Parent" : "22", "Child" : ["24", "25"],
		"CDFG" : "sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "68", "EstimateLatencyMax" : "68",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "h", "Type" : "None", "Direction" : "I"},
			{"Name" : "g", "Type" : "None", "Direction" : "I"},
			{"Name" : "f", "Type" : "None", "Direction" : "I"},
			{"Name" : "e", "Type" : "None", "Direction" : "I"},
			{"Name" : "d", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "w_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln6888_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln6897_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln6906_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln6915_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln6924_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln6933_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln6942_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln6951_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "LOOP_SHA256_UPDATE_64_ROUNDS", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_272.sparsemux_129_6_32_1_1_U117", "Parent" : "23"},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_272.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.blk_strm_U", "Parent" : "7"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.nblk_strm_U", "Parent" : "7"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.end_nblk_strm_U", "Parent" : "7"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.nblk_strm1_U", "Parent" : "7"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.end_nblk_strm1_U", "Parent" : "7"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.nblk_strm2_U", "Parent" : "7"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.end_nblk_strm2_U", "Parent" : "7"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.w_strm_U", "Parent" : "7"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.start_for_dup_strm_U0_U", "Parent" : "7"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.start_for_generateMsgSchedule_U0_U", "Parent" : "7"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hash_U0.grp_sha256_top_32_256_s_fu_32.start_for_sha256Digest_256_U0_U", "Parent" : "7"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mergeKipadStrm_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mergeKipadLenStrm_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eMergeKipadLenStrm_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_hash_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	msgHash_32_64_256_32_64_sha256_wrapper_s {
		kipadStrm {Type I LastRead 1 FirstWrite -1}
		kopadStrm {Type I LastRead 4 FirstWrite -1}
		msgStrm {Type I LastRead 2 FirstWrite -1}
		lenStrm {Type I LastRead 1 FirstWrite -1}
		eKipadStrm {Type I LastRead 1 FirstWrite -1}
		kopad2Strm {Type O LastRead -1 FirstWrite 4}
		msgHashStrm {Type O LastRead -1 FirstWrite 2}
		eMsgHashStrm {Type O LastRead -1 FirstWrite 1}}
	mergeKipad_32_64_256_64_s {
		kipadStrm {Type I LastRead 1 FirstWrite -1}
		kopadStrm {Type I LastRead 4 FirstWrite -1}
		msgStrm {Type I LastRead 2 FirstWrite -1}
		lenStrm {Type I LastRead 1 FirstWrite -1}
		eKipadStrm {Type I LastRead 1 FirstWrite -1}
		mergeKipadStrm {Type O LastRead -1 FirstWrite 1}
		mergeKipadLenStrm {Type O LastRead -1 FirstWrite 1}
		eMergeKipadLenStrm {Type O LastRead -1 FirstWrite 1}
		kopad2Strm {Type O LastRead -1 FirstWrite 4}}
	mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_162_2 {
		kipad {Type I LastRead 0 FirstWrite -1}
		mergeKipadStrm {Type O LastRead -1 FirstWrite 1}}
	mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3 {
		empty {Type I LastRead 0 FirstWrite -1}
		msgStrm {Type I LastRead 2 FirstWrite -1}
		mergeKipadStrm {Type O LastRead -1 FirstWrite 2}}
	hash {
		mergeKipadStrm {Type I LastRead 19 FirstWrite -1}
		mergeKipadLenStrm {Type I LastRead 1 FirstWrite -1}
		eMergeKipadLenStrm {Type I LastRead 20 FirstWrite -1}
		msgHashStrm {Type O LastRead -1 FirstWrite 2}
		eMsgHashStrm {Type O LastRead -1 FirstWrite 1}}
	sha256_top_32_256_s {
		mergeKopadStrm {Type I LastRead 19 FirstWrite -1}
		mergeKopadLenStrm {Type I LastRead 1 FirstWrite -1}
		eMergeKopadLenStrm {Type I LastRead 20 FirstWrite -1}
		hshStrm {Type O LastRead -1 FirstWrite 2}
		eHshStrm {Type O LastRead -1 FirstWrite 1}}
	preProcessing {
		mergeKipadStrm {Type I LastRead 19 FirstWrite -1}
		mergeKipadLenStrm {Type I LastRead 1 FirstWrite -1}
		eMergeKipadLenStrm {Type I LastRead 20 FirstWrite -1}
		blk_strm {Type O LastRead -1 FirstWrite 4}
		nblk_strm {Type O LastRead -1 FirstWrite 1}
		end_nblk_strm {Type O LastRead -1 FirstWrite 1}}
	preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS {
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		mergeKipadStrm {Type I LastRead 17 FirstWrite -1}
		blk_strm {Type O LastRead -1 FirstWrite 17}}
	preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE {
		mergeKipadStrm {Type I LastRead 1 FirstWrite -1}
		p_cast {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		b_16_out {Type O LastRead -1 FirstWrite 0}
		b_15_out {Type O LastRead -1 FirstWrite 0}
		b_14_out {Type O LastRead -1 FirstWrite 0}
		b_13_out {Type O LastRead -1 FirstWrite 0}
		b_12_out {Type O LastRead -1 FirstWrite 0}
		b_11_out {Type O LastRead -1 FirstWrite 0}
		b_10_out {Type O LastRead -1 FirstWrite 0}
		b_9_out {Type O LastRead -1 FirstWrite 0}
		b_8_out {Type O LastRead -1 FirstWrite 0}
		b_7_out {Type O LastRead -1 FirstWrite 0}
		b_6_out {Type O LastRead -1 FirstWrite 0}
		b_5_out {Type O LastRead -1 FirstWrite 0}
		b_4_out {Type O LastRead -1 FirstWrite 0}
		b_out {Type O LastRead -1 FirstWrite 0}}
	dup_strm {
		nblk_strm {Type I LastRead 1 FirstWrite -1}
		end_nblk_strm {Type I LastRead 0 FirstWrite -1}
		nblk_strm1 {Type O LastRead -1 FirstWrite 1}
		end_nblk_strm1 {Type O LastRead -1 FirstWrite 1}
		nblk_strm2 {Type O LastRead -1 FirstWrite 1}
		end_nblk_strm2 {Type O LastRead -1 FirstWrite 1}}
	dup_strm_Pipeline_VITIS_LOOP_506_1 {
		e {Type I LastRead 0 FirstWrite -1}
		nblk_strm {Type I LastRead 1 FirstWrite -1}
		nblk_strm1 {Type O LastRead -1 FirstWrite 1}
		end_nblk_strm1 {Type O LastRead -1 FirstWrite 1}
		nblk_strm2 {Type O LastRead -1 FirstWrite 1}
		end_nblk_strm2 {Type O LastRead -1 FirstWrite 1}
		end_nblk_strm {Type I LastRead 0 FirstWrite -1}}
	generateMsgSchedule {
		blk_strm {Type I LastRead 2 FirstWrite -1}
		nblk_strm1 {Type I LastRead 1 FirstWrite -1}
		end_nblk_strm1 {Type I LastRead 2 FirstWrite -1}
		w_strm {Type O LastRead -1 FirstWrite 1}}
	generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT16 {
		w_strm {Type O LastRead -1 FirstWrite 1}
		empty {Type I LastRead 0 FirstWrite -1}
		blk_1 {Type I LastRead 0 FirstWrite -1}
		blk_2 {Type I LastRead 0 FirstWrite -1}
		blk_3 {Type I LastRead 0 FirstWrite -1}
		blk_4 {Type I LastRead 0 FirstWrite -1}
		blk_5 {Type I LastRead 0 FirstWrite -1}
		blk_6 {Type I LastRead 0 FirstWrite -1}
		blk_7 {Type I LastRead 0 FirstWrite -1}
		blk_8 {Type I LastRead 0 FirstWrite -1}
		blk_9 {Type I LastRead 0 FirstWrite -1}
		blk_15 {Type I LastRead 0 FirstWrite -1}
		blk_10 {Type I LastRead 0 FirstWrite -1}
		blk_11 {Type I LastRead 0 FirstWrite -1}
		blk_12 {Type I LastRead 0 FirstWrite -1}
		blk_13 {Type I LastRead 0 FirstWrite -1}
		blk_14 {Type I LastRead 0 FirstWrite -1}
		W_15_out {Type O LastRead -1 FirstWrite 0}
		W_14_out {Type O LastRead -1 FirstWrite 0}
		W_13_out {Type O LastRead -1 FirstWrite 0}
		W_12_out {Type O LastRead -1 FirstWrite 0}
		W_11_out {Type O LastRead -1 FirstWrite 0}
		W_10_out {Type O LastRead -1 FirstWrite 0}
		W_9_out {Type O LastRead -1 FirstWrite 0}
		W_8_out {Type O LastRead -1 FirstWrite 0}
		W_7_out {Type O LastRead -1 FirstWrite 0}
		W_6_out {Type O LastRead -1 FirstWrite 0}
		W_5_out {Type O LastRead -1 FirstWrite 0}
		W_4_out {Type O LastRead -1 FirstWrite 0}
		W_3_out {Type O LastRead -1 FirstWrite 0}
		W_2_out {Type O LastRead -1 FirstWrite 0}
		W_1_out {Type O LastRead -1 FirstWrite 0}
		W_out {Type O LastRead -1 FirstWrite 0}}
	generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64 {
		W_reload {Type I LastRead 0 FirstWrite -1}
		W_2_reload {Type I LastRead 0 FirstWrite -1}
		W_3_reload {Type I LastRead 0 FirstWrite -1}
		W_4_reload {Type I LastRead 0 FirstWrite -1}
		W_5_reload {Type I LastRead 0 FirstWrite -1}
		W_7_reload {Type I LastRead 0 FirstWrite -1}
		W_8_reload {Type I LastRead 0 FirstWrite -1}
		W_9_reload {Type I LastRead 0 FirstWrite -1}
		W_10_reload {Type I LastRead 0 FirstWrite -1}
		W_11_reload {Type I LastRead 0 FirstWrite -1}
		W_12_reload {Type I LastRead 0 FirstWrite -1}
		W_13_reload {Type I LastRead 0 FirstWrite -1}
		W_15_reload {Type I LastRead 0 FirstWrite -1}
		W_14_reload {Type I LastRead 0 FirstWrite -1}
		W_6_reload {Type I LastRead 0 FirstWrite -1}
		W_1_reload {Type I LastRead 0 FirstWrite -1}
		w_strm {Type O LastRead -1 FirstWrite 2}}
	sha256Digest_256_s {
		nblk_strm2 {Type I LastRead 1 FirstWrite -1}
		end_nblk_strm2 {Type I LastRead 2 FirstWrite -1}
		w_strm {Type I LastRead 1 FirstWrite -1}
		msgHashStrm {Type O LastRead -1 FirstWrite 2}
		eMsgHashStrm {Type O LastRead -1 FirstWrite 1}}
	sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS {
		h {Type I LastRead 0 FirstWrite -1}
		g {Type I LastRead 0 FirstWrite -1}
		f {Type I LastRead 0 FirstWrite -1}
		e {Type I LastRead 0 FirstWrite -1}
		d {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		w_strm {Type I LastRead 1 FirstWrite -1}
		add_ln6888_out {Type O LastRead -1 FirstWrite 2}
		add_ln6897_out {Type O LastRead -1 FirstWrite 2}
		add_ln6906_out {Type O LastRead -1 FirstWrite 2}
		add_ln6915_out {Type O LastRead -1 FirstWrite 2}
		add_ln6924_out {Type O LastRead -1 FirstWrite 2}
		add_ln6933_out {Type O LastRead -1 FirstWrite 2}
		add_ln6942_out {Type O LastRead -1 FirstWrite 2}
		add_ln6951_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	kipadStrm { ap_fifo {  { kipadStrm_dout fifo_data_in 0 512 }  { kipadStrm_empty_n fifo_status 0 1 }  { kipadStrm_read fifo_port_we 1 1 } } }
	kopadStrm { ap_fifo {  { kopadStrm_dout fifo_data_in 0 512 }  { kopadStrm_empty_n fifo_status 0 1 }  { kopadStrm_read fifo_port_we 1 1 } } }
	msgStrm { ap_fifo {  { msgStrm_dout fifo_data_in 0 32 }  { msgStrm_empty_n fifo_status 0 1 }  { msgStrm_read fifo_port_we 1 1 } } }
	lenStrm { ap_fifo {  { lenStrm_dout fifo_data_in 0 64 }  { lenStrm_empty_n fifo_status 0 1 }  { lenStrm_read fifo_port_we 1 1 } } }
	eKipadStrm { ap_fifo {  { eKipadStrm_dout fifo_data_in 0 1 }  { eKipadStrm_empty_n fifo_status 0 1 }  { eKipadStrm_read fifo_port_we 1 1 } } }
	kopad2Strm { ap_fifo {  { kopad2Strm_din fifo_data_in 1 512 }  { kopad2Strm_full_n fifo_status 0 1 }  { kopad2Strm_write fifo_port_we 1 1 } } }
	msgHashStrm { ap_fifo {  { msgHashStrm_din fifo_data_in 1 256 }  { msgHashStrm_full_n fifo_status 0 1 }  { msgHashStrm_write fifo_port_we 1 1 } } }
	eMsgHashStrm { ap_fifo {  { eMsgHashStrm_din fifo_data_in 1 1 }  { eMsgHashStrm_full_n fifo_status 0 1 }  { eMsgHashStrm_write fifo_port_we 1 1 } } }
}
