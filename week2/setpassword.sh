#!/bin/bash
read -sp "Enter Password;" pass_var
echo $pass_var | sha256sum >./secret.txt