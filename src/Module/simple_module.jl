#=
simple_module:
- Julia version: 1.5.0
- Author: shisa
- Date: 2020-08-05
=#

module SimpleModule
    # values
    hoge = 2

    # methods
    function hello(name)
        println("Hello $(name)!!")
        return true
    end

    function goodbye(name)
        println("Goodbye $(name)!!")
        return true
    end
end

if abspath(PROGRAM_FILE) == @__FILE__
    using .SimpleModule
    SimpleModule.hello("Julia")
    println("SimpleModule.hoge = ", SimpleModule.hoge)
    SimpleModule.goodbye("Julia")
end