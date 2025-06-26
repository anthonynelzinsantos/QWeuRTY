# QWeuRTY

The truly pan-European keyboard layout.

## Design goals

From the French ‘ç’ to the Portuguese ‘ã’, the Asturian ‘ḥ’ to the Icelandic ‘ð’, the Spanish ‘ñ’ to the Irish ‘í’, the Swedish ‘å’ to the Dutch ‘ĳ’, the German ‘ß’ to the Czech ‘ř’, the Polish ‘ł’ to the Lithuanian ‘ą’, the Hungarian ‘ő’ to the Turkish ‘ı’ and much more, QWeuRTY is designed to enable the input of every character from every Latin-script European language with a QWERTY keyboard.

Like the so-called international keyboard layouts, it turns all the accent keys (and a few more) into dead keys to input the most common diacritic marks. The `AltGr` (on PC) or `Opt` (on Mac) layer is also used to input useful symbols. QWeuRTY works best with an ISO keyboard, but it can be used with an ANSI keyboard, albeit with limited functionality.

## Usage

QWeuRTY uses nine dead keys:

- <code>\`</code> for the grave accent and the breves;
- `~` for the tilde;
- `^` for the circumflex accent;
- `'` for the acute and double acute accents;
- `"` for the diaeresis and double grave accent;
- `\` for the caron;
- `|` for the macron and stroked characters;
- `§` for the cedilla and the ogonek;
- and `±` for the dot.

To type a ‘é’, for example, you first type `'` to activate the acute accent layer, then `e`. To type `'`, you can simply press `'` twice. Some characters, such as `ð` or `æ`, are placed on the `AltGr/Opt` layer as they don’t fit neatly into the various accent layers.

## Installation

Use the appropriate files in the repo to manually install QWeuRTY 0.9 on your system. Packages with installation scripts will be released soon.

## Layers

Keys marked with `●` aren’t defined, but might be in the future. From QWeuRTY 1.0 onwards, keys shouldn’t change unless there’s overwhelming support to do so.

