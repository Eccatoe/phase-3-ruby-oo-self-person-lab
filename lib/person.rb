require 'pry'

class Person

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name=name
        @bank_account=25
        @happiness=8
        @hygiene=8
    end

    def happiness=(num)
        # @happiness=if num<0
        #     0
        # elsif num>10
        #     10
        # else 
        #     num
        # end
        @happiness=num.clamp(0,10)
    end

    def happy? 
        self.happiness>7
    end

    def hygiene=(num)
        # @hygiene= if num>10
        #     10
        # elsif num<0
        #     0
        # else
        #     num
        # end
        @hygiene=num.clamp(0,10)
    end

    def clean? 
        self.hygiene>7
    end

    def get_paid(amount)
        self.bank_account+=amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness+=2
        self.hygiene-=3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name.capitalize}! It's #{self.name.capitalize}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            # friend.happiness=friend.happiness-2
            # self.happiness=self.happiness-2
            [self, friend].each {|p| p.happiness-=2}
            "blah blah partisan blah lobbyist"
        when "weather"
            # friend.happiness=friend.happiness+1
            # self.happiness=self.happiness+1
            [self, friend].each {|p| p.happiness+=1}
            "blah blah sun blah rain"
        else "blah blah blah blah blah"

        end
    end
end

binding.pry
0