require 'bigdecimal'

def add_topten(name, value)
    @topten << {name: name, value: value}
end
    
    @topten = []

    add_topten("C", BigDecimal(100))
    add_topten("XC", BigDecimal(900))
    add_topten("L", BigDecimal(50))
 



puts @topten.sort_by{:value}