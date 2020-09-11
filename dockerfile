FROM python:3.6
MAINTAINER MFAKRAM

# Creating Application Source Code Directory
RUN mkdir -p ~/mfakram/projectroot

# Setting Home Directory for containers
WORKDIR ~/mfakram/projectroot

# Copying src code to Container
COPY Release-Engineer-Challenge/release_engineer_code.py /k8s_python_sample_code/src/app

# Exposing Ports
EXPOSE 5035

# Setting Persistent data
VOLUME ["/makram_app"]

# Running Python Application
CMD ["python", "release_engineer_code.py"]
