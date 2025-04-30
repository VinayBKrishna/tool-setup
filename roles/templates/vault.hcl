# Vault configuration using Integrated Storage (Raft)

ui = true

storage "file" {
  path    = "/opt/vault/data"
}

# Listener with TLS (RECOMMENDED for anything non-dev)
listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
}

# UI enabled


# API and Cluster addresses

# mlock setting - enable if supported

# Telemetry - optional
