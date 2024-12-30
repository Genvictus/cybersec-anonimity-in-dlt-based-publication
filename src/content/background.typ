= Background
== Blockchain-Based Peer Review Process
Peer review is a process where experts on the field of the proposed manuscript for publication reviews the work to be published. The review process consists of other reviewers giving their reviews, which is then used as evaluation criteria for the manuscript @Tennant_Ross-Hellauer_2020 @Wessely_1996. There are different schemes for peer review, where some of the well known schemes are summarized in @tab:peer-review-schemes @Ali_Watson_2016 @Zimba_et-al_2021:

#figure(
  caption: [Peer Review Schemes],
  table(
    columns: (1fr, 2fr, 1.5fr),
    align: (left, left, left),
    inset: (x: 8pt, y: 4pt),
    stroke: (x, y) => if y <= 1 { (top: 0.5pt) },
    fill: (x, y) => if y > 0 and calc.rem(y, 2) == 0  { rgb("#efefef") },

    table.header[Peer review scheme][Participant knowledge][Identity disclosure],
    [Single blind peer review], [Reviewers know the identity of the authors, but the authors do not know the identity of the reviewers],[Reviewers identity are not disclosed],
    [Double blind peer review], [Neither reviewers nor authors know the identity of each other],[Reviewers identity are not disclosed],
    [Open peer review], [Both reviewers and authors know the identity of each other],[Reviewers identity are disclosed]
  )
) <tab:peer-review-schemes>

One of the aim of several blockchain-based peer review process is to enable the transparency of reviews, regardless of whether the reviewers' identity are disclosed or not @Science_2017. These public reviews can then be rated by different participants in the network, either by the participants of the publication process (i.e. authors, editors, and other reviewers) @Tenorio-Fornés_et-al_2021 @Coelho_Brandão_2019, or by separating the concern for verified readers not participating in the publication process of the submitted work @Khan_Shahaab_2021. These implementations uses token deployed on smart contracts to reward the reviewers @Tenorio-Fornés_et-al_2021 @Coelho_Brandão_2019 @Mackey_et-al_2019.

== Blockchain Anonymity Schemes
There are levels of privacy that can be achieved in blockchain environment, ranging from pseudonymity, homomorphic encryption, zero-knowledge proofs (ZKP), and K-anonymity. The primary mean to achieve anonymity in blockchain environment is through _unlinkability_ @de-Haro-Olmo_et-al_2020. Some of the widely-studied privacy-enhancing methods has been proposed using ZKP, homomorphic encryption, and mixing services @Casino_et-al_2019 @Yang_et-al_2023. There has been a suggestion for single-use identity approval for accountable anonymous review system, which bases the suggestion with ZKP and mixing service (e.g. Zcash) @Tenorio-Fornés_et-al_2019.

Mixing service works by obfuscating the relationship between inputs and outputs @Wu_et-al_2021. This helps in _unlinkability_, where linking the output to the input will become improbable with higher number of participants @Glaeser_et-al_2022. The mixing schemes summarized in @tab:mixing-schemes @Wu_et-al_2021 @Xiao_et-al_2019 provides different ways mixing service can be implemented. Mixing services should also be used with relays to mask the origin of the transaction @Moser_Bohme_2017.

#figure(
  caption: [Mixing service schemes],
  table(
    columns: (1fr, 2fr),
    align: (left, left, left),
    inset: (x: 8pt, y: 4pt),
    stroke: (x, y) => if y <= 1 { (top: 0.5pt) },
    fill: (x, y) => if y > 0 and calc.rem(y, 2) == 0  { rgb("#efefef") },

    table.header[Mixing scheme][Scheme],
    [Centralized mixing service], [Users provide input to a centrally managed mixing service, which then provides an unlinkable output for the user],
    [Decentralized mixing service], [Users provide input to decentralized app on the blockchain which is based on cryptographic technologies such as ZKP],
    [Cross-Blockchain Mixing Service], [Users exchanges its input to other blockchain network, then exchanges the output from the other blockchain as the final output back on the origin network]
  )
) <tab:mixing-schemes>