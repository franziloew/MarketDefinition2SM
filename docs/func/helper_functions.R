substrRight <- function(x, n){
  substr(x, nchar(x)-n+1, nchar(x))
}

calculate_week = function(week, year) {
  date <- lubridate::ymd(paste(year, 1, 1, sep="-"))
  lubridate::week(date) = week
  return(date)
}

calculate_biweek = function(bi_week, year) {
  date <- lubridate::ymd(paste(year, 1, 1, sep="-"))
  week <- bi_week + (bi_week-1)
  lubridate::week(date) = week
  return(date)
}
