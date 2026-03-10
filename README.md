# Personal LLM Gateway


## Run Locally

### 1. Clone the repository

```bash
git clone git@github.com:YuseiIto/hercules-llm-gateway.git
```


### 2. Prepare environment variables

```.env
OPENROUTER_API_KEY=****
HERCULES_OLLAMA_BASE_URL=****
HERCULES_OLLAMA_API_KEY=****
HERCULES_LM_STUDIO_API_KEY=****
HERCULES_LM_STUDIO_API_BASE=****
LITELLM_API_KEY=******

```


### 3. Run the server


```bash
uv run litellm --config config.yaml
```
