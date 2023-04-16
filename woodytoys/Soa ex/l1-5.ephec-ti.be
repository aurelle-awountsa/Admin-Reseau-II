$TTL  604800
@     IN      SOA      ns.l1-5.ephec-ti.be  Groupe-5.ephec-ti.be(
                                  1         ; Serial
                                  43200      ; Refresh
                                  7100      ; Retry
                                  2419200     ; Expire
                                  86400 )    ; Negative Cache TTL

            IN     NS          ns.l1-5.ephec-ti.be.

            IN     MX   10     mail.l1-5.ephec-ti.be
           

ns          IN      A          51.38.188.116

            IN      MX   10    mail
;

b2b         IN      A          51.38.188.116

www         IN      A          51.38.188.116

;

mail        IN      A          51.38.188.116

smtp        IN      CNAME      mail
imap        IN      CNAME      mail

