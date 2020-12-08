let s:expand_settings = {
\   "variables": {
\       'lang': "en",
\       'locale': "en-US",
\       'charset': 'UTF-8',
\       'indentation': "\t",
\       'newline': "\n",
\   },
\   "html": {
\       "void": [
\           'area', 'base', 'basefont', 'br', 'col', 'embed', 'hr', 'img',
\           'input', 'meta', 'param', 'source',
\           'track', 'wbr', 'link',
\       ],
\       "inline": [
\           'a', 'abbr', 'acronym',
\           'b', 'bdi', 'bdo', 'br', 'big', 'button',
\           'cite', 'code', 'canvas',
\           'data', 'dfn',
\           'em', 'embed',
\           'i', 'input', 'img', 'ins', 
\           'kbd', 'lablel',
\           'mark', 'map', 
\           'rb', 'rt', 'rtc', 'ruby',
\           's', 'samp', 'small', 'span', 'strong', 'sup',
\           'time', 'u', 'var', 'wbr'
\       ],
\       'default': {
\           'a': 'href="${0}"',
\           'abbr': 'title="${0}"',
\           'acronym': 'title="${0}"',
\           'base': 'href="${0}"',
\           'meta':'charset="UTF-8"',
\           'script':'type="text/javascript src="${0}"',
\           'img': 'src="${0}" alt=""',
\           'form':'action="${0}" method=""',
\           'input':'type="text${0}"',
\           'link':'rel="stylesheet" href="${0}"',
\           'label': 'for="${0}"',
\           'select': 'id="${0}" name="${0}"',
\       },
\       'snippets': { 
\           'html:5':"<!DOCTYPE html>\n"
\                   ."<html lang=${lang}>\n"
\                   ."<head>\n"
\                   ."\t<meta charset=${charset}>\n"
\                   ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\                   ."\t<title>Document</title>\n"
\                   ."</head>\n"
\                   ."<body>\n\t${0}\n</body>\n"
\                   ."</html>",
\           'a:blank': "a[href='http://${0}' target='_blank' rel='noopener noreferrer']",
\           'a:link': 'a[href="http://${0}"]',
\           'a:mail': 'a[href="mailto:${0}"]',
\           'a:tel': 'a[href="tel:+${0}"]',
\           'abbr': 'abbr[title]',
\           'acr': 'acronym[title]',
\           'acronym': 'acronym[title]',
\           'base': 'base[href]',
\           'bdo:r': 'bdo[dir="rtl"]',
\           'bdo:l': 'bdo[dir="ltr"]',
\           'btn': "button[type='${0}']",
\           'btn:d': 'button[disabled="disabled"]',
\           'button:d': 'button[disabled="disabled"]',
\           'btn:s': 'button[type="submit"]',
\           'button:s': 'button[type="submit"]',
\           'btn:r': 'button[type="reset"]',
\           'button:r': 'button[type="reset"]',
\           'link:css': 'link[rel="stylesheet" href="style${0}.css"]',
\           'link:print': 'link[rel="stylesheet" href="print${0}.css"]',
\           'link:favicon': 'link[rel="shortcut icon" type=image/x-icon href="favicon.ico${0}"]',
\           'link:mf': 'link[rel="manifest" type=image/x-icon href="favicon.ico${0}"]',
\           "link:touch": "link[rel=apple-touch-icon href='favicon.png${0}']",
\           'link:manifest': 'link[rel="manifest" type="image/x-icon" href="favicon.ico${0}"]',
\           "link:rss": "link[rel=alternate type=application/rss+xml title=RSS href='rss.xml${0}']",
\           "link:atom": "link[rel=alternate type=application/atom+xml title=Atom href='atom.xml${0}']",
\           "link:im": "link[rel=import href='component${0}.html']",
\           "link:import": "link[rel=import href='component${0}.html']",
\           "meta:utf": "meta[http-equiv=Content-Type content='text/html;charset=UTF-8']",
\           "meta:vp": "meta[name=viewport content='width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0']",
\           "meta:edge": "meta:compat[content='ie=edge${0}']",
\           "meta:redirect": "meta[http-equiv=refresh content='0; url=http://example.com${0}']",
\           'script:src': 'script[src]',
\           "meta:compat": "meta[http-equiv=X-UA-Compatible content='IE=7${0}']",
\           "meta:kw": "meta[name=keywords content]",
\           "meta:desc": "meta[name=description content]",
\           "img:s": "img[srcset src alt]",
\           "img:srcset": "img[srcset src alt]",
\           "img:z": "img[sizes srcset src alt]",
\           "src": "source",
\           "src:sc": "source[src type]",
\           "source:src": "source[src type]",
\           "src:s": "source[srcset]",
\           "source:srcset": "source[srcset]",
\           "img:sizes": "img[sizes srcset src alt]",
\           'form:get': 'form[action method="get"]',
\           'form:post': 'form[action method="post"]',
\           "label": "label[for]",
\           "input:h": "input[type=hidden name]",
\           "input:hidden": "input[type=hidden name]",
\           "input:t": "input[type=text name id]",
\           "input:text": "input[type=text name id]",
\           "input:search": "input[type=search name id]",
\           "input:email": "input[type=email name id]",
\           "input:url": "input[type=url name id]",
\           "input:p": "input[type=password name id]",
\           "input:password": "input[type=password name id]",
\           "input:datetime": "input[type=datetime name id]",
\           "input:datetime-local": "input[type=datetime-local name id]",
\           "input:month": "input[type=month name id]",
\           "input:week": "input[type=week name id]",
\           "input:time": "input[type=time name id]",
\           "input:tel": "input[type=tel name id]",
\           "input:number": "input[type=number name id]",
\           "input:color": "input[type=color name id]",
\           "input:c": "input[type=checkbox name id]",
\           "input:checkbox": "inp[type=checkbox]",
\           "input:r": "input[type=radio name id]",
\           "input:radio": "input[type=radio name id]",
\           "input:range": "input[type=range name id]",
\           "input:f": "input[type=file name id]",
\           "input:file": "input[type=file name id]",
\           "input:s": "input[type=submit value]",
\           "input:submit": "input[type=submit value]",
\           "input:i": "input[type=image src alt]",
\           "input:image": "input[type=image src alt]",
\           "input:b": "input[type=button value]",
\           "input:button": "input[type=button value]",
\           "input:reset": "input:button[type=reset]",
\           "isindex": "isindex/",
\           "select:d": "select[disabled=disable]",
\           "select:disabled": "select[disabled=disable]",
\           "opt": "option[value]",
\           "option": "option[value]",
\           "textarea": "textarea[name=${0} id cols rows]",
\           "marquee": "marquee[behavior direction]",
\           "menu:c": "menu[type=context]",
\           "menu:context": "menu[type=context]",
\           "menu:toolbar": "menu[type=toolbar]",
\           "menu:t": "menu[type=toolbar]",
\           "video": "video[src]",
\           "audio": "audio[src]",
\           "html:xml": "html[xmlns=http://www.w3.org/1999/xhtml]",
\           "keygen": "keygen/",
\           "command": "command/",
\           "fst:d" : "fieldset[disabled=disabled]",
\           "fset:d" : "fieldset[disabled=disabled]",
\           "fieldset:d" : "fieldset[disabled=disabled]",
\           "fieldset:disabled" : "fieldset[disabled=disabled]",
\           "ul": "ul>li",
\           "ol": "ol>li",
\           "dl": "dl>dt+dd",
\           "map": "map>area",
\           "table": "table>tr>td",
\           'colgroup': 'colgroup>col',
\           'tr': 'tr>td',
\           'select': 'select>option',
\           'optgroup': 'optgroup>option',
\           "bq": "blockquote",
\           "fig": "figure",
\           "figc": "figcaption",
\           "pic": "picture",
\           "ifr": "iframe",
\           "emb": "embed",
\           "obj": "object",
\           "cap": "caption",
\           "colg": "colgroup",
\           "fst": "fieldset",
\           "optg": "optgroup",
\           "tarea": "textarea",
\           "leg": "legend",
\           "sect": "section",
\           "art": "article",
\           "hdr": "header",
\           "ftr": "footer",
\           "adr": "address",
\           "dlg": "dialog",
\           "str": "strong",
\           "prog": "progress",
\           "mn": "main",
\           "tem": "template",
\           "fset": "fieldset",
\           "datag": "datagrid",
\           "datal": "datalist",
\           "kg": "keygen",
\           "out": "output",
\           "det": "details",
\           "sum": "summary",
\           "cmd": "command",
\       },
\   },
\   'css': {
\       'snippets': {
\           "@f": "@font-face {\n\tfont-family: ${0};\n\tsrc: url(${1});\n}",
\           "@ff": "@font-face {\n\tfont-family: '${1:FontName}';\n\tsrc: url('${2:FileName}.eot');\n\tsrc: url('${2:FileName}.eot?#iefix') format('embedded-opentype'),\n\t\t url('${2:FileName}.woff') format('woff'),\n\t\t url('${2:FileName}.ttf') format('truetype'),\n\t\t url('${2:FileName}.svg#${1:FontName}') format('svg');\n\tfont-style: ${3:normal};\n\tfont-weight: ${4:normal};\n}",
\           "@i": "@import url(${0})",
\           "@import": "@import url(${0})",
\           "@kf": "@keyframes ${1:identifier} {\n\t${2}\n}",
\           "@media": "@media screen {\n\t${0}\n}",
\           "@m": "@media screen {\n\t${0}\n}",
\           "ac": "align-content: ${0}",
\           "ai": "align-items: ${0}",
\           "anim": "animation:${1:name} ${2:duration} ${3:timing-function} ${4:delay} ${5:iteration-count} ${6:direction} ${7:fill-mode}",
\           "animdel": "animation-delay:time",
\           "animdir": "animation-direction:normal",
\           "animdur": "animation-duration:0${0}s",
\           "animfm": "animation-fill-mode:both",
\           "animic": "animation-iteration-count:1",
\           "animn": "animation-name",
\           "animps": "animation-play-state:running|paused",
\           "animtf": "animation-timing-function:linear",
\           "cb":"cubic-bezier${0}(${1:0.1}, ${2:0.7}, ${3:1.0}, ${3:0.1})",
\           "ap": "appearance:none",
\           "as": "align-self: auto",
\           "b": "bottom",
\           "bd": "border: ${0}px ${2:solid} #efefef${3};",
\           "bdb": "border-bottom: ${1:1}px ${2:solid} #000${3}",
\           "bdbc": "border-bottom-color:${1:#000}",
\           "bdbi": "border-bottom-image:url(${0})",
\           "bdbk": "border-break:close",
\           "bdbli": "border-bottom-left-image:url()|continue",
\           "bdblrs": "border-bottom-left-radius",
\           "bdbri": "border-bottom-right-image:url()|continue",
\           "bdbrrs": "border-bottom-right-radius",
\           "bdbs": "border-bottom-style",
\           "bdbw": "border-bottom-width",
\           "bdc": "border-color:${1:#000}",
\           "bdci": "border-corner-image:url()|continue",
\           "bdcl": "border-collapse:collapse|separate",
\           "bdlen": "border-length",
\           "bdli": "border-left-image: url(${0})",
\           "bdls": "border-left-style",
\           "bdr": "border-right: ${1:1px} ${2:solid} ${3:#000}",
\           "bdrc": "border-right-color: ${1:#000}",
\           "bdri": "border-right-image: url(${0})",
\           "bdrs": "border-radius",
\           "br": "border-radius",
\           "bdrst": "border-right-style",
\           "bdrw": "border-right-width",
\           "bds": "border-style",
\           "bdsp": "border-spacing",
\           "bdt": "border-top:${1:1px} ${2:solid} ${3:#000}",
\           "bdtc": "border-top-color: ${1:#000}",
\           "bdti": "border-top-image: url(${0})",
\           "bdtli": "border-top-left-image:url()|continue",
\           "bdtlrs": "border-top-left-radius",
\           "bdtri": "border-top-right-image:url()|continue",
\           "bdtrrs": "border-top-right-radius",
\           "bdts": "border-top-style",
\           "bdtw": "border-top-width",
\           "bdw": "border-width",
\           "bfv": "backface-visibility:hidden|visible",
\           "bg": "background:${1:#000}",
\           "bga": "background-attachment:fixed|scroll",
\           "bgbk": "background-break:bounding-box|each-box|continuous",
\           "bgc": "background-color:#${1:fff}",
\           "bgcp": "background-clip:padding-box|border-box|content-box|no-clip",
\           "bgi": "background-image:url(${0})",
\           "bgo": "background-origin:padding-box|border-box|content-box",
\           "bgp": "background-position:${1:0} ${2:0}",
\           "bgpx": "background-position-x",
\           "bgpy": "background-position-y",
\           "bgr": "background-repeat:no-repeat|repeat-x|repeat-y|space|round",
\           "bgsz": "background-size:contain|cover",
\           "bxsh": "box-shadow: ${1:inset }${2:hoff} ${3:voff} ${4:blur} ${5:#000}",
\           "bxsz": "box-sizing:border-box|content-box|border-box",
\           "cm": "/**\n *\n * @file: ${0}\n * @author: ${1}\n * @update: ${2}\n * @note: ${3}\n * @doc: ${4}\n */",
\           "cnt": "content:normal|open-quote|no-open-quote|close-quote|no-close-quote|attr(${0})|counter(${0})|counters(${0})",
\           "c":"color: #000",
\           "coi": "counter-increment",
\           "colm": "columns",
\           "colmc": "column-count",
\           "colmf": "column-fill",
\           "colmg": "column-gap",
\           "colmr": "column-rule",
\           "colmrc": "column-rule-color",
\           "colmrs": "column-rule-style",
\           "colmrw": "column-rule-width",
\           "colms": "column-span",
\           "colmw": "column-width",
\           "cor": "counter-reset", 
\           "cp": "clip: rect(${1:top} ${2:right} ${3:bottom} ${4:left})",
\           "cps": "caption-side: top|bottom",
\           "cur": "cursor:hand|pointer|auto|default|crosshair|hand|help|move|text",
\           "d": "display:block|none|flex|inline-flex|inline|inline-block|grid|inline-grid|subgrid|list-item|run-in|compact|table|inline-table|table-caption|table-column|table-column-group|table-header-group|table-footer-group|table-row|table-row-group|table-cell|ruby|ruby-base|ruby-base-group|ruby-text|ruby-text-group",
\           "ec": "empty-cells:show|hide",
\           "f": "font: ${1:1em} ${2:sans-serif}",
\           "fd": "font-display:auto|block|swap|fallback|optional",
\           "fef": "font-effect:none|engrave|emboss|outline",
\           "fem": "font-emphasize",
\           "femp": "font-emphasize-position:before|after",
\           "fems": "font-emphasize-style:none|accent|dot|circle|disc",
\           "ff": "font-family:serif|sans-serif|cursive|fantasy|monospace",
\           "fft": "font-family: \"Times New Roman\", Times, Baskerville, Georgia, serif",
\           "ffa": "font-family: Arial, \"Helvetica Neue\", Helvetica, sans-serif",
\           "ffv": "font-family: Verdana, Geneva, sans-serif",
\           "fl": "float: left|right|none",
\           "fs": "font-style:italic|normal|oblique",
\           "fsm": "font-smoothing:antialiased|subpixel-antialiased|none",
\           "fst": "font-stretch:normal|ultra-condensed|extra-condensed|condensed|semi-condensed|semi-expanded|expanded|extra-expanded|ultra-expanded",
\           "fv": "font-variant:normal|small-caps",
\           "fvs": "font-variation-settings: normal|inherit|initial|unset",
\           "fw": "font-weight:normal|bold|bolder|lighter",
\           "fx": "flex",
\           "fxb": "flex-basis:fill|max-content|min-content|fit-content|content",
\           "fxd": "flex-direction:row|row-reverse|column|column-reverse",
\           "fxf": "flex-flow",
\           "fxg": "flex-grow",
\           "fxsh": "flex-shrink",
\           "fxw": "flex-wrap:nowrap|wrap|wrap-reverse",
\           "fsz": "font-size",
\           "fsza": "font-size-adjust",
\           "gtc": "grid-template-columns:repeat()|minmax()",
\           "gtr": "grid-template-rows:repeat()|minmax()",
\           "gta": "grid-template-areas",
\           "gt": "grid-template",
\           "gg": "grid-gap",
\           "gcg": "grid-column-gap",
\           "grg": "grid-row-gap",
\           "gac": "grid-auto-columns:auto|minmax()",
\           "gar": "grid-auto-rows:auto|minmax()",
\           "gaf": "grid-auto-flow:row|column|dense|inherit|initial|unset",
\           "gd": "grid",
\           "gc": "grid-column",
\           "gcs": "grid-column-start",
\           "gce": "grid-column-end",
\           "gr": "grid-row",
\           "grs": "grid-row-start",
\           "gre": "grid-row-end",
\           "ga": "grid-area",
\           "h": "height",
\           "jc": "justify-content:start|end|stretch|flex-start|flex-end|center|space-between|space-around|space-evenly",
\           "ji": "justify-items:start|end|center|stretch",
\           "js": "justify-self:start|end|center|stretch",
\           "l": "left",
\           "lg": "background-image: linear-gradient(${0})",
\           "lh": "line-height",
\           "lis": "list-style",
\           "lisi": "list-style-image",
\           "lisp": "list-style-position:inside|outside",
\           "list": "list-style-type:disc|circle|square|decimal|decimal-leading-zero|lower-roman|upper-roman",
\           "lts": "letter-spacing: normal",
\           "m": "margin",
\           "mah": "max-height",
\           "mar": "max-resolution",
\           "maw": "max-width",
\           "mb": "margin-bottom",
\           "mih": "min-height",
\           "mir": "min-resolution",
\           "miw": "min-width",
\           "ml": "margin-left",
\           "mr": "margin-right",
\           "mt": "margin-top",
\           "ol": "outline",
\           "olc": "outline-color:#000|invert",
\           "olo": "outline-offset",
\           "ols": "outline-style:none|dotted|dashed|solid|double|groove|ridge|inset|outset",
\           "olw": "outline-width:thin|medium|thick",
\           "op": "opacity",
\           "ord": "order",
\           "ori": "orientation:landscape|portrait",
\           "orp": "orphans",
\           "ov": "overflow:hidden|visible|hidden|scroll|auto",
\           "ovs": "overflow-style:scrollbar|auto|scrollbar|panner|move|marquee",
\           "ovx": "overflow-x:hidden|visible|hidden|scroll|auto",
\           "ovy": "overflow-y:hidden|visible|hidden|scroll|auto",
\           "p": "padding: ${0};",
\           "pb": "padding-bottom",
\           "pgba": "page-break-after:auto|always|left|right",
\           "pgbb": "page-break-before:auto|always|left|right",
\           "pgbi": "page-break-inside:auto|avoid",
\           "pl": "padding-left",
\           "pos": "position:relative|absolute|relative|fixed|static",
\           "pr": "padding-right",
\           "pt": "padding-top",
\           "q": "quotes",
\           "qen": "quotes:'\\201C' '\\201D' '\\2018' '\\2019'",
\           "qru": "quotes:'\\00AB' '\\00BB' '\\201E' '\\201C'",
\           "r": "right",
\           "rsz": "resize:none|both|horizontal|vertical",
\           "t": "top",
\           "ta": "text-align:left|center|right|justify",
\           "tal": "text-align-last:left|center|right",
\           "tbl": "table-layout:fixed",
\           "td": "text-decoration:none|underline|overline|line-through",
\           "te": "text-emphasis:none|accent|dot|circle|disc|before|after",
\           "th": "text-height:auto|font-size|text-size|max-size",
\           "ti": "text-indent",
\           "tj": "text-justify:auto|inter-word|inter-ideograph|inter-cluster|distribute|kashida|tibetan",
\           "to": "text-outline: ${1:0} ${2:0} ${3:#000}",
\           "tov": "text-overflow: ellipsis|clip",
\           "tr": "text-replace",
\           "trf": "transform:${1}|skewX(${1:angle})|skewY(${1:angle})|scale(${1:x}, ${2:y})|scaleX(${1:x})|scaleY(${1:y})|scaleZ(${1:z})|scale3d(${1:x}, ${2:y}, ${3:z})|rotate(${1:angle})|rotateX(${1:angle})|rotateY(${1:angle})|rotateZ(${1:angle})|translate(${1:x}, ${2:y})|translateX(${1:x})|translateY(${1:y})|translateZ(${1:z})|translate3d(${1:tx}, ${2:ty}, ${3:tz})",
\           "trfo": "transform-origin",
\           "trfs": "transform-style: preserve-3d",
\           "trs": "transition: ${1:prop} ${2:time}",
\           "trsde": "transition-delay: ${1:time}",
\           "trsdu": "transition-duration: ${1:time}",
\           "trsp": "transition-property: ${1:prop}",
\           "trstf": "transition-timing-function: ${1:fn}",
\           "tsh": "text-shadow: ${1:hoff} ${2:voff} ${3:blur} ${4:#000}",
\           "tt": "text-transform:uppercase|lowercase|capitalize|none",
\           "tw": "text-wrap:none|normal|unrestricted|suppress",
\           "us": "user-select: none",
\           "v": "visibility:hidden|visible|collapse",
\           "va": "vertical-align:top|super|text-top|middle|baseline|bottom|text-bottom|sub",
\           "w": "width",
\           "whs": "white-space:nowrap|pre|pre-wrap|pre-line|normal",
\           "whsc": "white-space-collapse:normal|keep-all|loose|break-strict|break-all",
\           "wid": "widows",
\           "wm": "writing-mode:lr-tb|lr-tb|lr-bt|rl-tb|rl-bt|tb-rl|tb-lr|bt-lr|bt-rl",
\           "wob": "word-break:normal|keep-all|break-all",
\           "wos": "word-spacing",
\           "wow": "word-wrap:none|unrestricted|suppress|break-word|normal",
\           "z": "z-index",
\           "zom": "zoom:1"
\
\       },
\   },
\   'htmldjango': {
\       'snippets': {
\           'autoescpae': "{% autoescape on %}\n\t${0}{% endautoescape %}",
\           'block': "{% block ${0} %}\n{% endblock %}",
\           'comment': '{% comment %}'."\n\t${0}\n{% endcomment %}",
\           'cycle': '{% cycle ${0} %}',
\           'loadstatic': '{% load static %}',
\           'iblock': "{% block ${0} %}{% endblock %}",
\           'extends': '{% extends "${0}" %}',
\           'for': '{% for ${0} in  %}'."\n{% endfor %}",
\           'filter': "{% filter ${0} %}\n{% endfilter %}",
\           'if': "{% if ${0} %}\n{% endif %}",
\           'elif': "{% if ${0} %}\n{% elif  %}\n{% else  %}\n{% endif  %}",
\           'ifelse': "{% if ${0} %}\n{% else %}\n{% endif %}",
\           'ifchanged': "{% ifchanged %} ${0} {% endifchanged %}",
\           'include': '{% include "${0}" %}',
\           'load': '{% load "${0}" %}',
\           'static': '{% static "${0}" %}',
\           'url': "{% url '${0}' %}",
\       },
\   },
\   'vim': {
\       'snippets': {
\           'echom': "echom \"$0\"",
\           'if': "if $0\nendif",
\           'if!ex': "if !exists('$0')\nendif",
\           'ifex': "if exists('$0')\nendif",
\           'ifem': "if empty($0)\nendif",
\           'if!em': "if !empty($0)\nendif",
\           'funs': "function! s:$0()\nendfun",
\           'fun': "function! $0()\nendfun",
\           'for': "for $0 in {object}\nendfor",
\           'while': "while $0 \nendwhile",
\           'sub': "substitute($0, {pat}, {sub}, '')",
\           'repeat': "repeat($0, {count})",
\           'searchpos': "searchpos($0, {flags})",
\           'matchstr': "matchstr($0, {pat})",
\           'index': "index($0, {expr}, {start}, {ignorecase})",
\       },
\   },
\}

function! load#expandsettings()
    return s:expand_settings
endf

function! load#html_inline()
    return s:expand_settings.html.inline + s:expand_settings.html.void
endf

function! load#snippets(ftname)
    let ft = a:ftname
    let uds = 'g:expand_'.ft.'_snippets'
    if exists('g:expand_'.ft.'_snippets')
        call extend(s:expand_settings[ft].snippets, {uds}, 'force') 
	endif
    return s:expand_settings[ft].snippets
endf

function! load#csspropnames()
   let cssvals = values(s:expand_settings.css.snippets) 
   let values = []
   for val in cssvals
       let get_val = split(val, ':')[0]
       if !empty(get_val)
           call add(values, get_val)
	    endif
   endfor
   return values
endf
