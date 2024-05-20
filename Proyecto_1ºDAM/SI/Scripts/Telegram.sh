#!/usr/bin/env python3

import os
import requests

# Variables
CHAT_ID = 'TU_CHAT_ID'
TOKEN = 'TU_BOT_TOKEN'
URL = f'https://api.telegram.org/bot{TOKEN}/sendMessage'

# Obtener carga media del sistema
load1, load5, load15 = os.getloadavg()
message = f"Carga media del sistema:\n1 min: {load1}\n5 min: {load5}\n15 min: {load15}"

# Enviar mensaje a Telegram
requests.post(URL, data={'chat_id': CHAT_ID, 'text': message})
