class Hi
    def h(id= "World")
        @name =id
    end
    def say
        puts "Hello #{@name}!"
    end
end


a = Hi.new
a.say
a.h("")
a.say
a.h("lion")
a.say