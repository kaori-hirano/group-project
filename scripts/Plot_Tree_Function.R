# title: "Tree Method"
# author: "Kaori Hirano, Alicia Nguyen, James Xia"
# date: "07/27/23"

## Tree Plotting
# code is attributed to LACOL summer course
# instructors and ISLR authors
format_tree_labels <- function(labels, levels) {
  sapply(labels, \(x) if(grepl(":", x)) clean_col(x, levels) else clean_lt(x))
} 

# replace letter positions with actual level labels
clean_col <- function(x, levels){
  # split the label into label and levels
  x <- str_split_1(x, ":")
  # make new temp objects for the two components
  var <- x[1]
  levs_ids <- x[2]
  # get levels for correct variable
  levs <- levels[[var]]
  # get level ids for *relevant* levels
  levs_ids <- str_split_1(levs_ids, "") 
  levs_ids <- sapply(levs_ids, \(x) which(letters == x))
  # cut down levs to only the required levels
  levs <- levs[levs_ids]
  # paste everything together and return (implicitly)
  paste0(var, ": ", paste0(levs, collapse = ", "))
}

# space out labels that include only "<"
clean_lt <- function(x){
  # split on <, then recombine with spaces before and after <
  x <- str_split_1(x, "<")
  paste0(x, collapse = " < ")
}

plot_tree <- function(model){
  require(ggdendro)
  # extract necessary information from tree object so that it is ggplotable
  tree_data <- dendro_data(model)
  # create a data frame with the split *values* which dendro_data() doesn't extract
  frame <- model$frame %>%
    rownames_to_column(var = "split") %>%
    mutate(splits = as.data.frame(splits)) %>% 
    unnest(cols = c(splits)) %>% 
    filter(var != "<leaf>") %>% 
    select(cutleft)
  
  # add the splits information in, which dendro_data() misses
  tree_data$labels <- tree_data$labels %>% 
    bind_cols(frame) %>% 
    mutate(label = paste0(as.character(label), cutleft),
           label = format_tree_labels(label, attr(model, "xlevels")))
  
  ggplot(segment(tree_data)) +
    geom_segment(aes(x = x, y = y, xend = xend, yend = yend)) +
    geom_text(data = label(tree_data), 
              aes(x = x, y = y, label = label), vjust = -0.5, size = 3) +
    geom_text(data = leaf_label(tree_data), 
              aes(x = x, y = y, label = label), vjust = 1.5, size = 2) +
    theme_dendro()
}