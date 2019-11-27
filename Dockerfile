FROM ruby:2.6.4

RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       libpq-dev \
                       nodejs

# ��ƃf�B���N�g���̍쐬�A�ݒ�
RUN mkdir /app_name 
##��ƃf�B���N�g������APP_ROOT�Ɋ��蓖�ĂāA�ȉ�$APP_ROOT�ŎQ��
ENV APP_ROOT /app_name 
WORKDIR $APP_ROOT

# �z�X�g���i���[�J���j��Gemfile��ǉ�����i���[�J����Gemfile�́y�R�z�ō쐬�j
ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock

# Gemfile��bundle install
RUN bundle install
ADD . $APP_ROOT
