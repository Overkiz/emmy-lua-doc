local stringx = {}

--- String Predicates
--------------------------------------------------------------------------------

--- does s only contain alphabetic characters?
--- @param s string a string
--- @return boolean
function stringx.isalpha(s) end

--- does s only contain digits?
--- @param s string a string
--- @return boolean
function stringx.isdigit(s) end

--- does s only contain alphanumeric characters?
--- @param s string a string
--- @return boolean
function stringx.isalnum(s) end

--- does s only contain spaces?
--- @param s string a string
--- @return boolean
function stringx.isspace(s) end

--- does s only contain lower case characters?
--- @param s string a string
--- @return boolean
function stringx.islower(s) end

--- does s only contain upper case characters?
--- @param s string a string
--- @return boolean
function stringx.isupper(s) end

--- does s start with prefix or one of prefixes?
--- @param s string a string
--- @param  prefix string a string or an array of strings
--- @return boolean
function stringx.startswith(s, prefix) end

--- does s end with suffix or one of suffixes?
--- @param s string a string
--- @param suffix string a string or an array of strings
--- @return boolean
function stringx.endswith(s, suffix) end

--- Strings and Lists
--------------------------------------------------------------------------------

--- concatenate the strings using this string as a delimiter.
--- @param s string the string
--- @param seq string[]|number[] a table of strings or numbers
--- @return string
function stringx.join (s, seq) end

--- Split a string into a list of lines. "\r", "\n", and "\r\n" are considered
--- line ends. They are not included in the lines unless keepends is passed.
--- Terminal line end does not produce an extra line. Splitting an empty string
--- results in an empty list.
--- @param s string the string.
--- @param keep_ends boolean include line ends. (optional)
--- @overload fun(s: string)
--- @return pl.List
function stringx.splitlines (s, keep_ends) end

--- split a string into a list of strings using a delimiter.
--- @param s string the string
--- @param re string a delimiter (defaults to whitespace) (optional)
--- @param n number maximum number of results (optional)
--- @overload fun(s: string)
--- @overload fun(s: string, re: string)
--- @return pl.List
function stringx.split (s, re, n) end

--- replace all tabs in s with tabsize spaces. If not specified, tabsize defaults
--- to 8. with 0.9.5 this now correctly expands to the next tab stop (if you really
--- want to just replace tabs, use :gsub(‘\t’,‘ ’) etc)
--- @param s string the string
--- @param tabsize number [opt=8] number of spaces to expand each tab
--- @overload fun(s: string)
--- @return string
function stringx.expandtabs (s, tabsize) end

--- Finding and Replacing
--------------------------------------------------------------------------------

--- find index of first instance of sub in s from the left.
--- @param s string the string
--- @param sub string substring
--- @param first number first index (optional)
--- @param last number last index (optional)
--- @overload fun(s: string, sub: string)
--- @overload fun(s: string, sub: string, first: number)
--- @return number
function stringx.lfind (s, sub, first, last) end

--- find index of first instance of sub in s from the right.
--- @param s string the string
--- @param sub string substring
--- @param first number first index (optional)
--- @param last number last index (optional)
--- @overload fun(s: string, sub: string)
--- @overload fun(s: string, sub: string, first: number)
--- @return number
function stringx.rfind (s, sub, first, last) end

--- replace up to n instances of old by new in the string s. if n is not present, replace all instances.
--- @param s string the string
--- @param old string the target substring
--- @param new string the substitution
--- @param n number optional maximum number of substitutions (optional)
--- @return string
--- @overload(s: string, old: string, new: string)
function stringx.replace (s, old, new, n) end

--- count all instances of substring in string.
--- @param s string the string
--- @param sub string substring
--- @return number
function stringx.count (s, sub) end

--- Stripping and Justifying
--------------------------------------------------------------------------------

--- left-justify s with width w.
--- @param s string the string
--- @param w number width of justification
--- @param ch string padding character (default ' function ljust (s, w[, ch=' ']) end
--- @return string
--- @overload fun(s: string)
--- @overload fun(s: string, w:number)
function stringx.ljust (s, w, ch) end

--- right-justify s with width w.
--- @params string the string
--- @paramw int width of justification
--- @paramch string padding character (default ' ')
--- @return string
--- @overload fun(s: string)
--- @overload fun(s: string, w:number)
function stringx.rjust (s, w, ch) end

--- center-justify s with width w.
--- @params string the string
--- @paramw int width of justification
--- @paramch string padding character (default ' ')
--- @return string
--- @overload fun(s: string)
--- @overload fun(s: string, w:number)
function stringx.center (s, w, ch) end

--- trim any whitespace on the left of s.
--- @params string the string
--- @paramchrs string default any whitespace character, but can be a string of
--- characters to be trimmed (default '%s')
--- @return string
--- @overload fun(s: string)
function stringx.lstrip (s, chrs) end

--- trim any whitespace on the right of s.
--- @params string the string
--- @param chrs string default any whitespace character, but can be a string
--- of characters to be trimmed (default '%s')
--- @return string
--- @overload fun(s: string)
function stringx.rstrip (s, chrs) end

--- trim any whitespace on both left and right of s.
--- @params string the string
--- @paramchrs string default any whitespace character, but can be a string
--- of characters to be trimmed (default '%s')
--- @return string
--- @overload fun(s: string)
function stringx.strip (s, chrs) end

--- Partioning Strings
--------------------------------------------------------------------------------

--- split a string using a pattern. Note that at least one value will be returned!
--- @params string the string
--- @paramre string a Lua string pattern (defaults to whitespace) (default '%s')
--- @return string the parts of the string
function stringx.splitv (s, re) end

--- partition the string using first occurance of a delimiter
--- @params string the string
--- @paramch string delimiter
--- @return string part before ch
--- @return string ch
--- @return string part after ch
function stringx.partition (s, ch) end

--- partition the string p using last occurance of a delimiter
--- @params string the string
--- @paramch string delimiter
--- @return string part before ch
--- @return string ch
--- @return string part after ch
function stringx.rpartition (s, ch) end

--- return the ‘character’ at the index.
--- @param s string the string
--- @parami dx int an index (can be negative)
--- a substring of length 1 if successful, empty string otherwise.
function stringx.at (s, idx) end

--- Miscelaneous
--------------------------------------------------------------------------------

--- return an iterator over all lines in a string
--- @params string the string
--- @return pl.List
function stringx.lines (s) end

--- iniital word letters uppercase (‘title case’). Here ‘words’ mean chunks of non-space characters.
--- @params string the string
--- @return string a string with each word’s first letter uppercase
function stringx.title (s) end

--- Return a shortened version of a string. Fits string within w characters. Removed characters are marked with ellipsis.
--- @param s string the string
--- @param w number the maxinum size allowed
--- @param tail boolean true if we want to show the end of the string (head otherwise)
--- @return string
function stringx.shorten (s, w, tail) end

--- Quote the given string and preserve any control or escape characters, such that reloading the string in Lua returns the same result.
--- @param s string The string to be quoted.
--- @return string
function stringx.quote_string (s) end


return stringx
