FROM sebvaucher/sgx-base:sgx_2.5

COPY . ./
RUN make SGX_DEBUG=0 SGX_PRERELEASE=1 SGX_MODE=HW

CMD ["./app"]