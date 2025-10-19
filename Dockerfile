FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy everything into the container
COPY . /app

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r railway_api/requirements.txt

# Expose port for Railway
ENV PORT=8000
EXPOSE $PORT

# Start FastAPI app
CMD ["uvicorn", "railway_api.main:app", "--host", "0.0.0.0", "--port", "8000"]
