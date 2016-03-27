# One-time-pad Encryption for Emacs
A convenient encryption using one-time-pad, great for short strings within files

# Getting Started
* M-x one-time-pad-encrypt or Bind Command to a key:

        (global-set-key (kbd "C-x") 'one-time-pad-encrypt)

# How to encrypt
* Mark text that should be encrypted
* Run command M-x one-time-pad-encrypt or with your shortcut
* Enter a string to be used as the encryption key (The length of the string should be as long if not longer than the marked text)
* The marked text should now be encrypted!

# How to decrypt
* Mark the encrypted text
* Run command M-x one-time-pad-encrypt or with your shortcut
* Enter the encryption key used to originally encrypt the text
* The marked text should now be decrypted!

# One Time Pad Encryption Details
This type is encryption is extremely secure (though inefficient in space) if several rules are followed
* Never reuse the same key for other data

Keys should be as different as possible from other keys also used with this encryption

* The key should be random (should contain as few repeated sequences as possible)

More details can be seen here
https://en.wikipedia.org/wiki/One-time_pad