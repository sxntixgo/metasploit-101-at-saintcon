class MetasploitModule < Msf::Auxiliary
    rank = ExcellentRanking

    include Msf::Auxiliary::Report

    def initialize(info = {})
        super(update_info(info, 
            'Name'          => 'Module Name',
            'Description'   => %q{Module Description}
            'Author'        => ['Name']
            'License'       => MSF_LICENSE
        ))
    end
    def run
        # Main function
    end
end