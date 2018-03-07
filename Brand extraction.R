autotest <- auto

autotest$brand <- sub(" .*", "", autotest$`car name`)

View(autotest)


brands <- autotest %>%
          group_by(brand) %>%
            count()

View(brands)
