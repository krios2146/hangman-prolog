# hangman-prolog

A simple hangman (word guessing) game with a console UI 

## Run Locally

1. Install SWI prolog - https://www.swi-prolog.org/Download.html

2. Clone the project

```bash
  git clone git@github.com:krios2146/hangman-prolog.git
```

3. Go to the project directory

```bash
  cd hangman-prolog
```

4. Launch the SWI-Prolog interactive shell

```bash
  swipl
```

5. Load programm file to SWI shell

```bash
  [main].
```

6. Start the game by querying empty `hangman` predicate

```bash
  hangman.
```

> [!IMPORTANT]
> Keep in mind that every prolog query should end with `.`, so to enter a letter `a` you shold type `a.` 
