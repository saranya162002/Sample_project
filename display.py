import streamlit as st
import pandas as pd
st.header('Hello, World!')
name = st.text_input('Enter the Name!')
data = pd.DataFrame({
    'first column': [1, 2, 3, 4],
    'second column': [10, 20, 30, 40],
})
st.write(data)
if st.button('Click me!'):
    st.write("Hiiiiiii,",name,"!")
