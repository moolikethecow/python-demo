package org

import future.keywords
import data.circleci.config

policy_name["require_orbs_version"]

require_orbs_versioned = config.require_orbs_version(["snyk/snyk@1.1.2", "circleci/docker@2.0.3"])

enable_rule["require_orbs_version"]

hard_fail["require_orbs_version"] {
	require_orbs_versioned
}