values=[10,20,30,40,50,60,70,80,90,3,4,5,6,7,8,9,10,12,11,13,14,15,16,17,18,1,2,19,21,23,22,24]
even_num=[]
for x <- values,rem(x,2)==0, do: even_num=even_num++x
IO.inspect(even_num)
