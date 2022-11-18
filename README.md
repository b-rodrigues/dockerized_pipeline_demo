# dockerized_pipeline_demo

## How to run this pipeline

- Clone the repository:

```
git clone git@github.com:b-rodrigues/dockerized_pipeline_demo.git
```

- Build the image (run this command in the same folder where you cloned the repo):

```
docker build -t pipe_demo .
```

- You can now run the pipeline with the following command (change `/absolute/path/` to the path
on your machine)

```
docker run --rm --name demo_container -v /absolute/path/dockerized_pipeline_demo/fig/:/home/graphs:rw pipe_demo
```

If everything went well, you should see three plots inside the `fig/` folder.

## Requirements

You need to have Docker installed.

## Github Actions

Each time a change gets pushed to this repo, a github actions triggers and plots get saved as an 
artifact.
