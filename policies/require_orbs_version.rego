package org

import future.keywords
import data.circleci.config

policy_name["require_orbs_version"]

require_orbs_version = config.require_orbs_version(["snyk/snyk@1.4.0", "circleci/docker@2.1.4", "circleci/heroku@2.0.0"])

enable_rule["require_orbs_version"]

hard_fail["require_orbs_version"]