#!/usr/bin/env python
# coding: utf-8

# In[1]:


import matplotlib.pyplot as plt


# In[2]:


meal_types = ['Café da Manhã', 'Almoço', 'Lanche', 'Jantar']
meal_count = [2, 2, 1, 1]  # Substitua esses valores pelos valores reais


# In[3]:


plt.figure(figsize=(8, 6))
plt.pie(meal_count, labels=meal_types, autopct='%1.1f%%', startangle=140, colors=['#66b3ff', '#99ff99', '#ffcc99', '#ff9999'])
plt.axis('equal')  # Deixa o gráfico de pizza redondo

