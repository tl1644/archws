#!/bin/bash
useradd -m -G uucp,wheel $1
passwd $1
