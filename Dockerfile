# Official LiteLLM image provides the best environment for running the proxy
FROM ghcr.io/berriai/litellm:main-latest

# Set working directory
WORKDIR /app

# Copy your configuration file into the container
COPY config.yaml /app/config.yaml

# LiteLLM proxy runs on port 4000 by default
EXPOSE 4000

# Set environment variables if needed (can also be passed during 'docker run')
# ENV OPENROUTER_API_KEY=your_key_here
# ENV HERCULES_OLLAMA_BASE_URL=http://host.docker.internal:11434

# Start the LiteLLM proxy
ENTRYPOINT ["litellm"]
CMD ["--config", "/app/config.yaml", "--port", "4000"]
