class Puppy

    attr_reader :breed
    attr_accessor :name, :months_old

    def initialize(name, breed, age)
        @name = name
        @breed = breed
        @months_old = age
    end

end