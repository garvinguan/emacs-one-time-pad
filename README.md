# One-time-pad encryption for Emacs
A convenient encryption using one-time-pad, great for short strings within files

# Getting Started
* M-x one-time-pad-encrypt-string or Bind Command to a key:

        (global-set-key (kbd "C-x") 'one-time-pad-encrypt-string)

# How to encrypt
* Mark text that should be encrypted
* Run command M-x one-time-pad-encrypt-string or with your shortcut
* Enter a string to be used as the encryption key (The length of the string should be as long if not longer than the marked text)
* The marked text should now be encrypted!

# How to decrypt
* Mark the encrypted text
* Run command M-x one-time-pad-encrypt-string or with your shortcut
* Enter the encryption key used to originally encrypt the text
* The marked text should now be decrypted!
