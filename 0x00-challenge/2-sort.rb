###
#
#  Sort integer arguments (ascending) 
#
###

result = []

ARGV.each do |arg|
    # skip if not integer
    next unless arg.match(/^-?\d+$/)

    # convert to integer
    i_arg = arg.to_i

    # insert result at the right position
    is_inserted = false
    i = 0
    l = result.size
    while !is_inserted && i < l do
    # Changed "<" to "<=" here
        if result[i] <= i_arg
            i += 1
        else
    # Changed "i - 1" to "i" here
            result.insert(i, i_arg)
            is_inserted = true
            break
        end
    end
    # Changed "if !is_inserted" to "unless is_inserted" here
    result << i_arg unless is_inserted 
end

puts result
