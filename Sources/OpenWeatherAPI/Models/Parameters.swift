// The parameters for the OpenWeatherAPI request.

public enum ExcludeOptions: String {
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
    case afrikaans = "af"
    case albanian = "al"
    case arabic = "ar"
    case azerbaijani = "az"
    case bulgarian = "bg"
    case catalan = "ca"
    case czech = "cz"
    case danish = "da"
    case german = "de"
    case greek = "el"
    case english = "en"
    case basque = "eu"
    case persian = "fa"
    case finnish = "fi"
    case french = "fr"
    case galician = "gl"
    case hebrew = "he"
    case hindi = "hi"
    case croatian = "hr"
    case hungarian = "hu"
    case indonesian = "id"
    case italian = "it"
    case japanese = "ja"
    case korean = "kr"
    case latvian = "la"
    case lithuanian = "lt"
    case macedonian = "mk"
    case norwegian = "no"
    case dutch = "nl"
    case polish = "pl"
    case portuguese = "pt"
    case portugueseBr = "pt_br"
    case romanian = "ro"
    case russian = "ru"
    case swedish = "se"
    case slovak = "sk"
    case slovenian = "sl"
    case spanish = "es"
    case serbian = "sr"
    case thai = "th"
    case turkish = "tr"
    case ukrainian = "ua"
    case vietnamese = "vi"
    case chineseSimplified = "zh_cn"
    case chineseTraditional = "zh_tw"
    case zulu = "zu"
}
