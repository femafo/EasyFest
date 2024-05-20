#!/usr/bin/env python3

import os
import requests

# Variables
CHAT_ID = 'TU_CHAT_ID'
TOKEN = 'TU_BOT_TOKEN'
URL = f'https://api.telegram.org/bot{TOKEN}/sendMessage'
LOAD_THRESHOLD = 2.0  # Ajusta este valor según tus necesidades

# Obtener carga media del sistema
load1, load5, load15 = os.getloadavg()

# Verificar si la carga supera el umbral
if load1 > LOAD_THRESHOLD:
    message = f"¡Advertencia! Carga alta del sistema:\n1 min: {load1}\n5 min: {load5}\n15 min: {load15}"
    requests.post(URL, data={'chat_id': CHAT_ID, 'text': message})
