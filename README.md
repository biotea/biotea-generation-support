# biotea-generation-support
Scripts to support the generation of Biotea

### Using the Dockerfile
```bash
git clone https://github.com/biotea/biotea-generation-support.git
cd biotea-generation-support
```
Open the 'biotea\_annotation.jar' file with a compression utility and edit the 'apikey.properties' file in order to include your Bioportal API key. Then create the 'input' and 'output' directories in the 'biotea-generation-support' path. Put the files you want to process in the 'biotea-generation-support/input' path.
```bash
sudo docker build -t username:biotea-generation .
```
After building the Docker image you can run a docker container. In order to generate the metadata files for the included input files you have to run:
```bash
sudo docker run -v /<ABSOLUTE PATH TO THE CLONED REPO>/biotea-generation-support/input:/biotea/input  -v /<ABSOLUTE PATH TO THE CLONED REPO>/biotea-generation-support/output:/biotea/output -it username:biotea-generate --input_dir /biotea/input/ --output_dir /biotea/output/ --metadata
```
In order to generate the annotation files for the included input files you have to run:
```bash
sudo docker run -v /<ABSOLUTE PATH TO THE CLONED REPO>/biotea-generation-support/input:/biotea/input  -v /<ABSOLUTE PATH TO THE CLONED REPO>/biotea-generation-support/output:/biotea/output -it username:biotea-generate --input_dir /biotea/input/ --output_dir /biotea/output/ --annotation
