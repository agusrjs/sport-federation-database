import streamlit as st
import os
from streamlit_navigation_bar import st_navbar

# Header
import pages as pg

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



