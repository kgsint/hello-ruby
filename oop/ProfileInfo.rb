require_relative "Profile"

# inheritence
class ProfileInfo < Profile

  attr_accessor :phoneNumber;
  attr_reader :password;

  # def setPhoneNumber(phoneNumber)
  #   @phoneNumber = phoneNumber
  # end

  def setPassword(password)
        @password = password
  end
end

profileInfo = ProfileInfo.new
profileInfo.firstName = "John Doe"
profileInfo.phoneNumber = "08390292 832830298"
profileInfo.setPassword('hashed password')

# puts profileInfo.phoneNumber
# puts profileInfo.firstName
puts profileInfo.password
