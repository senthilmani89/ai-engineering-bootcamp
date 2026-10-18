# syntax=docker/dockerfile:1
FROM python:3.12-slim-bookworm

WORKDIR /app

COPY apps/api/requirements.txt ./requirements.txt
RUN --mount=type=cache,target=/root/.cache/pip \
    python -m pip install -r requirements.txt

COPY apps/api ./apps/api

ENV PYTHONOPTIMIZE=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONPATH=/app/apps/api/src

RUN addgroup --system app && \
    adduser --system --ingroup app app && \
    chown -R app:app /app

USER app

EXPOSE 8000

WORKDIR /app/apps/api/src

CMD ["uvicorn", "api.app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
