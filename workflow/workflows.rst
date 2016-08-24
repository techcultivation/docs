# Workflows
=========== 

This document is work in progress. Please revisit to get the full package.

* Definition
============
This section clarifies some phrases used in the following sections equally. Phrases used only in a section will be clarified in these sections.  
Platform: The system described by this document is referred as the “platform”. The platform consists of several parts: Payment backend, accounting database, user database, user frontend, admin frontend, widget server. These parts can run on the same or on physically separated machines, depending on the chosen kind of architecture. At least the payment backend and databases should not be accessible from the open internet.
CCT: Abbreviation for the Center for Cultivation of Technology.
User: All people registered in the platform and not able to access the payment and accounting backend.
Admin: All people registered in the platform and able to access the payment and accounting backend.
Project: A project in terms of this document is a gathering of people working together to achieve a certain part of technology. It needs users.

* Interaction with bank accounts, paypal and other payment providers
====================================================================
The platform has to interact with accounts hold at banks, paypal and other payment providers (all of these are referred now as “payment providers”). All of these payment providers have one thing in common: they maintain APIs of different kinds accessible the internetwork or similar means of communication and provide secure connections.
For all kind of accounts the description of the process will be the same, altered in the specification for each kind of account:

**Fetching incoming transactions**: The payment backend makes at least one call per day to all configured payment providers via their APIs getting latest account statement and transactions. The data is written into the accounting database as incoming data. It will be be used by the →accounting process. This process can be triggered manually from the admin frontend. 

.. graphviz:: fetchingincomingtransactions.dot