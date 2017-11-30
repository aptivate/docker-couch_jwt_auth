FROM library/couchdb:1.7.1

COPY ./couch_jwt_auth.tar.gz /tmp/couch_jwt_auth.tar.gz

ENV PLUGIN_DIR /usr/local/lib/couchdb/plugins/couch_jwt_auth

WORKDIR $PLUGIN_DIR

RUN tar -C $PLUGIN_DIR --strip-components=1 -xvzf /tmp/couch_jwt_auth.tar.gz \
    && cp $PLUGIN_DIR/priv/default.d/jwt_auth.ini /usr/local/etc/couchdb/default.d/

