FROM python:3.8-slim-buster

ENV PYTHONPATH="/pythonpath"

COPY requirements.lock ./requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY check_pr_comment/*.py /pythonpath/check_pr_comment/

ENTRYPOINT ["action-entrypoint", "check_pr_comment.action.CheckPRCommentAction"]
