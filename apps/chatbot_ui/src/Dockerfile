# syntax=docker/dockerfile:1
FROM python:3.12-slim-bookworm

WORKDIR /app

COPY apps/chatbot_ui/requirements.txt ./requirements.txt
RUN --mount=type=cache,target=/root/.cache/pip \
    python -m pip install -r requirements.txt

COPY apps/chatbot_ui/src ./apps/chatbot_ui/src

ENV PYTHONOPTIMIZE=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONPATH=/app/apps/chatbot_ui/src

RUN addgroup --system app && \
    adduser --system --ingroup app --home /home/app app && \
    mkdir -p /home/app/.streamlit/data /home/app/.streamlit/cache && \
    chown -R app:app /app /home/app

ENV HOME=/home/app

USER app

EXPOSE 8501

WORKDIR /app/apps/chatbot_ui/src

CMD ["streamlit", "run", "chatbot_ui/app.py", "--server.address=0.0.0.0"]