### Base layer

	` 1 2 3 4 5 6 7 8 9 0 - =
	  q w e r t y u i o p [ ] \
	  a s d f g h j k l ; '
	§ z x c v b n m , . /
          SP

	~ ! @ # $ % ^ & * ( ) _ +
	  Q W E R T Y U I O P { } |
	  A S D F G H J K L : "
	± Z X C V B N M < > ?
          SP

### AltGr/Opt

	º · ² £ € ‰ σ π ° ‘ ’ — ≠
	  æ ƿ ə ® þ ȝ ů ı ø œ « » ¬
	  å ß ð ƒ ŋ ● ĳ ∫ † … ′
	¶ ʒ × ç √ § ñ µ ≤ ≥ ÷
          NBSP

	ª ¡ ₂ ¥ ¢ ‱ ∑ Π ⌀ “ ” – ±
	  Æ Ƿ Ə © Þ Ȝ Ů İ Ø Œ ‹ › №
	  Å ẞ Ð ſ Ŋ ● Ĳ ∂ ‡ ¦ ″
	∞ Ʒ ⨯ Ç ∛ ¶ Ñ Ω ⸢ ⸥ ¿
          NBSP

### Grave accent and breves

	` ● ● ȇ ȓ ● ● ȗ ȋ ȏ ● ● ●
	  ȃ ẁ è ● ● ỳ ù ì ò ● ● ●
	  à ● ĕ ● ● ● ŭ ĭ ŏ ● ● ●
	● ă ● ● ● ğ ǹ ● ● ● ●
	          `
	             
	` ● ● Ȇ Ȓ ● ● Ȗ Ȋ Ȏ ● ● ●
	  Ȃ Ẁ È ● ● Ỳ Ù Ì Ò ● ● ●
	  À ● Ĕ ● ● ● Ŭ Ĭ Ŏ ● ● ●
	● Ă ● ● ● Ğ Ǹ ● ● ● ●
	          `

### Tilde

	~ ● ● ● ● ● ● ● ● ● ● ● ●
	  ● ● ẽ ● ● ỹ ũ ĩ õ ● ● ●
	  ã ● ● ● ● ● ● ● ● ● ● ●
	● ● ● ● ṽ ● ñ ● ● ● ●
	          ~
	           
	~ ● ● ● ● ● ● ● ● ● ● ● ●
	  ● ● Ẽ ● ● Ỹ Ũ Ĩ Õ ● ● ●
	  Ã ● ● ● ● ● ● ● ● ● ● ●
	● ● ● ● Ṽ ● Ñ ● ≲ ≳ ●
	          ~

### Circumflex accent and superscript

	● ¹ ² ³ ⁴ ⁵ ⁶ ⁷ ⁸ ⁹ ⁹ ⁰ ⁻ ⁼
	  ● ŵ Ê ● ● ŷ û î ô ● ● ●
	  â ŝ ● ● ĝ ĥ ĵ ● ● ● ● ●
	● ẑ ● ĉ ● ● ⁿ ● ● ● ●
	          ^
	
	● ● ● ● ● ^ ● ● ● ● ⁽ ⁾ ● ⁺
	  ● Ŵ Ê ● ● Ŷ Û Î Ô ● ● ●
	  Â Ŝ ● ● Ĝ Ĥ Ĵ ● ● ● ● ●
	● Ẑ ● Ĉ ● ● ● ● ● ● ●
	          ^

### Acute and double acute accent

	● ● ● ● ● ● ● ű ● ő ● ● ●
	  ǽ ẃ é ŕ ● ý ú í ó ṕ ● ●
	  á ś ● ● ǵ ● ● ḱ ĺ ● ' ●
	● ź ● ć ● ● ń ḿ ● ● ●
	          ’
              
	● ● ● ● ● ● ● Ű ● Ő ● ● ●
	  Ǽ Ẃ É Ŕ ● Ý Ú Í Ó Ṕ ● ●
	  Á Ś ● ● Ǵ ● ● Ḱ Ĺ ● ' ●
	● Ź ● Ć ● ● Ń Ḿ ● ● ●
	          ’

### Diaeresis and double grave accent

	● ● ● ȅ ȑ ● ● ȕ ȉ ȍ ● ● ●
	  ȁ ẅ ë ● ● ÿ ü ï ö ● ● ●
	  ä ● ● ● ● ḧ ṳ ● ● ● ● ●
	● ● ẍ ● ● ● ● ● ● ● ●
	          "
	            
	● ● ● Ȅ Ȑ ● ● Ȕ Ȉ Ȍ ● ● ●
	  Ȁ Ẅ Ë ● ● Ÿ Ü Ï Ö ● ● ●
	  Ä ● ● ● ● Ḧ Ṳ ● ● ● ● ●
	● ● Ẍ ● ● ● ● ● ● ● ●
	          "

### Caron and subscript

	● ₁ ₂ ₃ ₄ ₅ ₆ ₇ ₈ ₉ ₀ ₋ ₌
	  ǯ ● ě ř ť ● ǔ ǐ ǒ ● ● ●
	  ǎ š ď ● ǧ ȟ ǆ ● ľ ● ● ●
	● ● ₓ č ● ● ň ● ● ● ●
	          \
	           
	● ● ● ● ● ● ● ● ● ₍ ₎ ● ₊
	  Ǯ ● Ě Ř Ť ● Ǔ Ǐ Ǒ ● ● ●
	  Ǎ Š Ď ● Ǧ Ȟ Ǆ ● Ľ ● ● ●
	● ● ● Č ● ● Ň ● ● ● ●
	          \

### Macron and stroked characters

	● ● ● ● ● ● ● ● ● ● ● ● ●
	  ā ● ē ɍ Ť ȳ ū ī ō ᵽ ● ●
	  ā ꞩ đ ● ḡ ħ ɉ ꝃ ł ● ● ●
	● ƶ ● ȼ ꝟ ƀ ꞥ ● ≮ ≯ ●
	          |
           
	● ● ● ● ● ● ● ● ● ● ● ● ●
	  Ā ● Ē Ɍ Ť Ȳ Ū Ī Ō Ᵽ ● ●
	  Ā Ꞩ Đ ● Ḡ Ħ Ɉ Ꝃ Ł ● ● ●
	● Ƶ ● Ȼ Ꝟ Ƀ Ꞥ ● ≰ ≱ ●
	          |

### Cedilla and ogonek

	● ● ● ę ● ț ● ų į ǫ ● ● ●
	   ą ș ȩ ŗ ţ ● ● ● ● ● ● ●
	   ● ş ḑ ● ģ ḩ ● ķ ļ ● ● ●
	§ ● ● ç ● ● ņ ● ● ● ●
	          §
            
	● ● ● Ę ● Ț ● Ų Į Ǫ ● ● ●
	   Ą Ș Ȩ Ŗ Ţ ● ● ● ● ● ● ●
	   ● Ş Ḑ ● Ģ Ḩ ● Ķ Ļ ● ● ●
	§ ● ● Ç ● ● Ņ ● ● ● ●
	          §

### Dot

	● ● ● ● ● ● ● ● ● ● ● ● ●
	   ● ẇ ė ṙ ṫ ẏ ● ● ȯ ṗ ● ●
	   ȧ ṡ ḋ ḟ ● ḥ ● ● ḷ ● ● ●
	● ż ẋ ċ ● ḃ ṅ ṁ ● ● ●
	          ±
				   
	● ● ● ● ● ● ● ● ● ● ● ● ●
	   ● Ẇ Ė Ṙ Ṫ Ẏ ● ● Ȯ Ṗ ● ●
	   Ȧ Ṡ Ḋ Ḟ ● Ḥ ● ● Ḷ ● ● ●
	● Ż Ẋ Ċ ● Ḃ Ṅ Ṁ ● ● ●
	          ±

## Help wanted

I’ve been using QWeuRTY since 2020, so i know it’s working well on ISO keyboards and adequately on ANSI keyboards. I have provisional Coleman and Workman versions working, but i’d like to be sure they’re logical and ergonomic. If you can help, send me an e-mail at <anthony@nelzin.fr>. Thanks!

## Release history

- **0.10 (250626)** Relocated `ı`, `ḥ` and `ḷ`
- **0.9 (250620)** First public release
- ‌**0.8 (250615)** Removed the currency layer
- **0.7 (241103)** Added the dot layer
- **0.6 (250215)** Removed the Greek and Cyrillic layers
- **0.5 (210107)** Added the caron and macron layers
- **0.4 (210105)** Added the cedilla and ogonek layer
- **0.3 (210104)** Added the AltGr/Opt layer and the breves
- **0.2 (201231)** Added the diaeresis layer and double accents
- **0.1 (200405)** First private release