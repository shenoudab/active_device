class Brand
  
  ##
  # User agent string.

  attr_reader :user_agent

  ##
  # Initialize with user agent _string_.

  def initialize user_agent
    @user_agent = user_agent.strip
  end

  ##
  # Return the brand for user agent _string_.

  def self.mobile_brand user_agent
    case user_agent
    when /SonyEricsson/i       ; :SonyEricsson
    when /Nokia/i              ; :Nokia
    when /HTC/i                ; :HTC
    when /iPhone/i             ; :Apple
    when /iTouch/i             ; :Apple
    when /iPod/i               ; :Apple
      ## ==================================== ##
    when /Acer/i               ; :Acer
    when /Ahong/i              ; :Ahong
    when /Aiko/i               ; :Aiko
    when /Airness/i            ; :Airness
    when /Alcatel/i            ; :Alcatel
    when /Alphacell/i          ; :Alphacell
    when /Amazon/i             ; :Amazon
    when /Amoi/i               ; :Amoi
    when /Android/i            ; :Android
    when /AnexTek/i            ; :AnexTek
    when /Arcelik/i            ; :Arcelik
    when /ASMOBILE/i           ; :ASMOBILE
    when /Asus/i               ; :Asus
    when /Audiovox/i           ; :Audiovox
    when /B-Mobile/i           ; :'B-Mobile'
    when /BEKO/i               ; :BEKO
    when /Bellwave/i           ; :Bellwave
    when /Benefon/i            ; :Benefon
    when /BenQ/i               ; :BenQ
    when /BenQ-Siemens/i       ; :'BenQ-Siemens'
    #when /Bird/                ; :Bird
    when /Bleu/i               ; :Bleu
    when /BlackBerry/i         ; :BlackBerry
    when /Capitel/i            ; :Capitel
    when /Casio/i              ; :Casio
    when /CDM/i                ; :CDM
    when /CECT/i               ; :CECT
    when /Cingular/i           ; :Cingular
    when /Cking/i              ; :Cking
    when /Compal/i             ; :Compal
    when /Cricket/i            ; :Cricket
    when /Curitel/i            ; :Curitel
    when /Dai Telecom/i        ; :'Dai Telecom'
    when /Dallab/i             ; :Dallab
    when /Danger/i             ; :Danger
    when /Daxian/i             ; :Daxian
    when /DBTEL/i              ; :DBTEL
    when /Denso/i              ; :Denso
    when /Dicam/i              ; :Dicam
    when /DMOBO/i              ; :DMOBO
    when /DoCoMo/i             ; :DoCoMo
    when /Dopod/i              ; :Dopod
    when /Dreamphone/i         ; :Dreamphone
    when /EDL/i                ; :EDL
    when /Elite/i              ; :Elite
    when /Elson/i              ; :Elson
    when /Emblaze/i            ; :Emblaze
    when /Emobile/i            ; :Emobile
    when /Enteos/i             ; :Enteos
    when /Ericsson/i           ; :Ericsson
    when /Ericy/i              ; :Ericy
    when /ETEN/i               ; :ETEN
    when /Ezio/i               ; :Ezio
    when /Ezze/i               ; :Ezze
    when /^Fly/i               ; :Fly
    when /Fujitsu/i            ; :Fujitsu
    when /Gigabyte/i           ; :Gigabyte
    when /Gionee/i             ; :Gionee
    when /Gradiente/i          ; :Gradiente
    when /Grundig/i            ; :Grundig
    when /Haier/i              ; :Haier
    when /Handspring/i         ; :Handspring
    when /Hedy/i               ; :Hedy
    when /Hei/i                ; :Hei
    when /Hewlett Packard/i    ; :'Hewlett Packard'
    when /Hisense/i            ; :Hisense
    when /Hitachi/i            ; :Hitachi
    when /^HP/                 ; :HP
    when /HTC/i                ; :HTC
    when /HTIL/i               ; :HTIL
    when /Huawei/i             ; :Huawei
    when /Hummer/i             ; :Hummer
    when /i-mate/i             ; :'i-mate'
    when /i-mobile/i           ; :'i-mobile'
    when /iKoMo/i              ; :iKoMo
    when /IM/                  ; :IM
    when /iMate/i              ; :iMate
    when /Innostream/i         ; :Innostream
    when /INQ Mobile/i         ; :'INQ Mobile'
    when /Itelco/i             ; :Itelco
    when /IXI/i                ; :IXI
    when /KDDI-Casio/i         ; :'KDDI-Casio'
    when /KDDI-Hitachi/i       ; :'KDDI-Hitachi'
    when /KDDI-Kiocera/i       ; :'KDDI-Kiocera'
    when /KDDI-Panasonic/i     ; :'KDDI-Panasonic'
    when /KDDI-Pantech/i       ; :'KDDI-Pantech'
    when /KDDI-Sanyo/i         ; :'KDDI-Sanyo'
    when /KDDI-Sharp/i         ; :'KDDI-Sharp'
    when /KDDI/i               ; :KDDI
    when /Kejian/i             ; :Kejian
    when /Kenwood/i            ; :Kenwood
    when /Kisen/i              ; :Kisen
    when /Kokusai/i            ; :Kokusai
    when /Konka/i              ; :Konka
    when /Kozi/i               ; :Kozi
    when /KPT/i                ; :KPT
    when /Kyocera/i            ; :Kyocera
    when /LCT/i                ; :LCT
    when /Lenovo/i             ; :Lenovo
    when /Lexibook/i           ; :Lexibook
    when /Lexus/i              ; :Lexus
    when /LG/i                 ; :LG
    when /Lobster/i            ; :Lobster
    when /Longcos/i            ; :Longcos
    #when /LT/                  ; :LT
    when /LXE/i                ; :LXE
    when /Malata/i             ; :Malata
    when /Maxon/i              ; :Maxon
    when /Medion/i             ; :Medion
    when /MicroMax/i           ; :MicroMax
    when /Microsoft/i          ; :Microsoft
    when /Mio/i                ; :Mio
    when /Miracle/i            ; :Miracle
    when /Mitac/i              ; :Mitac
    when /Mitsubishi/i         ; :Mitsubishi
    when /Mobile Wireless Group/i    ; :'Mobile Wireless Group'
    when /MOBISTEL/i           ; :MOBISTEL
    when /Modelabs/i           ; :Modelabs
    when /ModelLabs/i          ; :ModelLabs
    when /Modottel/i           ; :Modottel
    when /MOMO Design/i        ; :'MOMO Design'
    when /Motorola/i           ; :'Motorola'
    when /Movistar/i           ; :Movistar
    when /MyPhone/i            ; :MyPhone
    when /NEC/                 ; :NEC
    when /Neonode/i            ; :Neonode
    when /Newgen/i             ; :Newgen
    when /Nexian/i             ; :Nexian
    #when /Nintendo/i           ; :Nintendo
    when /Nokia/i              ; :Nokia
    when /NTT DoCoMo/i         ; :'NTT DoCoMo'
    when /O2/                  ; :O2
    when /OKWap/i              ; :OKWap
    when /Onda/i               ; :Onda
    #when /Opera/i              ; :Opera
    when /Optimay/i            ; :Optimay
    when /Orange/i             ; :Orange
    when /PalmOne/i            ; :PalmOne
    when /Palm/i               ; :Palm
    when /Panasonic/i          ; :Panasonic
    when /Panda/i              ; :Panda
    when /Pantech/i            ; :Pantech
    when /PCD/i                ; :PCD
    when /Philips/i            ; :Philips
    when /PhoneOne/i           ; :PhoneOne
    when /Pioneer/i            ; :Pioneer
    when /Pirelli-Arcor/i      ; :'Pirelli-Arcor'
    when /Porsche Design/i     ; :'Porsche Design'
    when /Psion/i              ; :Psion
    when /QCI/i                ; :QCI
    when /QMobile/i            ; :QMobile
    when /Qtek/i               ; :Qtek
    when /Raks/i               ; :Raks
    when /RIM/i                ; :RIM
    when /Ron/                 ; :Ron
    when /Sagem/i              ; :Sagem
    when /SAMART/i             ; :SAMART
    when /Samsung/i            ; :Samsung
    when /SGH/i                ; :Samsung
    when /Sanyo/i              ; :Sanyo
    when /SavaJe/i             ; :SavaJe
    when /Sendo/i              ; :Sendo
    when /SFR/i                ; :SFR
    when /Sharp/i              ; :Sharp
    when /Siemens/i            ; :Siemens
    when /Skyspring/i          ; :Skyspring
    when /Skyworth/i           ; :Skyworth
    when /SmartTrust/i         ; :SmartTrust
    when /Smile/i              ; :Smile
    when /SoftBank/i           ; :SoftBank
    when /SonyEricsson/i       ; :SonyEricsson
    when /Sony/i               ; :Sony
    when /Spice/i              ; :Spice
    when /T-Mobile/i           ; :'T-Mobile'
    when /TCL/                 ; :TCL
    when /Techfaith/i          ; :Techfaith
    when /Tel.Me/i             ; :'Tel.Me'
    when /Telit/i              ; :Telit
    when /Tianyu/i             ; :Tianyu
    when /Toplux/i             ; :Toplux
    when /Toshiba/i            ; :Toshiba
    when /TTPCom/i             ; :TTPCom
    when /tvCompass/i          ; :tvCompass
    when /Ubiquam/i            ; :Ubiquam
    when /Uniscope/i           ; :Uniscope
    when /Unistar/i            ; :Unistar
    when /Uriver/i             ; :Uriver
    when /Usha Lexus/i         ; :'Usha Lexus'
    when /Utec/i               ; :Utec
    when /UTStarcom/i          ; :UTStarcom
    when /Vacom/i              ; :Vacom
    when /Velocity Mobile/i    ; :'Velocity Mobile'
    when /Verizon/i            ; :Verizon
    when /Vertu/i              ; :Vertu
    when /VERZIOWORLD/i        ; :VERZIOWORLD
    when /Virgin/i             ; :Virgin
    when /Vitelcom/i           ; :Vitelcom
    when /VK/i                 ; :VK
    when /Vodafone/i           ; :Vodafone
    when /Voxtel/i             ; :Voxtel
    when /W3C/i                ; :W3C
    when /WellcoM/i            ; :WellcoM
    when /Wonu/i               ; :Wonu
    when /XDA/i                ; :XDA
    when /YAS/i                ; :YAS
    when /ZT/i                 ; :ZT
    when /ZTE/i                ; :ZTE
    else                       ; :UnknownMobile
    end
  end

end
