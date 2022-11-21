# frozen_string_literal: true

# class that copies files
class FileCopier
  def self.copy(f_name, g_name)
    g_file = File.open(g_name, 'w')
    File.readlines(f_name).each do |line|
      g_file << " #{line}"
    end
    g_file.close
  end
end
