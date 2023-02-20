// The parameters for the OpenWeatherAPI request.

public enum ExcludeOptions: String, CaseIterable {
    case current
    case minutely
    case hourly
    case daily
    case alerts
}

public enum Units: String {
    case standard
    case metric
    case imperial
}

public enum Language: String {
    case ar
    case bg
    case ca
    case cz
    case de
    case el
    case en
    case fa
    case fi
    case fr
    case gl
    case he
    case hi
    case hr
    case hu
    case id
    case it
    case ja
    case kr
    case la
    case lt
    case mk
    case no
    case nl
    case pl
    case pt
    case ro
    case ru
    case sv
    case se
    case sk
    case sl
    case sp
    case th
    case tr
    case ua
    case uk
    case vi
    case zh_cn
    case zh_tw
    case zu
}