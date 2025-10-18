set moduleName sha256_top_32_256_s
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
set C_modelName {sha256_top<32, 256>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ mergeKopadStrm int 32 regular {fifo 0 volatile }  }
	{ mergeKopadLenStrm int 64 regular {fifo 0 volatile }  }
	{ eMergeKopadLenStrm int 1 regular {fifo 0 volatile }  }
	{ hshStrm int 256 regular {fifo 1 volatile }  }
	{ eHshStrm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "mergeKopadStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mergeKopadLenStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "eMergeKopadLenStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "hshStrm", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "eHshStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ mergeKopadStrm_dout sc_in sc_lv 32 signal 0 } 
	{ mergeKopadStrm_empty_n sc_in sc_logic 1 signal 0 } 
	{ mergeKopadStrm_read sc_out sc_logic 1 signal 0 } 
	{ mergeKopadLenStrm_dout sc_in sc_lv 64 signal 1 } 
	{ mergeKopadLenStrm_empty_n sc_in sc_logic 1 signal 1 } 
	{ mergeKopadLenStrm_read sc_out sc_logic 1 signal 1 } 
	{ eMergeKopadLenStrm_dout sc_in sc_lv 1 signal 2 } 
	{ eMergeKopadLenStrm_empty_n sc_in sc_logic 1 signal 2 } 
	{ eMergeKopadLenStrm_read sc_out sc_logic 1 signal 2 } 
	{ hshStrm_din sc_out sc_lv 256 signal 3 } 
	{ hshStrm_full_n sc_in sc_logic 1 signal 3 } 
	{ hshStrm_write sc_out sc_logic 1 signal 3 } 
	{ eHshStrm_din sc_out sc_lv 1 signal 4 } 
	{ eHshStrm_full_n sc_in sc_logic 1 signal 4 } 
	{ eHshStrm_write sc_out sc_logic 1 signal 4 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "mergeKopadStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mergeKopadStrm", "role": "dout" }} , 
 	{ "name": "mergeKopadStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKopadStrm", "role": "empty_n" }} , 
 	{ "name": "mergeKopadStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKopadStrm", "role": "read" }} , 
 	{ "name": "mergeKopadLenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mergeKopadLenStrm", "role": "dout" }} , 
 	{ "name": "mergeKopadLenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKopadLenStrm", "role": "empty_n" }} , 
 	{ "name": "mergeKopadLenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKopadLenStrm", "role": "read" }} , 
 	{ "name": "eMergeKopadLenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eMergeKopadLenStrm", "role": "dout" }} , 
 	{ "name": "eMergeKopadLenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eMergeKopadLenStrm", "role": "empty_n" }} , 
 	{ "name": "eMergeKopadLenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eMergeKopadLenStrm", "role": "read" }} , 
 	{ "name": "hshStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "hshStrm", "role": "din" }} , 
 	{ "name": "hshStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hshStrm", "role": "full_n" }} , 
 	{ "name": "hshStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hshStrm", "role": "write" }} , 
 	{ "name": "eHshStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eHshStrm", "role": "din" }} , 
 	{ "name": "eHshStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eHshStrm", "role": "full_n" }} , 
 	{ "name": "eHshStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eHshStrm", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "9", "12", "23", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54"],
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
			{"ID" : "1", "Name" : "preProcessing_U0"}],
		"OutputProcess" : [
			{"ID" : "23", "Name" : "sha256Digest_256_U0"}],
		"Port" : [
			{"Name" : "mergeKopadStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "preProcessing_U0", "Port" : "mergeKipadStrm"}]},
			{"Name" : "mergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "preProcessing_U0", "Port" : "mergeKipadLenStrm"}]},
			{"Name" : "eMergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "preProcessing_U0", "Port" : "eMergeKipadLenStrm"}]},
			{"Name" : "hshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "sha256Digest_256_U0", "Port" : "msgHashStrm"}]},
			{"Name" : "eHshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "sha256Digest_256_U0", "Port" : "eMsgHashStrm"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.preProcessing_U0", "Parent" : "0", "Child" : ["2", "6", "8"],
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
					{"ID" : "2", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Port" : "mergeKipadStrm", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "6", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280", "Port" : "mergeKipadStrm", "Inst_start_state" : "12", "Inst_end_state" : "34"}]},
			{"Name" : "mergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "eMergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "44", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "blk_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Port" : "blk_strm", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "45", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "46", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_SHA256_GENENERATE_MAIN", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "36", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state33"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Parent" : "1", "Child" : ["3", "4", "5"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271.icmp_58ns_58ns_1_2_1_U30", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271.add_58ns_58ns_58_2_1_U31", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280", "Parent" : "1", "Child" : ["7"],
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
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.preProcessing_U0.add_59ns_59ns_59_2_1_U54", "Parent" : "1"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dup_strm_U0", "Parent" : "0", "Child" : ["10"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_dup_strm_U0_U",
		"Port" : [
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "45", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "nblk_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "46", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "end_nblk_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "nblk_strm1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "47", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "nblk_strm1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "end_nblk_strm1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "48", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "end_nblk_strm1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "nblk_strm2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "49", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "nblk_strm2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "end_nblk_strm2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "50", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Port" : "end_nblk_strm2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dup_strm_U0.grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62", "Parent" : "9", "Child" : ["11"],
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
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dup_strm_U0.grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.generateMsgSchedule_U0", "Parent" : "0", "Child" : ["13", "16", "21", "22"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_generateMsgSchedule_U0_U",
		"Port" : [
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "44", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "blk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nblk_strm1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "47", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "48", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "w_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "51", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT16_fu_223", "Port" : "w_strm", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "16", "SubInstance" : "grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64_fu_261", "Port" : "w_strm", "Inst_start_state" : "10", "Inst_end_state" : "11"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_530_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_528_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT16_fu_223", "Parent" : "12", "Child" : ["14", "15"],
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
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT16_fu_223.sparsemux_33_4_32_1_1_U75", "Parent" : "13"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT16_fu_223.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64_fu_261", "Parent" : "12", "Child" : ["17", "18", "19", "20"],
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
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64_fu_261.add_32ns_32ns_32_2_1_U110", "Parent" : "16"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64_fu_261.add_32ns_32ns_32_2_1_U111", "Parent" : "16"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64_fu_261.add_32ns_32ns_32_1_1_U112", "Parent" : "16"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.generateMsgSchedule_U0.grp_generateMsgSchedule_Pipeline_LOOP_SHA256_PREPARE_WT64_fu_261.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.generateMsgSchedule_U0.icmp_64ns_64ns_1_3_1_U132", "Parent" : "12"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.generateMsgSchedule_U0.add_64ns_64ns_64_3_1_U133", "Parent" : "12"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sha256Digest_256_U0", "Parent" : "0", "Child" : ["24", "42", "43"],
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
		"StartSource" : "9",
		"StartFifo" : "start_for_sha256Digest_256_U0_U",
		"Port" : [
			{"Name" : "nblk_strm2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "49", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "50", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "w_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "51", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273", "Port" : "w_strm", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
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
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273", "Parent" : "23", "Child" : ["25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41"],
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
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U139", "Parent" : "24"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.sparsemux_129_6_32_1_1_U140", "Parent" : "24"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_1_1_U141", "Parent" : "24"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_1_1_U142", "Parent" : "24"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_1_1_U143", "Parent" : "24"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U144", "Parent" : "24"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U145", "Parent" : "24"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U146", "Parent" : "24"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U147", "Parent" : "24"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U148", "Parent" : "24"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U149", "Parent" : "24"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U150", "Parent" : "24"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U151", "Parent" : "24"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_1_1_U152", "Parent" : "24"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U153", "Parent" : "24"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.add_32ns_32ns_32_2_1_U154", "Parent" : "24"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sha256Digest_256_U0.grp_sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS_fu_273.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sha256Digest_256_U0.icmp_64ns_64ns_1_3_1_U173", "Parent" : "23"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sha256Digest_256_U0.add_64ns_64ns_64_3_1_U174", "Parent" : "23"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.blk_strm_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nblk_strm_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.end_nblk_strm_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nblk_strm1_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.end_nblk_strm1_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nblk_strm2_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.end_nblk_strm2_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_strm_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_dup_strm_U0_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_generateMsgSchedule_U0_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_sha256Digest_256_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mergeKopadStrm { ap_fifo {  { mergeKopadStrm_dout fifo_data_in 0 32 }  { mergeKopadStrm_empty_n fifo_status 0 1 }  { mergeKopadStrm_read fifo_port_we 1 1 } } }
	mergeKopadLenStrm { ap_fifo {  { mergeKopadLenStrm_dout fifo_data_in 0 64 }  { mergeKopadLenStrm_empty_n fifo_status 0 1 }  { mergeKopadLenStrm_read fifo_port_we 1 1 } } }
	eMergeKopadLenStrm { ap_fifo {  { eMergeKopadLenStrm_dout fifo_data_in 0 1 }  { eMergeKopadLenStrm_empty_n fifo_status 0 1 }  { eMergeKopadLenStrm_read fifo_port_we 1 1 } } }
	hshStrm { ap_fifo {  { hshStrm_din fifo_data_in 1 256 }  { hshStrm_full_n fifo_status 0 1 }  { hshStrm_write fifo_port_we 1 1 } } }
	eHshStrm { ap_fifo {  { eHshStrm_din fifo_data_in 1 1 }  { eHshStrm_full_n fifo_status 0 1 }  { eHshStrm_write fifo_port_we 1 1 } } }
}
