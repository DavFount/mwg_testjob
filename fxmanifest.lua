fx_version 'adamant'
games { 'rdr3' }
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

author 'SavSin'
description 'Example Job for MWG Job System'

client_scripts {
    'client/*.lua',
}

shared_script {
    'config.lua',
}

server_scripts {
    'server/*.lua',
}

dependencies {
    'mwg_jobsystem',
}
