import streamlit as st
import os
from streamlit_navigation_bar import st_navbar
import pages as pg

'''
# Header
st.set_page_config(initial_sidebar_state="collapsed")

# Typography
st.markdown("""
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;600;700&display=swap" rel="stylesheet">
""", unsafe_allow_html=True)

pages = ["Home", "Teams", "Players", "League", "Rules", "Registry", "Contact"]
parent_dir = os.path.dirname(os.path.abspath(__file__))
logo_path = os.path.join(parent_dir, "images", "logo.svg")
urls = {}
styles = {
    "nav": {
        "background-color": "#001d7a",
        "justify-content": "center",
        "position": "relative",
        "top": "-10px",
        "height": "55px",
        "padding-bottom": "8px",
    },
    "img": {
        "padding-left": "0px",
        "padding-right": "0px",
        "padding-top": "20px",
        "padding-bottom": "20px",
        "width": "60px",
    },
    "span": {
        "color": "white",
        "padding": "14px",
        "font-family": "Source Sans Pro, sans-serif",
        "font-size": "14px",
    }
    ,
    "active": {
        "background-color": "#ff0068",
        "color": "white",
        "font-weight": "normal",
        "padding": "10px",
        "border-radius": "8px",
    }
}
options = {
    "show_menu": False,
    "show_sidebar": False,
}

page = st_navbar(
    pages,
    logo_path=logo_path,
    urls=urls,
    styles=styles,
    options=options,
)


functions = {
    "Home": pg.show_home,
    "Teams": pg.show_teams,
    "Players": pg.show_players,
    "League": pg.show_league,
    "Rules": pg.show_rules,
    "Registry": pg.show_registry,
    "Contact": pg.show_contact,
}
go_to = functions.get(page)
if go_to:
    go_to()
'''

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




# Footer
st.markdown("""
  <style>
        .footer {
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: #f0f2f6;
            padding: 10px 0;
            text-align: center;
            z-index: 10;
        }

        .footer a {
            margin: 0 10px;
        }
    </style>
    
    <div class="footer">
        <p style='text-align: center;'>
            </a>
            <a href="https://github.com/agusrjs" target="_blank">
                <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/github/github-original.svg" width="20" style="margin: 0 0px;"></a>
            <a href="https://www.linkedin.com/in/agustin-german-rojas/" target="_blank">
                <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/linkedin/linkedin-plain.svg" width="20" style="margin: 0 0px;"></a>
            <a href="https://medium.com/@agustingermanrojas" target="_blank">
                <img src="https://cdn-icons-png.flaticon.com/512/5968/5968906.png" width="20" style="margin: 0 0px;"></a>
            <a href="https://www.kaggle.com/agustingermanrojas" target="_blank">
                <img src="https://icons.iconarchive.com/icons/fa-team/fontawesome-brands/512/FontAwesome-Brands-Kaggle-icon.png" width="20" style="margin: 0 0px;"></a>
        </p>
    </div>
""", unsafe_allow_html=True)



