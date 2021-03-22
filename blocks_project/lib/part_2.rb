

def all_words_capitalized?(words)
  words.all? { |word| word == word.capitalize }
end

def no_valid_url?(urls)
  domain_end = ['.com', '.net', '.io', '.org']
  urls.none? do |url|  
    domain_end.any? { |ending| url.end_with?(ending) }

  end
end