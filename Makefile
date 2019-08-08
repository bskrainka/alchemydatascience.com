#	Build and upload Jekyll site

CD=cd
JEKYLL=./vendor/bundle/ruby/2.6.0/bin/jekyll
AWS_UPLOAD=/usr/local/bin/aws s3 sync

all: build # upload

serve:
	$(JEKYLL) server

build:
	$(JEKYLL) build

upload:
	$(CD) _site
	echo UPLOAD CURRENTLY DISABLED
	echo $(AWS_UPLOAD) . s3://alchemydatascience.com/
