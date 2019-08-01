##################################################################################################
# seinfeld-trivia.ps1
# Teo Espero
# Cloud and Systems Administration (BS)
# Western Governors University
#
# The development of this game will demonstrate how to create an interactive online quiz that 
# presents the player with a series of questions that are then analyzed and graded. The primary 
# point of focus for you as you create this game should be on the use of variables to store and 
# interrogate data collected from the player. In addition, you should take note of the use of 
# Windows PowerShell escape characters in the generation of display output.
##################################################################################################

## declare our vars

## Define the variables used in this script to store player answers

$question1 = ""
$question2 = ""
$question3 = ""
$question4 = ""
$question5 = ""

## Define a variable to keep track of the number of correctly answered

## quiz questions

$noCorrect = 0

## Display the game's opening screen

Clear-Host

Write-Host "`n`n`n`n`t`t W E L C O M E   T O   T H E   S E I N F E L D"
Write-Host "`n`n`n`t`t`t T R I V I A   Q U I Z"
Write-Host "`n`n`n`t`t`t     By Teo Espero"
Write-Host "`n`n`n`n`n`n`n`n`n`n Press Enter to continue."

## Pause script execution and wait for the player to press the Enter key
Read-Host

Clear-Host

## Provide the player with instructions
Write-Host "`n`n The Seinfeld Trivia Quiz tests your knowledge of Seinfeld`n"
Write-Host " trivia. The quiz consists of five equally weighted multiple`n"
Write-Host " choice questions. At the end of the quiz your answers will`n"
Write-Host " be checked and you will be assigned a skill level, using`n"
Write-Host " the following scale.`n`n"
Write-Host " `t Score: 5 correct = Jerry (Expert)"
Write-Host " `t`t 4 correct = Kramer"
Write-Host " `t`t 3 correct = Elaine"
Write-Host " `t`t 2 correct = George"
Write-Host " `t`t 1 correct = Newman"
Write-Host " `t`t 0 correct = Babo (Clueless)"
Write-Host "`n`n`n`n Press Enter to continue."

## Pause script execution and wait for the player to press the Enter key
Read-Host

## Ask the player the first question

while (($question1 -ne "a") -and ($question1 -ne "b") -and ($question1 -ne "c") -and ($question1 -ne "d")) {
    Clear-Host #Clear the Windows command console screen
    Write-Host
    Write-Host " What is Kramer's first name?"
    Write-Host
    Write-Host " A. Peterman"
    Write-Host " B. Cosmo"
    Write-Host " C. Puddy"
    Write-Host " D. Peck"
    Write-Host
    $question1 = Read-Host " Type the letter representing the correct answer and press the Enter key"
}


Clear-Host

## Ask the player the second question

while (($question2 -ne "a") -and ($question2 -ne "b") -and ($question2 -ne "c") -and ($question2 -ne "d")) {
    Clear-Host #Clear the Windows command console screen
    Write-Host
    Write-Host " What was George’s favorite pretend career?"
    Write-Host
    Write-Host " A. Bra salesman"
    Write-Host " B. Real estate"
    Write-Host " C. City planner"
    Write-Host " D. Architect"
    Write-Host
    $question2 = Read-Host " Type the letter representing the correct answer and press the Enter key"
}

Clear-Host

## Ask the player the third question
while (($question3 -ne "a") -and ($question3 -ne "b") -and ($question3 -ne "c") -and ($question3 -ne "d")) {
    Clear-Host #Clear the Windows command console screen
    Write-Host
    Write-Host " For whom did Elaine buy white socks?"
    Write-Host
    Write-Host " A. Mr. Lippman"
    Write-Host " B. Mr. Peterman"
    Write-Host " C. Mr. Pitt"
    Write-Host " D. Puddy"
    Write-Host
    $question3 = Read-Host " Type the letter representing the correct answer and press the Enter key"
}


Clear-Host

