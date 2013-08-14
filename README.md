samurai-fixes
=============

Fixes for SamuraiWTF to make teaching the class go more smoothly (work on Samurai 2.0)

This was originally created as an import of  svn://svn.code.sf.net/p/samurai/code/trunk 

I have added several items as part of setting up the Samurai environment to facilitate teaching a classed based on the slides that the SamuraiWTF project produces.

* enable access to dojo-basic over http so that ZAP's Brute Force tool will work correctly (see https://code.google.com/p/zaproxy/issues/detail?id=718 )
* disable the samurai user auto-login
* add script & configs to serve the vulnerable applications on all addresses, rather than just a localhost IP (be_dangerous.sh)
* add script & configs to return apache configuration to the original version (be_normal.sh)
* add update script which downloads ZAP 2.1.0 from googlecode, and sqlmap from github
*
