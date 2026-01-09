# Functionality

 - Server/client system? Peer to peer system?
 - UI (but that's out of scope for now)

 - Addressing (registration)
 - Payment for the service. (registration)
 - To be able to send mail.
 - To be able to receive mail.
 - Some type infrastructure for storing mail.

# Requirement
 - Send/Receive: Mail is supposed to arrive in some timely fashion.
 - Send/Receive: Mailman can't open mail.
 - Send/Receive: Format for what can be sent. Size? Type?
 - Send?/Receive/Addressing: Authentication? No authentication for the physical 
   mail. Must have authentication to read one's own mail.
 - Send: Handle heavy load. (How heavy?)

## Registration:
- Unique address
- Authentication that the user is indeed themselves and want to register for 
  the service. (Authorization to do this.)  
- Where to store the addresses? How do senders find the addresses?

## Send:
- How to find the address of somebody?
- Data handover? What data? Encrypted? With what key?

## Receive:
- Decryption, with what key? How is that stored?
- Authentication to access the mail.
- Authentication so we know that the message integrity is fine.
- Where to find the data?


# Solutions

## Registration:
- Auth using BankID
- Derive a public key from the BankID
- Use personnummer as address
- Saves us from a lot of problems with addresses
- BankID is a trusted source

## Send:
- Use the Signal protocol to handle the encryption and authentication
- Clear text for addresses (compatible with personnummer)
- Someone observing the network can learn who is sending to whom, but not the 
  content of the message.
- What can be sent? Not just PDF and text, can even include movies. Depends on 
  the recipient's client. Allows for bad stuff to be sent.
- Infrastructure: server/client or p2p? Peers always online.

## Receive:
- Asymetric encryption to protect the mail.
- Trust the service, keys stored at the service.
- Signing mails, what keys to encrypt with? If attacker breaks, we don't want 
  to ruin it for all mails. Key renewal. But must store all keys to access old 
  keys.

