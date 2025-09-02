const firebaseApp = firebase.initializeApp({
  apiKey: "AIzaSyD95Xp-9Yu_8W35q6xLPR47vTehfBQee_k",
  authDomain: "bookngo-ef4f0.firebaseapp.com",
  projectId: "bookngo-ef4f0",
  storageBucket: "bookngo-ef4f0.firebasestorage.app",
  messagingSenderId: "483413806629",
  appId: "1:483413806629:web:c1233395b07adc8088b9cc",
  measurementId: "G-5KRF0WT5TC"
});
const db = firebaseApp.firestore();
const auth = firebaseApp.auth();

  //  SIGN UP FUNCTION

const signUp = () => {
  const name = document.getElementById("name").value;
  const mobilenumber = document.getElementById("mobilenumber").value;
  const email = document.getElementById("email").value;
  const password = document.getElementById("password").value;
  const role = document.getElementById("role").value;
  const address = document.getElementById("address").value;
  

  if (!email || !password) {
    alert("Please fill out all fields.");
    return;
  }

  auth.createUserWithEmailAndPassword(email, password)
  .then((userCredential) => {
    const user = userCredential.user;

    // Send email verification
    return user.sendEmailVerification()
      .then(() => {
        console.log("Verification email sent to", email);
      })
      .catch((err) => {
        console.error("Error sending verification email:", err);
      })
      .then(() => {
        // Save role in Firestore
        return db.collection("users").doc(user.uid).set({
          uid: user.uid,
          name:name,
          mobilenumber: mobilenumber,
          email: email,
          role: role,
          address: address,
          createdAt: firebase.firestore.FieldValue.serverTimestamp(),
        });
      });
  })
  .then(() => {
    alert("Signup successful! Please check your email to verify before logging in.");
    window.location.href = "/"; // Redirect to login page
  })
  .catch((error) => {
    console.log(error.message);
    alert(error.message);
  });

};

  //  SIGN IN FUNCTION

const signIn = () => {
  const email = document.getElementById("email").value;
  const password = document.getElementById("password").value;

  if (!email || !password) {
    alert("Please fill out all fields.");
    return;
  }

  auth.signInWithEmailAndPassword(email, password)
    .then((userCredential) => {
      const user = userCredential.user;

      if (!user.emailVerified) {
      alert("Please verify your email before logging in.");
      auth.signOut();
      return;
    }
      // Fetch role from Firestore
      return db.collection("users").doc(user.uid).get();
    })
    .then((doc) => {
      if (doc.exists) {
        const role = doc.data().role;
        // Save role in Flask session
        fetch(`/set-role/${role}`)
          .then(() => {
            if (role === "customer") {
                window.location.href = "/customer/dashboard";
                } else if (role === "owner") {
                        window.location.href = "/owner/dashboard";
                      } else {
              alert("Unknown role. Contact admin.");
            }
          })
          .catch(err => {
            console.error("Failed to set role in session:", err);
            alert("Internal error setting user role.");
          });
      } else {
        alert("User role not found in database.");
      }
    })
    .catch((error) => {
      console.log(error.message);
      alert(error.message);
    });
};

  //  LOGOUT FUNCTION (Optional)

const logout = () => {
  auth.signOut()
    .then(() => {
      console.log("User signed out from Firebase.");
      window.location.href = "/logout"; 
    })
    .catch((error) => {
      console.error("Logout Error:", error.message);
      alert("Error logging out. Please try again.");
    });
};

