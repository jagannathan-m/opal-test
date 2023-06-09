package pipeline.deployment

# By default, deny requests
default allow = false

# Allow rules
allow {
	sca_has_no_critical
}

# sca_has_no_critical is true if sca_results[CRITICAL] == 0
sca_has_no_critical {
	data.branches[input.project][input.branch_name].artifacts[input.artifact_id].sca_result.critical.count == 0
}
