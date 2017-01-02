FROM registry.centos.org/sclo/python-27-centos7:latest

ENV APP_ROOT /opt/app-root/src/matterllo

RUN mkdir $APP_ROOT && \
    git clone https://github.com/Lujeni/matterllo.git $APP_ROOT && \
    cd $APP_ROOT 

USER root

# Install all required Python modules
RUN /opt/rh/python27/root/usr/bin/pip install --no-cache-dir -r $APP_ROOT/requirements_base.txt &&\
    chmod -R 777 $APP_ROOT

# Must set PYTHONPATH so 'import matterllo.utils' works
ENV PYTHONPATH $APP_ROOT

EXPOSE 8080

WORKDIR $APP_ROOT
ADD entrypoint.sh $APP_ROOT

ENTRYPOINT [ "bash", "entrypoint.sh" ]
