FROM qwedfrnhgef/codespaces:latest

RUN apt-get update && apt-get install -y gnupg ca-certificates curl \
 && curl -fsSL https://repos.azul.com/azul-repo.key | gpg --dearmor -o /usr/share/keyrings/azul.gpg \
 && echo "deb [signed-by=/usr/share/keyrings/azul.gpg] https://repos.azul.com/zulu/deb stable main" > /etc/apt/sources.list.d/zulu.list \
 && apt-get update && apt-get install -y zulu24-jdk

ENV JAVA_HOME=/usr/lib/jvm/zulu24
ENV PATH="$JAVA_HOME/bin:${PATH}"

COPY . /workspaces/
