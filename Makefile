.PHONY: build
build: 
	docker build --platform linux/x86_64 --tag dsci310-notes .

.PHONY: run
run:
	docker run \
	-it \
	--rm \
	-e PASSWORD="apassword" \
	-p 8787:8787 \
	-v /$(pwd)://home//rstudio \
	dsci310-notes


#fake code for reference
#clean: 
#	rm -rf data/processed
#	rm -rf results
#	rm -rf NBA_All-Star_Report.html