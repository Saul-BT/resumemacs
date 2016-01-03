# resumemacs

Yet another CV maker.

DRY résumé builder for `emacs`. Write your résumé in `org-mode` then create versions in PDF and HTML. Tweak and massage locally, then upload to your webserver to publish!

Built using `shkeleton`, my shell CLI wireframe: https://github.com/joseph8th/shkeleton

### PDF
![PDF](http://joseph8th.com/static/images/resumemacs-pdf.png)

### HTML
![HTML](http://joseph8th.com/static/images/resumemacs-html.png)

### ODT
![ODT](http://joseph8th.com/static/images/resumemacs-odt.png)

## Install

```bash
git clone git@github.com:joseph8th/resumemacs.git
```

## Usage

```bash
usage: resumemacs [--help ] [--version ] [--only TYPE] [--publish ] [--config CFGFILE] [--dest DEST] ORGFILE

OPTIONS
       -h --help
              print help message

       -v --version
              print version information

       -o --only TYPE
              only convert ORGFILE to TYPE in [pdf, html, odt]

       -p --publish
              publish to webserver specified in config

       -c --config CFGFILE
              use external CFGFILE instead of config in resumemacs.sh

       -d --dest DEST
              output directory DEST (default: dirname ORGFILE)
```

## Quickstart

The easiest way to use `resumemacs` is to rely on some defaults: it expects the files in your CV project directory to be named after that directory. So the `example` directory contains an `example.org` file and an `example.sh` file. (You can work around the defaults with command line options.)

1. After installing, copy the `example` to `resume` and rename `example.org` to `resume.org`, and `example.sh` to `resume.sh`.

2. Then open `resume/resume.org` in `emacs` and write the body of your CV.

3. Next open `resume/resume.sh` and edit the personal info, and the remote settings for your webserver.

Then just run the script like this:

```bash
# Working locally ...
./resumemacs /path/to/resume.org -d output

# Build and upload ...
./resumemacs /path/to/resume.org -d output -p

# Build only PDF and HTML and upload ...
./resumemacs /path/to/resume.org -d output -o \"pdf html\" -p
```

Open `output/resume.html` in your browser to work on the style, and view `output/resume.pdf` in your PDF viewer.

## Advanced Usage

* *CFGFILE*: By default `resumemacs` looks for the config file in `dirname/dirname.sh` but you can keep those anywhere, and override the default by passing the `--config CFGFILE` option.

* *PERSONAL_INFO_TEMPLATES*: The personal info headers for LaTEX and HTML are generated using the info in your config file, joined by default with the `etc/personal_info_templates.sh` file. You can change either heading structure by editing this file. You can have multiple heading templates by changing the `PERSONAL_INFO_TEMPLATES` path in your config file, which will override the default setting.

* *HTML_BASE_TEMPLATE*: The base `pandoc` HTML template is in `etc/default.html5`. Similarly you can either modify it in place, or specify a different template using the `HTML_BASE_TEMPLATE` setting in your config file.

* *CSS_LOCAL*: Similarly, you can use different stylesheets by specifying a path in the `CSS_LOCAL` setting in your config file.

## Acknowledgments

* Pandoc templates based on [Pandoc default templates](https://github.com/jgm/pandoc-templates).
* Org-mode to LaTEX template based on [this org-mode résumé template](https://github.com/punchagan/resume) by Puneeth Chagati.
