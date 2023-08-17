function dated2u --wraps='date -ujf "%Y-%m-%d %H:%M:%S" "2018-02-22 06:47:45" +%s' --description 'datetime to unixtime'
  date -ujf "%Y-%m-%d %H:%M:%S" "$argv" +%s
end
