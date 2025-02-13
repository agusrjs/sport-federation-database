import streamlit as st
from insert_registry import insert_individual
from datetime import date, datetime

def show_home():
        st.title("Registry form for people")
        st.write("Welcome to the Sport Federation Network registry system. Please fill out the form below to register people into the database. Ensure that all fields are completed accurately before submission.")


        with st.form("individual_form", clear_on_submit=True):
            first_name = st.text_input("First Name")
            last_name = st.text_input("Last Name")
            id_number = st.text_input("ID Number")
            birth_date = st.date_input("Birth Date", value=None, min_value = date(date.today().year -100, 1, 1), max_value = datetime.now())
            nationality = st.text_input("Nationality")
            gender = st.selectbox("Gender", ["", "M", "F", "Other"])
            category = st.selectbox("Category", ["", "B1", "B2", "B3", "SD"])
            role = st.selectbox("Role", ["", "Player", "Goalkeeper", "Guide", "Coach"])

            submitted = st.form_submit_button("Submit")

            if submitted:
                result = insert_individual(first_name, last_name, id_number, birth_date, nationality, gender, category, role)
                
                if result == True:
                    st.success("The person was inserted successfully")
                elif isinstance(result, str):
                    st.error(result)
                else:
                    st.error("Unexpected issue occurred")


def show_teams():
    return

def show_players():
    return

def show_league():
    return

def show_rules():
    return

def show_registry():
    st.title("Registry form for people")
    st.write("Welcome to the Sport Federation Network registry system. Please fill out the form below to register people into the database. Ensure that all fields are completed accurately before submission.")


    with st.form("individual_form", clear_on_submit=True):
        first_name = st.text_input("First Name")
        last_name = st.text_input("Last Name")
        id_number = st.text_input("ID Number")
        birth_date = st.date_input("Birth Date", value=None, min_value = date(date.today().year -100, 1, 1), max_value = datetime.now())
        nationality = st.text_input("Nationality")
        gender = st.selectbox("Gender", ["", "M", "F", "Other"])
        category = st.selectbox("Category", ["", "B1", "B2", "B3", "SD"])
        role = st.selectbox("Role", ["", "Player", "Goalkeeper", "Guide", "Coach"])

        submitted = st.form_submit_button("Submit")

        if submitted:
            result = insert_individual(first_name, last_name, id_number, birth_date, nationality, gender, category, role)
            
            if result == True:
                st.success("The person was inserted successfully")
            elif isinstance(result, str):
                st.error(result)
            else:
                st.error("Unexpected issue occurred")

def show_contact():
    return