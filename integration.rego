package pipeline.integration

# By default, deny requests
default allow = false

# Allow rules
allow {
	code_coverage_is_acceptable
}

# check whether code_coverage_is_acceptable
code_coverage_is_acceptable {
	input.branch_name != "master"
}

code_coverage_is_acceptable {
	input.branch_name == "master"
	data.branches[input.project][input.branch_name].code_coverage >= 85
}
