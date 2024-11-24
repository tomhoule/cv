#import "@preview/basic-resume:0.1.4": *

#let name = "Tom Houlé"
#let location = "Berlin, DE"
#let email = "tom@tomhoule.com"
#let github = "github.com/tomhoule"
#let linkedin = "linkedin.com/in/tom-houlé"
#let phone = "+49 176 20 00 09 49"
#let personal-site = "tomhoule.com"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  // phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "")
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/

== Relevant Work Experience

#work(
  title: "Senior Engineer",
  location: "Remote",
  company: "Grafbase",
  dates: dates-helper(start-date: "Oct. 2023", end-date: "Present"),
)
- Introduced data oriented design
- Introduced fine grained authorization
- Lead features, wrote RFCs

#work(
  title: "Senior Engineer, Tech Lead",
  location: "Berlin, Remote",
  company: "Prisma",
  dates: dates-helper(start-date: "Sept. 2019", end-date: "Oct. 2023"),
)
- Schema Team, Prisma Schema Language, ORM Team. 400x the number of users of the ORM in that time.
- Lead features, wrote RFCs
- Proposed and ran a database engineering learning group
- Hiring.
  // Since January 2023, engineer on the Client Team, responsible for the Query
  // Engine behind Prisma Client.

  // Previously Tech Lead of the Schema Team. The team is responsible for the Migrate
  // and Introspection products, as well as the general space of database schema
  // management and the Prisma Schema Language implementation and tooling.

  // Took a large part in the design and implementation of the new Migrate
  // product, and drove many smaller projects to completion (performance
  // analysis, extended database type support, testing infrastructure, …).
  // Frequent collaboration with external stakeholders (users, framework
  // authors, database drivers). Significant amount of discovery and feature
  // design work. Representing Prisma on the board of the GraphQL Foundation.

  // Code samples: \\
  // \url{https://github.com/prisma/prisma-engines/commits?author=tomhoule}

#work(
  title: "Engineer, Senior Engineer, Backend Lead",
  location: "Berlin",
  company: "store2be",
  dates: dates-helper(start-date: "Oct. 2016", end-date: "Sept. 2019"),
)
- Full stack: Ruby on Rails, React. Introduced TypeScript, GraphQL.
- Rust, contract templating and 
- Hiring, one-on-ones
    // Second engineering hire in a Berlin B2B SaaS startup. Stack:~Rails, React,
    // Postgres, Redis. Introduced and drove adoption of
    // TypeScript, GraphQL. Strong collaboration practices: regular pair programming, systematic, thorough code reviews, regular 1:1s, TDD, product-oriented thinking.

    // Took an active part in infrastructure work (notably, migration from Heroku
    // to Kubernetes, Terraform).

    // Tech Lead role for the Backend Team in the last year, with regular 1:1s with
    // my reports, carreer planning and more formal feedback rounds.

#work(
  title: "Web Developer and Project Manager",
  location: "Lyon",
  company: "Médiéval AFDP",
  dates: dates-helper(start-date: "March 2015", end-date: "Oct. 2016"),
)
- Green and brown field, internal and public web projects. Scraping, data manipulation. TypeScript+React, Django, PHP.
  //   Developed new web applications and enhanced older websites as the only
  //   full-time developer in a heritage-focused company working mostly for
  //   the public sector. Performed other tasks occasionally, such as web
  //   scraping and batch data manipulation. A few projects:
  // %
  //   \begin{itemize}
  //   \item
  //     Cap Moderne: a relatively traditional website for an important cultural site
  //     on the French Riviera. Backend development, Django. $\rightarrow$ \url{https://capmoderne.com}
  //   \item
  //     Several web applications, including two used internally to manage public
  //     procurement offers and mailing lists. Django, Django REST Framework,
  //     React, Typescript.
  //   \item
  //     Safari de Peaugres: enhancement and modification of a legacy PHP website,
  //     with an new section written as an embedded React application.
  //   \end{itemize}

  // 2013 $\diamond$ Internship at the Fondation Alliance Française (Paris), working on a
  // Foreign Affairs Ministry program for professional training in the French
  // foreign cultural network.

  
== Projects

#project(
  role: "Main author",
  name: "graphql-composition",
  dates: dates-helper(start-date: "2023", end-date: "Present"),
  // URL is optional
  url: "crates.io/crates/graphql-composition",
)

#project(
  role: "Main author",
  name: "graphql-client",
  dates: dates-helper(start-date: "2018", end-date: "Present"),
  // URL is optional
  url: "github.com/graphql-rust/graphql-client",
)


== Education

#edu(
  institution: "Université Lyon II",
  // location: "Lyon",
  dates: dates-helper(start-date: "Sept. 2014", end-date: "Sept. 2015"),
  degree: "Master’s Degree",
)

#edu(
  institution: "Institut d’Études Politiques Aix-en-Provence",
  // location: "Aix-en-Provence",
  dates: dates-helper(start-date: "Sept. 2008", end-date: "May 2013"),
  degree: "Master’s Degree",
)

// Certificates:
  // \paragraph{Online course certificates} Functional programming principles in Scala (EPFL / Coursera), Functional programming design in Scala (EPFL / Coursera), Parallel programming (EPFL / Coursera)

// == Extracurricular Activities

// #extracurriculars(
//   activity: "Capture The Flag Competitions",
//   dates: dates-helper(start-date: "Jan 2021", end-date: "Present"),
// )
// - Founder of Les Amateurs (#link("https://amateurs.team")[amateurs.team]), currently ranked \#4 US, \#33 global on CTFTime (2023: \#4 US, \#42 global)
// - Organized AmateursCTF 2023 and 2024, with 1000+ teams solving at least one challenge and \$2000+ in cash prizes
//   - Scaled infrastructure using GCP, Digital Ocean with Kubernetes and Docker; deployed custom software on fly.io
// - Qualified for DEFCON CTF 32 and CSAW CTF 2023, two of the most prestigious cybersecurity competitions globally

  // Long lived interest in \textbf{databases}, mostly from a practical point of
  // view: how they are implemented, how they fit in a larger system.

  // More recently, I am having fun with \textbf{formal methods}. Decent working
  // grasp of proof assistants (Lean, Coq, Agda) and the underlying theory.  Not
  // as knowledgeable, but interested in automatic verification.

  // Long time \textbf{Rust} user who saw the language and ecosystem develop
  // from the very early stages. You can find more and less recent samples of my
  // code on GitHub.

  // Familiar and comfortable with modern development and project management
  // practices, more DevOps-related concerns like infrastructure management
  // (Docker, k8s, also Ansible in the past), nix, the web plaftorm, \LaTeX...

== Skills
- *Languages*: English, German, French, Chinese (HSK level 6), Japanese (JLPT N1)
- *Interests*: Database Engineering, Formal Methods, Running
- *Programming Languages*: Rust, SQL, Lean, TypeScript, Javascript, Python, Ruby, Scala, C, C++, etc.
- *Technologies*: PostgreSQL, Linux, Kubernetes, Docker, Linux, DuckDB, GraphQL, etc.
