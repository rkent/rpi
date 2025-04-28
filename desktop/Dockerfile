ARG BASE_VARIANT="rolling-ros-core"
FROM ros:${BASE_VARIANT}

ARG USERNAME=kent
ARG USER_UID=1000
ARG USER_GID=${USER_UID}

RUN apt update && apt install -y less git nano sudo
RUN apt upgrade -y

RUN apt install -y ros-rolling-desktop

RUN userdel -r ubuntu
RUN groupadd --gid ${USER_GID} $USERNAME && useradd -s /bin/bash --uid ${USER_UID} --gid ${USER_GID} -m ${USERNAME}
RUN usermod -aG sudo ${USERNAME}
RUN passwd -d ${USERNAME}

USER ${USERNAME}
WORKDIR /home/${USERNAME}
COPY bashrc /home/${USERNAME}/.bashrc

