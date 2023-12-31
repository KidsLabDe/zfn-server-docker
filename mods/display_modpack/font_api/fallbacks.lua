--[[
	font_api mod for Minetest - Library creating textures with fonts and text
	(c) Pierre-Yves Rollo

	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program.  If not, see <http://www.gnu.org/licenses/>.
--]]

-- This is the unicode char fallback map. If a char is not present in
-- font, this maps indicates which char to try to use instead next.

return {
	-- Lowercase chars
	['a'] = 'A',	['b'] = 'B',	['c'] = 'C',	['d'] = 'D',
	['e'] = 'E',	['f'] = 'F',	['g'] = 'G',	['h'] = 'H',
	['i'] = 'I',	['j'] = 'J',	['k'] = 'K',	['l'] = 'L',
	['m'] = 'M',	['n'] = 'N',	['o'] = 'O',	['p'] = 'P',
	['q'] = 'Q',	['r'] = 'R',	['s'] = 'S',	['t'] = 'T',
	['u'] = 'U',	['v'] = 'V',	['w'] = 'W',	['x'] = 'X',
	['y'] = 'Y',	['z'] = 'Z',

	-- Special
	['¢'] = 'c',	['£'] = 'L',	['¥'] = 'Y',	['€'] = 'E',
	['©'] = '(C)',	['®'] = '(R)',	['™'] = 'TM',
	['ª'] = 'a',	['º'] = 'o',
	['«'] = '"',	['»'] = '"',	['´'] = '\'',
	['¹'] = '1',	['²'] = '2',	['³'] = '3',
	['µ'] = 'u',	['¤'] = 'o',
	['¼'] = '1/4',	['½'] = '1/2',	['¾'] = '3/4',
	['⅛'] = '1/8',	['⅜'] = '3/8',  ['⅝'] = '5/8',  ['⅞'] = '7/8',
	['¿'] = '?',

	-- Upper case accents
	['À'] = 'A',	['Á'] = 'A',	['Â'] = 'A',	['Ã'] = 'A',
	['Ä'] = 'A',	['Å'] = 'A',
	['Æ'] = 'AE',	['Ç'] = 'C',
	['È'] = 'E',	['É'] = 'E',	['Ê'] = 'E',	['Ë'] = 'E',
	['Ì'] = 'I',	['Í'] = 'I',	['Î'] = 'I',	['Ï'] = 'I',
	['Ð'] = 'D',	['Ñ'] = 'N',
	['Ò'] = 'O',	['Ó'] = 'O',	['Ô'] = 'O',	['Õ'] = 'O',
	['Ö'] = 'O',	['Ø'] = 'O',
	['Ú'] = 'U',	['Ù'] = 'U',	['Û'] = 'U',	['Ü'] = 'U',
	['×'] = 'x',	['Ý'] = 'Y',

	-- Lower case accents
	['à'] = 'a',	['á'] = 'a',	['â'] = 'a',
	['ã'] = 'a',	['ä'] = 'a',	['å'] = 'a',
	['æ'] = 'ae',	['ç'] = 'c',
	['è'] = 'e',	['é'] = 'e',	['ê'] = 'e',	['ë'] = 'e',
	['ì'] = 'i',	['í'] = 'i',	['î'] = 'i',	['ï'] = 'i',
	['ð'] = 'd',	['ñ'] = 'n',
	['ò'] = 'o',	['ó'] = 'o',	['ô'] = 'o',	['õ'] = 'o',
	['ö'] = 'o',	['ø'] = 'o',
	['ù'] = 'u',	['ú'] = 'u',	['û'] = 'u',	['ü'] = 'u',
	['ý'] = 'y',	['ÿ'] = 'y',

	-- Extended latin A

	['Ā'] = 'A',	['ā'] = 'a',	['Ă'] = 'A',	['ă'] = 'a',
	['Ą'] = 'A',	['ą'] = 'a',	['Ć'] = 'C',	['ć'] = 'c',
	['Ĉ'] = 'C',	['ĉ'] = 'c',	['Ċ'] = 'C',	['ċ'] = 'c',
	['Č'] = 'C',	['č'] = 'c',	['Ď'] = 'D',	['ď'] = 'd',
	['Đ'] = 'D',	['đ'] = 'd',	['Ē'] = 'E',	['ē'] = 'e',
	['Ĕ'] = 'E',	['ĕ'] = 'e',	['Ė'] = 'E',	['ė'] = 'e',
	['Ę'] = 'E',	['ę'] = 'e',	['Ě'] = 'E',	['ě'] = 'e',
	['Ĝ'] = 'G',	['Ğ'] = 'G',	['ğ'] = 'g',	['ĝ'] = 'g',
	['Ġ'] = 'G',	['ġ'] = 'g',	['Ģ'] = 'G',	['ģ'] = 'g',
	['Ĥ'] = 'H',	['ĥ'] = 'h',	['Ħ'] = 'H',	['ħ'] = 'h',
	['Ĩ'] = 'I',	['ĩ'] = 'i',	['Ī'] = 'I',	['ī'] = 'i',
	['Ĭ'] = 'I',	['ĭ'] = 'i',	['Į'] = 'I',	['į'] = 'i',
	['ı'] = 'i',	['İ'] = 'I',	['Ĳ'] = 'IJ',	['ĳ'] = 'ij',
	['Ĵ'] = 'J',	['ĵ'] = 'j',	['ķ'] = 'k',	['Ķ'] = 'K',
	['ĸ'] = 'k',
	['Ĺ'] = 'L',	['ĺ'] = 'l',	['Ļ'] = 'L',	['ļ'] = 'l',
	['Ľ'] = 'L',	['ľ'] = 'l',	['Ŀ'] = 'L',	['ŀ'] = 'l',
	['Ł'] = 'L',	['ł'] = 'l',	['Ń'] = 'N',	['ń'] = 'n',
	['Ņ'] = 'N',	['ņ'] = 'n',	['Ň'] = 'N',	['ň'] = 'n',
	['ŉ'] = 'n',	['Ŋ'] = 'n',	['ŋ'] = 'n',
	['Ō'] = 'O',	['ō'] = 'o',	['Ŏ'] = 'O',	['ŏ'] = 'o',
	['ő'] = 'o',	['Ő'] = 'O',	['œ'] = 'oe',	['Œ'] = 'OE',
	['Ŕ'] = 'R',	['ŕ'] = 'r',	['Ŗ'] = 'R',	['ŗ'] = 'r',
	['Ř'] = 'R',	['ř'] = 'r',	['Ś'] = 'S',	['ś'] = 's',
	['Ŝ'] = 'S',	['ŝ'] = 's',	['Ş'] = 'S',	['ş'] = 's',
	['Š'] = 'S',	['š'] = 's',	['Ţ'] = 'T',	['ţ'] = 't',
	['ť'] = 't',	['Ŧ'] = 'T',	['Ť'] = 'T',	['ŧ'] = 't',
	['Ũ'] = 'U',	['ũ'] = 'u',	['Ū'] = 'U',	['ū'] = 'u',
	['Ŭ'] = 'U',	['ŭ'] = 'u',	['Ů'] = 'U',	['ů'] = 'u',
	['Ű'] = 'U',	['ű'] = 'u',	['Ų'] = 'U',	['ų'] = 'u',
	['Ŵ'] = 'W',	['ŵ'] = 'w',	['Ŷ'] = 'Y',	['ŷ'] = 'y',
	['Ÿ'] = 'Y',
	['Ź'] = 'Z',	['ź'] = 'z',	['Ż'] = 'Z',	['ż'] = 'z',
	['Ž'] = 'Z',	['ž'] = 'z',	['ſ'] = 's',

	-- Extended latin B
	['ƀ'] = 'b',	['Ɓ'] = 'B',	['Ƃ'] = 'B',	['ƃ'] = 'b',
	['Ɔ'] = 'O',
	['Ƈ'] = 'C',	['ƈ'] = 'c',	['Ɖ'] = 'D',	['Ɗ'] = 'D',
	['Ƌ'] = 'D',	['ƌ'] = 'd',	['Ǝ'] = 'E',	['Ə'] = 'e',
	['Ɛ'] = 'E',
	['Ƒ'] = 'F',	['ƒ'] = 'f',	['Ɠ'] = 'G',
	['ƕ'] = 'hv',	['Ɨ'] = 'I',	['Ƙ'] = 'K',	['ƙ'] = 'k',
	['ƚ'] = 'l',	['Ɯ'] = 'M',	['Ɲ'] = 'N',	['ƞ'] = 'n',
	['Ɵ'] = 'O',
	['Ơ'] = 'O',	['ơ'] = 'o',	['Ƣ'] = 'OI',	['ƣ'] = 'oi',
	['Ƥ'] = 'P',	['ƥ'] = 'p',	['Ʀ'] = 'YR',
	['Ƨ'] = 'S',	['ƨ'] = 's',	['ƫ'] = 't',
	['Ƭ'] = 'T',	['ƭ'] = 't',	['Ʈ'] = 'T',
	['Ư'] = 'U',	['ư'] = 'u',	['Ʋ'] = 'V',
	['Ƴ'] = 'Y',	['ƴ'] = 'y',	['Ƶ'] = 'Z',	['ƶ'] = 'z',
	['ƻ'] = '2',	['Ƽ'] = '5',	['ƽ'] = '5',
	['Ǆ'] = 'Ǳ',	['ǅ'] = 'ǲ',	['ǆ'] = 'ǳ',
	['Ǉ'] = 'LJ',	['ǈ'] = 'Lj',	['ǉ'] = 'lj',
	['Ǌ'] = 'NJ',	['ǋ'] = 'Nj',	['ǌ'] = 'nj',
	['Ǎ'] = 'A',	['ǎ'] = 'a',	['Ǐ'] = 'I',	['ǐ'] = 'i',
	['Ǒ'] = 'O',	['ǒ'] = 'o',	['Ǔ'] = 'U',	['ǔ'] = 'u',
	['Ǖ'] = 'U',	['ǖ'] = 'u',	['Ǘ'] = 'U',	['ǘ'] = 'u',
	['Ǚ'] = 'U',	['ǚ'] = 'u',	['Ǜ'] = 'U',	['ǜ'] = 'u',
	['ǝ'] = 'e',
	['Ǟ'] = 'A',	['ǟ'] = 'a',	['Ǡ'] = 'A',	['ǡ'] = 'a',
	['Ǣ'] = 'Æ',	['ǣ'] = 'æ',	['Ǥ'] = 'G',	['ǥ'] = 'g',
	['Ǧ'] = 'G',	['ǧ'] = 'g',	['Ǩ'] = 'K',	['ǩ'] = 'k',
	['Ǫ'] = 'Q',	['ǫ'] = 'q',	['Ǭ'] = 'Q',	['ǭ'] = 'q',
	['ǰ'] = 'J',
	['Ǳ'] = 'DZ',	['ǲ'] = 'Dz',	['ǳ'] = 'dz',
	['Ǵ'] = 'G',	['ǵ'] = 'g',	['Ƕ'] = 'H',
	['Ǹ'] = 'N',	['ǹ'] = 'n',	['Ǻ'] = 'A',	['ǻ'] = 'a',
	['Ǽ'] = 'Æ',	['ǽ'] = 'æ',	['Ǿ'] = 'Ø',	['ǿ'] = 'ø',
	['Ȁ'] = 'A',	['ȁ'] = 'a',	['Ȃ'] = 'A',	['ȃ'] = 'a',
	['Ȅ'] = 'E',	['ȅ'] = 'e',	['Ȇ'] = 'E',	['ȇ'] = 'e',
	['Ȉ'] = 'I',	['ȉ'] = 'i',	['Ȋ'] = 'I',	['ȋ'] = 'i',
	['Ȍ'] = 'O',	['ȍ'] = 'o',	['Ȏ'] = 'O',	['ȏ'] = 'o',
	['Ȑ'] = 'R',	['ȑ'] = 'r',	['Ȓ'] = 'R',	['ȓ'] = 'r',
	['Ȕ'] = 'U',	['ȕ'] = 'u',	['Ȗ'] = 'U',	['ȗ'] = 'u',
	['Ș'] = 'S',	['ș'] = 's',	['Ț'] = 'T',	['ț'] = 't',
	['Ȟ'] = 'H',	['ȟ'] = 'h',	['Ƞ'] = 'N',
	['ȡ'] = 'd',
	['Ȣ'] = 'OU',	['ȣ'] = 'ou',	['Ȥ'] = 'Z',	['ȥ'] = 'z',
	['Ȧ'] = 'A',	['ȧ'] = 'a',	['Ȩ'] = 'E',	['ȩ'] = 'e',
	['Ȫ'] = 'O',	['ȫ'] = 'o',	['Ȭ'] = 'O',	['ȭ'] = 'o',
	['Ȯ'] = 'O',	['ȯ'] = 'o',	['Ȱ'] = 'O',	['ȱ'] = 'o',
	['Ȳ'] = 'Y',	['ȳ'] = 'y',	['ȴ'] = 'l',
	['ȵ'] = 'n',	['ȶ'] = 't',	['ȷ'] = 'j',
	['ȸ'] = 'db',	['ȹ'] = 'qp',	['Ⱥ'] = 'A',
	['Ȼ'] = 'C',	['ȼ'] = 'c',	['Ƚ'] = 'L',
	['Ⱦ'] = 'T',	['ȿ'] = 's',	['ɀ'] = 'z',
	['Ƀ'] = 'B',	['Ʉ'] = 'U',	['Ʌ'] = 'V',
	['Ɇ'] = 'E',	['ɇ'] = 'e',	['Ɉ'] = 'J',	['ɉ'] = 'j',
	['Ɋ'] = 'Q',	['ɋ'] = 'q',	['Ɍ'] = 'R',	['ɍ'] = 'r',
	['Ɏ'] = 'Y',	['ɏ'] = 'y',	['ɐ'] = 'a',
	['ɓ'] = 'b',	['ɔ'] = 'o',
	['ɕ'] = 'c',	['ɖ'] = 'd',	['ɗ'] = 'd',
	['ɘ'] = 'e',	['ə'] = 'e',	['ɚ'] = 'e',
	['ɛ'] = 'e',	['ɜ'] = 'e',	['ɝ'] = 'e',	['ɞ'] = 'e',
	['ɟ'] = 'j',
	['ɠ'] = 'g',	['ɡ'] = 'g',	['ɢ'] = 'G',
	['ɥ'] = 'h',	['ɦ'] = 'h',	['ɧ'] = 'h',
	['ɨ'] = 'i',	['ɪ'] = 'I',
	['ɫ'] = 'l',	['ɬ'] = 'l',	['ɭ'] = 'l',
	['ɮ'] = 'lz',
	['ɯ'] = 'm',	['ɰ'] = 'm',	['ɱ'] = 'm',
	['ɲ'] = 'n',	['ɳ'] = 'n',	['ɴ'] = 'N',
	['ɵ'] = 'o',	['ɶ'] = 'Œ',
	['ɹ'] = 'r',	['ɺ'] = 'r',	['ɻ'] = 'r',
	['ɼ'] = 'r',	['ɽ'] = 'r',	['ɾ'] = 'r',	['ɿ'] = 'r',
}
