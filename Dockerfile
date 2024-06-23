FROM intelanalytics/ipex-llm-inference-cpp-xpu:latest
ENV DEVICE "iGPU"
COPY ./run.sh .
RUN chmod +x ./run.sh
ENTRYPOINT ["./run.sh"]
CMD ["serve"]
