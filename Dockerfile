FROM mcr.microsoft.com/powershell

WORKDIR /root

COPY provision.ps1 /usr/local/bin/
COPY Microsoft.PowerShell_profile.ps1 /root/.config/powershell/

ENV repository=https://github.com/Piotr1215/powershell-scripts.git

RUN apt-get update && apt-get -y install --no-install-recommends \
    git \
    && chmod +x /usr/local/bin/provision.ps1 \
    && ln -s /usr/local/bin/provision.ps1

ENTRYPOINT ["pwsh", "provision.ps1"]

CMD ["https://github.com/Piotr1215/powershell-scripts.git"]