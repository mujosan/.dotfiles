function bind_global_alias
  switch (commandline -t)
  case "l"
    commandline -rt '| less'
  case "h"
    commandline -rt '| head'
  case "t"
    commandline -rt '| tail'
  case "g"
    commandline -rt '| grep'
  case "w"
    commandline -rt '| wc'
  case "cc"
    commandline -rt '| ccze -A'
  end
end

bind \cx bind_global_alias