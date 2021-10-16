class MetasploitModule < Msf::Auxiliary
    rank = ExcellentRanking

    include Msf::Auxiliary::Report

    def initialize(info = {})
        super(update_info(info, 
            'Name'          => '<MODULE_NAME>',
            'Description'   => %q{<MODULE_DESCRIPTION>},
            'Author'        => ['<AUTHOR_NAME>'],
            'License'       => MSF_LICENSE,
            'Platform'      => ['PLATFORM'],
            'Targets'       => ['TARGETS']
        ))
    end
    def run
        # Main function
    end
end