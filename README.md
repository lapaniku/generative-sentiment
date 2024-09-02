# generative-sentiment

The project aims to create a dataset of generated customer tickets with corresponding sentiment defined by the following list
‘Strong Negative’, ‘Mild Negative’, ‘Neutral’, ‘Mild Positive’, ‘Strong Positive’.

## Repository Structure

```plaintext
/stanford_alpaca
│
├── .gitignore              # Specifies files and directories that should be ignored by Git
├── Dockerfile              # Dockerfile for building a Docker image to run the data generation notebook
├── README.md               # This README file providing an overview and instructions
├── data-generation.ipynb   # Jupyter notebook for generating data for training the model
├── docker-compose.yml      # Docker Compose file for setting up and Jupyter Lab
├── evaluation.ipynb        # Jupyter notebook for evaluating the trained models
└── train.ipynb             # Jupyter notebook for training the sentiment classification model
```

## Data generation

Due to several considerations like the following:
- it is supposed to be a long task so I need to keep track of checkpoints and iterate quickly
- I need to share a sensitive data like API Key so I would prefer running something locally if it's possible

To start Jupyter Lab just run:
```shell
docker compose build
docker compose up
```
and open http://127.0.0.1:8888/lab. The `/work` will containt all project files. In this case `data-generation.ipynb` should be opened and executed.
To do it without interuptions the `OPENAI_API_KEY` environment variable is expected to be set or specified in `.env` file.

## Training and evaluation

