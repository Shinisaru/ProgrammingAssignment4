rm(list=ls())

library(dplyr)

DATASET_URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
DATASET_DIR <- "UCI\ HAR\ Dataset"

produce_data_set <- function() {
  get_aggregated_data() %>% write.table("aggregated_data.txt", row.name=FALSE)
}

get_aggregated_data <- function() {
  download_source_data_if_needed()
  merged_data = read_sets() %>% merge_sets()

  return(aggregate(
    merged_data[, 3:length(merged_data)], 
    list(Subject=merged_data$Subject, Activity=merged_data$Activity), 
    mean
  ))
}

download_source_data_if_needed <- function() {
  if (!file.exists("./dataset.zip")) {
    download.file(DATASET_URL, "dataset.zip", mode="w")
  }
  
  if (!dir.exists(DATASET_DIR)) {
    unzip("./dataset.zip", overwrite = TRUE)
  }
}

merge_sets <- function(sets) {
  return(rbind(sets$test, sets$train))
}

read_sets <- function() {
  get_set = partial_read_set(read_labels("features"), read_labels("activity_labels"))
  
  return(list(
    "test" = get_set("test"), 
    "train" = get_set("train")
  ))
}

partial_read_set <- function(features, activity_labels) {
  return(function(data_type) read_set(data_type, features, activity_labels))
}

read_set <- function(data_type, features, activity_labels) {
  raw = read_raw(data_type)
  data_set = cbind(
    raw$subj, 
    modify_y_set(raw$y, activity_labels), 
    modify_x_set(raw$x, features)
  )
  colnames(data_set) <- append(
    features[grep("-(mean|std)\\(\\)", features)], 
    c("Subject", "Activity"), 
    after = 0
  )
  return(data_set)
}

modify_x_set <- function(set, features) {
  return(set[grep("-(mean|std)\\(\\)", features)])
}

modify_y_set <- function(set, activity_labels) {
  return(activity_labels[set[, 1]])
}

read_raw <- function(data_type) {
  file_name <- partial_data_file_name(data_type)
  get_file <- function(name) read_data_table(file_name(name))
  
  return(list(
    "x" = get_file("X"), 
    "y" = get_file("Y"), 
    "subj" = get_file("subject")
  ))
}

partial_data_file_name <- function(data_type) {
  return(function(prefix) data_file_name(data_type, prefix))
}

data_file_name <- function(data_type, prefix) {
  return(paste(data_type, "/", prefix, "_", data_type, sep = ""))
}

read_data_table <- function(file_name) {
  return(read.table(paste(DATASET_DIR, "/", file_name, ".txt", sep = "")))
}

read_labels <- function(file_name) {
  return(read_data_table(file_name)[[2]] %>% as.vector())
}

produce_data_set()
