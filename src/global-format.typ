#import "@preview/charged-ieee:0.1.3": ieee

#let global-format(contents) = [
  #show: ieee.with(
    title: [An Approach for Reviewer Anonymity in Blockchain-Based Peer Review Process],
    abstract: [
      The advancement of blockchain technology has pushed many applications from various domains to adopt the usage of blockchain. The scientific domain is one example which benefits from the use of blockchain, with some focus directed on the publication process. One of the challenges of adopting blockchain technology into the scientific publication process is enabling anonimity in the peer review process. This study approach the use of advancing mixing technology in blockchain to provide _unlinkable_ review process, while maintaining the credibility of the reviewer in a blockchain-based peer review process.
    ],
    authors: (
      (
        name: "Johann Kandani",
        department: [Sekolah Teknik Elektro dan Informatika],
        organization: [Institut Teknologi Bandung],
        location: [Bandung, Indonesia],
        email: "13521138@mahasiswa.itb.ac.id"
      ),
      (
        name: "Brian Kheng",
        department: [Sekolah Teknik Elektro dan Informatika],
        organization: [Institut Teknologi Bandung],
        location: [Bandung, Indonesia],
        email: "13521049@mahasiswa.itb.ac.id"
      ),
      (
        name: "Michael Utama",
        department: [Sekolah Teknik Elektro dan Informatika],
        organization: [Institut Teknologi Bandung],
        location: [Bandung, Indonesia],
        email: "13521137@mahasiswa.itb.ac.id"
      ),
    ),
    index-terms: ("Blockchain", "Peer review", "Privacy", "Anonymity", "Token mixing"),
    bibliography: bibliography("refs.bib"),
    figure-supplement: [Fig.],
  )

  #contents
]