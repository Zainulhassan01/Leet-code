def min_extra_char(s, dictionary)
    substr_indexes = []
    dictionary.each do |dict|
        if s.include? dict
            substr_indexes << [s.index(dict), s.index(dict) + dict.length]
        end
    end
    leftout_indexes = []
    substr_indexes.each_with_index do |sub_index, index|
        if sub_index.first != 0 && index == 0
            leftout_indexes << [0, sub_index.first]
        end
        if substr_indexes[index + 1] && sub_index.second != substr_indexes[index + 1].first
            leftout_indexes << [sub_index.second, substr_indexes[index + 1].second - sub_index.second]
        end
    end
    str = ""
    leftout_indexes.each do |leftout|
        str = str + "#{s[leftout.first...leftout.second]}"
    end
    str
end
