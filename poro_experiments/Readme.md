# Output

basic_object_vs_simple_delegator.rb

    Basic Object Time taken : 51.072  millisecs
    SimpleDelegator Time taken : 123.621  millisecs
    Object Time taken : 49.209999999999994  millisecs


basic_object_poro.rb

    GC.stat prior {:count=>1,
        :heap_used=>43,
        :heap_length=>43,
        :heap_increment=>0,
        :heap_live_num=>7146,
        :heap_free_num=>10414,
        :heap_final_num=>4}

    Decorating an object 1000000 times took 0.569601 millisecs

    GC.stat after {:count=>81,
        :heap_used=>43,
        :heap_length=>43,
        :heap_increment=>0,
        :heap_live_num=>4944,
        :heap_free_num=>12635,
        :heap_final_num=>0}

vanilla_poro.rb

    GC.stat prior {:count=>1,
        :heap_used=>43,
        :heap_length=>43,
        :heap_increment=>0,
        :heap_live_num=>7147,
        :heap_free_num=>10413,
        :heap_final_num=>4}
    
    Presenter.new(obj) * 1000000 times took 0.577917 millisecs
    
    GC.stat after {:count=>80,
        :heap_used=>43,
        :heap_length=>43,
        :heap_increment=>0,
        :heap_live_num=>4927,
        :heap_free_num=>12651,
        :heap_final_num=>0}

simple_delegate_delegator.rb

    GC.stat prior {:count=>1,
        :heap_used=>43,
        :heap_length=>43,
        :heap_increment=>0,
        :heap_live_num=>7146,
        :heap_free_num=>10415,
        :heap_final_num=>4}

    Decorating an object 1000000 times took 0.828707 millisecs

    GC.stat after {:count=>81,
        :heap_used=>43,
        :heap_length=>43,
        :heap_increment=>0,
        :heap_live_num=>4933,
        :heap_free_num=>12647,
        :heap_final_num=>0}
