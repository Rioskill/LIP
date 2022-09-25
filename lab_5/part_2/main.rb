def correct (string)
    words = string.split
    return words, words.sort { |a, b| b.length <=> a.length }
end