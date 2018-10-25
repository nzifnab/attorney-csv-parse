This uses `ruby_postal` to parse the addresses (https://github.com/openvenues/ruby_postal)

which requires libpostal to be installed locally. Follow the instructions in that repo FIRST to install libpostal.

## TO RUN

    bundle
    CSV_FILE='/path/to/csv/file' bundle exec kiba lib/attorney_convert.etl

The resulting file will be put into `output/attorneys.csv` (it will overwrite the file there if it exists).
