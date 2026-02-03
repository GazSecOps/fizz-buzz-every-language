# Terraform FizzBuzz

# This would actually run FizzBuzz via a null_resource
# Terraform doesn't execute code directly, but can call external scripts

resource "null_resource" "fizzbuzz" {
  provisioner "local-exec" {
    command = <<EOT
for i in {1..100}; do
  if (( i % 15 == 0 )); then
    echo "FizzBuzz"
  elif (( i % 3 == 0 )); then
    echo "Fizz"
  elif (( i % 5 == 0 )); then
    echo "Buzz"
  else
    echo $i
  fi
done
EOT
  }

  # Store as output for reference
  triggers = {
    always_run = timestamp()
  }
}

output "fizzbuzz_complete" {
  description = "FizzBuzz execution completed"
  value       = "FizzBuzz has been executed 1-100"
}
