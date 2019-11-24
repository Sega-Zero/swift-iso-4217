//
//  CurrencyCode.generated.swift
//  swift_iso4217
//
//  Created by Sergey Galezdinov on 29.04.17.
//
//

/// An enum that consist of all currency codes avaliable in Foundation. \
/// This is 100% code-generated sourcefile. \
/// Use this snippet to update enum whenever you want:
/** ```swift
let locale = NSLocale(localeIdentifier: "en_US")
var s = "public enum CurrencyCode: String {"
NSLocale.isoCurrencyCodes.forEach {
    if #available(iOS 10.0, macOS 10.12, *) {
        if let description = locale.localizedString(forCurrencyCode: $0) {
            s.append("\n\t///\(description)")
        }
    } else {
    }
    s.append("\n\tcase \($0.lowercased()) = \"\($0)\"")
}

print(s + "\n}")
```
*/

public enum CurrencyCode: String {
    ///Andorran Peseta
    case adp = "ADP"
    ///United Arab Emirates Dirham
    case aed = "AED"
    ///Afghan Afghani (1927–2002)
    case afa = "AFA"
    ///Afghan Afghani
    case afn = "AFN"
    ///Albanian Lek (1946–1965)
    case alk = "ALK"
    ///Albanian Lek
    case all = "ALL"
    ///Armenian Dram
    case amd = "AMD"
    ///Netherlands Antillean Guilder
    case ang = "ANG"
    ///Angolan Kwanza
    case aoa = "AOA"
    ///Angolan Kwanza (1977–1991)
    case aok = "AOK"
    ///Angolan New Kwanza (1990–2000)
    case aon = "AON"
    ///Angolan Readjusted Kwanza (1995–1999)
    case aor = "AOR"
    ///Argentine Austral
    case ara = "ARA"
    ///Argentine Peso Ley (1970–1983)
    case arl = "ARL"
    ///Argentine Peso (1881–1970)
    case arm = "ARM"
    ///Argentine Peso (1983–1985)
    case arp = "ARP"
    ///Argentine Peso
    case ars = "ARS"
    ///Austrian Schilling
    case ats = "ATS"
    ///Australian Dollar
    case aud = "AUD"
    ///Aruban Florin
    case awg = "AWG"
    ///Azerbaijani Manat (1993–2006)
    case azm = "AZM"
    ///Azerbaijani Manat
    case azn = "AZN"
    ///Bosnia-Herzegovina Dinar (1992–1994)
    case bad = "BAD"
    ///Bosnia-Herzegovina Convertible Mark
    case bam = "BAM"
    ///Bosnia-Herzegovina New Dinar (1994–1997)
    case ban = "BAN"
    ///Barbadian Dollar
    case bbd = "BBD"
    ///Bangladeshi Taka
    case bdt = "BDT"
    ///Belgian Franc (convertible)
    case bec = "BEC"
    ///Belgian Franc
    case bef = "BEF"
    ///Belgian Franc (financial)
    case bel = "BEL"
    ///Bulgarian Hard Lev
    case bgl = "BGL"
    ///Bulgarian Socialist Lev
    case bgm = "BGM"
    ///Bulgarian Lev
    case bgn = "BGN"
    ///Bulgarian Lev (1879–1952)
    case bgo = "BGO"
    ///Bahraini Dinar
    case bhd = "BHD"
    ///Burundian Franc
    case bif = "BIF"
    ///Bermudan Dollar
    case bmd = "BMD"
    ///Brunei Dollar
    case bnd = "BND"
    ///Bolivian Boliviano
    case bob = "BOB"
    ///Bolivian Boliviano (1863–1963)
    case bol = "BOL"
    ///Bolivian Peso
    case bop = "BOP"
    ///Bolivian Mvdol
    case bov = "BOV"
    ///Brazilian New Cruzeiro (1967–1986)
    case brb = "BRB"
    ///Brazilian Cruzado (1986–1989)
    case brc = "BRC"
    ///Brazilian Cruzeiro (1990–1993)
    case bre = "BRE"
    ///Brazilian Real
    case brl = "BRL"
    ///Brazilian New Cruzado (1989–1990)
    case brn = "BRN"
    ///Brazilian Cruzeiro (1993–1994)
    case brr = "BRR"
    ///Brazilian Cruzeiro (1942–1967)
    case brz = "BRZ"
    ///Bahamian Dollar
    case bsd = "BSD"
    ///Bhutanese Ngultrum
    case btn = "BTN"
    ///Burmese Kyat
    case buk = "BUK"
    ///Botswanan Pula
    case bwp = "BWP"
    ///Belarusian Ruble (1994–1999)
    case byb = "BYB"
    ///Belarusian Ruble
    case byn = "BYN"
    ///Belarusian Ruble (2000–2016)
    case byr = "BYR"
    ///Belize Dollar
    case bzd = "BZD"
    ///Canadian Dollar
    case cad = "CAD"
    ///Congolese Franc
    case cdf = "CDF"
    ///WIR Euro
    case che = "CHE"
    ///Swiss Franc
    case chf = "CHF"
    ///WIR Franc
    case chw = "CHW"
    ///Chilean Escudo
    case cle = "CLE"
    ///Chilean Unit of Account (UF)
    case clf = "CLF"
    ///Chilean Peso
    case clp = "CLP"
    ///Chinese Yuan (offshore)
    case cnh = "CNH"
    ///Chinese People’s Bank Dollar
    case cnx = "CNX"
    ///Chinese Yuan
    case cny = "CNY"
    ///Colombian Peso
    case cop = "COP"
    ///Colombian Real Value Unit
    case cou = "COU"
    ///Costa Rican Colón
    case crc = "CRC"
    ///Serbian Dinar (2002–2006)
    case csd = "CSD"
    ///Czechoslovak Hard Koruna
    case csk = "CSK"
    ///Cuban Convertible Peso
    case cuc = "CUC"
    ///Cuban Peso
    case cup = "CUP"
    ///Cape Verdean Escudo
    case cve = "CVE"
    ///Cypriot Pound
    case cyp = "CYP"
    ///Czech Koruna
    case czk = "CZK"
    ///East German Mark
    case ddm = "DDM"
    ///German Mark
    case dem = "DEM"
    ///Djiboutian Franc
    case djf = "DJF"
    ///Danish Krone
    case dkk = "DKK"
    ///Dominican Peso
    case dop = "DOP"
    ///Algerian Dinar
    case dzd = "DZD"
    ///Ecuadorian Sucre
    case ecs = "ECS"
    ///Ecuadorian Unit of Constant Value
    case ecv = "ECV"
    ///Estonian Kroon
    case eek = "EEK"
    ///Egyptian Pound
    case egp = "EGP"
    case eqe = "EQE"
    ///Eritrean Nakfa
    case ern = "ERN"
    ///Spanish Peseta (A account)
    case esa = "ESA"
    ///Spanish Peseta (convertible account)
    case esb = "ESB"
    ///Spanish Peseta
    case esp = "ESP"
    ///Ethiopian Birr
    case etb = "ETB"
    ///Euro
    case eur = "EUR"
    ///Finnish Markka
    case fim = "FIM"
    ///Fijian Dollar
    case fjd = "FJD"
    ///Falkland Islands Pound
    case fkp = "FKP"
    ///French Franc
    case frf = "FRF"
    ///British Pound
    case gbp = "GBP"
    ///Georgian Kupon Larit
    case gek = "GEK"
    ///Georgian Lari
    case gel = "GEL"
    ///Ghanaian Cedi (1979–2007)
    case ghc = "GHC"
    ///Ghanaian Cedi
    case ghs = "GHS"
    ///Gibraltar Pound
    case gip = "GIP"
    ///Gambian Dalasi
    case gmd = "GMD"
    ///Guinean Franc
    case gnf = "GNF"
    ///Guinean Syli
    case gns = "GNS"
    ///Equatorial Guinean Ekwele
    case gqe = "GQE"
    ///Greek Drachma
    case grd = "GRD"
    ///Guatemalan Quetzal
    case gtq = "GTQ"
    ///Portuguese Guinea Escudo
    case gwe = "GWE"
    ///Guinea-Bissau Peso
    case gwp = "GWP"
    ///Guyanaese Dollar
    case gyd = "GYD"
    ///Hong Kong Dollar
    case hkd = "HKD"
    ///Honduran Lempira
    case hnl = "HNL"
    ///Croatian Dinar
    case hrd = "HRD"
    ///Croatian Kuna
    case hrk = "HRK"
    ///Haitian Gourde
    case htg = "HTG"
    ///Hungarian Forint
    case huf = "HUF"
    ///Indonesian Rupiah
    case idr = "IDR"
    ///Irish Pound
    case iep = "IEP"
    ///Israeli Pound
    case ilp = "ILP"
    ///Israeli Shekel (1980–1985)
    case ilr = "ILR"
    ///Israeli New Shekel
    case ils = "ILS"
    ///Indian Rupee
    case inr = "INR"
    ///Iraqi Dinar
    case iqd = "IQD"
    ///Iranian Rial
    case irr = "IRR"
    ///Icelandic Króna (1918–1981)
    case isj = "ISJ"
    ///Icelandic Króna
    case isk = "ISK"
    ///Italian Lira
    case itl = "ITL"
    ///Jamaican Dollar
    case jmd = "JMD"
    ///Jordanian Dinar
    case jod = "JOD"
    ///Japanese Yen
    case jpy = "JPY"
    ///Kenyan Shilling
    case kes = "KES"
    ///Kyrgystani Som
    case kgs = "KGS"
    ///Cambodian Riel
    case khr = "KHR"
    ///Comorian Franc
    case kmf = "KMF"
    ///North Korean Won
    case kpw = "KPW"
    ///South Korean Hwan (1953–1962)
    case krh = "KRH"
    ///South Korean Won (1945–1953)
    case kro = "KRO"
    ///South Korean Won
    case krw = "KRW"
    ///Kuwaiti Dinar
    case kwd = "KWD"
    ///Cayman Islands Dollar
    case kyd = "KYD"
    ///Kazakhstani Tenge
    case kzt = "KZT"
    ///Laotian Kip
    case lak = "LAK"
    ///Lebanese Pound
    case lbp = "LBP"
    ///Sri Lankan Rupee
    case lkr = "LKR"
    ///Liberian Dollar
    case lrd = "LRD"
    ///Lesotho Loti
    case lsl = "LSL"
    case lsm = "LSM"
    ///Lithuanian Litas
    case ltl = "LTL"
    ///Lithuanian Talonas
    case ltt = "LTT"
    ///Luxembourgian Convertible Franc
    case luc = "LUC"
    ///Luxembourgian Franc
    case luf = "LUF"
    ///Luxembourg Financial Franc
    case lul = "LUL"
    ///Latvian Lats
    case lvl = "LVL"
    ///Latvian Ruble
    case lvr = "LVR"
    ///Libyan Dinar
    case lyd = "LYD"
    ///Moroccan Dirham
    case mad = "MAD"
    ///Moroccan Franc
    case maf = "MAF"
    ///Monegasque Franc
    case mcf = "MCF"
    ///Moldovan Cupon
    case mdc = "MDC"
    ///Moldovan Leu
    case mdl = "MDL"
    ///Malagasy Ariary
    case mga = "MGA"
    ///Malagasy Franc
    case mgf = "MGF"
    ///Macedonian Denar
    case mkd = "MKD"
    ///Macedonian Denar (1992–1993)
    case mkn = "MKN"
    ///Malian Franc
    case mlf = "MLF"
    ///Myanmar Kyat
    case mmk = "MMK"
    ///Mongolian Tugrik
    case mnt = "MNT"
    ///Macanese Pataca
    case mop = "MOP"
    ///Mauritanian Ouguiya (1973–2017)
    case mro = "MRO"
    ///Mauritanian Ouguiya
    case mru = "MRU"
    ///Maltese Lira
    case mtl = "MTL"
    ///Maltese Pound
    case mtp = "MTP"
    ///Mauritian Rupee
    case mur = "MUR"
    ///Maldivian Rupee (1947–1981)
    case mvp = "MVP"
    ///Maldivian Rufiyaa
    case mvr = "MVR"
    ///Malawian Kwacha
    case mwk = "MWK"
    ///Mexican Peso
    case mxn = "MXN"
    ///Mexican Silver Peso (1861–1992)
    case mxp = "MXP"
    ///Mexican Investment Unit
    case mxv = "MXV"
    ///Malaysian Ringgit
    case myr = "MYR"
    ///Mozambican Escudo
    case mze = "MZE"
    ///Mozambican Metical (1980–2006)
    case mzm = "MZM"
    ///Mozambican Metical
    case mzn = "MZN"
    ///Namibian Dollar
    case nad = "NAD"
    ///Nigerian Naira
    case ngn = "NGN"
    ///Nicaraguan Córdoba (1988–1991)
    case nic = "NIC"
    ///Nicaraguan Córdoba
    case nio = "NIO"
    ///Dutch Guilder
    case nlg = "NLG"
    ///Norwegian Krone
    case nok = "NOK"
    ///Nepalese Rupee
    case npr = "NPR"
    ///New Zealand Dollar
    case nzd = "NZD"
    ///Omani Rial
    case omr = "OMR"
    ///Panamanian Balboa
    case pab = "PAB"
    ///Peruvian Inti
    case pei = "PEI"
    ///Peruvian Sol
    case pen = "PEN"
    ///Peruvian Sol (1863–1965)
    case pes = "PES"
    ///Papua New Guinean Kina
    case pgk = "PGK"
    ///Philippine Piso
    case php = "PHP"
    ///Pakistani Rupee
    case pkr = "PKR"
    ///Polish Zloty
    case pln = "PLN"
    ///Polish Zloty (1950–1995)
    case plz = "PLZ"
    ///Portuguese Escudo
    case pte = "PTE"
    ///Paraguayan Guarani
    case pyg = "PYG"
    ///Qatari Rial
    case qar = "QAR"
    ///Rhodesian Dollar
    case rhd = "RHD"
    ///Romanian Leu (1952–2006)
    case rol = "ROL"
    ///Romanian Leu
    case ron = "RON"
    ///Serbian Dinar
    case rsd = "RSD"
    ///Russian Ruble
    case rub = "RUB"
    ///Russian Ruble (1991–1998)
    case rur = "RUR"
    ///Rwandan Franc
    case rwf = "RWF"
    ///Saudi Riyal
    case sar = "SAR"
    ///Solomon Islands Dollar
    case sbd = "SBD"
    ///Seychellois Rupee
    case scr = "SCR"
    ///Sudanese Dinar (1992–2007)
    case sdd = "SDD"
    ///Sudanese Pound
    case sdg = "SDG"
    ///Sudanese Pound (1957–1998)
    case sdp = "SDP"
    ///Swedish Krona
    case sek = "SEK"
    ///Singapore Dollar
    case sgd = "SGD"
    ///St. Helena Pound
    case shp = "SHP"
    ///Slovenian Tolar
    case sit = "SIT"
    ///Slovak Koruna
    case skk = "SKK"
    ///Sierra Leonean Leone
    case sll = "SLL"
    ///Somali Shilling
    case sos = "SOS"
    ///Surinamese Dollar
    case srd = "SRD"
    ///Surinamese Guilder
    case srg = "SRG"
    ///South Sudanese Pound
    case ssp = "SSP"
    ///São Tomé & Príncipe Dobra (1977–2017)
    case std = "STD"
    ///São Tomé & Príncipe Dobra
    case stn = "STN"
    ///Soviet Rouble
    case sur = "SUR"
    ///Salvadoran Colón
    case svc = "SVC"
    ///Syrian Pound
    case syp = "SYP"
    ///Swazi Lilangeni
    case szl = "SZL"
    ///Thai Baht
    case thb = "THB"
    ///Tajikistani Ruble
    case tjr = "TJR"
    ///Tajikistani Somoni
    case tjs = "TJS"
    ///Turkmenistani Manat (1993–2009)
    case tmm = "TMM"
    ///Turkmenistani Manat
    case tmt = "TMT"
    ///Tunisian Dinar
    case tnd = "TND"
    ///Tongan Paʻanga
    case top = "TOP"
    ///Timorese Escudo
    case tpe = "TPE"
    ///Turkish Lira (1922–2005)
    case trl = "TRL"
    ///Turkish Lira
    case `try` = "TRY"
    ///Trinidad & Tobago Dollar
    case ttd = "TTD"
    ///New Taiwan Dollar
    case twd = "TWD"
    ///Tanzanian Shilling
    case tzs = "TZS"
    ///Ukrainian Hryvnia
    case uah = "UAH"
    ///Ukrainian Karbovanets
    case uak = "UAK"
    ///Ugandan Shilling (1966–1987)
    case ugs = "UGS"
    ///Ugandan Shilling
    case ugx = "UGX"
    ///US Dollar
    case usd = "USD"
    ///US Dollar (Next day)
    case usn = "USN"
    ///US Dollar (Same day)
    case uss = "USS"
    ///Uruguayan Peso (Indexed Units)
    case uyi = "UYI"
    ///Uruguayan Peso (1975–1993)
    case uyp = "UYP"
    ///Uruguayan Peso
    case uyu = "UYU"
    ///Uzbekistani Som
    case uzs = "UZS"
    ///Venezuelan Bolívar (1871–2008)
    case veb = "VEB"
    ///Venezuelan Bolívar (2008–2018)
    case vef = "VEF"
    ///Vietnamese Dong
    case vnd = "VND"
    ///Vietnamese Dong (1978–1985)
    case vnn = "VNN"
    ///Vanuatu Vatu
    case vuv = "VUV"
    ///Samoan Tala
    case wst = "WST"
    ///Central African CFA Franc
    case xaf = "XAF"
    ///Silver
    case xag = "XAG"
    ///Gold
    case xau = "XAU"
    ///European Composite Unit
    case xba = "XBA"
    ///European Monetary Unit
    case xbb = "XBB"
    ///European Unit of Account (XBC)
    case xbc = "XBC"
    ///European Unit of Account (XBD)
    case xbd = "XBD"
    ///East Caribbean Dollar
    case xcd = "XCD"
    ///Special Drawing Rights
    case xdr = "XDR"
    ///European Currency Unit
    case xeu = "XEU"
    ///French Gold Franc
    case xfo = "XFO"
    ///French UIC-Franc
    case xfu = "XFU"
    ///West African CFA Franc
    case xof = "XOF"
    ///Palladium
    case xpd = "XPD"
    ///CFP Franc
    case xpf = "XPF"
    ///Platinum
    case xpt = "XPT"
    ///RINET Funds
    case xre = "XRE"
    ///Sucre
    case xsu = "XSU"
    ///Testing Currency Code
    case xts = "XTS"
    ///ADB Unit of Account
    case xua = "XUA"
    ///Unknown Currency
    case xxx = "XXX"
    ///Yemeni Dinar
    case ydd = "YDD"
    ///Yemeni Rial
    case yer = "YER"
    ///Yugoslavian Hard Dinar (1966–1990)
    case yud = "YUD"
    ///Yugoslavian New Dinar (1994–2002)
    case yum = "YUM"
    ///Yugoslavian Convertible Dinar (1990–1992)
    case yun = "YUN"
    ///Yugoslavian Reformed Dinar (1992–1993)
    case yur = "YUR"
    ///South African Rand (financial)
    case zal = "ZAL"
    ///South African Rand
    case zar = "ZAR"
    ///Zambian Kwacha (1968–2012)
    case zmk = "ZMK"
    ///Zambian Kwacha
    case zmw = "ZMW"
    ///Zairean New Zaire (1993–1998)
    case zrn = "ZRN"
    ///Zairean Zaire (1971–1993)
    case zrz = "ZRZ"
    ///Zimbabwean Dollar (1980–2008)
    case zwd = "ZWD"
    ///Zimbabwean Dollar (2009)
    case zwl = "ZWL"
    ///Zimbabwean Dollar (2008)
    case zwr = "ZWR"
}
