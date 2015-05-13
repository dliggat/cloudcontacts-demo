module QuestionTwo
  def sorted_keys(hash)
    raise ArgumentError.new 'method requires a hash' unless hash.is_a?(Hash)
    hash.keys.map(&:to_s).sort { |a,b| a.length <=> b.length }
  end

  module_function :sorted_keys
end
