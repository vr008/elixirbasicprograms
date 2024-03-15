check = fn a->
    cond do

      is_binary(a) ->
      "it is a string"
      is_list(a) ->
      "it is a list"
      is_boolean(a) ->
        "it is a boolean"
      is_float(a) ->
        "it is a float"
      is_function(a) ->
        "it is a function"
      is_integer(a) ->
        "it is an integer"
      is_map(a) ->
        "it is a map"
      is_nil(a) ->
        "it is a nil"
      is_atom(a) ->
        "it is a atom"
      is_bitstring(a) ->
        "it is a bitstring"
      is_tuple(a) ->
        "it is a tuple"



    end
end

a=:ahg
IO.puts(check.(a))
