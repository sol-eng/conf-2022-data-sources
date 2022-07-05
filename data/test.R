flights <- nycflights13::flights

system.time(
  print(all.equal(flights,
            readr::read_csv(file.path(here::here(), "data", "flights.csv")))))

system.time(
  print(all.equal(flights,
            readxl::read_excel(file.path(here::here(), "data", "flights-1in10.xlsx")))))

system.time(
  print(all.equal(flights,
            arrow::read_parquet(file.path(here::here(), "data", "flights.parquet")))))

