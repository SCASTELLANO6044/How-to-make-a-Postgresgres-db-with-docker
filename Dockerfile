FROM postgres
ENV POSTGRES_USER yt-video
ENV POSTGRES_PASSWORD yt-video
ENV POSTGRES_DB yt-video
COPY database.sql /docker-entrypoint-initdb.d/
COPY csv/users.csv /home/csv/
COPY csv/posts.csv /home/csv/
COPY csv/comments.csv /home/csv/