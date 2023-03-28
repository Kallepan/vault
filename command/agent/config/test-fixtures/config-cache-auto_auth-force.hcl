# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

pid_file = "./pidfile"

auto_auth {
	method {
		type = "aws"
		config = {
			role = "foobar"
		}
	}
}

cache {
	use_auto_auth_token = "force"
}

listener "tcp" {
    address = "127.0.0.1:8300"
    tls_disable = true
}

