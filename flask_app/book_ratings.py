from flask.cli import FlaskGroup
from app import app

# Configures the Flask command line interface
cli = FlaskGroup(app)

# Python assigns __name__ to the string "__main__" whenever a script
# is executed
if __name__ == "__main__":
    # Initializes a CLI connection when the file is run as a script
    cli()
