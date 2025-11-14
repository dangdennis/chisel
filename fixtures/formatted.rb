class   MessyExample

def initialize( options = { } )
@name= options[:name]||"Default"  ;   @values= options[:values]  ||[1,2,3,4]
  @flag= options[:flag].nil? ? true:false
end

 def compute(  x , y =10 )
 total =x.to_i+  y.to_i ; if   total>   10
total  = total  *2
  else total = total-1;end;   total
end

    def process
r = [  ]
   @values.each do | v   |
if  v % 2==0
 r<< compute( v , 2)
else; r << compute(  v  ,3  )
  end
 end; if @flag==true
  r = r.map{ |n|  n.to_s.strip  }
 else
r = r.map do | n |
 n* 1
end
 end; r.uniq .map{|x| x.to_s }.join( "," )
   end

def confused_method a,b,c=nil
 if a; b = (b||0 ) +1 ;else;b=(b||0)-1
end;   c ||= [] ;   i =0
while i< 3
 c << (a ? b+i :  b-i )
 i =i+1
end
{ :a=>a,:b =>b ,:c=>c   }
 end

      private
  def  helper x
if x.nil? then 0 else x end
end
end

   mod = MessyExample.new( { :name=>"test" ,:values=>[5,1,2,2,7] ,:flag=>false } )
  result  =mod.process;   info = mod.confused_method( true,  4 )
puts   "Result:"  + result.to_s
 puts "Info a=#{info[:a]} b=#{info[ :b ]} c=#{info[ :c ]}"
