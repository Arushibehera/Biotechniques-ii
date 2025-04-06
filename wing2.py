"""
wing2.py
Purpose = This is the second lesson on python
Author = Arushi Behera
Date = April 8, 2025
"""
#printing a welcome message
print("Hello\nMy name is Arushi Behera\nThis is my python script")

#variable for a DNA sequence
dnaseq='ATGATTGANCCTGATCG'
#printing the variable
print(dnaseq)

#the following codes give immediate results in interactive mode, python shell
#using strings to extract a single character
dnaseq[0] #the first character 
dnaseq[5]
dnaseq[-1]#the last character 
dnaseq[-8]
#string slicing to extract series of characters 
dnaseq[2:6]
dnaseq[-1:-5]#this does not work empty string 
dnaseq[-5:-1]#works only start to stop, left to right reading 
dnaseq[-1:-5:-1]#reverse reading 
#replacing a character from the string 
dnaseq.replace('N','A')

#activity3
colours=['blue','red','yellow']
print(colours[1])
colours.append('green')
colours.remove('red')
print(colours)
