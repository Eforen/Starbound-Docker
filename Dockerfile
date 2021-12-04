FROM steamcmd/steamcmd:latest

LABEL maintainer="git@arielkauai.com"

ENV MODS=""
ENV USERNAME=""
ENV PASSWRD=""
ENV PATH_STEAM_USER="/var/opt/steam_user"
ENV PATH_STEAM_PASS="/var/opt/steam_pass"
ENV PATH_STEAM_TOKEN="/var/opt/steam_token"
ENV STARBOUND_DATAFOLDER="/opt/starbound"

RUN touch /var/opt/steam_user; touch /var/opt/steam_pass; mkdir /opt/starbound

ADD /scripts/ /opt/scripts/
RUN chmod -R 775 /opt/scripts/

ENTRYPOINT ["/opt/scripts/start.sh"]
