defmodule Crypto do

  def encrypt_data(data) do
    perform_encryption(data)
  end


  def decrypt_data(encrypted_data) do
    perform_decryption(encrypted_data)
  end


  defp perform_encryption(data) do
    a=String.length(data)
    String.reverse(data)
    reverse_upto(data,div(a,2))



  end


  defp perform_decryption(encrypted_data) do

    a=String.length(encrypted_data)

    reverse_upto(encrypted_data,div(a,2))




  end
  defp reverse_upto(str, n) do
    {to_reverse, to_keep} = String.split_at(str, n)
    reversed_part = to_reverse |> String.reverse()
    reversed_part <> to_keep
  end

end

input= IO.gets("Enter the input ") |> String.trim()
IO.puts("Encrypted data")
encrypted_data = Crypto.encrypt_data(input)
IO.puts(encrypted_data)
IO.puts("Decrypted data")
decrypted_data=Crypto.decrypt_data(encrypted_data)
IO.puts(decrypted_data)
