function fish_mode_prompt
  set_color  --background e4e4e4 585858
  echo ' '
  switch $fish_bind_mode
    case default
      echo 'N'
    case insert
      echo 'I'
    case visual
      echo 'V'
  end
  echo -n ' '
end

