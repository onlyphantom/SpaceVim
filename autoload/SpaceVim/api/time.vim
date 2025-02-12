"=============================================================================
" time.vim --- SpaceVim time API
" Copyright (c) 2016-2021 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================
let s:self = {}


""
" @section time, api-time
" @parentsection api
" `time` api provides basic functions to get time information.
"
" current_time()
"
"   get current time, the format is `%I:%M %p`
"
" current_date()
"
"   get current date, the format is `%a %b %d`


" see: man 3 strftime
function! s:self.current_time() abort
  return strftime('%I:%M %p')   
endfunction

function! s:self.current_date() abort
  return strftime('%a %b %d')
endfunction


function! SpaceVim#api#time#get() abort
    return deepcopy(s:self)
endfunction
