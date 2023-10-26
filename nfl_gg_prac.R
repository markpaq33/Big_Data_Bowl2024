data.set <- read.table("players.csv", header=TRUE, sep=",")
#attach(data.set)

p <- ggplot(data.set,aes(x=position, y=weight)) + geom_violin(fill="red")
print(p)

position_counts <- table(data.set$position)
position_counts <- position_counts[match(pos, names(position_counts))]
pos <- c("C","CB","DB","DE","DT","FB","FS","G","ILB","LS","MLB","NT","OLB","QB",
         "RB","SS","T","TE","WR")

# Create the pie chart
pie <- ggplot(data.frame(pos, position_counts), aes(x = "", y = position_counts, fill = pos)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  theme_void()  # Remove unnecessary elements
  
  print(pie)
