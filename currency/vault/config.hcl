ui = true

storage "file" {
  address = "127.0.0.1:8500"
  path    = "/Users/edz/software/pass/"
}

listener "tcp" {
 address     = "127.0.0.1:8200"
 tls_disable = 1
}