function fish_prompt
  set -l s $status
  set -l promptcolor '005F87'
  if [ $s -ne 0 ]
    set promptcolor 'ff5722'
  end
  set_color --background $promptcolor e4e4e4
  echo -n ''
  set -l jobc (jobs | wc -l)
  if [ $jobc -gt 0 ]
    set -l symbol '\u'(math $jobc + 2459)
    if [ $jobc -gt 10 ]
      set symbol '\u2469'
    end
    echo -n ' '
    set_color --bold
    printf $symbol
    echo -n ' '
  end
  set_color --background normal $promptcolor
  echo -n ' '
  set_color normal
end
