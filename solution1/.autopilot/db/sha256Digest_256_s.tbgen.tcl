set moduleName sha256Digest_256_s
set isTopModule 0
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
set C_modelName {sha256Digest<256>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ nblk_strm2 int 64 regular {fifo 0 volatile }  }
	{ end_nblk_strm2 int 1 regular {fifo 0 volatile }  }
	{ w_strm int 32 regular {fifo 0 volatile }  }
	{ msgHashStrm int 256 regular {fifo 1 volatile }  }
	{ eMsgHashStrm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "nblk_strm2", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "end_nblk_strm2", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "w_strm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "msgHashStrm", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "eMsgHashStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nblk_strm2_dout sc_in sc_lv 64 signal 0 } 
	{ nblk_strm2_empty_n sc_in sc_logic 1 signal 0 } 
	{ nblk_strm2_read sc_out sc_logic 1 signal 0 } 
	{ nblk_strm2_num_data_valid sc_in sc_lv 6 signal 0 } 
	{ nblk_strm2_fifo_cap sc_in sc_lv 6 signal 0 } 
	{ end_nblk_strm2_dout sc_in sc_lv 1 signal 1 } 
	{ end_nblk_strm2_empty_n sc_in sc_logic 1 signal 1 } 
	{ end_nblk_strm2_read sc_out sc_logic 1 signal 1 } 
	{ end_nblk_strm2_num_data_valid sc_in sc_lv 6 signal 1 } 
	{ end_nblk_strm2_fifo_cap sc_in sc_lv 6 signal 1 } 
	{ w_strm_dout sc_in sc_lv 32 signal 2 } 
	{ w_strm_empty_n sc_in sc_logic 1 signal 2 } 
	{ w_strm_read sc_out sc_logic 1 signal 2 } 
	{ w_strm_num_data_valid sc_in sc_lv 6 signal 2 } 
	{ w_strm_fifo_cap sc_in sc_lv 6 signal 2 } 
	{ msgHashStrm_din sc_out sc_lv 256 signal 3 } 
	{ msgHashStrm_full_n sc_in sc_logic 1 signal 3 } 
	{ msgHashStrm_write sc_out sc_logic 1 signal 3 } 
	{ msgHashStrm_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ msgHashStrm_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ eMsgHashStrm_din sc_out sc_lv 1 signal 4 } 
	{ eMsgHashStrm_full_n sc_in sc_logic 1 signal 4 } 
	{ eMsgHashStrm_write sc_out sc_logic 1 signal 4 } 
	{ eMsgHashStrm_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ eMsgHashStrm_fifo_cap sc_in sc_lv 3 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nblk_strm2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "nblk_strm2", "role": "dout" }} , 
 	{ "name": "nblk_strm2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nblk_strm2", "role": "empty_n" }} , 
 	{ "name": "nblk_strm2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nblk_strm2", "role": "read" }} , 
 	{ "name": "nblk_strm2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "nblk_strm2", "role": "num_data_valid" }} , 
 	{ "name": "nblk_strm2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "nblk_strm2", "role": "fifo_cap" }} , 
 	{ "name": "end_nblk_strm2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm2", "role": "dout" }} , 
 	{ "name": "end_nblk_strm2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm2", "role": "empty_n" }} , 
 	{ "name": "end_nblk_strm2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm2", "role": "read" }} , 
 	{ "name": "end_nblk_strm2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "end_nblk_strm2", "role": "num_data_valid" }} , 
 	{ "name": "end_nblk_strm2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "end_nblk_strm2", "role": "fifo_cap" }} , 
 	{ "name": "w_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_strm", "role": "dout" }} , 
 	{ "name": "w_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_strm", "role": "empty_n" }} , 
 	{ "name": "w_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_strm", "role": "read" }} , 
 	{ "name": "w_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "w_strm", "role": "num_data_valid" }} , 
 	{ "name": "w_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "w_strm", "role": "fifo_cap" }} , 
 	{ "name": "msgHashStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "msgHashStrm", "role": "din" }} , 
 	{ "name": "msgHashStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgHashStrm", "role": "full_n" }} , 
 	{ "name": "msgHashStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgHashStrm", "role": "write" }} , 
 	{ "name": "msgHashStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "msgHashStrm", "role": "num_data_valid" }} , 
 	{ "name": "msgHashStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "msgHashStrm", "role": "fifo_cap" }} , 
 	{ "name": "eMsgHashStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eMsgHashStrm", "role": "din" }} , 
 	{ "name": "eMsgHashStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eMsgHashStrm", "role": "full_n" }} , 
 	{ "name": "eMsgHashStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eMsgHashStrm", "role": "write" }} , 
 	{ "name": "eMsgHashStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eMsgHashStrm", "role": "num_data_valid" }} , 
 	{ "name": "eMsgHashStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eMsgHashStrm", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "19", "20"],
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
		"Port" : [
			{"Name" : "nblk_strm2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "w_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273", "Port" : "w_strm", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U139", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.sparsemux_129_6_32_1_1_U140", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_1_1_U141", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_1_1_U142", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_1_1_U143", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U144", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U145", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U146", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U147", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U148", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U149", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U150", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U151", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_1_1_U152", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U153", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U154", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_64ns_64ns_1_3_1_U173", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_64ns_64ns_64_3_1_U174", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	nblk_strm2 { ap_fifo {  { nblk_strm2_dout fifo_data_in 0 64 }  { nblk_strm2_empty_n fifo_status 0 1 }  { nblk_strm2_read fifo_port_we 1 1 }  { nblk_strm2_num_data_valid fifo_status_num_data_valid 0 6 }  { nblk_strm2_fifo_cap fifo_update 0 6 } } }
	end_nblk_strm2 { ap_fifo {  { end_nblk_strm2_dout fifo_data_in 0 1 }  { end_nblk_strm2_empty_n fifo_status 0 1 }  { end_nblk_strm2_read fifo_port_we 1 1 }  { end_nblk_strm2_num_data_valid fifo_status_num_data_valid 0 6 }  { end_nblk_strm2_fifo_cap fifo_update 0 6 } } }
	w_strm { ap_fifo {  { w_strm_dout fifo_data_in 0 32 }  { w_strm_empty_n fifo_status 0 1 }  { w_strm_read fifo_port_we 1 1 }  { w_strm_num_data_valid fifo_status_num_data_valid 0 6 }  { w_strm_fifo_cap fifo_update 0 6 } } }
	msgHashStrm { ap_fifo {  { msgHashStrm_din fifo_data_in 1 256 }  { msgHashStrm_full_n fifo_status 0 1 }  { msgHashStrm_write fifo_port_we 1 1 }  { msgHashStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { msgHashStrm_fifo_cap fifo_update 0 3 } } }
	eMsgHashStrm { ap_fifo {  { eMsgHashStrm_din fifo_data_in 1 1 }  { eMsgHashStrm_full_n fifo_status 0 1 }  { eMsgHashStrm_write fifo_port_we 1 1 }  { eMsgHashStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { eMsgHashStrm_fifo_cap fifo_update 0 3 } } }
}
