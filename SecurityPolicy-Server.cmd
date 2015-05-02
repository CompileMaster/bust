: ipsec service must be started under windows server
netsh ipsec static set policy name=SecurityPolicy assign=n
netsh ipsec static delete policy name=SecurityPolicy
netsh ipsec static delete rule name=PermitRule policy=SecurityPolicy
netsh ipsec static delete filterlist name=PermitList
netsh ipsec static delete filteraction name=PermitAction
netsh ipsec static add policy name=SecurityPolicy
netsh ipsec static add filterlist name=PermitList
netsh ipsec static add filter description="http" filterlist=PermitList srcaddr=any srcport=0 dstaddr=me dstport=80 protocol=tcp mirrored=yes
netsh ipsec static add filter description="https" filterlist=PermitList srcaddr=any srcport=0 dstaddr=me dstport=443 protocol=tcp mirrored=yes
netsh ipsec static add filteraction name=PermitAction inpass=yes soft=yes action=negotiate
netsh ipsec static add rule name=PermitRule policy=SecurityPolicy filterlist=PermitList filteraction=PermitAction psk="U2FsdGVkX1+hRdnhQolFUZxHhthrZiZ2H1D6iXIBlg9dTaCUIj4RvVDEsMd9DXDRlE/+QPNIQx6O4IBKGdvA+UPETtCYwdycQy9chWTmdzJRPsD3Ej8A4icIqhNlMZygERC9DgPDCSNX9MoJXFBjqdI8E34Q054ClmHbG2Pt+Q=="
netsh ipsec static set policy name=SecurityPolicy assign=y

