FROM brodriguesco/r421_rap:version1

RUN mkdir /home/graphs

COPY _targets.R /_targets.R

COPY functions.R /functions.R

CMD R -e "install.packages('chronicler');targets::tar_make()"
