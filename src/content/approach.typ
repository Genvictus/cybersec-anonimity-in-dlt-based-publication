= Anonymization Scheme
The general scheme used for review voting scheme can be generalized as eligible readers giving their vote (approval or disapproval) of the review given to the reviewer's address (through a smart contract) as depicted in @fig:token-plain-scheme. The plain scheme however, easily links the review given to the reviewer through the transaction. This is not desirable in single blinded or double blinded schemes listed in @tab:peer-review-schemes as the reviewer identities is not to be disclosed.

#figure(
  caption: [Plain Voting Scheme],
  image("../../images/diagrams/token-plain-scheme/token-plain-scheme.png")
) <fig:token-plain-scheme>

To create an _unlinkable_ transaction where the votes of the readers contribute to benefit the reviewer's primary identity, a system that cuts the transaction history is needed. For this approach, the use of mixing services are needed. A mixing service obfuscate the trace of transaction from the review to the reviewer. A single-use identity can be used to hold the votes temporarily. However, the usage of single-use identity provides no way for the peer review process to acknowledge that the identity is eligible for reviewing the work.

To ensure that the single-use identity is eligible to give a review, the reviewer can provide access through a "delegation". However, delegating the access will provide a way to link the reviewer to the single-use identity that gives the review. This approach use the same method to _unlink_ the delegation through another mixer service. With the new "delegated" identity, the reviewer has the right to give reviews to the current work in review, while keeping the reviewer's identity unlinked to the review. The whole process is summarized in @fig:token-mixing-scheme.

#figure(
  caption: [Token Mixing Scheme],
  image("../../images/diagrams/token-mixing-scheme/token-mixing-scheme.png")
) <fig:token-mixing-scheme>
