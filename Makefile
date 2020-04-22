.PHONY:

help:
	@cat Makefile

S3_INTEROS_PATH=s3://pages.interos.net/vmarni/tech
S3_PATH=s3://pages.notes.net/
LOCAL_PATH=./exports/
S3_EXCLUDE_REGEX_1=--exclude "*~"
S3_EXCLUDE_REGEX_2=--exclude "*\#"
S3_EXCLUDE_REGEX_3=--exclude "*.odt"

interos-sync-to-s3:
	aws-vault exec home -- aws s3 sync $(LOCAL_PATH) $(S3_INTEROS_PATH) $(S3_EXCLUDE_REGEX_1) $(S3_EXCLUDE_REGEX_2) $(S3_EXCLUDE_REGEX_3)

interos-clean-s3:
	aws-vault exec home -- aws s3 rm --recursive $(S3_INTEROS_PATH)

interos-clean-local:
	rm -r $(LOCAL_PATH)*

interos-clean-and-sync-s3: interos-clean-s3 interos-sync-to-s3

sync-to-s3:
	aws-vault exec home -- aws s3 sync $(LOCAL_PATH) $(S3_PATH) $(S3_EXCLUDE_REGEX_1) $(S3_EXECLUDE_REGEX_2)

clean-s3:
	aws-vault exec home -- aws s3 rm $(S3_PATH)

clean-local:
	rm -r $(LOCAL_PATH)*

clean-and-sync-s3: clean-s3 sync-to-s3

my-mac:
	~/notes/config/setup.sh solarized-dark

emacs-config:
	~/notes/config/emacs_config.sh solarized-dark