#Ask the player the fourth question
while (($question4 -ne "a") -and ($question4 -ne "b") -and ($question4 -ne "c") -and ($question4 -ne "d")) {
    Clear-Host #Clear the Windows command console screen
    Write-Host
    Write-Host " What is Kramer scared of?"
    Write-Host
    Write-Host " A. Swimming"
    Write-Host " B. Fried Chicken"
    Write-Host " C. Clowns"
    Write-Host " D. The dentist"
    Write-Host
    $question4 = Read-Host " Type the letter representing the correct answer and press the Enter key"
}


Clear-Host
while (($question5 -ne "a") -and ($question5 -ne "b") -and ($question5 -ne "c") -and ($question5 -ne "d")) {
    Clear-Host #Clear the Windows command console screen
    Write-Host
    Write-Host " Where do Jerry's parents live?"
    Write-Host
    Write-Host " A. Kansas"
    Write-Host " B. New York"
    Write-Host " C. California"
    Write-Host " D. Florida"
    Write-Host
    $question5 = Read-Host " Type the letter representing the correct answer and press the Enter key"
}## Clear the Windows command console screen
Clear-Host

Write-Host
Write-Host " OK, now press the Enter key to see how you did."


## Pause script execution and wait for the player to press the Enter key
Read-Host## Clear the Windows command console screen

Clear-Host

## Grade the answers for each quiz question
if ($question1 -eq "b") { $noCorrect++ } #The answer to question 1 is "B"
if ($question2 -eq "d") { $noCorrect++ } #The answer to question 2 is "D"
if ($question3 -eq "c") { $noCorrect++ } #The answer to question 3 is "C"
if ($question4 -eq "c") { $noCorrect++ } #The answer to question 4 is "C"
if ($question5 -eq "d") { $noCorrect++ } #The answer to question 5 is "D"## Assign a ranking based on quiz score
if ($noCorrect -eq 0) {
    Write-Host    Write-Host " You did not get any questions correct."
    Write-Host
    Write-Host " Your knowledge of Seinfeld trivia is no better than Babo's."
}

if ($noCorrect -eq 1) {
    Write-Host
    Write-Host " You got 1 question correct."
    Write-Host
    Write-Host " Your knowledge of Seinfeld trivia is no better than Newman's."
}

if ($noCorrect -eq 2) {
    Write-Host
    Write-Host " You got 2 questions correct."
    Write-Host
    Write-Host " Your knowledge of Seinfeld trivia is approximately that of George’s."
}

if ($noCorrect -eq 3) {
    Write-Host
    Write-Host " You got 3 questions correct."
    Write-Host
    Write-Host " Your knowledge of Seinfeld trivia is approximately that of Elaine’s."
}

if ($noCorrect -eq 4) {
    Write-Host
    Write-Host " You got 4 questions correct."
    Write-Host
    Write-Host " Your knowledge of Seinfeld trivia is about as good as Kramer's."
}
if ($noCorrect -eq 5) {    Write-Host
    Write-Host " You got 5 questions correct."
    Write-Host
    Write-Host " Your knowledge of Seinfeld trivia is every bit as good as Jerry's."
}
## Pause script execution and wait for the player to press the Enter key
Read-HostClear-Host

## Provide the player with instructions
Write-Host
Write-Host " Thanks for taking the Seinfeld Trivia Quiz!"

## Pause script execution and wait for the player to press the Enter key
Read-Host

## Show credits 

Clear-Host

Write-Host
Write-Host
Write-Host 
Write-Host
Write-Host 
Write-Host
Write-Host
Write-Host "                                   The Seinfeld Trivia Game"
Write-Host 
Write-Host "             Copyright 2019 - Teo Espero, Cloud and Systems Administration (BS)"
Write-Host "                                   Western Governors University"
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host 

## create a 5-second delay before returning the player to the command shell

Start-Sleep -Seconds 3

Clear-Host

##################################################################################################
## EOF 