yeargroup <- auto %>%
             group_b(model_year) %>%
             count()



ggplot(auto, aes(model_year)) + geom_bar()            
