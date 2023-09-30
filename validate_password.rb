require 'pry'

class ValidatePassword
  def initialize(password)
    @password = password
  end

  def perform
    return false if password.length > 26 || password.length < 6
    return false if (password =~ /[A-Z]/).nil?
    return false if (password =~ /[a-z]/).nil?
    return false if (password =~ /\d/).nil?
    return false if special_character_present?
    return false if password.scan(/(.)\1{2,}/).any?

    true
  end

  attr_accessor :password

  private

  def special_character_present?
    char_array = %w(! @ # $ % & * + = : ; ? < >)

    return password.split.map { |letter| char_array.include?(letter) }.any?(true)
  end
end
