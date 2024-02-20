class Profile
  # class vairable
    @@score = 0

  attr_accessor :firstName;

  #setter
  def firstName=(firstName)
    @firstName = firstName
  end

  def calculateScore()
    score = (@firstName.length * 10).to_f
    return (score / 100).to_s + "%"
  end

  # constructor
  def initialize()
    # puts "Instantiating an object..."
  end
end

profile = Profile.new
profile.firstName = "Steven Hansennoid"

puts profile.calculateScore
