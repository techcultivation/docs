# Naming and architecture hypothesis

The tecnological platform with a name that still has to be defined, is refered in these document with the name of CCTP (Center Cultivation Technolocy Platform)

The CCTP is composed by three host communicating each other: MONEYBOX, TAXBOX, PUBLICBOX 

every time is defined a component that needs a name, is put in uppercase.

## the MONEYBOX

Is the host fetching the bank account, has the most sensitive data of the setup. will be a Linux server running in some trustworthy place.

1. contains the bank credential, for each MONEYSOURCE configured
2. has a scheduled task that fetch the status of the MONEYSOURCE (bitpay, bank account)
3. has a list of Tax codes (0 to 9999 per year)
4. has access to the list of existing project and their DONATIONCODE (a project can define multiple sub-goal, called here milestone, and each of them has a DONATIONCODE)
5. has implemented scripts called MONEYFETCHER, one for every MONEYSOURCE. They are scripts implementing the API, they are considered blackbox.


### Moneybox workflows - CronJOB INCOMECHECK

1. A data pipeline will execute the MONEYCHECKER and get a sequence of information, normally, the last 50 or 100 based on bank API. Every of this take the name of DONATIONENTRY, and the data pipeline will operated over a collection of DONATIONENTRY
    ```
    An example of a DONATIONENTRY after the phase 1:

    {
      'value': 30,
      'currency': EUR,
      'reason': 'Donation to SecurePhone CCT-435555',
      'when': '13-05-2016',
      'from': 'Claudio Agosti'
    }
    ```
2. for every DONATIONENTRY the 'reason' will be analyzed looking for a valid DONATIONCODE (in this case, CCT-435555), if do not exist, the donation has to be considered INCOMPLETE. This task extend the object DONATIONENTRY accordingly to the match found.
    ```
    An example of a DONATIONENTRY after the phase 2, CCT-435555 is found to be associated to the project SecurePhone on a specific milestone.

    {
      'value': 30,
      'currency': EUR,
      'reason': 'Donation to SecurePhone CCT-435555',
      'when': '13-05-2016',
      'from': 'Claudio Agosti',
      'project': 'SecurePhone',
      'milestone': 'Vietnamise localisation Support',
      'tax_code': 9999
    }
    ```
3. The collection of DONATIONENTRY is stored in an incremental document diven database. If the entry already exists, is not saved again. (this can happen because the MONEYFETCHER may return also older transaction, but we need to save them only once and they can't be updated). This database take the name of INCREMENTALLOG, because everything get saved and nothing get deleted or updated (never).
4. send an email to the MONEYBOX adiminstrator saying the number of DONATIONENTRY exists.
5. all the new DONATIONENTRY are converted in a CSV format (or the format required for the tax computing program) and saved on a shared local folder.

### MoneyBox management service (MONEYMANAGEMENT)

This is a webserver exposing REST API usable to query the status of INCREMENTALLOG. is not exposed to the public, and the only entities that talk to this webserver are: the MONEYBOX administrator and the PUBLICBOX.

below I split the API in macrocategories.

#### communication with the PUBLICBOX

PublicBOX will be an ERP system that still has to be defined, but we can assume which information
has to be provided and which other has to be received.

#### Provided (from MONEYBOX to PUBLICBOX)

1. anonymized DONATIONENTRY to represent an increment/decremeent of the project wallet, these information get copied by the PUBLICBOX in their format

#### Received (from PUBLICBOX to MONEYBOX)

1. payment order: associated to a project-milestone-TAXCODE, a reason, an amount, a target, a payment source can be communicated, each one of is a MONEYTRANSFER. a MONEYTRASFER is reflected in the log because when accepted by the bank became a MONEYFETCH (with negative import)
2. new project (a TAX code is generated)
3. new milestone associated to a project (a TAX code is generated)
4. project/milestone get deleted (the TAX code is marked as not-used but has to remain allocated until the end of the year)

#### service for the MONEY ADMIN 

MONEYADMIN is a person (Tomate in our first adoption), is the administrator of the financial
part of the CCTP, the service for this person is done via a webapp that provide abilities to
consult the INCREMENTALLOG and changes some specific value. 

1. having an historical log of all the DONATIONENTRY
2. ability to change the associated 'project' and 'milestone', to be used when we've an INCOMPLETE DONATIONENTRY.
3. ability to force a MONEYFETCH and MONEYTRANSFER
4. overview on all the financial input/output.
5. configuration of the deduction performed by the organisation (per MONEYSOURCE or per project?)
6. configuration of the currency exchange rates

## TAXBOX 

Is a windows computer probably running in a laptop owned by the financial administrator of the initiative.

1. has to run the tax software
2. has a browser from where the moneybox statistics can be accessed
3. has the path of MONEYBOX where the CSV are saved, mounted locally, so the files can be easily imported.

## PUBLICBOX

Research has still to be done on the proper ERP, high level features that are clear at the moment, are:

  * every user that open an account can specify a payment method 
  * every user can create a new project, this person is the project administrator
  * project administrator can creare milestone inside of the project
  * every user can report some expensed associated to a milestone
  * project administrator can validate an expense and mark it as refundable
  * project administrator can move (virtually) money belonging to a project, to milestones
  * some kind of remote inclusion for the project/donation has to be supported
  * users can submit their expensed via photo and add text to justify the expense
  * project administrator and user can see their activity on some temporal graph
