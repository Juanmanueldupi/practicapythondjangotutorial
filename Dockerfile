FROM python:3
WORKDIR /usr/src/app
COPY web .
RUN pip install --root-user-action=ignore -r requirements.txt
ADD ./polls.sh .
RUN chmod +x polls.sh
ENV ALLOWED_HOSTS=*
ENV HOST=mariadb
ENV USUARIO=django
ENV CONTRA=django
ENV BASE_DATOS=django
ENV DJANGO_SUPERUSER_PASSWORD=admin
ENV DJANGO_SUPERUSER_USERNAME=admin
ENV DJANGO_SUPERUSER_EMAIL=admin@example.org
CMD /usr/src/app/polls.sh
