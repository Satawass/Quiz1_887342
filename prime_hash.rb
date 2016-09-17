def prime(n)
  puts "That's not an integer." unless n.is_a? Integer
  is_prime = true
  for i in 2..n-1
    if n % i == 0
      is_prime = false
    end
  end
  return is_prime
end

def prime_hash(number)
    pk = {}
    count = 1
    i = 2
    loop do 
        break if count > number
        if prime(i)
            pk[("p"+count.to_s).to_sym] = i
            count +=1
        end
        i += 1
    end
    
    return pk
end

sum = prime_hash(12)

puts sum