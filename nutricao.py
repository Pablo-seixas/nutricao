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


# In[8]:


import plotly.express as px


# In[9]:


meal_types = ['Café da Manhã', 'Almoço', 'Lanche', 'Jantar']
meal_count = [2, 2, 1, 1]


# In[10]:


fig = px.pie(names=meal_types, values=meal_count, title='Distribuição dos Tipos de Refeição', color_discrete_sequence=px.colors.qualitative.Set3)
fig.update_traces(textinfo='percent+label', pull=[0.2, 0.1, 0, 0])  # Adicionar uma "explosão"
fig.update_layout(showlegend=False)


# In[11]:


import plotly.graph_objects as go


# In[25]:


meal_types = ['Café da Manhã', 'Almoço', 'Lanche', 'Jantar']
meal_count = [2, 2, 1, 1]


# In[27]:


for i, meal_type in enumerate(meal_types):
    fig.add_trace(go.Bar(
        x=[meal_type],
        y=[meal_count[i]],
        hoverinfo='y+name',
        marker=dict(color=px.colors.qualitative.Set3[i]),
        name=meal_type
    ))


# In[30]:


fig.update_layout(
    title='Distribuição dos Tipos de Refeição',
    barmode='stack',
    xaxis=dict(showline=False),
    yaxis=dict(showline=False),
    showlegend=False
)


# In[32]:


fig.show()


# In[ ]:




