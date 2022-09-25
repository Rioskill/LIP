def correct (string)
    words = string.split
    words.sort { |a, b| b.length <=> a.length }.join(' ')
end