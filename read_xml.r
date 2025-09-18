# Install if not installed 
# install.packages("xml2") 
library(xml2) 
 
# Create sample XML content 
xml_content <- '<root> 
<flower> 
<Sepal.Length>5.1</Sepal.Length> 
<Sepal.Width>3.5</Sepal.Width> 
<Species>setosa</Species> 
</flower> 
<flower> 
<Sepal.Length>4.9</Sepal.Length> 
<Sepal.Width>3.0</Sepal.Width> 
<Species>setosa</Species> 
</flower> 
</root>' 
# Write XML file 
writeLines(xml_content, "sample.xml") 
 
# Read XML file 
xml_file <- read_xml("sample.xml") 
print(xml_file) 
# Extract data 
flowers <- xml_find_all(xml_file, "//flower") 
for (f in flowers) { 
cat("Sepal.Length:", xml_text(xml_find_first(f, "Sepal.Length")), 
" Sepal.Width:", xml_text(xml_find_first(f, "Sepal.Width")), 
" Species:", xml_text(xml_find_first(f, "Species")), "\n")
}
