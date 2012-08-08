syntax keyword todowords TODO FIXME XXX PROBLEM ERROR WARNING ALERT

syntax match todoline /^\s*\-.*$/
syntax match doneline /^\s*+.*$/
syntax match commentline /^\s*\*.*$/

highlight link todowords Error 
highlight link todoline Todo 
highlight link doneline Type
highlight link commentline Special
