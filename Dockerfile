# Use the official JMeter image as the base
FROM justb4/jmeter:5.5

# Set the working directory
WORKDIR /tests

# Copy your JMeter test plan into the container (optional, or mount in Docker Compose)
COPY toolbox_testPlan.jmx /tests/toolbox_testPlan.jmx

# Default command - will be overridden by Docker Compose with variables from the .env file
CMD ["-n", "-t", "/tests/toolbox_testPlan.jmx", "-l", "/tests/results/results.csv", "-Jjmeter.save.saveservice.output_format=csv"]
