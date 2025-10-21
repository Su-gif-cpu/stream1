set moduleName sha256Digest_256_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
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
set C_modelName {sha256Digest<256>_Pipeline_LOOP_SHA256_UPDATE_64_ROUNDS}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ h int 32 regular  }
	{ g int 32 regular  }
	{ f int 32 regular  }
	{ e int 32 regular  }
	{ d int 32 regular  }
	{ c int 32 regular  }
	{ b int 32 regular  }
	{ a int 32 regular  }
	{ w_strm int 32 regular {fifo 0 volatile }  }
	{ add_ln6888_out int 32 regular {pointer 1}  }
	{ add_ln6897_out int 32 regular {pointer 1}  }
	{ add_ln6906_out int 32 regular {pointer 1}  }
	{ add_ln6915_out int 32 regular {pointer 1}  }
	{ add_ln6924_out int 32 regular {pointer 1}  }
	{ add_ln6933_out int 32 regular {pointer 1}  }
	{ add_ln6942_out int 32 regular {pointer 1}  }
	{ add_ln6951_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "h", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "g", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "f", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "e", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_strm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln6888_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_ln6897_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_ln6906_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_ln6915_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_ln6924_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_ln6933_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_ln6942_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_ln6951_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_strm_dout sc_in sc_lv 32 signal 8 } 
	{ w_strm_empty_n sc_in sc_logic 1 signal 8 } 
	{ w_strm_read sc_out sc_logic 1 signal 8 } 
	{ w_strm_num_data_valid sc_in sc_lv 6 signal 8 } 
	{ w_strm_fifo_cap sc_in sc_lv 6 signal 8 } 
	{ h sc_in sc_lv 32 signal 0 } 
	{ g sc_in sc_lv 32 signal 1 } 
	{ f sc_in sc_lv 32 signal 2 } 
	{ e sc_in sc_lv 32 signal 3 } 
	{ d sc_in sc_lv 32 signal 4 } 
	{ c sc_in sc_lv 32 signal 5 } 
	{ b sc_in sc_lv 32 signal 6 } 
	{ a sc_in sc_lv 32 signal 7 } 
	{ add_ln6888_out sc_out sc_lv 32 signal 9 } 
	{ add_ln6888_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ add_ln6897_out sc_out sc_lv 32 signal 10 } 
	{ add_ln6897_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ add_ln6906_out sc_out sc_lv 32 signal 11 } 
	{ add_ln6906_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ add_ln6915_out sc_out sc_lv 32 signal 12 } 
	{ add_ln6915_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ add_ln6924_out sc_out sc_lv 32 signal 13 } 
	{ add_ln6924_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ add_ln6933_out sc_out sc_lv 32 signal 14 } 
	{ add_ln6933_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ add_ln6942_out sc_out sc_lv 32 signal 15 } 
	{ add_ln6942_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ add_ln6951_out sc_out sc_lv 32 signal 16 } 
	{ add_ln6951_out_ap_vld sc_out sc_logic 1 outvld 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_strm", "role": "dout" }} , 
 	{ "name": "w_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_strm", "role": "empty_n" }} , 
 	{ "name": "w_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_strm", "role": "read" }} , 
 	{ "name": "w_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "w_strm", "role": "num_data_valid" }} , 
 	{ "name": "w_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "w_strm", "role": "fifo_cap" }} , 
 	{ "name": "h", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h", "role": "default" }} , 
 	{ "name": "g", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g", "role": "default" }} , 
 	{ "name": "f", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f", "role": "default" }} , 
 	{ "name": "e", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "default" }} , 
 	{ "name": "d", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d", "role": "default" }} , 
 	{ "name": "c", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c", "role": "default" }} , 
 	{ "name": "b", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "default" }} , 
 	{ "name": "a", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "default" }} , 
 	{ "name": "add_ln6888_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln6888_out", "role": "default" }} , 
 	{ "name": "add_ln6888_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln6888_out", "role": "ap_vld" }} , 
 	{ "name": "add_ln6897_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln6897_out", "role": "default" }} , 
 	{ "name": "add_ln6897_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln6897_out", "role": "ap_vld" }} , 
 	{ "name": "add_ln6906_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln6906_out", "role": "default" }} , 
 	{ "name": "add_ln6906_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln6906_out", "role": "ap_vld" }} , 
 	{ "name": "add_ln6915_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln6915_out", "role": "default" }} , 
 	{ "name": "add_ln6915_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln6915_out", "role": "ap_vld" }} , 
 	{ "name": "add_ln6924_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln6924_out", "role": "default" }} , 
 	{ "name": "add_ln6924_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln6924_out", "role": "ap_vld" }} , 
 	{ "name": "add_ln6933_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln6933_out", "role": "default" }} , 
 	{ "name": "add_ln6933_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln6933_out", "role": "ap_vld" }} , 
 	{ "name": "add_ln6942_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln6942_out", "role": "default" }} , 
 	{ "name": "add_ln6942_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln6942_out", "role": "ap_vld" }} , 
 	{ "name": "add_ln6951_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln6951_out", "role": "default" }} , 
 	{ "name": "add_ln6951_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln6951_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_129_6_32_1_1_U117", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "68", "Max" : "68"}
	, {"Name" : "Interval", "Min" : "68", "Max" : "68"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	h { ap_none {  { h in_data 0 32 } } }
	g { ap_none {  { g in_data 0 32 } } }
	f { ap_none {  { f in_data 0 32 } } }
	e { ap_none {  { e in_data 0 32 } } }
	d { ap_none {  { d in_data 0 32 } } }
	c { ap_none {  { c in_data 0 32 } } }
	b { ap_none {  { b in_data 0 32 } } }
	a { ap_none {  { a in_data 0 32 } } }
	w_strm { ap_fifo {  { w_strm_dout fifo_data_in 0 32 }  { w_strm_empty_n fifo_status 0 1 }  { w_strm_read fifo_port_we 1 1 }  { w_strm_num_data_valid fifo_status_num_data_valid 0 6 }  { w_strm_fifo_cap fifo_update 0 6 } } }
	add_ln6888_out { ap_vld {  { add_ln6888_out out_data 1 32 }  { add_ln6888_out_ap_vld out_vld 1 1 } } }
	add_ln6897_out { ap_vld {  { add_ln6897_out out_data 1 32 }  { add_ln6897_out_ap_vld out_vld 1 1 } } }
	add_ln6906_out { ap_vld {  { add_ln6906_out out_data 1 32 }  { add_ln6906_out_ap_vld out_vld 1 1 } } }
	add_ln6915_out { ap_vld {  { add_ln6915_out out_data 1 32 }  { add_ln6915_out_ap_vld out_vld 1 1 } } }
	add_ln6924_out { ap_vld {  { add_ln6924_out out_data 1 32 }  { add_ln6924_out_ap_vld out_vld 1 1 } } }
	add_ln6933_out { ap_vld {  { add_ln6933_out out_data 1 32 }  { add_ln6933_out_ap_vld out_vld 1 1 } } }
	add_ln6942_out { ap_vld {  { add_ln6942_out out_data 1 32 }  { add_ln6942_out_ap_vld out_vld 1 1 } } }
	add_ln6951_out { ap_vld {  { add_ln6951_out out_data 1 32 }  { add_ln6951_out_ap_vld out_vld 1 1 } } }
}
