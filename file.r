# File to store student data
filename <- "student_data.txt"

# Step 1: Get input from user
name <- readline(prompt = "Enter student name: ")
roll_number <- as.integer(readline(prompt = "Enter student roll number: "))
marks <- as.numeric(readline(prompt = "Enter student marks: "))

# Check for valid inputs
if (is.na(roll_number) || is.na(marks)) {
  cat("Invalid input. Exiting...\n")
  quit(status = 1)
}

# Step 2: Write data to file
file_conn <- file(filename, open = "w")
writeLines(paste(name, roll_number, sprintf("%.2f", marks)), file_conn)
close(file_conn)
cat("Student data written to", filename, "\n")

# Step 3: Read data from file
file_conn <- file(filename, open = "r")
line <- readLines(file_conn, n = 1)
close(file_conn)

# Step 4: Parse and display data
data_parts <- strsplit(line, " ")[[1]]

# Handle case where name may contain spaces (combine all but last two elements)
if (length(data_parts) > 3) {
  name_read <- paste(data_parts[1:(length(data_parts)-2)], collapse = " ")
} else {
  name_read <- data_parts[1]
}
roll_number_read <- as.integer(data_parts[length(data_parts)-1])
marks_read <- as.numeric(data_parts[length(data_parts)])

cat("\nStudent data read from file:\n")
cat("Name: ", name_read, "\n")
cat("Roll Number: ", roll_number_read, "\n")
cat("Marks: ", marks_read, "\n")

