# The issue on foreign currencies

This document outlines the issue on different currencies in a very simplified way

## Legal framework on foreign currency accounting in Germany 
All accounts not held in Euro by a German company need to assess the amount of foreign currencies at least at the moment the money arrives at the company in any form (e.g. cash, bank account, paypal) and at the end of the year. Only if the foreign currency is exchanged into Euro the moment it hits an account there is no need to assess the money at the end of the year.  

Example direct exchange:  
Donor A sends 200 USD on May 24th to our EUR paypal. Paypal transfers the USD to EUR with an exchange rate of 1.11 which gives us 222 EUR on the paypal Account. Nothing more to do.  

Example keeping on USD Account  
Donor B sends 200 USD on May 24th to our USD paypal. Paypal keeps the USD and shows 200 USD as balance (I ignored the fees at this moment). The moment the money comes in we have to assess the USD with the official exchange rate of the Federal German Bank of 1,13 (226 EUR). 
US-Paypal is operated as an USD account in DATEV (or any other accounting software) and in an asset evaluation it needs to show the EUR ammount as well and this is taken as the official "wealth" of the company. In a normal case I would reassess at the total ammount of the USD paypal at the end of a month or a quarter, at least at the end of the year. Let's take this case. The exchange rate changed to 1,18 which gives a value of 236 EUR but of course the USD ammount did not change. 

## Budgeting in foreign currencies
A project got donations in EUR. It has an ammount of 1000 EUR available. 300 EUR get budget for travel expenses. The moment it is budgeted, the exchange rate is at 1,13 (265,49 USD). As the budget is an EUR budget in reality, the budget would change every day according with the exchange rate. If this happens, the budget is useless as it is not reliable. 
If the CCT will maintain accounts in other currencies than EUR, we could have reliable budgets in e.g. USD. 


## Conclusion so far  
There are two outcomes of this issue:  
1. We start with only one currency (EUR) and have less pain   
2. We maintain different currencies (EUR, GPB, USD) and deal with more accounts and changing exchange rates. __In the mid term this needs to be implemented__. 

## Notes
* DATEV can handle differnet exchange rates and they provide the exchange rates to their program. I am not sure if they can be fetched easily form there. 
* Official exchange rates are provided by several banks and the German Federal Bank (there are some APIs with XML things falling out)
