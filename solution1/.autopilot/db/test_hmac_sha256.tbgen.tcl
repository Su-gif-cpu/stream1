set moduleName test_hmac_sha256
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
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
set C_modelName {test_hmac_sha256}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ keyStrm int 32 regular {fifo 0 volatile }  }
	{ msgStrm int 32 regular {fifo 0 volatile }  }
	{ lenStrm int 64 regular {fifo 0 volatile }  }
	{ eLenStrm int 1 regular {fifo 0 volatile }  }
	{ hshStrm int 256 regular {fifo 1 volatile }  }
	{ eHshStrm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "keyStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "msgStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lenStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "eLenStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "hshStrm", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "eHshStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ keyStrm_dout sc_in sc_lv 32 signal 0 } 
	{ keyStrm_empty_n sc_in sc_logic 1 signal 0 } 
	{ keyStrm_read sc_out sc_logic 1 signal 0 } 
	{ msgStrm_dout sc_in sc_lv 32 signal 1 } 
	{ msgStrm_empty_n sc_in sc_logic 1 signal 1 } 
	{ msgStrm_read sc_out sc_logic 1 signal 1 } 
	{ lenStrm_dout sc_in sc_lv 64 signal 2 } 
	{ lenStrm_empty_n sc_in sc_logic 1 signal 2 } 
	{ lenStrm_read sc_out sc_logic 1 signal 2 } 
	{ eLenStrm_dout sc_in sc_lv 1 signal 3 } 
	{ eLenStrm_empty_n sc_in sc_logic 1 signal 3 } 
	{ eLenStrm_read sc_out sc_logic 1 signal 3 } 
	{ hshStrm_din sc_out sc_lv 256 signal 4 } 
	{ hshStrm_full_n sc_in sc_logic 1 signal 4 } 
	{ hshStrm_write sc_out sc_logic 1 signal 4 } 
	{ eHshStrm_din sc_out sc_lv 1 signal 5 } 
	{ eHshStrm_full_n sc_in sc_logic 1 signal 5 } 
	{ eHshStrm_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "keyStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keyStrm", "role": "dout" }} , 
 	{ "name": "keyStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyStrm", "role": "empty_n" }} , 
 	{ "name": "keyStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyStrm", "role": "read" }} , 
 	{ "name": "msgStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "msgStrm", "role": "dout" }} , 
 	{ "name": "msgStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgStrm", "role": "empty_n" }} , 
 	{ "name": "msgStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgStrm", "role": "read" }} , 
 	{ "name": "lenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "lenStrm", "role": "dout" }} , 
 	{ "name": "lenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lenStrm", "role": "empty_n" }} , 
 	{ "name": "lenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lenStrm", "role": "read" }} , 
 	{ "name": "eLenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eLenStrm", "role": "dout" }} , 
 	{ "name": "eLenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eLenStrm", "role": "empty_n" }} , 
 	{ "name": "eLenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eLenStrm", "role": "read" }} , 
 	{ "name": "hshStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "hshStrm", "role": "din" }} , 
 	{ "name": "hshStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hshStrm", "role": "full_n" }} , 
 	{ "name": "hshStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hshStrm", "role": "write" }} , 
 	{ "name": "eHshStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eHshStrm", "role": "din" }} , 
 	{ "name": "eHshStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eHshStrm", "role": "full_n" }} , 
 	{ "name": "eHshStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eHshStrm", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "test_hmac_sha256",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "keyStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38", "Port" : "keyStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "msgStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38", "Port" : "msgStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "lenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38", "Port" : "lenStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eLenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38", "Port" : "eLenStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "hshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38", "Port" : "hshStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eHshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38", "Port" : "eHshStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38", "Parent" : "0", "Child" : ["2", "5", "75", "141", "142", "143", "144", "145", "146", "147", "148"],
		"CDFG" : "hmacDataflow_32_64_256_32_64_sha256_wrapper_s",
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
			{"ID" : "2", "Name" : "kpad_32_64_256_32_64_sha256_wrapper_U0"}],
		"OutputProcess" : [
			{"ID" : "75", "Name" : "resHash_32_64_256_32_64_sha256_wrapper_U0"}],
		"Port" : [
			{"Name" : "keyStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "kpad_32_64_256_32_64_sha256_wrapper_U0", "Port" : "keyStrm"}]},
			{"Name" : "msgStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "msgHash_32_64_256_32_64_sha256_wrapper_U0", "Port" : "msgStrm"}]},
			{"Name" : "lenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "msgHash_32_64_256_32_64_sha256_wrapper_U0", "Port" : "lenStrm"}]},
			{"Name" : "eLenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "kpad_32_64_256_32_64_sha256_wrapper_U0", "Port" : "eLenStrm"}]},
			{"Name" : "hshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "resHash_32_64_256_32_64_sha256_wrapper_U0", "Port" : "hshStrm"}]},
			{"Name" : "eHshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "resHash_32_64_256_32_64_sha256_wrapper_U0", "Port" : "eHshStrm"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.kpad_32_64_256_32_64_sha256_wrapper_U0", "Parent" : "1", "Child" : ["3"],
		"CDFG" : "kpad_32_64_256_32_64_sha256_wrapper_s",
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
			{"Name" : "keyStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_kpad_32_64_256_32_64_sha256_wrapper_Pipeline_VITIS_LOOP_120_2_fu_215", "Port" : "keyStrm", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "eLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "eLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kipadStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["5","6"], "DependentChan" : "141", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "kipadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kopadStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["5","6"], "DependentChan" : "142", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "kopadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eKipadStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["5","6"], "DependentChan" : "143", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "eKipadStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_118_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.kpad_32_64_256_32_64_sha256_wrapper_U0.grp_kpad_32_64_256_32_64_sha256_wrapper_Pipeline_VITIS_LOOP_120_2_fu_215", "Parent" : "2", "Child" : ["4"],
		"CDFG" : "kpad_32_64_256_32_64_sha256_wrapper_Pipeline_VITIS_LOOP_120_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "keyStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "keyStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_120_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.kpad_32_64_256_32_64_sha256_wrapper_U0.grp_kpad_32_64_256_32_64_sha256_wrapper_Pipeline_VITIS_LOOP_120_2_fu_215.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0", "Parent" : "1", "Child" : ["6", "15", "71", "72", "73", "74"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_msgHash_32_64_256_32_64_sha256_wrapper_U0_U",
		"InputProcess" : [
			{"ID" : "6", "Name" : "mergeKipad_32_64_256_64_U0"}],
		"OutputProcess" : [
			{"ID" : "6", "Name" : "mergeKipad_32_64_256_64_U0"},
			{"ID" : "15", "Name" : "hash_U0"}],
		"Port" : [
			{"Name" : "kipadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "141", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "mergeKipad_32_64_256_64_U0", "Port" : "kipadStrm"}]},
			{"Name" : "kopadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "142", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "mergeKipad_32_64_256_64_U0", "Port" : "kopadStrm"}]},
			{"Name" : "msgStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "mergeKipad_32_64_256_64_U0", "Port" : "msgStrm"}]},
			{"Name" : "lenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "mergeKipad_32_64_256_64_U0", "Port" : "lenStrm"}]},
			{"Name" : "eKipadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "143", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "mergeKipad_32_64_256_64_U0", "Port" : "eKipadStrm"}]},
			{"Name" : "kopad2Strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["75","76"], "DependentChan" : "144", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "mergeKipad_32_64_256_64_U0", "Port" : "kopad2Strm"}]},
			{"Name" : "msgHashStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["75","76"], "DependentChan" : "145", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "hash_U0", "Port" : "msgHashStrm"}]},
			{"Name" : "eMsgHashStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["75","76"], "DependentChan" : "146", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "hash_U0", "Port" : "eMsgHashStrm"}]}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.mergeKipad_32_64_256_64_U0", "Parent" : "5", "Child" : ["7", "9", "13", "14"],
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
			{"Name" : "kipadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "141", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "kipadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kopadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "142", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "kopadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3_fu_133", "Port" : "msgStrm", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "lenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "lenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eKipadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "143", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "eKipadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mergeKipadStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["15"], "DependentChan" : "71", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_162_2_fu_126", "Port" : "mergeKipadStrm", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "9", "SubInstance" : "grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3_fu_133", "Port" : "mergeKipadStrm", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "mergeKipadLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["15"], "DependentChan" : "72", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMergeKipadLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["15"], "DependentChan" : "73", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "eMergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kopad2Strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["75","76"], "DependentChan" : "144", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "kopad2Strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_152_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.mergeKipad_32_64_256_64_U0.grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_162_2_fu_126", "Parent" : "6", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.mergeKipad_32_64_256_64_U0.grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_162_2_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.mergeKipad_32_64_256_64_U0.grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3_fu_133", "Parent" : "6", "Child" : ["10", "11", "12"],
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
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.mergeKipad_32_64_256_64_U0.grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3_fu_133.icmp_63ns_63ns_1_2_1_U10", "Parent" : "9"},
	{"ID" : "11", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.mergeKipad_32_64_256_64_U0.grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3_fu_133.add_63ns_63ns_63_2_1_U11", "Parent" : "9"},
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.mergeKipad_32_64_256_64_U0.grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3_fu_133.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.mergeKipad_32_64_256_64_U0.add_64ns_64ns_64_3_1_U17", "Parent" : "6"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.mergeKipad_32_64_256_64_U0.add_68ns_68ns_68_3_1_U18", "Parent" : "6"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0", "Parent" : "5", "Child" : ["16"],
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
		"StartSource" : "6",
		"StartFifo" : "start_for_hash_U0_U",
		"Port" : [
			{"Name" : "mergeKipadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "71", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sha256_top_32_256_s_fu_32", "Port" : "mergeKopadStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "72", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sha256_top_32_256_s_fu_32", "Port" : "mergeKopadLenStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eMergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "73", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sha256_top_32_256_s_fu_32", "Port" : "eMergeKopadLenStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "msgHashStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["75","76"], "DependentChan" : "145", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sha256_top_32_256_s_fu_32", "Port" : "hshStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eMsgHashStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["75","76"], "DependentChan" : "146", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sha256_top_32_256_s_fu_32", "Port" : "eHshStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32", "Parent" : "15", "Child" : ["17", "25", "28", "39", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70"],
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
			{"ID" : "17", "Name" : "preProcessing_U0"}],
		"OutputProcess" : [
			{"ID" : "39", "Name" : "sha256Digest_256_U0"}],
		"Port" : [
			{"Name" : "mergeKopadStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "preProcessing_U0", "Port" : "mergeKipadStrm"}]},
			{"Name" : "mergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "preProcessing_U0", "Port" : "mergeKipadLenStrm"}]},
			{"Name" : "eMergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "preProcessing_U0", "Port" : "eMergeKipadLenStrm"}]},
			{"Name" : "hshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "sha256Digest_256_U0", "Port" : "msgHashStrm"}]},
			{"Name" : "eHshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "sha256Digest_256_U0", "Port" : "eMsgHashStrm"}]}]},
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.preProcessing_U0", "Parent" : "16", "Child" : ["18", "22", "24"],
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
					{"ID" : "18", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Port" : "mergeKipadStrm", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "22", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280", "Port" : "mergeKipadStrm", "Inst_start_state" : "12", "Inst_end_state" : "34"}]},
			{"Name" : "mergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "eMergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["28"], "DependentChan" : "60", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "blk_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Port" : "blk_strm", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "61", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "62", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_SHA256_GENENERATE_MAIN", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "36", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state33"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "18", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Parent" : "17", "Child" : ["19", "20", "21"],
		"CDFG" : "preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "20",
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
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271.icmp_58ns_58ns_1_2_1_U30", "Parent" : "18"},
	{"ID" : "20", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271.add_58ns_58ns_58_2_1_U31", "Parent" : "18"},
	{"ID" : "21", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280", "Parent" : "17", "Child" : ["23"],
		"CDFG" : "preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
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
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "23", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.preProcessing_U0.add_59ns_59ns_59_2_1_U54", "Parent" : "17"},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.dup_strm_U0", "Parent" : "16", "Child" : ["26"],
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
		"StartSource" : "17",
		"StartFifo" : "start_for_dup_strm_U0_U",
		"Port" : [
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["17"], "DependentChan" : "61", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "nblk_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["17"], "DependentChan" : "62", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "end_nblk_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "nblk_strm1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["28"], "DependentChan" : "63", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "nblk_strm1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "end_nblk_strm1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["28"], "DependentChan" : "64", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "end_nblk_strm1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "nblk_strm2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["39"], "DependentChan" : "65", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "nblk_strm2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "end_nblk_strm2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["39"], "DependentChan" : "66", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "end_nblk_strm2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "26", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.dup_strm_U0.grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Parent" : "25", "Child" : ["27"],
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
	{"ID" : "27", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.dup_strm_U0.grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.generateMsgSchedule_U0", "Parent" : "16", "Child" : ["29", "32", "37", "38"],
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
		"StartSource" : "17",
		"StartFifo" : "start_for_generateMsgSchedule_U0_U",
		"Port" : [
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["17"], "DependentChan" : "60", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "blk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nblk_strm1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["25"], "DependentChan" : "63", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["25"], "DependentChan" : "64", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "w_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["39"], "DependentChan" : "67", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT16_fu_223", "Port" : "w_strm", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "32", "SubInstance" : "grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64_fu_261", "Port" : "w_strm", "Inst_start_state" : "10", "Inst_end_state" : "11"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_530_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_528_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "29", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT16_fu_223", "Parent" : "28", "Child" : ["30", "31"],
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
	{"ID" : "30", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT16_fu_223.sparsemux_33_4_32_1_1_U75", "Parent" : "29"},
	{"ID" : "31", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT16_fu_223.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64_fu_261", "Parent" : "28", "Child" : ["33", "34", "35", "36"],
		"CDFG" : "generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
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
	{"ID" : "33", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64_fu_261.add_32ns_32ns_32_2_1_U110", "Parent" : "32"},
	{"ID" : "34", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64_fu_261.add_32ns_32ns_32_2_1_U111", "Parent" : "32"},
	{"ID" : "35", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64_fu_261.add_32ns_32ns_32_1_1_U112", "Parent" : "32"},
	{"ID" : "36", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64_fu_261.flow_control_loop_pipe_sequential_init_U", "Parent" : "32"},
	{"ID" : "37", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.generateMsgSchedule_U0.icmp_64ns_64ns_1_3_1_U132", "Parent" : "28"},
	{"ID" : "38", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.generateMsgSchedule_U0.add_64ns_64ns_64_3_1_U133", "Parent" : "28"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0", "Parent" : "16", "Child" : ["40", "58", "59"],
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
		"StartSource" : "25",
		"StartFifo" : "start_for_sha256Digest_256_U0_U",
		"Port" : [
			{"Name" : "nblk_strm2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["25"], "DependentChan" : "65", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["25"], "DependentChan" : "66", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "w_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["28"], "DependentChan" : "67", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273", "Port" : "w_strm", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "msgHashStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "msgHashStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMsgHashStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "eMsgHashStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_SHA256_DIGEST_NBLK", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "LOOP_SHA256_DIGEST_MAIN", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "40", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273", "Parent" : "39", "Child" : ["41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57"],
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
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "41", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U139", "Parent" : "40"},
	{"ID" : "42", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.sparsemux_129_6_32_1_1_U140", "Parent" : "40"},
	{"ID" : "43", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_1_1_U141", "Parent" : "40"},
	{"ID" : "44", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_1_1_U142", "Parent" : "40"},
	{"ID" : "45", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_1_1_U143", "Parent" : "40"},
	{"ID" : "46", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U144", "Parent" : "40"},
	{"ID" : "47", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U145", "Parent" : "40"},
	{"ID" : "48", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U146", "Parent" : "40"},
	{"ID" : "49", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U147", "Parent" : "40"},
	{"ID" : "50", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U148", "Parent" : "40"},
	{"ID" : "51", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U149", "Parent" : "40"},
	{"ID" : "52", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U150", "Parent" : "40"},
	{"ID" : "53", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U151", "Parent" : "40"},
	{"ID" : "54", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_1_1_U152", "Parent" : "40"},
	{"ID" : "55", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U153", "Parent" : "40"},
	{"ID" : "56", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U154", "Parent" : "40"},
	{"ID" : "57", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "58", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.icmp_64ns_64ns_1_3_1_U173", "Parent" : "39"},
	{"ID" : "59", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_256_U0.add_64ns_64ns_64_3_1_U174", "Parent" : "39"},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.blk_strm_U", "Parent" : "16"},
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.nblk_strm_U", "Parent" : "16"},
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.end_nblk_strm_U", "Parent" : "16"},
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.nblk_strm1_U", "Parent" : "16"},
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.end_nblk_strm1_U", "Parent" : "16"},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.nblk_strm2_U", "Parent" : "16"},
	{"ID" : "66", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.end_nblk_strm2_U", "Parent" : "16"},
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.w_strm_U", "Parent" : "16"},
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.start_for_dup_strm_U0_U", "Parent" : "16"},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.start_for_generateMsgSchedule_U0_U", "Parent" : "16"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.start_for_sha256Digest_256_U0_U", "Parent" : "16"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.mergeKipadStrm_U", "Parent" : "5"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.mergeKipadLenStrm_U", "Parent" : "5"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.eMergeKipadLenStrm_U", "Parent" : "5"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.start_for_hash_U0_U", "Parent" : "5"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0", "Parent" : "1", "Child" : ["76", "81", "137", "138", "139", "140"],
		"CDFG" : "resHash_32_64_256_32_64_sha256_wrapper_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
		"StartSource" : "5",
		"StartFifo" : "start_for_resHash_32_64_256_32_64_sha256_wrapper_U0_U",
		"InputProcess" : [
			{"ID" : "76", "Name" : "mergeKopad_32_64_256_32_64_U0"}],
		"OutputProcess" : [
			{"ID" : "81", "Name" : "hash_1_U0"}],
		"Port" : [
			{"Name" : "kopad2Strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5","6"], "DependentChan" : "144", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "mergeKopad_32_64_256_32_64_U0", "Port" : "kopad2Strm"}]},
			{"Name" : "msgHashStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5","15"], "DependentChan" : "145", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "mergeKopad_32_64_256_32_64_U0", "Port" : "msgHashStrm"}]},
			{"Name" : "eMsgHashStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5","15"], "DependentChan" : "146", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "mergeKopad_32_64_256_32_64_U0", "Port" : "eMsgHashStrm"}]},
			{"Name" : "hshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "hash_1_U0", "Port" : "hshStrm"}]},
			{"Name" : "eHshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "hash_1_U0", "Port" : "eHshStrm"}]}]},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.mergeKopad_32_64_256_32_64_U0", "Parent" : "75", "Child" : ["77", "79"],
		"CDFG" : "mergeKopad_32_64_256_32_64_s",
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
			{"Name" : "kopad2Strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5","6"], "DependentChan" : "144", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "kopad2Strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgHashStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5","15"], "DependentChan" : "145", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "msgHashStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMsgHashStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5","15"], "DependentChan" : "146", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "eMsgHashStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mergeKopadStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["81"], "DependentChan" : "137", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_220_2_fu_91", "Port" : "mergeKopadStrm", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "79", "SubInstance" : "grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_226_3_fu_98", "Port" : "mergeKopadStrm", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "mergeKopadLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["81"], "DependentChan" : "138", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mergeKopadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMergeKopadLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["81"], "DependentChan" : "139", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "eMergeKopadLenStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_213_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.mergeKopad_32_64_256_32_64_U0.grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_220_2_fu_91", "Parent" : "76", "Child" : ["78"],
		"CDFG" : "mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_220_2",
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
			{"Name" : "kopad", "Type" : "None", "Direction" : "I"},
			{"Name" : "mergeKopadStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mergeKopadStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_220_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.mergeKopad_32_64_256_32_64_U0.grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_220_2_fu_91.flow_control_loop_pipe_sequential_init_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.mergeKopad_32_64_256_32_64_U0.grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_226_3_fu_98", "Parent" : "76", "Child" : ["80"],
		"CDFG" : "mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_226_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "msgHash", "Type" : "None", "Direction" : "I"},
			{"Name" : "mergeKopadStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mergeKopadStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_226_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "80", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.mergeKopad_32_64_256_32_64_U0.grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_226_3_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0", "Parent" : "75", "Child" : ["82"],
		"CDFG" : "hash_1",
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
		"StartSource" : "76",
		"StartFifo" : "start_for_hash_1_U0_U",
		"Port" : [
			{"Name" : "mergeKopadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "137", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_sha256_top_32_256_s_fu_30", "Port" : "mergeKopadStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "138", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_sha256_top_32_256_s_fu_30", "Port" : "mergeKopadLenStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eMergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "139", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_sha256_top_32_256_s_fu_30", "Port" : "eMergeKopadLenStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "hshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_sha256_top_32_256_s_fu_30", "Port" : "hshStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eHshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_sha256_top_32_256_s_fu_30", "Port" : "eHshStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30", "Parent" : "81", "Child" : ["83", "91", "94", "105", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136"],
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
			{"ID" : "83", "Name" : "preProcessing_U0"}],
		"OutputProcess" : [
			{"ID" : "105", "Name" : "sha256Digest_256_U0"}],
		"Port" : [
			{"Name" : "mergeKopadStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "preProcessing_U0", "Port" : "mergeKipadStrm"}]},
			{"Name" : "mergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "preProcessing_U0", "Port" : "mergeKipadLenStrm"}]},
			{"Name" : "eMergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "preProcessing_U0", "Port" : "eMergeKipadLenStrm"}]},
			{"Name" : "hshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "sha256Digest_256_U0", "Port" : "msgHashStrm"}]},
			{"Name" : "eHshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "sha256Digest_256_U0", "Port" : "eMsgHashStrm"}]}]},
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.preProcessing_U0", "Parent" : "82", "Child" : ["84", "88", "90"],
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
					{"ID" : "84", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Port" : "mergeKipadStrm", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "88", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280", "Port" : "mergeKipadStrm", "Inst_start_state" : "12", "Inst_end_state" : "34"}]},
			{"Name" : "mergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "eMergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["94"], "DependentChan" : "126", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "blk_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Port" : "blk_strm", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["91"], "DependentChan" : "127", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["91"], "DependentChan" : "128", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_SHA256_GENENERATE_MAIN", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "36", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state33"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "84", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Parent" : "83", "Child" : ["85", "86", "87"],
		"CDFG" : "preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "20",
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
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "85", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271.icmp_58ns_58ns_1_2_1_U30", "Parent" : "84"},
	{"ID" : "86", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271.add_58ns_58ns_58_2_1_U31", "Parent" : "84"},
	{"ID" : "87", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271.flow_control_loop_pipe_sequential_init_U", "Parent" : "84"},
	{"ID" : "88", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280", "Parent" : "83", "Child" : ["89"],
		"CDFG" : "preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
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
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "89", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280.flow_control_loop_pipe_sequential_init_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.preProcessing_U0.add_59ns_59ns_59_2_1_U54", "Parent" : "83"},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.dup_strm_U0", "Parent" : "82", "Child" : ["92"],
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
		"StartSource" : "83",
		"StartFifo" : "start_for_dup_strm_U0_U",
		"Port" : [
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["83"], "DependentChan" : "127", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "nblk_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["83"], "DependentChan" : "128", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "end_nblk_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "nblk_strm1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["94"], "DependentChan" : "129", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "nblk_strm1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "end_nblk_strm1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["94"], "DependentChan" : "130", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "end_nblk_strm1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "nblk_strm2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["105"], "DependentChan" : "131", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "nblk_strm2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "end_nblk_strm2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["105"], "DependentChan" : "132", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "end_nblk_strm2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "92", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.dup_strm_U0.grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Parent" : "91", "Child" : ["93"],
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
	{"ID" : "93", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.dup_strm_U0.grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.generateMsgSchedule_U0", "Parent" : "82", "Child" : ["95", "98", "103", "104"],
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
		"StartSource" : "83",
		"StartFifo" : "start_for_generateMsgSchedule_U0_U",
		"Port" : [
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["83"], "DependentChan" : "126", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "blk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nblk_strm1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["91"], "DependentChan" : "129", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["91"], "DependentChan" : "130", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "w_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["105"], "DependentChan" : "133", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT16_fu_223", "Port" : "w_strm", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "98", "SubInstance" : "grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64_fu_261", "Port" : "w_strm", "Inst_start_state" : "10", "Inst_end_state" : "11"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_530_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_528_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "95", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT16_fu_223", "Parent" : "94", "Child" : ["96", "97"],
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
	{"ID" : "96", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT16_fu_223.sparsemux_33_4_32_1_1_U75", "Parent" : "95"},
	{"ID" : "97", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT16_fu_223.flow_control_loop_pipe_sequential_init_U", "Parent" : "95"},
	{"ID" : "98", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64_fu_261", "Parent" : "94", "Child" : ["99", "100", "101", "102"],
		"CDFG" : "generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
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
	{"ID" : "99", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64_fu_261.add_32ns_32ns_32_2_1_U110", "Parent" : "98"},
	{"ID" : "100", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64_fu_261.add_32ns_32ns_32_2_1_U111", "Parent" : "98"},
	{"ID" : "101", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64_fu_261.add_32ns_32ns_32_1_1_U112", "Parent" : "98"},
	{"ID" : "102", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64_fu_261.flow_control_loop_pipe_sequential_init_U", "Parent" : "98"},
	{"ID" : "103", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.generateMsgSchedule_U0.icmp_64ns_64ns_1_3_1_U132", "Parent" : "94"},
	{"ID" : "104", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.generateMsgSchedule_U0.add_64ns_64ns_64_3_1_U133", "Parent" : "94"},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_256_U0", "Parent" : "82", "Child" : ["106", "124", "125"],
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
		"StartSource" : "91",
		"StartFifo" : "start_for_sha256Digest_256_U0_U",
		"Port" : [
			{"Name" : "nblk_strm2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["91"], "DependentChan" : "131", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["91"], "DependentChan" : "132", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "w_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["94"], "DependentChan" : "133", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273", "Port" : "w_strm", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "msgHashStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "msgHashStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMsgHashStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "eMsgHashStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_SHA256_DIGEST_NBLK", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "LOOP_SHA256_DIGEST_MAIN", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "106", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273", "Parent" : "105", "Child" : ["107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123"],
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
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "107", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U139", "Parent" : "106"},
	{"ID" : "108", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.sparsemux_129_6_32_1_1_U140", "Parent" : "106"},
	{"ID" : "109", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_1_1_U141", "Parent" : "106"},
	{"ID" : "110", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_1_1_U142", "Parent" : "106"},
	{"ID" : "111", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_1_1_U143", "Parent" : "106"},
	{"ID" : "112", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U144", "Parent" : "106"},
	{"ID" : "113", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U145", "Parent" : "106"},
	{"ID" : "114", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U146", "Parent" : "106"},
	{"ID" : "115", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U147", "Parent" : "106"},
	{"ID" : "116", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U148", "Parent" : "106"},
	{"ID" : "117", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U149", "Parent" : "106"},
	{"ID" : "118", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U150", "Parent" : "106"},
	{"ID" : "119", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U151", "Parent" : "106"},
	{"ID" : "120", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_1_1_U152", "Parent" : "106"},
	{"ID" : "121", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U153", "Parent" : "106"},
	{"ID" : "122", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U154", "Parent" : "106"},
	{"ID" : "123", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.flow_control_loop_pipe_sequential_init_U", "Parent" : "106"},
	{"ID" : "124", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_256_U0.icmp_64ns_64ns_1_3_1_U173", "Parent" : "105"},
	{"ID" : "125", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_256_U0.add_64ns_64ns_64_3_1_U174", "Parent" : "105"},
	{"ID" : "126", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.blk_strm_U", "Parent" : "82"},
	{"ID" : "127", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.nblk_strm_U", "Parent" : "82"},
	{"ID" : "128", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.end_nblk_strm_U", "Parent" : "82"},
	{"ID" : "129", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.nblk_strm1_U", "Parent" : "82"},
	{"ID" : "130", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.end_nblk_strm1_U", "Parent" : "82"},
	{"ID" : "131", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.nblk_strm2_U", "Parent" : "82"},
	{"ID" : "132", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.end_nblk_strm2_U", "Parent" : "82"},
	{"ID" : "133", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.w_strm_U", "Parent" : "82"},
	{"ID" : "134", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.start_for_dup_strm_U0_U", "Parent" : "82"},
	{"ID" : "135", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.start_for_generateMsgSchedule_U0_U", "Parent" : "82"},
	{"ID" : "136", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.start_for_sha256Digest_256_U0_U", "Parent" : "82"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.mergeKopadStrm_U", "Parent" : "75"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.mergeKopadLenStrm_U", "Parent" : "75"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.eMergeKopadLenStrm_U", "Parent" : "75"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.start_for_hash_1_U0_U", "Parent" : "75"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.kipadStrm_U", "Parent" : "1"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.kopadStrm_U", "Parent" : "1"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.eKipadStrm_U", "Parent" : "1"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.kopad2Strm_U", "Parent" : "1"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHashStrm_U", "Parent" : "1"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.eMsgHashStrm_U", "Parent" : "1"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.start_for_msgHash_32_64_256_32_64_sha256_wrapper_U0_U", "Parent" : "1"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.start_for_resHash_32_64_256_32_64_sha256_wrapper_U0_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	test_hmac_sha256 {
		keyStrm {Type I LastRead 1 FirstWrite -1}
		msgStrm {Type I LastRead 2 FirstWrite -1}
		lenStrm {Type I LastRead 1 FirstWrite -1}
		eLenStrm {Type I LastRead 1 FirstWrite -1}
		hshStrm {Type O LastRead -1 FirstWrite 6}
		eHshStrm {Type O LastRead -1 FirstWrite 2}}
	hmacDataflow_32_64_256_32_64_sha256_wrapper_s {
		keyStrm {Type I LastRead 1 FirstWrite -1}
		msgStrm {Type I LastRead 2 FirstWrite -1}
		lenStrm {Type I LastRead 1 FirstWrite -1}
		eLenStrm {Type I LastRead 1 FirstWrite -1}
		hshStrm {Type O LastRead -1 FirstWrite 6}
		eHshStrm {Type O LastRead -1 FirstWrite 2}}
	kpad_32_64_256_32_64_sha256_wrapper_s {
		keyStrm {Type I LastRead 1 FirstWrite -1}
		eLenStrm {Type I LastRead 1 FirstWrite -1}
		kipadStrm {Type O LastRead -1 FirstWrite 4}
		kopadStrm {Type O LastRead -1 FirstWrite 4}
		eKipadStrm {Type O LastRead -1 FirstWrite 1}}
	kpad_32_64_256_32_64_sha256_wrapper_Pipeline_VITIS_LOOP_120_2 {
		keyStrm {Type I LastRead 1 FirstWrite -1}
		k1_out {Type O LastRead -1 FirstWrite 0}}
	msgHash_32_64_256_32_64_sha256_wrapper_s {
		kipadStrm {Type I LastRead 1 FirstWrite -1}
		kopadStrm {Type I LastRead 8 FirstWrite -1}
		msgStrm {Type I LastRead 2 FirstWrite -1}
		lenStrm {Type I LastRead 1 FirstWrite -1}
		eKipadStrm {Type I LastRead 1 FirstWrite -1}
		kopad2Strm {Type O LastRead -1 FirstWrite 8}
		msgHashStrm {Type O LastRead -1 FirstWrite 6}
		eMsgHashStrm {Type O LastRead -1 FirstWrite 2}}
	mergeKipad_32_64_256_64_s {
		kipadStrm {Type I LastRead 1 FirstWrite -1}
		kopadStrm {Type I LastRead 8 FirstWrite -1}
		msgStrm {Type I LastRead 2 FirstWrite -1}
		lenStrm {Type I LastRead 1 FirstWrite -1}
		eKipadStrm {Type I LastRead 1 FirstWrite -1}
		mergeKipadStrm {Type O LastRead -1 FirstWrite 1}
		mergeKipadLenStrm {Type O LastRead -1 FirstWrite 5}
		eMergeKipadLenStrm {Type O LastRead -1 FirstWrite 1}
		kopad2Strm {Type O LastRead -1 FirstWrite 8}}
	mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_162_2 {
		kipad {Type I LastRead 0 FirstWrite -1}
		mergeKipadStrm {Type O LastRead -1 FirstWrite 1}}
	mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3 {
		empty {Type I LastRead 0 FirstWrite -1}
		msgStrm {Type I LastRead 2 FirstWrite -1}
		mergeKipadStrm {Type O LastRead -1 FirstWrite 2}}
	hash {
		mergeKipadStrm {Type I LastRead 28 FirstWrite -1}
		mergeKipadLenStrm {Type I LastRead 2 FirstWrite -1}
		eMergeKipadLenStrm {Type I LastRead 31 FirstWrite -1}
		msgHashStrm {Type O LastRead -1 FirstWrite 6}
		eMsgHashStrm {Type O LastRead -1 FirstWrite 2}}
	sha256_top_32_256_s {
		mergeKopadStrm {Type I LastRead 28 FirstWrite -1}
		mergeKopadLenStrm {Type I LastRead 2 FirstWrite -1}
		eMergeKopadLenStrm {Type I LastRead 31 FirstWrite -1}
		hshStrm {Type O LastRead -1 FirstWrite 6}
		eHshStrm {Type O LastRead -1 FirstWrite 2}}
	preProcessing {
		mergeKipadStrm {Type I LastRead 28 FirstWrite -1}
		mergeKipadLenStrm {Type I LastRead 2 FirstWrite -1}
		eMergeKipadLenStrm {Type I LastRead 31 FirstWrite -1}
		blk_strm {Type O LastRead -1 FirstWrite 11}
		nblk_strm {Type O LastRead -1 FirstWrite 7}
		end_nblk_strm {Type O LastRead -1 FirstWrite 2}}
	preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS {
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		mergeKipadStrm {Type I LastRead 18 FirstWrite -1}
		blk_strm {Type O LastRead -1 FirstWrite 18}}
	preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE {
		mergeKipadStrm {Type I LastRead 2 FirstWrite -1}
		p_cast {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		b_16_out {Type O LastRead -1 FirstWrite 1}
		b_15_out {Type O LastRead -1 FirstWrite 1}
		b_14_out {Type O LastRead -1 FirstWrite 1}
		b_13_out {Type O LastRead -1 FirstWrite 1}
		b_12_out {Type O LastRead -1 FirstWrite 1}
		b_11_out {Type O LastRead -1 FirstWrite 1}
		b_10_out {Type O LastRead -1 FirstWrite 1}
		b_9_out {Type O LastRead -1 FirstWrite 1}
		b_8_out {Type O LastRead -1 FirstWrite 1}
		b_7_out {Type O LastRead -1 FirstWrite 1}
		b_6_out {Type O LastRead -1 FirstWrite 1}
		b_5_out {Type O LastRead -1 FirstWrite 1}
		b_4_out {Type O LastRead -1 FirstWrite 1}
		b_out {Type O LastRead -1 FirstWrite 1}}
	dup_strm {
		nblk_strm {Type I LastRead 1 FirstWrite -1}
		end_nblk_strm {Type I LastRead 1 FirstWrite -1}
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
		end_nblk_strm {Type I LastRead 1 FirstWrite -1}}
	generateMsgSchedule {
		blk_strm {Type I LastRead 6 FirstWrite -1}
		nblk_strm1 {Type I LastRead 2 FirstWrite -1}
		end_nblk_strm1 {Type I LastRead 6 FirstWrite -1}
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
		nblk_strm2 {Type I LastRead 2 FirstWrite -1}
		end_nblk_strm2 {Type I LastRead 6 FirstWrite -1}
		w_strm {Type I LastRead 2 FirstWrite -1}
		msgHashStrm {Type O LastRead -1 FirstWrite 6}
		eMsgHashStrm {Type O LastRead -1 FirstWrite 2}}
	sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS {
		h {Type I LastRead 0 FirstWrite -1}
		g {Type I LastRead 0 FirstWrite -1}
		f {Type I LastRead 0 FirstWrite -1}
		e {Type I LastRead 0 FirstWrite -1}
		d {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		w_strm {Type I LastRead 2 FirstWrite -1}
		add_ln6888_out {Type O LastRead -1 FirstWrite 3}
		add_ln6897_out {Type O LastRead -1 FirstWrite 3}
		add_ln6906_out {Type O LastRead -1 FirstWrite 3}
		add_ln6915_out {Type O LastRead -1 FirstWrite 3}
		add_ln6924_out {Type O LastRead -1 FirstWrite 3}
		add_ln6933_out {Type O LastRead -1 FirstWrite 3}
		add_ln6942_out {Type O LastRead -1 FirstWrite 3}
		add_ln6951_out {Type O LastRead -1 FirstWrite 3}}
	resHash_32_64_256_32_64_sha256_wrapper_s {
		kopad2Strm {Type I LastRead 1 FirstWrite -1}
		msgHashStrm {Type I LastRead 1 FirstWrite -1}
		eMsgHashStrm {Type I LastRead 1 FirstWrite -1}
		hshStrm {Type O LastRead -1 FirstWrite 6}
		eHshStrm {Type O LastRead -1 FirstWrite 2}}
	mergeKopad_32_64_256_32_64_s {
		kopad2Strm {Type I LastRead 1 FirstWrite -1}
		msgHashStrm {Type I LastRead 1 FirstWrite -1}
		eMsgHashStrm {Type I LastRead 1 FirstWrite -1}
		mergeKopadStrm {Type O LastRead -1 FirstWrite 1}
		mergeKopadLenStrm {Type O LastRead -1 FirstWrite 1}
		eMergeKopadLenStrm {Type O LastRead -1 FirstWrite 1}}
	mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_220_2 {
		kopad {Type I LastRead 0 FirstWrite -1}
		mergeKopadStrm {Type O LastRead -1 FirstWrite 1}}
	mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_226_3 {
		msgHash {Type I LastRead 0 FirstWrite -1}
		mergeKopadStrm {Type O LastRead -1 FirstWrite 1}}
	hash_1 {
		mergeKopadStrm {Type I LastRead 28 FirstWrite -1}
		mergeKopadLenStrm {Type I LastRead 2 FirstWrite -1}
		eMergeKopadLenStrm {Type I LastRead 31 FirstWrite -1}
		hshStrm {Type O LastRead -1 FirstWrite 6}
		eHshStrm {Type O LastRead -1 FirstWrite 2}}
	sha256_top_32_256_s {
		mergeKopadStrm {Type I LastRead 28 FirstWrite -1}
		mergeKopadLenStrm {Type I LastRead 2 FirstWrite -1}
		eMergeKopadLenStrm {Type I LastRead 31 FirstWrite -1}
		hshStrm {Type O LastRead -1 FirstWrite 6}
		eHshStrm {Type O LastRead -1 FirstWrite 2}}
	preProcessing {
		mergeKipadStrm {Type I LastRead 28 FirstWrite -1}
		mergeKipadLenStrm {Type I LastRead 2 FirstWrite -1}
		eMergeKipadLenStrm {Type I LastRead 31 FirstWrite -1}
		blk_strm {Type O LastRead -1 FirstWrite 11}
		nblk_strm {Type O LastRead -1 FirstWrite 7}
		end_nblk_strm {Type O LastRead -1 FirstWrite 2}}
	preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS {
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		mergeKipadStrm {Type I LastRead 18 FirstWrite -1}
		blk_strm {Type O LastRead -1 FirstWrite 18}}
	preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE {
		mergeKipadStrm {Type I LastRead 2 FirstWrite -1}
		p_cast {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		b_16_out {Type O LastRead -1 FirstWrite 1}
		b_15_out {Type O LastRead -1 FirstWrite 1}
		b_14_out {Type O LastRead -1 FirstWrite 1}
		b_13_out {Type O LastRead -1 FirstWrite 1}
		b_12_out {Type O LastRead -1 FirstWrite 1}
		b_11_out {Type O LastRead -1 FirstWrite 1}
		b_10_out {Type O LastRead -1 FirstWrite 1}
		b_9_out {Type O LastRead -1 FirstWrite 1}
		b_8_out {Type O LastRead -1 FirstWrite 1}
		b_7_out {Type O LastRead -1 FirstWrite 1}
		b_6_out {Type O LastRead -1 FirstWrite 1}
		b_5_out {Type O LastRead -1 FirstWrite 1}
		b_4_out {Type O LastRead -1 FirstWrite 1}
		b_out {Type O LastRead -1 FirstWrite 1}}
	dup_strm {
		nblk_strm {Type I LastRead 1 FirstWrite -1}
		end_nblk_strm {Type I LastRead 1 FirstWrite -1}
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
		end_nblk_strm {Type I LastRead 1 FirstWrite -1}}
	generateMsgSchedule {
		blk_strm {Type I LastRead 6 FirstWrite -1}
		nblk_strm1 {Type I LastRead 2 FirstWrite -1}
		end_nblk_strm1 {Type I LastRead 6 FirstWrite -1}
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
		nblk_strm2 {Type I LastRead 2 FirstWrite -1}
		end_nblk_strm2 {Type I LastRead 6 FirstWrite -1}
		w_strm {Type I LastRead 2 FirstWrite -1}
		msgHashStrm {Type O LastRead -1 FirstWrite 6}
		eMsgHashStrm {Type O LastRead -1 FirstWrite 2}}
	sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS {
		h {Type I LastRead 0 FirstWrite -1}
		g {Type I LastRead 0 FirstWrite -1}
		f {Type I LastRead 0 FirstWrite -1}
		e {Type I LastRead 0 FirstWrite -1}
		d {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		w_strm {Type I LastRead 2 FirstWrite -1}
		add_ln6888_out {Type O LastRead -1 FirstWrite 3}
		add_ln6897_out {Type O LastRead -1 FirstWrite 3}
		add_ln6906_out {Type O LastRead -1 FirstWrite 3}
		add_ln6915_out {Type O LastRead -1 FirstWrite 3}
		add_ln6924_out {Type O LastRead -1 FirstWrite 3}
		add_ln6933_out {Type O LastRead -1 FirstWrite 3}
		add_ln6942_out {Type O LastRead -1 FirstWrite 3}
		add_ln6951_out {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	keyStrm { ap_fifo {  { keyStrm_dout fifo_data_in 0 32 }  { keyStrm_empty_n fifo_status 0 1 }  { keyStrm_read fifo_port_we 1 1 } } }
	msgStrm { ap_fifo {  { msgStrm_dout fifo_data_in 0 32 }  { msgStrm_empty_n fifo_status 0 1 }  { msgStrm_read fifo_port_we 1 1 } } }
	lenStrm { ap_fifo {  { lenStrm_dout fifo_data_in 0 64 }  { lenStrm_empty_n fifo_status 0 1 }  { lenStrm_read fifo_port_we 1 1 } } }
	eLenStrm { ap_fifo {  { eLenStrm_dout fifo_data_in 0 1 }  { eLenStrm_empty_n fifo_status 0 1 }  { eLenStrm_read fifo_port_we 1 1 } } }
	hshStrm { ap_fifo {  { hshStrm_din fifo_data_in 1 256 }  { hshStrm_full_n fifo_status 0 1 }  { hshStrm_write fifo_port_we 1 1 } } }
	eHshStrm { ap_fifo {  { eHshStrm_din fifo_data_in 1 1 }  { eHshStrm_full_n fifo_status 0 1 }  { eHshStrm_write fifo_port_we 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	keyStrm { fifo_read 1 no_conditional }
	msgStrm { fifo_read 1 no_conditional }
	lenStrm { fifo_read 1 no_conditional }
	eLenStrm { fifo_read 1 no_conditional }
	hshStrm { fifo_write 1 no_conditional }
	eHshStrm { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
