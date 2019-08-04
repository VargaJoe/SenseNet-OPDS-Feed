# SenseNet-OPDS-Feed
Experimenting to create OPDS feeds with sensenet

# Idea
After checking OPDS Specifications I see it could be easily implemented on sensenet.
I don't know when will I have time for implement a proper solution so I've created a quick and dirty solution to check it.
It's missing a bunch of logic, but Ithe basic functionality works.

# How it works
The current (unfinished) solution contains 3 XsltApplication. 
- One is used as Root and has to be placed a path without url parameters
- One is used as navigation and has to be placed under (apps) to work as appmodell action
- One is used as file list and be placed as the navigation application

Root is implemented to call navigation on site (/). If only services installed, it have to be changed in xslt code.

# Known issues
It's far from complete, so almost everything else is missing.
- There is no search
- There is no meta handling
- There are no images
- etc

The whole solution is temporary, maybe it will be custom applications and support from backend.