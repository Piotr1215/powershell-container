FROM mcr.microsoft.com/powershell

WORKDIR /root

ARG REPO=https://github.com/Piotr1215/powershell-scripts.git

ENV repository=$REPO

COPY Microsoft.PowerShell_profile.ps1 /root/.config/powershell/

RUN apt-get update && apt-get -y install --no-install-recommends \
    git \
    && git clone $repository \
    && mkdir -p /root/.config/powershell/ && . $PROFILE


ENTRYPOINT [ "pwsh" ]