from flask import Blueprint, render_template, request, jsonify, session, redirect, url_for
# from .ai_module import get_ai_response

main_bp = Blueprint('main', __name__)

# ---------------- HOME & AUTH ----------------

@main_bp.route("/")
def index():
    return render_template("index.html")  # Opening index.html by default

@main_bp.route("/login")
def login():
    return render_template("login.html")

@main_bp.route("/signup")
def signup():
    return render_template("signup.html")


# ---------------- SESSION ROLES ----------------

@main_bp.route("/set-role/<role>")
def set_role(role):
    if role in ["customer", "owner"]:
        session["role"] = role
        return jsonify({"status": "success", "role": role})
    return jsonify({"status": "error", "message": "Invalid role"}), 400


# ---------------- DASHBOARDS ----------------

@main_bp.route("/customer/dashboard")
def customer_dashboard():
    if session.get("role") != "customer":
        return redirect(url_for("main.login"))
    return render_template("customer_dashboard.html")

@main_bp.route("/owner/dashboard")
def owner_dashboard():
    if session.get("role") != "owner":
        return redirect(url_for("main.login"))
    return render_template("owner_dashboard.html")


# ---------------- LOGOUT ----------------

@main_bp.route("/logout")
def logout():
    session.clear()
    return redirect(url_for("main.login"))

# customer profile redirected from dashboard 
@main_bp.route("/user_profile")
def user_profile():
    # You can fetch current user from session / Firebase auth
    return render_template("user_profile.html")

@main_bp.route("/owner/products/add")
def owner_product_add():
    return render_template("owner_productAdd.html")

@main_bp.route("/owner/products/list")
def owner_product_list():
    return render_template("owner_productList.html")