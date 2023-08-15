$TTL  604800
@     IN      SOA      ns.l1-5.ephec-ti.be.  Groupe-5.ephec-ti.be.(
                                 1          ; serial a incrementer a chaque fois qu'on fait une modification 
                                21600      ; refresh (6 hours)
                                3600       ; retry (1 hour)
                                604800     ; expire (1 week)
                                86400      ; minimum (1 day)
                              
					  )

;
@           IN     NS          ns.l1-5.ephec-ti.be.

            IN     MX     10   mail.l1-5.ephec-ti.be.

@           IN      A          51.91.9.171
ns          IN      A          51.91.9.171 

mail        IN      A          51.91.9.171

b2b         IN      A          51.91.9.171

www         IN      A          51.91.9.171

smtp        IN      CNAME      mail
imap        IN      CNAME      mail

