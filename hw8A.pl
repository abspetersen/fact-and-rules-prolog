/* Name: Abby Petersen
    Net ID: mi5332
    This Program: Prolog program that defines facts and a rule based on the
    first-order logic intended interpretation of:
      - Richard is the king
      - Richard and John are brothers
      - the crown is on Richard's head
      - Richard is a person
      - John is a person
      - if you are a king, then you are a person
    *command to run prolog file: [hw8A].
    *Prolog queries and outputs:
      - query: is_person(Richard).
          - output: yes (yes output tells us that Richard is a person - based on the information contained in the defined facts)
      - query: king_is(Richard).
          - output: no (no output tells us that the query did not match any of the defined facts - none of the defined rules match the syntax of the query)
      - query: has_crown(John).
          - output: no (no output tells us that the crown is not on John's head - based on the information contained in the defined facts)
      - query: brothers(Richard,John).
          - output: true ? (true output tells us that Richard and John are brothers - based on the information contained in the defined facts,
                            the question mark following the true output - tells us that there may be additional, possible solutions to the query)
            - query: true ? ; (type semicolon to previous true output and press enter)
                - output: no - (no output tells us that there are  no additional solutions to the original query)
      - query: is_person(John).
          - output: yes (yes output tells us that John is a person - based on the information contained in the defined facts)
      - query: if_person(Richard).
          - output: yes (yes output tells us that Richard is a person because he is also the king - based on the information contained in the defined facts and rule) */

/* facts */

 /* Richard is a person */          is_person(Richard).

 /* John is a person */             is_person(John).

/* Richard and John are brothers */ brothers(Richard,John).

/* a crown is on Richard's head */ has_crown(Richard).

/* Richard is the king */          is_king(Richard).


/* rule that states: for a given X, X is a person if X is king */
if_person(X) :-
  is_king(X).
