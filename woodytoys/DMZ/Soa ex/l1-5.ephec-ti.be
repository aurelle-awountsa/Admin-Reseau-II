$TTL  604800
@     IN      SOA      ns.l1-5.ephec-ti.be  Groupe-5.l1-5.ephec-ti.be(
                                  1         ; Serial
                                  43200      ; Refresh
                                  7100      ; Retry
                                  2419200     ; Expire
                                  86400 )    ; Negative Cache TTL
;
l1-5.ephec-ti.be        IN     NS          ns.l1-5.ephec-ti.be.

@           IN     MX   10     mail.l1-5.ephec-ti.be
           
;
ns.l1-5.ephec-ti.be          IN      A          51.91.9.171

b2b         IN      A          51.91.9.171

www         IN      A          51.91.9.171

mail        IN      A          51.91.9.171
;
smtp        IN      CNAME      mail
imap        IN      CNAME      mail

