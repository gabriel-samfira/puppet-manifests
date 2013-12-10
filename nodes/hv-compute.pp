node /^(hv-compute[0-9][0-9]).*/{
#  $path => $::path,
  #class{'petools':}
#  class{'windows_common::configuration::disable_firewalls':}
#  class{'windows_common::configuration::enable_auto_update':}
#  class{'windows_common::configuration::rdp':}
#  class{'windows_common::configuration::ntp':}
#  Package { provider => chocolatey }
#  package {'puppet': ensure => installed, }
#  package {'python.x86': ensure => installed, }
#  package {'easy.install': ensure => installed, }
#  package {'pip': ensure => installed, }
#  package {'mingw': ensure => installed, }
#  package {'chromium': ensure => installed, }
#  package {'java.jdk': ensure => installed, }
  notify {"Welcome ${fqdn}":}
  case $hostname {
    'hv-compute01':{
        class {'petools':}
     }
    'hv-compute02':{}
    'hv-compute03':{}
    'hv-compute04':{}
    'hv-compute05':{}
    'hv-compute06':{}
    'hv-compute07':{}
    'hv-compute08':{}
    'hv-compute09':{}
    'hv-compute10':{}
    'hv-compute11':{}
    'hv-compute12:{}
    'hv-compute13:{}
    'hv-compute14:{}
    'hv-compute15:{}
    'hv-compute16:{}
    'hv-compute17:{}
    'hv-compute18:{}
    'hv-compute19:{}
    'hv-compute20:{}
    'hv-compute21:{}
    'hv-compute22:{}
    'hv-compute23:{}
    'hv-compute24:{}
    'hv-compute25:{}
    'hv-compute26:{}
    'hv-compute27:{}
    'hv-compute28:{}
    'hv-compute29:{}
    'hv-compute30:{}
    'hv-compute31:{}
    'hv-compute32:{}
    'hv-compute33:{}
    'hv-compute34:{}
    'hv-compute35:{}
    'hv-compute36:{}
    'hv-compute37:{}
    'hv-compute38:{}
    'hv-compute39:{}
    'hv-compute40:{}
    'hv-compute41:{}
    'hv-compute42:{}
    'hv-compute43:{}
    'hv-compute44:{}
    'hv-compute45:{}
    'hv-compute46:{}
    'hv-compute47:{}
    'hv-compute48:{}
    'hv-compute49:{}
    'hv-compute50:{}
    default: { notify{"Hey ${hostname}! You don't have individual classes":}}

  }
  class {'windows_common':}
  class {'windows_common::configuration::disable_firewalls':}
  class {'windows_common::configuration::enable_auto_update':}
  class {'windows_common::configuration::ntp':}
}
