			Large-scale headphone responses analysis and evaluation


					Description

This project focuses on large-scale analysis and evaluation of headphone response. 
For the needs of the work, a set of audio data was collected consisting of measure responses in the frequency range of headphones.
 This analysis involves extracting a number of characteristic statistical parameters to record systematic behaviors for all types of headphones.
 The work also extends to the evaluation of responses with reference to "targets" curves, interpreting the error that is formed between them.

The main purpose of this work is the mass analysis, evaluation and comparison of headphones, studying their behavior in the spectrum of audio frequencies.
 It is achieved by comparing the responses objectively, by calculating spectral parameters and comparing their curves in the frequency spectrum, through an application implemented for this purpose.


					Installation Guide

First open MyAppInstaller_web with administration permission.
On the installer, select Next where you need to choose the installation folder location.
You also need to choose where to install MATLAB Runtime.
MATLAB Runtime will be installed after download is complete.


					List of Features

The application consists of 4 parts.

>1st< 
User needs to search for the specific headphone through the database.
When a headphone is selected, database and type will be shown on the application. 
Otherwise, headphone responses can be imported with the help of the buttons from the list.
Allowed types of imported files are: .txt, .mat, .csv for a frequency response and .wav, .mat for an impulse response.


>2nd<
After import or search, user has 6 available options to choose from.
-Frequency Respons	  : Headphone response is shown on the application with Hz-dBFS axes.
-Impulse Responses	  : The application shows the linear phase impulse response of the selected headphone. There's a minimum phase option to choose so the user can see the difference.
-Spectral Features	  : Statistical spectral features are shown on the table on the right. Each Column represents the range of the frequencies that these features were calculated.
-Harman Target Curve : In order for the harman target curve to be shown, user must select first one database from the database list window. Frequency responses and harman curve can be compared in the frequency spectrum that way.
-Absolute Error Curve : When frequency response and target curve are selected, the calculated absolute error curve can be shown on the same axes.
-Ranking in 4 Areas     : For evaluation purposes, a ranking system was created by measuring the error between headphone responses and harman target curve. When selected, headphone rank is shown at every area of frequencies.


>3rd<
The third part of the GUI (graphic user-interface), allows the user to select from the list the desired area from the above table, the parameter that was calculated so the its valuecan be located on the overall histogram of the database.


>4th<
If the user wishes, the information presented in the application, such as parameter values, impulse and frequency response, can be saved in the appropriate format. This is, Excel or as a .mat in the MATLAB environment as there is an option to save the graph. For the case of the impulse response only, there is an option to save the response as an .wav audio file.

 
					References
