#!/usr/bin/env python

import os
import requests

index = 0

def getImageFromLine(line):
	''' Get Image From Line
	Downloads images from a file containing image URLs.
	'''
	global index
	index += 1

	line = line.rstrip('\n')
	if 'https://' in line:
		url = line

		img_data = requests.get(url).content
		with open('chromecast/test%s.jpg' % index, 'wb') as handler:
		    if len(img_data) > 2000:
		    	handler.write(img_data)
		    else:
		    	os.remove('chromecast/test%s.jpg' % index)

	return

[getImageFromLine(line) for line in open('image_urls.csv')]