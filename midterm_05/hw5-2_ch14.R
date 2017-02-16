heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)

heights_and_weights <- data.frame(heights, weights)


##用mutate



heights_and_weights %>%
  mutate(heights_in_meter = heights / 100,
         bmi = weights / heights_in_meter) %>%
  View()
