def find_fibonacci_index_by_length(nb_digits)
  fib_n_minus1 = 1
  fib_n_minus2 = 1
  nb_loop = 2

  loop do
    nb_loop += 1

    fibonacci = fib_n_minus1 + fib_n_minus2
    break if fibonacci.to_s.size >= nb_digits

    fib_n_minus2 = fib_n_minus1
    fib_n_minus1 = fibonacci
  end

  nb_loop
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10_000) == 47_847
