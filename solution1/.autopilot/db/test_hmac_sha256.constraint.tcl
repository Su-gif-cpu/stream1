set clock_constraint { \
    name clk \
    module test_hmac_sha256 \
    port ap_clk \
    period 15 \
    uncertainty 1.5 \
}

set all_path {}

set false_path {}

