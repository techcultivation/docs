# Postal Mail Services

Yeah, unfortunately  postal mail is still a thing. We and our projects
will receive some mail, and we need to send mail also.

So far we've mostly looked into receiving mail. See end of document for
the most interesting section, the legal requirements.

## Incoming Mail -> Scanning 

We want to offer projects (and team members?) the option to receive 
postal mail via CCT. In some sense that's a requirement since we will 
legally "run" the projects, so it makes sense to think about scalability 
of scanning dead tree mail.

### Manual

For smaller orgs, it makes sense to do it manually. From our research,
affordable dedicated duplex multipage-scanners are inferior to 
full-fledged office copiers with duplex-scanners. Used models of the 
latter are often quite easy to find for free or for cheap, but of course 
fill more space.

### Scanning Services

So far, we've only investigated for Germany, since our own
fiscal sponsor will be in Germany. Feel free to add info for
more countries.

#### Germany

TODO: ask for non-profit pricing

- [Deutsche Post ePostScan](https://www.epost.de/privatkunden/brief-und-fax/taegliche-post-online-empfangen.html)
    * not yet available for companies?
- [letterscan.de](http://www.letterscan.de/) München
    * no pricing online
- [dropscan.de](https://www.dropscan.de/preise-gewerblich) Berlin
    * probably the most widely used, hipster startup
    * 10€/month + 1.2€ per mail (up to 10 pages each)
    * 50€/month includes 50 mail (up to 10 pages each), additional mail 0.80€/mail
- [postzuemail.de/](http://www.postzuemail.de/) Berlin
    * looks cheap, shop system buggy
    * 46€/month up to 100 pages/month 

## Outgoing Mail

At least in Germany, you're supposed to send donation
receipts manually signed, by postal mail. There seems to be a 
possibility to individually get your local tax office Finanzamt 
to allow you to send them electronically or at least without 
signature.

We will talk to them immediately after our formal registration.

In any case, it is useful to also investigate services
that turn emails/PDFs into actual mail.

### Germany

We haven't really looked into it yet.

- [pixelletter.de](http://pixelletter.de/): 
    * no monthly fees, becomes cheaper the more letters you send
    * up to 10 letters per month: 0.84€ per letter + postage
    * up to 50: 0.74€ per letter + postage
- Deutsche Post also offers this

## Legal requirements for document storage

Please add sections for how this is handled in your country.

### Germany

German law requires companies to keep "originals" ([AO §147](https://www.gesetze-im-internet.de/ao_1977/__147.html) & [§257 HGB](https://dejure.org/gesetze/HGB/257.html). 
(does this apply to Vereine [associations] as well? likely). This
means that if the original receipt or business letter was on paper, 
you haver to preserve the paper (if on thermal paper, make a 
copy...). If the original receipt was digital, it's not necessary 
to print it.

This means that even if a team member sends us perfect scans of
receipts, we would still be forced to have her send us the original 
via postal mail. Luckily, there seems to be a way around that, if we
use a certified "revision safe" archiving system ("TR RESISCAN"). In our
case, since we will (have to) use DATEV as a proprietary certified 
accounting system anyway, we can purchase the additional feature 
that offers "revision safe" digital storage.

See [DATEV: Revisionssichere Archivierung mit DATEV DMS](https://www.datev.de/dnlexom/client/app/index.html#/document/1033898) and [DATEV: Ersetzendes Scannen](http://www.datev.de/ersetzendes-scannen). (German)

It would be interesting to compare the existing certified solutions,
and eventually partner with FSFE to get git-backed document repositories
certified... Of course there is no certified free software project,
we have not investigated further but it is probably quite expensive.

Also, just from briefly reading a couple of articles about TR RESISCAN,
it is still not absolutely clear if it's accepted. There seem to be some
circumstances where there are some remaining doubts or problems. We will
discuss this with a tax accountant and lawyer and update this section.
