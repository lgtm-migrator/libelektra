# use scripts/dev/fix-spelling to apply these corrections

# =================
# = General Terms =
# =================

s/\<oc(c)?ur(r)?ed\>/occurred/g
s/\<([Bb])uil([dt])-([Ii])n\>/\1uilt-in/g
s/([Rr])uning/\1unning/g
s/\<([Rr])essource(s)?/\1esource\2/g
s/\<([Aa])dditonal/\1dditional/g
s/SYNOPSES/SYNOPSIS/g

# ==============================
# = British → American English =
# ==============================

s/([Cc])ategorised/\1ategorized/g
s/([Bb])ehaviour/\1ehavior/g
s/([Ff])(l?)avour/\1\2avor/g
s/([Gg])eneralise(s)?/\1eneralize\2/g
s/([Oo])rganisation/\1rganization/g
s/([Rr])ealise/\1ealize/g
s/([Rr])ecognise/\1ecognize/g
s/([Ss])erialise/\1erialize/g
s/([Ss])ummarise/\1ummarize/g
s/([Ss])ynchronisation/\1ynchronization/g
s/([Ss])ynchronised/\1ynchronized/g
s/\<([Uu]tili)s/\1z/g
s/\<([Pp])rogramm(e)?(s)?\>/\1rogram\3/g

# ==========
# = Brands =
# ==========

s/[eE]lectra/Elektra/g
s/[eE]lektra [iI]nitiative/Elektra Initiative/g
s/[eE]lektra [pP]roject/Elektra Initiative/g
s/\<[CcFf]engine/CFEngine/g

# Only fix spelling of GitHub outside of URLs:
s/([^.`\/-])[Gg]it[hH]ub([^.][^\w])/\1GitHub\2/g

s/\<[Ll]ibre[ ]?[Oo]ffice/LibreOffice/g
s/([^./[-])\<mark[Dd]own\>/\1Markdown/g
s/\<([Mm]ac )?OS X\>/macOS/g

s/\<unix|UNIX/Unix/g
s/\<XCode\>/Xcode/g

# ===================
# = Technical Terms =
# ===================
s/\<([Mm])eta[- ][Kk]ey\>/\1etakey/g
s/\<([Mm])eta[- ][Nn]ame\>/\1etaname/g
s/\<([Mm])eta[- ][Vv]alue\>/\1etavalue/g
s/\<([Mm])eta[- ][Dd]ata\>/\1etadata/g

s/([Mm])anpage/\1an page/g
s/MANPAGE/MAN_PAGE/g

s/\<([Nn])ame [Ss]pace\>/\1amespace/g
s/\<([Pp])lug-[Ii]n(s)?\>/\1lugin\2/g

s/\<([Cc])hange[- ][Ss]et\>/\1hangeset/g
s/\<([Cc])hange[- ]([Tt])racking\>/\1hange \2racking/g

# key-value pair
s:\<key/value:key-value:g
s:\<Key/value:Key-value:g

s/([Kk])ey[ -](value[ -])?storage/\1ey-value storage/g

s/[^#"]\<data-?type/data type/g

s/([^\./`-])J[sS][oO][nN]/\1JSON/
s/([^\./`-])j[sS][oO][nN]/\1json/

s/\<([Mm])etaspecification/\1eta-specification/g
s/\<([Mm])etamodel/\1eta-model/g
s/\<([Mm])etalanguage/\1eta-language/g

s/\<([Rr])ound ?[Tt]rip/\1ound-trip/g
s/\<(compile|deployment|mount|startup) ?time/\1-time/g
s/\<(run) time/\1-time/g

s/\<([Tt])ime[- ][Ss]tamp/\1imestamp/g
s/\<([Ss])ub[- ][Pp]roject/\1ubproject/g

s/\<C-(array|code|name|string)/C \1/g
s/\<[Cc][- ]([Aa]rray|[Cc]ode|[Nn]ame|[Ss]tring)/C \1/g
s/\<([Ww])orstcase/\1orst-case/g

s/\<([Cc])olon[- ]?[Ss]eparated/\1olon-separated/g

s/([Dd])(ocu)(\W)/\1\2mentation\3/g
s/API-[dD]ocumentation/API documentation/g

# get- and setmethods -> getter and setter methods
s/\<([Hh])ard-?[Cc]od/\1ard cod/g
s/\<([Ss])traight[- ][Ff]orward/\1traightforward/g
s/\<(back|front)[- ]end/\1end/g
s/\<([Bb]ack|[Ff]ront)[- ][Ee]nd/\1end/g
s/\<[^-]symlink/symbolic link/g
s/\<([Mm])iddle[- ][Ww]are/\1iddleware/g

# plural
s/\<([Ff])iles?([- ]?[Ss])ystem(s)?\>/\1ile\2ystem\3/g
s/\<([Tt])ypes?([- ]?[Ss])ystem(s)?\>/\1ype\2ystem\3/g
s/\<([Tt])ypes?([- ]?[Cc])hecker(s)?\>/\1ype\2hecker\3/g

s/\<([Tt])ypecheck((s|ing)?)\>/\1ype check\2/g
s/\<([Ii])nformations\>/\1nformation/g

# hyphens
s/\<([Ff])ull[- ]?[Bb]lown\>/\1ull-blown/g
s/\<([Ww])ell[- ]?[Dd]efined\>/\1ell-defined/g
s/\<([Ss])o[- ]?[Cc]alled\>/\1o-called/g
s/\<([Ee])rror[- ]?[Pp]rone\>/\1rror-prone/g
s/\<([Ee])rror[- ]?[Rr]elated\>/\1rror-related/g
s/\<([Ee])xception[- ]?[Rr]elated\>/\1xception-related/g
s/\<([Ff])ile[- ]?[Bb]ased\>/\1ile-based/g
s/\<([Bb])ottom[- ]?[Uu]p\>/\1ottom-up/g
s/\<([Hh])uman[- ]?[Rr]eadable\>/\1uman-readable/g
s/\<([Uu])ser[- ]?[Ff]riendly\>/\1ser-friendly/g
s/\<([Tt])wo[- ]?[Ww]ay\>/\1wo-way/g
s/\<([Tt])hree[- ]?[Ww]ay\>/\1hree-way/g
s/\<([Uu])p[- ]?[Tt]o[- ]?[Dd]ate\>/\1p-to-date/g
s/\<([Aa])s[- ]?[Ww]ell\>/\1s well/g

# apostrophes
s/\<([Dd])ont\>/\1on't/g
s/\<([Dd])oesnt\>/\1oesn't/g
s/\<([Cc])ant\>/\1an't/g
s/\<([Ww])ont\>/\1on't/g
