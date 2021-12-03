FROM steamcmd/steamcmd:latest

LABEL maintainer="git@arielkauai.com"

ENV MODS=""
ENV USERNAME=""
ENV PASSWRD=""
ENV STARBOUND_DATAFOLDER="/opt/starbound"

RUN touch /var/opt/steam_user; touch /var/opt/steam_pass; mkdir /opt/starbound

ADD /scripts/ /opt/scripts/
RUN chmod -R 770 /out/scripts/

ENTRYPOINT ["/opt/scripts/start.sh"]
