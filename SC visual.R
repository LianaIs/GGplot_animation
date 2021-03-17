Panel_2 <- read_excel("D:/for new article/Panel 2.xlsx")
p <- ggplot(
  Panel_2, 
  aes(x = Scapital, y=Percapita...4, size = Percapita...4, colour = Country)
) +
  geom_point(show.legend = FALSE, alpha = 0.7) +
  scale_color_viridis_d() +
  scale_size(range = c(2, 12)) +
  scale_x_log10() +
  labs(x = "Social capital", y = "GDP per capita")+ theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), plot.background = element_rect(fill = "#A9A9A9"), panel.background = element_rect(fill = "#A9A9A9"), plot.title = element_text(color = "white"), plot.caption = element_text(color = "white"), axis.title.x = element_text(color="white"), axis.title.y = element_text(color="white")) + annotate(fontface = "italic", geom="text", x=29, y=75000, label="Positive interaction ", color="black", size = 11) + annotate(fontface = "italic", geom="text", x=29, y=60000, label="between social capital", color="black", size = 11) + annotate(fontface = "italic", geom="text", x=29, y=45000, label=" & GDP per capita", color="black", size = 11)
P

p <- p + transition_time(Year) +
  labs(title = "Year: {round(frame_time,0)}", caption = "Prepared by Liana Isayan") + shadow_wake(wake_length = 0.1, alpha = FALSE)

animate(p, height = 461, width = 644)
