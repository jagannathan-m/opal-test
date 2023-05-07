package pipeline.cd.deploy_to_dev

# By default, deny requests
default allow = false

# Allow rules
allow {
	sca_has_no_critical
}

# sca_has_no_critical is true if sca_results[CRITICAL] == 0
sca_has_no_critical {
	# for some `i`...
	some i

	# "admin" is the `i`-th element in the user->role mappings for the identified user.
	data.artifact[input.artifact.id].sca_result[i] == 0
}
