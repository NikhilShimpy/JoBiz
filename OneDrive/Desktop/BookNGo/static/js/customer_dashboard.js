
// Add these new functions for toggle functionality
function toggleCategory(categoryId) {
  if (window.innerWidth <= 768) { // Only toggle on mobile
    const content = document.getElementById(`${categoryId}-category`);
    const toggle = document.querySelector(`[onclick="toggleCategory('${categoryId}')"]`);
    
    if (content.style.display === 'block') {
      content.style.display = 'none';
      toggle.classList.remove('active');
    } else {
      content.style.display = 'block';
      toggle.classList.add('active');
    }
  }
}

function toggleProducts() {
  if (window.innerWidth <= 768) { // Only toggle on mobile
    const content = document.getElementById('products-section');
    const toggle = document.querySelector('.product-toggle');
    
    if (content.style.display === 'grid') {
      content.style.display = 'none';
      toggle.classList.remove('active');
    } else {
      content.style.display = 'grid';
      toggle.classList.add('active');
    }
  }
}

// Initialize mobile view
function initMobileView() {
  if (window.innerWidth <= 768) {
    // Collapse all categories by default on mobile
    document.querySelectorAll('.category-content').forEach(el => {
      el.style.display = 'none';
    });
    
    // Collapse products by default on mobile
    document.getElementById('products-section').style.display = 'none';
    document.querySelector('.product-toggle').classList.add('active');
  }
}

// Call init on load
document.addEventListener('DOMContentLoaded', function() {
  // Previous initialization code...
  
  initMobileView();
});

// Handle window resize
window.addEventListener('resize', function() {
  if (window.innerWidth > 768) {
    // Show all elements when resizing to desktop
    document.querySelectorAll('.category-content').forEach(el => {
      el.style.display = 'block';
    });
    document.getElementById('products-section').style.display = 'grid';
  } else {
    initMobileView();
  }
});

document.addEventListener('DOMContentLoaded', function() {
  // Initialize GSAP animations
  gsap.registerPlugin(ScrollTrigger);
  
  // Header animation
  gsap.from(".glass-nav", {
    duration: 1,
    y: -50,
    opacity: 0,
    ease: "power3.out"
  });
  
  // Category card animations
  gsap.from(".card", {
    duration: 1,
    y: 50,
    opacity: 0,
    stagger: 0.2,
    ease: "power3.out",
    scrollTrigger: {
      trigger: ".summary-cards",
      start: "top 80%"
    }
  });
  
  // Product card animations
  gsap.from(".product-card", {
    duration: 1,
    y: 50,
    opacity: 0,
    stagger: 0.1,
    ease: "power3.out",
    scrollTrigger: {
      trigger: ".product-grid",
      start: "top 80%"
    }
  });
  
  // Nav button animations
  gsap.from(".nav-btn", {
    duration: 0.8,
    x: -20,
    opacity: 0,
    stagger: 0.1,
    ease: "back.out"
  });
  
  // Search and filter animation
  gsap.from(".search-period > *", {
    duration: 0.8,
    y: 20,
    opacity: 0,
    stagger: 0.1,
    ease: "power2.out"
  });
  
  // Add 3D effect to cards on hover
  const cards = document.querySelectorAll('.card, .product-card');
  cards.forEach(card => {
    card.addEventListener('mousemove', (e) => {
      const x = e.clientX - card.getBoundingClientRect().left;
      const y = e.clientY - card.getBoundingClientRect().top;
      
      const centerX = card.offsetWidth / 2;
      const centerY = card.offsetHeight / 2;
      
      const angleX = (y - centerY) / 20;
      const angleY = (centerX - x) / 20;
      
      gsap.to(card, {
        rotateX: angleX,
        rotateY: angleY,
        transformPerspective: 1000,
        transformOrigin: "center center",
        ease: "power1.out",
        duration: 0.5
      });
    });
    
    card.addEventListener('mouseleave', () => {
      gsap.to(card, {
        rotateX: 0,
        rotateY: 0,
        ease: "power1.out",
        duration: 0.5
      });
    });
  });
});

// Mobile menu toggle
function toggleMobileMenu() {
  const navMenu = document.querySelector('.nav-menu');
  const hamburger = document.querySelector('.hamburger');
  
  navMenu.classList.toggle('active');
  hamburger.classList.toggle('active');
  
  // Animate hamburger to X
  if (navMenu.classList.contains('active')) {
    gsap.to(hamburger.querySelectorAll('span'), {
      duration: 0.3,
      backgroundColor: '#7a5cff'
    });
    gsap.to(hamburger.querySelector('span:nth-child(1)'), {
      y: 7,
      rotate: 45,
      duration: 0.3
    });
    gsap.to(hamburger.querySelector('span:nth-child(2)'), {
      opacity: 0,
      duration: 0.2
    });
    gsap.to(hamburger.querySelector('span:nth-child(3)'), {
      y: -7,
      rotate: -45,
      duration: 0.3
    });
  } else {
    gsap.to(hamburger.querySelectorAll('span'), {
      duration: 0.3,
      backgroundColor: '#fff'
    });
    gsap.to(hamburger.querySelector('span:nth-child(1)'), {
      y: 0,
      rotate: 0,
      duration: 0.3
    });
    gsap.to(hamburger.querySelector('span:nth-child(2)'), {
      opacity: 1,
      duration: 0.3,
      delay: 0.1
    });
    gsap.to(hamburger.querySelector('span:nth-child(3)'), {
      y: 0,
      rotate: 0,
      duration: 0.3
    });
  }
  
  // Animate buttons when menu opens
  if(navMenu.classList.contains('active')) {
    gsap.from(".nav-menu button", {
      duration: 0.5,
      x: -20,
      opacity: 0,
      stagger: 0.1,
      ease: "power2.out"
    });
  }
}


