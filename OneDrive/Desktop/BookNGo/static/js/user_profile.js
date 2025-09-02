// ================= Firebase Imports =================
import { initializeApp } from "https://www.gstatic.com/firebasejs/9.22.2/firebase-app.js";
import { getAuth, onAuthStateChanged } from "https://www.gstatic.com/firebasejs/9.22.2/firebase-auth.js";
import { getFirestore, collection, query, where, getDocs, doc, setDoc } from "https://www.gstatic.com/firebasejs/9.22.2/firebase-firestore.js";

// ================= Firebase Config =================
const firebaseConfig = {
  apiKey: "AIzaSyD95Xp-9Yu_8W35q6xLPR47vTehfBQee_k",
  authDomain: "bookngo-ef4f0.firebaseapp.com",
  projectId: "bookngo-ef4f0",
};

// ================= Init =================
const app = initializeApp(firebaseConfig);
const auth = getAuth(app);
const db = getFirestore(app);

let currentDocId = null; // store Firestore doc id

// ================= Auth State Listener =================
onAuthStateChanged(auth, async (user) => {
  if (user) {
    await loadProfile(user.uid);
  } else {
    alert("No user logged in!");
    window.location.href = "/login";
  }
});

// ================= Load User Profile =================
async function loadProfile(uid) {
  try {
    const q = query(collection(db, "users"), where("uid", "==", uid));
    const querySnap = await getDocs(q);

    if (!querySnap.empty) {
      const docSnap = querySnap.docs[0];
      currentDocId = docSnap.id; 
      const data = docSnap.data();

      // Overwrite profile values
      document.getElementById("userName").textContent = data.name || "N/A";
      document.getElementById("userEmail").textContent = data.email || "N/A";
      document.getElementById("userMobile").textContent = data.mobilenumber || "N/A";
      document.getElementById("userAddress").textContent = data.address || "N/A";
      document.getElementById("userrole").textContent = data.role || "N/A";
      document.getElementById("profileImg").src = data.profileurl || "https://via.placeholder.com/150";

      // Pre-fill modal fields fresh
      document.getElementById("editName").value = data.name || "";
      document.getElementById("editMobile").value = data.mobilenumber || "";
      document.getElementById("editAddress").value = data.address || "";
      document.getElementById("editProfileUrl").value = data.profileurl || "";
    } else {
      alert("User profile not found in Firestore!");
    }
  } catch (err) {
    console.error("Error loading profile:", err);
  }
}

// ================= Edit Modal Logic =================
const editBtn = document.getElementById("editBtn");
const saveBtn = document.getElementById("saveBtn");
const closeBtn = document.getElementById("closeBtn");
const modal = document.getElementById("editModal");

if (editBtn) {
  editBtn.addEventListener("click", () => modal.classList.remove("hidden"));
}
if (closeBtn) {
  closeBtn.addEventListener("click", () => modal.classList.add("hidden"));
}
if (saveBtn) {
  saveBtn.addEventListener("click", async () => {
    if (!currentDocId) return alert("Profile not loaded yet!");

    const updatedData = {
      uid: auth.currentUser.uid,        
      email: auth.currentUser.email,    
      name: document.getElementById("editName").value.trim(),
      mobilenumber: document.getElementById("editMobile").value.trim(),
      address: document.getElementById("editAddress").value.trim(),
      profileurl: document.getElementById("editProfileUrl").value.trim(),
    };

    try {
      // setDoc replaces entire document (deletes old fields automatically
      await setDoc(doc(db, "users", currentDocId), updatedData, { merge: false });

      alert("Profile updated successfully!");
      modal.classList.add("hidden");
      loadProfile(auth.currentUser.uid);
    } catch (err) {
      console.error("Error updating profile:", err);
      alert("Failed to update profile.");
    }
  });
}
