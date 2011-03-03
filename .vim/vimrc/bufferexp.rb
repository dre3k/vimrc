include VIM

def bufferlist_clear
  command("redir => ls_output")
  command("silent ls")
  command("redir END")
  list = evaluate('ls_output')
  buffers = list.each_line.to_a.map { |line| line.split }.delete_if(&:empty?)
  buffers.each do |buffer|
    command("bdelete #{buffer[0]}") unless buffer[1] == '%a'
  end
  command("syntax on")
end

command("
function! BufferListClear()
  ruby bufferlist_clear
endfunction")
