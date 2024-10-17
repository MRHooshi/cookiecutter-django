import os
from celery import Celery

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "toman_task.settings")

BROKER_URL = os.environ.get("BROKER_URL", "redis://localhost:6379/0")
app = Celery("wallet", backend=BROKER_URL, broker=BROKER_URL)
app.config_from_object("django.conf:settings", namespace="CELERY")
app.autodiscover_tasks()
