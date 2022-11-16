get_data <- function(){
    myPackage::unemp
}

make_plot <- function(data){
    ggplot(data) +
        geom_col(
            aes(
                y = active_population,
                x = year,
                fill = place_name
            )
        ) +
        theme(legend.position = "bottom",
              legend.title = element_blank()) +
        labs(title = paste0("Unemployement for ", paste(unique(data$place_name), collapse = ", ")))
}


save_plot <- function(save_path, plot){
    ggsave(save_path, plot)
    save_path
}
