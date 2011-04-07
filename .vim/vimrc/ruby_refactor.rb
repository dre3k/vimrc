include VIM

def rr_curly_braces_toggle_do_end
  buf = Buffer.current
  win = Window.current
  pos1 = win.cursor.first
  regex10 = /^(.*?)\s*do\s*(\|.*\|)$/
  regex11 = /^(.*?)\s*do\s*$/
  regex3 = /^\s*end$/

  if (pos1 > 1) && ((buf[pos1 - 1][regex10] || buf[pos1 - 1][regex11]) && buf[pos1 + 1][regex3])
    pos1 = pos1 - 1
  elsif (pos1 > 2) && ((buf[pos1 - 2][regex10] || buf[pos1 - 2][regex11]) && buf[pos1][regex3])
    pos1 = pos1 - 2
  end

  pos3 = pos1 + 2
  line1 = buf[pos1]
  line3 = buf[pos3]

  if ((got_args = line1[regex10] or line1[regex11]) && line3[regex3])
    pos2 = pos1.succ
    line2 = buf[pos2]
    regex2 = /^\s*(.*?)\s*$/
    result = got_args ?
      line1.sub(regex10, "\\1 { \\2 ") + line2.sub(regex2, "\\1") + " }" :
      line1.sub(regex11, "\\1 { ") + line2.sub(regex2, "\\1") + " }"
    buf[pos1] = result
    buf.delete(pos3)
    buf.delete(pos2)
  else
    regex0 = /^(.*?)\s*{\s*(\|.*?\|)\s*(.*?)\s*}$/
    regex1 = /^(.*?)\s*{\s*(.*?)\s*}$/
    if line1[regex0]
      result = line1.sub(regex0, "\\1 do \\2\n  \\3\nend")
    elsif line1[regex1]
      result = line1.sub(regex1, "\\1 do\n  \\2\nend")
    else
      return
    end
    result = result.lines.map(&:chomp)
    3.times { |i| buf.append(pos1 + i, result[i]) }
    buf.delete(pos1)
  end

  win.cursor = [pos1, 0]
end

command("
function! RRCurlyBracesToggleDoEnd()
  ruby rr_curly_braces_toggle_do_end
endfunction")
