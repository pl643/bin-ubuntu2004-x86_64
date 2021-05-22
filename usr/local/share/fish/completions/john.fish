set -l __fish_john_encodings ASCII RAW UTF-8 ISO-8859-1 Latin1 ANSI ISO-8859-2 ISO-8859-7 ISO-8859-15 KOI8-R CP437 CP720 CP737 CP850 CP852 CP858 CP866 CP868 CP1250 CP1251 CP1252 CP1253 CP1254 CP1255 CP1256

function __fish_john_rules --description "Print JohnTheRipper rules"
    john --list=rules
end

function __fish_john_formats --description "Print JohnTheRipper hash formats"
    john --list=format-details | cut -f1
end

complete -c john -l help -d "print usage summary"
complete -c john -l single -fa "(__fish_complete_list , __fish_john_rules)" -d "single crack mode"
complete -c john -l single-seed -rf -d "add static seed word(s) for all salts in single mode"
complete -c john -l single-wordlist -rF -d "short wordlist with static seed words/morphemes"
complete -c john -l single-user-seed -rF -d "wordlist with seeds per username"
complete -c john -l single-retest-guess -d "enable SingleRetestGuess"
complete -c john -l no-single-retest-guess -d "disable SingleRetestGuess"
complete -c john -l single-pair-max -rf -d "max. number of word pairs generated"
complete -c john -l no-single-pair -d "disable single word pair generation"
complete -c john -l wordlist -F -d "read wordlist from file"
complete -c john -l stdin -d "read wordlist from stdin"
complete -c john -l pipe -d "read wordlist from stdin but with bulk reads and allows rules"
complete -c john -l mem-file-size -rf -d "size threshold for wordlist preload"
complete -c john -l loopback -F -d "parse .pot file as a wordlist"
complete -c john -l dupe-suppression -d "suppress all dupes in wordlist"
complete -c john -l prince -F -d "PRINCE mode, read words from file"
complete -c john -l prince-loopback -F -d "PRINCE mode, fetch words from a .pot file"
complete -c john -l prince-elem-cnt-min -rf -d "minimum number of elements per chain"
complete -c john -l prince-elem-cnt-max -rf -d "maximum number of elements per chain"
complete -c john -l prince-skip -rf -d "initial skip"
complete -c john -l prince-limit -rf -d "limit number of candidates generated"
complete -c john -l prince-wl-dist-len -d "calculate length distribution from wordlist"
complete -c john -l prince-wl-max -rf -d "load only N words from input wordlist"
complete -c john -l prince-case-permute -d "permute case of first letter"
complete -c john -l prince-mmap -d "memory-map infile"
complete -c john -l prince-keyspace -d "just show total keyspace that would be produced"
complete -c john -l encoding -l input-encoding -fa "$__fish_john_encodings" -d "input encoding"
complete -c john -l rules -fa "(__fish_complete_list , __fish_john_rules)" -d "enable word mangling rules"
complete -c john -l rules-stack -fa "(__fish_complete_list , __fish_john_rules)" -d "stacked rules"
complete -c john -l rules-skip-nop -d "skip any NOP rules"
complete -c john -l incremental -fa "(john --list=inc-modes)" -d "incremental mode"
complete -c john -l incremental-charcount -rf -d "override CharCount for incremental mode"
complete -c john -l mask -f -d "mask mode"
complete -c john -l markov -f -d "Markov mode"
complete -c john -l mkv-stats -rF -d "markov stats file"
complete -c john -l external -fa "(john --list=ext-modes)" -d "external mode or word filter"
complete -c john -l subsets -f -d "subsets mode"
complete -c john -l subsets-required -rf -d "The N first characters of subsets charset are the required set"
complete -c john -l subsets-min-diff -rf -d "Minimum unique characters in subset"
complete -c john -l subsets-max-diff -rf -d "Maximum unique characters in subset"
complete -c john -l stdout -f -d "just output candidate passwords"
complete -c john -l restore -f -d "restore an interrupted session"
complete -c john -l session -rf -d "give a new session a name"
complete -c john -l status -f -d "print status of a session"
complete -c john -l make-charset -rF -d "make a charset file"
complete -c john -l reject-printable -d "reject printable binaries"
complete -c john -l show -d "show cracked passwords" -fa "
                        left\t'show uncracked passwords'
                        formats\t'show information about hashes in a file'
                        invalid\t'show lines that are not valid for selected format(s)'"
complete -c john -l test -f -d "run tests and benchmarks for TIME seconds each"
complete -c john -l stress-test -f -d "loop self tests forever"
complete -c john -l no-mask -d "used with --test for alternate benchmark w/o mask"
complete -c john -l skip-self-tests -d "skip self tests"
complete -c john -l test-full -rf -d "run more thorough self-tests"
complete -c john -l users -rf -d "load or don't load these users only"
complete -c john -l groups -rf -d "load users in or not in these groups only"
complete -c john -l shells -rf -d "load users with or without these shells only"
complete -c john -l salts -rf -d "load salts"
complete -c john -l costs -rf -d "load salts with or without cost value"
complete -c john -l save-memory -fa "1 2 3" -d "enable memory saving"
complete -c john -l node -rf -d "this node's number range out of TOTAL count"
complete -c john -l subformat -fa "md5crypt bcrypt sha256crypt sha512crypt" -d "pick a benchmark format for --format=crypt"
complete -c john -l mkpc -rf -d "request a lower max. keys per crypt"
complete -c john -l min-length -rf -d "request a minimum candidate length in bytes"
complete -c john -l max-length -rf -d "request a maximum candidate length in bytes"
complete -c john -l length -rf -d "shortcut for --min-len=N --max-len=N"
complete -c john -l field-separator-char -rf   -d "use custom character instead of ':' in input and pot files"
complete -c john -l config -rF -d "use custom file instead of john.conf or john.ini"
complete -c john -l log-stderr -d "log to screen instead of file"
complete -c john -l no-loader-dupecheck -d "disable the dupe checking when loading hashes"
complete -c john -l verbosity -fa "1 2 3 4 5 6" -d "change verbosity"
complete -c john -l no-log -d "disables creation and writing to john.log file"
complete -c john -l bare-always-valid -fa "Y N" -d "treat bare hashes as valid"
complete -c john -l progress-every -rf -d "emit a status line every N seconds"
complete -c john -l crack-status -d "emit a status line whenever a password is cracked"
complete -c john -l no-crack-status -d "don't emit a status line whenever a password is cracked"
complete -c john -l keep-guessing -d "try finding plaintext collisions"
complete -c john -l no-keep-guessing -d "don't try finding plaintext collisions"
complete -c john -l max-candidates -rf -d "gracefully exit after this many candidates tried"
complete -c john -l max-run-time -rf -d "gracefully exit after this many seconds"
complete -c john -l regen-lost-salts -rf -d "brute force unknown salts"
complete -c john -l fork -rf -d "fork N processes"
complete -c john -l pot -rF -d "pot file to use"
complete -c john -l list -fa "help subformats inc-modes rules externals ext-modes ext-hybrids ext-filters ext-filters-only build-info encodings formats format-details format-all-details format-methods format-tests sections parameters: list-data:" -d "list capabilities"
complete -c john -l internal-codepage -fa "$__fish_john_encodings" -d "codepage used in rules/masks"
complete -c john -l target-encoding -fa "$__fish_john_encodings" -d "output encoding"
complete -c john -l tune -fa "auto report N" -d "tuning options"
complete -c john -l force-tty -d "set up terminal for reading keystrokes"
complete -c john -l format -fa "(__fish_complete_list , __fish_john_formats)" -d "force hash type"
