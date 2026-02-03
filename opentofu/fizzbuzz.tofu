# OpenTofu FizzBuzz (Infrastructure as Code)
# OpenTofu is an open-source fork of Terraform

terraform {
  required_providers {
    null = {
      source = "kreuzwerker/null"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.0"
}

resource "null_resource" "fizzbuzz" {
  provisioner "local-exec" {
    command = <<EOT
#!/bin/bash
# FizzBuzz script executed by OpenTofu
for ((i=1; i<=100; i++)); do
  if (( i % 15 == 0 )); then
    echo "FizzBuzz"
  elif (( i % 3 == 0 )); then
    echo "Fizz"
  elif (( i % 5 == 0 )); then
    echo "Buzz"
  else
    echo "$i"
  fi
done
EOT
    interpreter = ["/bin/bash", "-c"]
  }

  triggers = {
    run_at = timestamp()
  }
}

output "results" {
  description = "FizzBuzz results generated"
  value       = null_resource.fizzbuzz.id
}
