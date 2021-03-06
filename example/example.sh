# Personal Info
PHONE_NUMBER="575.555.1212"
URL="example.com"
EMAIL="devguy@example.com"
REPOS="github.com/example"
ADDRESS1="123 Main St."
ADDRESS2="Anywhere, NY 33156"
SUBTITLE1="Software Engineer"
SUBTITLE2="Full-Stack Web Development, Application, Architecture"

# Local Build Config - provide absolute paths to override DEFAULT_FILES
PERSONAL_INFO_TEMPLATES=    # define blocks for .org, .html, etc...
HTML_BASE_TEMPLATE=         # pandoc HTML5 template
ODT_BASE_TEMPLATE=          # pandoc ODT template
ODT_REFERENCE=              # pandoct ODT reference file (for styles)
CSS_LOCAL=                  # local css stylesheet will be uploaded on publish

# Remote Sync Config - no SSH key? provide password or .pem file path
CSS_REMOTE="http://example.com/static/resume/resume.css"
WEBSERVER="devguy@example.com:webapps/staticapp/resume"
CRED_PEM=
CRED_PASS=
