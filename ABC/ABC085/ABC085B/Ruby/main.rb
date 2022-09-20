require 'set';
gets();
lines = [];
while line = gets() do
  lines << line.to_i();
end

st = Set.new(lines);
print st.size();
