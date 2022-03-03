def substrings(user_input, dictionary)
	user_strings = user_input.downcase.split(/\W+/)
	result = Hash.new(0)

	dictionary.each do |dictionary_string|
		user_strings.each do |string|
			if dictionary_string.include?(string) == true
				matches = user_strings.count(string)
				result[string] = matches
			end
		end
	end

	return result
end

dictionary = ["three","six","five","damn","you","fine","hoping","she","can","sock","it","to","me","one","more","time","get","low"]

substrings("she hit the flo' next thing you know shawty got low low low low low low low low", dictionary)
# expected output: {"you"=>1, "she"=>1, "low"=>8}