flights <- nycflights13::flights

readr::write_csv(flights, file.path(here::here(), "data", "flights.csv"))
openxlsx::write.xlsx(flights[sample.int(nrow(flights), size = nrow(flights)/10),],
                     file.path(here::here(), "data", "flights-1in10.xlsx"),
                     overwrite = TRUE)
arrow::write_parquet(flights, file.path(here::here(), "data", "flights.parquet"))



