data<-data.frame(
  Name = c("Keerthi","Supriya","Deepika","Shruthi"),
  Age=c(23,34,29,40),
  Score=c(85,90,78,88)
)
print(data)
subset_data<-subset(data,Age>30)
print(subset_data)

