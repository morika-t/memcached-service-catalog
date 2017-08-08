FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"aWQ6IGM0MDI3Yzg5LTkxYTQtNDNmZC04NWIxLWNhZTFiYjQxMTViMwpuYW1lOiBteS1tZW1jYWNo\
ZWQtYXBiCmltYWdlOiBkb2NrZXIuaW8vcGhyYWNlay9teS1tZW1jYWNoZWQtYXBiCmRlc2NyaXB0\
aW9uOiBteS1tZW1jYWNoZWQtYXBiIGRlc2NyaXB0aW9uCmJpbmRhYmxlOiBUcnVlCmFzeW5jOiBv\
cHRpb25hbAptZXRhZGF0YTogCiAgZG9jdW1lbnRhdGlvblVybDogaHR0cHM6Ly9naXRodWIuY29t\
L2NvbnRhaW5lci1pbWFnZXMvbWVtY2FjaGVkCiAgZGVwZW5kZW5jaWVzOiBbJ2RvY2tlci5pby9w\
aHJhY2VrL215LW1lbWNhY2hlZC1hcGI6bGF0ZXN0J10KICBkaXNwbGF5TmFtZTogTWVtY2FjaGVk\
IChBUEIpCiAgbG9uZ0Rlc2NyaXB0aW9uOiBBbiBhcGIgdGhhdCBkZXBsYXlzIG1lbWNhY2hlZApw\
bGFuczoKLSBkZXNjcmlwdGlvbjogTWVtY2FjaGVkIGFwYiBpbXBsZW1lbnRhdGlvbgogIGZyZWU6\
IHRydWUKICBuYW1lOiBkZWZhdWx0CiAgcGFyYW1ldGVyczogW10K"


COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chown -R apb /opt/{ansible,apb} \
    && chmod -R g=u /opt/{ansible,apb}
USER apb
