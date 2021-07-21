from ros:melodic-ros-base-bionic

ENV WORKSPACE_DIR=/root/catkin_ws


COPY entrypoint.sh /root/

RUN mkdir -p /root/catkin_ws/src

WORKDIR ${WORKSPACE_DIR}
RUN apt update && apt install -y python-catkin-tools
RUN catkin init && catkin config --merge-devel
RUN catkin build

ENTRYPOINT ["/root/entrypoint.sh"]
